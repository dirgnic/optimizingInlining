; ModuleID = './out/inlinefriendly_scan/rewritten_ir/teacher_bandit_ucb_proxy/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-lame_formatBitstream.prepared.ll'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-lame/formatBitstream.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.BF_FrameData = type { i32, i32, i32, ptr, ptr, [2 x ptr], [2 x [2 x ptr]], [2 x [2 x ptr]], [2 x [2 x ptr]], [2 x [2 x ptr]], ptr }
%struct.BF_FrameResults = type { i32, i32, i32 }
%struct.side_info_link = type { ptr, %struct.MYSideInfo }
%struct.MYSideInfo = type { i32, i32, i32, i32, ptr, ptr, [2 x ptr], [2 x [2 x ptr]] }
%struct.BF_BitstreamPart = type { i32, ptr }
%struct.BF_BitstreamElement = type { i32, i16 }
%struct.BF_PartHolder = type { i32, ptr }

@BitCount = internal global i32 0, align 4
@ThisFrameSize = internal global i32 0, align 4
@BitsRemaining = internal global i32 0, align 4
@__func__.BF_BitstreamFrame = private unnamed_addr constant [18 x i8] c"BF_BitstreamFrame\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"formatBitstream.c\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"frameInfo->nGranules <= MAX_GRANULES\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"frameInfo->nChannels <= MAX_CHANNELS\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"(BitsRemaining % 8) == 0\00", align 1
@forwardFrameLength = internal global i32 0, align 4
@forwardSILength = internal global i32 0, align 4
@elements = internal global i32 0, align 4
@__func__.BF_newPartHolder = private unnamed_addr constant [17 x i8] c"BF_newPartHolder\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"newPH\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"newPH->part\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"newPH->part->element\00", align 1
@__func__.writePartMainData = private unnamed_addr constant [18 x i8] c"writePartMainData\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"results\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"part\00", align 1
@__func__.WriteMainDataBits = private unnamed_addr constant [18 x i8] c"WriteMainDataBits\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"nbits <= 32\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"BitCount <= ThisFrameSize\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"BitsRemaining >= 0\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"(BitCount + BitsRemaining) == ThisFrameSize\00", align 1
@__func__.writePartSideInfo = private unnamed_addr constant [18 x i8] c"writePartSideInfo\00", align 1
@side_queue_free = internal global ptr null, align 8
@side_queue_head = internal global ptr null, align 8
@__func__.get_side_info = private unnamed_addr constant [14 x i8] c"get_side_info\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@__stderrp = external global ptr, align 8
@.str.14 = private unnamed_addr constant [31 x i8] c"cannot allocate side_info_link\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @InitFormatBitStream() #0 {
entry:
  store i32 0, ptr @BitCount, align 4
  store i32 0, ptr @ThisFrameSize, align 4
  store i32 0, ptr @BitsRemaining, align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @BF_BitstreamFrame(ptr noundef %frameInfo, ptr noundef %results) #0 {
entry:
  %frameInfo.addr = alloca ptr, align 8
  %results.addr = alloca ptr, align 8
  store ptr %frameInfo, ptr %frameInfo.addr, align 8
  store ptr %results, ptr %results.addr, align 8
  %nGranules = getelementptr inbounds %struct.BF_FrameData, ptr %frameInfo, i64 0, i32 1
  %0 = load i32, ptr %nGranules, align 4
  %cmp = icmp sgt i32 %0, 2
  br i1 %cmp, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__.BF_BitstreamFrame, ptr noundef nonnull @.str, i32 noundef 59, ptr noundef nonnull @.str.1) #9
  unreachable

cond.end:                                         ; preds = %entry
  %1 = load ptr, ptr %frameInfo.addr, align 8
  %nChannels = getelementptr inbounds %struct.BF_FrameData, ptr %1, i64 0, i32 2
  %2 = load i32, ptr %nChannels, align 8
  %cmp1 = icmp sgt i32 %2, 2
  br i1 %cmp1, label %cond.true7, label %cond.end9

cond.true7:                                       ; preds = %cond.end
  call void @__assert_rtn(ptr noundef nonnull @__func__.BF_BitstreamFrame, ptr noundef nonnull @.str, i32 noundef 60, ptr noundef nonnull @.str.2) #9
  unreachable

cond.end9:                                        ; preds = %cond.end
  %3 = load ptr, ptr %frameInfo.addr, align 8
  %call = call i32 @store_side_info(ptr noundef %3)
  %4 = load ptr, ptr %results.addr, align 8
  store i32 %call, ptr %4, align 4
  %call10 = call i32 @main_data(ptr noundef %3, ptr noundef nonnull %4)
  %mainDataLength = getelementptr inbounds %struct.BF_FrameResults, ptr %4, i64 0, i32 1
  store i32 %call10, ptr %mainDataLength, align 4
  %5 = load i32, ptr @BitsRemaining, align 4
  %6 = and i32 %5, 7
  %cmp11.not = icmp eq i32 %6, 0
  br i1 %cmp11.not, label %cond.end19, label %cond.true17

cond.true17:                                      ; preds = %cond.end9
  call void @__assert_rtn(ptr noundef nonnull @__func__.BF_BitstreamFrame, ptr noundef nonnull @.str, i32 noundef 74, ptr noundef nonnull @.str.3) #9
  unreachable

cond.end19:                                       ; preds = %cond.end9
  %call20 = call i32 @side_queue_elements(ptr noundef nonnull @forwardFrameLength, ptr noundef nonnull @forwardSILength)
  store i32 %call20, ptr @elements, align 4
  %7 = load i32, ptr @BitsRemaining, align 4
  %div = sdiv i32 %7, 8
  %8 = load i32, ptr @forwardFrameLength, align 4
  %div21 = sdiv i32 %8, 8
  %add = add nsw i32 %div, %div21
  %9 = load i32, ptr @forwardSILength, align 4
  %div22.neg = sdiv i32 %9, -8
  %sub = add i32 %div22.neg, %add
  %10 = load ptr, ptr %results.addr, align 8
  %nextBackPtr = getelementptr inbounds %struct.BF_FrameResults, ptr %10, i64 0, i32 2
  store i32 %sub, ptr %nextBackPtr, align 4
  ret void
}

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @store_side_info(ptr noundef %info) #0 {
entry:
  %info.addr = alloca ptr, align 8
  %ch = alloca i32, align 4
  %gr = alloca i32, align 4
  %l = alloca ptr, align 8
  %f = alloca ptr, align 8
  %bits = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  %0 = load ptr, ptr @side_queue_free, align 8
  store ptr %0, ptr %f, align 8
  store i32 0, ptr %bits, align 4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call dereferenceable_or_null(88) ptr @calloc(i64 noundef 1, i64 noundef 88) #10
  store ptr %call, ptr %l, align 8
  %cmp1 = icmp eq ptr %call, null
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %1 = load ptr, ptr @__stderrp, align 8
  %2 = call i64 @fwrite(ptr nonnull @.str.14, i64 30, i64 1, ptr %1)
  call void @exit(i32 noundef 1) #11
  unreachable

if.end:                                           ; preds = %if.then
  %3 = load ptr, ptr %l, align 8
  store ptr null, ptr %3, align 8
  %4 = load ptr, ptr %info.addr, align 8
  %header = getelementptr inbounds %struct.BF_FrameData, ptr %4, i64 0, i32 3
  %5 = load ptr, ptr %header, align 8
  %6 = load i32, ptr %5, align 8
  %call4 = call ptr @BF_newPartHolder(i32 noundef %6)
  %7 = load ptr, ptr %l, align 8
  %headerPH = getelementptr inbounds %struct.side_info_link, ptr %7, i64 0, i32 1, i32 4
  store ptr %call4, ptr %headerPH, align 8
  %8 = load ptr, ptr %info.addr, align 8
  %frameSI = getelementptr inbounds %struct.BF_FrameData, ptr %8, i64 0, i32 4
  %9 = load ptr, ptr %frameSI, align 8
  %10 = load i32, ptr %9, align 8
  %call6 = call ptr @BF_newPartHolder(i32 noundef %10)
  %11 = load ptr, ptr %l, align 8
  %frameSIPH = getelementptr inbounds %struct.side_info_link, ptr %11, i64 0, i32 1, i32 5
  store ptr %call6, ptr %frameSIPH, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end
  %storemerge3 = phi i32 [ 0, %if.end ], [ %inc, %for.body ]
  store i32 %storemerge3, ptr %ch, align 4
  %12 = load ptr, ptr %info.addr, align 8
  %nChannels = getelementptr inbounds %struct.BF_FrameData, ptr %12, i64 0, i32 2
  %13 = load i32, ptr %nChannels, align 8
  %cmp8 = icmp slt i32 %storemerge3, %13
  br i1 %cmp8, label %for.body, label %for.cond14

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %info.addr, align 8
  %15 = load i32, ptr %ch, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds %struct.BF_FrameData, ptr %14, i64 0, i32 5, i64 %idxprom
  %16 = load ptr, ptr %arrayidx, align 8
  %17 = load i32, ptr %16, align 8
  %call10 = call ptr @BF_newPartHolder(i32 noundef %17)
  %18 = load ptr, ptr %l, align 8
  %19 = load i32, ptr %ch, align 4
  %idxprom12 = sext i32 %19 to i64
  %arrayidx13 = getelementptr inbounds %struct.side_info_link, ptr %18, i64 0, i32 1, i32 6, i64 %idxprom12
  store ptr %call10, ptr %arrayidx13, align 8
  %20 = load i32, ptr %ch, align 4
  %inc = add nsw i32 %20, 1
  br label %for.cond, !llvm.loop !6

