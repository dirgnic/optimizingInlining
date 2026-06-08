; ModuleID = './source_snapshot/public_repos/mibench/consumer/lame/lame3.70/l3bitstream.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/lame/lame3.70/l3bitstream.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.huffcodetab = type { i32, i32, ptr, ptr }
%struct.scalefac_struct = type { [23 x i32], [14 x i32] }
%struct.III_side_info_t = type { i32, i32, i32, [2 x [4 x i32]], [2 x %struct.anon] }
%struct.anon = type { [2 x %struct.gr_info_ss] }
%struct.gr_info_ss = type { %struct.gr_info }
%struct.gr_info = type { i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [4 x i32] }
%struct.BF_FrameData = type { i32, i32, i32, ptr, ptr, [2 x ptr], [2 x [2 x ptr]], [2 x [2 x ptr]], [2 x [2 x ptr]], [2 x [2 x ptr]], ptr }
%struct.lame_global_flags = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, float, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.BF_PartHolder = type { i32, ptr }
%struct.BF_FrameResults = type { i32, i32, i32 }
%struct.BF_BitstreamPart = type { i32, ptr }
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
  %val.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  store i32 %len, ptr %len.addr, align 4
  %0 = load ptr, ptr @bs, align 8
  %1 = load i32, ptr %val.addr, align 4
  %2 = load i32, ptr %len.addr, align 4
  call void @putbits(ptr noundef %0, i32 noundef %1, i32 noundef %2)
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
  %in_bs.addr = alloca ptr, align 8
  %gr = alloca i32, align 4
  %ch = alloca i32, align 4
  store ptr %gfp, ptr %gfp.addr, align 8
  store i32 %bitsPerFrame, ptr %bitsPerFrame.addr, align 4
  store ptr %l3_enc, ptr %l3_enc.addr, align 8
  store ptr %l3_side, ptr %l3_side.addr, align 8
  store ptr %scalefac, ptr %scalefac.addr, align 8
  store ptr %in_bs, ptr %in_bs.addr, align 8
  %0 = load ptr, ptr %in_bs.addr, align 8
  store ptr %0, ptr @bs, align 8
  %1 = load ptr, ptr @frameData, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call ptr @calloc(i64 noundef 1, i64 noundef 184) #4
  store ptr %call, ptr @frameData, align 8
  %2 = load ptr, ptr @frameData, align 8
  %tobool = icmp ne ptr %2, null
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool1 = icmp ne i64 %conv, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  call void @__assert_rtn(ptr noundef @__func__.III_format_bitstream, ptr noundef @.str, i32 noundef 73, ptr noundef @.str.1) #5
  unreachable

3:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %3
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %4 = load ptr, ptr @frameResults, align 8
  %cmp2 = icmp eq ptr %4, null
  br i1 %cmp2, label %if.then4, label %if.end14

if.then4:                                         ; preds = %if.end
  %call5 = call ptr @calloc(i64 noundef 1, i64 noundef 12) #4
  store ptr %call5, ptr @frameResults, align 8
  %5 = load ptr, ptr @frameResults, align 8
  %tobool6 = icmp ne ptr %5, null
  %lnot7 = xor i1 %tobool6, true
  %lnot.ext8 = zext i1 %lnot7 to i32
  %conv9 = sext i32 %lnot.ext8 to i64
  %tobool10 = icmp ne i64 %conv9, 0
  br i1 %tobool10, label %cond.true11, label %cond.false12

cond.true11:                                      ; preds = %if.then4
  call void @__assert_rtn(ptr noundef @__func__.III_format_bitstream, ptr noundef @.str, i32 noundef 78, ptr noundef @.str.2) #5
  unreachable

6:                                                ; No predecessors!
  br label %cond.end13

cond.false12:                                     ; preds = %if.then4
  br label %cond.end13

cond.end13:                                       ; preds = %cond.false12, %6
  br label %if.end14

if.end14:                                         ; preds = %cond.end13, %if.end
  %7 = load i32, ptr @PartHoldersInitialized, align 4
  %tobool15 = icmp ne i32 %7, 0
  br i1 %tobool15, label %if.end57, label %if.then16

if.then16:                                        ; preds = %if.end14
  %call17 = call ptr @BF_newPartHolder(i32 noundef 14)
  store ptr %call17, ptr @headerPH, align 8
  %call18 = call ptr @BF_newPartHolder(i32 noundef 12)
  store ptr %call18, ptr @frameSIPH, align 8
  store i32 0, ptr %ch, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then16
  %8 = load i32, ptr %ch, align 4
  %cmp19 = icmp slt i32 %8, 2
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call21 = call ptr @BF_newPartHolder(i32 noundef 8)
  %9 = load i32, ptr %ch, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [2 x ptr], ptr @channelSIPH, i64 0, i64 %idxprom
  store ptr %call21, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %ch, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %ch, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %gr, align 4
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc53, %for.end
  %11 = load i32, ptr %gr, align 4
  %cmp23 = icmp slt i32 %11, 2
  br i1 %cmp23, label %for.body25, label %for.end55

for.body25:                                       ; preds = %for.cond22
  store i32 0, ptr %ch, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc50, %for.body25
  %12 = load i32, ptr %ch, align 4
  %cmp27 = icmp slt i32 %12, 2
  br i1 %cmp27, label %for.body29, label %for.end52

for.body29:                                       ; preds = %for.cond26
  %call30 = call ptr @BF_newPartHolder(i32 noundef 32)
  %13 = load i32, ptr %gr, align 4
  %idxprom31 = sext i32 %13 to i64
  %arrayidx32 = getelementptr inbounds [2 x [2 x ptr]], ptr @spectrumSIPH, i64 0, i64 %idxprom31
  %14 = load i32, ptr %ch, align 4
  %idxprom33 = sext i32 %14 to i64
  %arrayidx34 = getelementptr inbounds [2 x ptr], ptr %arrayidx32, i64 0, i64 %idxprom33
  store ptr %call30, ptr %arrayidx34, align 8
  %call35 = call ptr @BF_newPartHolder(i32 noundef 64)
  %15 = load i32, ptr %gr, align 4
  %idxprom36 = sext i32 %15 to i64
  %arrayidx37 = getelementptr inbounds [2 x [2 x ptr]], ptr @scaleFactorsPH, i64 0, i64 %idxprom36
  %16 = load i32, ptr %ch, align 4
  %idxprom38 = sext i32 %16 to i64
  %arrayidx39 = getelementptr inbounds [2 x ptr], ptr %arrayidx37, i64 0, i64 %idxprom38
  store ptr %call35, ptr %arrayidx39, align 8
  %call40 = call ptr @BF_newPartHolder(i32 noundef 576)
  %17 = load i32, ptr %gr, align 4
  %idxprom41 = sext i32 %17 to i64
  %arrayidx42 = getelementptr inbounds [2 x [2 x ptr]], ptr @codedDataPH, i64 0, i64 %idxprom41
  %18 = load i32, ptr %ch, align 4
  %idxprom43 = sext i32 %18 to i64
  %arrayidx44 = getelementptr inbounds [2 x ptr], ptr %arrayidx42, i64 0, i64 %idxprom43
  store ptr %call40, ptr %arrayidx44, align 8
  %call45 = call ptr @BF_newPartHolder(i32 noundef 4)
  %19 = load i32, ptr %gr, align 4
  %idxprom46 = sext i32 %19 to i64
  %arrayidx47 = getelementptr inbounds [2 x [2 x ptr]], ptr @userSpectrumPH, i64 0, i64 %idxprom46
  %20 = load i32, ptr %ch, align 4
  %idxprom48 = sext i32 %20 to i64
  %arrayidx49 = getelementptr inbounds [2 x ptr], ptr %arrayidx47, i64 0, i64 %idxprom48
  store ptr %call45, ptr %arrayidx49, align 8
  br label %for.inc50

for.inc50:                                        ; preds = %for.body29
  %21 = load i32, ptr %ch, align 4
  %inc51 = add nsw i32 %21, 1
  store i32 %inc51, ptr %ch, align 4
  br label %for.cond26, !llvm.loop !8

for.end52:                                        ; preds = %for.cond26
  br label %for.inc53

for.inc53:                                        ; preds = %for.end52
  %22 = load i32, ptr %gr, align 4
  %inc54 = add nsw i32 %22, 1
  store i32 %inc54, ptr %gr, align 4
  br label %for.cond22, !llvm.loop !9

for.end55:                                        ; preds = %for.cond22
  %call56 = call ptr @BF_newPartHolder(i32 noundef 8)
  store ptr %call56, ptr @userFrameDataPH, align 8
  store i32 1, ptr @PartHoldersInitialized, align 4
  br label %if.end57

if.end57:                                         ; preds = %for.end55, %if.end14
  %23 = load ptr, ptr %gfp.addr, align 8
  %24 = load ptr, ptr %l3_side.addr, align 8
  %call58 = call i32 @encodeSideInfo(ptr noundef %23, ptr noundef %24)
  %25 = load ptr, ptr %gfp.addr, align 8
  %26 = load ptr, ptr %l3_enc.addr, align 8
  %27 = load ptr, ptr %l3_side.addr, align 8
  %28 = load ptr, ptr %scalefac.addr, align 8
  call void @encodeMainData(ptr noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef %28)
  %29 = load ptr, ptr %l3_side.addr, align 8
  %resvDrain = getelementptr inbounds %struct.III_side_info_t, ptr %29, i32 0, i32 2
  %30 = load i32, ptr %resvDrain, align 8
  call void @drain_into_ancillary_data(i32 noundef %30)
  %31 = load i32, ptr %bitsPerFrame.addr, align 4
  %32 = load ptr, ptr @frameData, align 8
  %frameLength = getelementptr inbounds %struct.BF_FrameData, ptr %32, i32 0, i32 0
  store i32 %31, ptr %frameLength, align 8
  %33 = load ptr, ptr %gfp.addr, align 8
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, ptr %33, i32 0, i32 45
  %34 = load i32, ptr %mode_gr, align 8
  %35 = load ptr, ptr @frameData, align 8
  %nGranules = getelementptr inbounds %struct.BF_FrameData, ptr %35, i32 0, i32 1
  store i32 %34, ptr %nGranules, align 4
  %36 = load ptr, ptr %gfp.addr, align 8
  %stereo = getelementptr inbounds %struct.lame_global_flags, ptr %36, i32 0, i32 46
  %37 = load i32, ptr %stereo, align 4
  %38 = load ptr, ptr @frameData, align 8
  %nChannels = getelementptr inbounds %struct.BF_FrameData, ptr %38, i32 0, i32 2
  store i32 %37, ptr %nChannels, align 8
  %39 = load ptr, ptr @headerPH, align 8
  %part = getelementptr inbounds %struct.BF_PartHolder, ptr %39, i32 0, i32 1
  %40 = load ptr, ptr %part, align 8
  %41 = load ptr, ptr @frameData, align 8
  %header = getelementptr inbounds %struct.BF_FrameData, ptr %41, i32 0, i32 3
  store ptr %40, ptr %header, align 8
  %42 = load ptr, ptr @frameSIPH, align 8
  %part59 = getelementptr inbounds %struct.BF_PartHolder, ptr %42, i32 0, i32 1
  %43 = load ptr, ptr %part59, align 8
  %44 = load ptr, ptr @frameData, align 8
  %frameSI = getelementptr inbounds %struct.BF_FrameData, ptr %44, i32 0, i32 4
  store ptr %43, ptr %frameSI, align 8
  store i32 0, ptr %ch, align 4
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc70, %if.end57
  %45 = load i32, ptr %ch, align 4
  %46 = load ptr, ptr %gfp.addr, align 8
  %stereo61 = getelementptr inbounds %struct.lame_global_flags, ptr %46, i32 0, i32 46
  %47 = load i32, ptr %stereo61, align 4
  %cmp62 = icmp slt i32 %45, %47
  br i1 %cmp62, label %for.body64, label %for.end72

for.body64:                                       ; preds = %for.cond60
  %48 = load i32, ptr %ch, align 4
  %idxprom65 = sext i32 %48 to i64
  %arrayidx66 = getelementptr inbounds [2 x ptr], ptr @channelSIPH, i64 0, i64 %idxprom65
  %49 = load ptr, ptr %arrayidx66, align 8
  %part67 = getelementptr inbounds %struct.BF_PartHolder, ptr %49, i32 0, i32 1
  %50 = load ptr, ptr %part67, align 8
  %51 = load ptr, ptr @frameData, align 8
  %channelSI = getelementptr inbounds %struct.BF_FrameData, ptr %51, i32 0, i32 5
  %52 = load i32, ptr %ch, align 4
  %idxprom68 = sext i32 %52 to i64
  %arrayidx69 = getelementptr inbounds [2 x ptr], ptr %channelSI, i64 0, i64 %idxprom68
  store ptr %50, ptr %arrayidx69, align 8
  br label %for.inc70

for.inc70:                                        ; preds = %for.body64
  %53 = load i32, ptr %ch, align 4
  %inc71 = add nsw i32 %53, 1
  store i32 %inc71, ptr %ch, align 4
  br label %for.cond60, !llvm.loop !10

for.end72:                                        ; preds = %for.cond60
  store i32 0, ptr %gr, align 4
  br label %for.cond73

for.cond73:                                       ; preds = %for.inc122, %for.end72
  %54 = load i32, ptr %gr, align 4
  %55 = load ptr, ptr %gfp.addr, align 8
  %mode_gr74 = getelementptr inbounds %struct.lame_global_flags, ptr %55, i32 0, i32 45
  %56 = load i32, ptr %mode_gr74, align 8
  %cmp75 = icmp slt i32 %54, %56
  br i1 %cmp75, label %for.body77, label %for.end124

for.body77:                                       ; preds = %for.cond73
  store i32 0, ptr %ch, align 4
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc119, %for.body77
  %57 = load i32, ptr %ch, align 4
  %58 = load ptr, ptr %gfp.addr, align 8
  %stereo79 = getelementptr inbounds %struct.lame_global_flags, ptr %58, i32 0, i32 46
  %59 = load i32, ptr %stereo79, align 4
  %cmp80 = icmp slt i32 %57, %59
  br i1 %cmp80, label %for.body82, label %for.end121

for.body82:                                       ; preds = %for.cond78
  %60 = load i32, ptr %gr, align 4
  %idxprom83 = sext i32 %60 to i64
  %arrayidx84 = getelementptr inbounds [2 x [2 x ptr]], ptr @spectrumSIPH, i64 0, i64 %idxprom83
  %61 = load i32, ptr %ch, align 4
  %idxprom85 = sext i32 %61 to i64
  %arrayidx86 = getelementptr inbounds [2 x ptr], ptr %arrayidx84, i64 0, i64 %idxprom85
  %62 = load ptr, ptr %arrayidx86, align 8
  %part87 = getelementptr inbounds %struct.BF_PartHolder, ptr %62, i32 0, i32 1
  %63 = load ptr, ptr %part87, align 8
  %64 = load ptr, ptr @frameData, align 8
  %spectrumSI = getelementptr inbounds %struct.BF_FrameData, ptr %64, i32 0, i32 6
  %65 = load i32, ptr %gr, align 4
  %idxprom88 = sext i32 %65 to i64
  %arrayidx89 = getelementptr inbounds [2 x [2 x ptr]], ptr %spectrumSI, i64 0, i64 %idxprom88
  %66 = load i32, ptr %ch, align 4
  %idxprom90 = sext i32 %66 to i64
  %arrayidx91 = getelementptr inbounds [2 x ptr], ptr %arrayidx89, i64 0, i64 %idxprom90
  store ptr %63, ptr %arrayidx91, align 8
  %67 = load i32, ptr %gr, align 4
  %idxprom92 = sext i32 %67 to i64
  %arrayidx93 = getelementptr inbounds [2 x [2 x ptr]], ptr @scaleFactorsPH, i64 0, i64 %idxprom92
  %68 = load i32, ptr %ch, align 4
  %idxprom94 = sext i32 %68 to i64
  %arrayidx95 = getelementptr inbounds [2 x ptr], ptr %arrayidx93, i64 0, i64 %idxprom94
  %69 = load ptr, ptr %arrayidx95, align 8
  %part96 = getelementptr inbounds %struct.BF_PartHolder, ptr %69, i32 0, i32 1
  %70 = load ptr, ptr %part96, align 8
  %71 = load ptr, ptr @frameData, align 8
  %scaleFactors = getelementptr inbounds %struct.BF_FrameData, ptr %71, i32 0, i32 7
  %72 = load i32, ptr %gr, align 4
  %idxprom97 = sext i32 %72 to i64
  %arrayidx98 = getelementptr inbounds [2 x [2 x ptr]], ptr %scaleFactors, i64 0, i64 %idxprom97
  %73 = load i32, ptr %ch, align 4
  %idxprom99 = sext i32 %73 to i64
  %arrayidx100 = getelementptr inbounds [2 x ptr], ptr %arrayidx98, i64 0, i64 %idxprom99
  store ptr %70, ptr %arrayidx100, align 8
  %74 = load i32, ptr %gr, align 4
  %idxprom101 = sext i32 %74 to i64
  %arrayidx102 = getelementptr inbounds [2 x [2 x ptr]], ptr @codedDataPH, i64 0, i64 %idxprom101
  %75 = load i32, ptr %ch, align 4
  %idxprom103 = sext i32 %75 to i64
  %arrayidx104 = getelementptr inbounds [2 x ptr], ptr %arrayidx102, i64 0, i64 %idxprom103
  %76 = load ptr, ptr %arrayidx104, align 8
  %part105 = getelementptr inbounds %struct.BF_PartHolder, ptr %76, i32 0, i32 1
  %77 = load ptr, ptr %part105, align 8
  %78 = load ptr, ptr @frameData, align 8
  %codedData = getelementptr inbounds %struct.BF_FrameData, ptr %78, i32 0, i32 8
  %79 = load i32, ptr %gr, align 4
  %idxprom106 = sext i32 %79 to i64
  %arrayidx107 = getelementptr inbounds [2 x [2 x ptr]], ptr %codedData, i64 0, i64 %idxprom106
  %80 = load i32, ptr %ch, align 4
  %idxprom108 = sext i32 %80 to i64
  %arrayidx109 = getelementptr inbounds [2 x ptr], ptr %arrayidx107, i64 0, i64 %idxprom108
  store ptr %77, ptr %arrayidx109, align 8
  %81 = load i32, ptr %gr, align 4
  %idxprom110 = sext i32 %81 to i64
  %arrayidx111 = getelementptr inbounds [2 x [2 x ptr]], ptr @userSpectrumPH, i64 0, i64 %idxprom110
  %82 = load i32, ptr %ch, align 4
  %idxprom112 = sext i32 %82 to i64
  %arrayidx113 = getelementptr inbounds [2 x ptr], ptr %arrayidx111, i64 0, i64 %idxprom112
  %83 = load ptr, ptr %arrayidx113, align 8
  %part114 = getelementptr inbounds %struct.BF_PartHolder, ptr %83, i32 0, i32 1
  %84 = load ptr, ptr %part114, align 8
  %85 = load ptr, ptr @frameData, align 8
  %userSpectrum = getelementptr inbounds %struct.BF_FrameData, ptr %85, i32 0, i32 9
  %86 = load i32, ptr %gr, align 4
  %idxprom115 = sext i32 %86 to i64
  %arrayidx116 = getelementptr inbounds [2 x [2 x ptr]], ptr %userSpectrum, i64 0, i64 %idxprom115
  %87 = load i32, ptr %ch, align 4
  %idxprom117 = sext i32 %87 to i64
  %arrayidx118 = getelementptr inbounds [2 x ptr], ptr %arrayidx116, i64 0, i64 %idxprom117
  store ptr %84, ptr %arrayidx118, align 8
  br label %for.inc119

for.inc119:                                       ; preds = %for.body82
  %88 = load i32, ptr %ch, align 4
  %inc120 = add nsw i32 %88, 1
  store i32 %inc120, ptr %ch, align 4
  br label %for.cond78, !llvm.loop !11

for.end121:                                       ; preds = %for.cond78
  br label %for.inc122

