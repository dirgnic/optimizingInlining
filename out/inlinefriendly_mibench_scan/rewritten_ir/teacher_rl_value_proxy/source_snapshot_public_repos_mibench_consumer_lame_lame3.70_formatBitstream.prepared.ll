; ModuleID = './source_snapshot/public_repos/mibench/consumer/lame/lame3.70/formatBitstream.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/lame/lame3.70/formatBitstream.c"
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
  %0 = load ptr, ptr %frameInfo.addr, align 8
  %nGranules = getelementptr inbounds %struct.BF_FrameData, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %nGranules, align 4
  %cmp = icmp sle i32 %1, 2
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.BF_BitstreamFrame, ptr noundef @.str, i32 noundef 59, ptr noundef @.str.1) #6
  unreachable

2:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %2
  %3 = load ptr, ptr %frameInfo.addr, align 8
  %nChannels = getelementptr inbounds %struct.BF_FrameData, ptr %3, i32 0, i32 2
  %4 = load i32, ptr %nChannels, align 8
  %cmp1 = icmp sle i32 %4, 2
  %lnot3 = xor i1 %cmp1, true
  %lnot.ext4 = zext i1 %lnot3 to i32
  %conv5 = sext i32 %lnot.ext4 to i64
  %tobool6 = icmp ne i64 %conv5, 0
  br i1 %tobool6, label %cond.true7, label %cond.false8

cond.true7:                                       ; preds = %cond.end
  call void @__assert_rtn(ptr noundef @__func__.BF_BitstreamFrame, ptr noundef @.str, i32 noundef 60, ptr noundef @.str.2) #6
  unreachable

5:                                                ; No predecessors!
  br label %cond.end9

cond.false8:                                      ; preds = %cond.end
  br label %cond.end9

cond.end9:                                        ; preds = %cond.false8, %5
  %6 = load ptr, ptr %frameInfo.addr, align 8
  %call = call i32 @store_side_info(ptr noundef %6)
  %7 = load ptr, ptr %results.addr, align 8
  %SILength = getelementptr inbounds %struct.BF_FrameResults, ptr %7, i32 0, i32 0
  store i32 %call, ptr %SILength, align 4
  %8 = load ptr, ptr %frameInfo.addr, align 8
  %9 = load ptr, ptr %results.addr, align 8
  %call10 = call i32 @main_data(ptr noundef %8, ptr noundef %9)
  %10 = load ptr, ptr %results.addr, align 8
  %mainDataLength = getelementptr inbounds %struct.BF_FrameResults, ptr %10, i32 0, i32 1
  store i32 %call10, ptr %mainDataLength, align 4
  %11 = load i32, ptr @BitsRemaining, align 4
  %rem = srem i32 %11, 8
  %cmp11 = icmp eq i32 %rem, 0
  %lnot13 = xor i1 %cmp11, true
  %lnot.ext14 = zext i1 %lnot13 to i32
  %conv15 = sext i32 %lnot.ext14 to i64
  %tobool16 = icmp ne i64 %conv15, 0
  br i1 %tobool16, label %cond.true17, label %cond.false18

cond.true17:                                      ; preds = %cond.end9
  call void @__assert_rtn(ptr noundef @__func__.BF_BitstreamFrame, ptr noundef @.str, i32 noundef 74, ptr noundef @.str.3) #6
  unreachable

12:                                               ; No predecessors!
  br label %cond.end19

cond.false18:                                     ; preds = %cond.end9
  br label %cond.end19

cond.end19:                                       ; preds = %cond.false18, %12
  %call20 = call i32 @side_queue_elements(ptr noundef @forwardFrameLength, ptr noundef @forwardSILength)
  store i32 %call20, ptr @elements, align 4
  %13 = load i32, ptr @BitsRemaining, align 4
  %div = sdiv i32 %13, 8
  %14 = load i32, ptr @forwardFrameLength, align 4
  %div21 = sdiv i32 %14, 8
  %add = add nsw i32 %div, %div21
  %15 = load i32, ptr @forwardSILength, align 4
  %div22 = sdiv i32 %15, 8
  %sub = sub nsw i32 %add, %div22
  %16 = load ptr, ptr %results.addr, align 8
  %nextBackPtr = getelementptr inbounds %struct.BF_FrameResults, ptr %16, i32 0, i32 2
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
  %1 = load ptr, ptr %f, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call ptr @calloc(i64 noundef 1, i64 noundef 88) #7
  store ptr %call, ptr %l, align 8
  %2 = load ptr, ptr %l, align 8
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %3 = load ptr, ptr @__stderrp, align 8
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.14)
  call void @exit(i32 noundef 1) #8
  unreachable

if.end:                                           ; preds = %if.then
  %4 = load ptr, ptr %l, align 8
  %next = getelementptr inbounds %struct.side_info_link, ptr %4, i32 0, i32 0
  store ptr null, ptr %next, align 8
  %5 = load ptr, ptr %info.addr, align 8
  %header = getelementptr inbounds %struct.BF_FrameData, ptr %5, i32 0, i32 3
  %6 = load ptr, ptr %header, align 8
  %nrEntries = getelementptr inbounds %struct.BF_BitstreamPart, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %nrEntries, align 8
  %call4 = call ptr @BF_newPartHolder(i32 noundef %7)
  %8 = load ptr, ptr %l, align 8
  %side_info = getelementptr inbounds %struct.side_info_link, ptr %8, i32 0, i32 1
  %headerPH = getelementptr inbounds %struct.MYSideInfo, ptr %side_info, i32 0, i32 4
  store ptr %call4, ptr %headerPH, align 8
  %9 = load ptr, ptr %info.addr, align 8
  %frameSI = getelementptr inbounds %struct.BF_FrameData, ptr %9, i32 0, i32 4
  %10 = load ptr, ptr %frameSI, align 8
  %nrEntries5 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %10, i32 0, i32 0
  %11 = load i32, ptr %nrEntries5, align 8
  %call6 = call ptr @BF_newPartHolder(i32 noundef %11)
  %12 = load ptr, ptr %l, align 8
  %side_info7 = getelementptr inbounds %struct.side_info_link, ptr %12, i32 0, i32 1
  %frameSIPH = getelementptr inbounds %struct.MYSideInfo, ptr %side_info7, i32 0, i32 5
  store ptr %call6, ptr %frameSIPH, align 8
  store i32 0, ptr %ch, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load i32, ptr %ch, align 4
  %14 = load ptr, ptr %info.addr, align 8
  %nChannels = getelementptr inbounds %struct.BF_FrameData, ptr %14, i32 0, i32 2
  %15 = load i32, ptr %nChannels, align 8
  %cmp8 = icmp slt i32 %13, %15
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %info.addr, align 8
  %channelSI = getelementptr inbounds %struct.BF_FrameData, ptr %16, i32 0, i32 5
  %17 = load i32, ptr %ch, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds [2 x ptr], ptr %channelSI, i64 0, i64 %idxprom
  %18 = load ptr, ptr %arrayidx, align 8
  %nrEntries9 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %18, i32 0, i32 0
  %19 = load i32, ptr %nrEntries9, align 8
  %call10 = call ptr @BF_newPartHolder(i32 noundef %19)
  %20 = load ptr, ptr %l, align 8
  %side_info11 = getelementptr inbounds %struct.side_info_link, ptr %20, i32 0, i32 1
  %channelSIPH = getelementptr inbounds %struct.MYSideInfo, ptr %side_info11, i32 0, i32 6
  %21 = load i32, ptr %ch, align 4
  %idxprom12 = sext i32 %21 to i64
  %arrayidx13 = getelementptr inbounds [2 x ptr], ptr %channelSIPH, i64 0, i64 %idxprom12
  store ptr %call10, ptr %arrayidx13, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, ptr %ch, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, ptr %ch, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %gr, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc35, %for.end
  %23 = load i32, ptr %gr, align 4
  %24 = load ptr, ptr %info.addr, align 8
  %nGranules = getelementptr inbounds %struct.BF_FrameData, ptr %24, i32 0, i32 1
  %25 = load i32, ptr %nGranules, align 4
  %cmp15 = icmp slt i32 %23, %25
  br i1 %cmp15, label %for.body16, label %for.end37

for.body16:                                       ; preds = %for.cond14
  store i32 0, ptr %ch, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc32, %for.body16
  %26 = load i32, ptr %ch, align 4
  %27 = load ptr, ptr %info.addr, align 8
  %nChannels18 = getelementptr inbounds %struct.BF_FrameData, ptr %27, i32 0, i32 2
  %28 = load i32, ptr %nChannels18, align 8
  %cmp19 = icmp slt i32 %26, %28
  br i1 %cmp19, label %for.body20, label %for.end34

for.body20:                                       ; preds = %for.cond17
  %29 = load ptr, ptr %info.addr, align 8
  %spectrumSI = getelementptr inbounds %struct.BF_FrameData, ptr %29, i32 0, i32 6
  %30 = load i32, ptr %gr, align 4
  %idxprom21 = sext i32 %30 to i64
  %arrayidx22 = getelementptr inbounds [2 x [2 x ptr]], ptr %spectrumSI, i64 0, i64 %idxprom21
  %31 = load i32, ptr %ch, align 4
  %idxprom23 = sext i32 %31 to i64
  %arrayidx24 = getelementptr inbounds [2 x ptr], ptr %arrayidx22, i64 0, i64 %idxprom23
  %32 = load ptr, ptr %arrayidx24, align 8
  %nrEntries25 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %32, i32 0, i32 0
  %33 = load i32, ptr %nrEntries25, align 8
  %call26 = call ptr @BF_newPartHolder(i32 noundef %33)
  %34 = load ptr, ptr %l, align 8
  %side_info27 = getelementptr inbounds %struct.side_info_link, ptr %34, i32 0, i32 1
  %spectrumSIPH = getelementptr inbounds %struct.MYSideInfo, ptr %side_info27, i32 0, i32 7
  %35 = load i32, ptr %gr, align 4
  %idxprom28 = sext i32 %35 to i64
  %arrayidx29 = getelementptr inbounds [2 x [2 x ptr]], ptr %spectrumSIPH, i64 0, i64 %idxprom28
  %36 = load i32, ptr %ch, align 4
  %idxprom30 = sext i32 %36 to i64
  %arrayidx31 = getelementptr inbounds [2 x ptr], ptr %arrayidx29, i64 0, i64 %idxprom30
  store ptr %call26, ptr %arrayidx31, align 8
  br label %for.inc32