for.cond14:                                       ; preds = %for.cond, %for.inc35
  %storemerge4 = phi i32 [ %inc36, %for.inc35 ], [ 0, %for.cond ]
  store i32 %storemerge4, ptr %gr, align 4
  %21 = load ptr, ptr %info.addr, align 8
  %nGranules = getelementptr inbounds %struct.BF_FrameData, ptr %21, i64 0, i32 1
  %22 = load i32, ptr %nGranules, align 4
  %cmp15 = icmp slt i32 %storemerge4, %22
  br i1 %cmp15, label %for.cond17, label %if.end40

for.cond17:                                       ; preds = %for.cond14, %for.body20
  %storemerge5 = phi i32 [ %inc33, %for.body20 ], [ 0, %for.cond14 ]
  store i32 %storemerge5, ptr %ch, align 4
  %23 = load ptr, ptr %info.addr, align 8
  %nChannels18 = getelementptr inbounds %struct.BF_FrameData, ptr %23, i64 0, i32 2
  %24 = load i32, ptr %nChannels18, align 8
  %cmp19 = icmp slt i32 %storemerge5, %24
  br i1 %cmp19, label %for.body20, label %for.inc35

for.body20:                                       ; preds = %for.cond17
  %25 = load ptr, ptr %info.addr, align 8
  %26 = load i32, ptr %gr, align 4
  %idxprom21 = sext i32 %26 to i64
  %27 = load i32, ptr %ch, align 4
  %idxprom23 = sext i32 %27 to i64
  %arrayidx24 = getelementptr inbounds %struct.BF_FrameData, ptr %25, i64 0, i32 6, i64 %idxprom21, i64 %idxprom23
  %28 = load ptr, ptr %arrayidx24, align 8
  %29 = load i32, ptr %28, align 8
  %call26 = call ptr @BF_newPartHolder(i32 noundef %29)
  %30 = load ptr, ptr %l, align 8
  %31 = load i32, ptr %gr, align 4
  %idxprom28 = sext i32 %31 to i64
  %32 = load i32, ptr %ch, align 4
  %idxprom30 = sext i32 %32 to i64
  %arrayidx31 = getelementptr inbounds %struct.side_info_link, ptr %30, i64 0, i32 1, i32 7, i64 %idxprom28, i64 %idxprom30
  store ptr %call26, ptr %arrayidx31, align 8
  %33 = load i32, ptr %ch, align 4
  %inc33 = add nsw i32 %33, 1
  br label %for.cond17, !llvm.loop !8

for.inc35:                                        ; preds = %for.cond17
  %34 = load i32, ptr %gr, align 4
  %inc36 = add nsw i32 %34, 1
  br label %for.cond14, !llvm.loop !9

if.else:                                          ; preds = %entry
  %35 = load ptr, ptr %f, align 8
  %36 = load ptr, ptr %35, align 8
  store ptr %36, ptr @side_queue_free, align 8
  store ptr null, ptr %35, align 8
  store ptr %35, ptr %l, align 8
  br label %if.end40

if.end40:                                         ; preds = %for.cond14, %if.else
  %37 = load ptr, ptr %info.addr, align 8
  %38 = load i32, ptr %37, align 8
  %39 = load ptr, ptr %l, align 8
  %side_info41 = getelementptr inbounds %struct.side_info_link, ptr %39, i64 0, i32 1
  store i32 %38, ptr %side_info41, align 8
  %nGranules43 = getelementptr inbounds %struct.BF_FrameData, ptr %37, i64 0, i32 1
  %40 = load i32, ptr %nGranules43, align 4
  %nGranules45 = getelementptr inbounds %struct.side_info_link, ptr %39, i64 0, i32 1, i32 2
  store i32 %40, ptr %nGranules45, align 8
  %41 = load ptr, ptr %info.addr, align 8
  %nChannels46 = getelementptr inbounds %struct.BF_FrameData, ptr %41, i64 0, i32 2
  %42 = load i32, ptr %nChannels46, align 8
  %43 = load ptr, ptr %l, align 8
  %nChannels48 = getelementptr inbounds %struct.side_info_link, ptr %43, i64 0, i32 1, i32 3
  store i32 %42, ptr %nChannels48, align 4
  %headerPH50 = getelementptr inbounds %struct.side_info_link, ptr %43, i64 0, i32 1, i32 4
  %44 = load ptr, ptr %headerPH50, align 8
  %45 = load ptr, ptr %info.addr, align 8
  %header51 = getelementptr inbounds %struct.BF_FrameData, ptr %45, i64 0, i32 3
  %46 = load ptr, ptr %header51, align 8
  %call52 = call ptr @BF_LoadHolderFromBitstreamPart(ptr noundef %44, ptr noundef %46)
  %47 = load ptr, ptr %l, align 8
  %headerPH54 = getelementptr inbounds %struct.side_info_link, ptr %47, i64 0, i32 1, i32 4
  store ptr %call52, ptr %headerPH54, align 8
  %frameSIPH56 = getelementptr inbounds %struct.side_info_link, ptr %47, i64 0, i32 1, i32 5
  %48 = load ptr, ptr %frameSIPH56, align 8
  %49 = load ptr, ptr %info.addr, align 8
  %frameSI57 = getelementptr inbounds %struct.BF_FrameData, ptr %49, i64 0, i32 4
  %50 = load ptr, ptr %frameSI57, align 8
  %call58 = call ptr @BF_LoadHolderFromBitstreamPart(ptr noundef %48, ptr noundef %50)
  %51 = load ptr, ptr %l, align 8
  %frameSIPH60 = getelementptr inbounds %struct.side_info_link, ptr %51, i64 0, i32 1, i32 5
  store ptr %call58, ptr %frameSIPH60, align 8
  %52 = load ptr, ptr %info.addr, align 8
  %header61 = getelementptr inbounds %struct.BF_FrameData, ptr %52, i64 0, i32 3
  %53 = load ptr, ptr %header61, align 8
  %call62 = call i32 @BF_PartLength(ptr noundef %53)
  %54 = load i32, ptr %bits, align 4
  %add = add nsw i32 %54, %call62
  store i32 %add, ptr %bits, align 4
  %55 = load ptr, ptr %info.addr, align 8
  %frameSI63 = getelementptr inbounds %struct.BF_FrameData, ptr %55, i64 0, i32 4
  %56 = load ptr, ptr %frameSI63, align 8
  %call64 = call i32 @BF_PartLength(ptr noundef %56)
  %add65 = add nsw i32 %add, %call64
  store i32 %add65, ptr %bits, align 4
  br label %for.cond66

for.cond66:                                       ; preds = %for.body69, %if.end40
  %storemerge = phi i32 [ 0, %if.end40 ], [ %inc88, %for.body69 ]
  store i32 %storemerge, ptr %ch, align 4
  %57 = load ptr, ptr %info.addr, align 8
  %nChannels67 = getelementptr inbounds %struct.BF_FrameData, ptr %57, i64 0, i32 2
  %58 = load i32, ptr %nChannels67, align 8
  %cmp68 = icmp slt i32 %storemerge, %58
  br i1 %cmp68, label %for.body69, label %for.cond90

for.body69:                                       ; preds = %for.cond66
  %59 = load ptr, ptr %l, align 8
  %60 = load i32, ptr %ch, align 4
  %idxprom72 = sext i32 %60 to i64
  %arrayidx73 = getelementptr inbounds %struct.side_info_link, ptr %59, i64 0, i32 1, i32 6, i64 %idxprom72
  %61 = load ptr, ptr %arrayidx73, align 8
  %62 = load ptr, ptr %info.addr, align 8
  %idxprom75 = sext i32 %60 to i64
  %arrayidx76 = getelementptr inbounds %struct.BF_FrameData, ptr %62, i64 0, i32 5, i64 %idxprom75
  %63 = load ptr, ptr %arrayidx76, align 8
  %call77 = call ptr @BF_LoadHolderFromBitstreamPart(ptr noundef %61, ptr noundef %63)
  %64 = load ptr, ptr %l, align 8
  %65 = load i32, ptr %ch, align 4
  %idxprom80 = sext i32 %65 to i64
  %arrayidx81 = getelementptr inbounds %struct.side_info_link, ptr %64, i64 0, i32 1, i32 6, i64 %idxprom80
  store ptr %call77, ptr %arrayidx81, align 8
  %66 = load ptr, ptr %info.addr, align 8
  %idxprom83 = sext i32 %65 to i64
  %arrayidx84 = getelementptr inbounds %struct.BF_FrameData, ptr %66, i64 0, i32 5, i64 %idxprom83
  %67 = load ptr, ptr %arrayidx84, align 8
  %call85 = call i32 @BF_PartLength(ptr noundef %67)
  %68 = load i32, ptr %bits, align 4
  %add86 = add nsw i32 %68, %call85
  store i32 %add86, ptr %bits, align 4
  %69 = load i32, ptr %ch, align 4
  %inc88 = add nsw i32 %69, 1
  br label %for.cond66, !llvm.loop !10