for.inc122:                                       ; preds = %for.end121
  %89 = load i32, ptr %gr, align 4
  %inc123 = add nsw i32 %89, 1
  store i32 %inc123, ptr %gr, align 4
  br label %for.cond73, !llvm.loop !12

for.end124:                                       ; preds = %for.cond73
  %90 = load ptr, ptr @userFrameDataPH, align 8
  %part125 = getelementptr inbounds %struct.BF_PartHolder, ptr %90, i32 0, i32 1
  %91 = load ptr, ptr %part125, align 8
  %92 = load ptr, ptr @frameData, align 8
  %userFrameData = getelementptr inbounds %struct.BF_FrameData, ptr %92, i32 0, i32 10
  store ptr %91, ptr %userFrameData, align 8
  %93 = load ptr, ptr @frameData, align 8
  %94 = load ptr, ptr @frameResults, align 8
  call void @BF_BitstreamFrame(ptr noundef %93, ptr noundef %94)
  %95 = load ptr, ptr @frameResults, align 8
  %nextBackPtr = getelementptr inbounds %struct.BF_FrameResults, ptr %95, i32 0, i32 2
  %96 = load i32, ptr %nextBackPtr, align 4
  %97 = load ptr, ptr %l3_side.addr, align 8
  %main_data_begin = getelementptr inbounds %struct.III_side_info_t, ptr %97, i32 0, i32 0
  store i32 %96, ptr %main_data_begin, align 8
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
  %part = getelementptr inbounds %struct.BF_PartHolder, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %part, align 8
  %nrEntries = getelementptr inbounds %struct.BF_BitstreamPart, ptr %1, i32 0, i32 0
  store i32 0, ptr %nrEntries, align 8
  %2 = load ptr, ptr @headerPH, align 8
  %call = call ptr @BF_addEntry(ptr noundef %2, i32 noundef 4095, i32 noundef 12)
  store ptr %call, ptr @headerPH, align 8
  %3 = load ptr, ptr @headerPH, align 8
  %4 = load ptr, ptr %gfp.addr, align 8
  %version = getelementptr inbounds %struct.lame_global_flags, ptr %4, i32 0, i32 43
  %5 = load i32, ptr %version, align 8
  %call1 = call ptr @BF_addEntry(ptr noundef %3, i32 noundef %5, i32 noundef 1)
  store ptr %call1, ptr @headerPH, align 8
  %6 = load ptr, ptr @headerPH, align 8
  %call2 = call ptr @BF_addEntry(ptr noundef %6, i32 noundef 1, i32 noundef 2)
  store ptr %call2, ptr @headerPH, align 8
  %7 = load ptr, ptr @headerPH, align 8
  %8 = load ptr, ptr %gfp.addr, align 8
  %error_protection = getelementptr inbounds %struct.lame_global_flags, ptr %8, i32 0, i32 14
  %9 = load i32, ptr %error_protection, align 4
  %tobool = icmp ne i32 %9, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %call3 = call ptr @BF_addEntry(ptr noundef %7, i32 noundef %lnot.ext, i32 noundef 1)
  store ptr %call3, ptr @headerPH, align 8
  %10 = load ptr, ptr @headerPH, align 8
  %11 = load ptr, ptr %gfp.addr, align 8
  %bitrate_index = getelementptr inbounds %struct.lame_global_flags, ptr %11, i32 0, i32 50
  %12 = load i32, ptr %bitrate_index, align 4
  %call4 = call ptr @CRC_BF_addEntry(ptr noundef %10, i32 noundef %12, i32 noundef 4)
  store ptr %call4, ptr @headerPH, align 8
  %13 = load ptr, ptr @headerPH, align 8
  %14 = load ptr, ptr %gfp.addr, align 8
  %samplerate_index = getelementptr inbounds %struct.lame_global_flags, ptr %14, i32 0, i32 51
  %15 = load i32, ptr %samplerate_index, align 8
  %call5 = call ptr @CRC_BF_addEntry(ptr noundef %13, i32 noundef %15, i32 noundef 2)
  store ptr %call5, ptr @headerPH, align 8
  %16 = load ptr, ptr @headerPH, align 8
  %17 = load ptr, ptr %gfp.addr, align 8
  %padding = getelementptr inbounds %struct.lame_global_flags, ptr %17, i32 0, i32 44
  %18 = load i32, ptr %padding, align 4
  %call6 = call ptr @CRC_BF_addEntry(ptr noundef %16, i32 noundef %18, i32 noundef 1)
  store ptr %call6, ptr @headerPH, align 8
  %19 = load ptr, ptr @headerPH, align 8
  %20 = load ptr, ptr %gfp.addr, align 8
  %extension = getelementptr inbounds %struct.lame_global_flags, ptr %20, i32 0, i32 16
  %21 = load i32, ptr %extension, align 4
  %call7 = call ptr @CRC_BF_addEntry(ptr noundef %19, i32 noundef %21, i32 noundef 1)
  store ptr %call7, ptr @headerPH, align 8
  %22 = load ptr, ptr @headerPH, align 8
  %23 = load ptr, ptr %gfp.addr, align 8
  %mode = getelementptr inbounds %struct.lame_global_flags, ptr %23, i32 0, i32 8
  %24 = load i32, ptr %mode, align 4
  %call8 = call ptr @CRC_BF_addEntry(ptr noundef %22, i32 noundef %24, i32 noundef 2)
  store ptr %call8, ptr @headerPH, align 8
  %25 = load ptr, ptr @headerPH, align 8
  %26 = load ptr, ptr %gfp.addr, align 8
  %mode_ext = getelementptr inbounds %struct.lame_global_flags, ptr %26, i32 0, i32 52
  %27 = load i32, ptr %mode_ext, align 4
  %call9 = call ptr @CRC_BF_addEntry(ptr noundef %25, i32 noundef %27, i32 noundef 2)
  store ptr %call9, ptr @headerPH, align 8
  %28 = load ptr, ptr @headerPH, align 8
  %29 = load ptr, ptr %gfp.addr, align 8
  %copyright = getelementptr inbounds %struct.lame_global_flags, ptr %29, i32 0, i32 12
  %30 = load i32, ptr %copyright, align 4
  %call10 = call ptr @CRC_BF_addEntry(ptr noundef %28, i32 noundef %30, i32 noundef 1)
  store ptr %call10, ptr @headerPH, align 8
  %31 = load ptr, ptr @headerPH, align 8
  %32 = load ptr, ptr %gfp.addr, align 8
  %original = getelementptr inbounds %struct.lame_global_flags, ptr %32, i32 0, i32 13
  %33 = load i32, ptr %original, align 8
  %call11 = call ptr @CRC_BF_addEntry(ptr noundef %31, i32 noundef %33, i32 noundef 1)
  store ptr %call11, ptr @headerPH, align 8
  %34 = load ptr, ptr @headerPH, align 8
  %35 = load ptr, ptr %gfp.addr, align 8
  %emphasis = getelementptr inbounds %struct.lame_global_flags, ptr %35, i32 0, i32 38
  %36 = load i32, ptr %emphasis, align 4
  %call12 = call ptr @CRC_BF_addEntry(ptr noundef %34, i32 noundef %36, i32 noundef 2)
  store ptr %call12, ptr @headerPH, align 8
  store i32 32, ptr %bits_sent, align 4
  %37 = load ptr, ptr @frameSIPH, align 8
  %part13 = getelementptr inbounds %struct.BF_PartHolder, ptr %37, i32 0, i32 1
  %38 = load ptr, ptr %part13, align 8
  %nrEntries14 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %38, i32 0, i32 0
  store i32 0, ptr %nrEntries14, align 8
  store i32 0, ptr %ch, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %39 = load i32, ptr %ch, align 4
  %40 = load ptr, ptr %gfp.addr, align 8
  %stereo = getelementptr inbounds %struct.lame_global_flags, ptr %40, i32 0, i32 46
  %41 = load i32, ptr %stereo, align 4
  %cmp = icmp slt i32 %39, %41
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load i32, ptr %ch, align 4
  %idxprom = sext i32 %42 to i64
  %arrayidx = getelementptr inbounds [2 x ptr], ptr @channelSIPH, i64 0, i64 %idxprom
  %43 = load ptr, ptr %arrayidx, align 8
  %part15 = getelementptr inbounds %struct.BF_PartHolder, ptr %43, i32 0, i32 1
  %44 = load ptr, ptr %part15, align 8
  %nrEntries16 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %44, i32 0, i32 0
  store i32 0, ptr %nrEntries16, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %45 = load i32, ptr %ch, align 4
  %inc = add nsw i32 %45, 1
  store i32 %inc, ptr %ch, align 4
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %gr, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc33, %for.end
  %46 = load i32, ptr %gr, align 4
  %47 = load ptr, ptr %gfp.addr, align 8
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, ptr %47, i32 0, i32 45
  %48 = load i32, ptr %mode_gr, align 8
  %cmp18 = icmp slt i32 %46, %48
  br i1 %cmp18, label %for.body19, label %for.end35

for.body19:                                       ; preds = %for.cond17
  store i32 0, ptr %ch, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc30, %for.body19
  %49 = load i32, ptr %ch, align 4
  %50 = load ptr, ptr %gfp.addr, align 8
  %stereo21 = getelementptr inbounds %struct.lame_global_flags, ptr %50, i32 0, i32 46
  %51 = load i32, ptr %stereo21, align 4
  %cmp22 = icmp slt i32 %49, %51
  br i1 %cmp22, label %for.body23, label %for.end32

for.body23:                                       ; preds = %for.cond20
  %52 = load i32, ptr %gr, align 4
  %idxprom24 = sext i32 %52 to i64
  %arrayidx25 = getelementptr inbounds [2 x [2 x ptr]], ptr @spectrumSIPH, i64 0, i64 %idxprom24
  %53 = load i32, ptr %ch, align 4
  %idxprom26 = sext i32 %53 to i64
  %arrayidx27 = getelementptr inbounds [2 x ptr], ptr %arrayidx25, i64 0, i64 %idxprom26
  %54 = load ptr, ptr %arrayidx27, align 8
  %part28 = getelementptr inbounds %struct.BF_PartHolder, ptr %54, i32 0, i32 1
  %55 = load ptr, ptr %part28, align 8
  %nrEntries29 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %55, i32 0, i32 0
  store i32 0, ptr %nrEntries29, align 8
  br label %for.inc30

for.inc30:                                        ; preds = %for.body23
  %56 = load i32, ptr %ch, align 4
  %inc31 = add nsw i32 %56, 1
  store i32 %inc31, ptr %ch, align 4
  br label %for.cond20, !llvm.loop !14

for.end32:                                        ; preds = %for.cond20
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %57 = load i32, ptr %gr, align 4
  %inc34 = add nsw i32 %57, 1
  store i32 %inc34, ptr %gr, align 4
  br label %for.cond17, !llvm.loop !15

for.end35:                                        ; preds = %for.cond17
  %58 = load ptr, ptr %gfp.addr, align 8
  %version36 = getelementptr inbounds %struct.lame_global_flags, ptr %58, i32 0, i32 43
  %59 = load i32, ptr %version36, align 8
  %cmp37 = icmp eq i32 %59, 1
  br i1 %cmp37, label %if.then, label %if.else147

if.then:                                          ; preds = %for.end35
  %60 = load ptr, ptr @frameSIPH, align 8
  %61 = load ptr, ptr %si.addr, align 8
  %main_data_begin = getelementptr inbounds %struct.III_side_info_t, ptr %61, i32 0, i32 0
  %62 = load i32, ptr %main_data_begin, align 8
  %call38 = call ptr @CRC_BF_addEntry(ptr noundef %60, i32 noundef %62, i32 noundef 9)
  store ptr %call38, ptr @frameSIPH, align 8
  %63 = load ptr, ptr %gfp.addr, align 8
  %stereo39 = getelementptr inbounds %struct.lame_global_flags, ptr %63, i32 0, i32 46
  %64 = load i32, ptr %stereo39, align 4
  %cmp40 = icmp eq i32 %64, 2
  br i1 %cmp40, label %if.then41, label %if.else

if.then41:                                        ; preds = %if.then
  %65 = load ptr, ptr @frameSIPH, align 8
  %66 = load ptr, ptr %si.addr, align 8
  %private_bits = getelementptr inbounds %struct.III_side_info_t, ptr %66, i32 0, i32 1
  %67 = load i32, ptr %private_bits, align 4
  %call42 = call ptr @CRC_BF_addEntry(ptr noundef %65, i32 noundef %67, i32 noundef 3)
  store ptr %call42, ptr @frameSIPH, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %68 = load ptr, ptr @frameSIPH, align 8
  %69 = load ptr, ptr %si.addr, align 8
  %private_bits43 = getelementptr inbounds %struct.III_side_info_t, ptr %69, i32 0, i32 1
  %70 = load i32, ptr %private_bits43, align 4
  %call44 = call ptr @CRC_BF_addEntry(ptr noundef %68, i32 noundef %70, i32 noundef 5)
  store ptr %call44, ptr @frameSIPH, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then41
  store i32 0, ptr %ch, align 4
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc62, %if.end
  %71 = load i32, ptr %ch, align 4
  %72 = load ptr, ptr %gfp.addr, align 8
  %stereo46 = getelementptr inbounds %struct.lame_global_flags, ptr %72, i32 0, i32 46
  %73 = load i32, ptr %stereo46, align 4
  %cmp47 = icmp slt i32 %71, %73
  br i1 %cmp47, label %for.body48, label %for.end64

for.body48:                                       ; preds = %for.cond45
  store i32 0, ptr %scfsi_band, align 4
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc59, %for.body48
  %74 = load i32, ptr %scfsi_band, align 4
  %cmp50 = icmp slt i32 %74, 4
  br i1 %cmp50, label %for.body51, label %for.end61

for.body51:                                       ; preds = %for.cond49
  %75 = load i32, ptr %ch, align 4
  %idxprom52 = sext i32 %75 to i64
  %arrayidx53 = getelementptr inbounds [2 x ptr], ptr @channelSIPH, i64 0, i64 %idxprom52
  store ptr %arrayidx53, ptr %pph, align 8
  %76 = load ptr, ptr %pph, align 8
  %77 = load ptr, ptr %76, align 8
  %78 = load ptr, ptr %si.addr, align 8
  %scfsi = getelementptr inbounds %struct.III_side_info_t, ptr %78, i32 0, i32 3
  %79 = load i32, ptr %ch, align 4
  %idxprom54 = sext i32 %79 to i64
  %arrayidx55 = getelementptr inbounds [2 x [4 x i32]], ptr %scfsi, i64 0, i64 %idxprom54
  %80 = load i32, ptr %scfsi_band, align 4
  %idxprom56 = sext i32 %80 to i64
  %arrayidx57 = getelementptr inbounds [4 x i32], ptr %arrayidx55, i64 0, i64 %idxprom56
  %81 = load i32, ptr %arrayidx57, align 4
  %call58 = call ptr @CRC_BF_addEntry(ptr noundef %77, i32 noundef %81, i32 noundef 1)
  %82 = load ptr, ptr %pph, align 8
  store ptr %call58, ptr %82, align 8
  br label %for.inc59

for.inc59:                                        ; preds = %for.body51
  %83 = load i32, ptr %scfsi_band, align 4
  %inc60 = add nsw i32 %83, 1
  store i32 %inc60, ptr %scfsi_band, align 4
  br label %for.cond49, !llvm.loop !16

for.end61:                                        ; preds = %for.cond49
  br label %for.inc62

for.inc62:                                        ; preds = %for.end61
  %84 = load i32, ptr %ch, align 4
  %inc63 = add nsw i32 %84, 1
  store i32 %inc63, ptr %ch, align 4
  br label %for.cond45, !llvm.loop !17

for.end64:                                        ; preds = %for.cond45
  store i32 0, ptr %gr, align 4
  br label %for.cond65

for.cond65:                                       ; preds = %for.inc137, %for.end64
  %85 = load i32, ptr %gr, align 4
  %cmp66 = icmp slt i32 %85, 2
  br i1 %cmp66, label %for.body67, label %for.end139

for.body67:                                       ; preds = %for.cond65
  store i32 0, ptr %ch, align 4
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc134, %for.body67
  %86 = load i32, ptr %ch, align 4
  %87 = load ptr, ptr %gfp.addr, align 8
  %stereo69 = getelementptr inbounds %struct.lame_global_flags, ptr %87, i32 0, i32 46
  %88 = load i32, ptr %stereo69, align 4
  %cmp70 = icmp slt i32 %86, %88
  br i1 %cmp70, label %for.body71, label %for.end136

for.body71:                                       ; preds = %for.cond68
  %89 = load i32, ptr %gr, align 4
  %idxprom73 = sext i32 %89 to i64
  %arrayidx74 = getelementptr inbounds [2 x [2 x ptr]], ptr @spectrumSIPH, i64 0, i64 %idxprom73
  %90 = load i32, ptr %ch, align 4
  %idxprom75 = sext i32 %90 to i64
  %arrayidx76 = getelementptr inbounds [2 x ptr], ptr %arrayidx74, i64 0, i64 %idxprom75
  store ptr %arrayidx76, ptr %pph72, align 8
  %91 = load ptr, ptr %si.addr, align 8
  %gr77 = getelementptr inbounds %struct.III_side_info_t, ptr %91, i32 0, i32 4
  %92 = load i32, ptr %gr, align 4
  %idxprom78 = sext i32 %92 to i64
  %arrayidx79 = getelementptr inbounds [2 x %struct.anon], ptr %gr77, i64 0, i64 %idxprom78
  %ch80 = getelementptr inbounds %struct.anon, ptr %arrayidx79, i32 0, i32 0
  %93 = load i32, ptr %ch, align 4
  %idxprom81 = sext i32 %93 to i64
  %arrayidx82 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %ch80, i64 0, i64 %idxprom81
  %tt = getelementptr inbounds %struct.gr_info_ss, ptr %arrayidx82, i32 0, i32 0
  store ptr %tt, ptr %gi, align 8
  %94 = load ptr, ptr %pph72, align 8
  %95 = load ptr, ptr %94, align 8
  %96 = load ptr, ptr %gi, align 8
  %part2_3_length = getelementptr inbounds %struct.gr_info, ptr %96, i32 0, i32 0
  %97 = load i32, ptr %part2_3_length, align 8
  %call83 = call ptr @CRC_BF_addEntry(ptr noundef %95, i32 noundef %97, i32 noundef 12)
  %98 = load ptr, ptr %pph72, align 8
  store ptr %call83, ptr %98, align 8
  %99 = load ptr, ptr %pph72, align 8
  %100 = load ptr, ptr %99, align 8
  %101 = load ptr, ptr %gi, align 8
  %big_values = getelementptr inbounds %struct.gr_info, ptr %101, i32 0, i32 1
  %102 = load i32, ptr %big_values, align 4
  %call84 = call ptr @CRC_BF_addEntry(ptr noundef %100, i32 noundef %102, i32 noundef 9)
  %103 = load ptr, ptr %pph72, align 8
  store ptr %call84, ptr %103, align 8
  %104 = load ptr, ptr %pph72, align 8
  %105 = load ptr, ptr %104, align 8
  %106 = load ptr, ptr %gi, align 8
  %global_gain = getelementptr inbounds %struct.gr_info, ptr %106, i32 0, i32 3
  %107 = load i32, ptr %global_gain, align 4
  %call85 = call ptr @CRC_BF_addEntry(ptr noundef %105, i32 noundef %107, i32 noundef 8)
  %108 = load ptr, ptr %pph72, align 8
  store ptr %call85, ptr %108, align 8
  %109 = load ptr, ptr %pph72, align 8
  %110 = load ptr, ptr %109, align 8
  %111 = load ptr, ptr %gi, align 8
  %scalefac_compress = getelementptr inbounds %struct.gr_info, ptr %111, i32 0, i32 4
  %112 = load i32, ptr %scalefac_compress, align 8
  %call86 = call ptr @CRC_BF_addEntry(ptr noundef %110, i32 noundef %112, i32 noundef 4)
  %113 = load ptr, ptr %pph72, align 8
  store ptr %call86, ptr %113, align 8
  %114 = load ptr, ptr %pph72, align 8
  %115 = load ptr, ptr %114, align 8
  %116 = load ptr, ptr %gi, align 8
  %window_switching_flag = getelementptr inbounds %struct.gr_info, ptr %116, i32 0, i32 5
  %117 = load i32, ptr %window_switching_flag, align 4
  %call87 = call ptr @CRC_BF_addEntry(ptr noundef %115, i32 noundef %117, i32 noundef 1)
  %118 = load ptr, ptr %pph72, align 8
  store ptr %call87, ptr %118, align 8
  %119 = load ptr, ptr %gi, align 8
  %window_switching_flag88 = getelementptr inbounds %struct.gr_info, ptr %119, i32 0, i32 5
  %120 = load i32, ptr %window_switching_flag88, align 4
  %tobool89 = icmp ne i32 %120, 0
  br i1 %tobool89, label %if.then90, label %if.else111