for.inc32:                                        ; preds = %for.body20
  %37 = load i32, ptr %ch, align 4
  %inc33 = add nsw i32 %37, 1
  store i32 %inc33, ptr %ch, align 4
  br label %for.cond17, !llvm.loop !8

for.end34:                                        ; preds = %for.cond17
  br label %for.inc35

for.inc35:                                        ; preds = %for.end34
  %38 = load i32, ptr %gr, align 4
  %inc36 = add nsw i32 %38, 1
  store i32 %inc36, ptr %gr, align 4
  br label %for.cond14, !llvm.loop !9

for.end37:                                        ; preds = %for.cond14
  br label %if.end40

if.else:                                          ; preds = %entry
  %39 = load ptr, ptr %f, align 8
  %next38 = getelementptr inbounds %struct.side_info_link, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %next38, align 8
  store ptr %40, ptr @side_queue_free, align 8
  %41 = load ptr, ptr %f, align 8
  %next39 = getelementptr inbounds %struct.side_info_link, ptr %41, i32 0, i32 0
  store ptr null, ptr %next39, align 8
  %42 = load ptr, ptr %f, align 8
  store ptr %42, ptr %l, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.else, %for.end37
  %43 = load ptr, ptr %info.addr, align 8
  %frameLength = getelementptr inbounds %struct.BF_FrameData, ptr %43, i32 0, i32 0
  %44 = load i32, ptr %frameLength, align 8
  %45 = load ptr, ptr %l, align 8
  %side_info41 = getelementptr inbounds %struct.side_info_link, ptr %45, i32 0, i32 1
  %frameLength42 = getelementptr inbounds %struct.MYSideInfo, ptr %side_info41, i32 0, i32 0
  store i32 %44, ptr %frameLength42, align 8
  %46 = load ptr, ptr %info.addr, align 8
  %nGranules43 = getelementptr inbounds %struct.BF_FrameData, ptr %46, i32 0, i32 1
  %47 = load i32, ptr %nGranules43, align 4
  %48 = load ptr, ptr %l, align 8
  %side_info44 = getelementptr inbounds %struct.side_info_link, ptr %48, i32 0, i32 1
  %nGranules45 = getelementptr inbounds %struct.MYSideInfo, ptr %side_info44, i32 0, i32 2
  store i32 %47, ptr %nGranules45, align 8
  %49 = load ptr, ptr %info.addr, align 8
  %nChannels46 = getelementptr inbounds %struct.BF_FrameData, ptr %49, i32 0, i32 2
  %50 = load i32, ptr %nChannels46, align 8
  %51 = load ptr, ptr %l, align 8
  %side_info47 = getelementptr inbounds %struct.side_info_link, ptr %51, i32 0, i32 1
  %nChannels48 = getelementptr inbounds %struct.MYSideInfo, ptr %side_info47, i32 0, i32 3
  store i32 %50, ptr %nChannels48, align 4
  %52 = load ptr, ptr %l, align 8
  %side_info49 = getelementptr inbounds %struct.side_info_link, ptr %52, i32 0, i32 1
  %headerPH50 = getelementptr inbounds %struct.MYSideInfo, ptr %side_info49, i32 0, i32 4
  %53 = load ptr, ptr %headerPH50, align 8
  %54 = load ptr, ptr %info.addr, align 8
  %header51 = getelementptr inbounds %struct.BF_FrameData, ptr %54, i32 0, i32 3
  %55 = load ptr, ptr %header51, align 8
  %call52 = call ptr @BF_LoadHolderFromBitstreamPart(ptr noundef %53, ptr noundef %55)
  %56 = load ptr, ptr %l, align 8
  %side_info53 = getelementptr inbounds %struct.side_info_link, ptr %56, i32 0, i32 1
  %headerPH54 = getelementptr inbounds %struct.MYSideInfo, ptr %side_info53, i32 0, i32 4
  store ptr %call52, ptr %headerPH54, align 8
  %57 = load ptr, ptr %l, align 8
  %side_info55 = getelementptr inbounds %struct.side_info_link, ptr %57, i32 0, i32 1
  %frameSIPH56 = getelementptr inbounds %struct.MYSideInfo, ptr %side_info55, i32 0, i32 5
  %58 = load ptr, ptr %frameSIPH56, align 8
  %59 = load ptr, ptr %info.addr, align 8
  %frameSI57 = getelementptr inbounds %struct.BF_FrameData, ptr %59, i32 0, i32 4
  %60 = load ptr, ptr %frameSI57, align 8
  %call58 = call ptr @BF_LoadHolderFromBitstreamPart(ptr noundef %58, ptr noundef %60)
  %61 = load ptr, ptr %l, align 8
  %side_info59 = getelementptr inbounds %struct.side_info_link, ptr %61, i32 0, i32 1
  %frameSIPH60 = getelementptr inbounds %struct.MYSideInfo, ptr %side_info59, i32 0, i32 5
  store ptr %call58, ptr %frameSIPH60, align 8
  %62 = load ptr, ptr %info.addr, align 8
  %header61 = getelementptr inbounds %struct.BF_FrameData, ptr %62, i32 0, i32 3
  %63 = load ptr, ptr %header61, align 8
  %call62 = call i32 @BF_PartLength(ptr noundef %63)
  %64 = load i32, ptr %bits, align 4
  %add = add nsw i32 %64, %call62
  store i32 %add, ptr %bits, align 4
  %65 = load ptr, ptr %info.addr, align 8
  %frameSI63 = getelementptr inbounds %struct.BF_FrameData, ptr %65, i32 0, i32 4
  %66 = load ptr, ptr %frameSI63, align 8
  %call64 = call i32 @BF_PartLength(ptr noundef %66)
  %67 = load i32, ptr %bits, align 4
  %add65 = add nsw i32 %67, %call64
  store i32 %add65, ptr %bits, align 4
  store i32 0, ptr %ch, align 4
  br label %for.cond66

for.cond66:                                       ; preds = %for.inc87, %if.end40
  %68 = load i32, ptr %ch, align 4
  %69 = load ptr, ptr %info.addr, align 8
  %nChannels67 = getelementptr inbounds %struct.BF_FrameData, ptr %69, i32 0, i32 2
  %70 = load i32, ptr %nChannels67, align 8
  %cmp68 = icmp slt i32 %68, %70
  br i1 %cmp68, label %for.body69, label %for.end89

for.body69:                                       ; preds = %for.cond66
  %71 = load ptr, ptr %l, align 8
  %side_info70 = getelementptr inbounds %struct.side_info_link, ptr %71, i32 0, i32 1
  %channelSIPH71 = getelementptr inbounds %struct.MYSideInfo, ptr %side_info70, i32 0, i32 6
  %72 = load i32, ptr %ch, align 4
  %idxprom72 = sext i32 %72 to i64
  %arrayidx73 = getelementptr inbounds [2 x ptr], ptr %channelSIPH71, i64 0, i64 %idxprom72
  %73 = load ptr, ptr %arrayidx73, align 8
  %74 = load ptr, ptr %info.addr, align 8
  %channelSI74 = getelementptr inbounds %struct.BF_FrameData, ptr %74, i32 0, i32 5
  %75 = load i32, ptr %ch, align 4
  %idxprom75 = sext i32 %75 to i64
  %arrayidx76 = getelementptr inbounds [2 x ptr], ptr %channelSI74, i64 0, i64 %idxprom75
  %76 = load ptr, ptr %arrayidx76, align 8
  %call77 = call ptr @BF_LoadHolderFromBitstreamPart(ptr noundef %73, ptr noundef %76)
  %77 = load ptr, ptr %l, align 8
  %side_info78 = getelementptr inbounds %struct.side_info_link, ptr %77, i32 0, i32 1
  %channelSIPH79 = getelementptr inbounds %struct.MYSideInfo, ptr %side_info78, i32 0, i32 6
  %78 = load i32, ptr %ch, align 4
  %idxprom80 = sext i32 %78 to i64
  %arrayidx81 = getelementptr inbounds [2 x ptr], ptr %channelSIPH79, i64 0, i64 %idxprom80
  store ptr %call77, ptr %arrayidx81, align 8
  %79 = load ptr, ptr %info.addr, align 8
  %channelSI82 = getelementptr inbounds %struct.BF_FrameData, ptr %79, i32 0, i32 5
  %80 = load i32, ptr %ch, align 4
  %idxprom83 = sext i32 %80 to i64
  %arrayidx84 = getelementptr inbounds [2 x ptr], ptr %channelSI82, i64 0, i64 %idxprom83
  %81 = load ptr, ptr %arrayidx84, align 8
  %call85 = call i32 @BF_PartLength(ptr noundef %81)
  %82 = load i32, ptr %bits, align 4
  %add86 = add nsw i32 %82, %call85
  store i32 %add86, ptr %bits, align 4
  br label %for.inc87