for.cond90:                                       ; preds = %for.cond66, %for.inc126
  %storemerge1 = phi i32 [ %inc127, %for.inc126 ], [ 0, %for.cond66 ]
  store i32 %storemerge1, ptr %gr, align 4
  %70 = load ptr, ptr %info.addr, align 8
  %nGranules91 = getelementptr inbounds %struct.BF_FrameData, ptr %70, i64 0, i32 1
  %71 = load i32, ptr %nGranules91, align 4
  %cmp92 = icmp slt i32 %storemerge1, %71
  br i1 %cmp92, label %for.cond94, label %for.end128

for.cond94:                                       ; preds = %for.cond90, %for.body97
  %storemerge2 = phi i32 [ %inc124, %for.body97 ], [ 0, %for.cond90 ]
  store i32 %storemerge2, ptr %ch, align 4
  %72 = load ptr, ptr %info.addr, align 8
  %nChannels95 = getelementptr inbounds %struct.BF_FrameData, ptr %72, i64 0, i32 2
  %73 = load i32, ptr %nChannels95, align 8
  %cmp96 = icmp slt i32 %storemerge2, %73
  br i1 %cmp96, label %for.body97, label %for.inc126

for.body97:                                       ; preds = %for.cond94
  %74 = load ptr, ptr %l, align 8
  %75 = load i32, ptr %gr, align 4
  %idxprom100 = sext i32 %75 to i64
  %76 = load i32, ptr %ch, align 4
  %idxprom102 = sext i32 %76 to i64
  %arrayidx103 = getelementptr inbounds %struct.side_info_link, ptr %74, i64 0, i32 1, i32 7, i64 %idxprom100, i64 %idxprom102
  %77 = load ptr, ptr %arrayidx103, align 8
  %78 = load ptr, ptr %info.addr, align 8
  %79 = load i32, ptr %gr, align 4
  %idxprom105 = sext i32 %79 to i64
  %80 = load i32, ptr %ch, align 4
  %idxprom107 = sext i32 %80 to i64
  %arrayidx108 = getelementptr inbounds %struct.BF_FrameData, ptr %78, i64 0, i32 6, i64 %idxprom105, i64 %idxprom107
  %81 = load ptr, ptr %arrayidx108, align 8
  %call109 = call ptr @BF_LoadHolderFromBitstreamPart(ptr noundef %77, ptr noundef %81)
  %82 = load ptr, ptr %l, align 8
  %83 = load i32, ptr %gr, align 4
  %idxprom112 = sext i32 %83 to i64
  %84 = load i32, ptr %ch, align 4
  %idxprom114 = sext i32 %84 to i64
  %arrayidx115 = getelementptr inbounds %struct.side_info_link, ptr %82, i64 0, i32 1, i32 7, i64 %idxprom112, i64 %idxprom114
  store ptr %call109, ptr %arrayidx115, align 8
  %85 = load ptr, ptr %info.addr, align 8
  %86 = load i32, ptr %gr, align 4
  %idxprom117 = sext i32 %86 to i64
  %87 = load i32, ptr %ch, align 4
  %idxprom119 = sext i32 %87 to i64
  %arrayidx120 = getelementptr inbounds %struct.BF_FrameData, ptr %85, i64 0, i32 6, i64 %idxprom117, i64 %idxprom119
  %88 = load ptr, ptr %arrayidx120, align 8
  %call121 = call i32 @BF_PartLength(ptr noundef %88)
  %89 = load i32, ptr %bits, align 4
  %add122 = add nsw i32 %89, %call121
  store i32 %add122, ptr %bits, align 4
  %90 = load i32, ptr %ch, align 4
  %inc124 = add nsw i32 %90, 1
  br label %for.cond94, !llvm.loop !11

for.inc126:                                       ; preds = %for.cond94
  %91 = load i32, ptr %gr, align 4
  %inc127 = add nsw i32 %91, 1
  br label %for.cond90, !llvm.loop !12

for.end128:                                       ; preds = %for.cond90
  %92 = load i32, ptr %bits, align 4
  %93 = load ptr, ptr %l, align 8
  %SILength = getelementptr inbounds %struct.side_info_link, ptr %93, i64 0, i32 1, i32 1
  store i32 %92, ptr %SILength, align 4
  %94 = load ptr, ptr @side_queue_head, align 8
  store ptr %94, ptr %f, align 8
  %cmp130 = icmp eq ptr %94, null
  br i1 %cmp130, label %if.then131, label %while.cond

if.then131:                                       ; preds = %for.end128
  %95 = load ptr, ptr %l, align 8
  store ptr %95, ptr @side_queue_head, align 8
  br label %if.end136

while.cond:                                       ; preds = %for.end128, %while.body
  %96 = load ptr, ptr %f, align 8
  %97 = load ptr, ptr %96, align 8
  %tobool.not = icmp eq ptr %97, null
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %98 = load ptr, ptr %f, align 8
  %99 = load ptr, ptr %98, align 8
  store ptr %99, ptr %f, align 8
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %while.cond
  %100 = load ptr, ptr %l, align 8
  %101 = load ptr, ptr %f, align 8
  store ptr %100, ptr %101, align 8
  br label %if.end136

if.end136:                                        ; preds = %while.end, %if.then131
  %102 = load i32, ptr %bits, align 4
  ret i32 %102
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @main_data(ptr noundef %fi, ptr noundef %results) #0 {
entry:
  %fi.addr = alloca ptr, align 8
  %results.addr = alloca ptr, align 8
  %gr = alloca i32, align 4
  %ch = alloca i32, align 4
  %bits = alloca i32, align 4
  %wp = alloca ptr, align 8
  store ptr %fi, ptr %fi.addr, align 8
  store ptr %results, ptr %results.addr, align 8
  store ptr @writePartMainData, ptr %wp, align 8
  store i32 0, ptr %bits, align 4
  %mainDataLength = getelementptr inbounds %struct.BF_FrameResults, ptr %results, i64 0, i32 1
  store i32 0, ptr %mainDataLength, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc19, %for.inc18 ]
  store i32 %storemerge, ptr %gr, align 4
  %0 = load ptr, ptr %fi.addr, align 8
  %nGranules = getelementptr inbounds %struct.BF_FrameData, ptr %0, i64 0, i32 1
  %1 = load i32, ptr %nGranules, align 4
  %cmp = icmp slt i32 %storemerge, %1
  br i1 %cmp, label %for.cond1, label %for.end20

for.cond1:                                        ; preds = %for.cond, %for.body3
  %storemerge1 = phi i32 [ %inc, %for.body3 ], [ 0, %for.cond ]
  store i32 %storemerge1, ptr %ch, align 4
  %2 = load ptr, ptr %fi.addr, align 8
  %nChannels = getelementptr inbounds %struct.BF_FrameData, ptr %2, i64 0, i32 2
  %3 = load i32, ptr %nChannels, align 8
  %cmp2 = icmp slt i32 %storemerge1, %3
  br i1 %cmp2, label %for.body3, label %for.inc18