if.then90:                                        ; preds = %for.body71
  %121 = load ptr, ptr %pph72, align 8
  %122 = load ptr, ptr %121, align 8
  %123 = load ptr, ptr %gi, align 8
  %block_type = getelementptr inbounds %struct.gr_info, ptr %123, i32 0, i32 6
  %124 = load i32, ptr %block_type, align 8
  %call91 = call ptr @CRC_BF_addEntry(ptr noundef %122, i32 noundef %124, i32 noundef 2)
  %125 = load ptr, ptr %pph72, align 8
  store ptr %call91, ptr %125, align 8
  %126 = load ptr, ptr %pph72, align 8
  %127 = load ptr, ptr %126, align 8
  %128 = load ptr, ptr %gi, align 8
  %mixed_block_flag = getelementptr inbounds %struct.gr_info, ptr %128, i32 0, i32 7
  %129 = load i32, ptr %mixed_block_flag, align 4
  %call92 = call ptr @CRC_BF_addEntry(ptr noundef %127, i32 noundef %129, i32 noundef 1)
  %130 = load ptr, ptr %pph72, align 8
  store ptr %call92, ptr %130, align 8
  store i32 0, ptr %region, align 4
  br label %for.cond93

for.cond93:                                       ; preds = %for.inc99, %if.then90
  %131 = load i32, ptr %region, align 4
  %cmp94 = icmp slt i32 %131, 2
  br i1 %cmp94, label %for.body95, label %for.end101

for.body95:                                       ; preds = %for.cond93
  %132 = load ptr, ptr %pph72, align 8
  %133 = load ptr, ptr %132, align 8
  %134 = load ptr, ptr %gi, align 8
  %table_select = getelementptr inbounds %struct.gr_info, ptr %134, i32 0, i32 8
  %135 = load i32, ptr %region, align 4
  %idxprom96 = sext i32 %135 to i64
  %arrayidx97 = getelementptr inbounds [3 x i32], ptr %table_select, i64 0, i64 %idxprom96
  %136 = load i32, ptr %arrayidx97, align 4
  %call98 = call ptr @CRC_BF_addEntry(ptr noundef %133, i32 noundef %136, i32 noundef 5)
  %137 = load ptr, ptr %pph72, align 8
  store ptr %call98, ptr %137, align 8
  br label %for.inc99

for.inc99:                                        ; preds = %for.body95
  %138 = load i32, ptr %region, align 4
  %inc100 = add nsw i32 %138, 1
  store i32 %inc100, ptr %region, align 4
  br label %for.cond93, !llvm.loop !18

for.end101:                                       ; preds = %for.cond93
  store i32 0, ptr %window, align 4
  br label %for.cond102

for.cond102:                                      ; preds = %for.inc108, %for.end101
  %139 = load i32, ptr %window, align 4
  %cmp103 = icmp slt i32 %139, 3
  br i1 %cmp103, label %for.body104, label %for.end110

for.body104:                                      ; preds = %for.cond102
  %140 = load ptr, ptr %pph72, align 8
  %141 = load ptr, ptr %140, align 8
  %142 = load ptr, ptr %gi, align 8
  %subblock_gain = getelementptr inbounds %struct.gr_info, ptr %142, i32 0, i32 9
  %143 = load i32, ptr %window, align 4
  %idxprom105 = sext i32 %143 to i64
  %arrayidx106 = getelementptr inbounds [3 x i32], ptr %subblock_gain, i64 0, i64 %idxprom105
  %144 = load i32, ptr %arrayidx106, align 4
  %call107 = call ptr @CRC_BF_addEntry(ptr noundef %141, i32 noundef %144, i32 noundef 3)
  %145 = load ptr, ptr %pph72, align 8
  store ptr %call107, ptr %145, align 8
  br label %for.inc108

for.inc108:                                       ; preds = %for.body104
  %146 = load i32, ptr %window, align 4
  %inc109 = add nsw i32 %146, 1
  store i32 %inc109, ptr %window, align 4
  br label %for.cond102, !llvm.loop !19

for.end110:                                       ; preds = %for.cond102
  br label %if.end130

if.else111:                                       ; preds = %for.body71
  %147 = load ptr, ptr %gi, align 8
  %block_type112 = getelementptr inbounds %struct.gr_info, ptr %147, i32 0, i32 6
  %148 = load i32, ptr %block_type112, align 8
  %cmp113 = icmp eq i32 %148, 0
  %lnot114 = xor i1 %cmp113, true
  %lnot.ext115 = zext i1 %lnot114 to i32
  %conv = sext i32 %lnot.ext115 to i64
  %tobool116 = icmp ne i64 %conv, 0
  br i1 %tobool116, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else111
  call void @__assert_rtn(ptr noundef @__func__.encodeSideInfo, ptr noundef @.str, i32 noundef 380, ptr noundef @.str.15) #5
  unreachable

149:                                              ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %if.else111
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %149
  store i32 0, ptr %region, align 4
  br label %for.cond117

for.cond117:                                      ; preds = %for.inc125, %cond.end
  %150 = load i32, ptr %region, align 4
  %cmp118 = icmp slt i32 %150, 3
  br i1 %cmp118, label %for.body120, label %for.end127

for.body120:                                      ; preds = %for.cond117
  %151 = load ptr, ptr %pph72, align 8
  %152 = load ptr, ptr %151, align 8
  %153 = load ptr, ptr %gi, align 8
  %table_select121 = getelementptr inbounds %struct.gr_info, ptr %153, i32 0, i32 8
  %154 = load i32, ptr %region, align 4
  %idxprom122 = sext i32 %154 to i64
  %arrayidx123 = getelementptr inbounds [3 x i32], ptr %table_select121, i64 0, i64 %idxprom122
  %155 = load i32, ptr %arrayidx123, align 4
  %call124 = call ptr @CRC_BF_addEntry(ptr noundef %152, i32 noundef %155, i32 noundef 5)
  %156 = load ptr, ptr %pph72, align 8
  store ptr %call124, ptr %156, align 8
  br label %for.inc125

for.inc125:                                       ; preds = %for.body120
  %157 = load i32, ptr %region, align 4
  %inc126 = add nsw i32 %157, 1
  store i32 %inc126, ptr %region, align 4
  br label %for.cond117, !llvm.loop !20

for.end127:                                       ; preds = %for.cond117
  %158 = load ptr, ptr %pph72, align 8
  %159 = load ptr, ptr %158, align 8
  %160 = load ptr, ptr %gi, align 8
  %region0_count = getelementptr inbounds %struct.gr_info, ptr %160, i32 0, i32 10
  %161 = load i32, ptr %region0_count, align 8
  %call128 = call ptr @CRC_BF_addEntry(ptr noundef %159, i32 noundef %161, i32 noundef 4)
  %162 = load ptr, ptr %pph72, align 8
  store ptr %call128, ptr %162, align 8
  %163 = load ptr, ptr %pph72, align 8
  %164 = load ptr, ptr %163, align 8
  %165 = load ptr, ptr %gi, align 8
  %region1_count = getelementptr inbounds %struct.gr_info, ptr %165, i32 0, i32 11
  %166 = load i32, ptr %region1_count, align 4
  %call129 = call ptr @CRC_BF_addEntry(ptr noundef %164, i32 noundef %166, i32 noundef 3)
  %167 = load ptr, ptr %pph72, align 8
  store ptr %call129, ptr %167, align 8
  br label %if.end130

if.end130:                                        ; preds = %for.end127, %for.end110
  %168 = load ptr, ptr %pph72, align 8
  %169 = load ptr, ptr %168, align 8
  %170 = load ptr, ptr %gi, align 8
  %preflag = getelementptr inbounds %struct.gr_info, ptr %170, i32 0, i32 12
  %171 = load i32, ptr %preflag, align 8
  %call131 = call ptr @CRC_BF_addEntry(ptr noundef %169, i32 noundef %171, i32 noundef 1)
  %172 = load ptr, ptr %pph72, align 8
  store ptr %call131, ptr %172, align 8
  %173 = load ptr, ptr %pph72, align 8
  %174 = load ptr, ptr %173, align 8
  %175 = load ptr, ptr %gi, align 8
  %scalefac_scale = getelementptr inbounds %struct.gr_info, ptr %175, i32 0, i32 13
  %176 = load i32, ptr %scalefac_scale, align 4
  %call132 = call ptr @CRC_BF_addEntry(ptr noundef %174, i32 noundef %176, i32 noundef 1)
  %177 = load ptr, ptr %pph72, align 8
  store ptr %call132, ptr %177, align 8
  %178 = load ptr, ptr %pph72, align 8
  %179 = load ptr, ptr %178, align 8
  %180 = load ptr, ptr %gi, align 8
  %count1table_select = getelementptr inbounds %struct.gr_info, ptr %180, i32 0, i32 14
  %181 = load i32, ptr %count1table_select, align 8
  %call133 = call ptr @CRC_BF_addEntry(ptr noundef %179, i32 noundef %181, i32 noundef 1)
  %182 = load ptr, ptr %pph72, align 8
  store ptr %call133, ptr %182, align 8
  br label %for.inc134

for.inc134:                                       ; preds = %if.end130
  %183 = load i32, ptr %ch, align 4
  %inc135 = add nsw i32 %183, 1
  store i32 %inc135, ptr %ch, align 4
  br label %for.cond68, !llvm.loop !21

for.end136:                                       ; preds = %for.cond68
  br label %for.inc137

for.inc137:                                       ; preds = %for.end136
  %184 = load i32, ptr %gr, align 4
  %inc138 = add nsw i32 %184, 1
  store i32 %inc138, ptr %gr, align 4
  br label %for.cond65, !llvm.loop !22

for.end139:                                       ; preds = %for.cond65
  %185 = load ptr, ptr %gfp.addr, align 8
  %stereo140 = getelementptr inbounds %struct.lame_global_flags, ptr %185, i32 0, i32 46
  %186 = load i32, ptr %stereo140, align 4
  %cmp141 = icmp eq i32 %186, 2
  br i1 %cmp141, label %if.then143, label %if.else144

if.then143:                                       ; preds = %for.end139
  %187 = load i32, ptr %bits_sent, align 4
  %add = add nsw i32 %187, 256
  store i32 %add, ptr %bits_sent, align 4
  br label %if.end146

if.else144:                                       ; preds = %for.end139
  %188 = load i32, ptr %bits_sent, align 4
  %add145 = add nsw i32 %188, 136
  store i32 %add145, ptr %bits_sent, align 4
  br label %if.end146

if.end146:                                        ; preds = %if.else144, %if.then143
  br label %if.end249

if.else147:                                       ; preds = %for.end35
  %189 = load ptr, ptr @frameSIPH, align 8
  %190 = load ptr, ptr %si.addr, align 8
  %main_data_begin148 = getelementptr inbounds %struct.III_side_info_t, ptr %190, i32 0, i32 0
  %191 = load i32, ptr %main_data_begin148, align 8
  %call149 = call ptr @CRC_BF_addEntry(ptr noundef %189, i32 noundef %191, i32 noundef 8)
  store ptr %call149, ptr @frameSIPH, align 8
  %192 = load ptr, ptr %gfp.addr, align 8
  %stereo150 = getelementptr inbounds %struct.lame_global_flags, ptr %192, i32 0, i32 46
  %193 = load i32, ptr %stereo150, align 4
  %cmp151 = icmp eq i32 %193, 2
  br i1 %cmp151, label %if.then153, label %if.else156

if.then153:                                       ; preds = %if.else147
  %194 = load ptr, ptr @frameSIPH, align 8
  %195 = load ptr, ptr %si.addr, align 8
  %private_bits154 = getelementptr inbounds %struct.III_side_info_t, ptr %195, i32 0, i32 1
  %196 = load i32, ptr %private_bits154, align 4
  %call155 = call ptr @CRC_BF_addEntry(ptr noundef %194, i32 noundef %196, i32 noundef 2)
  store ptr %call155, ptr @frameSIPH, align 8
  br label %if.end159

if.else156:                                       ; preds = %if.else147
  %197 = load ptr, ptr @frameSIPH, align 8
  %198 = load ptr, ptr %si.addr, align 8
  %private_bits157 = getelementptr inbounds %struct.III_side_info_t, ptr %198, i32 0, i32 1
  %199 = load i32, ptr %private_bits157, align 4
  %call158 = call ptr @CRC_BF_addEntry(ptr noundef %197, i32 noundef %199, i32 noundef 1)
  store ptr %call158, ptr @frameSIPH, align 8
  br label %if.end159

if.end159:                                        ; preds = %if.else156, %if.then153
  store i32 0, ptr %gr, align 4
  store i32 0, ptr %ch, align 4
  br label %for.cond160

for.cond160:                                      ; preds = %for.inc238, %if.end159
  %200 = load i32, ptr %ch, align 4
  %201 = load ptr, ptr %gfp.addr, align 8
  %stereo161 = getelementptr inbounds %struct.lame_global_flags, ptr %201, i32 0, i32 46
  %202 = load i32, ptr %stereo161, align 4
  %cmp162 = icmp slt i32 %200, %202
  br i1 %cmp162, label %for.body164, label %for.end240

for.body164:                                      ; preds = %for.cond160
  %203 = load i32, ptr %gr, align 4
  %idxprom166 = sext i32 %203 to i64
  %arrayidx167 = getelementptr inbounds [2 x [2 x ptr]], ptr @spectrumSIPH, i64 0, i64 %idxprom166
  %204 = load i32, ptr %ch, align 4
  %idxprom168 = sext i32 %204 to i64
  %arrayidx169 = getelementptr inbounds [2 x ptr], ptr %arrayidx167, i64 0, i64 %idxprom168
  store ptr %arrayidx169, ptr %pph165, align 8
  %205 = load ptr, ptr %si.addr, align 8
  %gr171 = getelementptr inbounds %struct.III_side_info_t, ptr %205, i32 0, i32 4
  %206 = load i32, ptr %gr, align 4
  %idxprom172 = sext i32 %206 to i64
  %arrayidx173 = getelementptr inbounds [2 x %struct.anon], ptr %gr171, i64 0, i64 %idxprom172
  %ch174 = getelementptr inbounds %struct.anon, ptr %arrayidx173, i32 0, i32 0
  %207 = load i32, ptr %ch, align 4
  %idxprom175 = sext i32 %207 to i64
  %arrayidx176 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %ch174, i64 0, i64 %idxprom175
  %tt177 = getelementptr inbounds %struct.gr_info_ss, ptr %arrayidx176, i32 0, i32 0
  store ptr %tt177, ptr %gi170, align 8
  %208 = load ptr, ptr %pph165, align 8
  %209 = load ptr, ptr %208, align 8
  %210 = load ptr, ptr %gi170, align 8
  %part2_3_length178 = getelementptr inbounds %struct.gr_info, ptr %210, i32 0, i32 0
  %211 = load i32, ptr %part2_3_length178, align 8
  %call179 = call ptr @CRC_BF_addEntry(ptr noundef %209, i32 noundef %211, i32 noundef 12)
  %212 = load ptr, ptr %pph165, align 8
  store ptr %call179, ptr %212, align 8
  %213 = load ptr, ptr %pph165, align 8
  %214 = load ptr, ptr %213, align 8
  %215 = load ptr, ptr %gi170, align 8
  %big_values180 = getelementptr inbounds %struct.gr_info, ptr %215, i32 0, i32 1
  %216 = load i32, ptr %big_values180, align 4
  %call181 = call ptr @CRC_BF_addEntry(ptr noundef %214, i32 noundef %216, i32 noundef 9)
  %217 = load ptr, ptr %pph165, align 8
  store ptr %call181, ptr %217, align 8
  %218 = load ptr, ptr %pph165, align 8
  %219 = load ptr, ptr %218, align 8
  %220 = load ptr, ptr %gi170, align 8
  %global_gain182 = getelementptr inbounds %struct.gr_info, ptr %220, i32 0, i32 3
  %221 = load i32, ptr %global_gain182, align 4
  %call183 = call ptr @CRC_BF_addEntry(ptr noundef %219, i32 noundef %221, i32 noundef 8)
  %222 = load ptr, ptr %pph165, align 8
  store ptr %call183, ptr %222, align 8
  %223 = load ptr, ptr %pph165, align 8
  %224 = load ptr, ptr %223, align 8
  %225 = load ptr, ptr %gi170, align 8
  %scalefac_compress184 = getelementptr inbounds %struct.gr_info, ptr %225, i32 0, i32 4
  %226 = load i32, ptr %scalefac_compress184, align 8
  %call185 = call ptr @CRC_BF_addEntry(ptr noundef %224, i32 noundef %226, i32 noundef 9)
  %227 = load ptr, ptr %pph165, align 8
  store ptr %call185, ptr %227, align 8
  %228 = load ptr, ptr %pph165, align 8
  %229 = load ptr, ptr %228, align 8
  %230 = load ptr, ptr %gi170, align 8
  %window_switching_flag186 = getelementptr inbounds %struct.gr_info, ptr %230, i32 0, i32 5
  %231 = load i32, ptr %window_switching_flag186, align 4
  %call187 = call ptr @CRC_BF_addEntry(ptr noundef %229, i32 noundef %231, i32 noundef 1)
  %232 = load ptr, ptr %pph165, align 8
  store ptr %call187, ptr %232, align 8
  %233 = load ptr, ptr %gi170, align 8
  %window_switching_flag188 = getelementptr inbounds %struct.gr_info, ptr %233, i32 0, i32 5
  %234 = load i32, ptr %window_switching_flag188, align 4
  %tobool189 = icmp ne i32 %234, 0
  br i1 %tobool189, label %if.then190, label %if.else217

if.then190:                                       ; preds = %for.body164
  %235 = load ptr, ptr %pph165, align 8
  %236 = load ptr, ptr %235, align 8
  %237 = load ptr, ptr %gi170, align 8
  %block_type191 = getelementptr inbounds %struct.gr_info, ptr %237, i32 0, i32 6
  %238 = load i32, ptr %block_type191, align 8
  %call192 = call ptr @CRC_BF_addEntry(ptr noundef %236, i32 noundef %238, i32 noundef 2)
  %239 = load ptr, ptr %pph165, align 8
  store ptr %call192, ptr %239, align 8
  %240 = load ptr, ptr %pph165, align 8
  %241 = load ptr, ptr %240, align 8
  %242 = load ptr, ptr %gi170, align 8
  %mixed_block_flag193 = getelementptr inbounds %struct.gr_info, ptr %242, i32 0, i32 7
  %243 = load i32, ptr %mixed_block_flag193, align 4
  %call194 = call ptr @CRC_BF_addEntry(ptr noundef %241, i32 noundef %243, i32 noundef 1)
  %244 = load ptr, ptr %pph165, align 8
  store ptr %call194, ptr %244, align 8
  store i32 0, ptr %region, align 4
  br label %for.cond195

for.cond195:                                      ; preds = %for.inc203, %if.then190
  %245 = load i32, ptr %region, align 4
  %cmp196 = icmp slt i32 %245, 2
  br i1 %cmp196, label %for.body198, label %for.end205