for.inc87:                                        ; preds = %for.body69
  %83 = load i32, ptr %ch, align 4
  %inc88 = add nsw i32 %83, 1
  store i32 %inc88, ptr %ch, align 4
  br label %for.cond66, !llvm.loop !10

for.end89:                                        ; preds = %for.cond66
  store i32 0, ptr %gr, align 4
  br label %for.cond90

for.cond90:                                       ; preds = %for.inc126, %for.end89
  %84 = load i32, ptr %gr, align 4
  %85 = load ptr, ptr %info.addr, align 8
  %nGranules91 = getelementptr inbounds %struct.BF_FrameData, ptr %85, i32 0, i32 1
  %86 = load i32, ptr %nGranules91, align 4
  %cmp92 = icmp slt i32 %84, %86
  br i1 %cmp92, label %for.body93, label %for.end128

for.body93:                                       ; preds = %for.cond90
  store i32 0, ptr %ch, align 4
  br label %for.cond94

for.cond94:                                       ; preds = %for.inc123, %for.body93
  %87 = load i32, ptr %ch, align 4
  %88 = load ptr, ptr %info.addr, align 8
  %nChannels95 = getelementptr inbounds %struct.BF_FrameData, ptr %88, i32 0, i32 2
  %89 = load i32, ptr %nChannels95, align 8
  %cmp96 = icmp slt i32 %87, %89
  br i1 %cmp96, label %for.body97, label %for.end125

for.body97:                                       ; preds = %for.cond94
  %90 = load ptr, ptr %l, align 8
  %side_info98 = getelementptr inbounds %struct.side_info_link, ptr %90, i32 0, i32 1
  %spectrumSIPH99 = getelementptr inbounds %struct.MYSideInfo, ptr %side_info98, i32 0, i32 7
  %91 = load i32, ptr %gr, align 4
  %idxprom100 = sext i32 %91 to i64
  %arrayidx101 = getelementptr inbounds [2 x [2 x ptr]], ptr %spectrumSIPH99, i64 0, i64 %idxprom100
  %92 = load i32, ptr %ch, align 4
  %idxprom102 = sext i32 %92 to i64
  %arrayidx103 = getelementptr inbounds [2 x ptr], ptr %arrayidx101, i64 0, i64 %idxprom102
  %93 = load ptr, ptr %arrayidx103, align 8
  %94 = load ptr, ptr %info.addr, align 8
  %spectrumSI104 = getelementptr inbounds %struct.BF_FrameData, ptr %94, i32 0, i32 6
  %95 = load i32, ptr %gr, align 4
  %idxprom105 = sext i32 %95 to i64
  %arrayidx106 = getelementptr inbounds [2 x [2 x ptr]], ptr %spectrumSI104, i64 0, i64 %idxprom105
  %96 = load i32, ptr %ch, align 4
  %idxprom107 = sext i32 %96 to i64
  %arrayidx108 = getelementptr inbounds [2 x ptr], ptr %arrayidx106, i64 0, i64 %idxprom107
  %97 = load ptr, ptr %arrayidx108, align 8
  %call109 = call ptr @BF_LoadHolderFromBitstreamPart(ptr noundef %93, ptr noundef %97)
  %98 = load ptr, ptr %l, align 8
  %side_info110 = getelementptr inbounds %struct.side_info_link, ptr %98, i32 0, i32 1
  %spectrumSIPH111 = getelementptr inbounds %struct.MYSideInfo, ptr %side_info110, i32 0, i32 7
  %99 = load i32, ptr %gr, align 4
  %idxprom112 = sext i32 %99 to i64
  %arrayidx113 = getelementptr inbounds [2 x [2 x ptr]], ptr %spectrumSIPH111, i64 0, i64 %idxprom112
  %100 = load i32, ptr %ch, align 4
  %idxprom114 = sext i32 %100 to i64
  %arrayidx115 = getelementptr inbounds [2 x ptr], ptr %arrayidx113, i64 0, i64 %idxprom114
  store ptr %call109, ptr %arrayidx115, align 8
  %101 = load ptr, ptr %info.addr, align 8
  %spectrumSI116 = getelementptr inbounds %struct.BF_FrameData, ptr %101, i32 0, i32 6
  %102 = load i32, ptr %gr, align 4
  %idxprom117 = sext i32 %102 to i64
  %arrayidx118 = getelementptr inbounds [2 x [2 x ptr]], ptr %spectrumSI116, i64 0, i64 %idxprom117
  %103 = load i32, ptr %ch, align 4
  %idxprom119 = sext i32 %103 to i64
  %arrayidx120 = getelementptr inbounds [2 x ptr], ptr %arrayidx118, i64 0, i64 %idxprom119
  %104 = load ptr, ptr %arrayidx120, align 8
  %call121 = call i32 @BF_PartLength(ptr noundef %104)
  %105 = load i32, ptr %bits, align 4
  %add122 = add nsw i32 %105, %call121
  store i32 %add122, ptr %bits, align 4
  br label %for.inc123

for.inc123:                                       ; preds = %for.body97
  %106 = load i32, ptr %ch, align 4
  %inc124 = add nsw i32 %106, 1
  store i32 %inc124, ptr %ch, align 4
  br label %for.cond94, !llvm.loop !11

for.end125:                                       ; preds = %for.cond94
  br label %for.inc126

for.inc126:                                       ; preds = %for.end125
  %107 = load i32, ptr %gr, align 4
  %inc127 = add nsw i32 %107, 1
  store i32 %inc127, ptr %gr, align 4
  br label %for.cond90, !llvm.loop !12

for.end128:                                       ; preds = %for.cond90
  %108 = load i32, ptr %bits, align 4
  %109 = load ptr, ptr %l, align 8
  %side_info129 = getelementptr inbounds %struct.side_info_link, ptr %109, i32 0, i32 1
  %SILength = getelementptr inbounds %struct.MYSideInfo, ptr %side_info129, i32 0, i32 1
  store i32 %108, ptr %SILength, align 4
  %110 = load ptr, ptr @side_queue_head, align 8
  store ptr %110, ptr %f, align 8
  %111 = load ptr, ptr %f, align 8
  %cmp130 = icmp eq ptr %111, null
  br i1 %cmp130, label %if.then131, label %if.else132

if.then131:                                       ; preds = %for.end128
  %112 = load ptr, ptr %l, align 8
  store ptr %112, ptr @side_queue_head, align 8
  br label %if.end136

if.else132:                                       ; preds = %for.end128
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else132
  %113 = load ptr, ptr %f, align 8
  %next133 = getelementptr inbounds %struct.side_info_link, ptr %113, i32 0, i32 0
  %114 = load ptr, ptr %next133, align 8
  %tobool = icmp ne ptr %114, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %115 = load ptr, ptr %f, align 8
  %next134 = getelementptr inbounds %struct.side_info_link, ptr %115, i32 0, i32 0
  %116 = load ptr, ptr %next134, align 8
  store ptr %116, ptr %f, align 8
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %while.cond
  %117 = load ptr, ptr %l, align 8
  %118 = load ptr, ptr %f, align 8
  %next135 = getelementptr inbounds %struct.side_info_link, ptr %118, i32 0, i32 0
  store ptr %117, ptr %next135, align 8
  br label %if.end136