for.body3:                                        ; preds = %for.cond1
  %4 = load ptr, ptr %wp, align 8
  %5 = load ptr, ptr %fi.addr, align 8
  %6 = load i32, ptr %gr, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32, ptr %ch, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds %struct.BF_FrameData, ptr %5, i64 0, i32 7, i64 %idxprom, i64 %idxprom4
  %8 = load ptr, ptr %arrayidx5, align 8
  %9 = load ptr, ptr %results.addr, align 8
  %call = call i32 %4(ptr noundef %8, ptr noundef %9) #12
  %10 = load i32, ptr %bits, align 4
  %add = add nsw i32 %10, %call
  store i32 %add, ptr %bits, align 4
  %11 = load ptr, ptr %wp, align 8
  %12 = load ptr, ptr %fi.addr, align 8
  %13 = load i32, ptr %gr, align 4
  %idxprom6 = sext i32 %13 to i64
  %14 = load i32, ptr %ch, align 4
  %idxprom8 = sext i32 %14 to i64
  %arrayidx9 = getelementptr inbounds %struct.BF_FrameData, ptr %12, i64 0, i32 8, i64 %idxprom6, i64 %idxprom8
  %15 = load ptr, ptr %arrayidx9, align 8
  %16 = load ptr, ptr %results.addr, align 8
  %call10 = call i32 %11(ptr noundef %15, ptr noundef %16) #12
  %17 = load i32, ptr %bits, align 4
  %add11 = add nsw i32 %17, %call10
  store i32 %add11, ptr %bits, align 4
  %18 = load ptr, ptr %wp, align 8
  %19 = load ptr, ptr %fi.addr, align 8
  %20 = load i32, ptr %gr, align 4
  %idxprom12 = sext i32 %20 to i64
  %21 = load i32, ptr %ch, align 4
  %idxprom14 = sext i32 %21 to i64
  %arrayidx15 = getelementptr inbounds %struct.BF_FrameData, ptr %19, i64 0, i32 9, i64 %idxprom12, i64 %idxprom14
  %22 = load ptr, ptr %arrayidx15, align 8
  %23 = load ptr, ptr %results.addr, align 8
  %call16 = call i32 %18(ptr noundef %22, ptr noundef %23) #12
  %24 = load i32, ptr %bits, align 4
  %add17 = add nsw i32 %24, %call16
  store i32 %add17, ptr %bits, align 4
  %25 = load i32, ptr %ch, align 4
  %inc = add nsw i32 %25, 1
  br label %for.cond1, !llvm.loop !14

for.inc18:                                        ; preds = %for.cond1
  %26 = load i32, ptr %gr, align 4
  %inc19 = add nsw i32 %26, 1
  br label %for.cond, !llvm.loop !15

for.end20:                                        ; preds = %for.cond
  %27 = load ptr, ptr %wp, align 8
  %28 = load ptr, ptr %fi.addr, align 8
  %userFrameData = getelementptr inbounds %struct.BF_FrameData, ptr %28, i64 0, i32 10
  %29 = load ptr, ptr %userFrameData, align 8
  %30 = load ptr, ptr %results.addr, align 8
  %call21 = call i32 %27(ptr noundef %29, ptr noundef %30) #12
  %31 = load i32, ptr %bits, align 4
  %add22 = add nsw i32 %31, %call21
  store i32 %add22, ptr %bits, align 4
  ret i32 %add22
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @side_queue_elements(ptr noundef %frameLength, ptr noundef %SILength) #0 {
entry:
  %frameLength.addr = alloca ptr, align 8
  %SILength.addr = alloca ptr, align 8
  %elements = alloca i32, align 4
  %l = alloca ptr, align 8
  store ptr %frameLength, ptr %frameLength.addr, align 8
  store ptr %SILength, ptr %SILength.addr, align 8
  store i32 0, ptr %elements, align 4
  store i32 0, ptr %frameLength, align 4
  store i32 0, ptr %SILength, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge.in = phi ptr [ @side_queue_head, %entry ], [ %9, %for.body ]
  %storemerge = load ptr, ptr %storemerge.in, align 8
  store ptr %storemerge, ptr %l, align 8
  %tobool.not = icmp eq ptr %storemerge, null
  br i1 %tobool.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %0 = load i32, ptr %elements, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %elements, align 4
  %1 = load ptr, ptr %l, align 8
  %side_info = getelementptr inbounds %struct.side_info_link, ptr %1, i64 0, i32 1
  %2 = load i32, ptr %side_info, align 8
  %3 = load ptr, ptr %frameLength.addr, align 8
  %4 = load i32, ptr %3, align 4
  %add = add nsw i32 %4, %2
  store i32 %add, ptr %3, align 4
  %5 = load ptr, ptr %l, align 8
  %SILength3 = getelementptr inbounds %struct.side_info_link, ptr %5, i64 0, i32 1, i32 1
  %6 = load i32, ptr %SILength3, align 4
  %7 = load ptr, ptr %SILength.addr, align 8
  %8 = load i32, ptr %7, align 4
  %add4 = add nsw i32 %8, %6
  store i32 %add4, ptr %7, align 4
  %9 = load ptr, ptr %l, align 8
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  %10 = load i32, ptr %elements, align 4
  ret i32 %10
}

; Function Attrs: nounwind ssp uwtable
define void @BF_FlushBitstream(ptr noundef %frameInfo, ptr noundef %results) #0 {
entry:
  %results.addr = alloca ptr, align 8
  %bitsRemaining = alloca i32, align 4
  %wordsRemaining = alloca i32, align 4
  store ptr %results, ptr %results.addr, align 8
  %0 = load i32, ptr @elements, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, ptr @forwardFrameLength, align 4
  %2 = load i32, ptr @forwardSILength, align 4
  %sub = sub nsw i32 %1, %2
  store i32 %sub, ptr %bitsRemaining, align 4
  %div = sdiv i32 %sub, 32
  store i32 %div, ptr %wordsRemaining, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %3 = load i32, ptr %wordsRemaining, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, ptr %wordsRemaining, align 4
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %results.addr, align 8
  call void @WriteMainDataBits(i32 noundef 0, i32 noundef 32, ptr noundef %4)
  br label %while.cond, !llvm.loop !17

while.end:                                        ; preds = %while.cond
  %5 = load i32, ptr %bitsRemaining, align 4
  %rem = srem i32 %5, 32
  %6 = load ptr, ptr %results.addr, align 8
  call void @WriteMainDataBits(i32 noundef 0, i32 noundef %rem, ptr noundef %6)
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  %7 = load i32, ptr @forwardFrameLength, align 4
  %8 = load i32, ptr @forwardSILength, align 4
  %sub2 = sub nsw i32 %7, %8
  %9 = load ptr, ptr %results.addr, align 8
  %mainDataLength = getelementptr inbounds %struct.BF_FrameResults, ptr %9, i64 0, i32 1
  store i32 %sub2, ptr %mainDataLength, align 4
  store i32 %8, ptr %9, align 4
  %nextBackPtr = getelementptr inbounds %struct.BF_FrameResults, ptr %9, i64 0, i32 2
  store i32 0, ptr %nextBackPtr, align 4
  call void @free_side_queues()
  store i32 0, ptr @BitCount, align 4
  store i32 0, ptr @ThisFrameSize, align 4
  store i32 0, ptr @BitsRemaining, align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @WriteMainDataBits(i32 noundef %val, i32 noundef %nbits, ptr noundef %results) #0 {
entry:
  %val.addr = alloca i32, align 4
  %nbits.addr = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  store i32 %nbits, ptr %nbits.addr, align 4
  %cmp = icmp ugt i32 %nbits, 32
  br i1 %cmp, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__.WriteMainDataBits, ptr noundef nonnull @.str, i32 noundef 217, ptr noundef nonnull @.str.9) #9
  unreachable

cond.end:                                         ; preds = %entry
  %0 = load i32, ptr %nbits.addr, align 4
  %cmp1 = icmp eq i32 %0, 0
  br i1 %cmp1, label %cond.end43, label %if.end

if.end:                                           ; preds = %cond.end
  %1 = load i32, ptr @BitCount, align 4
  %2 = load i32, ptr @ThisFrameSize, align 4
  %cmp3 = icmp eq i32 %1, %2
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %call = call i32 @write_side_info()
  store i32 %call, ptr @BitCount, align 4
  %3 = load i32, ptr @ThisFrameSize, align 4
  %sub = sub nsw i32 %3, %call
  store i32 %sub, ptr @BitsRemaining, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %4 = load i32, ptr %nbits.addr, align 4
  %5 = load i32, ptr @BitsRemaining, align 4
  %cmp7 = icmp ugt i32 %4, %5
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end6
  %6 = load i32, ptr %val.addr, align 4
  %7 = load i32, ptr %nbits.addr, align 4
  %8 = load i32, ptr @BitsRemaining, align 4
  %sub10 = sub i32 %7, %8
  %shr = lshr i32 %6, %sub10
  %sub11 = sub i32 %7, %8
  store i32 %sub11, ptr %nbits.addr, align 4
  call void @putMyBits(i32 noundef %shr, i32 noundef %8) #12
  %call12 = call i32 @write_side_info()
  store i32 %call12, ptr @BitCount, align 4
  %9 = load i32, ptr @ThisFrameSize, align 4
  %sub13 = sub nsw i32 %9, %call12
  store i32 %sub13, ptr @BitsRemaining, align 4
  %10 = load i32, ptr %val.addr, align 4
  %11 = load i32, ptr %nbits.addr, align 4
  call void @putMyBits(i32 noundef %10, i32 noundef %11) #12
  br label %if.end14