for.body198:                                      ; preds = %for.cond195
  %246 = load ptr, ptr %pph165, align 8
  %247 = load ptr, ptr %246, align 8
  %248 = load ptr, ptr %gi170, align 8
  %table_select199 = getelementptr inbounds %struct.gr_info, ptr %248, i32 0, i32 8
  %249 = load i32, ptr %region, align 4
  %idxprom200 = sext i32 %249 to i64
  %arrayidx201 = getelementptr inbounds [3 x i32], ptr %table_select199, i64 0, i64 %idxprom200
  %250 = load i32, ptr %arrayidx201, align 4
  %call202 = call ptr @CRC_BF_addEntry(ptr noundef %247, i32 noundef %250, i32 noundef 5)
  %251 = load ptr, ptr %pph165, align 8
  store ptr %call202, ptr %251, align 8
  br label %for.inc203

for.inc203:                                       ; preds = %for.body198
  %252 = load i32, ptr %region, align 4
  %inc204 = add nsw i32 %252, 1
  store i32 %inc204, ptr %region, align 4
  br label %for.cond195, !llvm.loop !23

for.end205:                                       ; preds = %for.cond195
  store i32 0, ptr %window, align 4
  br label %for.cond206

for.cond206:                                      ; preds = %for.inc214, %for.end205
  %253 = load i32, ptr %window, align 4
  %cmp207 = icmp slt i32 %253, 3
  br i1 %cmp207, label %for.body209, label %for.end216

for.body209:                                      ; preds = %for.cond206
  %254 = load ptr, ptr %pph165, align 8
  %255 = load ptr, ptr %254, align 8
  %256 = load ptr, ptr %gi170, align 8
  %subblock_gain210 = getelementptr inbounds %struct.gr_info, ptr %256, i32 0, i32 9
  %257 = load i32, ptr %window, align 4
  %idxprom211 = sext i32 %257 to i64
  %arrayidx212 = getelementptr inbounds [3 x i32], ptr %subblock_gain210, i64 0, i64 %idxprom211
  %258 = load i32, ptr %arrayidx212, align 4
  %call213 = call ptr @CRC_BF_addEntry(ptr noundef %255, i32 noundef %258, i32 noundef 3)
  %259 = load ptr, ptr %pph165, align 8
  store ptr %call213, ptr %259, align 8
  br label %for.inc214

for.inc214:                                       ; preds = %for.body209
  %260 = load i32, ptr %window, align 4
  %inc215 = add nsw i32 %260, 1
  store i32 %inc215, ptr %window, align 4
  br label %for.cond206, !llvm.loop !24

for.end216:                                       ; preds = %for.cond206
  br label %if.end233

if.else217:                                       ; preds = %for.body164
  store i32 0, ptr %region, align 4
  br label %for.cond218

for.cond218:                                      ; preds = %for.inc226, %if.else217
  %261 = load i32, ptr %region, align 4
  %cmp219 = icmp slt i32 %261, 3
  br i1 %cmp219, label %for.body221, label %for.end228

for.body221:                                      ; preds = %for.cond218
  %262 = load ptr, ptr %pph165, align 8
  %263 = load ptr, ptr %262, align 8
  %264 = load ptr, ptr %gi170, align 8
  %table_select222 = getelementptr inbounds %struct.gr_info, ptr %264, i32 0, i32 8
  %265 = load i32, ptr %region, align 4
  %idxprom223 = sext i32 %265 to i64
  %arrayidx224 = getelementptr inbounds [3 x i32], ptr %table_select222, i64 0, i64 %idxprom223
  %266 = load i32, ptr %arrayidx224, align 4
  %call225 = call ptr @CRC_BF_addEntry(ptr noundef %263, i32 noundef %266, i32 noundef 5)
  %267 = load ptr, ptr %pph165, align 8
  store ptr %call225, ptr %267, align 8
  br label %for.inc226

for.inc226:                                       ; preds = %for.body221
  %268 = load i32, ptr %region, align 4
  %inc227 = add nsw i32 %268, 1
  store i32 %inc227, ptr %region, align 4
  br label %for.cond218, !llvm.loop !25

for.end228:                                       ; preds = %for.cond218
  %269 = load ptr, ptr %pph165, align 8
  %270 = load ptr, ptr %269, align 8
  %271 = load ptr, ptr %gi170, align 8
  %region0_count229 = getelementptr inbounds %struct.gr_info, ptr %271, i32 0, i32 10
  %272 = load i32, ptr %region0_count229, align 8
  %call230 = call ptr @CRC_BF_addEntry(ptr noundef %270, i32 noundef %272, i32 noundef 4)
  %273 = load ptr, ptr %pph165, align 8
  store ptr %call230, ptr %273, align 8
  %274 = load ptr, ptr %pph165, align 8
  %275 = load ptr, ptr %274, align 8
  %276 = load ptr, ptr %gi170, align 8
  %region1_count231 = getelementptr inbounds %struct.gr_info, ptr %276, i32 0, i32 11
  %277 = load i32, ptr %region1_count231, align 4
  %call232 = call ptr @CRC_BF_addEntry(ptr noundef %275, i32 noundef %277, i32 noundef 3)
  %278 = load ptr, ptr %pph165, align 8
  store ptr %call232, ptr %278, align 8
  br label %if.end233

if.end233:                                        ; preds = %for.end228, %for.end216
  %279 = load ptr, ptr %pph165, align 8
  %280 = load ptr, ptr %279, align 8
  %281 = load ptr, ptr %gi170, align 8
  %scalefac_scale234 = getelementptr inbounds %struct.gr_info, ptr %281, i32 0, i32 13
  %282 = load i32, ptr %scalefac_scale234, align 4
  %call235 = call ptr @CRC_BF_addEntry(ptr noundef %280, i32 noundef %282, i32 noundef 1)
  %283 = load ptr, ptr %pph165, align 8
  store ptr %call235, ptr %283, align 8
  %284 = load ptr, ptr %pph165, align 8
  %285 = load ptr, ptr %284, align 8
  %286 = load ptr, ptr %gi170, align 8
  %count1table_select236 = getelementptr inbounds %struct.gr_info, ptr %286, i32 0, i32 14
  %287 = load i32, ptr %count1table_select236, align 8
  %call237 = call ptr @CRC_BF_addEntry(ptr noundef %285, i32 noundef %287, i32 noundef 1)
  %288 = load ptr, ptr %pph165, align 8
  store ptr %call237, ptr %288, align 8
  br label %for.inc238

for.inc238:                                       ; preds = %if.end233
  %289 = load i32, ptr %ch, align 4
  %inc239 = add nsw i32 %289, 1
  store i32 %inc239, ptr %ch, align 4
  br label %for.cond160, !llvm.loop !26

for.end240:                                       ; preds = %for.cond160
  %290 = load ptr, ptr %gfp.addr, align 8
  %stereo241 = getelementptr inbounds %struct.lame_global_flags, ptr %290, i32 0, i32 46
  %291 = load i32, ptr %stereo241, align 4
  %cmp242 = icmp eq i32 %291, 2
  br i1 %cmp242, label %if.then244, label %if.else246

if.then244:                                       ; preds = %for.end240
  %292 = load i32, ptr %bits_sent, align 4
  %add245 = add nsw i32 %292, 136
  store i32 %add245, ptr %bits_sent, align 4
  br label %if.end248

if.else246:                                       ; preds = %for.end240
  %293 = load i32, ptr %bits_sent, align 4
  %add247 = add nsw i32 %293, 72
  store i32 %add247, ptr %bits_sent, align 4
  br label %if.end248

if.end248:                                        ; preds = %if.else246, %if.then244
  br label %if.end249

if.end249:                                        ; preds = %if.end248, %if.end146
  %294 = load ptr, ptr %gfp.addr, align 8
  %error_protection250 = getelementptr inbounds %struct.lame_global_flags, ptr %294, i32 0, i32 14
  %295 = load i32, ptr %error_protection250, align 4
  %tobool251 = icmp ne i32 %295, 0
  br i1 %tobool251, label %if.then252, label %if.end255

if.then252:                                       ; preds = %if.end249
  %296 = load ptr, ptr @headerPH, align 8
  %297 = load i32, ptr @crc, align 4
  %call253 = call ptr @BF_addEntry(ptr noundef %296, i32 noundef %297, i32 noundef 16)
  store ptr %call253, ptr @headerPH, align 8
  %298 = load i32, ptr %bits_sent, align 4
  %add254 = add nsw i32 %298, 16
  store i32 %add254, ptr %bits_sent, align 4
  br label %if.end255