if.end136:                                        ; preds = %while.end, %if.then131
  %119 = load i32, ptr %bits, align 4
  ret i32 %119
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
  %0 = load ptr, ptr %results.addr, align 8
  %mainDataLength = getelementptr inbounds %struct.BF_FrameResults, ptr %0, i32 0, i32 1
  store i32 0, ptr %mainDataLength, align 4
  store i32 0, ptr %gr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %1 = load i32, ptr %gr, align 4
  %2 = load ptr, ptr %fi.addr, align 8
  %nGranules = getelementptr inbounds %struct.BF_FrameData, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %nGranules, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end20

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %ch, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load i32, ptr %ch, align 4
  %5 = load ptr, ptr %fi.addr, align 8
  %nChannels = getelementptr inbounds %struct.BF_FrameData, ptr %5, i32 0, i32 2
  %6 = load i32, ptr %nChannels, align 8
  %cmp2 = icmp slt i32 %4, %6
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %7 = load ptr, ptr %wp, align 8
  %8 = load ptr, ptr %fi.addr, align 8
  %scaleFactors = getelementptr inbounds %struct.BF_FrameData, ptr %8, i32 0, i32 7
  %9 = load i32, ptr %gr, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [2 x [2 x ptr]], ptr %scaleFactors, i64 0, i64 %idxprom
  %10 = load i32, ptr %ch, align 4
  %idxprom4 = sext i32 %10 to i64
  %arrayidx5 = getelementptr inbounds [2 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4
  %11 = load ptr, ptr %arrayidx5, align 8
  %12 = load ptr, ptr %results.addr, align 8
  %call = call i32 %7(ptr noundef %11, ptr noundef %12)
  %13 = load i32, ptr %bits, align 4
  %add = add nsw i32 %13, %call
  store i32 %add, ptr %bits, align 4
  %14 = load ptr, ptr %wp, align 8
  %15 = load ptr, ptr %fi.addr, align 8
  %codedData = getelementptr inbounds %struct.BF_FrameData, ptr %15, i32 0, i32 8
  %16 = load i32, ptr %gr, align 4
  %idxprom6 = sext i32 %16 to i64
  %arrayidx7 = getelementptr inbounds [2 x [2 x ptr]], ptr %codedData, i64 0, i64 %idxprom6
  %17 = load i32, ptr %ch, align 4
  %idxprom8 = sext i32 %17 to i64
  %arrayidx9 = getelementptr inbounds [2 x ptr], ptr %arrayidx7, i64 0, i64 %idxprom8
  %18 = load ptr, ptr %arrayidx9, align 8
  %19 = load ptr, ptr %results.addr, align 8
  %call10 = call i32 %14(ptr noundef %18, ptr noundef %19)
  %20 = load i32, ptr %bits, align 4
  %add11 = add nsw i32 %20, %call10
  store i32 %add11, ptr %bits, align 4
  %21 = load ptr, ptr %wp, align 8
  %22 = load ptr, ptr %fi.addr, align 8
  %userSpectrum = getelementptr inbounds %struct.BF_FrameData, ptr %22, i32 0, i32 9
  %23 = load i32, ptr %gr, align 4
  %idxprom12 = sext i32 %23 to i64
  %arrayidx13 = getelementptr inbounds [2 x [2 x ptr]], ptr %userSpectrum, i64 0, i64 %idxprom12
  %24 = load i32, ptr %ch, align 4
  %idxprom14 = sext i32 %24 to i64
  %arrayidx15 = getelementptr inbounds [2 x ptr], ptr %arrayidx13, i64 0, i64 %idxprom14
  %25 = load ptr, ptr %arrayidx15, align 8
  %26 = load ptr, ptr %results.addr, align 8
  %call16 = call i32 %21(ptr noundef %25, ptr noundef %26)
  %27 = load i32, ptr %bits, align 4
  %add17 = add nsw i32 %27, %call16
  store i32 %add17, ptr %bits, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %28 = load i32, ptr %ch, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, ptr %ch, align 4
  br label %for.cond1, !llvm.loop !14

for.end:                                          ; preds = %for.cond1
  br label %for.inc18

for.inc18:                                        ; preds = %for.end
  %29 = load i32, ptr %gr, align 4
  %inc19 = add nsw i32 %29, 1
  store i32 %inc19, ptr %gr, align 4
  br label %for.cond, !llvm.loop !15

for.end20:                                        ; preds = %for.cond
  %30 = load ptr, ptr %wp, align 8
  %31 = load ptr, ptr %fi.addr, align 8
  %userFrameData = getelementptr inbounds %struct.BF_FrameData, ptr %31, i32 0, i32 10
  %32 = load ptr, ptr %userFrameData, align 8
  %33 = load ptr, ptr %results.addr, align 8
  %call21 = call i32 %30(ptr noundef %32, ptr noundef %33)
  %34 = load i32, ptr %bits, align 4
  %add22 = add nsw i32 %34, %call21
  store i32 %add22, ptr %bits, align 4
  %35 = load i32, ptr %bits, align 4
  ret i32 %35
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
  %0 = load ptr, ptr %frameLength.addr, align 8
  store i32 0, ptr %0, align 4
  %1 = load ptr, ptr %SILength.addr, align 8
  store i32 0, ptr %1, align 4
  %2 = load ptr, ptr @side_queue_head, align 8
  store ptr %2, ptr %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %l, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %elements, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %elements, align 4
  %5 = load ptr, ptr %l, align 8
  %side_info = getelementptr inbounds %struct.side_info_link, ptr %5, i32 0, i32 1
  %frameLength1 = getelementptr inbounds %struct.MYSideInfo, ptr %side_info, i32 0, i32 0
  %6 = load i32, ptr %frameLength1, align 8
  %7 = load ptr, ptr %frameLength.addr, align 8
  %8 = load i32, ptr %7, align 4
  %add = add nsw i32 %8, %6
  store i32 %add, ptr %7, align 4
  %9 = load ptr, ptr %l, align 8
  %side_info2 = getelementptr inbounds %struct.side_info_link, ptr %9, i32 0, i32 1
  %SILength3 = getelementptr inbounds %struct.MYSideInfo, ptr %side_info2, i32 0, i32 1
  %10 = load i32, ptr %SILength3, align 4
  %11 = load ptr, ptr %SILength.addr, align 8
  %12 = load i32, ptr %11, align 4
  %add4 = add nsw i32 %12, %10
  store i32 %add4, ptr %11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load ptr, ptr %l, align 8
  %next = getelementptr inbounds %struct.side_info_link, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %next, align 8
  store ptr %14, ptr %l, align 8
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  %15 = load i32, ptr %elements, align 4
  ret i32 %15
}

; Function Attrs: nounwind ssp uwtable
define void @BF_FlushBitstream(ptr noundef %frameInfo, ptr noundef %results) #0 {
entry:
  %frameInfo.addr = alloca ptr, align 8
  %results.addr = alloca ptr, align 8
  %bitsRemaining = alloca i32, align 4
  %wordsRemaining = alloca i32, align 4
  store ptr %frameInfo, ptr %frameInfo.addr, align 8
  store ptr %results, ptr %results.addr, align 8
  %0 = load i32, ptr @elements, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr @forwardFrameLength, align 4
  %2 = load i32, ptr @forwardSILength, align 4
  %sub = sub nsw i32 %1, %2
  store i32 %sub, ptr %bitsRemaining, align 4
  %3 = load i32, ptr %bitsRemaining, align 4
  %div = sdiv i32 %3, 32
  store i32 %div, ptr %wordsRemaining, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %4 = load i32, ptr %wordsRemaining, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, ptr %wordsRemaining, align 4
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %results.addr, align 8
  call void @WriteMainDataBits(i32 noundef 0, i32 noundef 32, ptr noundef %5)
  br label %while.cond, !llvm.loop !17

while.end:                                        ; preds = %while.cond
  %6 = load i32, ptr %bitsRemaining, align 4
  %rem = srem i32 %6, 32
  %7 = load ptr, ptr %results.addr, align 8
  call void @WriteMainDataBits(i32 noundef 0, i32 noundef %rem, ptr noundef %7)
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  %8 = load i32, ptr @forwardFrameLength, align 4
  %9 = load i32, ptr @forwardSILength, align 4
  %sub2 = sub nsw i32 %8, %9
  %10 = load ptr, ptr %results.addr, align 8
  %mainDataLength = getelementptr inbounds %struct.BF_FrameResults, ptr %10, i32 0, i32 1
  store i32 %sub2, ptr %mainDataLength, align 4
  %11 = load i32, ptr @forwardSILength, align 4
  %12 = load ptr, ptr %results.addr, align 8
  %SILength = getelementptr inbounds %struct.BF_FrameResults, ptr %12, i32 0, i32 0
  store i32 %11, ptr %SILength, align 4
  %13 = load ptr, ptr %results.addr, align 8
  %nextBackPtr = getelementptr inbounds %struct.BF_FrameResults, ptr %13, i32 0, i32 2
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
  %results.addr = alloca ptr, align 8
  %extra = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  store i32 %nbits, ptr %nbits.addr, align 4
  store ptr %results, ptr %results.addr, align 8
  %0 = load i32, ptr %nbits.addr, align 4
  %cmp = icmp ule i32 %0, 32
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.WriteMainDataBits, ptr noundef @.str, i32 noundef 217, ptr noundef @.str.9) #6
  unreachable

1:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %1
  %2 = load i32, ptr %nbits.addr, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  br label %cond.end43

if.end:                                           ; preds = %cond.end
  %3 = load i32, ptr @BitCount, align 4
  %4 = load i32, ptr @ThisFrameSize, align 4
  %cmp3 = icmp eq i32 %3, %4
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %call = call i32 @write_side_info()
  store i32 %call, ptr @BitCount, align 4
  %5 = load i32, ptr @ThisFrameSize, align 4
  %6 = load i32, ptr @BitCount, align 4
  %sub = sub nsw i32 %5, %6
  store i32 %sub, ptr @BitsRemaining, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %7 = load i32, ptr %nbits.addr, align 4
  %8 = load i32, ptr @BitsRemaining, align 4
  %cmp7 = icmp ugt i32 %7, %8
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end6
  %9 = load i32, ptr %val.addr, align 4
  %10 = load i32, ptr %nbits.addr, align 4
  %11 = load i32, ptr @BitsRemaining, align 4
  %sub10 = sub i32 %10, %11
  %shr = lshr i32 %9, %sub10
  store i32 %shr, ptr %extra, align 4
  %12 = load i32, ptr @BitsRemaining, align 4
  %13 = load i32, ptr %nbits.addr, align 4
  %sub11 = sub i32 %13, %12
  store i32 %sub11, ptr %nbits.addr, align 4
  %14 = load i32, ptr %extra, align 4
  %15 = load i32, ptr @BitsRemaining, align 4
  call void @putMyBits(i32 noundef %14, i32 noundef %15)
  %call12 = call i32 @write_side_info()
  store i32 %call12, ptr @BitCount, align 4
  %16 = load i32, ptr @ThisFrameSize, align 4
  %17 = load i32, ptr @BitCount, align 4
  %sub13 = sub nsw i32 %16, %17
  store i32 %sub13, ptr @BitsRemaining, align 4
  %18 = load i32, ptr %val.addr, align 4
  %19 = load i32, ptr %nbits.addr, align 4
  call void @putMyBits(i32 noundef %18, i32 noundef %19)
  br label %if.end14