if.else:                                          ; preds = %if.end6
  %12 = load i32, ptr %val.addr, align 4
  %13 = load i32, ptr %nbits.addr, align 4
  call void @putMyBits(i32 noundef %12, i32 noundef %13) #12
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then9
  %14 = load i32, ptr %nbits.addr, align 4
  %15 = load i32, ptr @BitCount, align 4
  %add = add i32 %15, %14
  store i32 %add, ptr @BitCount, align 4
  %16 = load i32, ptr @BitsRemaining, align 4
  %sub15 = sub i32 %16, %14
  store i32 %sub15, ptr @BitsRemaining, align 4
  %17 = load i32, ptr @ThisFrameSize, align 4
  %cmp16.not = icmp sgt i32 %add, %17
  br i1 %cmp16.not, label %cond.true22, label %cond.end24

cond.true22:                                      ; preds = %if.end14
  call void @__assert_rtn(ptr noundef nonnull @__func__.WriteMainDataBits, ptr noundef nonnull @.str, i32 noundef 238, ptr noundef nonnull @.str.10) #9
  unreachable

cond.end24:                                       ; preds = %if.end14
  %18 = load i32, ptr @BitsRemaining, align 4
  %tobool30.not = icmp sgt i32 %18, -1
  br i1 %tobool30.not, label %cond.end33, label %cond.true31

cond.true31:                                      ; preds = %cond.end24
  call void @__assert_rtn(ptr noundef nonnull @__func__.WriteMainDataBits, ptr noundef nonnull @.str, i32 noundef 239, ptr noundef nonnull @.str.11) #9
  unreachable

cond.end33:                                       ; preds = %cond.end24
  %19 = load i32, ptr @BitCount, align 4
  %20 = load i32, ptr @BitsRemaining, align 4
  %add34 = add nsw i32 %19, %20
  %21 = load i32, ptr @ThisFrameSize, align 4
  %cmp35.not = icmp eq i32 %add34, %21
  br i1 %cmp35.not, label %cond.end43, label %cond.true41

cond.true41:                                      ; preds = %cond.end33
  call void @__assert_rtn(ptr noundef nonnull @__func__.WriteMainDataBits, ptr noundef nonnull @.str, i32 noundef 240, ptr noundef nonnull @.str.12) #9
  unreachable

cond.end43:                                       ; preds = %cond.end33, %cond.end
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @free_side_queues() #0 {
entry:
  %l = alloca ptr, align 8
  %next = alloca ptr, align 8
  %0 = load ptr, ptr @side_queue_head, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi ptr [ %0, %entry ], [ %3, %for.body ]
  store ptr %storemerge, ptr %l, align 8
  %tobool.not = icmp eq ptr %storemerge, null
  br i1 %tobool.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %l, align 8
  %2 = load ptr, ptr %1, align 8
  store ptr %2, ptr %next, align 8
  call void @free_side_info_link(ptr noundef nonnull %1)
  %3 = load ptr, ptr %next, align 8
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  store ptr null, ptr @side_queue_head, align 8
  %4 = load ptr, ptr @side_queue_free, align 8
  br label %for.cond2

for.cond2:                                        ; preds = %for.body4, %for.end
  %storemerge1 = phi ptr [ %4, %for.end ], [ %7, %for.body4 ]
  store ptr %storemerge1, ptr %l, align 8
  %tobool3.not = icmp eq ptr %storemerge1, null
  br i1 %tobool3.not, label %for.end7, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %5 = load ptr, ptr %l, align 8
  %6 = load ptr, ptr %5, align 8
  store ptr %6, ptr %next, align 8
  call void @free_side_info_link(ptr noundef nonnull %5)
  %7 = load ptr, ptr %next, align 8
  br label %for.cond2, !llvm.loop !19

for.end7:                                         ; preds = %for.cond2
  store ptr null, ptr @side_queue_free, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @BF_PartLength(ptr noundef %part) #0 {
entry:
  %part.addr = alloca ptr, align 8
  %ep = alloca ptr, align 8
  %i = alloca i32, align 4
  %bits = alloca i32, align 4
  store ptr %part, ptr %part.addr, align 8
  %element = getelementptr inbounds %struct.BF_BitstreamPart, ptr %part, i64 0, i32 1
  %0 = load ptr, ptr %element, align 8
  store ptr %0, ptr %ep, align 8
  store i32 0, ptr %bits, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load ptr, ptr %part.addr, align 8
  %3 = load i32, ptr %2, align 8
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %ep, align 8
  %length = getelementptr inbounds %struct.BF_BitstreamElement, ptr %4, i64 0, i32 1
  %5 = load i16, ptr %length, align 4
  %conv = zext i16 %5 to i32
  %6 = load i32, ptr %bits, align 4
  %add = add nsw i32 %6, %conv
  store i32 %add, ptr %bits, align 4
  %7 = load i32, ptr %i, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %i, align 4
  %8 = load ptr, ptr %ep, align 8
  %incdec.ptr = getelementptr inbounds %struct.BF_BitstreamElement, ptr %8, i64 1
  store ptr %incdec.ptr, ptr %ep, align 8
  br label %for.cond, !llvm.loop !20

for.end:                                          ; preds = %for.cond
  %9 = load i32, ptr %bits, align 4
  ret i32 %9
}

; Function Attrs: nounwind ssp uwtable
define ptr @BF_newPartHolder(i32 noundef %max_elements) #0 {
entry:
  %max_elements.addr = alloca i32, align 4
  %newPH = alloca ptr, align 8
  store i32 %max_elements, ptr %max_elements.addr, align 4
  %call = call dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef 16) #10
  store ptr %call, ptr %newPH, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__.BF_newPartHolder, ptr noundef nonnull @.str, i32 noundef 443, ptr noundef nonnull @.str.4) #9
  unreachable

cond.end:                                         ; preds = %entry
  %0 = load i32, ptr %max_elements.addr, align 4
  %1 = load ptr, ptr %newPH, align 8
  store i32 %0, ptr %1, align 8
  %call3 = call dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef 16) #10
  %part = getelementptr inbounds %struct.BF_PartHolder, ptr %1, i64 0, i32 1
  store ptr %call3, ptr %part, align 8
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %cond.true10, label %cond.end12

cond.true10:                                      ; preds = %cond.end
  call void @__assert_rtn(ptr noundef nonnull @__func__.BF_newPartHolder, ptr noundef nonnull @.str, i32 noundef 446, ptr noundef nonnull @.str.5) #9
  unreachable

cond.end12:                                       ; preds = %cond.end
  %2 = load i32, ptr %max_elements.addr, align 4
  %conv13 = sext i32 %2 to i64
  %call14 = call ptr @calloc(i64 noundef %conv13, i64 noundef 8) #10
  %3 = load ptr, ptr %newPH, align 8
  %part15 = getelementptr inbounds %struct.BF_PartHolder, ptr %3, i64 0, i32 1
  %4 = load ptr, ptr %part15, align 8
  %element = getelementptr inbounds %struct.BF_BitstreamPart, ptr %4, i64 0, i32 1
  store ptr %call14, ptr %element, align 8
  %5 = load i32, ptr %max_elements.addr, align 4
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end12
  %6 = load ptr, ptr %newPH, align 8
  %part17 = getelementptr inbounds %struct.BF_PartHolder, ptr %6, i64 0, i32 1
  %7 = load ptr, ptr %part17, align 8
  %element18 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %7, i64 0, i32 1
  %8 = load ptr, ptr %element18, align 8
  %tobool19.not = icmp eq ptr %8, null
  br i1 %tobool19.not, label %cond.true24, label %if.end

cond.true24:                                      ; preds = %if.then
  call void @__assert_rtn(ptr noundef nonnull @__func__.BF_newPartHolder, ptr noundef nonnull @.str, i32 noundef 448, ptr noundef nonnull @.str.6) #9
  unreachable

if.end:                                           ; preds = %if.then, %cond.end12
  %9 = load ptr, ptr %newPH, align 8
  %part27 = getelementptr inbounds %struct.BF_PartHolder, ptr %9, i64 0, i32 1
  %10 = load ptr, ptr %part27, align 8
  store i32 0, ptr %10, align 8
  ret ptr %9
}

; Function Attrs: allocsize(0,1)
declare ptr @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: nounwind ssp uwtable
define ptr @BF_NewHolderFromBitstreamPart(ptr noundef %thePart) #0 {
entry:
  %0 = load i32, ptr %thePart, align 8
  %call = call ptr @BF_newPartHolder(i32 noundef %0)
  %call1 = call ptr @BF_LoadHolderFromBitstreamPart(ptr noundef %call, ptr noundef nonnull %thePart)
  ret ptr %call1
}