if.end255:                                        ; preds = %if.then252, %if.end249
  %299 = load i32, ptr %bits_sent, align 4
  ret i32 %299
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
  store i32 0, ptr %gr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc6, %entry
  %0 = load i32, ptr %gr, align 4
  %1 = load ptr, ptr %gfp.addr, align 8
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, ptr %1, i32 0, i32 45
  %2 = load i32, ptr %mode_gr, align 8
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end8

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %ch, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %3 = load i32, ptr %ch, align 4
  %4 = load ptr, ptr %gfp.addr, align 8
  %stereo = getelementptr inbounds %struct.lame_global_flags, ptr %4, i32 0, i32 46
  %5 = load i32, ptr %stereo, align 4
  %cmp2 = icmp slt i32 %3, %5
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %6 = load i32, ptr %gr, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [2 x [2 x ptr]], ptr @scaleFactorsPH, i64 0, i64 %idxprom
  %7 = load i32, ptr %ch, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [2 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4
  %8 = load ptr, ptr %arrayidx5, align 8
  %part = getelementptr inbounds %struct.BF_PartHolder, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %part, align 8
  %nrEntries = getelementptr inbounds %struct.BF_BitstreamPart, ptr %9, i32 0, i32 0
  store i32 0, ptr %nrEntries, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %10 = load i32, ptr %ch, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %ch, align 4
  br label %for.cond1, !llvm.loop !27

for.end:                                          ; preds = %for.cond1
  br label %for.inc6

for.inc6:                                         ; preds = %for.end
  %11 = load i32, ptr %gr, align 4
  %inc7 = add nsw i32 %11, 1
  store i32 %inc7, ptr %gr, align 4
  br label %for.cond, !llvm.loop !28

for.end8:                                         ; preds = %for.cond
  store i32 0, ptr %gr, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc26, %for.end8
  %12 = load i32, ptr %gr, align 4
  %13 = load ptr, ptr %gfp.addr, align 8
  %mode_gr10 = getelementptr inbounds %struct.lame_global_flags, ptr %13, i32 0, i32 45
  %14 = load i32, ptr %mode_gr10, align 8
  %cmp11 = icmp slt i32 %12, %14
  br i1 %cmp11, label %for.body12, label %for.end28

for.body12:                                       ; preds = %for.cond9
  store i32 0, ptr %ch, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc23, %for.body12
  %15 = load i32, ptr %ch, align 4
  %16 = load ptr, ptr %gfp.addr, align 8
  %stereo14 = getelementptr inbounds %struct.lame_global_flags, ptr %16, i32 0, i32 46
  %17 = load i32, ptr %stereo14, align 4
  %cmp15 = icmp slt i32 %15, %17
  br i1 %cmp15, label %for.body16, label %for.end25

for.body16:                                       ; preds = %for.cond13
  %18 = load i32, ptr %gr, align 4
  %idxprom17 = sext i32 %18 to i64
  %arrayidx18 = getelementptr inbounds [2 x [2 x ptr]], ptr @codedDataPH, i64 0, i64 %idxprom17
  %19 = load i32, ptr %ch, align 4
  %idxprom19 = sext i32 %19 to i64
  %arrayidx20 = getelementptr inbounds [2 x ptr], ptr %arrayidx18, i64 0, i64 %idxprom19
  %20 = load ptr, ptr %arrayidx20, align 8
  %part21 = getelementptr inbounds %struct.BF_PartHolder, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %part21, align 8
  %nrEntries22 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %21, i32 0, i32 0
  store i32 0, ptr %nrEntries22, align 8
  br label %for.inc23

for.inc23:                                        ; preds = %for.body16
  %22 = load i32, ptr %ch, align 4
  %inc24 = add nsw i32 %22, 1
  store i32 %inc24, ptr %ch, align 4
  br label %for.cond13, !llvm.loop !29

for.end25:                                        ; preds = %for.cond13
  br label %for.inc26

for.inc26:                                        ; preds = %for.end25
  %23 = load i32, ptr %gr, align 4
  %inc27 = add nsw i32 %23, 1
  store i32 %inc27, ptr %gr, align 4
  br label %for.cond9, !llvm.loop !30

for.end28:                                        ; preds = %for.cond9
  %24 = load ptr, ptr %gfp.addr, align 8
  %version = getelementptr inbounds %struct.lame_global_flags, ptr %24, i32 0, i32 43
  %25 = load i32, ptr %version, align 8
  %cmp29 = icmp eq i32 %25, 1
  br i1 %cmp29, label %if.then, label %if.else200

if.then:                                          ; preds = %for.end28
  store i32 0, ptr %gr, align 4
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc197, %if.then
  %26 = load i32, ptr %gr, align 4
  %cmp31 = icmp slt i32 %26, 2
  br i1 %cmp31, label %for.body32, label %for.end199

for.body32:                                       ; preds = %for.cond30
  store i32 0, ptr %ch, align 4
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc194, %for.body32
  %27 = load i32, ptr %ch, align 4
  %28 = load ptr, ptr %gfp.addr, align 8
  %stereo34 = getelementptr inbounds %struct.lame_global_flags, ptr %28, i32 0, i32 46
  %29 = load i32, ptr %stereo34, align 4
  %cmp35 = icmp slt i32 %27, %29
  br i1 %cmp35, label %for.body36, label %for.end196

for.body36:                                       ; preds = %for.cond33
  %30 = load i32, ptr %gr, align 4
  %idxprom37 = sext i32 %30 to i64
  %arrayidx38 = getelementptr inbounds [2 x [2 x ptr]], ptr @scaleFactorsPH, i64 0, i64 %idxprom37
  %31 = load i32, ptr %ch, align 4
  %idxprom39 = sext i32 %31 to i64
  %arrayidx40 = getelementptr inbounds [2 x ptr], ptr %arrayidx38, i64 0, i64 %idxprom39
  store ptr %arrayidx40, ptr %pph, align 8
  %32 = load ptr, ptr %si.addr, align 8
  %gr41 = getelementptr inbounds %struct.III_side_info_t, ptr %32, i32 0, i32 4
  %33 = load i32, ptr %gr, align 4
  %idxprom42 = sext i32 %33 to i64
  %arrayidx43 = getelementptr inbounds [2 x %struct.anon], ptr %gr41, i64 0, i64 %idxprom42
  %ch44 = getelementptr inbounds %struct.anon, ptr %arrayidx43, i32 0, i32 0
  %34 = load i32, ptr %ch, align 4
  %idxprom45 = sext i32 %34 to i64
  %arrayidx46 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %ch44, i64 0, i64 %idxprom45
  %tt = getelementptr inbounds %struct.gr_info_ss, ptr %arrayidx46, i32 0, i32 0
  store ptr %tt, ptr %gi, align 8
  %35 = load ptr, ptr %gi, align 8
  %scalefac_compress = getelementptr inbounds %struct.gr_info, ptr %35, i32 0, i32 4
  %36 = load i32, ptr %scalefac_compress, align 8
  %idxprom47 = zext i32 %36 to i64
  %arrayidx48 = getelementptr inbounds [16 x i32], ptr @slen1_tab, i64 0, i64 %idxprom47
  %37 = load i32, ptr %arrayidx48, align 4
  store i32 %37, ptr %slen1, align 4
  %38 = load ptr, ptr %gi, align 8
  %scalefac_compress49 = getelementptr inbounds %struct.gr_info, ptr %38, i32 0, i32 4
  %39 = load i32, ptr %scalefac_compress49, align 8
  %idxprom50 = zext i32 %39 to i64
  %arrayidx51 = getelementptr inbounds [16 x i32], ptr @slen2_tab, i64 0, i64 %idxprom50
  %40 = load i32, ptr %arrayidx51, align 4
  store i32 %40, ptr %slen2, align 4
  %41 = load ptr, ptr %l3_enc.addr, align 8
  %42 = load i32, ptr %gr, align 4
  %idxprom52 = sext i32 %42 to i64
  %arrayidx53 = getelementptr inbounds [2 x [576 x i32]], ptr %41, i64 %idxprom52
  %43 = load i32, ptr %ch, align 4
  %idxprom54 = sext i32 %43 to i64
  %arrayidx55 = getelementptr inbounds [2 x [576 x i32]], ptr %arrayidx53, i64 0, i64 %idxprom54
  %arrayidx56 = getelementptr inbounds [576 x i32], ptr %arrayidx55, i64 0, i64 0
  store ptr %arrayidx56, ptr %ix, align 8
  %44 = load ptr, ptr %gi, align 8
  %block_type = getelementptr inbounds %struct.gr_info, ptr %44, i32 0, i32 6
  %45 = load i32, ptr %block_type, align 8
  %cmp57 = icmp eq i32 %45, 2
  br i1 %cmp57, label %if.then58, label %if.else

if.then58:                                        ; preds = %for.body36
  store i32 0, ptr %sfb, align 4
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc76, %if.then58
  %46 = load i32, ptr %sfb, align 4
  %cmp60 = icmp slt i32 %46, 6
  br i1 %cmp60, label %for.body61, label %for.end78

for.body61:                                       ; preds = %for.cond59
  store i32 0, ptr %window, align 4
  br label %for.cond62

for.cond62:                                       ; preds = %for.inc73, %for.body61
  %47 = load i32, ptr %window, align 4
  %cmp63 = icmp slt i32 %47, 3
  br i1 %cmp63, label %for.body64, label %for.end75

for.body64:                                       ; preds = %for.cond62
  %48 = load ptr, ptr %pph, align 8
  %49 = load ptr, ptr %48, align 8
  %50 = load ptr, ptr %scalefac.addr, align 8
  %51 = load i32, ptr %gr, align 4
  %idxprom65 = sext i32 %51 to i64
  %arrayidx66 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %50, i64 %idxprom65
  %52 = load i32, ptr %ch, align 4
  %idxprom67 = sext i32 %52 to i64
  %arrayidx68 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %arrayidx66, i64 0, i64 %idxprom67
  %s = getelementptr inbounds %struct.III_scalefac_t, ptr %arrayidx68, i32 0, i32 1
  %53 = load i32, ptr %sfb, align 4
  %idxprom69 = sext i32 %53 to i64
  %arrayidx70 = getelementptr inbounds [13 x [3 x i32]], ptr %s, i64 0, i64 %idxprom69
  %54 = load i32, ptr %window, align 4
  %idxprom71 = sext i32 %54 to i64
  %arrayidx72 = getelementptr inbounds [3 x i32], ptr %arrayidx70, i64 0, i64 %idxprom71
  %55 = load i32, ptr %arrayidx72, align 4
  %56 = load i32, ptr %slen1, align 4
  %call = call ptr @BF_addEntry(ptr noundef %49, i32 noundef %55, i32 noundef %56)
  %57 = load ptr, ptr %pph, align 8
  store ptr %call, ptr %57, align 8
  br label %for.inc73

for.inc73:                                        ; preds = %for.body64
  %58 = load i32, ptr %window, align 4
  %inc74 = add nsw i32 %58, 1
  store i32 %inc74, ptr %window, align 4
  br label %for.cond62, !llvm.loop !31

for.end75:                                        ; preds = %for.cond62
  br label %for.inc76

for.inc76:                                        ; preds = %for.end75
  %59 = load i32, ptr %sfb, align 4
  %inc77 = add nsw i32 %59, 1
  store i32 %inc77, ptr %sfb, align 4
  br label %for.cond59, !llvm.loop !32

for.end78:                                        ; preds = %for.cond59
  store i32 6, ptr %sfb, align 4
  br label %for.cond79

for.cond79:                                       ; preds = %for.inc98, %for.end78
  %60 = load i32, ptr %sfb, align 4
  %cmp80 = icmp slt i32 %60, 12
  br i1 %cmp80, label %for.body81, label %for.end100

for.body81:                                       ; preds = %for.cond79
  store i32 0, ptr %window, align 4
  br label %for.cond82

for.cond82:                                       ; preds = %for.inc95, %for.body81
  %61 = load i32, ptr %window, align 4
  %cmp83 = icmp slt i32 %61, 3
  br i1 %cmp83, label %for.body84, label %for.end97

for.body84:                                       ; preds = %for.cond82
  %62 = load ptr, ptr %pph, align 8
  %63 = load ptr, ptr %62, align 8
  %64 = load ptr, ptr %scalefac.addr, align 8
  %65 = load i32, ptr %gr, align 4
  %idxprom85 = sext i32 %65 to i64
  %arrayidx86 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %64, i64 %idxprom85
  %66 = load i32, ptr %ch, align 4
  %idxprom87 = sext i32 %66 to i64
  %arrayidx88 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %arrayidx86, i64 0, i64 %idxprom87
  %s89 = getelementptr inbounds %struct.III_scalefac_t, ptr %arrayidx88, i32 0, i32 1
  %67 = load i32, ptr %sfb, align 4
  %idxprom90 = sext i32 %67 to i64
  %arrayidx91 = getelementptr inbounds [13 x [3 x i32]], ptr %s89, i64 0, i64 %idxprom90
  %68 = load i32, ptr %window, align 4
  %idxprom92 = sext i32 %68 to i64
  %arrayidx93 = getelementptr inbounds [3 x i32], ptr %arrayidx91, i64 0, i64 %idxprom92
  %69 = load i32, ptr %arrayidx93, align 4
  %70 = load i32, ptr %slen2, align 4
  %call94 = call ptr @BF_addEntry(ptr noundef %63, i32 noundef %69, i32 noundef %70)
  %71 = load ptr, ptr %pph, align 8
  store ptr %call94, ptr %71, align 8
  br label %for.inc95

for.inc95:                                        ; preds = %for.body84
  %72 = load i32, ptr %window, align 4
  %inc96 = add nsw i32 %72, 1
  store i32 %inc96, ptr %window, align 4
  br label %for.cond82, !llvm.loop !33

for.end97:                                        ; preds = %for.cond82
  br label %for.inc98

for.inc98:                                        ; preds = %for.end97
  %73 = load i32, ptr %sfb, align 4
  %inc99 = add nsw i32 %73, 1
  store i32 %inc99, ptr %sfb, align 4
  br label %for.cond79, !llvm.loop !34

for.end100:                                       ; preds = %for.cond79
  br label %if.end189

if.else:                                          ; preds = %for.body36
  %74 = load i32, ptr %gr, align 4
  %cmp101 = icmp eq i32 %74, 0
  br i1 %cmp101, label %if.then106, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %75 = load ptr, ptr %si.addr, align 8
  %scfsi = getelementptr inbounds %struct.III_side_info_t, ptr %75, i32 0, i32 3
  %76 = load i32, ptr %ch, align 4
  %idxprom102 = sext i32 %76 to i64
  %arrayidx103 = getelementptr inbounds [2 x [4 x i32]], ptr %scfsi, i64 0, i64 %idxprom102
  %arrayidx104 = getelementptr inbounds [4 x i32], ptr %arrayidx103, i64 0, i64 0
  %77 = load i32, ptr %arrayidx104, align 4
  %cmp105 = icmp eq i32 %77, 0
  br i1 %cmp105, label %if.then106, label %if.end

if.then106:                                       ; preds = %lor.lhs.false, %if.else
  store i32 0, ptr %sfb, align 4
  br label %for.cond107

for.cond107:                                      ; preds = %for.inc117, %if.then106
  %78 = load i32, ptr %sfb, align 4
  %cmp108 = icmp slt i32 %78, 6
  br i1 %cmp108, label %for.body109, label %for.end119

for.body109:                                      ; preds = %for.cond107
  %79 = load ptr, ptr %pph, align 8
  %80 = load ptr, ptr %79, align 8
  %81 = load ptr, ptr %scalefac.addr, align 8
  %82 = load i32, ptr %gr, align 4
  %idxprom110 = sext i32 %82 to i64
  %arrayidx111 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %81, i64 %idxprom110
  %83 = load i32, ptr %ch, align 4
  %idxprom112 = sext i32 %83 to i64
  %arrayidx113 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %arrayidx111, i64 0, i64 %idxprom112
  %l = getelementptr inbounds %struct.III_scalefac_t, ptr %arrayidx113, i32 0, i32 0
  %84 = load i32, ptr %sfb, align 4
  %idxprom114 = sext i32 %84 to i64
  %arrayidx115 = getelementptr inbounds [22 x i32], ptr %l, i64 0, i64 %idxprom114
  %85 = load i32, ptr %arrayidx115, align 4
  %86 = load i32, ptr %slen1, align 4
  %call116 = call ptr @BF_addEntry(ptr noundef %80, i32 noundef %85, i32 noundef %86)
  %87 = load ptr, ptr %pph, align 8
  store ptr %call116, ptr %87, align 8
  br label %for.inc117

for.inc117:                                       ; preds = %for.body109
  %88 = load i32, ptr %sfb, align 4
  %inc118 = add nsw i32 %88, 1
  store i32 %inc118, ptr %sfb, align 4
  br label %for.cond107, !llvm.loop !35

for.end119:                                       ; preds = %for.cond107
  br label %if.end

if.end:                                           ; preds = %for.end119, %lor.lhs.false
  %89 = load i32, ptr %gr, align 4
  %cmp120 = icmp eq i32 %89, 0
  br i1 %cmp120, label %if.then127, label %lor.lhs.false121

lor.lhs.false121:                                 ; preds = %if.end
  %90 = load ptr, ptr %si.addr, align 8
  %scfsi122 = getelementptr inbounds %struct.III_side_info_t, ptr %90, i32 0, i32 3
  %91 = load i32, ptr %ch, align 4
  %idxprom123 = sext i32 %91 to i64
  %arrayidx124 = getelementptr inbounds [2 x [4 x i32]], ptr %scfsi122, i64 0, i64 %idxprom123
  %arrayidx125 = getelementptr inbounds [4 x i32], ptr %arrayidx124, i64 0, i64 1
  %92 = load i32, ptr %arrayidx125, align 4
  %cmp126 = icmp eq i32 %92, 0
  br i1 %cmp126, label %if.then127, label %if.end142

if.then127:                                       ; preds = %lor.lhs.false121, %if.end
  store i32 6, ptr %sfb, align 4
  br label %for.cond128

for.cond128:                                      ; preds = %for.inc139, %if.then127
  %93 = load i32, ptr %sfb, align 4
  %cmp129 = icmp slt i32 %93, 11
  br i1 %cmp129, label %for.body130, label %for.end141

for.body130:                                      ; preds = %for.cond128
  %94 = load ptr, ptr %pph, align 8
  %95 = load ptr, ptr %94, align 8
  %96 = load ptr, ptr %scalefac.addr, align 8
  %97 = load i32, ptr %gr, align 4
  %idxprom131 = sext i32 %97 to i64
  %arrayidx132 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %96, i64 %idxprom131
  %98 = load i32, ptr %ch, align 4
  %idxprom133 = sext i32 %98 to i64
  %arrayidx134 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %arrayidx132, i64 0, i64 %idxprom133
  %l135 = getelementptr inbounds %struct.III_scalefac_t, ptr %arrayidx134, i32 0, i32 0
  %99 = load i32, ptr %sfb, align 4
  %idxprom136 = sext i32 %99 to i64
  %arrayidx137 = getelementptr inbounds [22 x i32], ptr %l135, i64 0, i64 %idxprom136
  %100 = load i32, ptr %arrayidx137, align 4
  %101 = load i32, ptr %slen1, align 4
  %call138 = call ptr @BF_addEntry(ptr noundef %95, i32 noundef %100, i32 noundef %101)
  %102 = load ptr, ptr %pph, align 8
  store ptr %call138, ptr %102, align 8
  br label %for.inc139

for.inc139:                                       ; preds = %for.body130
  %103 = load i32, ptr %sfb, align 4
  %inc140 = add nsw i32 %103, 1
  store i32 %inc140, ptr %sfb, align 4
  br label %for.cond128, !llvm.loop !36

for.end141:                                       ; preds = %for.cond128
  br label %if.end142

if.end142:                                        ; preds = %for.end141, %lor.lhs.false121
  %104 = load i32, ptr %gr, align 4
  %cmp143 = icmp eq i32 %104, 0
  br i1 %cmp143, label %if.then150, label %lor.lhs.false144

lor.lhs.false144:                                 ; preds = %if.end142
  %105 = load ptr, ptr %si.addr, align 8
  %scfsi145 = getelementptr inbounds %struct.III_side_info_t, ptr %105, i32 0, i32 3
  %106 = load i32, ptr %ch, align 4
  %idxprom146 = sext i32 %106 to i64
  %arrayidx147 = getelementptr inbounds [2 x [4 x i32]], ptr %scfsi145, i64 0, i64 %idxprom146
  %arrayidx148 = getelementptr inbounds [4 x i32], ptr %arrayidx147, i64 0, i64 2
  %107 = load i32, ptr %arrayidx148, align 4
  %cmp149 = icmp eq i32 %107, 0
  br i1 %cmp149, label %if.then150, label %if.end165

if.then150:                                       ; preds = %lor.lhs.false144, %if.end142
  store i32 11, ptr %sfb, align 4
  br label %for.cond151

for.cond151:                                      ; preds = %for.inc162, %if.then150
  %108 = load i32, ptr %sfb, align 4
  %cmp152 = icmp slt i32 %108, 16
  br i1 %cmp152, label %for.body153, label %for.end164

for.body153:                                      ; preds = %for.cond151
  %109 = load ptr, ptr %pph, align 8
  %110 = load ptr, ptr %109, align 8
  %111 = load ptr, ptr %scalefac.addr, align 8
  %112 = load i32, ptr %gr, align 4
  %idxprom154 = sext i32 %112 to i64
  %arrayidx155 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %111, i64 %idxprom154
  %113 = load i32, ptr %ch, align 4
  %idxprom156 = sext i32 %113 to i64
  %arrayidx157 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %arrayidx155, i64 0, i64 %idxprom156
  %l158 = getelementptr inbounds %struct.III_scalefac_t, ptr %arrayidx157, i32 0, i32 0
  %114 = load i32, ptr %sfb, align 4
  %idxprom159 = sext i32 %114 to i64
  %arrayidx160 = getelementptr inbounds [22 x i32], ptr %l158, i64 0, i64 %idxprom159
  %115 = load i32, ptr %arrayidx160, align 4
  %116 = load i32, ptr %slen2, align 4
  %call161 = call ptr @BF_addEntry(ptr noundef %110, i32 noundef %115, i32 noundef %116)
  %117 = load ptr, ptr %pph, align 8
  store ptr %call161, ptr %117, align 8
  br label %for.inc162

for.inc162:                                       ; preds = %for.body153
  %118 = load i32, ptr %sfb, align 4
  %inc163 = add nsw i32 %118, 1
  store i32 %inc163, ptr %sfb, align 4
  br label %for.cond151, !llvm.loop !37

for.end164:                                       ; preds = %for.cond151
  br label %if.end165

if.end165:                                        ; preds = %for.end164, %lor.lhs.false144
  %119 = load i32, ptr %gr, align 4
  %cmp166 = icmp eq i32 %119, 0
  br i1 %cmp166, label %if.then173, label %lor.lhs.false167

lor.lhs.false167:                                 ; preds = %if.end165
  %120 = load ptr, ptr %si.addr, align 8
  %scfsi168 = getelementptr inbounds %struct.III_side_info_t, ptr %120, i32 0, i32 3
  %121 = load i32, ptr %ch, align 4
  %idxprom169 = sext i32 %121 to i64
  %arrayidx170 = getelementptr inbounds [2 x [4 x i32]], ptr %scfsi168, i64 0, i64 %idxprom169
  %arrayidx171 = getelementptr inbounds [4 x i32], ptr %arrayidx170, i64 0, i64 3
  %122 = load i32, ptr %arrayidx171, align 4
  %cmp172 = icmp eq i32 %122, 0
  br i1 %cmp172, label %if.then173, label %if.end188

if.then173:                                       ; preds = %lor.lhs.false167, %if.end165
  store i32 16, ptr %sfb, align 4
  br label %for.cond174

for.cond174:                                      ; preds = %for.inc185, %if.then173
  %123 = load i32, ptr %sfb, align 4
  %cmp175 = icmp slt i32 %123, 21
  br i1 %cmp175, label %for.body176, label %for.end187

for.body176:                                      ; preds = %for.cond174
  %124 = load ptr, ptr %pph, align 8
  %125 = load ptr, ptr %124, align 8
  %126 = load ptr, ptr %scalefac.addr, align 8
  %127 = load i32, ptr %gr, align 4
  %idxprom177 = sext i32 %127 to i64
  %arrayidx178 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %126, i64 %idxprom177
  %128 = load i32, ptr %ch, align 4
  %idxprom179 = sext i32 %128 to i64
  %arrayidx180 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %arrayidx178, i64 0, i64 %idxprom179
  %l181 = getelementptr inbounds %struct.III_scalefac_t, ptr %arrayidx180, i32 0, i32 0
  %129 = load i32, ptr %sfb, align 4
  %idxprom182 = sext i32 %129 to i64
  %arrayidx183 = getelementptr inbounds [22 x i32], ptr %l181, i64 0, i64 %idxprom182
  %130 = load i32, ptr %arrayidx183, align 4
  %131 = load i32, ptr %slen2, align 4
  %call184 = call ptr @BF_addEntry(ptr noundef %125, i32 noundef %130, i32 noundef %131)
  %132 = load ptr, ptr %pph, align 8
  store ptr %call184, ptr %132, align 8
  br label %for.inc185

for.inc185:                                       ; preds = %for.body176
  %133 = load i32, ptr %sfb, align 4
  %inc186 = add nsw i32 %133, 1
  store i32 %inc186, ptr %sfb, align 4
  br label %for.cond174, !llvm.loop !38

for.end187:                                       ; preds = %for.cond174
  br label %if.end188

if.end188:                                        ; preds = %for.end187, %lor.lhs.false167
  br label %if.end189

if.end189:                                        ; preds = %if.end188, %for.end100
  %134 = load i32, ptr %gr, align 4
  %idxprom190 = sext i32 %134 to i64
  %arrayidx191 = getelementptr inbounds [2 x [2 x ptr]], ptr @codedDataPH, i64 0, i64 %idxprom190
  %135 = load i32, ptr %ch, align 4
  %idxprom192 = sext i32 %135 to i64
  %arrayidx193 = getelementptr inbounds [2 x ptr], ptr %arrayidx191, i64 0, i64 %idxprom192
  %136 = load ptr, ptr %ix, align 8
  %137 = load ptr, ptr %gi, align 8
  call void @Huffmancodebits(ptr noundef %arrayidx193, ptr noundef %136, ptr noundef %137)
  br label %for.inc194

for.inc194:                                       ; preds = %if.end189
  %138 = load i32, ptr %ch, align 4
  %inc195 = add nsw i32 %138, 1
  store i32 %inc195, ptr %ch, align 4
  br label %for.cond33, !llvm.loop !39

for.end196:                                       ; preds = %for.cond33
  br label %for.inc197

for.inc197:                                       ; preds = %for.end196
  %139 = load i32, ptr %gr, align 4
  %inc198 = add nsw i32 %139, 1
  store i32 %inc198, ptr %gr, align 4
  br label %for.cond30, !llvm.loop !40

for.end199:                                       ; preds = %for.cond30
  br label %if.end307

if.else200:                                       ; preds = %for.end28
  store i32 0, ptr %gr, align 4
  store i32 0, ptr %ch, align 4
  br label %for.cond201

for.cond201:                                      ; preds = %for.inc304, %if.else200
  %140 = load i32, ptr %ch, align 4
  %141 = load ptr, ptr %gfp.addr, align 8
  %stereo202 = getelementptr inbounds %struct.lame_global_flags, ptr %141, i32 0, i32 46
  %142 = load i32, ptr %stereo202, align 4
  %cmp203 = icmp slt i32 %140, %142
  br i1 %cmp203, label %for.body204, label %for.end306

for.body204:                                      ; preds = %for.cond201
  %143 = load i32, ptr %gr, align 4
  %idxprom206 = sext i32 %143 to i64
  %arrayidx207 = getelementptr inbounds [2 x [2 x ptr]], ptr @scaleFactorsPH, i64 0, i64 %idxprom206
  %144 = load i32, ptr %ch, align 4
  %idxprom208 = sext i32 %144 to i64
  %arrayidx209 = getelementptr inbounds [2 x ptr], ptr %arrayidx207, i64 0, i64 %idxprom208
  store ptr %arrayidx209, ptr %pph205, align 8
  %145 = load ptr, ptr %si.addr, align 8
  %gr211 = getelementptr inbounds %struct.III_side_info_t, ptr %145, i32 0, i32 4
  %146 = load i32, ptr %gr, align 4
  %idxprom212 = sext i32 %146 to i64
  %arrayidx213 = getelementptr inbounds [2 x %struct.anon], ptr %gr211, i64 0, i64 %idxprom212
  %ch214 = getelementptr inbounds %struct.anon, ptr %arrayidx213, i32 0, i32 0
  %147 = load i32, ptr %ch, align 4
  %idxprom215 = sext i32 %147 to i64
  %arrayidx216 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %ch214, i64 0, i64 %idxprom215
  %tt217 = getelementptr inbounds %struct.gr_info_ss, ptr %arrayidx216, i32 0, i32 0
  store ptr %tt217, ptr %gi210, align 8
  %148 = load ptr, ptr %l3_enc.addr, align 8
  %149 = load i32, ptr %gr, align 4
  %idxprom219 = sext i32 %149 to i64
  %arrayidx220 = getelementptr inbounds [2 x [576 x i32]], ptr %148, i64 %idxprom219
  %150 = load i32, ptr %ch, align 4
  %idxprom221 = sext i32 %150 to i64
  %arrayidx222 = getelementptr inbounds [2 x [576 x i32]], ptr %arrayidx220, i64 0, i64 %idxprom221
  %arrayidx223 = getelementptr inbounds [576 x i32], ptr %arrayidx222, i64 0, i64 0
  store ptr %arrayidx223, ptr %ix218, align 8
  %151 = load ptr, ptr %gi210, align 8
  %sfb_partition_table = getelementptr inbounds %struct.gr_info, ptr %151, i32 0, i32 19
  %152 = load ptr, ptr %sfb_partition_table, align 8
  %tobool = icmp ne ptr %152, null
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool224 = icmp ne i64 %conv, 0
  br i1 %tobool224, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body204
  call void @__assert_rtn(ptr noundef @__func__.encodeMainData, ptr noundef @.str, i32 noundef 236, ptr noundef @.str.7) #5
  unreachable

153:                                              ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %for.body204
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %153
  %154 = load ptr, ptr %gi210, align 8
  %block_type225 = getelementptr inbounds %struct.gr_info, ptr %154, i32 0, i32 6
  %155 = load i32, ptr %block_type225, align 8
  %cmp226 = icmp eq i32 %155, 2
  br i1 %cmp226, label %if.then228, label %if.else267

if.then228:                                       ; preds = %cond.end
  store i32 0, ptr %sfb, align 4
  store i32 0, ptr %sfb_partition, align 4
  br label %for.cond229

for.cond229:                                      ; preds = %for.inc264, %if.then228
  %156 = load i32, ptr %sfb_partition, align 4
  %cmp230 = icmp slt i32 %156, 4
  br i1 %cmp230, label %for.body232, label %for.end266

for.body232:                                      ; preds = %for.cond229
  %157 = load ptr, ptr %gi210, align 8
  %sfb_partition_table233 = getelementptr inbounds %struct.gr_info, ptr %157, i32 0, i32 19
  %158 = load ptr, ptr %sfb_partition_table233, align 8
  %159 = load i32, ptr %sfb_partition, align 4
  %idxprom234 = sext i32 %159 to i64
  %arrayidx235 = getelementptr inbounds i32, ptr %158, i64 %idxprom234
  %160 = load i32, ptr %arrayidx235, align 4
  %div = udiv i32 %160, 3
  store i32 %div, ptr %sfbs, align 4
  %161 = load ptr, ptr %gi210, align 8
  %slen236 = getelementptr inbounds %struct.gr_info, ptr %161, i32 0, i32 20
  %162 = load i32, ptr %sfb_partition, align 4
  %idxprom237 = sext i32 %162 to i64
  %arrayidx238 = getelementptr inbounds [4 x i32], ptr %slen236, i64 0, i64 %idxprom237
  %163 = load i32, ptr %arrayidx238, align 4
  store i32 %163, ptr %slen, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond239

for.cond239:                                      ; preds = %for.inc260, %for.body232
  %164 = load i32, ptr %i, align 4
  %165 = load i32, ptr %sfbs, align 4
  %cmp240 = icmp slt i32 %164, %165
  br i1 %cmp240, label %for.body242, label %for.end263

for.body242:                                      ; preds = %for.cond239
  store i32 0, ptr %window, align 4
  br label %for.cond243

for.cond243:                                      ; preds = %for.inc257, %for.body242
  %166 = load i32, ptr %window, align 4
  %cmp244 = icmp slt i32 %166, 3
  br i1 %cmp244, label %for.body246, label %for.end259

for.body246:                                      ; preds = %for.cond243
  %167 = load ptr, ptr %pph205, align 8
  %168 = load ptr, ptr %167, align 8
  %169 = load ptr, ptr %scalefac.addr, align 8
  %170 = load i32, ptr %gr, align 4
  %idxprom247 = sext i32 %170 to i64
  %arrayidx248 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %169, i64 %idxprom247
  %171 = load i32, ptr %ch, align 4
  %idxprom249 = sext i32 %171 to i64
  %arrayidx250 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %arrayidx248, i64 0, i64 %idxprom249
  %s251 = getelementptr inbounds %struct.III_scalefac_t, ptr %arrayidx250, i32 0, i32 1
  %172 = load i32, ptr %sfb, align 4
  %idxprom252 = sext i32 %172 to i64
  %arrayidx253 = getelementptr inbounds [13 x [3 x i32]], ptr %s251, i64 0, i64 %idxprom252
  %173 = load i32, ptr %window, align 4
  %idxprom254 = sext i32 %173 to i64
  %arrayidx255 = getelementptr inbounds [3 x i32], ptr %arrayidx253, i64 0, i64 %idxprom254
  %174 = load i32, ptr %arrayidx255, align 4
  %175 = load i32, ptr %slen, align 4
  %call256 = call ptr @BF_addEntry(ptr noundef %168, i32 noundef %174, i32 noundef %175)
  %176 = load ptr, ptr %pph205, align 8
  store ptr %call256, ptr %176, align 8
  br label %for.inc257

for.inc257:                                       ; preds = %for.body246
  %177 = load i32, ptr %window, align 4
  %inc258 = add nsw i32 %177, 1
  store i32 %inc258, ptr %window, align 4
  br label %for.cond243, !llvm.loop !41

for.end259:                                       ; preds = %for.cond243
  br label %for.inc260

for.inc260:                                       ; preds = %for.end259
  %178 = load i32, ptr %i, align 4
  %inc261 = add nsw i32 %178, 1
  store i32 %inc261, ptr %i, align 4
  %179 = load i32, ptr %sfb, align 4
  %inc262 = add nsw i32 %179, 1
  store i32 %inc262, ptr %sfb, align 4
  br label %for.cond239, !llvm.loop !42

for.end263:                                       ; preds = %for.cond239
  br label %for.inc264

for.inc264:                                       ; preds = %for.end263
  %180 = load i32, ptr %sfb_partition, align 4
  %inc265 = add nsw i32 %180, 1
  store i32 %inc265, ptr %sfb_partition, align 4
  br label %for.cond229, !llvm.loop !43

for.end266:                                       ; preds = %for.cond229
  br label %if.end299

if.else267:                                       ; preds = %cond.end
  store i32 0, ptr %sfb, align 4
  store i32 0, ptr %sfb_partition, align 4
  br label %for.cond268

for.cond268:                                      ; preds = %for.inc296, %if.else267
  %181 = load i32, ptr %sfb_partition, align 4
  %cmp269 = icmp slt i32 %181, 4
  br i1 %cmp269, label %for.body271, label %for.end298

for.body271:                                      ; preds = %for.cond268
  %182 = load ptr, ptr %gi210, align 8
  %sfb_partition_table273 = getelementptr inbounds %struct.gr_info, ptr %182, i32 0, i32 19
  %183 = load ptr, ptr %sfb_partition_table273, align 8
  %184 = load i32, ptr %sfb_partition, align 4
  %idxprom274 = sext i32 %184 to i64
  %arrayidx275 = getelementptr inbounds i32, ptr %183, i64 %idxprom274
  %185 = load i32, ptr %arrayidx275, align 4
  store i32 %185, ptr %sfbs272, align 4
  %186 = load ptr, ptr %gi210, align 8
  %slen277 = getelementptr inbounds %struct.gr_info, ptr %186, i32 0, i32 20
  %187 = load i32, ptr %sfb_partition, align 4
  %idxprom278 = sext i32 %187 to i64
  %arrayidx279 = getelementptr inbounds [4 x i32], ptr %slen277, i64 0, i64 %idxprom278
  %188 = load i32, ptr %arrayidx279, align 4
  store i32 %188, ptr %slen276, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond280

for.cond280:                                      ; preds = %for.inc292, %for.body271
  %189 = load i32, ptr %i, align 4
  %190 = load i32, ptr %sfbs272, align 4
  %cmp281 = icmp slt i32 %189, %190
  br i1 %cmp281, label %for.body283, label %for.end295

for.body283:                                      ; preds = %for.cond280
  %191 = load ptr, ptr %pph205, align 8
  %192 = load ptr, ptr %191, align 8
  %193 = load ptr, ptr %scalefac.addr, align 8
  %194 = load i32, ptr %gr, align 4
  %idxprom284 = sext i32 %194 to i64
  %arrayidx285 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %193, i64 %idxprom284
  %195 = load i32, ptr %ch, align 4
  %idxprom286 = sext i32 %195 to i64
  %arrayidx287 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %arrayidx285, i64 0, i64 %idxprom286
  %l288 = getelementptr inbounds %struct.III_scalefac_t, ptr %arrayidx287, i32 0, i32 0
  %196 = load i32, ptr %sfb, align 4
  %idxprom289 = sext i32 %196 to i64
  %arrayidx290 = getelementptr inbounds [22 x i32], ptr %l288, i64 0, i64 %idxprom289
  %197 = load i32, ptr %arrayidx290, align 4
  %198 = load i32, ptr %slen276, align 4
  %call291 = call ptr @BF_addEntry(ptr noundef %192, i32 noundef %197, i32 noundef %198)
  %199 = load ptr, ptr %pph205, align 8
  store ptr %call291, ptr %199, align 8
  br label %for.inc292

for.inc292:                                       ; preds = %for.body283
  %200 = load i32, ptr %i, align 4
  %inc293 = add nsw i32 %200, 1
  store i32 %inc293, ptr %i, align 4
  %201 = load i32, ptr %sfb, align 4
  %inc294 = add nsw i32 %201, 1
  store i32 %inc294, ptr %sfb, align 4
  br label %for.cond280, !llvm.loop !44

for.end295:                                       ; preds = %for.cond280
  br label %for.inc296

for.inc296:                                       ; preds = %for.end295
  %202 = load i32, ptr %sfb_partition, align 4
  %inc297 = add nsw i32 %202, 1
  store i32 %inc297, ptr %sfb_partition, align 4
  br label %for.cond268, !llvm.loop !45

for.end298:                                       ; preds = %for.cond268
  br label %if.end299

if.end299:                                        ; preds = %for.end298, %for.end266
  %203 = load i32, ptr %gr, align 4
  %idxprom300 = sext i32 %203 to i64
  %arrayidx301 = getelementptr inbounds [2 x [2 x ptr]], ptr @codedDataPH, i64 0, i64 %idxprom300
  %204 = load i32, ptr %ch, align 4
  %idxprom302 = sext i32 %204 to i64
  %arrayidx303 = getelementptr inbounds [2 x ptr], ptr %arrayidx301, i64 0, i64 %idxprom302
  %205 = load ptr, ptr %ix218, align 8
  %206 = load ptr, ptr %gi210, align 8
  call void @Huffmancodebits(ptr noundef %arrayidx303, ptr noundef %205, ptr noundef %206)
  br label %for.inc304

for.inc304:                                       ; preds = %if.end299
  %207 = load i32, ptr %ch, align 4
  %inc305 = add nsw i32 %207, 1
  store i32 %inc305, ptr %ch, align 4
  br label %for.cond201, !llvm.loop !46

for.end306:                                       ; preds = %for.cond201
  br label %if.end307

if.end307:                                        ; preds = %for.end306, %for.end199
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @drain_into_ancillary_data(i32 noundef %lengthInBits) #0 {
entry:
  %lengthInBits.addr = alloca i32, align 4
  %wordsToSend = alloca i32, align 4
  %remainingBits = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %lengthInBits, ptr %lengthInBits.addr, align 4
  %0 = load i32, ptr %lengthInBits.addr, align 4
  %div = sdiv i32 %0, 32
  store i32 %div, ptr %wordsToSend, align 4
  %1 = load i32, ptr %lengthInBits.addr, align 4
  %rem = srem i32 %1, 32
  store i32 %rem, ptr %remainingBits, align 4
  %2 = load ptr, ptr @userFrameDataPH, align 8
  %part = getelementptr inbounds %struct.BF_PartHolder, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %part, align 8
  %nrEntries = getelementptr inbounds %struct.BF_BitstreamPart, ptr %3, i32 0, i32 0
  store i32 0, ptr %nrEntries, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4
  %5 = load i32, ptr %wordsToSend, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr @userFrameDataPH, align 8
  %call = call ptr @BF_addEntry(ptr noundef %6, i32 noundef 0, i32 noundef 32)
  store ptr %call, ptr @userFrameDataPH, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !47

for.end:                                          ; preds = %for.cond
  %8 = load i32, ptr %remainingBits, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %9 = load ptr, ptr @userFrameDataPH, align 8
  %10 = load i32, ptr %remainingBits, align 4
  %call1 = call ptr @BF_addEntry(ptr noundef %9, i32 noundef 0, i32 noundef %10)
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
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @frameData, align 8
  %2 = load ptr, ptr @frameResults, align 8
  call void @BF_FlushBitstream(ptr noundef %1, ptr noundef %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @BF_FlushBitstream(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define i32 @abs_and_sign(ptr noundef %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  %0 = load ptr, ptr %x.addr, align 8
  %1 = load i32, ptr %0, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %x.addr, align 8
  %3 = load i32, ptr %2, align 4
  %mul = mul nsw i32 %3, -1
  store i32 %mul, ptr %2, align 4
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
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
  %call = call i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_l3bitstream_0(ptr noundef %v.addr)
  store i32 %call, ptr %signv, align 4
  %call1 = call i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_l3bitstream_1(ptr noundef %w.addr)
  store i32 %call1, ptr %signw, align 4
  %call2 = call i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_l3bitstream_2(ptr noundef %x.addr)
  store i32 %call2, ptr %signx, align 4
  %call3 = call i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_l3bitstream_3(ptr noundef %y.addr)
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
  %table = getelementptr inbounds %struct.huffcodetab, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %table, align 8
  %6 = load i32, ptr %p, align 4
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds i64, ptr %5, i64 %idxprom
  %7 = load i64, ptr %arrayidx, align 8
  store i64 %7, ptr %huffbits, align 8
  %8 = load ptr, ptr %h.addr, align 8
  %hlen = getelementptr inbounds %struct.huffcodetab, ptr %8, i32 0, i32 3
  %9 = load ptr, ptr %hlen, align 8
  %10 = load i32, ptr %p, align 4
  %idxprom8 = zext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds i8, ptr %9, i64 %idxprom8
  %11 = load i8, ptr %arrayidx9, align 1
  %conv = zext i8 %11 to i32
  store i32 %conv, ptr %len, align 4
  %12 = load ptr, ptr %pph.addr, align 8
  %13 = load ptr, ptr %12, align 8
  %14 = load i64, ptr %huffbits, align 8
  %conv10 = trunc i64 %14 to i32
  %15 = load i32, ptr %len, align 4
  %call11 = call ptr @BF_addEntry(ptr noundef %13, i32 noundef %conv10, i32 noundef %15)
  %16 = load ptr, ptr %pph.addr, align 8
  store ptr %call11, ptr %16, align 8
  store i32 0, ptr %totalBits, align 4
  store i32 0, ptr %p, align 4
  %17 = load i32, ptr %v.addr, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %18 = load i32, ptr %signv, align 4
  store i32 %18, ptr %p, align 4
  %19 = load i32, ptr %totalBits, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %totalBits, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %20 = load i32, ptr %w.addr, align 4
  %tobool12 = icmp ne i32 %20, 0
  br i1 %tobool12, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end
  %21 = load i32, ptr %p, align 4
  %mul = mul i32 2, %21
  %22 = load i32, ptr %signw, align 4
  %add14 = add i32 %mul, %22
  store i32 %add14, ptr %p, align 4
  %23 = load i32, ptr %totalBits, align 4
  %inc15 = add nsw i32 %23, 1
  store i32 %inc15, ptr %totalBits, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end
  %24 = load i32, ptr %x.addr, align 4
  %tobool17 = icmp ne i32 %24, 0
  br i1 %tobool17, label %if.then18, label %if.end22

if.then18:                                        ; preds = %if.end16
  %25 = load i32, ptr %p, align 4
  %mul19 = mul i32 2, %25
  %26 = load i32, ptr %signx, align 4
  %add20 = add i32 %mul19, %26
  store i32 %add20, ptr %p, align 4
  %27 = load i32, ptr %totalBits, align 4
  %inc21 = add nsw i32 %27, 1
  store i32 %inc21, ptr %totalBits, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.end16
  %28 = load i32, ptr %y.addr, align 4
  %tobool23 = icmp ne i32 %28, 0
  br i1 %tobool23, label %if.then24, label %if.end28

if.then24:                                        ; preds = %if.end22
  %29 = load i32, ptr %p, align 4
  %mul25 = mul i32 2, %29
  %30 = load i32, ptr %signy, align 4
  %add26 = add i32 %mul25, %30
  store i32 %add26, ptr %p, align 4
  %31 = load i32, ptr %totalBits, align 4
  %inc27 = add nsw i32 %31, 1
  store i32 %inc27, ptr %totalBits, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %if.end22
  %32 = load ptr, ptr %pph.addr, align 8
  %33 = load ptr, ptr %32, align 8
  %34 = load i32, ptr %p, align 4
  %35 = load i32, ptr %totalBits, align 4
  %call29 = call ptr @BF_addEntry(ptr noundef %33, i32 noundef %34, i32 noundef %35)
  %36 = load ptr, ptr %pph.addr, align 8
  store ptr %call29, ptr %36, align 8
  %37 = load i32, ptr %totalBits, align 4
  %38 = load i32, ptr %len, align 4
  %add30 = add nsw i32 %37, %38
  ret i32 %add30
}

declare ptr @BF_addEntry(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define i32 @HuffmanCode(i32 noundef %table_select, i32 noundef %x, i32 noundef %y, ptr noundef %code, ptr noundef %ext, ptr noundef %cbits, ptr noundef %xbits) #0 {
entry:
  %retval = alloca i32, align 4
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
  %0 = load ptr, ptr %cbits.addr, align 8
  store i32 0, ptr %0, align 4
  %1 = load ptr, ptr %xbits.addr, align 8
  store i32 0, ptr %1, align 4
  %2 = load ptr, ptr %code.addr, align 8
  store i32 0, ptr %2, align 4
  %3 = load ptr, ptr %ext.addr, align 8
  store i32 0, ptr %3, align 4
  %4 = load i32, ptr %table_select.addr, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call = call i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_l3bitstream_4(ptr noundef %x.addr)
  store i32 %call, ptr %signx, align 4
  %call1 = call i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_l3bitstream_5(ptr noundef %y.addr)
  store i32 %call1, ptr %signy, align 4
  %5 = load i32, ptr %table_select.addr, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %h, align 8
  %6 = load i32, ptr %table_select.addr, align 4
  %cmp2 = icmp sgt i32 %6, 15
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %7 = load ptr, ptr %h, align 8
  %xlen = getelementptr inbounds %struct.huffcodetab, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %xlen, align 8
  store i32 %8, ptr %linbits, align 4
  store i32 0, ptr %linbitsy, align 4
  store i32 0, ptr %linbitsx, align 4
  %9 = load i32, ptr %x.addr, align 4
  %cmp4 = icmp sgt i32 %9, 14
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.then3
  %10 = load i32, ptr %x.addr, align 4
  %sub = sub nsw i32 %10, 15
  store i32 %sub, ptr %linbitsx, align 4
  %11 = load i32, ptr %linbitsx, align 4
  %12 = load ptr, ptr %h, align 8
  %linmax = getelementptr inbounds %struct.huffcodetab, ptr %12, i32 0, i32 1
  %13 = load i32, ptr %linmax, align 4
  %cmp6 = icmp ule i32 %11, %13
  %lnot = xor i1 %cmp6, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then5
  call void @__assert_rtn(ptr noundef @__func__.HuffmanCode, ptr noundef @.str, i32 noundef 797, ptr noundef @.str.3) #5
  unreachable

14:                                               ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %if.then5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %14
  store i32 15, ptr %x.addr, align 4
  br label %if.end7

if.end7:                                          ; preds = %cond.end, %if.then3
  %15 = load i32, ptr %y.addr, align 4
  %cmp8 = icmp sgt i32 %15, 14
  br i1 %cmp8, label %if.then10, label %if.end22

if.then10:                                        ; preds = %if.end7
  %16 = load i32, ptr %y.addr, align 4
  %sub11 = sub nsw i32 %16, 15
  store i32 %sub11, ptr %linbitsy, align 4
  %17 = load i32, ptr %linbitsy, align 4
  %18 = load ptr, ptr %h, align 8
  %linmax12 = getelementptr inbounds %struct.huffcodetab, ptr %18, i32 0, i32 1
  %19 = load i32, ptr %linmax12, align 4
  %cmp13 = icmp ule i32 %17, %19
  %lnot15 = xor i1 %cmp13, true
  %lnot.ext16 = zext i1 %lnot15 to i32
  %conv17 = sext i32 %lnot.ext16 to i64
  %tobool18 = icmp ne i64 %conv17, 0
  br i1 %tobool18, label %cond.true19, label %cond.false20

cond.true19:                                      ; preds = %if.then10
  call void @__assert_rtn(ptr noundef @__func__.HuffmanCode, ptr noundef @.str, i32 noundef 803, ptr noundef @.str.4) #5
  unreachable

20:                                               ; No predecessors!
  br label %cond.end21

cond.false20:                                     ; preds = %if.then10
  br label %cond.end21

cond.end21:                                       ; preds = %cond.false20, %20
  store i32 15, ptr %y.addr, align 4
  br label %if.end22

if.end22:                                         ; preds = %cond.end21, %if.end7
  %21 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %21, 16
  %22 = load i32, ptr %y.addr, align 4
  %add = add nsw i32 %mul, %22
  store i32 %add, ptr %idx, align 4
  %23 = load ptr, ptr %h, align 8
  %table = getelementptr inbounds %struct.huffcodetab, ptr %23, i32 0, i32 2
  %24 = load ptr, ptr %table, align 8
  %25 = load i32, ptr %idx, align 4
  %idxprom23 = zext i32 %25 to i64
  %arrayidx24 = getelementptr inbounds i64, ptr %24, i64 %idxprom23
  %26 = load i64, ptr %arrayidx24, align 8
  %conv25 = trunc i64 %26 to i32
  %27 = load ptr, ptr %code.addr, align 8
  store i32 %conv25, ptr %27, align 4
  %28 = load ptr, ptr %h, align 8
  %hlen = getelementptr inbounds %struct.huffcodetab, ptr %28, i32 0, i32 3
  %29 = load ptr, ptr %hlen, align 8
  %30 = load i32, ptr %idx, align 4
  %idxprom26 = zext i32 %30 to i64
  %arrayidx27 = getelementptr inbounds i8, ptr %29, i64 %idxprom26
  %31 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %31 to i32
  %32 = load ptr, ptr %cbits.addr, align 8
  store i32 %conv28, ptr %32, align 4
  %33 = load i32, ptr %x.addr, align 4
  %cmp29 = icmp sgt i32 %33, 14
  br i1 %cmp29, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end22
  %34 = load i32, ptr %linbitsx, align 4
  %35 = load ptr, ptr %ext.addr, align 8
  %36 = load i32, ptr %35, align 4
  %or = or i32 %36, %34
  store i32 %or, ptr %35, align 4
  %37 = load i32, ptr %linbits, align 4
  %38 = load ptr, ptr %xbits.addr, align 8
  %39 = load i32, ptr %38, align 4
  %add32 = add i32 %39, %37
  store i32 %add32, ptr %38, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end22
  %40 = load i32, ptr %x.addr, align 4
  %cmp34 = icmp ne i32 %40, 0
  br i1 %cmp34, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.end33
  %41 = load ptr, ptr %ext.addr, align 8
  %42 = load i32, ptr %41, align 4
  %shl = shl i32 %42, 1
  store i32 %shl, ptr %41, align 4
  %43 = load i32, ptr %signx, align 4
  %44 = load ptr, ptr %ext.addr, align 8
  %45 = load i32, ptr %44, align 4
  %or37 = or i32 %45, %43
  store i32 %or37, ptr %44, align 4
  %46 = load ptr, ptr %xbits.addr, align 8
  %47 = load i32, ptr %46, align 4
  %add38 = add nsw i32 %47, 1
  store i32 %add38, ptr %46, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end33
  %48 = load i32, ptr %y.addr, align 4
  %cmp40 = icmp sgt i32 %48, 14
  br i1 %cmp40, label %if.then42, label %if.end46

if.then42:                                        ; preds = %if.end39
  %49 = load i32, ptr %linbits, align 4
  %50 = load ptr, ptr %ext.addr, align 8
  %51 = load i32, ptr %50, align 4
  %shl43 = shl i32 %51, %49
  store i32 %shl43, ptr %50, align 4
  %52 = load i32, ptr %linbitsy, align 4
  %53 = load ptr, ptr %ext.addr, align 8
  %54 = load i32, ptr %53, align 4
  %or44 = or i32 %54, %52
  store i32 %or44, ptr %53, align 4
  %55 = load i32, ptr %linbits, align 4
  %56 = load ptr, ptr %xbits.addr, align 8
  %57 = load i32, ptr %56, align 4
  %add45 = add i32 %57, %55
  store i32 %add45, ptr %56, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %if.end39
  %58 = load i32, ptr %y.addr, align 4
  %cmp47 = icmp ne i32 %58, 0
  br i1 %cmp47, label %if.then49, label %if.end53

if.then49:                                        ; preds = %if.end46
  %59 = load ptr, ptr %ext.addr, align 8
  %60 = load i32, ptr %59, align 4
  %shl50 = shl i32 %60, 1
  store i32 %shl50, ptr %59, align 4
  %61 = load i32, ptr %signy, align 4
  %62 = load ptr, ptr %ext.addr, align 8
  %63 = load i32, ptr %62, align 4
  %or51 = or i32 %63, %61
  store i32 %or51, ptr %62, align 4
  %64 = load ptr, ptr %xbits.addr, align 8
  %65 = load i32, ptr %64, align 4
  %add52 = add nsw i32 %65, 1
  store i32 %add52, ptr %64, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then49, %if.end46
  br label %if.end79

if.else:                                          ; preds = %if.end
  %66 = load i32, ptr %x.addr, align 4
  %mul54 = mul nsw i32 %66, 16
  %67 = load i32, ptr %y.addr, align 4
  %add55 = add nsw i32 %mul54, %67
  store i32 %add55, ptr %idx, align 4
  %68 = load ptr, ptr %h, align 8
  %table56 = getelementptr inbounds %struct.huffcodetab, ptr %68, i32 0, i32 2
  %69 = load ptr, ptr %table56, align 8
  %70 = load i32, ptr %idx, align 4
  %idxprom57 = zext i32 %70 to i64
  %arrayidx58 = getelementptr inbounds i64, ptr %69, i64 %idxprom57
  %71 = load i64, ptr %arrayidx58, align 8
  %conv59 = trunc i64 %71 to i32
  %72 = load ptr, ptr %code.addr, align 8
  store i32 %conv59, ptr %72, align 4
  %73 = load ptr, ptr %h, align 8
  %hlen60 = getelementptr inbounds %struct.huffcodetab, ptr %73, i32 0, i32 3
  %74 = load ptr, ptr %hlen60, align 8
  %75 = load i32, ptr %idx, align 4
  %idxprom61 = zext i32 %75 to i64
  %arrayidx62 = getelementptr inbounds i8, ptr %74, i64 %idxprom61
  %76 = load i8, ptr %arrayidx62, align 1
  %conv63 = zext i8 %76 to i32
  %77 = load ptr, ptr %cbits.addr, align 8
  %78 = load i32, ptr %77, align 4
  %add64 = add nsw i32 %78, %conv63
  store i32 %add64, ptr %77, align 4
  %79 = load i32, ptr %x.addr, align 4
  %cmp65 = icmp ne i32 %79, 0
  br i1 %cmp65, label %if.then67, label %if.end71

if.then67:                                        ; preds = %if.else
  %80 = load ptr, ptr %code.addr, align 8
  %81 = load i32, ptr %80, align 4
  %shl68 = shl i32 %81, 1
  store i32 %shl68, ptr %80, align 4
  %82 = load i32, ptr %signx, align 4
  %83 = load ptr, ptr %code.addr, align 8
  %84 = load i32, ptr %83, align 4
  %or69 = or i32 %84, %82
  store i32 %or69, ptr %83, align 4
  %85 = load ptr, ptr %cbits.addr, align 8
  %86 = load i32, ptr %85, align 4
  %add70 = add nsw i32 %86, 1
  store i32 %add70, ptr %85, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then67, %if.else
  %87 = load i32, ptr %y.addr, align 4
  %cmp72 = icmp ne i32 %87, 0
  br i1 %cmp72, label %if.then74, label %if.end78

if.then74:                                        ; preds = %if.end71
  %88 = load ptr, ptr %code.addr, align 8
  %89 = load i32, ptr %88, align 4
  %shl75 = shl i32 %89, 1
  store i32 %shl75, ptr %88, align 4
  %90 = load i32, ptr %signy, align 4
  %91 = load ptr, ptr %code.addr, align 8
  %92 = load i32, ptr %91, align 4
  %or76 = or i32 %92, %90
  store i32 %or76, ptr %91, align 4
  %93 = load ptr, ptr %cbits.addr, align 8
  %94 = load i32, ptr %93, align 4
  %add77 = add nsw i32 %94, 1
  store i32 %add77, ptr %93, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then74, %if.end71
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %if.end53
  %95 = load ptr, ptr %cbits.addr, align 8
  %96 = load i32, ptr %95, align 4
  %cmp80 = icmp sle i32 %96, 32
  %lnot82 = xor i1 %cmp80, true
  %lnot.ext83 = zext i1 %lnot82 to i32
  %conv84 = sext i32 %lnot.ext83 to i64
  %tobool85 = icmp ne i64 %conv84, 0
  br i1 %tobool85, label %cond.true86, label %cond.false87

cond.true86:                                      ; preds = %if.end79
  call void @__assert_rtn(ptr noundef @__func__.HuffmanCode, ptr noundef @.str, i32 noundef 851, ptr noundef @.str.5) #5
  unreachable

97:                                               ; No predecessors!
  br label %cond.end88

cond.false87:                                     ; preds = %if.end79
  br label %cond.end88

cond.end88:                                       ; preds = %cond.false87, %97
  %98 = load ptr, ptr %xbits.addr, align 8
  %99 = load i32, ptr %98, align 4
  %cmp89 = icmp sle i32 %99, 32
  %lnot91 = xor i1 %cmp89, true
  %lnot.ext92 = zext i1 %lnot91 to i32
  %conv93 = sext i32 %lnot.ext92 to i64
  %tobool94 = icmp ne i64 %conv93, 0
  br i1 %tobool94, label %cond.true95, label %cond.false96

cond.true95:                                      ; preds = %cond.end88
  call void @__assert_rtn(ptr noundef @__func__.HuffmanCode, ptr noundef @.str, i32 noundef 852, ptr noundef @.str.6) #5
  unreachable

100:                                              ; No predecessors!
  br label %cond.end97

cond.false96:                                     ; preds = %cond.end88
  br label %cond.end97

cond.end97:                                       ; preds = %cond.false96, %100
  %101 = load ptr, ptr %cbits.addr, align 8
  %102 = load i32, ptr %101, align 4
  %103 = load ptr, ptr %xbits.addr, align 8
  %104 = load i32, ptr %103, align 4
  %add98 = add nsw i32 %102, %104
  store i32 %add98, ptr %retval, align 4
  br label %return

return:                                           ; preds = %cond.end97, %if.then
  %105 = load i32, ptr %retval, align 4
  ret i32 %105
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
  %0 = load ptr, ptr %gi.addr, align 8
  %big_values = getelementptr inbounds %struct.gr_info, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %big_values, align 4
  %mul = mul i32 %1, 2
  store i32 %mul, ptr %bigvalues, align 4
  %2 = load i32, ptr %bigvalues, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end116

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %gi.addr, align 8
  %mixed_block_flag = getelementptr inbounds %struct.gr_info, ptr %3, i32 0, i32 7
  %4 = load i32, ptr %mixed_block_flag, align 4
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %if.else39, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %5 = load ptr, ptr %gi.addr, align 8
  %block_type = getelementptr inbounds %struct.gr_info, ptr %5, i32 0, i32 6
  %6 = load i32, ptr %block_type, align 8
  %cmp = icmp eq i32 %6, 2
  br i1 %cmp, label %if.then2, label %if.else39

if.then2:                                         ; preds = %land.lhs.true
  %7 = load ptr, ptr %ix.addr, align 8
  store ptr %7, ptr %ix_s, align 8
  store i32 12, ptr %region1Start, align 4
  store i32 576, ptr %region2Start, align 4
  store i32 0, ptr %sfb, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc36, %if.then2
  %8 = load i32, ptr %sfb, align 4
  %cmp3 = icmp slt i32 %8, 13
  br i1 %cmp3, label %for.body, label %for.end38

for.body:                                         ; preds = %for.cond
  store i32 100, ptr %tableindex, align 4
  %9 = load i32, ptr %sfb, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [14 x i32], ptr getelementptr inbounds (%struct.scalefac_struct, ptr @scalefac_band, i32 0, i32 1), i64 0, i64 %idxprom
  %10 = load i32, ptr %arrayidx, align 4
  store i32 %10, ptr %start, align 4
  %11 = load i32, ptr %sfb, align 4
  %add = add nsw i32 %11, 1
  %idxprom4 = sext i32 %add to i64
  %arrayidx5 = getelementptr inbounds [14 x i32], ptr getelementptr inbounds (%struct.scalefac_struct, ptr @scalefac_band, i32 0, i32 1), i64 0, i64 %idxprom4
  %12 = load i32, ptr %arrayidx5, align 4
  store i32 %12, ptr %end, align 4
  %13 = load i32, ptr %start, align 4
  %14 = load i32, ptr %region1Start, align 4
  %cmp6 = icmp slt i32 %13, %14
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %for.body
  %15 = load ptr, ptr %gi.addr, align 8
  %table_select = getelementptr inbounds %struct.gr_info, ptr %15, i32 0, i32 8
  %arrayidx8 = getelementptr inbounds [3 x i32], ptr %table_select, i64 0, i64 0
  %16 = load i32, ptr %arrayidx8, align 8
  store i32 %16, ptr %tableindex, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %17 = load ptr, ptr %gi.addr, align 8
  %table_select9 = getelementptr inbounds %struct.gr_info, ptr %17, i32 0, i32 8
  %arrayidx10 = getelementptr inbounds [3 x i32], ptr %table_select9, i64 0, i64 1
  %18 = load i32, ptr %arrayidx10, align 4
  store i32 %18, ptr %tableindex, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then7
  %19 = load i32, ptr %tableindex, align 4
  %cmp11 = icmp ult i32 %19, 32
  %lnot = xor i1 %cmp11, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool12 = icmp ne i64 %conv, 0
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  call void @__assert_rtn(ptr noundef @__func__.Huffmancodebits, ptr noundef @.str, i32 noundef 532, ptr noundef @.str.8) #5
  unreachable

20:                                               ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %20
  store i32 0, ptr %window, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc34, %cond.end
  %21 = load i32, ptr %window, align 4
  %cmp14 = icmp slt i32 %21, 3
  br i1 %cmp14, label %for.body16, label %for.end35

for.body16:                                       ; preds = %for.cond13
  %22 = load i32, ptr %start, align 4
  store i32 %22, ptr %line, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc, %for.body16
  %23 = load i32, ptr %line, align 4
  %24 = load i32, ptr %end, align 4
  %cmp18 = icmp slt i32 %23, %24
  br i1 %cmp18, label %for.body20, label %for.end

for.body20:                                       ; preds = %for.cond17
  %25 = load ptr, ptr %ix_s, align 8
  %26 = load i32, ptr %line, align 4
  %idxprom21 = sext i32 %26 to i64
  %arrayidx22 = getelementptr inbounds [192 x [3 x i32]], ptr %25, i64 0, i64 %idxprom21
  %27 = load i32, ptr %window, align 4
  %idxprom23 = sext i32 %27 to i64
  %arrayidx24 = getelementptr inbounds [3 x i32], ptr %arrayidx22, i64 0, i64 %idxprom23
  %28 = load i32, ptr %arrayidx24, align 4
  store i32 %28, ptr %x, align 4
  %29 = load ptr, ptr %ix_s, align 8
  %30 = load i32, ptr %line, align 4
  %add25 = add nsw i32 %30, 1
  %idxprom26 = sext i32 %add25 to i64
  %arrayidx27 = getelementptr inbounds [192 x [3 x i32]], ptr %29, i64 0, i64 %idxprom26
  %31 = load i32, ptr %window, align 4
  %idxprom28 = sext i32 %31 to i64
  %arrayidx29 = getelementptr inbounds [3 x i32], ptr %arrayidx27, i64 0, i64 %idxprom28
  %32 = load i32, ptr %arrayidx29, align 4
  store i32 %32, ptr %y, align 4
  %33 = load i32, ptr %tableindex, align 4
  %34 = load i32, ptr %x, align 4
  %35 = load i32, ptr %y, align 4
  %call = call i32 @HuffmanCode(i32 noundef %33, i32 noundef %34, i32 noundef %35, ptr noundef %code, ptr noundef %ext, ptr noundef %cbits, ptr noundef %xbits)
  store i32 %call, ptr %bits, align 4
  %36 = load ptr, ptr %pph.addr, align 8
  %37 = load ptr, ptr %36, align 8
  %38 = load i32, ptr %code, align 4
  %39 = load i32, ptr %cbits, align 4
  %call30 = call ptr @BF_addEntry(ptr noundef %37, i32 noundef %38, i32 noundef %39)
  %40 = load ptr, ptr %pph.addr, align 8
  store ptr %call30, ptr %40, align 8
  %41 = load ptr, ptr %pph.addr, align 8
  %42 = load ptr, ptr %41, align 8
  %43 = load i32, ptr %ext, align 4
  %44 = load i32, ptr %xbits, align 4
  %call31 = call ptr @BF_addEntry(ptr noundef %42, i32 noundef %43, i32 noundef %44)
  %45 = load ptr, ptr %pph.addr, align 8
  store ptr %call31, ptr %45, align 8
  %46 = load i32, ptr %bits, align 4
  %47 = load i32, ptr %bitsWritten, align 4
  %add32 = add nsw i32 %47, %46
  store i32 %add32, ptr %bitsWritten, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body20
  %48 = load i32, ptr %line, align 4
  %add33 = add nsw i32 %48, 2
  store i32 %add33, ptr %line, align 4
  br label %for.cond17, !llvm.loop !48

for.end:                                          ; preds = %for.cond17
  br label %for.inc34

for.inc34:                                        ; preds = %for.end
  %49 = load i32, ptr %window, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, ptr %window, align 4
  br label %for.cond13, !llvm.loop !49

for.end35:                                        ; preds = %for.cond13
  br label %for.inc36

for.inc36:                                        ; preds = %for.end35
  %50 = load i32, ptr %sfb, align 4
  %inc37 = add nsw i32 %50, 1
  store i32 %inc37, ptr %sfb, align 4
  br label %for.cond, !llvm.loop !50

for.end38:                                        ; preds = %for.cond
  br label %if.end115

if.else39:                                        ; preds = %land.lhs.true, %if.then
  store i32 100, ptr %scalefac_index, align 4
  %51 = load ptr, ptr %gi.addr, align 8
  %mixed_block_flag40 = getelementptr inbounds %struct.gr_info, ptr %51, i32 0, i32 7
  %52 = load i32, ptr %mixed_block_flag40, align 4
  %tobool41 = icmp ne i32 %52, 0
  br i1 %tobool41, label %if.then42, label %if.else43

if.then42:                                        ; preds = %if.else39
  store i32 36, ptr %region1Start, align 4
  store i32 576, ptr %region2Start, align 4
  br label %if.end69

if.else43:                                        ; preds = %if.else39
  %53 = load ptr, ptr %gi.addr, align 8
  %region0_count = getelementptr inbounds %struct.gr_info, ptr %53, i32 0, i32 10
  %54 = load i32, ptr %region0_count, align 8
  %add44 = add i32 %54, 1
  store i32 %add44, ptr %scalefac_index, align 4
  %55 = load i32, ptr %scalefac_index, align 4
  %cmp45 = icmp ult i32 %55, 23
  %lnot47 = xor i1 %cmp45, true
  %lnot.ext48 = zext i1 %lnot47 to i32
  %conv49 = sext i32 %lnot.ext48 to i64
  %tobool50 = icmp ne i64 %conv49, 0
  br i1 %tobool50, label %cond.true51, label %cond.false52

cond.true51:                                      ; preds = %if.else43
  call void @__assert_rtn(ptr noundef @__func__.Huffmancodebits, ptr noundef @.str, i32 noundef 605, ptr noundef @.str.9) #5
  unreachable

56:                                               ; No predecessors!
  br label %cond.end53

cond.false52:                                     ; preds = %if.else43
  br label %cond.end53

cond.end53:                                       ; preds = %cond.false52, %56
  %57 = load i32, ptr %scalefac_index, align 4
  %idxprom54 = zext i32 %57 to i64
  %arrayidx55 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %idxprom54
  %58 = load i32, ptr %arrayidx55, align 4
  store i32 %58, ptr %region1Start, align 4
  %59 = load ptr, ptr %gi.addr, align 8
  %region1_count = getelementptr inbounds %struct.gr_info, ptr %59, i32 0, i32 11
  %60 = load i32, ptr %region1_count, align 4
  %add56 = add i32 %60, 1
  %61 = load i32, ptr %scalefac_index, align 4
  %add57 = add i32 %61, %add56
  store i32 %add57, ptr %scalefac_index, align 4
  %62 = load i32, ptr %scalefac_index, align 4
  %cmp58 = icmp ult i32 %62, 23
  %lnot60 = xor i1 %cmp58, true
  %lnot.ext61 = zext i1 %lnot60 to i32
  %conv62 = sext i32 %lnot.ext61 to i64
  %tobool63 = icmp ne i64 %conv62, 0
  br i1 %tobool63, label %cond.true64, label %cond.false65

cond.true64:                                      ; preds = %cond.end53
  call void @__assert_rtn(ptr noundef @__func__.Huffmancodebits, ptr noundef @.str, i32 noundef 608, ptr noundef @.str.9) #5
  unreachable

63:                                               ; No predecessors!
  br label %cond.end66

cond.false65:                                     ; preds = %cond.end53
  br label %cond.end66

cond.end66:                                       ; preds = %cond.false65, %63
  %64 = load i32, ptr %scalefac_index, align 4
  %idxprom67 = zext i32 %64 to i64
  %arrayidx68 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %idxprom67
  %65 = load i32, ptr %arrayidx68, align 4
  store i32 %65, ptr %region2Start, align 4
  br label %if.end69

if.end69:                                         ; preds = %cond.end66, %if.then42
  store i32 0, ptr %i, align 4
  br label %for.cond70

for.cond70:                                       ; preds = %for.inc112, %if.end69
  %66 = load i32, ptr %i, align 4
  %67 = load i32, ptr %bigvalues, align 4
  %cmp71 = icmp slt i32 %66, %67
  br i1 %cmp71, label %for.body73, label %for.end114

for.body73:                                       ; preds = %for.cond70
  store i32 100, ptr %tableindex74, align 4
  %68 = load i32, ptr %i, align 4
  %69 = load i32, ptr %region1Start, align 4
  %cmp75 = icmp slt i32 %68, %69
  br i1 %cmp75, label %if.then77, label %if.else80

if.then77:                                        ; preds = %for.body73
  %70 = load ptr, ptr %gi.addr, align 8
  %table_select78 = getelementptr inbounds %struct.gr_info, ptr %70, i32 0, i32 8
  %arrayidx79 = getelementptr inbounds [3 x i32], ptr %table_select78, i64 0, i64 0
  %71 = load i32, ptr %arrayidx79, align 8
  store i32 %71, ptr %tableindex74, align 4
  br label %if.end90

if.else80:                                        ; preds = %for.body73
  %72 = load i32, ptr %i, align 4
  %73 = load i32, ptr %region2Start, align 4
  %cmp81 = icmp slt i32 %72, %73
  br i1 %cmp81, label %if.then83, label %if.else86

if.then83:                                        ; preds = %if.else80
  %74 = load ptr, ptr %gi.addr, align 8
  %table_select84 = getelementptr inbounds %struct.gr_info, ptr %74, i32 0, i32 8
  %arrayidx85 = getelementptr inbounds [3 x i32], ptr %table_select84, i64 0, i64 1
  %75 = load i32, ptr %arrayidx85, align 4
  store i32 %75, ptr %tableindex74, align 4
  br label %if.end89

if.else86:                                        ; preds = %if.else80
  %76 = load ptr, ptr %gi.addr, align 8
  %table_select87 = getelementptr inbounds %struct.gr_info, ptr %76, i32 0, i32 8
  %arrayidx88 = getelementptr inbounds [3 x i32], ptr %table_select87, i64 0, i64 2
  %77 = load i32, ptr %arrayidx88, align 8
  store i32 %77, ptr %tableindex74, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.else86, %if.then83
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %if.then77
  %78 = load i32, ptr %tableindex74, align 4
  %cmp91 = icmp ult i32 %78, 32
  %lnot93 = xor i1 %cmp91, true
  %lnot.ext94 = zext i1 %lnot93 to i32
  %conv95 = sext i32 %lnot.ext94 to i64
  %tobool96 = icmp ne i64 %conv95, 0
  br i1 %tobool96, label %cond.true97, label %cond.false98

cond.true97:                                      ; preds = %if.end90
  call void @__assert_rtn(ptr noundef @__func__.Huffmancodebits, ptr noundef @.str, i32 noundef 629, ptr noundef @.str.8) #5
  unreachable

79:                                               ; No predecessors!
  br label %cond.end99

cond.false98:                                     ; preds = %if.end90
  br label %cond.end99

cond.end99:                                       ; preds = %cond.false98, %79
  %80 = load ptr, ptr %ix.addr, align 8
  %81 = load i32, ptr %i, align 4
  %idxprom100 = sext i32 %81 to i64
  %arrayidx101 = getelementptr inbounds i32, ptr %80, i64 %idxprom100
  %82 = load i32, ptr %arrayidx101, align 4
  store i32 %82, ptr %x, align 4
  %83 = load ptr, ptr %ix.addr, align 8
  %84 = load i32, ptr %i, align 4
  %add102 = add nsw i32 %84, 1
  %idxprom103 = sext i32 %add102 to i64
  %arrayidx104 = getelementptr inbounds i32, ptr %83, i64 %idxprom103
  %85 = load i32, ptr %arrayidx104, align 4
  store i32 %85, ptr %y, align 4
  %86 = load i32, ptr %tableindex74, align 4
  %tobool105 = icmp ne i32 %86, 0
  br i1 %tobool105, label %if.then106, label %if.end111

if.then106:                                       ; preds = %cond.end99
  %87 = load i32, ptr %tableindex74, align 4
  %88 = load i32, ptr %x, align 4
  %89 = load i32, ptr %y, align 4
  %call107 = call i32 @HuffmanCode(i32 noundef %87, i32 noundef %88, i32 noundef %89, ptr noundef %code, ptr noundef %ext, ptr noundef %cbits, ptr noundef %xbits)
  store i32 %call107, ptr %bits, align 4
  %90 = load ptr, ptr %pph.addr, align 8
  %91 = load ptr, ptr %90, align 8
  %92 = load i32, ptr %code, align 4
  %93 = load i32, ptr %cbits, align 4
  %call108 = call ptr @BF_addEntry(ptr noundef %91, i32 noundef %92, i32 noundef %93)
  %94 = load ptr, ptr %pph.addr, align 8
  store ptr %call108, ptr %94, align 8
  %95 = load ptr, ptr %pph.addr, align 8
  %96 = load ptr, ptr %95, align 8
  %97 = load i32, ptr %ext, align 4
  %98 = load i32, ptr %xbits, align 4
  %call109 = call ptr @BF_addEntry(ptr noundef %96, i32 noundef %97, i32 noundef %98)
  %99 = load ptr, ptr %pph.addr, align 8
  store ptr %call109, ptr %99, align 8
  %100 = load i32, ptr %bits, align 4
  %101 = load i32, ptr %bitsWritten, align 4
  %add110 = add nsw i32 %101, %100
  store i32 %add110, ptr %bitsWritten, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.then106, %cond.end99
  br label %for.inc112

for.inc112:                                       ; preds = %if.end111
  %102 = load i32, ptr %i, align 4
  %add113 = add nsw i32 %102, 2
  store i32 %add113, ptr %i, align 4
  br label %for.cond70, !llvm.loop !51

for.end114:                                       ; preds = %for.cond70
  br label %if.end115

if.end115:                                        ; preds = %for.end114, %for.end38
  br label %if.end116

if.end116:                                        ; preds = %if.end115, %entry
  %103 = load ptr, ptr %gi.addr, align 8
  %count1table_select = getelementptr inbounds %struct.gr_info, ptr %103, i32 0, i32 14
  %104 = load i32, ptr %count1table_select, align 8
  %cmp117 = icmp ult i32 %104, 2
  %lnot119 = xor i1 %cmp117, true
  %lnot.ext120 = zext i1 %lnot119 to i32
  %conv121 = sext i32 %lnot.ext120 to i64
  %tobool122 = icmp ne i64 %conv121, 0
  br i1 %tobool122, label %cond.true123, label %cond.false124

cond.true123:                                     ; preds = %if.end116
  call void @__assert_rtn(ptr noundef @__func__.Huffmancodebits, ptr noundef @.str, i32 noundef 649, ptr noundef @.str.10) #5
  unreachable

105:                                              ; No predecessors!
  br label %cond.end125

cond.false124:                                    ; preds = %if.end116
  br label %cond.end125

cond.end125:                                      ; preds = %cond.false124, %105
  %106 = load i32, ptr %bigvalues, align 4
  %107 = load ptr, ptr %gi.addr, align 8
  %count1 = getelementptr inbounds %struct.gr_info, ptr %107, i32 0, i32 2
  %108 = load i32, ptr %count1, align 8
  %mul126 = mul i32 %108, 4
  %add127 = add i32 %106, %mul126
  store i32 %add127, ptr %count1End, align 4
  %109 = load i32, ptr %count1End, align 4
  %cmp128 = icmp sle i32 %109, 576
  %lnot130 = xor i1 %cmp128, true
  %lnot.ext131 = zext i1 %lnot130 to i32
  %conv132 = sext i32 %lnot.ext131 to i64
  %tobool133 = icmp ne i64 %conv132, 0
  br i1 %tobool133, label %cond.true134, label %cond.false135

cond.true134:                                     ; preds = %cond.end125
  call void @__assert_rtn(ptr noundef @__func__.Huffmancodebits, ptr noundef @.str, i32 noundef 652, ptr noundef @.str.11) #5
  unreachable

110:                                              ; No predecessors!
  br label %cond.end136

cond.false135:                                    ; preds = %cond.end125
  br label %cond.end136

cond.end136:                                      ; preds = %cond.false135, %110
  %111 = load i32, ptr %bigvalues, align 4
  store i32 %111, ptr %i, align 4
  br label %for.cond137

for.cond137:                                      ; preds = %for.inc158, %cond.end136
  %112 = load i32, ptr %i, align 4
  %113 = load i32, ptr %count1End, align 4
  %cmp138 = icmp slt i32 %112, %113
  br i1 %cmp138, label %for.body140, label %for.end160

for.body140:                                      ; preds = %for.cond137
  %114 = load ptr, ptr %ix.addr, align 8
  %115 = load i32, ptr %i, align 4
  %idxprom141 = sext i32 %115 to i64
  %arrayidx142 = getelementptr inbounds i32, ptr %114, i64 %idxprom141
  %116 = load i32, ptr %arrayidx142, align 4
  store i32 %116, ptr %v, align 4
  %117 = load ptr, ptr %ix.addr, align 8
  %118 = load i32, ptr %i, align 4
  %add143 = add nsw i32 %118, 1
  %idxprom144 = sext i32 %add143 to i64
  %arrayidx145 = getelementptr inbounds i32, ptr %117, i64 %idxprom144
  %119 = load i32, ptr %arrayidx145, align 4
  store i32 %119, ptr %w, align 4
  %120 = load ptr, ptr %ix.addr, align 8
  %121 = load i32, ptr %i, align 4
  %add146 = add nsw i32 %121, 2
  %idxprom147 = sext i32 %add146 to i64
  %arrayidx148 = getelementptr inbounds i32, ptr %120, i64 %idxprom147
  %122 = load i32, ptr %arrayidx148, align 4
  store i32 %122, ptr %x, align 4
  %123 = load ptr, ptr %ix.addr, align 8
  %124 = load i32, ptr %i, align 4
  %add149 = add nsw i32 %124, 3
  %idxprom150 = sext i32 %add149 to i64
  %arrayidx151 = getelementptr inbounds i32, ptr %123, i64 %idxprom150
  %125 = load i32, ptr %arrayidx151, align 4
  store i32 %125, ptr %y, align 4
  %126 = load ptr, ptr %pph.addr, align 8
  %127 = load ptr, ptr %gi.addr, align 8
  %count1table_select152 = getelementptr inbounds %struct.gr_info, ptr %127, i32 0, i32 14
  %128 = load i32, ptr %count1table_select152, align 8
  %add153 = add i32 %128, 32
  %idxprom154 = zext i32 %add153 to i64
  %arrayidx155 = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %idxprom154
  %129 = load i32, ptr %v, align 4
  %130 = load i32, ptr %w, align 4
  %131 = load i32, ptr %x, align 4
  %132 = load i32, ptr %y, align 4
  %call156 = call i32 @L3_huffman_coder_count1(ptr noundef %126, ptr noundef %arrayidx155, i32 noundef %129, i32 noundef %130, i32 noundef %131, i32 noundef %132)
  %133 = load i32, ptr %bitsWritten, align 4
  %add157 = add nsw i32 %133, %call156
  store i32 %add157, ptr %bitsWritten, align 4
  br label %for.inc158

for.inc158:                                       ; preds = %for.body140
  %134 = load i32, ptr %i, align 4
  %add159 = add nsw i32 %134, 4
  store i32 %add159, ptr %i, align 4
  br label %for.cond137, !llvm.loop !52

for.end160:                                       ; preds = %for.cond137
  %135 = load ptr, ptr %gi.addr, align 8
  %part2_3_length = getelementptr inbounds %struct.gr_info, ptr %135, i32 0, i32 0
  %136 = load i32, ptr %part2_3_length, align 8
  %137 = load ptr, ptr %gi.addr, align 8
  %part2_length = getelementptr inbounds %struct.gr_info, ptr %137, i32 0, i32 15
  %138 = load i32, ptr %part2_length, align 4
  %sub = sub i32 %136, %138
  %139 = load i32, ptr %bitsWritten, align 4
  %sub161 = sub i32 %sub, %139
  store i32 %sub161, ptr %stuffingBits, align 4
  %tobool162 = icmp ne i32 %sub161, 0
  br i1 %tobool162, label %if.then163, label %if.end173

if.then163:                                       ; preds = %for.end160
  %140 = load i32, ptr %stuffingBits, align 4
  %div = sdiv i32 %140, 32
  store i32 %div, ptr %stuffingWords, align 4
  %141 = load i32, ptr %stuffingBits, align 4
  %rem = srem i32 %141, 32
  store i32 %rem, ptr %remainingBits, align 4
  %142 = load ptr, ptr @__stderrp, align 8
  %143 = load i32, ptr %stuffingBits, align 4
  %call164 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %142, ptr noundef @.str.12, i32 noundef %143)
  %144 = load ptr, ptr @__stderrp, align 8
  %call165 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %144, ptr noundef @.str.13)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then163
  %145 = load i32, ptr %stuffingWords, align 4
  %dec = add nsw i32 %145, -1
  store i32 %dec, ptr %stuffingWords, align 4
  %tobool166 = icmp ne i32 %145, 0
  br i1 %tobool166, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %146 = load ptr, ptr %pph.addr, align 8
  %147 = load ptr, ptr %146, align 8
  %call167 = call ptr @BF_addEntry(ptr noundef %147, i32 noundef -1, i32 noundef 32)
  %148 = load ptr, ptr %pph.addr, align 8
  store ptr %call167, ptr %148, align 8
  br label %while.cond, !llvm.loop !53

while.end:                                        ; preds = %while.cond
  %149 = load i32, ptr %remainingBits, align 4
  %tobool168 = icmp ne i32 %149, 0
  br i1 %tobool168, label %if.then169, label %if.end171

if.then169:                                       ; preds = %while.end
  %150 = load ptr, ptr %pph.addr, align 8
  %151 = load ptr, ptr %150, align 8
  %152 = load i32, ptr %remainingBits, align 4
  %call170 = call ptr @BF_addEntry(ptr noundef %151, i32 noundef -1, i32 noundef %152)
  %153 = load ptr, ptr %pph.addr, align 8
  store ptr %call170, ptr %153, align 8
  br label %if.end171

if.end171:                                        ; preds = %if.then169, %while.end
  %154 = load i32, ptr %stuffingBits, align 4
  %155 = load i32, ptr %bitsWritten, align 4
  %add172 = add nsw i32 %155, %154
  store i32 %add172, ptr %bitsWritten, align 4
  br label %if.end173

if.end173:                                        ; preds = %if.end171, %for.end160
  %156 = load i32, ptr %bitsWritten, align 4
  %157 = load ptr, ptr %gi.addr, align 8
  %part2_3_length174 = getelementptr inbounds %struct.gr_info, ptr %157, i32 0, i32 0
  %158 = load i32, ptr %part2_3_length174, align 8
  %159 = load ptr, ptr %gi.addr, align 8
  %part2_length175 = getelementptr inbounds %struct.gr_info, ptr %159, i32 0, i32 15
  %160 = load i32, ptr %part2_length175, align 4
  %sub176 = sub i32 %158, %160
  %cmp177 = icmp eq i32 %156, %sub176
  %lnot179 = xor i1 %cmp177, true
  %lnot.ext180 = zext i1 %lnot179 to i32
  %conv181 = sext i32 %lnot.ext180 to i64
  %tobool182 = icmp ne i64 %conv181, 0
  br i1 %tobool182, label %cond.true183, label %cond.false184

cond.true183:                                     ; preds = %if.end173
  call void @__assert_rtn(ptr noundef @__func__.Huffmancodebits, ptr noundef @.str, i32 noundef 683, ptr noundef @.str.14) #5
  unreachable

161:                                              ; No predecessors!
  br label %cond.end185

cond.false184:                                    ; preds = %if.end173
  br label %cond.end185

cond.end185:                                      ; preds = %cond.false184, %161
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
  %0 = load i32, ptr %length.addr, align 4
  %shl = shl i32 1, %0
  store i32 %shl, ptr %bit, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i32, ptr %bit, align 4
  %shr = lshr i32 %1, 1
  store i32 %shr, ptr %bit, align 4
  %tobool = icmp ne i32 %shr, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr @crc, align 4
  %shl1 = shl i32 %2, 1
  store i32 %shl1, ptr @crc, align 4
  %3 = load i32, ptr @crc, align 4
  %and = and i32 %3, 65536
  %tobool2 = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool2, true
  %lnot.ext = zext i1 %lnot to i32
  %4 = load i32, ptr %value.addr, align 4
  %5 = load i32, ptr %bit, align 4
  %and3 = and i32 %4, %5
  %tobool4 = icmp ne i32 %and3, 0
  %lnot5 = xor i1 %tobool4, true
  %lnot.ext6 = zext i1 %lnot5 to i32
  %xor = xor i32 %lnot.ext, %lnot.ext6
  %tobool7 = icmp ne i32 %xor, 0
  br i1 %tobool7, label %if.then, label %if.end

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
  %call = call ptr @BF_addEntry(ptr noundef %8, i32 noundef %9, i32 noundef %10)
  ret ptr %call
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { allocsize(0,1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { allocsize(0,1) }
attributes #5 = { cold noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_l3bitstream_0(ptr noundef %x)  alwaysinline#0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  %0 = load ptr, ptr %x.addr, align 8
  %1 = load i32, ptr %0, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %x.addr, align 8
  %3 = load i32, ptr %2, align 4
  %mul = mul nsw i32 %3, -1
  store i32 %mul, ptr %2, align 4
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

define i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_l3bitstream_1(ptr noundef %x)  alwaysinline#0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  %0 = load ptr, ptr %x.addr, align 8
  %1 = load i32, ptr %0, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %x.addr, align 8
  %3 = load i32, ptr %2, align 4
  %mul = mul nsw i32 %3, -1
  store i32 %mul, ptr %2, align 4
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

define i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_l3bitstream_2(ptr noundef %x)  alwaysinline#0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  %0 = load ptr, ptr %x.addr, align 8
  %1 = load i32, ptr %0, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %x.addr, align 8
  %3 = load i32, ptr %2, align 4
  %mul = mul nsw i32 %3, -1
  store i32 %mul, ptr %2, align 4
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

define i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_l3bitstream_3(ptr noundef %x)  alwaysinline#0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  %0 = load ptr, ptr %x.addr, align 8
  %1 = load i32, ptr %0, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %x.addr, align 8
  %3 = load i32, ptr %2, align 4
  %mul = mul nsw i32 %3, -1
  store i32 %mul, ptr %2, align 4
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

define i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_l3bitstream_4(ptr noundef %x)  alwaysinline#0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  %0 = load ptr, ptr %x.addr, align 8
  %1 = load i32, ptr %0, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %x.addr, align 8
  %3 = load i32, ptr %2, align 4
  %mul = mul nsw i32 %3, -1
  store i32 %mul, ptr %2, align 4
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

define i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_l3bitstream_5(ptr noundef %x)  alwaysinline#0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  %0 = load ptr, ptr %x.addr, align 8
  %1 = load i32, ptr %0, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %x.addr, align 8
  %3 = load i32, ptr %2, align 4
  %mul = mul nsw i32 %3, -1
  store i32 %mul, ptr %2, align 4
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

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