if.else:                                          ; preds = %if.end6
  %20 = load i32, ptr %val.addr, align 4
  %21 = load i32, ptr %nbits.addr, align 4
  call void @putMyBits(i32 noundef %20, i32 noundef %21)
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then9
  %22 = load i32, ptr %nbits.addr, align 4
  %23 = load i32, ptr @BitCount, align 4
  %add = add i32 %23, %22
  store i32 %add, ptr @BitCount, align 4
  %24 = load i32, ptr %nbits.addr, align 4
  %25 = load i32, ptr @BitsRemaining, align 4
  %sub15 = sub i32 %25, %24
  store i32 %sub15, ptr @BitsRemaining, align 4
  %26 = load i32, ptr @BitCount, align 4
  %27 = load i32, ptr @ThisFrameSize, align 4
  %cmp16 = icmp sle i32 %26, %27
  %lnot18 = xor i1 %cmp16, true
  %lnot.ext19 = zext i1 %lnot18 to i32
  %conv20 = sext i32 %lnot.ext19 to i64
  %tobool21 = icmp ne i64 %conv20, 0
  br i1 %tobool21, label %cond.true22, label %cond.false23

cond.true22:                                      ; preds = %if.end14
  call void @__assert_rtn(ptr noundef @__func__.WriteMainDataBits, ptr noundef @.str, i32 noundef 238, ptr noundef @.str.10) #6
  unreachable

28:                                               ; No predecessors!
  br label %cond.end24

cond.false23:                                     ; preds = %if.end14
  br label %cond.end24

cond.end24:                                       ; preds = %cond.false23, %28
  %29 = load i32, ptr @BitsRemaining, align 4
  %cmp25 = icmp sge i32 %29, 0
  %lnot27 = xor i1 %cmp25, true
  %lnot.ext28 = zext i1 %lnot27 to i32
  %conv29 = sext i32 %lnot.ext28 to i64
  %tobool30 = icmp ne i64 %conv29, 0
  br i1 %tobool30, label %cond.true31, label %cond.false32

cond.true31:                                      ; preds = %cond.end24
  call void @__assert_rtn(ptr noundef @__func__.WriteMainDataBits, ptr noundef @.str, i32 noundef 239, ptr noundef @.str.11) #6
  unreachable

30:                                               ; No predecessors!
  br label %cond.end33

cond.false32:                                     ; preds = %cond.end24
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false32, %30
  %31 = load i32, ptr @BitCount, align 4
  %32 = load i32, ptr @BitsRemaining, align 4
  %add34 = add nsw i32 %31, %32
  %33 = load i32, ptr @ThisFrameSize, align 4
  %cmp35 = icmp eq i32 %add34, %33
  %lnot37 = xor i1 %cmp35, true
  %lnot.ext38 = zext i1 %lnot37 to i32
  %conv39 = sext i32 %lnot.ext38 to i64
  %tobool40 = icmp ne i64 %conv39, 0
  br i1 %tobool40, label %cond.true41, label %cond.false42

cond.true41:                                      ; preds = %cond.end33
  call void @__assert_rtn(ptr noundef @__func__.WriteMainDataBits, ptr noundef @.str, i32 noundef 240, ptr noundef @.str.12) #6
  unreachable

34:                                               ; No predecessors!
  br label %cond.end43

cond.false42:                                     ; preds = %cond.end33
  br label %cond.end43

cond.end43:                                       ; preds = %if.then, %cond.false42, %34
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @free_side_queues() #0 {
entry:
  %l = alloca ptr, align 8
  %next = alloca ptr, align 8
  %0 = load ptr, ptr @side_queue_head, align 8
  store ptr %0, ptr %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %l, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %l, align 8
  %next1 = getelementptr inbounds %struct.side_info_link, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %next1, align 8
  store ptr %3, ptr %next, align 8
  %4 = load ptr, ptr %l, align 8
  call void @free_side_info_link(ptr noundef %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load ptr, ptr %next, align 8
  store ptr %5, ptr %l, align 8
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  store ptr null, ptr @side_queue_head, align 8
  %6 = load ptr, ptr @side_queue_free, align 8
  store ptr %6, ptr %l, align 8
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc6, %for.end
  %7 = load ptr, ptr %l, align 8
  %tobool3 = icmp ne ptr %7, null
  br i1 %tobool3, label %for.body4, label %for.end7

for.body4:                                        ; preds = %for.cond2
  %8 = load ptr, ptr %l, align 8
  %next5 = getelementptr inbounds %struct.side_info_link, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %next5, align 8
  store ptr %9, ptr %next, align 8
  %10 = load ptr, ptr %l, align 8
  call void @free_side_info_link(ptr noundef %10)
  br label %for.inc6

for.inc6:                                         ; preds = %for.body4
  %11 = load ptr, ptr %next, align 8
  store ptr %11, ptr %l, align 8
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
  %0 = load ptr, ptr %part.addr, align 8
  %element = getelementptr inbounds %struct.BF_BitstreamPart, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %element, align 8
  store ptr %1, ptr %ep, align 8
  store i32 0, ptr %bits, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %3 = load ptr, ptr %part.addr, align 8
  %nrEntries = getelementptr inbounds %struct.BF_BitstreamPart, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %nrEntries, align 8
  %cmp = icmp ult i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %ep, align 8
  %length = getelementptr inbounds %struct.BF_BitstreamElement, ptr %5, i32 0, i32 1
  %6 = load i16, ptr %length, align 4
  %conv = zext i16 %6 to i32
  %7 = load i32, ptr %bits, align 4
  %add = add nsw i32 %7, %conv
  store i32 %add, ptr %bits, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %i, align 4
  %9 = load ptr, ptr %ep, align 8
  %incdec.ptr = getelementptr inbounds %struct.BF_BitstreamElement, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %ep, align 8
  br label %for.cond, !llvm.loop !20

for.end:                                          ; preds = %for.cond
  %10 = load i32, ptr %bits, align 4
  ret i32 %10
}

; Function Attrs: nounwind ssp uwtable
define ptr @BF_newPartHolder(i32 noundef %max_elements) #0 {
entry:
  %max_elements.addr = alloca i32, align 4
  %newPH = alloca ptr, align 8
  store i32 %max_elements, ptr %max_elements.addr, align 4
  %call = call ptr @calloc(i64 noundef 1, i64 noundef 16) #7
  store ptr %call, ptr %newPH, align 8
  %0 = load ptr, ptr %newPH, align 8
  %tobool = icmp ne ptr %0, null
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool1 = icmp ne i64 %conv, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.BF_newPartHolder, ptr noundef @.str, i32 noundef 443, ptr noundef @.str.4) #6
  unreachable

1:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %1
  %2 = load i32, ptr %max_elements.addr, align 4
  %3 = load ptr, ptr %newPH, align 8
  %max_elements2 = getelementptr inbounds %struct.BF_PartHolder, ptr %3, i32 0, i32 0
  store i32 %2, ptr %max_elements2, align 8
  %call3 = call ptr @calloc(i64 noundef 1, i64 noundef 16) #7
  %4 = load ptr, ptr %newPH, align 8
  %part = getelementptr inbounds %struct.BF_PartHolder, ptr %4, i32 0, i32 1
  store ptr %call3, ptr %part, align 8
  %5 = load ptr, ptr %newPH, align 8
  %part4 = getelementptr inbounds %struct.BF_PartHolder, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %part4, align 8
  %tobool5 = icmp ne ptr %6, null
  %lnot6 = xor i1 %tobool5, true
  %lnot.ext7 = zext i1 %lnot6 to i32
  %conv8 = sext i32 %lnot.ext7 to i64
  %tobool9 = icmp ne i64 %conv8, 0
  br i1 %tobool9, label %cond.true10, label %cond.false11

cond.true10:                                      ; preds = %cond.end
  call void @__assert_rtn(ptr noundef @__func__.BF_newPartHolder, ptr noundef @.str, i32 noundef 446, ptr noundef @.str.5) #6
  unreachable

7:                                                ; No predecessors!
  br label %cond.end12

cond.false11:                                     ; preds = %cond.end
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false11, %7
  %8 = load i32, ptr %max_elements.addr, align 4
  %conv13 = sext i32 %8 to i64
  %call14 = call ptr @calloc(i64 noundef %conv13, i64 noundef 8) #7
  %9 = load ptr, ptr %newPH, align 8
  %part15 = getelementptr inbounds %struct.BF_PartHolder, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %part15, align 8
  %element = getelementptr inbounds %struct.BF_BitstreamPart, ptr %10, i32 0, i32 1
  store ptr %call14, ptr %element, align 8
  %11 = load i32, ptr %max_elements.addr, align 4
  %cmp = icmp sgt i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end12
  %12 = load ptr, ptr %newPH, align 8
  %part17 = getelementptr inbounds %struct.BF_PartHolder, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %part17, align 8
  %element18 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %element18, align 8
  %tobool19 = icmp ne ptr %14, null
  %lnot20 = xor i1 %tobool19, true
  %lnot.ext21 = zext i1 %lnot20 to i32
  %conv22 = sext i32 %lnot.ext21 to i64
  %tobool23 = icmp ne i64 %conv22, 0
  br i1 %tobool23, label %cond.true24, label %cond.false25

cond.true24:                                      ; preds = %if.then
  call void @__assert_rtn(ptr noundef @__func__.BF_newPartHolder, ptr noundef @.str, i32 noundef 448, ptr noundef @.str.6) #6
  unreachable

15:                                               ; No predecessors!
  br label %cond.end26

cond.false25:                                     ; preds = %if.then
  br label %cond.end26

cond.end26:                                       ; preds = %cond.false25, %15
  br label %if.end

if.end:                                           ; preds = %cond.end26, %cond.end12
  %16 = load ptr, ptr %newPH, align 8
  %part27 = getelementptr inbounds %struct.BF_PartHolder, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %part27, align 8
  %nrEntries = getelementptr inbounds %struct.BF_BitstreamPart, ptr %17, i32 0, i32 0
  store i32 0, ptr %nrEntries, align 8
  %18 = load ptr, ptr %newPH, align 8
  ret ptr %18
}