; Function Attrs: nounwind ssp uwtable
define ptr @BF_LoadHolderFromBitstreamPart(ptr noundef %theHolder, ptr noundef %thePart) #0 {
entry:
  %theHolder.addr = alloca ptr, align 8
  %thePart.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %theHolder, ptr %theHolder.addr, align 8
  store ptr %thePart, ptr %thePart.addr, align 8
  %part = getelementptr inbounds %struct.BF_PartHolder, ptr %theHolder, i64 0, i32 1
  %0 = load ptr, ptr %part, align 8
  store i32 0, ptr %0, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %1 = load ptr, ptr %thePart.addr, align 8
  %2 = load i32, ptr %1, align 8
  %cmp = icmp ult i32 %storemerge, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %thePart.addr, align 8
  %element = getelementptr inbounds %struct.BF_BitstreamPart, ptr %3, i64 0, i32 1
  %4 = load ptr, ptr %element, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct.BF_BitstreamElement, ptr %4, i64 %idxprom
  %6 = load ptr, ptr %theHolder.addr, align 8
  %call = call ptr @BF_addElement(ptr noundef %6, ptr noundef %arrayidx)
  store ptr %call, ptr %theHolder.addr, align 8
  %7 = load i32, ptr %i, align 4
  %inc = add i32 %7, 1
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %for.cond
  %8 = load ptr, ptr %theHolder.addr, align 8
  ret ptr %8
}

; Function Attrs: nounwind ssp uwtable
define ptr @BF_addElement(ptr noundef %thePH, ptr noundef %theElement) #0 {
entry:
  %thePH.addr = alloca ptr, align 8
  %theElement.addr = alloca ptr, align 8
  %retPH = alloca ptr, align 8
  %needed_entries = alloca i32, align 4
  %extraPad = alloca i32, align 4
  store ptr %thePH, ptr %thePH.addr, align 8
  store ptr %theElement, ptr %theElement.addr, align 8
  store ptr %thePH, ptr %retPH, align 8
  %part = getelementptr inbounds %struct.BF_PartHolder, ptr %thePH, i64 0, i32 1
  %0 = load ptr, ptr %part, align 8
  %1 = load i32, ptr %0, align 8
  %add = add i32 %1, 1
  store i32 %add, ptr %needed_entries, align 4
  store i32 8, ptr %extraPad, align 4
  %2 = load ptr, ptr %thePH.addr, align 8
  %3 = load i32, ptr %2, align 8
  %cmp = icmp sgt i32 %add, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %thePH.addr, align 8
  %5 = load i32, ptr %needed_entries, align 4
  %6 = load i32, ptr %extraPad, align 4
  %add1 = add nsw i32 %5, %6
  %call = call ptr @BF_resizePartHolder(ptr noundef %4, i32 noundef %add1)
  store ptr %call, ptr %retPH, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %retPH, align 8
  %part2 = getelementptr inbounds %struct.BF_PartHolder, ptr %7, i64 0, i32 1
  %8 = load ptr, ptr %part2, align 8
  %element = getelementptr inbounds %struct.BF_BitstreamPart, ptr %8, i64 0, i32 1
  %9 = load ptr, ptr %element, align 8
  %10 = load i32, ptr %8, align 8
  %inc = add i32 %10, 1
  store i32 %inc, ptr %8, align 8
  %idxprom = zext i32 %10 to i64
  %arrayidx = getelementptr inbounds %struct.BF_BitstreamElement, ptr %9, i64 %idxprom
  %11 = load ptr, ptr %theElement.addr, align 8
  %12 = load i64, ptr %11, align 4
  store i64 %12, ptr %arrayidx, align 4
  %13 = load ptr, ptr %retPH, align 8
  ret ptr %13
}

; Function Attrs: nounwind ssp uwtable
define ptr @BF_resizePartHolder(ptr noundef %oldPH, i32 noundef %max_elements) #0 {
entry:
  %thePH.addr.i = alloca ptr, align 8
  %oldPH.addr = alloca ptr, align 8
  %max_elements.addr = alloca i32, align 4
  %elems = alloca i32, align 4
  %i = alloca i32, align 4
  %newPH = alloca ptr, align 8
  store ptr %oldPH, ptr %oldPH.addr, align 8
  store i32 %max_elements, ptr %max_elements.addr, align 4
  %call = call ptr @BF_newPartHolder(i32 noundef %max_elements)
  store ptr %call, ptr %newPH, align 8
  %0 = load i32, ptr %oldPH, align 8
  %cmp = icmp sgt i32 %0, %max_elements
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, ptr %max_elements.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load ptr, ptr %oldPH.addr, align 8
  %3 = load i32, ptr %2, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ %3, %cond.false ]
  store i32 %cond, ptr %elems, align 4
  %4 = load ptr, ptr %newPH, align 8
  %part = getelementptr inbounds %struct.BF_PartHolder, ptr %4, i64 0, i32 1
  %5 = load ptr, ptr %part, align 8
  store i32 %cond, ptr %5, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %cond.end
  %storemerge = phi i32 [ 0, %cond.end ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %6 = load i32, ptr %elems, align 4
  %cmp3 = icmp slt i32 %storemerge, %6
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %newPH, align 8
  %part4 = getelementptr inbounds %struct.BF_PartHolder, ptr %7, i64 0, i32 1
  %8 = load ptr, ptr %part4, align 8
  %element = getelementptr inbounds %struct.BF_BitstreamPart, ptr %8, i64 0, i32 1
  %9 = load ptr, ptr %element, align 8
  %10 = load i32, ptr %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds %struct.BF_BitstreamElement, ptr %9, i64 %idxprom
  %11 = load ptr, ptr %oldPH.addr, align 8
  %part5 = getelementptr inbounds %struct.BF_PartHolder, ptr %11, i64 0, i32 1
  %12 = load ptr, ptr %part5, align 8
  %element6 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %12, i64 0, i32 1
  %13 = load ptr, ptr %element6, align 8
  %14 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %14 to i64
  %arrayidx8 = getelementptr inbounds %struct.BF_BitstreamElement, ptr %13, i64 %idxprom7
  %15 = load i64, ptr %arrayidx8, align 4
  store i64 %15, ptr %arrayidx, align 4
  %16 = load i32, ptr %i, align 4
  %inc = add nsw i32 %16, 1
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.cond
  %17 = load ptr, ptr %oldPH.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %thePH.addr.i)
  store ptr %17, ptr %thePH.addr.i, align 8
  %part.i = getelementptr inbounds %struct.BF_PartHolder, ptr %17, i64 0, i32 1
  %18 = load ptr, ptr %part.i, align 8
  %element.i = getelementptr inbounds %struct.BF_BitstreamPart, ptr %18, i64 0, i32 1
  %19 = load ptr, ptr %element.i, align 8
  call void @free(ptr noundef %19) #12
  %part1.i = getelementptr inbounds %struct.BF_PartHolder, ptr %17, i64 0, i32 1
  %20 = load ptr, ptr %part1.i, align 8
  call void @free(ptr noundef %20) #12
  %21 = load ptr, ptr %thePH.addr.i, align 8
  call void @free(ptr noundef %21) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %thePH.addr.i)
  %22 = load ptr, ptr %newPH, align 8
  ret ptr %22
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind ssp uwtable
define ptr @BF_freePartHolder(ptr noundef %thePH) #0 {
entry:
  %thePH.addr = alloca ptr, align 8
  store ptr %thePH, ptr %thePH.addr, align 8
  %part = getelementptr inbounds %struct.BF_PartHolder, ptr %thePH, i64 0, i32 1
  %0 = load ptr, ptr %part, align 8
  %element = getelementptr inbounds %struct.BF_BitstreamPart, ptr %0, i64 0, i32 1
  %1 = load ptr, ptr %element, align 8
  call void @free(ptr noundef %1) #12
  %part1 = getelementptr inbounds %struct.BF_PartHolder, ptr %thePH, i64 0, i32 1
  %2 = load ptr, ptr %part1, align 8
  call void @free(ptr noundef %2) #12
  %3 = load ptr, ptr %thePH.addr, align 8
  call void @free(ptr noundef %3) #12
  ret ptr null
}

declare void @free(ptr noundef) #4

; Function Attrs: nounwind ssp uwtable
define ptr @BF_addEntry(ptr noundef %thePH, i32 noundef %value, i32 noundef %length) #0 {
entry:
  %thePH.addr = alloca ptr, align 8
  %myElement = alloca %struct.BF_BitstreamElement, align 4
  store ptr %thePH, ptr %thePH.addr, align 8
  store i32 %value, ptr %myElement, align 4
  %conv = trunc i32 %length to i16
  %length2 = getelementptr inbounds %struct.BF_BitstreamElement, ptr %myElement, i64 0, i32 1
  store i16 %conv, ptr %length2, align 4
  %tobool.not = icmp eq i32 %length, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %thePH.addr, align 8
  %call = call ptr @BF_addElement(ptr noundef %0, ptr noundef nonnull %myElement)
  br label %return

if.else:                                          ; preds = %entry
  %1 = load ptr, ptr %thePH.addr, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi ptr [ %1, %if.else ], [ %call, %if.then ]
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @writePartMainData(ptr noundef %part, ptr noundef %results) #0 {
entry:
  %part.addr = alloca ptr, align 8
  %results.addr = alloca ptr, align 8
  %ep = alloca ptr, align 8
  %i = alloca i32, align 4
  %bits = alloca i32, align 4
  store ptr %part, ptr %part.addr, align 8
  store ptr %results, ptr %results.addr, align 8
  store i32 0, ptr %bits, align 4
  %tobool.not = icmp eq ptr %results, null
  br i1 %tobool.not, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__.writePartMainData, ptr noundef nonnull @.str, i32 noundef 157, ptr noundef nonnull @.str.7) #9
  unreachable