; Function Attrs: allocsize(0,1)
declare ptr @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: nounwind ssp uwtable
define ptr @BF_NewHolderFromBitstreamPart(ptr noundef %thePart) #0 {
entry:
  %thePart.addr = alloca ptr, align 8
  %newHolder = alloca ptr, align 8
  store ptr %thePart, ptr %thePart.addr, align 8
  %0 = load ptr, ptr %thePart.addr, align 8
  %nrEntries = getelementptr inbounds %struct.BF_BitstreamPart, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %nrEntries, align 8
  %call = call ptr @BF_newPartHolder(i32 noundef %1)
  store ptr %call, ptr %newHolder, align 8
  %2 = load ptr, ptr %newHolder, align 8
  %3 = load ptr, ptr %thePart.addr, align 8
  %call1 = call ptr @BF_LoadHolderFromBitstreamPart(ptr noundef %2, ptr noundef %3)
  ret ptr %call1
}

; Function Attrs: nounwind ssp uwtable
define ptr @BF_LoadHolderFromBitstreamPart(ptr noundef %theHolder, ptr noundef %thePart) #0 {
entry:
  %theHolder.addr = alloca ptr, align 8
  %thePart.addr = alloca ptr, align 8
  %pElem = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %theHolder, ptr %theHolder.addr, align 8
  store ptr %thePart, ptr %thePart.addr, align 8
  %0 = load ptr, ptr %theHolder.addr, align 8
  %part = getelementptr inbounds %struct.BF_PartHolder, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %part, align 8
  %nrEntries = getelementptr inbounds %struct.BF_BitstreamPart, ptr %1, i32 0, i32 0
  store i32 0, ptr %nrEntries, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %3 = load ptr, ptr %thePart.addr, align 8
  %nrEntries1 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %nrEntries1, align 8
  %cmp = icmp ult i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %thePart.addr, align 8
  %element = getelementptr inbounds %struct.BF_BitstreamPart, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %element, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds %struct.BF_BitstreamElement, ptr %6, i64 %idxprom
  store ptr %arrayidx, ptr %pElem, align 8
  %8 = load ptr, ptr %theHolder.addr, align 8
  %9 = load ptr, ptr %pElem, align 8
  %call = call ptr @BF_addElement(ptr noundef %8, ptr noundef %9)
  store ptr %call, ptr %theHolder.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %for.cond
  %11 = load ptr, ptr %theHolder.addr, align 8
  ret ptr %11
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
  %0 = load ptr, ptr %thePH.addr, align 8
  store ptr %0, ptr %retPH, align 8
  %1 = load ptr, ptr %thePH.addr, align 8
  %part = getelementptr inbounds %struct.BF_PartHolder, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %part, align 8
  %nrEntries = getelementptr inbounds %struct.BF_BitstreamPart, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %nrEntries, align 8
  %add = add i32 %3, 1
  store i32 %add, ptr %needed_entries, align 4
  store i32 8, ptr %extraPad, align 4
  %4 = load i32, ptr %needed_entries, align 4
  %5 = load ptr, ptr %thePH.addr, align 8
  %max_elements = getelementptr inbounds %struct.BF_PartHolder, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %max_elements, align 8
  %cmp = icmp sgt i32 %4, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %thePH.addr, align 8
  %8 = load i32, ptr %needed_entries, align 4
  %9 = load i32, ptr %extraPad, align 4
  %add1 = add nsw i32 %8, %9
  %call = call ptr @BF_resizePartHolder(ptr noundef %7, i32 noundef %add1)
  store ptr %call, ptr %retPH, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load ptr, ptr %retPH, align 8
  %part2 = getelementptr inbounds %struct.BF_PartHolder, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %part2, align 8
  %element = getelementptr inbounds %struct.BF_BitstreamPart, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %element, align 8
  %13 = load ptr, ptr %retPH, align 8
  %part3 = getelementptr inbounds %struct.BF_PartHolder, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %part3, align 8
  %nrEntries4 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %14, i32 0, i32 0
  %15 = load i32, ptr %nrEntries4, align 8
  %inc = add i32 %15, 1
  store i32 %inc, ptr %nrEntries4, align 8
  %idxprom = zext i32 %15 to i64
  %arrayidx = getelementptr inbounds %struct.BF_BitstreamElement, ptr %12, i64 %idxprom
  %16 = load ptr, ptr %theElement.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arrayidx, ptr align 4 %16, i64 8, i1 false)
  %17 = load ptr, ptr %retPH, align 8
  ret ptr %17
}

; Function Attrs: nounwind ssp uwtable
define ptr @BF_resizePartHolder(ptr noundef %oldPH, i32 noundef %max_elements) #0 {
entry:
  %oldPH.addr = alloca ptr, align 8
  %max_elements.addr = alloca i32, align 4
  %elems = alloca i32, align 4
  %i = alloca i32, align 4
  %newPH = alloca ptr, align 8
  store ptr %oldPH, ptr %oldPH.addr, align 8
  store i32 %max_elements, ptr %max_elements.addr, align 4
  %0 = load i32, ptr %max_elements.addr, align 4
  %call = call ptr @BF_newPartHolder(i32 noundef %0)
  store ptr %call, ptr %newPH, align 8
  %1 = load ptr, ptr %oldPH.addr, align 8
  %max_elements1 = getelementptr inbounds %struct.BF_PartHolder, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %max_elements1, align 8
  %3 = load i32, ptr %max_elements.addr, align 4
  %cmp = icmp sgt i32 %2, %3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load i32, ptr %max_elements.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load ptr, ptr %oldPH.addr, align 8
  %max_elements2 = getelementptr inbounds %struct.BF_PartHolder, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %max_elements2, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ %6, %cond.false ]
  store i32 %cond, ptr %elems, align 4
  %7 = load i32, ptr %elems, align 4
  %8 = load ptr, ptr %newPH, align 8
  %part = getelementptr inbounds %struct.BF_PartHolder, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %part, align 8
  %nrEntries = getelementptr inbounds %struct.BF_BitstreamPart, ptr %9, i32 0, i32 0
  store i32 %7, ptr %nrEntries, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %10 = load i32, ptr %i, align 4
  %11 = load i32, ptr %elems, align 4
  %cmp3 = icmp slt i32 %10, %11
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %newPH, align 8
  %part4 = getelementptr inbounds %struct.BF_PartHolder, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %part4, align 8
  %element = getelementptr inbounds %struct.BF_BitstreamPart, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %element, align 8
  %15 = load i32, ptr %i, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds %struct.BF_BitstreamElement, ptr %14, i64 %idxprom
  %16 = load ptr, ptr %oldPH.addr, align 8
  %part5 = getelementptr inbounds %struct.BF_PartHolder, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %part5, align 8
  %element6 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %element6, align 8
  %19 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %19 to i64
  %arrayidx8 = getelementptr inbounds %struct.BF_BitstreamElement, ptr %18, i64 %idxprom7
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arrayidx, ptr align 4 %arrayidx8, i64 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, ptr %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.cond
  %21 = load ptr, ptr %oldPH.addr, align 8
  %call9 = call ptr @pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_formatBitstream_0(ptr noundef %21)
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
  %0 = load ptr, ptr %thePH.addr, align 8
  %part = getelementptr inbounds %struct.BF_PartHolder, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %part, align 8
  %element = getelementptr inbounds %struct.BF_BitstreamPart, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %element, align 8
  call void @free(ptr noundef %2)
  %3 = load ptr, ptr %thePH.addr, align 8
  %part1 = getelementptr inbounds %struct.BF_PartHolder, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %part1, align 8
  call void @free(ptr noundef %4)
  %5 = load ptr, ptr %thePH.addr, align 8
  call void @free(ptr noundef %5)
  ret ptr null
}

declare void @free(ptr noundef) #4

; Function Attrs: nounwind ssp uwtable
define ptr @BF_addEntry(ptr noundef %thePH, i32 noundef %value, i32 noundef %length) #0 {
entry:
  %retval = alloca ptr, align 8
  %thePH.addr = alloca ptr, align 8
  %value.addr = alloca i32, align 4
  %length.addr = alloca i32, align 4
  %myElement = alloca %struct.BF_BitstreamElement, align 4
  store ptr %thePH, ptr %thePH.addr, align 8
  store i32 %value, ptr %value.addr, align 4
  store i32 %length, ptr %length.addr, align 4
  %0 = load i32, ptr %value.addr, align 4
  %value1 = getelementptr inbounds %struct.BF_BitstreamElement, ptr %myElement, i32 0, i32 0
  store i32 %0, ptr %value1, align 4
  %1 = load i32, ptr %length.addr, align 4
  %conv = trunc i32 %1 to i16
  %length2 = getelementptr inbounds %struct.BF_BitstreamElement, ptr %myElement, i32 0, i32 1
  store i16 %conv, ptr %length2, align 4
  %2 = load i32, ptr %length.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %thePH.addr, align 8
  %call = call ptr @BF_addElement(ptr noundef %3, ptr noundef %myElement)
  store ptr %call, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %thePH.addr, align 8
  store ptr %4, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load ptr, ptr %retval, align 8
  ret ptr %5
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
  %0 = load ptr, ptr %results.addr, align 8
  %tobool = icmp ne ptr %0, null
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool1 = icmp ne i64 %conv, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.writePartMainData, ptr noundef @.str, i32 noundef 157, ptr noundef @.str.7) #6
  unreachable

1:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %1
  %2 = load ptr, ptr %part.addr, align 8
  %tobool2 = icmp ne ptr %2, null
  %lnot3 = xor i1 %tobool2, true
  %lnot.ext4 = zext i1 %lnot3 to i32
  %conv5 = sext i32 %lnot.ext4 to i64
  %tobool6 = icmp ne i64 %conv5, 0
  br i1 %tobool6, label %cond.true7, label %cond.false8

cond.true7:                                       ; preds = %cond.end
  call void @__assert_rtn(ptr noundef @__func__.writePartMainData, ptr noundef @.str, i32 noundef 158, ptr noundef @.str.8) #6
  unreachable

3:                                                ; No predecessors!
  br label %cond.end9

cond.false8:                                      ; preds = %cond.end
  br label %cond.end9

cond.end9:                                        ; preds = %cond.false8, %3
  %4 = load ptr, ptr %part.addr, align 8
  %element = getelementptr inbounds %struct.BF_BitstreamPart, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %element, align 8
  store ptr %5, ptr %ep, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end9
  %6 = load i32, ptr %i, align 4
  %7 = load ptr, ptr %part.addr, align 8
  %nrEntries = getelementptr inbounds %struct.BF_BitstreamPart, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %nrEntries, align 8
  %cmp = icmp ult i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %ep, align 8
  %value = getelementptr inbounds %struct.BF_BitstreamElement, ptr %9, i32 0, i32 0
  %10 = load i32, ptr %value, align 4
  %11 = load ptr, ptr %ep, align 8
  %length = getelementptr inbounds %struct.BF_BitstreamElement, ptr %11, i32 0, i32 1
  %12 = load i16, ptr %length, align 4
  %conv11 = zext i16 %12 to i32
  %13 = load ptr, ptr %results.addr, align 8
  call void @WriteMainDataBits(i32 noundef %10, i32 noundef %conv11, ptr noundef %13)
  %14 = load ptr, ptr %ep, align 8
  %length12 = getelementptr inbounds %struct.BF_BitstreamElement, ptr %14, i32 0, i32 1
  %15 = load i16, ptr %length12, align 4
  %conv13 = zext i16 %15 to i32
  %16 = load i32, ptr %bits, align 4
  %add = add nsw i32 %16, %conv13
  store i32 %add, ptr %bits, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, ptr %i, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %i, align 4
  %18 = load ptr, ptr %ep, align 8
  %incdec.ptr = getelementptr inbounds %struct.BF_BitstreamElement, ptr %18, i32 1
  store ptr %incdec.ptr, ptr %ep, align 8
  br label %for.cond, !llvm.loop !23

for.end:                                          ; preds = %for.cond
  %19 = load i32, ptr %bits, align 4
  ret i32 %19
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
  %0 = load ptr, ptr %si, align 8
  %frameLength = getelementptr inbounds %struct.MYSideInfo, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %frameLength, align 8
  store i32 %1, ptr @ThisFrameSize, align 4
  %2 = load ptr, ptr %wp, align 8
  %3 = load ptr, ptr %si, align 8
  %headerPH = getelementptr inbounds %struct.MYSideInfo, ptr %3, i32 0, i32 4
  %4 = load ptr, ptr %headerPH, align 8
  %part = getelementptr inbounds %struct.BF_PartHolder, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %part, align 8
  %call1 = call i32 %2(ptr noundef %5, ptr noundef null)
  %6 = load i32, ptr %bits, align 4
  %add = add nsw i32 %6, %call1
  store i32 %add, ptr %bits, align 4
  %7 = load ptr, ptr %wp, align 8
  %8 = load ptr, ptr %si, align 8
  %frameSIPH = getelementptr inbounds %struct.MYSideInfo, ptr %8, i32 0, i32 5
  %9 = load ptr, ptr %frameSIPH, align 8
  %part2 = getelementptr inbounds %struct.BF_PartHolder, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %part2, align 8
  %call3 = call i32 %7(ptr noundef %10, ptr noundef null)
  %11 = load i32, ptr %bits, align 4
  %add4 = add nsw i32 %11, %call3
  store i32 %add4, ptr %bits, align 4
  store i32 0, ptr %ch, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, ptr %ch, align 4
  %13 = load ptr, ptr %si, align 8
  %nChannels = getelementptr inbounds %struct.MYSideInfo, ptr %13, i32 0, i32 3
  %14 = load i32, ptr %nChannels, align 4
  %cmp = icmp slt i32 %12, %14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %wp, align 8
  %16 = load ptr, ptr %si, align 8
  %channelSIPH = getelementptr inbounds %struct.MYSideInfo, ptr %16, i32 0, i32 6
  %17 = load i32, ptr %ch, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds [2 x ptr], ptr %channelSIPH, i64 0, i64 %idxprom
  %18 = load ptr, ptr %arrayidx, align 8
  %part5 = getelementptr inbounds %struct.BF_PartHolder, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %part5, align 8
  %call6 = call i32 %15(ptr noundef %19, ptr noundef null)
  %20 = load i32, ptr %bits, align 4
  %add7 = add nsw i32 %20, %call6
  store i32 %add7, ptr %bits, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, ptr %ch, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, ptr %ch, align 4
  br label %for.cond, !llvm.loop !24

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %gr, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc25, %for.end
  %22 = load i32, ptr %gr, align 4
  %23 = load ptr, ptr %si, align 8
  %nGranules = getelementptr inbounds %struct.MYSideInfo, ptr %23, i32 0, i32 2
  %24 = load i32, ptr %nGranules, align 8
  %cmp9 = icmp slt i32 %22, %24
  br i1 %cmp9, label %for.body10, label %for.end27

for.body10:                                       ; preds = %for.cond8
  store i32 0, ptr %ch, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc22, %for.body10
  %25 = load i32, ptr %ch, align 4
  %26 = load ptr, ptr %si, align 8
  %nChannels12 = getelementptr inbounds %struct.MYSideInfo, ptr %26, i32 0, i32 3
  %27 = load i32, ptr %nChannels12, align 4
  %cmp13 = icmp slt i32 %25, %27
  br i1 %cmp13, label %for.body14, label %for.end24

for.body14:                                       ; preds = %for.cond11
  %28 = load ptr, ptr %wp, align 8
  %29 = load ptr, ptr %si, align 8
  %spectrumSIPH = getelementptr inbounds %struct.MYSideInfo, ptr %29, i32 0, i32 7
  %30 = load i32, ptr %gr, align 4
  %idxprom15 = sext i32 %30 to i64
  %arrayidx16 = getelementptr inbounds [2 x [2 x ptr]], ptr %spectrumSIPH, i64 0, i64 %idxprom15
  %31 = load i32, ptr %ch, align 4
  %idxprom17 = sext i32 %31 to i64
  %arrayidx18 = getelementptr inbounds [2 x ptr], ptr %arrayidx16, i64 0, i64 %idxprom17
  %32 = load ptr, ptr %arrayidx18, align 8
  %part19 = getelementptr inbounds %struct.BF_PartHolder, ptr %32, i32 0, i32 1
  %33 = load ptr, ptr %part19, align 8
  %call20 = call i32 %28(ptr noundef %33, ptr noundef null)
  %34 = load i32, ptr %bits, align 4
  %add21 = add nsw i32 %34, %call20
  store i32 %add21, ptr %bits, align 4
  br label %for.inc22

for.inc22:                                        ; preds = %for.body14
  %35 = load i32, ptr %ch, align 4
  %inc23 = add nsw i32 %35, 1
  store i32 %inc23, ptr %ch, align 4
  br label %for.cond11, !llvm.loop !25

for.end24:                                        ; preds = %for.cond11
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %36 = load i32, ptr %gr, align 4
  %inc26 = add nsw i32 %36, 1
  store i32 %inc26, ptr %gr, align 4
  br label %for.cond8, !llvm.loop !26

for.end27:                                        ; preds = %for.cond8
  %37 = load i32, ptr %bits, align 4
  ret i32 %37
}

declare void @putMyBits(i32 noundef, i32 noundef) #4

; Function Attrs: nounwind ssp uwtable
define internal i32 @writePartSideInfo(ptr noundef %part, ptr noundef %results) #0 {
entry:
  %part.addr = alloca ptr, align 8
  %results.addr = alloca ptr, align 8
  %ep = alloca ptr, align 8
  %i = alloca i32, align 4
  %bits = alloca i32, align 4
  store ptr %part, ptr %part.addr, align 8
  store ptr %results, ptr %results.addr, align 8
  store i32 0, ptr %bits, align 4
  %0 = load ptr, ptr %part.addr, align 8
  %tobool = icmp ne ptr %0, null
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool1 = icmp ne i64 %conv, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.writePartSideInfo, ptr noundef @.str, i32 noundef 176, ptr noundef @.str.8) #6
  unreachable

1:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %1
  %2 = load ptr, ptr %part.addr, align 8
  %element = getelementptr inbounds %struct.BF_BitstreamPart, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %element, align 8
  store ptr %3, ptr %ep, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %4 = load i32, ptr %i, align 4
  %5 = load ptr, ptr %part.addr, align 8
  %nrEntries = getelementptr inbounds %struct.BF_BitstreamPart, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %nrEntries, align 8
  %cmp = icmp ult i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %ep, align 8
  %value = getelementptr inbounds %struct.BF_BitstreamElement, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %value, align 4
  %9 = load ptr, ptr %ep, align 8
  %length = getelementptr inbounds %struct.BF_BitstreamElement, ptr %9, i32 0, i32 1
  %10 = load i16, ptr %length, align 4
  %conv3 = zext i16 %10 to i32
  call void @putMyBits(i32 noundef %8, i32 noundef %conv3)
  %11 = load ptr, ptr %ep, align 8
  %length4 = getelementptr inbounds %struct.BF_BitstreamElement, ptr %11, i32 0, i32 1
  %12 = load i16, ptr %length4, align 4
  %conv5 = zext i16 %12 to i32
  %13 = load i32, ptr %bits, align 4
  %add = add nsw i32 %13, %conv5
  store i32 %add, ptr %bits, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %i, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %i, align 4
  %15 = load ptr, ptr %ep, align 8
  %incdec.ptr = getelementptr inbounds %struct.BF_BitstreamElement, ptr %15, i32 1
  store ptr %incdec.ptr, ptr %ep, align 8
  br label %for.cond, !llvm.loop !27