cond.end:                                         ; preds = %entry
  %0 = load ptr, ptr %part.addr, align 8
  %tobool2.not = icmp eq ptr %0, null
  br i1 %tobool2.not, label %cond.true7, label %cond.end9

cond.true7:                                       ; preds = %cond.end
  call void @__assert_rtn(ptr noundef nonnull @__func__.writePartMainData, ptr noundef nonnull @.str, i32 noundef 158, ptr noundef nonnull @.str.8) #9
  unreachable

cond.end9:                                        ; preds = %cond.end
  %1 = load ptr, ptr %part.addr, align 8
  %element = getelementptr inbounds %struct.BF_BitstreamPart, ptr %1, i64 0, i32 1
  %2 = load ptr, ptr %element, align 8
  store ptr %2, ptr %ep, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %cond.end9
  %3 = load i32, ptr %i, align 4
  %4 = load ptr, ptr %part.addr, align 8
  %5 = load i32, ptr %4, align 8
  %cmp = icmp ult i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %ep, align 8
  %7 = load i32, ptr %6, align 4
  %length = getelementptr inbounds %struct.BF_BitstreamElement, ptr %6, i64 0, i32 1
  %8 = load i16, ptr %length, align 4
  %conv11 = zext i16 %8 to i32
  %9 = load ptr, ptr %results.addr, align 8
  call void @WriteMainDataBits(i32 noundef %7, i32 noundef %conv11, ptr noundef %9)
  %10 = load ptr, ptr %ep, align 8
  %length12 = getelementptr inbounds %struct.BF_BitstreamElement, ptr %10, i64 0, i32 1
  %11 = load i16, ptr %length12, align 4
  %conv13 = zext i16 %11 to i32
  %12 = load i32, ptr %bits, align 4
  %add = add nsw i32 %12, %conv13
  store i32 %add, ptr %bits, align 4
  %13 = load i32, ptr %i, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %i, align 4
  %14 = load ptr, ptr %ep, align 8
  %incdec.ptr = getelementptr inbounds %struct.BF_BitstreamElement, ptr %14, i64 1
  store ptr %incdec.ptr, ptr %ep, align 8
  br label %for.cond, !llvm.loop !23

for.end:                                          ; preds = %for.cond
  %15 = load i32, ptr %bits, align 4
  ret i32 %15
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @write_side_info() #0 {
entry:
  %si = alloca ptr, align 8
  %bits = alloca i32, align 4
  %ch = alloca i32, align 4
  %gr = alloca i32, align 4
  %wp = alloca ptr, align 8
  store ptr @writePartSideInfo, ptr %wp, align 8
  store i32 0, ptr %bits, align 4
  %call = call ptr @get_side_info()
  store ptr %call, ptr %si, align 8
  %0 = load i32, ptr %call, align 8
  store i32 %0, ptr @ThisFrameSize, align 4
  %headerPH = getelementptr inbounds %struct.MYSideInfo, ptr %call, i64 0, i32 4
  %1 = load ptr, ptr %headerPH, align 8
  %part = getelementptr inbounds %struct.BF_PartHolder, ptr %1, i64 0, i32 1
  %2 = load ptr, ptr %part, align 8
  %call1 = call i32 @writePartSideInfo(ptr noundef %2, ptr noundef null)
  %3 = load i32, ptr %bits, align 4
  %add = add nsw i32 %3, %call1
  store i32 %add, ptr %bits, align 4
  %4 = load ptr, ptr %wp, align 8
  %5 = load ptr, ptr %si, align 8
  %frameSIPH = getelementptr inbounds %struct.MYSideInfo, ptr %5, i64 0, i32 5
  %6 = load ptr, ptr %frameSIPH, align 8
  %part2 = getelementptr inbounds %struct.BF_PartHolder, ptr %6, i64 0, i32 1
  %7 = load ptr, ptr %part2, align 8
  %call3 = call i32 %4(ptr noundef %7, ptr noundef null) #12
  %8 = load i32, ptr %bits, align 4
  %add4 = add nsw i32 %8, %call3
  store i32 %add4, ptr %bits, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %ch, align 4
  %9 = load ptr, ptr %si, align 8
  %nChannels = getelementptr inbounds %struct.MYSideInfo, ptr %9, i64 0, i32 3
  %10 = load i32, ptr %nChannels, align 4
  %cmp = icmp slt i32 %storemerge, %10
  br i1 %cmp, label %for.body, label %for.cond8

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %wp, align 8
  %12 = load ptr, ptr %si, align 8
  %13 = load i32, ptr %ch, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds %struct.MYSideInfo, ptr %12, i64 0, i32 6, i64 %idxprom
  %14 = load ptr, ptr %arrayidx, align 8
  %part5 = getelementptr inbounds %struct.BF_PartHolder, ptr %14, i64 0, i32 1
  %15 = load ptr, ptr %part5, align 8
  %call6 = call i32 %11(ptr noundef %15, ptr noundef null) #12
  %16 = load i32, ptr %bits, align 4
  %add7 = add nsw i32 %16, %call6
  store i32 %add7, ptr %bits, align 4
  %17 = load i32, ptr %ch, align 4
  %inc = add nsw i32 %17, 1
  br label %for.cond, !llvm.loop !24

for.cond8:                                        ; preds = %for.cond, %for.inc25
  %storemerge1 = phi i32 [ %inc26, %for.inc25 ], [ 0, %for.cond ]
  store i32 %storemerge1, ptr %gr, align 4
  %18 = load ptr, ptr %si, align 8
  %nGranules = getelementptr inbounds %struct.MYSideInfo, ptr %18, i64 0, i32 2
  %19 = load i32, ptr %nGranules, align 8
  %cmp9 = icmp slt i32 %storemerge1, %19
  br i1 %cmp9, label %for.cond11, label %for.end27

for.cond11:                                       ; preds = %for.cond8, %for.body14
  %storemerge2 = phi i32 [ %inc23, %for.body14 ], [ 0, %for.cond8 ]
  store i32 %storemerge2, ptr %ch, align 4
  %20 = load ptr, ptr %si, align 8
  %nChannels12 = getelementptr inbounds %struct.MYSideInfo, ptr %20, i64 0, i32 3
  %21 = load i32, ptr %nChannels12, align 4
  %cmp13 = icmp slt i32 %storemerge2, %21
  br i1 %cmp13, label %for.body14, label %for.inc25

for.body14:                                       ; preds = %for.cond11
  %22 = load ptr, ptr %wp, align 8
  %23 = load ptr, ptr %si, align 8
  %24 = load i32, ptr %gr, align 4
  %idxprom15 = sext i32 %24 to i64
  %25 = load i32, ptr %ch, align 4
  %idxprom17 = sext i32 %25 to i64
  %arrayidx18 = getelementptr inbounds %struct.MYSideInfo, ptr %23, i64 0, i32 7, i64 %idxprom15, i64 %idxprom17
  %26 = load ptr, ptr %arrayidx18, align 8
  %part19 = getelementptr inbounds %struct.BF_PartHolder, ptr %26, i64 0, i32 1
  %27 = load ptr, ptr %part19, align 8
  %call20 = call i32 %22(ptr noundef %27, ptr noundef null) #12
  %28 = load i32, ptr %bits, align 4
  %add21 = add nsw i32 %28, %call20
  store i32 %add21, ptr %bits, align 4
  %29 = load i32, ptr %ch, align 4
  %inc23 = add nsw i32 %29, 1
  br label %for.cond11, !llvm.loop !25

for.inc25:                                        ; preds = %for.cond11
  %30 = load i32, ptr %gr, align 4
  %inc26 = add nsw i32 %30, 1
  br label %for.cond8, !llvm.loop !26

for.end27:                                        ; preds = %for.cond8
  %31 = load i32, ptr %bits, align 4
  ret i32 %31
}

declare void @putMyBits(i32 noundef, i32 noundef) #4

; Function Attrs: nounwind ssp uwtable
define internal i32 @writePartSideInfo(ptr noundef %part, ptr noundef %results) #0 {
entry:
  %part.addr = alloca ptr, align 8
  %ep = alloca ptr, align 8
  %i = alloca i32, align 4
  %bits = alloca i32, align 4
  store ptr %part, ptr %part.addr, align 8
  store i32 0, ptr %bits, align 4
  %tobool.not = icmp eq ptr %part, null
  br i1 %tobool.not, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__.writePartSideInfo, ptr noundef nonnull @.str, i32 noundef 176, ptr noundef nonnull @.str.8) #9
  unreachable