for.end:                                          ; preds = %for.cond
  %16 = load i32, ptr %bits, align 4
  ret i32 %16
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
  %2 = load ptr, ptr %l, align 8
  %tobool = icmp ne ptr %2, null
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool1 = icmp ne i64 %conv, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.get_side_info, ptr noundef @.str, i32 noundef 384, ptr noundef @.str.13) #6
  unreachable

3:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %3
  %4 = load ptr, ptr %l, align 8
  %next = getelementptr inbounds %struct.side_info_link, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %next, align 8
  store ptr %5, ptr @side_queue_head, align 8
  %6 = load ptr, ptr %l, align 8
  store ptr %6, ptr @side_queue_free, align 8
  %7 = load ptr, ptr %f, align 8
  %8 = load ptr, ptr %l, align 8
  %next2 = getelementptr inbounds %struct.side_info_link, ptr %8, i32 0, i32 0
  store ptr %7, ptr %next2, align 8
  %9 = load ptr, ptr %l, align 8
  %side_info = getelementptr inbounds %struct.side_info_link, ptr %9, i32 0, i32 1
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
  %0 = load ptr, ptr %l.addr, align 8
  %side_info = getelementptr inbounds %struct.side_info_link, ptr %0, i32 0, i32 1
  %headerPH = getelementptr inbounds %struct.MYSideInfo, ptr %side_info, i32 0, i32 4
  %1 = load ptr, ptr %headerPH, align 8
  %call = call ptr @BF_freePartHolder(ptr noundef %1)
  %2 = load ptr, ptr %l.addr, align 8
  %side_info1 = getelementptr inbounds %struct.side_info_link, ptr %2, i32 0, i32 1
  %headerPH2 = getelementptr inbounds %struct.MYSideInfo, ptr %side_info1, i32 0, i32 4
  store ptr %call, ptr %headerPH2, align 8
  %3 = load ptr, ptr %l.addr, align 8
  %side_info3 = getelementptr inbounds %struct.side_info_link, ptr %3, i32 0, i32 1
  %frameSIPH = getelementptr inbounds %struct.MYSideInfo, ptr %side_info3, i32 0, i32 5
  %4 = load ptr, ptr %frameSIPH, align 8
  %call4 = call ptr @BF_freePartHolder(ptr noundef %4)
  %5 = load ptr, ptr %l.addr, align 8
  %side_info5 = getelementptr inbounds %struct.side_info_link, ptr %5, i32 0, i32 1
  %frameSIPH6 = getelementptr inbounds %struct.MYSideInfo, ptr %side_info5, i32 0, i32 5
  store ptr %call4, ptr %frameSIPH6, align 8
  store i32 0, ptr %ch, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, ptr %ch, align 4
  %7 = load ptr, ptr %l.addr, align 8
  %side_info7 = getelementptr inbounds %struct.side_info_link, ptr %7, i32 0, i32 1
  %nChannels = getelementptr inbounds %struct.MYSideInfo, ptr %side_info7, i32 0, i32 3
  %8 = load i32, ptr %nChannels, align 4
  %cmp = icmp slt i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %l.addr, align 8
  %side_info8 = getelementptr inbounds %struct.side_info_link, ptr %9, i32 0, i32 1
  %channelSIPH = getelementptr inbounds %struct.MYSideInfo, ptr %side_info8, i32 0, i32 6
  %10 = load i32, ptr %ch, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [2 x ptr], ptr %channelSIPH, i64 0, i64 %idxprom
  %11 = load ptr, ptr %arrayidx, align 8
  %call9 = call ptr @BF_freePartHolder(ptr noundef %11)
  %12 = load ptr, ptr %l.addr, align 8
  %side_info10 = getelementptr inbounds %struct.side_info_link, ptr %12, i32 0, i32 1
  %channelSIPH11 = getelementptr inbounds %struct.MYSideInfo, ptr %side_info10, i32 0, i32 6
  %13 = load i32, ptr %ch, align 4
  %idxprom12 = sext i32 %13 to i64
  %arrayidx13 = getelementptr inbounds [2 x ptr], ptr %channelSIPH11, i64 0, i64 %idxprom12
  store ptr %call9, ptr %arrayidx13, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %ch, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %ch, align 4
  br label %for.cond, !llvm.loop !28

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %gr, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc38, %for.end
  %15 = load i32, ptr %gr, align 4
  %16 = load ptr, ptr %l.addr, align 8
  %side_info15 = getelementptr inbounds %struct.side_info_link, ptr %16, i32 0, i32 1
  %nGranules = getelementptr inbounds %struct.MYSideInfo, ptr %side_info15, i32 0, i32 2
  %17 = load i32, ptr %nGranules, align 8
  %cmp16 = icmp slt i32 %15, %17
  br i1 %cmp16, label %for.body17, label %for.end40

for.body17:                                       ; preds = %for.cond14
  store i32 0, ptr %ch, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc35, %for.body17
  %18 = load i32, ptr %ch, align 4
  %19 = load ptr, ptr %l.addr, align 8
  %side_info19 = getelementptr inbounds %struct.side_info_link, ptr %19, i32 0, i32 1
  %nChannels20 = getelementptr inbounds %struct.MYSideInfo, ptr %side_info19, i32 0, i32 3
  %20 = load i32, ptr %nChannels20, align 4
  %cmp21 = icmp slt i32 %18, %20
  br i1 %cmp21, label %for.body22, label %for.end37

for.body22:                                       ; preds = %for.cond18
  %21 = load ptr, ptr %l.addr, align 8
  %side_info23 = getelementptr inbounds %struct.side_info_link, ptr %21, i32 0, i32 1
  %spectrumSIPH = getelementptr inbounds %struct.MYSideInfo, ptr %side_info23, i32 0, i32 7
  %22 = load i32, ptr %gr, align 4
  %idxprom24 = sext i32 %22 to i64
  %arrayidx25 = getelementptr inbounds [2 x [2 x ptr]], ptr %spectrumSIPH, i64 0, i64 %idxprom24
  %23 = load i32, ptr %ch, align 4
  %idxprom26 = sext i32 %23 to i64
  %arrayidx27 = getelementptr inbounds [2 x ptr], ptr %arrayidx25, i64 0, i64 %idxprom26
  %24 = load ptr, ptr %arrayidx27, align 8
  %call28 = call ptr @BF_freePartHolder(ptr noundef %24)
  %25 = load ptr, ptr %l.addr, align 8
  %side_info29 = getelementptr inbounds %struct.side_info_link, ptr %25, i32 0, i32 1
  %spectrumSIPH30 = getelementptr inbounds %struct.MYSideInfo, ptr %side_info29, i32 0, i32 7
  %26 = load i32, ptr %gr, align 4
  %idxprom31 = sext i32 %26 to i64
  %arrayidx32 = getelementptr inbounds [2 x [2 x ptr]], ptr %spectrumSIPH30, i64 0, i64 %idxprom31
  %27 = load i32, ptr %ch, align 4
  %idxprom33 = sext i32 %27 to i64
  %arrayidx34 = getelementptr inbounds [2 x ptr], ptr %arrayidx32, i64 0, i64 %idxprom33
  store ptr %call28, ptr %arrayidx34, align 8
  br label %for.inc35

for.inc35:                                        ; preds = %for.body22
  %28 = load i32, ptr %ch, align 4
  %inc36 = add nsw i32 %28, 1
  store i32 %inc36, ptr %ch, align 4
  br label %for.cond18, !llvm.loop !29

for.end37:                                        ; preds = %for.cond18
  br label %for.inc38

for.inc38:                                        ; preds = %for.end37
  %29 = load i32, ptr %gr, align 4
  %inc39 = add nsw i32 %29, 1
  store i32 %inc39, ptr %gr, align 4
  br label %for.cond14, !llvm.loop !30

for.end40:                                        ; preds = %for.cond14
  %30 = load ptr, ptr %l.addr, align 8
  call void @free(ptr noundef %30)
  ret void
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { allocsize(0,1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { argmemonly nocallback nofree nounwind willreturn }
attributes #4 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { cold noreturn }
attributes #7 = { allocsize(0,1) }
attributes #8 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define ptr @pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_formatBitstream_0(ptr noundef %thePH)  alwaysinline#0 {
entry:
  %thePH.addr = alloca ptr, align 8
  store ptr %thePH, ptr %thePH.addr, align 8
  %0 = load ptr, ptr %thePH.addr, align 8
  %part = getelementptr inbounds %struct.BF_PartHolder, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %part, align 8
  %element = getelementptr inbounds %struct.BF_BitstreamPart, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %element, align 8
  call void @free(ptr noundef %2)
  %3 = load ptr, ptr %thePH.addr, align 8
  %part1 = getelementptr inbounds %struct.BF_PartHolder, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %part1, align 8
  call void @free(ptr noundef %4)
  %5 = load ptr, ptr %thePH.addr, align 8
  call void @free(ptr noundef %5)
  ret ptr null
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