cond.end:                                         ; preds = %entry
  %0 = load ptr, ptr %part.addr, align 8
  %element = getelementptr inbounds %struct.BF_BitstreamPart, ptr %0, i64 0, i32 1
  %1 = load ptr, ptr %element, align 8
  store ptr %1, ptr %ep, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %cond.end
  %2 = load i32, ptr %i, align 4
  %3 = load ptr, ptr %part.addr, align 8
  %4 = load i32, ptr %3, align 8
  %cmp = icmp ult i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %ep, align 8
  %6 = load i32, ptr %5, align 4
  %length = getelementptr inbounds %struct.BF_BitstreamElement, ptr %5, i64 0, i32 1
  %7 = load i16, ptr %length, align 4
  %conv3 = zext i16 %7 to i32
  call void @putMyBits(i32 noundef %6, i32 noundef %conv3) #12
  %length4 = getelementptr inbounds %struct.BF_BitstreamElement, ptr %5, i64 0, i32 1
  %8 = load i16, ptr %length4, align 4
  %conv5 = zext i16 %8 to i32
  %9 = load i32, ptr %bits, align 4
  %add = add nsw i32 %9, %conv5
  store i32 %add, ptr %bits, align 4
  %10 = load i32, ptr %i, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %i, align 4
  %11 = load ptr, ptr %ep, align 8
  %incdec.ptr = getelementptr inbounds %struct.BF_BitstreamElement, ptr %11, i64 1
  store ptr %incdec.ptr, ptr %ep, align 8
  br label %for.cond, !llvm.loop !27

for.end:                                          ; preds = %for.cond
  %12 = load i32, ptr %bits, align 4
  ret i32 %12
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @get_side_info() #0 {
entry:
  %f = alloca ptr, align 8
  %l = alloca ptr, align 8
  %0 = load ptr, ptr @side_queue_free, align 8
  store ptr %0, ptr %f, align 8
  %1 = load ptr, ptr @side_queue_head, align 8
  store ptr %1, ptr %l, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__.get_side_info, ptr noundef nonnull @.str, i32 noundef 384, ptr noundef nonnull @.str.13) #9
  unreachable

cond.end:                                         ; preds = %entry
  %2 = load ptr, ptr %l, align 8
  %3 = load ptr, ptr %2, align 8
  store ptr %3, ptr @side_queue_head, align 8
  store ptr %2, ptr @side_queue_free, align 8
  %4 = load ptr, ptr %f, align 8
  store ptr %4, ptr %2, align 8
  %side_info = getelementptr inbounds %struct.side_info_link, ptr %2, i64 0, i32 1
  ret ptr %side_info
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #4

; Function Attrs: noreturn
declare void @exit(i32 noundef) #5

; Function Attrs: nounwind ssp uwtable
define internal void @free_side_info_link(ptr noundef %l) #0 {
entry:
  %l.addr = alloca ptr, align 8
  %gr = alloca i32, align 4
  %ch = alloca i32, align 4
  store ptr %l, ptr %l.addr, align 8
  %headerPH = getelementptr inbounds %struct.side_info_link, ptr %l, i64 0, i32 1, i32 4
  %0 = load ptr, ptr %headerPH, align 8
  %call = call ptr @BF_freePartHolder(ptr noundef %0)
  %headerPH2 = getelementptr inbounds %struct.side_info_link, ptr %l, i64 0, i32 1, i32 4
  store ptr %call, ptr %headerPH2, align 8
  %frameSIPH = getelementptr inbounds %struct.side_info_link, ptr %l, i64 0, i32 1, i32 5
  %1 = load ptr, ptr %frameSIPH, align 8
  %call4 = call ptr @BF_freePartHolder(ptr noundef %1)
  %2 = load ptr, ptr %l.addr, align 8
  %frameSIPH6 = getelementptr inbounds %struct.side_info_link, ptr %2, i64 0, i32 1, i32 5
  store ptr %call4, ptr %frameSIPH6, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %ch, align 4
  %3 = load ptr, ptr %l.addr, align 8
  %nChannels = getelementptr inbounds %struct.side_info_link, ptr %3, i64 0, i32 1, i32 3
  %4 = load i32, ptr %nChannels, align 4
  %cmp = icmp slt i32 %storemerge, %4
  br i1 %cmp, label %for.body, label %for.cond14

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %l.addr, align 8
  %6 = load i32, ptr %ch, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds %struct.side_info_link, ptr %5, i64 0, i32 1, i32 6, i64 %idxprom
  %7 = load ptr, ptr %arrayidx, align 8
  %call9 = call ptr @BF_freePartHolder(ptr noundef %7)
  %idxprom12 = sext i32 %6 to i64
  %arrayidx13 = getelementptr inbounds %struct.side_info_link, ptr %5, i64 0, i32 1, i32 6, i64 %idxprom12
  store ptr %call9, ptr %arrayidx13, align 8
  %8 = load i32, ptr %ch, align 4
  %inc = add nsw i32 %8, 1
  br label %for.cond, !llvm.loop !28

for.cond14:                                       ; preds = %for.cond, %for.inc38
  %storemerge1 = phi i32 [ %inc39, %for.inc38 ], [ 0, %for.cond ]
  store i32 %storemerge1, ptr %gr, align 4
  %9 = load ptr, ptr %l.addr, align 8
  %nGranules = getelementptr inbounds %struct.side_info_link, ptr %9, i64 0, i32 1, i32 2
  %10 = load i32, ptr %nGranules, align 8
  %cmp16 = icmp slt i32 %storemerge1, %10
  br i1 %cmp16, label %for.cond18, label %for.end40

for.cond18:                                       ; preds = %for.cond14, %for.body22
  %storemerge2 = phi i32 [ %inc36, %for.body22 ], [ 0, %for.cond14 ]
  store i32 %storemerge2, ptr %ch, align 4
  %11 = load ptr, ptr %l.addr, align 8
  %nChannels20 = getelementptr inbounds %struct.side_info_link, ptr %11, i64 0, i32 1, i32 3
  %12 = load i32, ptr %nChannels20, align 4
  %cmp21 = icmp slt i32 %storemerge2, %12
  br i1 %cmp21, label %for.body22, label %for.inc38

for.body22:                                       ; preds = %for.cond18
  %13 = load ptr, ptr %l.addr, align 8
  %14 = load i32, ptr %gr, align 4
  %idxprom24 = sext i32 %14 to i64
  %15 = load i32, ptr %ch, align 4
  %idxprom26 = sext i32 %15 to i64
  %arrayidx27 = getelementptr inbounds %struct.side_info_link, ptr %13, i64 0, i32 1, i32 7, i64 %idxprom24, i64 %idxprom26
  %16 = load ptr, ptr %arrayidx27, align 8
  %call28 = call ptr @BF_freePartHolder(ptr noundef %16)
  %17 = load ptr, ptr %l.addr, align 8
  %18 = load i32, ptr %gr, align 4
  %idxprom31 = sext i32 %18 to i64
  %19 = load i32, ptr %ch, align 4
  %idxprom33 = sext i32 %19 to i64
  %arrayidx34 = getelementptr inbounds %struct.side_info_link, ptr %17, i64 0, i32 1, i32 7, i64 %idxprom31, i64 %idxprom33
  store ptr %call28, ptr %arrayidx34, align 8
  %20 = load i32, ptr %ch, align 4
  %inc36 = add nsw i32 %20, 1
  br label %for.cond18, !llvm.loop !29

for.inc38:                                        ; preds = %for.cond18
  %21 = load i32, ptr %gr, align 4
  %inc39 = add nsw i32 %21, 1
  br label %for.cond14, !llvm.loop !30

for.end40:                                        ; preds = %for.cond14
  %22 = load ptr, ptr %l.addr, align 8
  call void @free(ptr noundef %22) #12
  ret void
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define ptr @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_lame_formatBitstream_0(ptr noundef %thePH) #6 {
entry:
  %thePH.addr = alloca ptr, align 8
  store ptr %thePH, ptr %thePH.addr, align 8
  %part = getelementptr inbounds %struct.BF_PartHolder, ptr %thePH, i64 0, i32 1
  %0 = load ptr, ptr %part, align 8
  %element = getelementptr inbounds %struct.BF_BitstreamPart, ptr %0, i64 0, i32 1
  %1 = load ptr, ptr %element, align 8
  call void @free(ptr noundef %1) #12
  %part1 = getelementptr inbounds %struct.BF_PartHolder, ptr %thePH, i64 0, i32 1
  %2 = load ptr, ptr %part1, align 8
  call void @free(ptr noundef %2) #12
  %3 = load ptr, ptr %thePH.addr, align 8
  call void @free(ptr noundef %3) #12
  ret ptr null
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) #8

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { allocsize(0,1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { argmemonly nocallback nofree nounwind willreturn }
attributes #4 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { alwaysinline nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree nounwind }
attributes #9 = { cold noreturn nounwind }
attributes #10 = { nounwind allocsize(0,1) }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind }

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
