; ModuleID = './source_snapshot/public_repos/embench-iot/src/picojpeg/libpicojpeg.c'
source_filename = "./source_snapshot/public_repos/embench-iot/src/picojpeg/libpicojpeg.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.HuffTableT = type { [16 x i16], [16 x i16], [16 x i8] }
%struct.pjpeg_image_info_t = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }

@gWinogradQuant = constant [64 x i8] c"\80\B2\B2\A7\F6\A7\97\E8\E8\97\80\D1\DB\D1\80e\B2\C5\C5\B2eE\8B\A7\B1\A7\8BE#`\83\97\97\83`#1[v\80v[1.QeeQ.*EOE*#66#\1C%\1C\13\13\0A", align 1
@gCallbackStatus = internal global i8 0, align 1
@gNumMCUSRemaining = internal global i16 0, align 2
@g_pNeedBytesCallback = internal global ptr null, align 8
@g_pCallback_data = internal global ptr null, align 8
@gReduce = internal global i8 0, align 1
@gImageXSize = internal global i16 0, align 2
@gImageYSize = internal global i16 0, align 2
@gCompsInFrame = internal global i8 0, align 1
@gScanType = internal global i32 0, align 4
@gMaxMCUSPerRow = internal global i16 0, align 2
@gMaxMCUSPerCol = internal global i16 0, align 2
@gMaxMCUXSize = internal global i8 0, align 1
@gMaxMCUYSize = internal global i8 0, align 1
@gMCUBufR = internal global [256 x i8] zeroinitializer, align 1
@gMCUBufG = internal global [256 x i8] zeroinitializer, align 1
@gMCUBufB = internal global [256 x i8] zeroinitializer, align 1
@spectral_start = global i8 0, align 1
@spectral_end = global i8 0, align 1
@successive_high = global i8 0, align 1
@successive_low = global i8 0, align 1
@gRestartInterval = internal global i16 0, align 2
@gRestartsLeft = internal global i16 0, align 2
@gMaxBlocksPerMCU = internal global i8 0, align 1
@gMCUOrg = internal global [6 x i8] zeroinitializer, align 1
@gCompQuant = internal global [3 x i8] zeroinitializer, align 1
@gCompDCTab = internal global [3 x i8] zeroinitializer, align 1
@gQuant1 = internal global [64 x i16] zeroinitializer, align 2
@gQuant0 = internal global [64 x i16] zeroinitializer, align 2
@gHuffTab1 = internal global %struct.HuffTableT zeroinitializer, align 2
@gHuffTab0 = internal global %struct.HuffTableT zeroinitializer, align 2
@gHuffVal1 = internal global [16 x i8] zeroinitializer, align 1
@gHuffVal0 = internal global [16 x i8] zeroinitializer, align 1
@gLastDC = internal global [3 x i16] zeroinitializer, align 2
@gCoeffBuf = internal global [64 x i16] zeroinitializer, align 2
@gCompACTab = internal global [3 x i8] zeroinitializer, align 1
@gHuffTab3 = internal global %struct.HuffTableT zeroinitializer, align 2
@gHuffTab2 = internal global %struct.HuffTableT zeroinitializer, align 2
@gHuffVal3 = internal global [256 x i8] zeroinitializer, align 1
@gHuffVal2 = internal global [256 x i8] zeroinitializer, align 1
@ZAG = internal constant [64 x i8] c"\00\01\08\10\09\02\03\0A\11\18 \19\12\0B\04\05\0C\13\1A!(0)\22\1B\14\0D\06\07\0E\15\1C#*1892+$\1D\16\0F\17\1E%,3:;4-&\1F'.5<=6/7>?", align 1
@gNextRestartNum = internal global i16 0, align 2
@gBitsLeft = internal global i8 0, align 1
@gInBufLeft = internal global i8 0, align 1
@gTemFlag = internal global i8 0, align 1
@gInBuf = internal global [256 x i8] zeroinitializer, align 1
@gInBufOfs = internal global i8 0, align 1
@gBitBuf = internal global i16 0, align 2
@gCompsInScan = internal global i8 0, align 1
@gValidHuffTables = internal global i8 0, align 1
@gValidQuantTables = internal global i8 0, align 1
@gCompIdent = internal global [3 x i8] zeroinitializer, align 1
@gCompHSamp = internal global [3 x i8] zeroinitializer, align 1
@gCompVSamp = internal global [3 x i8] zeroinitializer, align 1
@gCompList = internal global [3 x i8] zeroinitializer, align 1

; Function Attrs: nounwind ssp uwtable
define zeroext i8 @pjpeg_decode_mcu() #0 {
entry:
  %retval = alloca i8, align 1
  %status = alloca i8, align 1
  %0 = load i8, ptr @gCallbackStatus, align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8, ptr @gCallbackStatus, align 1
  store i8 %1, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i16, ptr @gNumMCUSRemaining, align 2
  %tobool1 = icmp ne i16 %2, 0
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  store i8 1, ptr %retval, align 1
  br label %return

if.end3:                                          ; preds = %if.end
  %call = call zeroext i8 @decodeNextMCU()
  store i8 %call, ptr %status, align 1
  %3 = load i8, ptr %status, align 1
  %conv = zext i8 %3 to i32
  %tobool4 = icmp ne i32 %conv, 0
  br i1 %tobool4, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end3
  %4 = load i8, ptr @gCallbackStatus, align 1
  %conv5 = zext i8 %4 to i32
  %tobool6 = icmp ne i32 %conv5, 0
  br i1 %tobool6, label %if.then7, label %if.end13

if.then7:                                         ; preds = %lor.lhs.false, %if.end3
  %5 = load i8, ptr @gCallbackStatus, align 1
  %conv8 = zext i8 %5 to i32
  %tobool9 = icmp ne i32 %conv8, 0
  br i1 %tobool9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then7
  %6 = load i8, ptr @gCallbackStatus, align 1
  %conv10 = zext i8 %6 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then7
  %7 = load i8, ptr %status, align 1
  %conv11 = zext i8 %7 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv10, %cond.true ], [ %conv11, %cond.false ]
  %conv12 = trunc i32 %cond to i8
  store i8 %conv12, ptr %retval, align 1
  br label %return

if.end13:                                         ; preds = %lor.lhs.false
  %8 = load i16, ptr @gNumMCUSRemaining, align 2
  %dec = add i16 %8, -1
  store i16 %dec, ptr @gNumMCUSRemaining, align 2
  store i8 0, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end13, %cond.end, %if.then2, %if.then
  %9 = load i8, ptr %retval, align 1
  ret i8 %9
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @decodeNextMCU() #0 {
entry:
  %retval = alloca i8, align 1
  %status = alloca i8, align 1
  %mcuBlock = alloca i8, align 1
  %componentID = alloca i8, align 1
  %compQuant = alloca i8, align 1
  %compDCTab = alloca i8, align 1
  %numExtraBits = alloca i8, align 1
  %compACTab = alloca i8, align 1
  %k = alloca i8, align 1
  %pQ = alloca ptr, align 8
  %r = alloca i16, align 2
  %dc = alloca i16, align 2
  %s = alloca i8, align 1
  %extraBits = alloca i16, align 2
  %ac = alloca i16, align 2
  %0 = load i16, ptr @gRestartInterval, align 2
  %tobool = icmp ne i16 %0, 0
  br i1 %tobool, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %1 = load i16, ptr @gRestartsLeft, align 2
  %conv = zext i16 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.then
  %call = call zeroext i8 @processRestart()
  store i8 %call, ptr %status, align 1
  %2 = load i8, ptr %status, align 1
  %tobool3 = icmp ne i8 %2, 0
  br i1 %tobool3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then2
  %3 = load i8, ptr %status, align 1
  store i8 %3, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %if.then2
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  %4 = load i16, ptr @gRestartsLeft, align 2
  %dec = add i16 %4, -1
  store i16 %dec, ptr @gRestartsLeft, align 2
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %entry
  store i8 0, ptr %mcuBlock, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc201, %if.end6
  %5 = load i8, ptr %mcuBlock, align 1
  %conv7 = zext i8 %5 to i32
  %6 = load i8, ptr @gMaxBlocksPerMCU, align 1
  %conv8 = zext i8 %6 to i32
  %cmp9 = icmp slt i32 %conv7, %conv8
  br i1 %cmp9, label %for.body, label %for.end203

for.body:                                         ; preds = %for.cond
  %7 = load i8, ptr %mcuBlock, align 1
  %idxprom = zext i8 %7 to i64
  %arrayidx = getelementptr inbounds [6 x i8], ptr @gMCUOrg, i64 0, i64 %idxprom
  %8 = load i8, ptr %arrayidx, align 1
  store i8 %8, ptr %componentID, align 1
  %9 = load i8, ptr %componentID, align 1
  %idxprom11 = zext i8 %9 to i64
  %arrayidx12 = getelementptr inbounds [3 x i8], ptr @gCompQuant, i64 0, i64 %idxprom11
  %10 = load i8, ptr %arrayidx12, align 1
  store i8 %10, ptr %compQuant, align 1
  %11 = load i8, ptr %componentID, align 1
  %idxprom13 = zext i8 %11 to i64
  %arrayidx14 = getelementptr inbounds [3 x i8], ptr @gCompDCTab, i64 0, i64 %idxprom13
  %12 = load i8, ptr %arrayidx14, align 1
  store i8 %12, ptr %compDCTab, align 1
  %13 = load i8, ptr %compQuant, align 1
  %conv15 = zext i8 %13 to i32
  %tobool16 = icmp ne i32 %conv15, 0
  %14 = zext i1 %tobool16 to i64
  %cond = select i1 %tobool16, ptr @gQuant1, ptr @gQuant0
  store ptr %cond, ptr %pQ, align 8
  %15 = load i8, ptr %compDCTab, align 1
  %conv17 = zext i8 %15 to i32
  %tobool18 = icmp ne i32 %conv17, 0
  %16 = zext i1 %tobool18 to i64
  %cond19 = select i1 %tobool18, ptr @gHuffTab1, ptr @gHuffTab0
  %17 = load i8, ptr %compDCTab, align 1
  %conv20 = zext i8 %17 to i32
  %tobool21 = icmp ne i32 %conv20, 0
  %18 = zext i1 %tobool21 to i64
  %cond22 = select i1 %tobool21, ptr @gHuffVal1, ptr @gHuffVal0
  %call23 = call zeroext i8 @huffDecode(ptr noundef %cond19, ptr noundef %cond22)
  store i8 %call23, ptr %s, align 1
  store i16 0, ptr %r, align 2
  %19 = load i8, ptr %s, align 1
  %conv24 = zext i8 %19 to i32
  %and = and i32 %conv24, 15
  %conv25 = trunc i32 %and to i8
  store i8 %conv25, ptr %numExtraBits, align 1
  %20 = load i8, ptr %numExtraBits, align 1
  %tobool26 = icmp ne i8 %20, 0
  br i1 %tobool26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %for.body
  %21 = load i8, ptr %numExtraBits, align 1
  %call28 = call zeroext i16 @getBits2(i8 noundef zeroext %21)
  store i16 %call28, ptr %r, align 2
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %for.body
  %22 = load i16, ptr %r, align 2
  %23 = load i8, ptr %s, align 1
  %call30 = call signext i16 @huffExtend(i16 noundef zeroext %22, i8 noundef zeroext %23)
  store i16 %call30, ptr %dc, align 2
  %24 = load i16, ptr %dc, align 2
  %conv31 = zext i16 %24 to i32
  %25 = load i8, ptr %componentID, align 1
  %idxprom32 = zext i8 %25 to i64
  %arrayidx33 = getelementptr inbounds [3 x i16], ptr @gLastDC, i64 0, i64 %idxprom32
  %26 = load i16, ptr %arrayidx33, align 2
  %conv34 = sext i16 %26 to i32
  %add = add nsw i32 %conv31, %conv34
  %conv35 = trunc i32 %add to i16
  store i16 %conv35, ptr %dc, align 2
  %27 = load i16, ptr %dc, align 2
  %28 = load i8, ptr %componentID, align 1
  %idxprom36 = zext i8 %28 to i64
  %arrayidx37 = getelementptr inbounds [3 x i16], ptr @gLastDC, i64 0, i64 %idxprom36
  store i16 %27, ptr %arrayidx37, align 2
  %29 = load i16, ptr %dc, align 2
  %conv38 = zext i16 %29 to i32
  %30 = load ptr, ptr %pQ, align 8
  %arrayidx39 = getelementptr inbounds i16, ptr %30, i64 0
  %31 = load i16, ptr %arrayidx39, align 2
  %conv40 = sext i16 %31 to i32
  %mul = mul nsw i32 %conv38, %conv40
  %conv41 = trunc i32 %mul to i16
  store i16 %conv41, ptr @gCoeffBuf, align 2
  %32 = load i8, ptr %componentID, align 1
  %idxprom42 = zext i8 %32 to i64
  %arrayidx43 = getelementptr inbounds [3 x i8], ptr @gCompACTab, i64 0, i64 %idxprom42
  %33 = load i8, ptr %arrayidx43, align 1
  store i8 %33, ptr %compACTab, align 1
  %34 = load i8, ptr @gReduce, align 1
  %tobool44 = icmp ne i8 %34, 0
  br i1 %tobool44, label %if.then45, label %if.else102

if.then45:                                        ; preds = %if.end29
  store i8 1, ptr %k, align 1
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc, %if.then45
  %35 = load i8, ptr %k, align 1
  %conv47 = zext i8 %35 to i32
  %cmp48 = icmp slt i32 %conv47, 64
  br i1 %cmp48, label %for.body50, label %for.end

for.body50:                                       ; preds = %for.cond46
  %36 = load i8, ptr %compACTab, align 1
  %conv51 = zext i8 %36 to i32
  %tobool52 = icmp ne i32 %conv51, 0
  %37 = zext i1 %tobool52 to i64
  %cond53 = select i1 %tobool52, ptr @gHuffTab3, ptr @gHuffTab2
  %38 = load i8, ptr %compACTab, align 1
  %conv54 = zext i8 %38 to i32
  %tobool55 = icmp ne i32 %conv54, 0
  %39 = zext i1 %tobool55 to i64
  %cond56 = select i1 %tobool55, ptr @gHuffVal3, ptr @gHuffVal2
  %call57 = call zeroext i8 @huffDecode(ptr noundef %cond53, ptr noundef %cond56)
  store i8 %call57, ptr %s, align 1
  %40 = load i8, ptr %s, align 1
  %conv58 = zext i8 %40 to i32
  %and59 = and i32 %conv58, 15
  %conv60 = trunc i32 %and59 to i8
  store i8 %conv60, ptr %numExtraBits, align 1
  %41 = load i8, ptr %numExtraBits, align 1
  %tobool61 = icmp ne i8 %41, 0
  br i1 %tobool61, label %if.then62, label %if.end64

if.then62:                                        ; preds = %for.body50
  %42 = load i8, ptr %numExtraBits, align 1
  %call63 = call zeroext i16 @getBits2(i8 noundef zeroext %42)
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %for.body50
  %43 = load i8, ptr %s, align 1
  %conv65 = zext i8 %43 to i32
  %shr = ashr i32 %conv65, 4
  %conv66 = trunc i32 %shr to i16
  store i16 %conv66, ptr %r, align 2
  %44 = load i8, ptr %s, align 1
  %conv67 = zext i8 %44 to i32
  %and68 = and i32 %conv67, 15
  %conv69 = trunc i32 %and68 to i8
  store i8 %conv69, ptr %s, align 1
  %45 = load i8, ptr %s, align 1
  %tobool70 = icmp ne i8 %45, 0
  br i1 %tobool70, label %if.then71, label %if.else

if.then71:                                        ; preds = %if.end64
  %46 = load i16, ptr %r, align 2
  %tobool72 = icmp ne i16 %46, 0
  br i1 %tobool72, label %if.then73, label %if.end85

if.then73:                                        ; preds = %if.then71
  %47 = load i8, ptr %k, align 1
  %conv74 = zext i8 %47 to i32
  %48 = load i16, ptr %r, align 2
  %conv75 = zext i16 %48 to i32
  %add76 = add nsw i32 %conv74, %conv75
  %cmp77 = icmp sgt i32 %add76, 63
  br i1 %cmp77, label %if.then79, label %if.end80

if.then79:                                        ; preds = %if.then73
  store i8 28, ptr %retval, align 1
  br label %return

if.end80:                                         ; preds = %if.then73
  %49 = load i8, ptr %k, align 1
  %conv81 = zext i8 %49 to i32
  %50 = load i16, ptr %r, align 2
  %conv82 = zext i16 %50 to i32
  %add83 = add nsw i32 %conv81, %conv82
  %conv84 = trunc i32 %add83 to i8
  store i8 %conv84, ptr %k, align 1
  br label %if.end85

if.end85:                                         ; preds = %if.end80, %if.then71
  br label %if.end101

if.else:                                          ; preds = %if.end64
  %51 = load i16, ptr %r, align 2
  %conv86 = zext i16 %51 to i32
  %cmp87 = icmp eq i32 %conv86, 15
  br i1 %cmp87, label %if.then89, label %if.else99

if.then89:                                        ; preds = %if.else
  %52 = load i8, ptr %k, align 1
  %conv90 = zext i8 %52 to i32
  %add91 = add nsw i32 %conv90, 16
  %cmp92 = icmp sgt i32 %add91, 64
  br i1 %cmp92, label %if.then94, label %if.end95

if.then94:                                        ; preds = %if.then89
  store i8 28, ptr %retval, align 1
  br label %return

if.end95:                                         ; preds = %if.then89
  %53 = load i8, ptr %k, align 1
  %conv96 = zext i8 %53 to i32
  %add97 = add nsw i32 %conv96, 15
  %conv98 = trunc i32 %add97 to i8
  store i8 %conv98, ptr %k, align 1
  br label %if.end100

if.else99:                                        ; preds = %if.else
  br label %for.end

if.end100:                                        ; preds = %if.end95
  br label %if.end101

if.end101:                                        ; preds = %if.end100, %if.end85
  br label %for.inc

for.inc:                                          ; preds = %if.end101
  %54 = load i8, ptr %k, align 1
  %inc = add i8 %54, 1
  store i8 %inc, ptr %k, align 1
  br label %for.cond46, !llvm.loop !6

for.end:                                          ; preds = %if.else99, %for.cond46
  %55 = load i8, ptr %mcuBlock, align 1
  call void @transformBlockReduce(i8 noundef zeroext %55)
  br label %if.end200

if.else102:                                       ; preds = %if.end29
  store i8 1, ptr %k, align 1
  br label %for.cond103

for.cond103:                                      ; preds = %for.inc186, %if.else102
  %56 = load i8, ptr %k, align 1
  %conv104 = zext i8 %56 to i32
  %cmp105 = icmp slt i32 %conv104, 64
  br i1 %cmp105, label %for.body107, label %for.end188

for.body107:                                      ; preds = %for.cond103
  %57 = load i8, ptr %compACTab, align 1
  %conv108 = zext i8 %57 to i32
  %tobool109 = icmp ne i32 %conv108, 0
  %58 = zext i1 %tobool109 to i64
  %cond110 = select i1 %tobool109, ptr @gHuffTab3, ptr @gHuffTab2
  %59 = load i8, ptr %compACTab, align 1
  %conv111 = zext i8 %59 to i32
  %tobool112 = icmp ne i32 %conv111, 0
  %60 = zext i1 %tobool112 to i64
  %cond113 = select i1 %tobool112, ptr @gHuffVal3, ptr @gHuffVal2
  %call114 = call zeroext i8 @huffDecode(ptr noundef %cond110, ptr noundef %cond113)
  store i8 %call114, ptr %s, align 1
  store i16 0, ptr %extraBits, align 2
  %61 = load i8, ptr %s, align 1
  %conv115 = zext i8 %61 to i32
  %and116 = and i32 %conv115, 15
  %conv117 = trunc i32 %and116 to i8
  store i8 %conv117, ptr %numExtraBits, align 1
  %62 = load i8, ptr %numExtraBits, align 1
  %tobool118 = icmp ne i8 %62, 0
  br i1 %tobool118, label %if.then119, label %if.end121

if.then119:                                       ; preds = %for.body107
  %63 = load i8, ptr %numExtraBits, align 1
  %call120 = call zeroext i16 @getBits2(i8 noundef zeroext %63)
  store i16 %call120, ptr %extraBits, align 2
  br label %if.end121

if.end121:                                        ; preds = %if.then119, %for.body107
  %64 = load i8, ptr %s, align 1
  %conv122 = zext i8 %64 to i32
  %shr123 = ashr i32 %conv122, 4
  %conv124 = trunc i32 %shr123 to i16
  store i16 %conv124, ptr %r, align 2
  %65 = load i8, ptr %s, align 1
  %conv125 = zext i8 %65 to i32
  %and126 = and i32 %conv125, 15
  %conv127 = trunc i32 %and126 to i8
  store i8 %conv127, ptr %s, align 1
  %66 = load i8, ptr %s, align 1
  %tobool128 = icmp ne i8 %66, 0
  br i1 %tobool128, label %if.then129, label %if.else158

if.then129:                                       ; preds = %if.end121
  %67 = load i16, ptr %r, align 2
  %tobool130 = icmp ne i16 %67, 0
  br i1 %tobool130, label %if.then131, label %if.end146

if.then131:                                       ; preds = %if.then129
  %68 = load i8, ptr %k, align 1
  %conv132 = zext i8 %68 to i32
  %69 = load i16, ptr %r, align 2
  %conv133 = zext i16 %69 to i32
  %add134 = add nsw i32 %conv132, %conv133
  %cmp135 = icmp sgt i32 %add134, 63
  br i1 %cmp135, label %if.then137, label %if.end138

if.then137:                                       ; preds = %if.then131
  store i8 28, ptr %retval, align 1
  br label %return

if.end138:                                        ; preds = %if.then131
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end138
  %70 = load i16, ptr %r, align 2
  %tobool139 = icmp ne i16 %70, 0
  br i1 %tobool139, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %71 = load i8, ptr %k, align 1
  %inc140 = add i8 %71, 1
  store i8 %inc140, ptr %k, align 1
  %idxprom141 = zext i8 %71 to i64
  %arrayidx142 = getelementptr inbounds [64 x i8], ptr @ZAG, i64 0, i64 %idxprom141
  %72 = load i8, ptr %arrayidx142, align 1
  %idxprom143 = sext i8 %72 to i64
  %arrayidx144 = getelementptr inbounds [64 x i16], ptr @gCoeffBuf, i64 0, i64 %idxprom143
  store i16 0, ptr %arrayidx144, align 2
  %73 = load i16, ptr %r, align 2
  %dec145 = add i16 %73, -1
  store i16 %dec145, ptr %r, align 2
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  br label %if.end146

if.end146:                                        ; preds = %while.end, %if.then129
  %74 = load i16, ptr %extraBits, align 2
  %75 = load i8, ptr %s, align 1
  %call147 = call signext i16 @huffExtend(i16 noundef zeroext %74, i8 noundef zeroext %75)
  store i16 %call147, ptr %ac, align 2
  %76 = load i16, ptr %ac, align 2
  %conv148 = sext i16 %76 to i32
  %77 = load ptr, ptr %pQ, align 8
  %78 = load i8, ptr %k, align 1
  %idxprom149 = zext i8 %78 to i64
  %arrayidx150 = getelementptr inbounds i16, ptr %77, i64 %idxprom149
  %79 = load i16, ptr %arrayidx150, align 2
  %conv151 = sext i16 %79 to i32
  %mul152 = mul nsw i32 %conv148, %conv151
  %conv153 = trunc i32 %mul152 to i16
  %80 = load i8, ptr %k, align 1
  %idxprom154 = zext i8 %80 to i64
  %arrayidx155 = getelementptr inbounds [64 x i8], ptr @ZAG, i64 0, i64 %idxprom154
  %81 = load i8, ptr %arrayidx155, align 1
  %idxprom156 = sext i8 %81 to i64
  %arrayidx157 = getelementptr inbounds [64 x i16], ptr @gCoeffBuf, i64 0, i64 %idxprom156
  store i16 %conv153, ptr %arrayidx157, align 2
  br label %if.end185

if.else158:                                       ; preds = %if.end121
  %82 = load i16, ptr %r, align 2
  %conv159 = zext i16 %82 to i32
  %cmp160 = icmp eq i32 %conv159, 15
  br i1 %cmp160, label %if.then162, label %if.else183

if.then162:                                       ; preds = %if.else158
  %83 = load i8, ptr %k, align 1
  %conv163 = zext i8 %83 to i32
  %add164 = add nsw i32 %conv163, 16
  %cmp165 = icmp sgt i32 %add164, 64
  br i1 %cmp165, label %if.then167, label %if.end168

if.then167:                                       ; preds = %if.then162
  store i8 28, ptr %retval, align 1
  br label %return

if.end168:                                        ; preds = %if.then162
  store i16 16, ptr %r, align 2
  br label %for.cond169

for.cond169:                                      ; preds = %for.inc179, %if.end168
  %84 = load i16, ptr %r, align 2
  %conv170 = zext i16 %84 to i32
  %cmp171 = icmp sgt i32 %conv170, 0
  br i1 %cmp171, label %for.body173, label %for.end181

for.body173:                                      ; preds = %for.cond169
  %85 = load i8, ptr %k, align 1
  %inc174 = add i8 %85, 1
  store i8 %inc174, ptr %k, align 1
  %idxprom175 = zext i8 %85 to i64
  %arrayidx176 = getelementptr inbounds [64 x i8], ptr @ZAG, i64 0, i64 %idxprom175
  %86 = load i8, ptr %arrayidx176, align 1
  %idxprom177 = sext i8 %86 to i64
  %arrayidx178 = getelementptr inbounds [64 x i16], ptr @gCoeffBuf, i64 0, i64 %idxprom177
  store i16 0, ptr %arrayidx178, align 2
  br label %for.inc179

for.inc179:                                       ; preds = %for.body173
  %87 = load i16, ptr %r, align 2
  %dec180 = add i16 %87, -1
  store i16 %dec180, ptr %r, align 2
  br label %for.cond169, !llvm.loop !9

for.end181:                                       ; preds = %for.cond169
  %88 = load i8, ptr %k, align 1
  %dec182 = add i8 %88, -1
  store i8 %dec182, ptr %k, align 1
  br label %if.end184

if.else183:                                       ; preds = %if.else158
  br label %for.end188

if.end184:                                        ; preds = %for.end181
  br label %if.end185

if.end185:                                        ; preds = %if.end184, %if.end146
  br label %for.inc186

for.inc186:                                       ; preds = %if.end185
  %89 = load i8, ptr %k, align 1
  %inc187 = add i8 %89, 1
  store i8 %inc187, ptr %k, align 1
  br label %for.cond103, !llvm.loop !10

for.end188:                                       ; preds = %if.else183, %for.cond103
  br label %while.cond189

while.cond189:                                    ; preds = %while.body193, %for.end188
  %90 = load i8, ptr %k, align 1
  %conv190 = zext i8 %90 to i32
  %cmp191 = icmp slt i32 %conv190, 64
  br i1 %cmp191, label %while.body193, label %while.end199

while.body193:                                    ; preds = %while.cond189
  %91 = load i8, ptr %k, align 1
  %inc194 = add i8 %91, 1
  store i8 %inc194, ptr %k, align 1
  %idxprom195 = zext i8 %91 to i64
  %arrayidx196 = getelementptr inbounds [64 x i8], ptr @ZAG, i64 0, i64 %idxprom195
  %92 = load i8, ptr %arrayidx196, align 1
  %idxprom197 = sext i8 %92 to i64
  %arrayidx198 = getelementptr inbounds [64 x i16], ptr @gCoeffBuf, i64 0, i64 %idxprom197
  store i16 0, ptr %arrayidx198, align 2
  br label %while.cond189, !llvm.loop !11

while.end199:                                     ; preds = %while.cond189
  %93 = load i8, ptr %mcuBlock, align 1
  call void @transformBlock(i8 noundef zeroext %93)
  br label %if.end200

if.end200:                                        ; preds = %while.end199, %for.end
  br label %for.inc201

for.inc201:                                       ; preds = %if.end200
  %94 = load i8, ptr %mcuBlock, align 1
  %inc202 = add i8 %94, 1
  store i8 %inc202, ptr %mcuBlock, align 1
  br label %for.cond, !llvm.loop !12

for.end203:                                       ; preds = %for.cond
  store i8 0, ptr %retval, align 1
  br label %return

return:                                           ; preds = %for.end203, %if.then167, %if.then137, %if.then94, %if.then79, %if.then4
  %95 = load i8, ptr %retval, align 1
  ret i8 %95
}

; Function Attrs: nounwind ssp uwtable
define zeroext i8 @pjpeg_decode_init(ptr noundef %pInfo, ptr noundef %pNeed_bytes_callback, ptr noundef %pCallback_data, i8 noundef zeroext %reduce) #0 {
entry:
  %retval = alloca i8, align 1
  %pInfo.addr = alloca ptr, align 8
  %pNeed_bytes_callback.addr = alloca ptr, align 8
  %pCallback_data.addr = alloca ptr, align 8
  %reduce.addr = alloca i8, align 1
  %status = alloca i8, align 1
  store ptr %pInfo, ptr %pInfo.addr, align 8
  store ptr %pNeed_bytes_callback, ptr %pNeed_bytes_callback.addr, align 8
  store ptr %pCallback_data, ptr %pCallback_data.addr, align 8
  store i8 %reduce, ptr %reduce.addr, align 1
  %0 = load ptr, ptr %pInfo.addr, align 8
  %m_width = getelementptr inbounds %struct.pjpeg_image_info_t, ptr %0, i32 0, i32 0
  store i32 0, ptr %m_width, align 8
  %1 = load ptr, ptr %pInfo.addr, align 8
  %m_height = getelementptr inbounds %struct.pjpeg_image_info_t, ptr %1, i32 0, i32 1
  store i32 0, ptr %m_height, align 4
  %2 = load ptr, ptr %pInfo.addr, align 8
  %m_comps = getelementptr inbounds %struct.pjpeg_image_info_t, ptr %2, i32 0, i32 2
  store i32 0, ptr %m_comps, align 8
  %3 = load ptr, ptr %pInfo.addr, align 8
  %m_MCUSPerRow = getelementptr inbounds %struct.pjpeg_image_info_t, ptr %3, i32 0, i32 3
  store i32 0, ptr %m_MCUSPerRow, align 4
  %4 = load ptr, ptr %pInfo.addr, align 8
  %m_MCUSPerCol = getelementptr inbounds %struct.pjpeg_image_info_t, ptr %4, i32 0, i32 4
  store i32 0, ptr %m_MCUSPerCol, align 8
  %5 = load ptr, ptr %pInfo.addr, align 8
  %m_scanType = getelementptr inbounds %struct.pjpeg_image_info_t, ptr %5, i32 0, i32 5
  store i32 0, ptr %m_scanType, align 4
  %6 = load ptr, ptr %pInfo.addr, align 8
  %m_MCUWidth = getelementptr inbounds %struct.pjpeg_image_info_t, ptr %6, i32 0, i32 6
  store i32 0, ptr %m_MCUWidth, align 8
  %7 = load ptr, ptr %pInfo.addr, align 8
  %m_MCUHeight = getelementptr inbounds %struct.pjpeg_image_info_t, ptr %7, i32 0, i32 7
  store i32 0, ptr %m_MCUHeight, align 4
  %8 = load ptr, ptr %pInfo.addr, align 8
  %m_pMCUBufR = getelementptr inbounds %struct.pjpeg_image_info_t, ptr %8, i32 0, i32 8
  store ptr null, ptr %m_pMCUBufR, align 8
  %9 = load ptr, ptr %pInfo.addr, align 8
  %m_pMCUBufG = getelementptr inbounds %struct.pjpeg_image_info_t, ptr %9, i32 0, i32 9
  store ptr null, ptr %m_pMCUBufG, align 8
  %10 = load ptr, ptr %pInfo.addr, align 8
  %m_pMCUBufB = getelementptr inbounds %struct.pjpeg_image_info_t, ptr %10, i32 0, i32 10
  store ptr null, ptr %m_pMCUBufB, align 8
  %11 = load ptr, ptr %pNeed_bytes_callback.addr, align 8
  store ptr %11, ptr @g_pNeedBytesCallback, align 8
  %12 = load ptr, ptr %pCallback_data.addr, align 8
  store ptr %12, ptr @g_pCallback_data, align 8
  store i8 0, ptr @gCallbackStatus, align 1
  %13 = load i8, ptr %reduce.addr, align 1
  store i8 %13, ptr @gReduce, align 1
  %call = call zeroext i8 @pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_0()
  store i8 %call, ptr %status, align 1
  %14 = load i8, ptr %status, align 1
  %conv = zext i8 %14 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %15 = load i8, ptr @gCallbackStatus, align 1
  %conv1 = zext i8 %15 to i32
  %tobool2 = icmp ne i32 %conv1, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %16 = load i8, ptr @gCallbackStatus, align 1
  %conv3 = zext i8 %16 to i32
  %tobool4 = icmp ne i32 %conv3, 0
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %17 = load i8, ptr @gCallbackStatus, align 1
  %conv5 = zext i8 %17 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %18 = load i8, ptr %status, align 1
  %conv6 = zext i8 %18 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv5, %cond.true ], [ %conv6, %cond.false ]
  %conv7 = trunc i32 %cond to i8
  store i8 %conv7, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %call8 = call zeroext i8 @locateSOFMarker()
  store i8 %call8, ptr %status, align 1
  %19 = load i8, ptr %status, align 1
  %conv9 = zext i8 %19 to i32
  %tobool10 = icmp ne i32 %conv9, 0
  br i1 %tobool10, label %if.then14, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %if.end
  %20 = load i8, ptr @gCallbackStatus, align 1
  %conv12 = zext i8 %20 to i32
  %tobool13 = icmp ne i32 %conv12, 0
  br i1 %tobool13, label %if.then14, label %if.end24

if.then14:                                        ; preds = %lor.lhs.false11, %if.end
  %21 = load i8, ptr @gCallbackStatus, align 1
  %conv15 = zext i8 %21 to i32
  %tobool16 = icmp ne i32 %conv15, 0
  br i1 %tobool16, label %cond.true17, label %cond.false19

cond.true17:                                      ; preds = %if.then14
  %22 = load i8, ptr @gCallbackStatus, align 1
  %conv18 = zext i8 %22 to i32
  br label %cond.end21

cond.false19:                                     ; preds = %if.then14
  %23 = load i8, ptr %status, align 1
  %conv20 = zext i8 %23 to i32
  br label %cond.end21

cond.end21:                                       ; preds = %cond.false19, %cond.true17
  %cond22 = phi i32 [ %conv18, %cond.true17 ], [ %conv20, %cond.false19 ]
  %conv23 = trunc i32 %cond22 to i8
  store i8 %conv23, ptr %retval, align 1
  br label %return

if.end24:                                         ; preds = %lor.lhs.false11
  %call25 = call zeroext i8 @initFrame()
  store i8 %call25, ptr %status, align 1
  %24 = load i8, ptr %status, align 1
  %conv26 = zext i8 %24 to i32
  %tobool27 = icmp ne i32 %conv26, 0
  br i1 %tobool27, label %if.then31, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %if.end24
  %25 = load i8, ptr @gCallbackStatus, align 1
  %conv29 = zext i8 %25 to i32
  %tobool30 = icmp ne i32 %conv29, 0
  br i1 %tobool30, label %if.then31, label %if.end41

if.then31:                                        ; preds = %lor.lhs.false28, %if.end24
  %26 = load i8, ptr @gCallbackStatus, align 1
  %conv32 = zext i8 %26 to i32
  %tobool33 = icmp ne i32 %conv32, 0
  br i1 %tobool33, label %cond.true34, label %cond.false36

cond.true34:                                      ; preds = %if.then31
  %27 = load i8, ptr @gCallbackStatus, align 1
  %conv35 = zext i8 %27 to i32
  br label %cond.end38

cond.false36:                                     ; preds = %if.then31
  %28 = load i8, ptr %status, align 1
  %conv37 = zext i8 %28 to i32
  br label %cond.end38

cond.end38:                                       ; preds = %cond.false36, %cond.true34
  %cond39 = phi i32 [ %conv35, %cond.true34 ], [ %conv37, %cond.false36 ]
  %conv40 = trunc i32 %cond39 to i8
  store i8 %conv40, ptr %retval, align 1
  br label %return

if.end41:                                         ; preds = %lor.lhs.false28
  %call42 = call zeroext i8 @initScan()
  store i8 %call42, ptr %status, align 1
  %29 = load i8, ptr %status, align 1
  %conv43 = zext i8 %29 to i32
  %tobool44 = icmp ne i32 %conv43, 0
  br i1 %tobool44, label %if.then48, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %if.end41
  %30 = load i8, ptr @gCallbackStatus, align 1
  %conv46 = zext i8 %30 to i32
  %tobool47 = icmp ne i32 %conv46, 0
  br i1 %tobool47, label %if.then48, label %if.end58

if.then48:                                        ; preds = %lor.lhs.false45, %if.end41
  %31 = load i8, ptr @gCallbackStatus, align 1
  %conv49 = zext i8 %31 to i32
  %tobool50 = icmp ne i32 %conv49, 0
  br i1 %tobool50, label %cond.true51, label %cond.false53

cond.true51:                                      ; preds = %if.then48
  %32 = load i8, ptr @gCallbackStatus, align 1
  %conv52 = zext i8 %32 to i32
  br label %cond.end55

cond.false53:                                     ; preds = %if.then48
  %33 = load i8, ptr %status, align 1
  %conv54 = zext i8 %33 to i32
  br label %cond.end55

cond.end55:                                       ; preds = %cond.false53, %cond.true51
  %cond56 = phi i32 [ %conv52, %cond.true51 ], [ %conv54, %cond.false53 ]
  %conv57 = trunc i32 %cond56 to i8
  store i8 %conv57, ptr %retval, align 1
  br label %return

if.end58:                                         ; preds = %lor.lhs.false45
  %34 = load i16, ptr @gImageXSize, align 2
  %conv59 = zext i16 %34 to i32
  %35 = load ptr, ptr %pInfo.addr, align 8
  %m_width60 = getelementptr inbounds %struct.pjpeg_image_info_t, ptr %35, i32 0, i32 0
  store i32 %conv59, ptr %m_width60, align 8
  %36 = load i16, ptr @gImageYSize, align 2
  %conv61 = zext i16 %36 to i32
  %37 = load ptr, ptr %pInfo.addr, align 8
  %m_height62 = getelementptr inbounds %struct.pjpeg_image_info_t, ptr %37, i32 0, i32 1
  store i32 %conv61, ptr %m_height62, align 4
  %38 = load i8, ptr @gCompsInFrame, align 1
  %conv63 = zext i8 %38 to i32
  %39 = load ptr, ptr %pInfo.addr, align 8
  %m_comps64 = getelementptr inbounds %struct.pjpeg_image_info_t, ptr %39, i32 0, i32 2
  store i32 %conv63, ptr %m_comps64, align 8
  %40 = load i32, ptr @gScanType, align 4
  %41 = load ptr, ptr %pInfo.addr, align 8
  %m_scanType65 = getelementptr inbounds %struct.pjpeg_image_info_t, ptr %41, i32 0, i32 5
  store i32 %40, ptr %m_scanType65, align 4
  %42 = load i16, ptr @gMaxMCUSPerRow, align 2
  %conv66 = zext i16 %42 to i32
  %43 = load ptr, ptr %pInfo.addr, align 8
  %m_MCUSPerRow67 = getelementptr inbounds %struct.pjpeg_image_info_t, ptr %43, i32 0, i32 3
  store i32 %conv66, ptr %m_MCUSPerRow67, align 4
  %44 = load i16, ptr @gMaxMCUSPerCol, align 2
  %conv68 = zext i16 %44 to i32
  %45 = load ptr, ptr %pInfo.addr, align 8
  %m_MCUSPerCol69 = getelementptr inbounds %struct.pjpeg_image_info_t, ptr %45, i32 0, i32 4
  store i32 %conv68, ptr %m_MCUSPerCol69, align 8
  %46 = load i8, ptr @gMaxMCUXSize, align 1
  %conv70 = zext i8 %46 to i32
  %47 = load ptr, ptr %pInfo.addr, align 8
  %m_MCUWidth71 = getelementptr inbounds %struct.pjpeg_image_info_t, ptr %47, i32 0, i32 6
  store i32 %conv70, ptr %m_MCUWidth71, align 8
  %48 = load i8, ptr @gMaxMCUYSize, align 1
  %conv72 = zext i8 %48 to i32
  %49 = load ptr, ptr %pInfo.addr, align 8
  %m_MCUHeight73 = getelementptr inbounds %struct.pjpeg_image_info_t, ptr %49, i32 0, i32 7
  store i32 %conv72, ptr %m_MCUHeight73, align 4
  %50 = load ptr, ptr %pInfo.addr, align 8
  %m_pMCUBufR74 = getelementptr inbounds %struct.pjpeg_image_info_t, ptr %50, i32 0, i32 8
  store ptr @gMCUBufR, ptr %m_pMCUBufR74, align 8
  %51 = load ptr, ptr %pInfo.addr, align 8
  %m_pMCUBufG75 = getelementptr inbounds %struct.pjpeg_image_info_t, ptr %51, i32 0, i32 9
  store ptr @gMCUBufG, ptr %m_pMCUBufG75, align 8
  %52 = load ptr, ptr %pInfo.addr, align 8
  %m_pMCUBufB76 = getelementptr inbounds %struct.pjpeg_image_info_t, ptr %52, i32 0, i32 10
  store ptr @gMCUBufB, ptr %m_pMCUBufB76, align 8
  store i8 0, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end58, %cond.end55, %cond.end38, %cond.end21, %cond.end
  %53 = load i8, ptr %retval, align 1
  ret i8 %53
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @init() #0 {
entry:
  store i16 0, ptr @gImageXSize, align 2
  store i16 0, ptr @gImageYSize, align 2
  store i8 0, ptr @gCompsInFrame, align 1
  store i16 0, ptr @gRestartInterval, align 2
  store i8 0, ptr @gCompsInScan, align 1
  store i8 0, ptr @gValidHuffTables, align 1
  store i8 0, ptr @gValidQuantTables, align 1
  store i8 0, ptr @gTemFlag, align 1
  store i8 0, ptr @gInBufOfs, align 1
  store i8 0, ptr @gInBufLeft, align 1
  store i16 0, ptr @gBitBuf, align 2
  store i8 8, ptr @gBitsLeft, align 1
  %call = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %call1 = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  ret i8 0
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @locateSOFMarker() #0 {
entry:
  %retval = alloca i8, align 1
  %c = alloca i8, align 1
  %status = alloca i8, align 1
  %call = call zeroext i8 @locateSOIMarker()
  store i8 %call, ptr %status, align 1
  %0 = load i8, ptr %status, align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8, ptr %status, align 1
  store i8 %1, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call zeroext i8 @processMarkers(ptr noundef %c)
  store i8 %call1, ptr %status, align 1
  %2 = load i8, ptr %status, align 1
  %tobool2 = icmp ne i8 %2, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %3 = load i8, ptr %status, align 1
  store i8 %3, ptr %retval, align 1
  br label %return

if.end4:                                          ; preds = %if.end
  %4 = load i8, ptr %c, align 1
  %conv = zext i8 %4 to i32
  switch i32 %conv, label %sw.default [
    i32 194, label %sw.bb
    i32 192, label %sw.bb5
    i32 201, label %sw.bb10
    i32 193, label %sw.bb11
  ]

sw.bb:                                            ; preds = %if.end4
  store i8 37, ptr %retval, align 1
  br label %return

sw.bb5:                                           ; preds = %if.end4
  %call6 = call zeroext i8 @readSOFMarker()
  store i8 %call6, ptr %status, align 1
  %5 = load i8, ptr %status, align 1
  %tobool7 = icmp ne i8 %5, 0
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %sw.bb5
  %6 = load i8, ptr %status, align 1
  store i8 %6, ptr %retval, align 1
  br label %return

if.end9:                                          ; preds = %sw.bb5
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end4
  store i8 17, ptr %retval, align 1
  br label %return

sw.bb11:                                          ; preds = %if.end4
  br label %sw.default

sw.default:                                       ; preds = %if.end4, %sw.bb11
  store i8 20, ptr %retval, align 1
  br label %return

sw.epilog:                                        ; preds = %if.end9
  store i8 0, ptr %retval, align 1
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %sw.bb10, %if.then8, %sw.bb, %if.then3, %if.then
  %7 = load i8, ptr %retval, align 1
  ret i8 %7
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @initFrame() #0 {
entry:
  %retval = alloca i8, align 1
  %0 = load i8, ptr @gCompsInFrame, align 1
  %conv = zext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8, ptr @gCompHSamp, align 1
  %conv2 = zext i8 %1 to i32
  %cmp3 = icmp ne i32 %conv2, 1
  br i1 %cmp3, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %2 = load i8, ptr @gCompVSamp, align 1
  %conv5 = zext i8 %2 to i32
  %cmp6 = icmp ne i32 %conv5, 1
  br i1 %cmp6, label %if.then8, label %if.end

if.then8:                                         ; preds = %lor.lhs.false, %if.then
  store i8 27, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, ptr @gScanType, align 4
  store i8 1, ptr @gMaxBlocksPerMCU, align 1
  store i8 0, ptr @gMCUOrg, align 1
  store i8 8, ptr @gMaxMCUXSize, align 1
  store i8 8, ptr @gMaxMCUYSize, align 1
  br label %if.end71

if.else:                                          ; preds = %entry
  %3 = load i8, ptr @gCompsInFrame, align 1
  %conv9 = zext i8 %3 to i32
  %cmp10 = icmp eq i32 %conv9, 3
  br i1 %cmp10, label %if.then12, label %if.else69

if.then12:                                        ; preds = %if.else
  %4 = load i8, ptr getelementptr inbounds ([3 x i8], ptr @gCompHSamp, i64 0, i64 1), align 1
  %conv13 = zext i8 %4 to i32
  %cmp14 = icmp ne i32 %conv13, 1
  br i1 %cmp14, label %if.then28, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %if.then12
  %5 = load i8, ptr getelementptr inbounds ([3 x i8], ptr @gCompVSamp, i64 0, i64 1), align 1
  %conv17 = zext i8 %5 to i32
  %cmp18 = icmp ne i32 %conv17, 1
  br i1 %cmp18, label %if.then28, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false16
  %6 = load i8, ptr getelementptr inbounds ([3 x i8], ptr @gCompHSamp, i64 0, i64 2), align 1
  %conv21 = zext i8 %6 to i32
  %cmp22 = icmp ne i32 %conv21, 1
  br i1 %cmp22, label %if.then28, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false20
  %7 = load i8, ptr getelementptr inbounds ([3 x i8], ptr @gCompVSamp, i64 0, i64 2), align 1
  %conv25 = zext i8 %7 to i32
  %cmp26 = icmp ne i32 %conv25, 1
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %lor.lhs.false24, %lor.lhs.false20, %lor.lhs.false16, %if.then12
  store i8 27, ptr %retval, align 1
  br label %return

if.end29:                                         ; preds = %lor.lhs.false24
  %8 = load i8, ptr @gCompHSamp, align 1
  %conv30 = zext i8 %8 to i32
  %cmp31 = icmp eq i32 %conv30, 1
  br i1 %cmp31, label %land.lhs.true, label %if.else37

land.lhs.true:                                    ; preds = %if.end29
  %9 = load i8, ptr @gCompVSamp, align 1
  %conv33 = zext i8 %9 to i32
  %cmp34 = icmp eq i32 %conv33, 1
  br i1 %cmp34, label %if.then36, label %if.else37

if.then36:                                        ; preds = %land.lhs.true
  store i32 1, ptr @gScanType, align 4
  store i8 3, ptr @gMaxBlocksPerMCU, align 1
  store i8 0, ptr @gMCUOrg, align 1
  store i8 1, ptr getelementptr inbounds ([6 x i8], ptr @gMCUOrg, i64 0, i64 1), align 1
  store i8 2, ptr getelementptr inbounds ([6 x i8], ptr @gMCUOrg, i64 0, i64 2), align 1
  store i8 8, ptr @gMaxMCUXSize, align 1
  store i8 8, ptr @gMaxMCUYSize, align 1
  br label %if.end68

if.else37:                                        ; preds = %land.lhs.true, %if.end29
  %10 = load i8, ptr @gCompHSamp, align 1
  %conv38 = zext i8 %10 to i32
  %cmp39 = icmp eq i32 %conv38, 1
  br i1 %cmp39, label %land.lhs.true41, label %if.else46

land.lhs.true41:                                  ; preds = %if.else37
  %11 = load i8, ptr @gCompVSamp, align 1
  %conv42 = zext i8 %11 to i32
  %cmp43 = icmp eq i32 %conv42, 2
  br i1 %cmp43, label %if.then45, label %if.else46

if.then45:                                        ; preds = %land.lhs.true41
  store i32 3, ptr @gScanType, align 4
  store i8 4, ptr @gMaxBlocksPerMCU, align 1
  store i8 0, ptr @gMCUOrg, align 1
  store i8 0, ptr getelementptr inbounds ([6 x i8], ptr @gMCUOrg, i64 0, i64 1), align 1
  store i8 1, ptr getelementptr inbounds ([6 x i8], ptr @gMCUOrg, i64 0, i64 2), align 1
  store i8 2, ptr getelementptr inbounds ([6 x i8], ptr @gMCUOrg, i64 0, i64 3), align 1
  store i8 8, ptr @gMaxMCUXSize, align 1
  store i8 16, ptr @gMaxMCUYSize, align 1
  br label %if.end67

if.else46:                                        ; preds = %land.lhs.true41, %if.else37
  %12 = load i8, ptr @gCompHSamp, align 1
  %conv47 = zext i8 %12 to i32
  %cmp48 = icmp eq i32 %conv47, 2
  br i1 %cmp48, label %land.lhs.true50, label %if.else55

land.lhs.true50:                                  ; preds = %if.else46
  %13 = load i8, ptr @gCompVSamp, align 1
  %conv51 = zext i8 %13 to i32
  %cmp52 = icmp eq i32 %conv51, 1
  br i1 %cmp52, label %if.then54, label %if.else55

if.then54:                                        ; preds = %land.lhs.true50
  store i32 2, ptr @gScanType, align 4
  store i8 4, ptr @gMaxBlocksPerMCU, align 1
  store i8 0, ptr @gMCUOrg, align 1
  store i8 0, ptr getelementptr inbounds ([6 x i8], ptr @gMCUOrg, i64 0, i64 1), align 1
  store i8 1, ptr getelementptr inbounds ([6 x i8], ptr @gMCUOrg, i64 0, i64 2), align 1
  store i8 2, ptr getelementptr inbounds ([6 x i8], ptr @gMCUOrg, i64 0, i64 3), align 1
  store i8 16, ptr @gMaxMCUXSize, align 1
  store i8 8, ptr @gMaxMCUYSize, align 1
  br label %if.end66

if.else55:                                        ; preds = %land.lhs.true50, %if.else46
  %14 = load i8, ptr @gCompHSamp, align 1
  %conv56 = zext i8 %14 to i32
  %cmp57 = icmp eq i32 %conv56, 2
  br i1 %cmp57, label %land.lhs.true59, label %if.else64

land.lhs.true59:                                  ; preds = %if.else55
  %15 = load i8, ptr @gCompVSamp, align 1
  %conv60 = zext i8 %15 to i32
  %cmp61 = icmp eq i32 %conv60, 2
  br i1 %cmp61, label %if.then63, label %if.else64

if.then63:                                        ; preds = %land.lhs.true59
  store i32 4, ptr @gScanType, align 4
  store i8 6, ptr @gMaxBlocksPerMCU, align 1
  store i8 0, ptr @gMCUOrg, align 1
  store i8 0, ptr getelementptr inbounds ([6 x i8], ptr @gMCUOrg, i64 0, i64 1), align 1
  store i8 0, ptr getelementptr inbounds ([6 x i8], ptr @gMCUOrg, i64 0, i64 2), align 1
  store i8 0, ptr getelementptr inbounds ([6 x i8], ptr @gMCUOrg, i64 0, i64 3), align 1
  store i8 1, ptr getelementptr inbounds ([6 x i8], ptr @gMCUOrg, i64 0, i64 4), align 1
  store i8 2, ptr getelementptr inbounds ([6 x i8], ptr @gMCUOrg, i64 0, i64 5), align 1
  store i8 16, ptr @gMaxMCUXSize, align 1
  store i8 16, ptr @gMaxMCUYSize, align 1
  br label %if.end65

if.else64:                                        ; preds = %land.lhs.true59, %if.else55
  store i8 27, ptr %retval, align 1
  br label %return

if.end65:                                         ; preds = %if.then63
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.then54
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.then45
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.then36
  br label %if.end70

if.else69:                                        ; preds = %if.else
  store i8 26, ptr %retval, align 1
  br label %return

if.end70:                                         ; preds = %if.end68
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.end
  %16 = load i16, ptr @gImageXSize, align 2
  %conv72 = zext i16 %16 to i32
  %17 = load i8, ptr @gMaxMCUXSize, align 1
  %conv73 = zext i8 %17 to i32
  %sub = sub nsw i32 %conv73, 1
  %add = add nsw i32 %conv72, %sub
  %18 = load i8, ptr @gMaxMCUXSize, align 1
  %conv74 = zext i8 %18 to i32
  %cmp75 = icmp eq i32 %conv74, 8
  %19 = zext i1 %cmp75 to i64
  %cond = select i1 %cmp75, i32 3, i32 4
  %shr = ashr i32 %add, %cond
  %conv77 = trunc i32 %shr to i16
  store i16 %conv77, ptr @gMaxMCUSPerRow, align 2
  %20 = load i16, ptr @gImageYSize, align 2
  %conv78 = zext i16 %20 to i32
  %21 = load i8, ptr @gMaxMCUYSize, align 1
  %conv79 = zext i8 %21 to i32
  %sub80 = sub nsw i32 %conv79, 1
  %add81 = add nsw i32 %conv78, %sub80
  %22 = load i8, ptr @gMaxMCUYSize, align 1
  %conv82 = zext i8 %22 to i32
  %cmp83 = icmp eq i32 %conv82, 8
  %23 = zext i1 %cmp83 to i64
  %cond85 = select i1 %cmp83, i32 3, i32 4
  %shr86 = ashr i32 %add81, %cond85
  %conv87 = trunc i32 %shr86 to i16
  store i16 %conv87, ptr @gMaxMCUSPerCol, align 2
  %24 = load i16, ptr @gMaxMCUSPerRow, align 2
  %conv88 = zext i16 %24 to i32
  %25 = load i16, ptr @gMaxMCUSPerCol, align 2
  %conv89 = zext i16 %25 to i32
  %mul = mul nsw i32 %conv88, %conv89
  %conv90 = trunc i32 %mul to i16
  store i16 %conv90, ptr @gNumMCUSRemaining, align 2
  store i8 0, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end71, %if.else69, %if.else64, %if.then28, %if.then8
  %26 = load i8, ptr %retval, align 1
  ret i8 %26
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @initScan() #0 {
entry:
  %retval = alloca i8, align 1
  %foundEOI = alloca i8, align 1
  %status = alloca i8, align 1
  %call = call zeroext i8 @pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_1(ptr noundef %foundEOI)
  store i8 %call, ptr %status, align 1
  %0 = load i8, ptr %status, align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8, ptr %status, align 1
  store i8 %1, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8, ptr %foundEOI, align 1
  %tobool1 = icmp ne i8 %2, 0
  br i1 %tobool1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i8 18, ptr %retval, align 1
  br label %return

if.end3:                                          ; preds = %if.end
  %call4 = call zeroext i8 @checkHuffTables()
  store i8 %call4, ptr %status, align 1
  %3 = load i8, ptr %status, align 1
  %tobool5 = icmp ne i8 %3, 0
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  %4 = load i8, ptr %status, align 1
  store i8 %4, ptr %retval, align 1
  br label %return

if.end7:                                          ; preds = %if.end3
  %call8 = call zeroext i8 @checkQuantTables()
  store i8 %call8, ptr %status, align 1
  %5 = load i8, ptr %status, align 1
  %tobool9 = icmp ne i8 %5, 0
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  %6 = load i8, ptr %status, align 1
  store i8 %6, ptr %retval, align 1
  br label %return

if.end11:                                         ; preds = %if.end7
  store i16 0, ptr @gLastDC, align 2
  store i16 0, ptr getelementptr inbounds ([3 x i16], ptr @gLastDC, i64 0, i64 1), align 2
  store i16 0, ptr getelementptr inbounds ([3 x i16], ptr @gLastDC, i64 0, i64 2), align 2
  %7 = load i16, ptr @gRestartInterval, align 2
  %tobool12 = icmp ne i16 %7, 0
  br i1 %tobool12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end11
  %8 = load i16, ptr @gRestartInterval, align 2
  store i16 %8, ptr @gRestartsLeft, align 2
  store i16 0, ptr @gNextRestartNum, align 2
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end11
  call void @pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_2()
  store i8 0, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end14, %if.then10, %if.then6, %if.then2, %if.then
  %9 = load i8, ptr %retval, align 1
  ret i8 %9
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @processRestart() #0 {
entry:
  %retval = alloca i8, align 1
  %i = alloca i16, align 2
  %c = alloca i8, align 1
  store i8 0, ptr %c, align 1
  store i16 1536, ptr %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i16, ptr %i, align 2
  %conv = zext i16 %0 to i32
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call zeroext i8 @getChar()
  %conv2 = zext i8 %call to i32
  %cmp3 = icmp eq i32 %conv2, 255
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %1 = load i16, ptr %i, align 2
  %dec = add i16 %1, -1
  store i16 %dec, ptr %i, align 2
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %if.then, %for.cond
  %2 = load i16, ptr %i, align 2
  %conv5 = zext i16 %2 to i32
  %cmp6 = icmp eq i32 %conv5, 0
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.end
  store i8 29, ptr %retval, align 1
  br label %return

if.end9:                                          ; preds = %for.end
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc21, %if.end9
  %3 = load i16, ptr %i, align 2
  %conv11 = zext i16 %3 to i32
  %cmp12 = icmp sgt i32 %conv11, 0
  br i1 %cmp12, label %for.body14, label %for.end23

for.body14:                                       ; preds = %for.cond10
  %call15 = call zeroext i8 @getChar()
  store i8 %call15, ptr %c, align 1
  %conv16 = zext i8 %call15 to i32
  %cmp17 = icmp ne i32 %conv16, 255
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %for.body14
  br label %for.end23

if.end20:                                         ; preds = %for.body14
  br label %for.inc21

for.inc21:                                        ; preds = %if.end20
  %4 = load i16, ptr %i, align 2
  %dec22 = add i16 %4, -1
  store i16 %dec22, ptr %i, align 2
  br label %for.cond10, !llvm.loop !14

for.end23:                                        ; preds = %if.then19, %for.cond10
  %5 = load i16, ptr %i, align 2
  %conv24 = zext i16 %5 to i32
  %cmp25 = icmp eq i32 %conv24, 0
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %for.end23
  store i8 29, ptr %retval, align 1
  br label %return

if.end28:                                         ; preds = %for.end23
  %6 = load i8, ptr %c, align 1
  %conv29 = zext i8 %6 to i32
  %7 = load i16, ptr @gNextRestartNum, align 2
  %conv30 = zext i16 %7 to i32
  %add = add nsw i32 %conv30, 208
  %cmp31 = icmp ne i32 %conv29, %add
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end28
  store i8 29, ptr %retval, align 1
  br label %return

if.end34:                                         ; preds = %if.end28
  store i16 0, ptr @gLastDC, align 2
  store i16 0, ptr getelementptr inbounds ([3 x i16], ptr @gLastDC, i64 0, i64 1), align 2
  store i16 0, ptr getelementptr inbounds ([3 x i16], ptr @gLastDC, i64 0, i64 2), align 2
  %8 = load i16, ptr @gRestartInterval, align 2
  store i16 %8, ptr @gRestartsLeft, align 2
  %9 = load i16, ptr @gNextRestartNum, align 2
  %conv35 = zext i16 %9 to i32
  %add36 = add nsw i32 %conv35, 1
  %and = and i32 %add36, 7
  %conv37 = trunc i32 %and to i16
  store i16 %conv37, ptr @gNextRestartNum, align 2
  store i8 8, ptr @gBitsLeft, align 1
  %call38 = call zeroext i16 @getBits2(i8 noundef zeroext 8)
  %call39 = call zeroext i16 @getBits2(i8 noundef zeroext 8)
  store i8 0, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end34, %if.then33, %if.then27, %if.then8
  %10 = load i8, ptr %retval, align 1
  ret i8 %10
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @huffDecode(ptr noundef %pHuffTable, ptr noundef %pHuffVal) #0 {
entry:
  %retval = alloca i8, align 1
  %pHuffTable.addr = alloca ptr, align 8
  %pHuffVal.addr = alloca ptr, align 8
  %i = alloca i8, align 1
  %j = alloca i8, align 1
  %code = alloca i16, align 2
  %maxCode = alloca i16, align 2
  store ptr %pHuffTable, ptr %pHuffTable.addr, align 8
  store ptr %pHuffVal, ptr %pHuffVal.addr, align 8
  store i8 0, ptr %i, align 1
  %call = call zeroext i8 @getBit()
  %conv = zext i8 %call to i16
  store i16 %conv, ptr %code, align 2
  br label %for.cond

for.cond:                                         ; preds = %if.end11, %entry
  %0 = load i8, ptr %i, align 1
  %conv1 = zext i8 %0 to i32
  %cmp = icmp eq i32 %conv1, 16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  store i8 0, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %for.cond
  %1 = load ptr, ptr %pHuffTable.addr, align 8
  %mMaxCode = getelementptr inbounds %struct.HuffTableT, ptr %1, i32 0, i32 1
  %2 = load i8, ptr %i, align 1
  %idxprom = zext i8 %2 to i64
  %arrayidx = getelementptr inbounds [16 x i16], ptr %mMaxCode, i64 0, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2
  store i16 %3, ptr %maxCode, align 2
  %4 = load i16, ptr %code, align 2
  %conv3 = zext i16 %4 to i32
  %5 = load i16, ptr %maxCode, align 2
  %conv4 = zext i16 %5 to i32
  %cmp5 = icmp sle i32 %conv3, %conv4
  br i1 %cmp5, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %6 = load i16, ptr %maxCode, align 2
  %conv7 = zext i16 %6 to i32
  %cmp8 = icmp ne i32 %conv7, 65535
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %land.lhs.true
  br label %for.end

if.end11:                                         ; preds = %land.lhs.true, %if.end
  %7 = load i8, ptr %i, align 1
  %inc = add i8 %7, 1
  store i8 %inc, ptr %i, align 1
  %8 = load i16, ptr %code, align 2
  %conv12 = zext i16 %8 to i32
  %shl = shl i32 %conv12, 1
  %conv13 = trunc i32 %shl to i16
  store i16 %conv13, ptr %code, align 2
  %call14 = call zeroext i8 @getBit()
  %conv15 = zext i8 %call14 to i32
  %9 = load i16, ptr %code, align 2
  %conv16 = zext i16 %9 to i32
  %or = or i32 %conv16, %conv15
  %conv17 = trunc i32 %or to i16
  store i16 %conv17, ptr %code, align 2
  br label %for.cond

for.end:                                          ; preds = %if.then10
  %10 = load ptr, ptr %pHuffTable.addr, align 8
  %mValPtr = getelementptr inbounds %struct.HuffTableT, ptr %10, i32 0, i32 2
  %11 = load i8, ptr %i, align 1
  %idxprom18 = zext i8 %11 to i64
  %arrayidx19 = getelementptr inbounds [16 x i8], ptr %mValPtr, i64 0, i64 %idxprom18
  %12 = load i8, ptr %arrayidx19, align 1
  store i8 %12, ptr %j, align 1
  %13 = load i8, ptr %j, align 1
  %conv20 = zext i8 %13 to i32
  %14 = load i16, ptr %code, align 2
  %conv21 = zext i16 %14 to i32
  %15 = load ptr, ptr %pHuffTable.addr, align 8
  %mMinCode = getelementptr inbounds %struct.HuffTableT, ptr %15, i32 0, i32 0
  %16 = load i8, ptr %i, align 1
  %idxprom22 = zext i8 %16 to i64
  %arrayidx23 = getelementptr inbounds [16 x i16], ptr %mMinCode, i64 0, i64 %idxprom22
  %17 = load i16, ptr %arrayidx23, align 2
  %conv24 = zext i16 %17 to i32
  %sub = sub nsw i32 %conv21, %conv24
  %add = add nsw i32 %conv20, %sub
  %conv25 = trunc i32 %add to i8
  store i8 %conv25, ptr %j, align 1
  %18 = load ptr, ptr %pHuffVal.addr, align 8
  %19 = load i8, ptr %j, align 1
  %idxprom26 = zext i8 %19 to i64
  %arrayidx27 = getelementptr inbounds i8, ptr %18, i64 %idxprom26
  %20 = load i8, ptr %arrayidx27, align 1
  store i8 %20, ptr %retval, align 1
  br label %return

return:                                           ; preds = %for.end, %if.then
  %21 = load i8, ptr %retval, align 1
  ret i8 %21
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i16 @getBits2(i8 noundef zeroext %numBits) #0 {
entry:
  %numBits.addr = alloca i8, align 1
  store i8 %numBits, ptr %numBits.addr, align 1
  %0 = load i8, ptr %numBits.addr, align 1
  %call = call zeroext i16 @getBits(i8 noundef zeroext %0, i8 noundef zeroext 1)
  ret i16 %call
}

; Function Attrs: nounwind ssp uwtable
define internal signext i16 @huffExtend(i16 noundef zeroext %x, i8 noundef zeroext %s) #0 {
entry:
  %x.addr = alloca i16, align 2
  %s.addr = alloca i8, align 1
  store i16 %x, ptr %x.addr, align 2
  store i8 %s, ptr %s.addr, align 1
  %0 = load i16, ptr %x.addr, align 2
  %conv = zext i16 %0 to i32
  %1 = load i8, ptr %s.addr, align 1
  %call = call zeroext i16 @getExtendTest(i8 noundef zeroext %1)
  %conv1 = zext i16 %call to i32
  %cmp = icmp slt i32 %conv, %conv1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i16, ptr %x.addr, align 2
  %conv3 = sext i16 %2 to i32
  %3 = load i8, ptr %s.addr, align 1
  %call4 = call signext i16 @getExtendOffset(i8 noundef zeroext %3)
  %conv5 = sext i16 %call4 to i32
  %add = add nsw i32 %conv3, %conv5
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i16, ptr %x.addr, align 2
  %conv6 = sext i16 %4 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %conv6, %cond.false ]
  %conv7 = trunc i32 %cond to i16
  ret i16 %conv7
}

; Function Attrs: nounwind ssp uwtable
define internal void @transformBlockReduce(i8 noundef zeroext %mcuBlock) #0 {
entry:
  %mcuBlock.addr = alloca i8, align 1
  %c = alloca i8, align 1
  %cbG = alloca i16, align 2
  %cbB = alloca i16, align 2
  %crR = alloca i16, align 2
  %crG = alloca i16, align 2
  store i8 %mcuBlock, ptr %mcuBlock.addr, align 1
  %0 = load i16, ptr @gCoeffBuf, align 2
  %conv = sext i16 %0 to i32
  %add = add i32 %conv, 64
  %shr = lshr i32 %add, 7
  %add1 = add i32 %shr, 128
  %conv2 = trunc i32 %add1 to i16
  %call = call zeroext i8 @clamp(i16 noundef signext %conv2)
  store i8 %call, ptr %c, align 1
  %1 = load i32, ptr @gScanType, align 4
  switch i32 %1, label %sw.epilog161 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 3, label %sw.bb34
    i32 2, label %sw.bb73
    i32 4, label %sw.bb112
  ]

sw.bb:                                            ; preds = %entry
  %2 = load i8, ptr %c, align 1
  store i8 %2, ptr @gMCUBufR, align 1
  br label %sw.epilog161

sw.bb3:                                           ; preds = %entry
  %3 = load i8, ptr %mcuBlock.addr, align 1
  %conv4 = zext i8 %3 to i32
  switch i32 %conv4, label %sw.epilog [
    i32 0, label %sw.bb5
    i32 1, label %sw.bb6
    i32 2, label %sw.bb19
  ]

sw.bb5:                                           ; preds = %sw.bb3
  %4 = load i8, ptr %c, align 1
  store i8 %4, ptr @gMCUBufR, align 1
  %5 = load i8, ptr %c, align 1
  store i8 %5, ptr @gMCUBufG, align 1
  %6 = load i8, ptr %c, align 1
  store i8 %6, ptr @gMCUBufB, align 1
  br label %sw.epilog

sw.bb6:                                           ; preds = %sw.bb3
  %7 = load i8, ptr %c, align 1
  %conv7 = zext i8 %7 to i32
  %mul = mul i32 %conv7, 88
  %shr8 = lshr i32 %mul, 8
  %sub = sub i32 %shr8, 44
  %conv9 = trunc i32 %sub to i16
  store i16 %conv9, ptr %cbG, align 2
  %8 = load i8, ptr @gMCUBufG, align 1
  %9 = load i16, ptr %cbG, align 2
  %call10 = call zeroext i8 @subAndClamp(i8 noundef zeroext %8, i16 noundef signext %9)
  store i8 %call10, ptr @gMCUBufG, align 1
  %10 = load i8, ptr %c, align 1
  %conv11 = zext i8 %10 to i32
  %11 = load i8, ptr %c, align 1
  %conv12 = zext i8 %11 to i32
  %mul13 = mul i32 %conv12, 198
  %shr14 = lshr i32 %mul13, 8
  %add15 = add i32 %conv11, %shr14
  %sub16 = sub i32 %add15, 227
  %conv17 = trunc i32 %sub16 to i16
  store i16 %conv17, ptr %cbB, align 2
  %12 = load i8, ptr @gMCUBufB, align 1
  %13 = load i16, ptr %cbB, align 2
  %call18 = call zeroext i8 @addAndClamp(i8 noundef zeroext %12, i16 noundef signext %13)
  store i8 %call18, ptr @gMCUBufB, align 1
  br label %sw.epilog

sw.bb19:                                          ; preds = %sw.bb3
  %14 = load i8, ptr %c, align 1
  %conv20 = zext i8 %14 to i32
  %15 = load i8, ptr %c, align 1
  %conv21 = zext i8 %15 to i32
  %mul22 = mul i32 %conv21, 103
  %shr23 = lshr i32 %mul22, 8
  %add24 = add i32 %conv20, %shr23
  %sub25 = sub i32 %add24, 179
  %conv26 = trunc i32 %sub25 to i16
  store i16 %conv26, ptr %crR, align 2
  %16 = load i8, ptr @gMCUBufR, align 1
  %17 = load i16, ptr %crR, align 2
  %call27 = call zeroext i8 @addAndClamp(i8 noundef zeroext %16, i16 noundef signext %17)
  store i8 %call27, ptr @gMCUBufR, align 1
  %18 = load i8, ptr %c, align 1
  %conv28 = zext i8 %18 to i32
  %mul29 = mul i32 %conv28, 183
  %shr30 = lshr i32 %mul29, 8
  %sub31 = sub i32 %shr30, 91
  %conv32 = trunc i32 %sub31 to i16
  store i16 %conv32, ptr %crG, align 2
  %19 = load i8, ptr @gMCUBufG, align 1
  %20 = load i16, ptr %crG, align 2
  %call33 = call zeroext i8 @subAndClamp(i8 noundef zeroext %19, i16 noundef signext %20)
  store i8 %call33, ptr @gMCUBufG, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb19, %sw.bb6, %sw.bb5
  br label %sw.epilog161

sw.bb34:                                          ; preds = %entry
  %21 = load i8, ptr %mcuBlock.addr, align 1
  %conv35 = zext i8 %21 to i32
  switch i32 %conv35, label %sw.epilog72 [
    i32 0, label %sw.bb36
    i32 1, label %sw.bb37
    i32 2, label %sw.bb38
    i32 3, label %sw.bb55
  ]

sw.bb36:                                          ; preds = %sw.bb34
  %22 = load i8, ptr %c, align 1
  store i8 %22, ptr @gMCUBufR, align 1
  %23 = load i8, ptr %c, align 1
  store i8 %23, ptr @gMCUBufG, align 1
  %24 = load i8, ptr %c, align 1
  store i8 %24, ptr @gMCUBufB, align 1
  br label %sw.epilog72

sw.bb37:                                          ; preds = %sw.bb34
  %25 = load i8, ptr %c, align 1
  store i8 %25, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 128), align 1
  %26 = load i8, ptr %c, align 1
  store i8 %26, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 128), align 1
  %27 = load i8, ptr %c, align 1
  store i8 %27, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 128), align 1
  br label %sw.epilog72

sw.bb38:                                          ; preds = %sw.bb34
  %28 = load i8, ptr %c, align 1
  %conv39 = zext i8 %28 to i32
  %mul40 = mul i32 %conv39, 88
  %shr41 = lshr i32 %mul40, 8
  %sub42 = sub i32 %shr41, 44
  %conv43 = trunc i32 %sub42 to i16
  store i16 %conv43, ptr %cbG, align 2
  %29 = load i8, ptr @gMCUBufG, align 1
  %30 = load i16, ptr %cbG, align 2
  %call44 = call zeroext i8 @subAndClamp(i8 noundef zeroext %29, i16 noundef signext %30)
  store i8 %call44, ptr @gMCUBufG, align 1
  %31 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 128), align 1
  %32 = load i16, ptr %cbG, align 2
  %call45 = call zeroext i8 @subAndClamp(i8 noundef zeroext %31, i16 noundef signext %32)
  store i8 %call45, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 128), align 1
  %33 = load i8, ptr %c, align 1
  %conv46 = zext i8 %33 to i32
  %34 = load i8, ptr %c, align 1
  %conv47 = zext i8 %34 to i32
  %mul48 = mul i32 %conv47, 198
  %shr49 = lshr i32 %mul48, 8
  %add50 = add i32 %conv46, %shr49
  %sub51 = sub i32 %add50, 227
  %conv52 = trunc i32 %sub51 to i16
  store i16 %conv52, ptr %cbB, align 2
  %35 = load i8, ptr @gMCUBufB, align 1
  %36 = load i16, ptr %cbB, align 2
  %call53 = call zeroext i8 @addAndClamp(i8 noundef zeroext %35, i16 noundef signext %36)
  store i8 %call53, ptr @gMCUBufB, align 1
  %37 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 128), align 1
  %38 = load i16, ptr %cbB, align 2
  %call54 = call zeroext i8 @addAndClamp(i8 noundef zeroext %37, i16 noundef signext %38)
  store i8 %call54, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 128), align 1
  br label %sw.epilog72

sw.bb55:                                          ; preds = %sw.bb34
  %39 = load i8, ptr %c, align 1
  %conv56 = zext i8 %39 to i32
  %40 = load i8, ptr %c, align 1
  %conv57 = zext i8 %40 to i32
  %mul58 = mul i32 %conv57, 103
  %shr59 = lshr i32 %mul58, 8
  %add60 = add i32 %conv56, %shr59
  %sub61 = sub i32 %add60, 179
  %conv62 = trunc i32 %sub61 to i16
  store i16 %conv62, ptr %crR, align 2
  %41 = load i8, ptr @gMCUBufR, align 1
  %42 = load i16, ptr %crR, align 2
  %call63 = call zeroext i8 @addAndClamp(i8 noundef zeroext %41, i16 noundef signext %42)
  store i8 %call63, ptr @gMCUBufR, align 1
  %43 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 128), align 1
  %44 = load i16, ptr %crR, align 2
  %call64 = call zeroext i8 @addAndClamp(i8 noundef zeroext %43, i16 noundef signext %44)
  store i8 %call64, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 128), align 1
  %45 = load i8, ptr %c, align 1
  %conv65 = zext i8 %45 to i32
  %mul66 = mul i32 %conv65, 183
  %shr67 = lshr i32 %mul66, 8
  %sub68 = sub i32 %shr67, 91
  %conv69 = trunc i32 %sub68 to i16
  store i16 %conv69, ptr %crG, align 2
  %46 = load i8, ptr @gMCUBufG, align 1
  %47 = load i16, ptr %crG, align 2
  %call70 = call zeroext i8 @subAndClamp(i8 noundef zeroext %46, i16 noundef signext %47)
  store i8 %call70, ptr @gMCUBufG, align 1
  %48 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 128), align 1
  %49 = load i16, ptr %crG, align 2
  %call71 = call zeroext i8 @subAndClamp(i8 noundef zeroext %48, i16 noundef signext %49)
  store i8 %call71, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 128), align 1
  br label %sw.epilog72

sw.epilog72:                                      ; preds = %sw.bb34, %sw.bb55, %sw.bb38, %sw.bb37, %sw.bb36
  br label %sw.epilog161

sw.bb73:                                          ; preds = %entry
  %50 = load i8, ptr %mcuBlock.addr, align 1
  %conv74 = zext i8 %50 to i32
  switch i32 %conv74, label %sw.epilog111 [
    i32 0, label %sw.bb75
    i32 1, label %sw.bb76
    i32 2, label %sw.bb77
    i32 3, label %sw.bb94
  ]

sw.bb75:                                          ; preds = %sw.bb73
  %51 = load i8, ptr %c, align 1
  store i8 %51, ptr @gMCUBufR, align 1
  %52 = load i8, ptr %c, align 1
  store i8 %52, ptr @gMCUBufG, align 1
  %53 = load i8, ptr %c, align 1
  store i8 %53, ptr @gMCUBufB, align 1
  br label %sw.epilog111

sw.bb76:                                          ; preds = %sw.bb73
  %54 = load i8, ptr %c, align 1
  store i8 %54, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 64), align 1
  %55 = load i8, ptr %c, align 1
  store i8 %55, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 64), align 1
  %56 = load i8, ptr %c, align 1
  store i8 %56, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 64), align 1
  br label %sw.epilog111

sw.bb77:                                          ; preds = %sw.bb73
  %57 = load i8, ptr %c, align 1
  %conv78 = zext i8 %57 to i32
  %mul79 = mul i32 %conv78, 88
  %shr80 = lshr i32 %mul79, 8
  %sub81 = sub i32 %shr80, 44
  %conv82 = trunc i32 %sub81 to i16
  store i16 %conv82, ptr %cbG, align 2
  %58 = load i8, ptr @gMCUBufG, align 1
  %59 = load i16, ptr %cbG, align 2
  %call83 = call zeroext i8 @subAndClamp(i8 noundef zeroext %58, i16 noundef signext %59)
  store i8 %call83, ptr @gMCUBufG, align 1
  %60 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 64), align 1
  %61 = load i16, ptr %cbG, align 2
  %call84 = call zeroext i8 @subAndClamp(i8 noundef zeroext %60, i16 noundef signext %61)
  store i8 %call84, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 64), align 1
  %62 = load i8, ptr %c, align 1
  %conv85 = zext i8 %62 to i32
  %63 = load i8, ptr %c, align 1
  %conv86 = zext i8 %63 to i32
  %mul87 = mul i32 %conv86, 198
  %shr88 = lshr i32 %mul87, 8
  %add89 = add i32 %conv85, %shr88
  %sub90 = sub i32 %add89, 227
  %conv91 = trunc i32 %sub90 to i16
  store i16 %conv91, ptr %cbB, align 2
  %64 = load i8, ptr @gMCUBufB, align 1
  %65 = load i16, ptr %cbB, align 2
  %call92 = call zeroext i8 @addAndClamp(i8 noundef zeroext %64, i16 noundef signext %65)
  store i8 %call92, ptr @gMCUBufB, align 1
  %66 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 64), align 1
  %67 = load i16, ptr %cbB, align 2
  %call93 = call zeroext i8 @addAndClamp(i8 noundef zeroext %66, i16 noundef signext %67)
  store i8 %call93, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 64), align 1
  br label %sw.epilog111

sw.bb94:                                          ; preds = %sw.bb73
  %68 = load i8, ptr %c, align 1
  %conv95 = zext i8 %68 to i32
  %69 = load i8, ptr %c, align 1
  %conv96 = zext i8 %69 to i32
  %mul97 = mul i32 %conv96, 103
  %shr98 = lshr i32 %mul97, 8
  %add99 = add i32 %conv95, %shr98
  %sub100 = sub i32 %add99, 179
  %conv101 = trunc i32 %sub100 to i16
  store i16 %conv101, ptr %crR, align 2
  %70 = load i8, ptr @gMCUBufR, align 1
  %71 = load i16, ptr %crR, align 2
  %call102 = call zeroext i8 @addAndClamp(i8 noundef zeroext %70, i16 noundef signext %71)
  store i8 %call102, ptr @gMCUBufR, align 1
  %72 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 64), align 1
  %73 = load i16, ptr %crR, align 2
  %call103 = call zeroext i8 @addAndClamp(i8 noundef zeroext %72, i16 noundef signext %73)
  store i8 %call103, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 64), align 1
  %74 = load i8, ptr %c, align 1
  %conv104 = zext i8 %74 to i32
  %mul105 = mul i32 %conv104, 183
  %shr106 = lshr i32 %mul105, 8
  %sub107 = sub i32 %shr106, 91
  %conv108 = trunc i32 %sub107 to i16
  store i16 %conv108, ptr %crG, align 2
  %75 = load i8, ptr @gMCUBufG, align 1
  %76 = load i16, ptr %crG, align 2
  %call109 = call zeroext i8 @subAndClamp(i8 noundef zeroext %75, i16 noundef signext %76)
  store i8 %call109, ptr @gMCUBufG, align 1
  %77 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 64), align 1
  %78 = load i16, ptr %crG, align 2
  %call110 = call zeroext i8 @subAndClamp(i8 noundef zeroext %77, i16 noundef signext %78)
  store i8 %call110, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 64), align 1
  br label %sw.epilog111

sw.epilog111:                                     ; preds = %sw.bb73, %sw.bb94, %sw.bb77, %sw.bb76, %sw.bb75
  br label %sw.epilog161

sw.bb112:                                         ; preds = %entry
  %79 = load i8, ptr %mcuBlock.addr, align 1
  %conv113 = zext i8 %79 to i32
  switch i32 %conv113, label %sw.epilog160 [
    i32 0, label %sw.bb114
    i32 1, label %sw.bb115
    i32 2, label %sw.bb116
    i32 3, label %sw.bb117
    i32 4, label %sw.bb118
    i32 5, label %sw.bb139
  ]

sw.bb114:                                         ; preds = %sw.bb112
  %80 = load i8, ptr %c, align 1
  store i8 %80, ptr @gMCUBufR, align 1
  %81 = load i8, ptr %c, align 1
  store i8 %81, ptr @gMCUBufG, align 1
  %82 = load i8, ptr %c, align 1
  store i8 %82, ptr @gMCUBufB, align 1
  br label %sw.epilog160

sw.bb115:                                         ; preds = %sw.bb112
  %83 = load i8, ptr %c, align 1
  store i8 %83, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 64), align 1
  %84 = load i8, ptr %c, align 1
  store i8 %84, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 64), align 1
  %85 = load i8, ptr %c, align 1
  store i8 %85, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 64), align 1
  br label %sw.epilog160

sw.bb116:                                         ; preds = %sw.bb112
  %86 = load i8, ptr %c, align 1
  store i8 %86, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 128), align 1
  %87 = load i8, ptr %c, align 1
  store i8 %87, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 128), align 1
  %88 = load i8, ptr %c, align 1
  store i8 %88, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 128), align 1
  br label %sw.epilog160

sw.bb117:                                         ; preds = %sw.bb112
  %89 = load i8, ptr %c, align 1
  store i8 %89, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 192), align 1
  %90 = load i8, ptr %c, align 1
  store i8 %90, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 192), align 1
  %91 = load i8, ptr %c, align 1
  store i8 %91, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 192), align 1
  br label %sw.epilog160

sw.bb118:                                         ; preds = %sw.bb112
  %92 = load i8, ptr %c, align 1
  %conv119 = zext i8 %92 to i32
  %mul120 = mul i32 %conv119, 88
  %shr121 = lshr i32 %mul120, 8
  %sub122 = sub i32 %shr121, 44
  %conv123 = trunc i32 %sub122 to i16
  store i16 %conv123, ptr %cbG, align 2
  %93 = load i8, ptr @gMCUBufG, align 1
  %94 = load i16, ptr %cbG, align 2
  %call124 = call zeroext i8 @subAndClamp(i8 noundef zeroext %93, i16 noundef signext %94)
  store i8 %call124, ptr @gMCUBufG, align 1
  %95 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 64), align 1
  %96 = load i16, ptr %cbG, align 2
  %call125 = call zeroext i8 @subAndClamp(i8 noundef zeroext %95, i16 noundef signext %96)
  store i8 %call125, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 64), align 1
  %97 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 128), align 1
  %98 = load i16, ptr %cbG, align 2
  %call126 = call zeroext i8 @subAndClamp(i8 noundef zeroext %97, i16 noundef signext %98)
  store i8 %call126, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 128), align 1
  %99 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 192), align 1
  %100 = load i16, ptr %cbG, align 2
  %call127 = call zeroext i8 @subAndClamp(i8 noundef zeroext %99, i16 noundef signext %100)
  store i8 %call127, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 192), align 1
  %101 = load i8, ptr %c, align 1
  %conv128 = zext i8 %101 to i32
  %102 = load i8, ptr %c, align 1
  %conv129 = zext i8 %102 to i32
  %mul130 = mul i32 %conv129, 198
  %shr131 = lshr i32 %mul130, 8
  %add132 = add i32 %conv128, %shr131
  %sub133 = sub i32 %add132, 227
  %conv134 = trunc i32 %sub133 to i16
  store i16 %conv134, ptr %cbB, align 2
  %103 = load i8, ptr @gMCUBufB, align 1
  %104 = load i16, ptr %cbB, align 2
  %call135 = call zeroext i8 @addAndClamp(i8 noundef zeroext %103, i16 noundef signext %104)
  store i8 %call135, ptr @gMCUBufB, align 1
  %105 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 64), align 1
  %106 = load i16, ptr %cbB, align 2
  %call136 = call zeroext i8 @addAndClamp(i8 noundef zeroext %105, i16 noundef signext %106)
  store i8 %call136, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 64), align 1
  %107 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 128), align 1
  %108 = load i16, ptr %cbB, align 2
  %call137 = call zeroext i8 @addAndClamp(i8 noundef zeroext %107, i16 noundef signext %108)
  store i8 %call137, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 128), align 1
  %109 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 192), align 1
  %110 = load i16, ptr %cbB, align 2
  %call138 = call zeroext i8 @addAndClamp(i8 noundef zeroext %109, i16 noundef signext %110)
  store i8 %call138, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 192), align 1
  br label %sw.epilog160

sw.bb139:                                         ; preds = %sw.bb112
  %111 = load i8, ptr %c, align 1
  %conv140 = zext i8 %111 to i32
  %112 = load i8, ptr %c, align 1
  %conv141 = zext i8 %112 to i32
  %mul142 = mul i32 %conv141, 103
  %shr143 = lshr i32 %mul142, 8
  %add144 = add i32 %conv140, %shr143
  %sub145 = sub i32 %add144, 179
  %conv146 = trunc i32 %sub145 to i16
  store i16 %conv146, ptr %crR, align 2
  %113 = load i8, ptr @gMCUBufR, align 1
  %114 = load i16, ptr %crR, align 2
  %call147 = call zeroext i8 @addAndClamp(i8 noundef zeroext %113, i16 noundef signext %114)
  store i8 %call147, ptr @gMCUBufR, align 1
  %115 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 64), align 1
  %116 = load i16, ptr %crR, align 2
  %call148 = call zeroext i8 @addAndClamp(i8 noundef zeroext %115, i16 noundef signext %116)
  store i8 %call148, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 64), align 1
  %117 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 128), align 1
  %118 = load i16, ptr %crR, align 2
  %call149 = call zeroext i8 @addAndClamp(i8 noundef zeroext %117, i16 noundef signext %118)
  store i8 %call149, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 128), align 1
  %119 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 192), align 1
  %120 = load i16, ptr %crR, align 2
  %call150 = call zeroext i8 @addAndClamp(i8 noundef zeroext %119, i16 noundef signext %120)
  store i8 %call150, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 192), align 1
  %121 = load i8, ptr %c, align 1
  %conv151 = zext i8 %121 to i32
  %mul152 = mul i32 %conv151, 183
  %shr153 = lshr i32 %mul152, 8
  %sub154 = sub i32 %shr153, 91
  %conv155 = trunc i32 %sub154 to i16
  store i16 %conv155, ptr %crG, align 2
  %122 = load i8, ptr @gMCUBufG, align 1
  %123 = load i16, ptr %crG, align 2
  %call156 = call zeroext i8 @subAndClamp(i8 noundef zeroext %122, i16 noundef signext %123)
  store i8 %call156, ptr @gMCUBufG, align 1
  %124 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 64), align 1
  %125 = load i16, ptr %crG, align 2
  %call157 = call zeroext i8 @subAndClamp(i8 noundef zeroext %124, i16 noundef signext %125)
  store i8 %call157, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 64), align 1
  %126 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 128), align 1
  %127 = load i16, ptr %crG, align 2
  %call158 = call zeroext i8 @subAndClamp(i8 noundef zeroext %126, i16 noundef signext %127)
  store i8 %call158, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 128), align 1
  %128 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 192), align 1
  %129 = load i16, ptr %crG, align 2
  %call159 = call zeroext i8 @subAndClamp(i8 noundef zeroext %128, i16 noundef signext %129)
  store i8 %call159, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 192), align 1
  br label %sw.epilog160

sw.epilog160:                                     ; preds = %sw.bb112, %sw.bb139, %sw.bb118, %sw.bb117, %sw.bb116, %sw.bb115, %sw.bb114
  br label %sw.epilog161

sw.epilog161:                                     ; preds = %entry, %sw.epilog160, %sw.epilog111, %sw.epilog72, %sw.epilog, %sw.bb
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @transformBlock(i8 noundef zeroext %mcuBlock) #0 {
entry:
  %mcuBlock.addr = alloca i8, align 1
  store i8 %mcuBlock, ptr %mcuBlock.addr, align 1
  call void @idctRows()
  call void @idctCols()
  %0 = load i32, ptr @gScanType, align 4
  switch i32 %0, label %sw.epilog28 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 3, label %sw.bb5
    i32 2, label %sw.bb12
    i32 4, label %sw.bb19
  ]

sw.bb:                                            ; preds = %entry
  call void @copyY(i8 noundef zeroext 0)
  br label %sw.epilog28

sw.bb1:                                           ; preds = %entry
  %1 = load i8, ptr %mcuBlock.addr, align 1
  %conv = zext i8 %1 to i32
  switch i32 %conv, label %sw.epilog [
    i32 0, label %sw.bb2
    i32 1, label %sw.bb3
    i32 2, label %sw.bb4
  ]

sw.bb2:                                           ; preds = %sw.bb1
  call void @copyY(i8 noundef zeroext 0)
  br label %sw.epilog

sw.bb3:                                           ; preds = %sw.bb1
  call void @convertCb(i8 noundef zeroext 0)
  br label %sw.epilog

sw.bb4:                                           ; preds = %sw.bb1
  call void @convertCr(i8 noundef zeroext 0)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb4, %sw.bb3, %sw.bb2
  br label %sw.epilog28

sw.bb5:                                           ; preds = %entry
  %2 = load i8, ptr %mcuBlock.addr, align 1
  %conv6 = zext i8 %2 to i32
  switch i32 %conv6, label %sw.epilog11 [
    i32 0, label %sw.bb7
    i32 1, label %sw.bb8
    i32 2, label %sw.bb9
    i32 3, label %sw.bb10
  ]

sw.bb7:                                           ; preds = %sw.bb5
  call void @copyY(i8 noundef zeroext 0)
  br label %sw.epilog11

sw.bb8:                                           ; preds = %sw.bb5
  call void @copyY(i8 noundef zeroext -128)
  br label %sw.epilog11

sw.bb9:                                           ; preds = %sw.bb5
  call void @upsampleCbV(i8 noundef zeroext 0, i8 noundef zeroext 0)
  call void @upsampleCbV(i8 noundef zeroext 32, i8 noundef zeroext -128)
  br label %sw.epilog11

sw.bb10:                                          ; preds = %sw.bb5
  call void @upsampleCrV(i8 noundef zeroext 0, i8 noundef zeroext 0)
  call void @upsampleCrV(i8 noundef zeroext 32, i8 noundef zeroext -128)
  br label %sw.epilog11

sw.epilog11:                                      ; preds = %sw.bb5, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7
  br label %sw.epilog28

sw.bb12:                                          ; preds = %entry
  %3 = load i8, ptr %mcuBlock.addr, align 1
  %conv13 = zext i8 %3 to i32
  switch i32 %conv13, label %sw.epilog18 [
    i32 0, label %sw.bb14
    i32 1, label %sw.bb15
    i32 2, label %sw.bb16
    i32 3, label %sw.bb17
  ]

sw.bb14:                                          ; preds = %sw.bb12
  call void @copyY(i8 noundef zeroext 0)
  br label %sw.epilog18

sw.bb15:                                          ; preds = %sw.bb12
  call void @copyY(i8 noundef zeroext 64)
  br label %sw.epilog18

sw.bb16:                                          ; preds = %sw.bb12
  call void @upsampleCbH(i8 noundef zeroext 0, i8 noundef zeroext 0)
  call void @upsampleCbH(i8 noundef zeroext 4, i8 noundef zeroext 64)
  br label %sw.epilog18

sw.bb17:                                          ; preds = %sw.bb12
  call void @upsampleCrH(i8 noundef zeroext 0, i8 noundef zeroext 0)
  call void @upsampleCrH(i8 noundef zeroext 4, i8 noundef zeroext 64)
  br label %sw.epilog18

sw.epilog18:                                      ; preds = %sw.bb12, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14
  br label %sw.epilog28

sw.bb19:                                          ; preds = %entry
  %4 = load i8, ptr %mcuBlock.addr, align 1
  %conv20 = zext i8 %4 to i32
  switch i32 %conv20, label %sw.epilog27 [
    i32 0, label %sw.bb21
    i32 1, label %sw.bb22
    i32 2, label %sw.bb23
    i32 3, label %sw.bb24
    i32 4, label %sw.bb25
    i32 5, label %sw.bb26
  ]

sw.bb21:                                          ; preds = %sw.bb19
  call void @copyY(i8 noundef zeroext 0)
  br label %sw.epilog27

sw.bb22:                                          ; preds = %sw.bb19
  call void @copyY(i8 noundef zeroext 64)
  br label %sw.epilog27

sw.bb23:                                          ; preds = %sw.bb19
  call void @copyY(i8 noundef zeroext -128)
  br label %sw.epilog27

sw.bb24:                                          ; preds = %sw.bb19
  call void @copyY(i8 noundef zeroext -64)
  br label %sw.epilog27

sw.bb25:                                          ; preds = %sw.bb19
  call void @upsampleCb(i8 noundef zeroext 0, i8 noundef zeroext 0)
  call void @upsampleCb(i8 noundef zeroext 4, i8 noundef zeroext 64)
  call void @upsampleCb(i8 noundef zeroext 32, i8 noundef zeroext -128)
  call void @upsampleCb(i8 noundef zeroext 36, i8 noundef zeroext -64)
  br label %sw.epilog27

sw.bb26:                                          ; preds = %sw.bb19
  call void @upsampleCr(i8 noundef zeroext 0, i8 noundef zeroext 0)
  call void @upsampleCr(i8 noundef zeroext 4, i8 noundef zeroext 64)
  call void @upsampleCr(i8 noundef zeroext 32, i8 noundef zeroext -128)
  call void @upsampleCr(i8 noundef zeroext 36, i8 noundef zeroext -64)
  br label %sw.epilog27

sw.epilog27:                                      ; preds = %sw.bb19, %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb23, %sw.bb22, %sw.bb21
  br label %sw.epilog28

sw.epilog28:                                      ; preds = %entry, %sw.epilog27, %sw.epilog18, %sw.epilog11, %sw.epilog, %sw.bb
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @getChar() #0 {
entry:
  %retval = alloca i8, align 1
  %0 = load i8, ptr @gInBufLeft, align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  call void @pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_3()
  %1 = load i8, ptr @gInBufLeft, align 1
  %tobool1 = icmp ne i8 %1, 0
  br i1 %tobool1, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %2 = load i8, ptr @gTemFlag, align 1
  %conv = zext i8 %2 to i32
  %neg = xor i32 %conv, -1
  %conv3 = trunc i32 %neg to i8
  store i8 %conv3, ptr @gTemFlag, align 1
  %3 = load i8, ptr @gTemFlag, align 1
  %conv4 = zext i8 %3 to i32
  %tobool5 = icmp ne i32 %conv4, 0
  %4 = zext i1 %tobool5 to i64
  %cond = select i1 %tobool5, i32 255, i32 217
  %conv6 = trunc i32 %cond to i8
  store i8 %conv6, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  %5 = load i8, ptr @gInBufLeft, align 1
  %dec = add i8 %5, -1
  store i8 %dec, ptr @gInBufLeft, align 1
  %6 = load i8, ptr @gInBufOfs, align 1
  %inc = add i8 %6, 1
  store i8 %inc, ptr @gInBufOfs, align 1
  %idxprom = zext i8 %6 to i64
  %arrayidx = getelementptr inbounds [256 x i8], ptr @gInBuf, i64 0, i64 %idxprom
  %7 = load i8, ptr %arrayidx, align 1
  store i8 %7, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end7, %if.then2
  %8 = load i8, ptr %retval, align 1
  ret i8 %8
}

; Function Attrs: nounwind ssp uwtable
define internal void @fillInBuf() #0 {
entry:
  %status = alloca i8, align 1
  store i8 4, ptr @gInBufOfs, align 1
  store i8 0, ptr @gInBufLeft, align 1
  %0 = load ptr, ptr @g_pNeedBytesCallback, align 8
  %1 = load i8, ptr @gInBufOfs, align 1
  %conv = zext i8 %1 to i32
  %idx.ext = sext i32 %conv to i64
  %add.ptr = getelementptr inbounds i8, ptr @gInBuf, i64 %idx.ext
  %2 = load i8, ptr @gInBufOfs, align 1
  %conv1 = zext i8 %2 to i32
  %sub = sub nsw i32 256, %conv1
  %conv2 = trunc i32 %sub to i8
  %3 = load ptr, ptr @g_pCallback_data, align 8
  %call = call zeroext i8 %0(ptr noundef %add.ptr, i8 noundef zeroext %conv2, ptr noundef @gInBufLeft, ptr noundef %3)
  store i8 %call, ptr %status, align 1
  %4 = load i8, ptr %status, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i8, ptr %status, align 1
  store i8 %5, ptr @gCallbackStatus, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @getBit() #0 {
entry:
  %ret = alloca i8, align 1
  store i8 0, ptr %ret, align 1
  %0 = load i16, ptr @gBitBuf, align 2
  %conv = zext i16 %0 to i32
  %and = and i32 %conv, 32768
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 1, ptr %ret, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8, ptr @gBitsLeft, align 1
  %tobool1 = icmp ne i8 %1, 0
  br i1 %tobool1, label %if.end8, label %if.then2

if.then2:                                         ; preds = %if.end
  %call = call zeroext i8 @getOctet(i8 noundef zeroext 1)
  %conv3 = zext i8 %call to i32
  %2 = load i16, ptr @gBitBuf, align 2
  %conv4 = zext i16 %2 to i32
  %or = or i32 %conv4, %conv3
  %conv5 = trunc i32 %or to i16
  store i16 %conv5, ptr @gBitBuf, align 2
  %3 = load i8, ptr @gBitsLeft, align 1
  %conv6 = zext i8 %3 to i32
  %add = add nsw i32 %conv6, 8
  %conv7 = trunc i32 %add to i8
  store i8 %conv7, ptr @gBitsLeft, align 1
  br label %if.end8

if.end8:                                          ; preds = %if.then2, %if.end
  %4 = load i8, ptr @gBitsLeft, align 1
  %dec = add i8 %4, -1
  store i8 %dec, ptr @gBitsLeft, align 1
  %5 = load i16, ptr @gBitBuf, align 2
  %conv9 = zext i16 %5 to i32
  %shl = shl i32 %conv9, 1
  %conv10 = trunc i32 %shl to i16
  store i16 %conv10, ptr @gBitBuf, align 2
  %6 = load i8, ptr %ret, align 1
  ret i8 %6
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @getOctet(i8 noundef zeroext %FFCheck) #0 {
entry:
  %FFCheck.addr = alloca i8, align 1
  %c = alloca i8, align 1
  %n = alloca i8, align 1
  store i8 %FFCheck, ptr %FFCheck.addr, align 1
  %call = call zeroext i8 @getChar()
  store i8 %call, ptr %c, align 1
  %0 = load i8, ptr %FFCheck.addr, align 1
  %conv = zext i8 %0 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, ptr %c, align 1
  %conv1 = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv1, 255
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %land.lhs.true
  %call3 = call zeroext i8 @getChar()
  store i8 %call3, ptr %n, align 1
  %2 = load i8, ptr %n, align 1
  %tobool4 = icmp ne i8 %2, 0
  br i1 %tobool4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %3 = load i8, ptr %n, align 1
  call void @stuffChar(i8 noundef zeroext %3)
  call void @stuffChar(i8 noundef zeroext -1)
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  br label %if.end6

if.end6:                                          ; preds = %if.end, %land.lhs.true, %entry
  %4 = load i8, ptr %c, align 1
  ret i8 %4
}

; Function Attrs: nounwind ssp uwtable
define internal void @stuffChar(i8 noundef zeroext %i) #0 {
entry:
  %i.addr = alloca i8, align 1
  store i8 %i, ptr %i.addr, align 1
  %0 = load i8, ptr @gInBufOfs, align 1
  %dec = add i8 %0, -1
  store i8 %dec, ptr @gInBufOfs, align 1
  %1 = load i8, ptr %i.addr, align 1
  %2 = load i8, ptr @gInBufOfs, align 1
  %idxprom = zext i8 %2 to i64
  %arrayidx = getelementptr inbounds [256 x i8], ptr @gInBuf, i64 0, i64 %idxprom
  store i8 %1, ptr %arrayidx, align 1
  %3 = load i8, ptr @gInBufLeft, align 1
  %inc = add i8 %3, 1
  store i8 %inc, ptr @gInBufLeft, align 1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i16 @getBits(i8 noundef zeroext %numBits, i8 noundef zeroext %FFCheck) #0 {
entry:
  %numBits.addr = alloca i8, align 1
  %FFCheck.addr = alloca i8, align 1
  %origBits = alloca i8, align 1
  %ret = alloca i16, align 2
  store i8 %numBits, ptr %numBits.addr, align 1
  store i8 %FFCheck, ptr %FFCheck.addr, align 1
  %0 = load i8, ptr %numBits.addr, align 1
  store i8 %0, ptr %origBits, align 1
  %1 = load i16, ptr @gBitBuf, align 2
  store i16 %1, ptr %ret, align 2
  %2 = load i8, ptr %numBits.addr, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp sgt i32 %conv, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8, ptr %numBits.addr, align 1
  %conv2 = zext i8 %3 to i32
  %sub = sub nsw i32 %conv2, 8
  %conv3 = trunc i32 %sub to i8
  store i8 %conv3, ptr %numBits.addr, align 1
  %4 = load i8, ptr @gBitsLeft, align 1
  %conv4 = zext i8 %4 to i32
  %5 = load i16, ptr @gBitBuf, align 2
  %conv5 = zext i16 %5 to i32
  %shl = shl i32 %conv5, %conv4
  %conv6 = trunc i32 %shl to i16
  store i16 %conv6, ptr @gBitBuf, align 2
  %6 = load i8, ptr %FFCheck.addr, align 1
  %call = call zeroext i8 @getOctet(i8 noundef zeroext %6)
  %conv7 = zext i8 %call to i32
  %7 = load i16, ptr @gBitBuf, align 2
  %conv8 = zext i16 %7 to i32
  %or = or i32 %conv8, %conv7
  %conv9 = trunc i32 %or to i16
  store i16 %conv9, ptr @gBitBuf, align 2
  %8 = load i8, ptr @gBitsLeft, align 1
  %conv10 = zext i8 %8 to i32
  %sub11 = sub nsw i32 8, %conv10
  %9 = load i16, ptr @gBitBuf, align 2
  %conv12 = zext i16 %9 to i32
  %shl13 = shl i32 %conv12, %sub11
  %conv14 = trunc i32 %shl13 to i16
  store i16 %conv14, ptr @gBitBuf, align 2
  %10 = load i16, ptr %ret, align 2
  %conv15 = zext i16 %10 to i32
  %and = and i32 %conv15, 65280
  %11 = load i16, ptr @gBitBuf, align 2
  %conv16 = zext i16 %11 to i32
  %shr = ashr i32 %conv16, 8
  %or17 = or i32 %and, %shr
  %conv18 = trunc i32 %or17 to i16
  store i16 %conv18, ptr %ret, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i8, ptr @gBitsLeft, align 1
  %conv19 = zext i8 %12 to i32
  %13 = load i8, ptr %numBits.addr, align 1
  %conv20 = zext i8 %13 to i32
  %cmp21 = icmp slt i32 %conv19, %conv20
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end
  %14 = load i8, ptr @gBitsLeft, align 1
  %conv24 = zext i8 %14 to i32
  %15 = load i16, ptr @gBitBuf, align 2
  %conv25 = zext i16 %15 to i32
  %shl26 = shl i32 %conv25, %conv24
  %conv27 = trunc i32 %shl26 to i16
  store i16 %conv27, ptr @gBitBuf, align 2
  %16 = load i8, ptr %FFCheck.addr, align 1
  %call28 = call zeroext i8 @getOctet(i8 noundef zeroext %16)
  %conv29 = zext i8 %call28 to i32
  %17 = load i16, ptr @gBitBuf, align 2
  %conv30 = zext i16 %17 to i32
  %or31 = or i32 %conv30, %conv29
  %conv32 = trunc i32 %or31 to i16
  store i16 %conv32, ptr @gBitBuf, align 2
  %18 = load i8, ptr %numBits.addr, align 1
  %conv33 = zext i8 %18 to i32
  %19 = load i8, ptr @gBitsLeft, align 1
  %conv34 = zext i8 %19 to i32
  %sub35 = sub nsw i32 %conv33, %conv34
  %20 = load i16, ptr @gBitBuf, align 2
  %conv36 = zext i16 %20 to i32
  %shl37 = shl i32 %conv36, %sub35
  %conv38 = trunc i32 %shl37 to i16
  store i16 %conv38, ptr @gBitBuf, align 2
  %21 = load i8, ptr %numBits.addr, align 1
  %conv39 = zext i8 %21 to i32
  %22 = load i8, ptr @gBitsLeft, align 1
  %conv40 = zext i8 %22 to i32
  %sub41 = sub nsw i32 %conv39, %conv40
  %sub42 = sub nsw i32 8, %sub41
  %conv43 = trunc i32 %sub42 to i8
  store i8 %conv43, ptr @gBitsLeft, align 1
  br label %if.end52

if.else:                                          ; preds = %if.end
  %23 = load i8, ptr @gBitsLeft, align 1
  %conv44 = zext i8 %23 to i32
  %24 = load i8, ptr %numBits.addr, align 1
  %conv45 = zext i8 %24 to i32
  %sub46 = sub nsw i32 %conv44, %conv45
  %conv47 = trunc i32 %sub46 to i8
  store i8 %conv47, ptr @gBitsLeft, align 1
  %25 = load i8, ptr %numBits.addr, align 1
  %conv48 = zext i8 %25 to i32
  %26 = load i16, ptr @gBitBuf, align 2
  %conv49 = zext i16 %26 to i32
  %shl50 = shl i32 %conv49, %conv48
  %conv51 = trunc i32 %shl50 to i16
  store i16 %conv51, ptr @gBitBuf, align 2
  br label %if.end52

if.end52:                                         ; preds = %if.else, %if.then23
  %27 = load i16, ptr %ret, align 2
  %conv53 = zext i16 %27 to i32
  %28 = load i8, ptr %origBits, align 1
  %conv54 = zext i8 %28 to i32
  %sub55 = sub nsw i32 16, %conv54
  %shr56 = ashr i32 %conv53, %sub55
  %conv57 = trunc i32 %shr56 to i16
  ret i16 %conv57
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i16 @getExtendTest(i8 noundef zeroext %i) #0 {
entry:
  %retval = alloca i16, align 2
  %i.addr = alloca i8, align 1
  store i8 %i, ptr %i.addr, align 1
  %0 = load i8, ptr %i.addr, align 1
  %conv = zext i8 %0 to i32
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
    i32 5, label %sw.bb5
    i32 6, label %sw.bb6
    i32 7, label %sw.bb7
    i32 8, label %sw.bb8
    i32 9, label %sw.bb9
    i32 10, label %sw.bb10
    i32 11, label %sw.bb11
    i32 12, label %sw.bb12
    i32 13, label %sw.bb13
    i32 14, label %sw.bb14
    i32 15, label %sw.bb15
  ]

sw.bb:                                            ; preds = %entry
  store i16 0, ptr %retval, align 2
  br label %return

sw.bb1:                                           ; preds = %entry
  store i16 1, ptr %retval, align 2
  br label %return

sw.bb2:                                           ; preds = %entry
  store i16 2, ptr %retval, align 2
  br label %return

sw.bb3:                                           ; preds = %entry
  store i16 4, ptr %retval, align 2
  br label %return

sw.bb4:                                           ; preds = %entry
  store i16 8, ptr %retval, align 2
  br label %return

sw.bb5:                                           ; preds = %entry
  store i16 16, ptr %retval, align 2
  br label %return

sw.bb6:                                           ; preds = %entry
  store i16 32, ptr %retval, align 2
  br label %return

sw.bb7:                                           ; preds = %entry
  store i16 64, ptr %retval, align 2
  br label %return

sw.bb8:                                           ; preds = %entry
  store i16 128, ptr %retval, align 2
  br label %return

sw.bb9:                                           ; preds = %entry
  store i16 256, ptr %retval, align 2
  br label %return

sw.bb10:                                          ; preds = %entry
  store i16 512, ptr %retval, align 2
  br label %return

sw.bb11:                                          ; preds = %entry
  store i16 1024, ptr %retval, align 2
  br label %return

sw.bb12:                                          ; preds = %entry
  store i16 2048, ptr %retval, align 2
  br label %return

sw.bb13:                                          ; preds = %entry
  store i16 4096, ptr %retval, align 2
  br label %return

sw.bb14:                                          ; preds = %entry
  store i16 8192, ptr %retval, align 2
  br label %return

sw.bb15:                                          ; preds = %entry
  store i16 16384, ptr %retval, align 2
  br label %return

sw.default:                                       ; preds = %entry
  store i16 0, ptr %retval, align 2
  br label %return

return:                                           ; preds = %sw.default, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i16, ptr %retval, align 2
  ret i16 %1
}

; Function Attrs: nounwind ssp uwtable
define internal signext i16 @getExtendOffset(i8 noundef zeroext %i) #0 {
entry:
  %retval = alloca i16, align 2
  %i.addr = alloca i8, align 1
  store i8 %i, ptr %i.addr, align 1
  %0 = load i8, ptr %i.addr, align 1
  %conv = zext i8 %0 to i32
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
    i32 5, label %sw.bb5
    i32 6, label %sw.bb6
    i32 7, label %sw.bb7
    i32 8, label %sw.bb8
    i32 9, label %sw.bb9
    i32 10, label %sw.bb10
    i32 11, label %sw.bb11
    i32 12, label %sw.bb12
    i32 13, label %sw.bb13
    i32 14, label %sw.bb14
    i32 15, label %sw.bb15
  ]

sw.bb:                                            ; preds = %entry
  store i16 0, ptr %retval, align 2
  br label %return

sw.bb1:                                           ; preds = %entry
  store i16 -1, ptr %retval, align 2
  br label %return

sw.bb2:                                           ; preds = %entry
  store i16 -3, ptr %retval, align 2
  br label %return

sw.bb3:                                           ; preds = %entry
  store i16 -7, ptr %retval, align 2
  br label %return

sw.bb4:                                           ; preds = %entry
  store i16 -15, ptr %retval, align 2
  br label %return

sw.bb5:                                           ; preds = %entry
  store i16 -31, ptr %retval, align 2
  br label %return

sw.bb6:                                           ; preds = %entry
  store i16 -63, ptr %retval, align 2
  br label %return

sw.bb7:                                           ; preds = %entry
  store i16 -127, ptr %retval, align 2
  br label %return

sw.bb8:                                           ; preds = %entry
  store i16 -255, ptr %retval, align 2
  br label %return

sw.bb9:                                           ; preds = %entry
  store i16 -511, ptr %retval, align 2
  br label %return

sw.bb10:                                          ; preds = %entry
  store i16 -1023, ptr %retval, align 2
  br label %return

sw.bb11:                                          ; preds = %entry
  store i16 -2047, ptr %retval, align 2
  br label %return

sw.bb12:                                          ; preds = %entry
  store i16 -4095, ptr %retval, align 2
  br label %return

sw.bb13:                                          ; preds = %entry
  store i16 -8191, ptr %retval, align 2
  br label %return

sw.bb14:                                          ; preds = %entry
  store i16 -16383, ptr %retval, align 2
  br label %return

sw.bb15:                                          ; preds = %entry
  store i16 -32767, ptr %retval, align 2
  br label %return

sw.default:                                       ; preds = %entry
  store i16 0, ptr %retval, align 2
  br label %return

return:                                           ; preds = %sw.default, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i16, ptr %retval, align 2
  ret i16 %1
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @clamp(i16 noundef signext %s) #0 {
entry:
  %retval = alloca i8, align 1
  %s.addr = alloca i16, align 2
  store i16 %s, ptr %s.addr, align 2
  %0 = load i16, ptr %s.addr, align 2
  %conv = zext i16 %0 to i32
  %cmp = icmp ugt i32 %conv, 255
  br i1 %cmp, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %1 = load i16, ptr %s.addr, align 2
  %conv2 = sext i16 %1 to i32
  %cmp3 = icmp slt i32 %conv2, 0
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  store i8 0, ptr %retval, align 1
  br label %return

if.else:                                          ; preds = %if.then
  %2 = load i16, ptr %s.addr, align 2
  %conv6 = sext i16 %2 to i32
  %cmp7 = icmp sgt i32 %conv6, 255
  br i1 %cmp7, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.else
  store i8 -1, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end10

if.end10:                                         ; preds = %if.end
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %entry
  %3 = load i16, ptr %s.addr, align 2
  %conv12 = trunc i16 %3 to i8
  store i8 %conv12, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end11, %if.then9, %if.then5
  %4 = load i8, ptr %retval, align 1
  ret i8 %4
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @subAndClamp(i8 noundef zeroext %a, i16 noundef signext %b) #0 {
entry:
  %retval = alloca i8, align 1
  %a.addr = alloca i8, align 1
  %b.addr = alloca i16, align 2
  store i8 %a, ptr %a.addr, align 1
  store i16 %b, ptr %b.addr, align 2
  %0 = load i8, ptr %a.addr, align 1
  %conv = zext i8 %0 to i32
  %1 = load i16, ptr %b.addr, align 2
  %conv1 = sext i16 %1 to i32
  %sub = sub nsw i32 %conv, %conv1
  %conv2 = trunc i32 %sub to i16
  store i16 %conv2, ptr %b.addr, align 2
  %2 = load i16, ptr %b.addr, align 2
  %conv3 = zext i16 %2 to i32
  %cmp = icmp ugt i32 %conv3, 255
  br i1 %cmp, label %if.then, label %if.end14

if.then:                                          ; preds = %entry
  %3 = load i16, ptr %b.addr, align 2
  %conv5 = sext i16 %3 to i32
  %cmp6 = icmp slt i32 %conv5, 0
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then
  store i8 0, ptr %retval, align 1
  br label %return

if.else:                                          ; preds = %if.then
  %4 = load i16, ptr %b.addr, align 2
  %conv9 = sext i16 %4 to i32
  %cmp10 = icmp sgt i32 %conv9, 255
  br i1 %cmp10, label %if.then12, label %if.end

if.then12:                                        ; preds = %if.else
  store i8 -1, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %entry
  %5 = load i16, ptr %b.addr, align 2
  %conv15 = trunc i16 %5 to i8
  store i8 %conv15, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end14, %if.then12, %if.then8
  %6 = load i8, ptr %retval, align 1
  ret i8 %6
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @addAndClamp(i8 noundef zeroext %a, i16 noundef signext %b) #0 {
entry:
  %retval = alloca i8, align 1
  %a.addr = alloca i8, align 1
  %b.addr = alloca i16, align 2
  store i8 %a, ptr %a.addr, align 1
  store i16 %b, ptr %b.addr, align 2
  %0 = load i8, ptr %a.addr, align 1
  %conv = zext i8 %0 to i32
  %1 = load i16, ptr %b.addr, align 2
  %conv1 = sext i16 %1 to i32
  %add = add nsw i32 %conv, %conv1
  %conv2 = trunc i32 %add to i16
  store i16 %conv2, ptr %b.addr, align 2
  %2 = load i16, ptr %b.addr, align 2
  %conv3 = zext i16 %2 to i32
  %cmp = icmp ugt i32 %conv3, 255
  br i1 %cmp, label %if.then, label %if.end14

if.then:                                          ; preds = %entry
  %3 = load i16, ptr %b.addr, align 2
  %conv5 = sext i16 %3 to i32
  %cmp6 = icmp slt i32 %conv5, 0
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then
  store i8 0, ptr %retval, align 1
  br label %return

if.else:                                          ; preds = %if.then
  %4 = load i16, ptr %b.addr, align 2
  %conv9 = sext i16 %4 to i32
  %cmp10 = icmp sgt i32 %conv9, 255
  br i1 %cmp10, label %if.then12, label %if.end

if.then12:                                        ; preds = %if.else
  store i8 -1, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %entry
  %5 = load i16, ptr %b.addr, align 2
  %conv15 = trunc i16 %5 to i8
  store i8 %conv15, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end14, %if.then12, %if.then8
  %6 = load i8, ptr %retval, align 1
  ret i8 %6
}

; Function Attrs: nounwind ssp uwtable
define internal void @idctRows() #0 {
entry:
  %i = alloca i8, align 1
  %pSrc = alloca ptr, align 8
  %src0 = alloca i16, align 2
  %src4 = alloca i16, align 2
  %src7 = alloca i16, align 2
  %x4 = alloca i16, align 2
  %x7 = alloca i16, align 2
  %src5 = alloca i16, align 2
  %src6 = alloca i16, align 2
  %x5 = alloca i16, align 2
  %x6 = alloca i16, align 2
  %tmp1 = alloca i16, align 2
  %stg26 = alloca i16, align 2
  %x24 = alloca i16, align 2
  %x15 = alloca i16, align 2
  %x17 = alloca i16, align 2
  %tmp2 = alloca i16, align 2
  %tmp3 = alloca i16, align 2
  %x44 = alloca i16, align 2
  %src081 = alloca i16, align 2
  %src1 = alloca i16, align 2
  %x30 = alloca i16, align 2
  %x31 = alloca i16, align 2
  %src2 = alloca i16, align 2
  %src3 = alloca i16, align 2
  %x12 = alloca i16, align 2
  %x13 = alloca i16, align 2
  %x32 = alloca i16, align 2
  %x40 = alloca i16, align 2
  %x43 = alloca i16, align 2
  %x41 = alloca i16, align 2
  %x42 = alloca i16, align 2
  store ptr @gCoeffBuf, ptr %pSrc, align 8
  store i8 0, ptr %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8, ptr %i, align 1
  %conv = zext i8 %0 to i32
  %cmp = icmp slt i32 %conv, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %pSrc, align 8
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 1
  %2 = load i16, ptr %arrayidx, align 2
  %conv2 = sext i16 %2 to i32
  %3 = load ptr, ptr %pSrc, align 8
  %arrayidx3 = getelementptr inbounds i16, ptr %3, i64 2
  %4 = load i16, ptr %arrayidx3, align 2
  %conv4 = sext i16 %4 to i32
  %or = or i32 %conv2, %conv4
  %5 = load ptr, ptr %pSrc, align 8
  %arrayidx5 = getelementptr inbounds i16, ptr %5, i64 3
  %6 = load i16, ptr %arrayidx5, align 2
  %conv6 = sext i16 %6 to i32
  %or7 = or i32 %or, %conv6
  %7 = load ptr, ptr %pSrc, align 8
  %arrayidx8 = getelementptr inbounds i16, ptr %7, i64 4
  %8 = load i16, ptr %arrayidx8, align 2
  %conv9 = sext i16 %8 to i32
  %or10 = or i32 %or7, %conv9
  %9 = load ptr, ptr %pSrc, align 8
  %arrayidx11 = getelementptr inbounds i16, ptr %9, i64 5
  %10 = load i16, ptr %arrayidx11, align 2
  %conv12 = sext i16 %10 to i32
  %or13 = or i32 %or10, %conv12
  %11 = load ptr, ptr %pSrc, align 8
  %arrayidx14 = getelementptr inbounds i16, ptr %11, i64 6
  %12 = load i16, ptr %arrayidx14, align 2
  %conv15 = sext i16 %12 to i32
  %or16 = or i32 %or13, %conv15
  %13 = load ptr, ptr %pSrc, align 8
  %arrayidx17 = getelementptr inbounds i16, ptr %13, i64 7
  %14 = load i16, ptr %arrayidx17, align 2
  %conv18 = sext i16 %14 to i32
  %or19 = or i32 %or16, %conv18
  %cmp20 = icmp eq i32 %or19, 0
  br i1 %cmp20, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %15 = load ptr, ptr %pSrc, align 8
  %16 = load i16, ptr %15, align 2
  store i16 %16, ptr %src0, align 2
  %17 = load i16, ptr %src0, align 2
  %18 = load ptr, ptr %pSrc, align 8
  %add.ptr = getelementptr inbounds i16, ptr %18, i64 1
  store i16 %17, ptr %add.ptr, align 2
  %19 = load i16, ptr %src0, align 2
  %20 = load ptr, ptr %pSrc, align 8
  %add.ptr22 = getelementptr inbounds i16, ptr %20, i64 2
  store i16 %19, ptr %add.ptr22, align 2
  %21 = load i16, ptr %src0, align 2
  %22 = load ptr, ptr %pSrc, align 8
  %add.ptr23 = getelementptr inbounds i16, ptr %22, i64 3
  store i16 %21, ptr %add.ptr23, align 2
  %23 = load i16, ptr %src0, align 2
  %24 = load ptr, ptr %pSrc, align 8
  %add.ptr24 = getelementptr inbounds i16, ptr %24, i64 4
  store i16 %23, ptr %add.ptr24, align 2
  %25 = load i16, ptr %src0, align 2
  %26 = load ptr, ptr %pSrc, align 8
  %add.ptr25 = getelementptr inbounds i16, ptr %26, i64 5
  store i16 %25, ptr %add.ptr25, align 2
  %27 = load i16, ptr %src0, align 2
  %28 = load ptr, ptr %pSrc, align 8
  %add.ptr26 = getelementptr inbounds i16, ptr %28, i64 6
  store i16 %27, ptr %add.ptr26, align 2
  %29 = load i16, ptr %src0, align 2
  %30 = load ptr, ptr %pSrc, align 8
  %add.ptr27 = getelementptr inbounds i16, ptr %30, i64 7
  store i16 %29, ptr %add.ptr27, align 2
  br label %if.end

if.else:                                          ; preds = %for.body
  %31 = load ptr, ptr %pSrc, align 8
  %add.ptr28 = getelementptr inbounds i16, ptr %31, i64 5
  %32 = load i16, ptr %add.ptr28, align 2
  store i16 %32, ptr %src4, align 2
  %33 = load ptr, ptr %pSrc, align 8
  %add.ptr29 = getelementptr inbounds i16, ptr %33, i64 3
  %34 = load i16, ptr %add.ptr29, align 2
  store i16 %34, ptr %src7, align 2
  %35 = load i16, ptr %src4, align 2
  %conv30 = sext i16 %35 to i32
  %36 = load i16, ptr %src7, align 2
  %conv31 = sext i16 %36 to i32
  %sub = sub nsw i32 %conv30, %conv31
  %conv32 = trunc i32 %sub to i16
  store i16 %conv32, ptr %x4, align 2
  %37 = load i16, ptr %src4, align 2
  %conv33 = sext i16 %37 to i32
  %38 = load i16, ptr %src7, align 2
  %conv34 = sext i16 %38 to i32
  %add = add nsw i32 %conv33, %conv34
  %conv35 = trunc i32 %add to i16
  store i16 %conv35, ptr %x7, align 2
  %39 = load ptr, ptr %pSrc, align 8
  %add.ptr36 = getelementptr inbounds i16, ptr %39, i64 1
  %40 = load i16, ptr %add.ptr36, align 2
  store i16 %40, ptr %src5, align 2
  %41 = load ptr, ptr %pSrc, align 8
  %add.ptr37 = getelementptr inbounds i16, ptr %41, i64 7
  %42 = load i16, ptr %add.ptr37, align 2
  store i16 %42, ptr %src6, align 2
  %43 = load i16, ptr %src5, align 2
  %conv38 = sext i16 %43 to i32
  %44 = load i16, ptr %src6, align 2
  %conv39 = sext i16 %44 to i32
  %add40 = add nsw i32 %conv38, %conv39
  %conv41 = trunc i32 %add40 to i16
  store i16 %conv41, ptr %x5, align 2
  %45 = load i16, ptr %src5, align 2
  %conv42 = sext i16 %45 to i32
  %46 = load i16, ptr %src6, align 2
  %conv43 = sext i16 %46 to i32
  %sub44 = sub nsw i32 %conv42, %conv43
  %conv45 = trunc i32 %sub44 to i16
  store i16 %conv45, ptr %x6, align 2
  %47 = load i16, ptr %x4, align 2
  %conv46 = sext i16 %47 to i32
  %48 = load i16, ptr %x6, align 2
  %conv47 = sext i16 %48 to i32
  %sub48 = sub nsw i32 %conv46, %conv47
  %conv49 = trunc i32 %sub48 to i16
  %call = call signext i16 @imul_b5(i16 noundef signext %conv49)
  store i16 %call, ptr %tmp1, align 2
  %49 = load i16, ptr %x6, align 2
  %call50 = call signext i16 @imul_b4(i16 noundef signext %49)
  %conv51 = sext i16 %call50 to i32
  %50 = load i16, ptr %tmp1, align 2
  %conv52 = sext i16 %50 to i32
  %sub53 = sub nsw i32 %conv51, %conv52
  %conv54 = trunc i32 %sub53 to i16
  store i16 %conv54, ptr %stg26, align 2
  %51 = load i16, ptr %tmp1, align 2
  %conv55 = sext i16 %51 to i32
  %52 = load i16, ptr %x4, align 2
  %call56 = call signext i16 @imul_b2(i16 noundef signext %52)
  %conv57 = sext i16 %call56 to i32
  %sub58 = sub nsw i32 %conv55, %conv57
  %conv59 = trunc i32 %sub58 to i16
  store i16 %conv59, ptr %x24, align 2
  %53 = load i16, ptr %x5, align 2
  %conv60 = sext i16 %53 to i32
  %54 = load i16, ptr %x7, align 2
  %conv61 = sext i16 %54 to i32
  %sub62 = sub nsw i32 %conv60, %conv61
  %conv63 = trunc i32 %sub62 to i16
  store i16 %conv63, ptr %x15, align 2
  %55 = load i16, ptr %x5, align 2
  %conv64 = sext i16 %55 to i32
  %56 = load i16, ptr %x7, align 2
  %conv65 = sext i16 %56 to i32
  %add66 = add nsw i32 %conv64, %conv65
  %conv67 = trunc i32 %add66 to i16
  store i16 %conv67, ptr %x17, align 2
  %57 = load i16, ptr %stg26, align 2
  %conv68 = sext i16 %57 to i32
  %58 = load i16, ptr %x17, align 2
  %conv69 = sext i16 %58 to i32
  %sub70 = sub nsw i32 %conv68, %conv69
  %conv71 = trunc i32 %sub70 to i16
  store i16 %conv71, ptr %tmp2, align 2
  %59 = load i16, ptr %x15, align 2
  %call72 = call signext i16 @imul_b1_b3(i16 noundef signext %59)
  %conv73 = sext i16 %call72 to i32
  %60 = load i16, ptr %tmp2, align 2
  %conv74 = sext i16 %60 to i32
  %sub75 = sub nsw i32 %conv73, %conv74
  %conv76 = trunc i32 %sub75 to i16
  store i16 %conv76, ptr %tmp3, align 2
  %61 = load i16, ptr %tmp3, align 2
  %conv77 = sext i16 %61 to i32
  %62 = load i16, ptr %x24, align 2
  %conv78 = sext i16 %62 to i32
  %add79 = add nsw i32 %conv77, %conv78
  %conv80 = trunc i32 %add79 to i16
  store i16 %conv80, ptr %x44, align 2
  %63 = load ptr, ptr %pSrc, align 8
  %add.ptr82 = getelementptr inbounds i16, ptr %63, i64 0
  %64 = load i16, ptr %add.ptr82, align 2
  store i16 %64, ptr %src081, align 2
  %65 = load ptr, ptr %pSrc, align 8
  %add.ptr83 = getelementptr inbounds i16, ptr %65, i64 4
  %66 = load i16, ptr %add.ptr83, align 2
  store i16 %66, ptr %src1, align 2
  %67 = load i16, ptr %src081, align 2
  %conv84 = sext i16 %67 to i32
  %68 = load i16, ptr %src1, align 2
  %conv85 = sext i16 %68 to i32
  %add86 = add nsw i32 %conv84, %conv85
  %conv87 = trunc i32 %add86 to i16
  store i16 %conv87, ptr %x30, align 2
  %69 = load i16, ptr %src081, align 2
  %conv88 = sext i16 %69 to i32
  %70 = load i16, ptr %src1, align 2
  %conv89 = sext i16 %70 to i32
  %sub90 = sub nsw i32 %conv88, %conv89
  %conv91 = trunc i32 %sub90 to i16
  store i16 %conv91, ptr %x31, align 2
  %71 = load ptr, ptr %pSrc, align 8
  %add.ptr92 = getelementptr inbounds i16, ptr %71, i64 2
  %72 = load i16, ptr %add.ptr92, align 2
  store i16 %72, ptr %src2, align 2
  %73 = load ptr, ptr %pSrc, align 8
  %add.ptr93 = getelementptr inbounds i16, ptr %73, i64 6
  %74 = load i16, ptr %add.ptr93, align 2
  store i16 %74, ptr %src3, align 2
  %75 = load i16, ptr %src2, align 2
  %conv94 = sext i16 %75 to i32
  %76 = load i16, ptr %src3, align 2
  %conv95 = sext i16 %76 to i32
  %sub96 = sub nsw i32 %conv94, %conv95
  %conv97 = trunc i32 %sub96 to i16
  store i16 %conv97, ptr %x12, align 2
  %77 = load i16, ptr %src2, align 2
  %conv98 = sext i16 %77 to i32
  %78 = load i16, ptr %src3, align 2
  %conv99 = sext i16 %78 to i32
  %add100 = add nsw i32 %conv98, %conv99
  %conv101 = trunc i32 %add100 to i16
  store i16 %conv101, ptr %x13, align 2
  %79 = load i16, ptr %x12, align 2
  %call102 = call signext i16 @imul_b1_b3(i16 noundef signext %79)
  %conv103 = sext i16 %call102 to i32
  %80 = load i16, ptr %x13, align 2
  %conv104 = sext i16 %80 to i32
  %sub105 = sub nsw i32 %conv103, %conv104
  %conv106 = trunc i32 %sub105 to i16
  store i16 %conv106, ptr %x32, align 2
  %81 = load i16, ptr %x30, align 2
  %conv107 = sext i16 %81 to i32
  %82 = load i16, ptr %x13, align 2
  %conv108 = sext i16 %82 to i32
  %add109 = add nsw i32 %conv107, %conv108
  %conv110 = trunc i32 %add109 to i16
  store i16 %conv110, ptr %x40, align 2
  %83 = load i16, ptr %x30, align 2
  %conv111 = sext i16 %83 to i32
  %84 = load i16, ptr %x13, align 2
  %conv112 = sext i16 %84 to i32
  %sub113 = sub nsw i32 %conv111, %conv112
  %conv114 = trunc i32 %sub113 to i16
  store i16 %conv114, ptr %x43, align 2
  %85 = load i16, ptr %x31, align 2
  %conv115 = sext i16 %85 to i32
  %86 = load i16, ptr %x32, align 2
  %conv116 = sext i16 %86 to i32
  %add117 = add nsw i32 %conv115, %conv116
  %conv118 = trunc i32 %add117 to i16
  store i16 %conv118, ptr %x41, align 2
  %87 = load i16, ptr %x31, align 2
  %conv119 = sext i16 %87 to i32
  %88 = load i16, ptr %x32, align 2
  %conv120 = sext i16 %88 to i32
  %sub121 = sub nsw i32 %conv119, %conv120
  %conv122 = trunc i32 %sub121 to i16
  store i16 %conv122, ptr %x42, align 2
  %89 = load i16, ptr %x40, align 2
  %conv123 = sext i16 %89 to i32
  %90 = load i16, ptr %x17, align 2
  %conv124 = sext i16 %90 to i32
  %add125 = add nsw i32 %conv123, %conv124
  %conv126 = trunc i32 %add125 to i16
  %91 = load ptr, ptr %pSrc, align 8
  %add.ptr127 = getelementptr inbounds i16, ptr %91, i64 0
  store i16 %conv126, ptr %add.ptr127, align 2
  %92 = load i16, ptr %x41, align 2
  %conv128 = sext i16 %92 to i32
  %93 = load i16, ptr %tmp2, align 2
  %conv129 = sext i16 %93 to i32
  %add130 = add nsw i32 %conv128, %conv129
  %conv131 = trunc i32 %add130 to i16
  %94 = load ptr, ptr %pSrc, align 8
  %add.ptr132 = getelementptr inbounds i16, ptr %94, i64 1
  store i16 %conv131, ptr %add.ptr132, align 2
  %95 = load i16, ptr %x42, align 2
  %conv133 = sext i16 %95 to i32
  %96 = load i16, ptr %tmp3, align 2
  %conv134 = sext i16 %96 to i32
  %add135 = add nsw i32 %conv133, %conv134
  %conv136 = trunc i32 %add135 to i16
  %97 = load ptr, ptr %pSrc, align 8
  %add.ptr137 = getelementptr inbounds i16, ptr %97, i64 2
  store i16 %conv136, ptr %add.ptr137, align 2
  %98 = load i16, ptr %x43, align 2
  %conv138 = sext i16 %98 to i32
  %99 = load i16, ptr %x44, align 2
  %conv139 = sext i16 %99 to i32
  %sub140 = sub nsw i32 %conv138, %conv139
  %conv141 = trunc i32 %sub140 to i16
  %100 = load ptr, ptr %pSrc, align 8
  %add.ptr142 = getelementptr inbounds i16, ptr %100, i64 3
  store i16 %conv141, ptr %add.ptr142, align 2
  %101 = load i16, ptr %x43, align 2
  %conv143 = sext i16 %101 to i32
  %102 = load i16, ptr %x44, align 2
  %conv144 = sext i16 %102 to i32
  %add145 = add nsw i32 %conv143, %conv144
  %conv146 = trunc i32 %add145 to i16
  %103 = load ptr, ptr %pSrc, align 8
  %add.ptr147 = getelementptr inbounds i16, ptr %103, i64 4
  store i16 %conv146, ptr %add.ptr147, align 2
  %104 = load i16, ptr %x42, align 2
  %conv148 = sext i16 %104 to i32
  %105 = load i16, ptr %tmp3, align 2
  %conv149 = sext i16 %105 to i32
  %sub150 = sub nsw i32 %conv148, %conv149
  %conv151 = trunc i32 %sub150 to i16
  %106 = load ptr, ptr %pSrc, align 8
  %add.ptr152 = getelementptr inbounds i16, ptr %106, i64 5
  store i16 %conv151, ptr %add.ptr152, align 2
  %107 = load i16, ptr %x41, align 2
  %conv153 = sext i16 %107 to i32
  %108 = load i16, ptr %tmp2, align 2
  %conv154 = sext i16 %108 to i32
  %sub155 = sub nsw i32 %conv153, %conv154
  %conv156 = trunc i32 %sub155 to i16
  %109 = load ptr, ptr %pSrc, align 8
  %add.ptr157 = getelementptr inbounds i16, ptr %109, i64 6
  store i16 %conv156, ptr %add.ptr157, align 2
  %110 = load i16, ptr %x40, align 2
  %conv158 = sext i16 %110 to i32
  %111 = load i16, ptr %x17, align 2
  %conv159 = sext i16 %111 to i32
  %sub160 = sub nsw i32 %conv158, %conv159
  %conv161 = trunc i32 %sub160 to i16
  %112 = load ptr, ptr %pSrc, align 8
  %add.ptr162 = getelementptr inbounds i16, ptr %112, i64 7
  store i16 %conv161, ptr %add.ptr162, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %113 = load ptr, ptr %pSrc, align 8
  %add.ptr163 = getelementptr inbounds i16, ptr %113, i64 8
  store ptr %add.ptr163, ptr %pSrc, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %114 = load i8, ptr %i, align 1
  %inc = add i8 %114, 1
  store i8 %inc, ptr %i, align 1
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @idctCols() #0 {
entry:
  %i = alloca i8, align 1
  %pSrc = alloca ptr, align 8
  %c = alloca i8, align 1
  %src4 = alloca i16, align 2
  %src7 = alloca i16, align 2
  %x4 = alloca i16, align 2
  %x7 = alloca i16, align 2
  %src5 = alloca i16, align 2
  %src6 = alloca i16, align 2
  %x5 = alloca i16, align 2
  %x6 = alloca i16, align 2
  %tmp1 = alloca i16, align 2
  %stg26 = alloca i16, align 2
  %x24 = alloca i16, align 2
  %x15 = alloca i16, align 2
  %x17 = alloca i16, align 2
  %tmp2 = alloca i16, align 2
  %tmp3 = alloca i16, align 2
  %x44 = alloca i16, align 2
  %src0 = alloca i16, align 2
  %src1 = alloca i16, align 2
  %x30 = alloca i16, align 2
  %x31 = alloca i16, align 2
  %src2 = alloca i16, align 2
  %src3 = alloca i16, align 2
  %x12 = alloca i16, align 2
  %x13 = alloca i16, align 2
  %x32 = alloca i16, align 2
  %x40 = alloca i16, align 2
  %x43 = alloca i16, align 2
  %x41 = alloca i16, align 2
  %x42 = alloca i16, align 2
  store ptr @gCoeffBuf, ptr %pSrc, align 8
  store i8 0, ptr %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8, ptr %i, align 1
  %conv = zext i8 %0 to i32
  %cmp = icmp slt i32 %conv, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %pSrc, align 8
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 8
  %2 = load i16, ptr %arrayidx, align 2
  %conv2 = sext i16 %2 to i32
  %3 = load ptr, ptr %pSrc, align 8
  %arrayidx3 = getelementptr inbounds i16, ptr %3, i64 16
  %4 = load i16, ptr %arrayidx3, align 2
  %conv4 = sext i16 %4 to i32
  %or = or i32 %conv2, %conv4
  %5 = load ptr, ptr %pSrc, align 8
  %arrayidx5 = getelementptr inbounds i16, ptr %5, i64 24
  %6 = load i16, ptr %arrayidx5, align 2
  %conv6 = sext i16 %6 to i32
  %or7 = or i32 %or, %conv6
  %7 = load ptr, ptr %pSrc, align 8
  %arrayidx8 = getelementptr inbounds i16, ptr %7, i64 32
  %8 = load i16, ptr %arrayidx8, align 2
  %conv9 = sext i16 %8 to i32
  %or10 = or i32 %or7, %conv9
  %9 = load ptr, ptr %pSrc, align 8
  %arrayidx11 = getelementptr inbounds i16, ptr %9, i64 40
  %10 = load i16, ptr %arrayidx11, align 2
  %conv12 = sext i16 %10 to i32
  %or13 = or i32 %or10, %conv12
  %11 = load ptr, ptr %pSrc, align 8
  %arrayidx14 = getelementptr inbounds i16, ptr %11, i64 48
  %12 = load i16, ptr %arrayidx14, align 2
  %conv15 = sext i16 %12 to i32
  %or16 = or i32 %or13, %conv15
  %13 = load ptr, ptr %pSrc, align 8
  %arrayidx17 = getelementptr inbounds i16, ptr %13, i64 56
  %14 = load i16, ptr %arrayidx17, align 2
  %conv18 = sext i16 %14 to i32
  %or19 = or i32 %or16, %conv18
  %cmp20 = icmp eq i32 %or19, 0
  br i1 %cmp20, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %15 = load ptr, ptr %pSrc, align 8
  %16 = load i16, ptr %15, align 2
  %conv22 = sext i16 %16 to i32
  %add = add i32 %conv22, 64
  %shr = lshr i32 %add, 7
  %add23 = add i32 %shr, 128
  %conv24 = trunc i32 %add23 to i16
  %call = call zeroext i8 @clamp(i16 noundef signext %conv24)
  store i8 %call, ptr %c, align 1
  %17 = load i8, ptr %c, align 1
  %conv25 = zext i8 %17 to i16
  %18 = load ptr, ptr %pSrc, align 8
  %add.ptr = getelementptr inbounds i16, ptr %18, i64 0
  store i16 %conv25, ptr %add.ptr, align 2
  %19 = load i8, ptr %c, align 1
  %conv26 = zext i8 %19 to i16
  %20 = load ptr, ptr %pSrc, align 8
  %add.ptr27 = getelementptr inbounds i16, ptr %20, i64 8
  store i16 %conv26, ptr %add.ptr27, align 2
  %21 = load i8, ptr %c, align 1
  %conv28 = zext i8 %21 to i16
  %22 = load ptr, ptr %pSrc, align 8
  %add.ptr29 = getelementptr inbounds i16, ptr %22, i64 16
  store i16 %conv28, ptr %add.ptr29, align 2
  %23 = load i8, ptr %c, align 1
  %conv30 = zext i8 %23 to i16
  %24 = load ptr, ptr %pSrc, align 8
  %add.ptr31 = getelementptr inbounds i16, ptr %24, i64 24
  store i16 %conv30, ptr %add.ptr31, align 2
  %25 = load i8, ptr %c, align 1
  %conv32 = zext i8 %25 to i16
  %26 = load ptr, ptr %pSrc, align 8
  %add.ptr33 = getelementptr inbounds i16, ptr %26, i64 32
  store i16 %conv32, ptr %add.ptr33, align 2
  %27 = load i8, ptr %c, align 1
  %conv34 = zext i8 %27 to i16
  %28 = load ptr, ptr %pSrc, align 8
  %add.ptr35 = getelementptr inbounds i16, ptr %28, i64 40
  store i16 %conv34, ptr %add.ptr35, align 2
  %29 = load i8, ptr %c, align 1
  %conv36 = zext i8 %29 to i16
  %30 = load ptr, ptr %pSrc, align 8
  %add.ptr37 = getelementptr inbounds i16, ptr %30, i64 48
  store i16 %conv36, ptr %add.ptr37, align 2
  %31 = load i8, ptr %c, align 1
  %conv38 = zext i8 %31 to i16
  %32 = load ptr, ptr %pSrc, align 8
  %add.ptr39 = getelementptr inbounds i16, ptr %32, i64 56
  store i16 %conv38, ptr %add.ptr39, align 2
  br label %if.end

if.else:                                          ; preds = %for.body
  %33 = load ptr, ptr %pSrc, align 8
  %add.ptr40 = getelementptr inbounds i16, ptr %33, i64 40
  %34 = load i16, ptr %add.ptr40, align 2
  store i16 %34, ptr %src4, align 2
  %35 = load ptr, ptr %pSrc, align 8
  %add.ptr41 = getelementptr inbounds i16, ptr %35, i64 24
  %36 = load i16, ptr %add.ptr41, align 2
  store i16 %36, ptr %src7, align 2
  %37 = load i16, ptr %src4, align 2
  %conv42 = sext i16 %37 to i32
  %38 = load i16, ptr %src7, align 2
  %conv43 = sext i16 %38 to i32
  %sub = sub nsw i32 %conv42, %conv43
  %conv44 = trunc i32 %sub to i16
  store i16 %conv44, ptr %x4, align 2
  %39 = load i16, ptr %src4, align 2
  %conv45 = sext i16 %39 to i32
  %40 = load i16, ptr %src7, align 2
  %conv46 = sext i16 %40 to i32
  %add47 = add nsw i32 %conv45, %conv46
  %conv48 = trunc i32 %add47 to i16
  store i16 %conv48, ptr %x7, align 2
  %41 = load ptr, ptr %pSrc, align 8
  %add.ptr49 = getelementptr inbounds i16, ptr %41, i64 8
  %42 = load i16, ptr %add.ptr49, align 2
  store i16 %42, ptr %src5, align 2
  %43 = load ptr, ptr %pSrc, align 8
  %add.ptr50 = getelementptr inbounds i16, ptr %43, i64 56
  %44 = load i16, ptr %add.ptr50, align 2
  store i16 %44, ptr %src6, align 2
  %45 = load i16, ptr %src5, align 2
  %conv51 = sext i16 %45 to i32
  %46 = load i16, ptr %src6, align 2
  %conv52 = sext i16 %46 to i32
  %add53 = add nsw i32 %conv51, %conv52
  %conv54 = trunc i32 %add53 to i16
  store i16 %conv54, ptr %x5, align 2
  %47 = load i16, ptr %src5, align 2
  %conv55 = sext i16 %47 to i32
  %48 = load i16, ptr %src6, align 2
  %conv56 = sext i16 %48 to i32
  %sub57 = sub nsw i32 %conv55, %conv56
  %conv58 = trunc i32 %sub57 to i16
  store i16 %conv58, ptr %x6, align 2
  %49 = load i16, ptr %x4, align 2
  %conv59 = sext i16 %49 to i32
  %50 = load i16, ptr %x6, align 2
  %conv60 = sext i16 %50 to i32
  %sub61 = sub nsw i32 %conv59, %conv60
  %conv62 = trunc i32 %sub61 to i16
  %call63 = call signext i16 @imul_b5(i16 noundef signext %conv62)
  store i16 %call63, ptr %tmp1, align 2
  %51 = load i16, ptr %x6, align 2
  %call64 = call signext i16 @imul_b4(i16 noundef signext %51)
  %conv65 = sext i16 %call64 to i32
  %52 = load i16, ptr %tmp1, align 2
  %conv66 = sext i16 %52 to i32
  %sub67 = sub nsw i32 %conv65, %conv66
  %conv68 = trunc i32 %sub67 to i16
  store i16 %conv68, ptr %stg26, align 2
  %53 = load i16, ptr %tmp1, align 2
  %conv69 = sext i16 %53 to i32
  %54 = load i16, ptr %x4, align 2
  %call70 = call signext i16 @imul_b2(i16 noundef signext %54)
  %conv71 = sext i16 %call70 to i32
  %sub72 = sub nsw i32 %conv69, %conv71
  %conv73 = trunc i32 %sub72 to i16
  store i16 %conv73, ptr %x24, align 2
  %55 = load i16, ptr %x5, align 2
  %conv74 = sext i16 %55 to i32
  %56 = load i16, ptr %x7, align 2
  %conv75 = sext i16 %56 to i32
  %sub76 = sub nsw i32 %conv74, %conv75
  %conv77 = trunc i32 %sub76 to i16
  store i16 %conv77, ptr %x15, align 2
  %57 = load i16, ptr %x5, align 2
  %conv78 = sext i16 %57 to i32
  %58 = load i16, ptr %x7, align 2
  %conv79 = sext i16 %58 to i32
  %add80 = add nsw i32 %conv78, %conv79
  %conv81 = trunc i32 %add80 to i16
  store i16 %conv81, ptr %x17, align 2
  %59 = load i16, ptr %stg26, align 2
  %conv82 = sext i16 %59 to i32
  %60 = load i16, ptr %x17, align 2
  %conv83 = sext i16 %60 to i32
  %sub84 = sub nsw i32 %conv82, %conv83
  %conv85 = trunc i32 %sub84 to i16
  store i16 %conv85, ptr %tmp2, align 2
  %61 = load i16, ptr %x15, align 2
  %call86 = call signext i16 @imul_b1_b3(i16 noundef signext %61)
  %conv87 = sext i16 %call86 to i32
  %62 = load i16, ptr %tmp2, align 2
  %conv88 = sext i16 %62 to i32
  %sub89 = sub nsw i32 %conv87, %conv88
  %conv90 = trunc i32 %sub89 to i16
  store i16 %conv90, ptr %tmp3, align 2
  %63 = load i16, ptr %tmp3, align 2
  %conv91 = sext i16 %63 to i32
  %64 = load i16, ptr %x24, align 2
  %conv92 = sext i16 %64 to i32
  %add93 = add nsw i32 %conv91, %conv92
  %conv94 = trunc i32 %add93 to i16
  store i16 %conv94, ptr %x44, align 2
  %65 = load ptr, ptr %pSrc, align 8
  %add.ptr95 = getelementptr inbounds i16, ptr %65, i64 0
  %66 = load i16, ptr %add.ptr95, align 2
  store i16 %66, ptr %src0, align 2
  %67 = load ptr, ptr %pSrc, align 8
  %add.ptr96 = getelementptr inbounds i16, ptr %67, i64 32
  %68 = load i16, ptr %add.ptr96, align 2
  store i16 %68, ptr %src1, align 2
  %69 = load i16, ptr %src0, align 2
  %conv97 = sext i16 %69 to i32
  %70 = load i16, ptr %src1, align 2
  %conv98 = sext i16 %70 to i32
  %add99 = add nsw i32 %conv97, %conv98
  %conv100 = trunc i32 %add99 to i16
  store i16 %conv100, ptr %x30, align 2
  %71 = load i16, ptr %src0, align 2
  %conv101 = sext i16 %71 to i32
  %72 = load i16, ptr %src1, align 2
  %conv102 = sext i16 %72 to i32
  %sub103 = sub nsw i32 %conv101, %conv102
  %conv104 = trunc i32 %sub103 to i16
  store i16 %conv104, ptr %x31, align 2
  %73 = load ptr, ptr %pSrc, align 8
  %add.ptr105 = getelementptr inbounds i16, ptr %73, i64 16
  %74 = load i16, ptr %add.ptr105, align 2
  store i16 %74, ptr %src2, align 2
  %75 = load ptr, ptr %pSrc, align 8
  %add.ptr106 = getelementptr inbounds i16, ptr %75, i64 48
  %76 = load i16, ptr %add.ptr106, align 2
  store i16 %76, ptr %src3, align 2
  %77 = load i16, ptr %src2, align 2
  %conv107 = sext i16 %77 to i32
  %78 = load i16, ptr %src3, align 2
  %conv108 = sext i16 %78 to i32
  %sub109 = sub nsw i32 %conv107, %conv108
  %conv110 = trunc i32 %sub109 to i16
  store i16 %conv110, ptr %x12, align 2
  %79 = load i16, ptr %src2, align 2
  %conv111 = sext i16 %79 to i32
  %80 = load i16, ptr %src3, align 2
  %conv112 = sext i16 %80 to i32
  %add113 = add nsw i32 %conv111, %conv112
  %conv114 = trunc i32 %add113 to i16
  store i16 %conv114, ptr %x13, align 2
  %81 = load i16, ptr %x12, align 2
  %call115 = call signext i16 @imul_b1_b3(i16 noundef signext %81)
  %conv116 = sext i16 %call115 to i32
  %82 = load i16, ptr %x13, align 2
  %conv117 = sext i16 %82 to i32
  %sub118 = sub nsw i32 %conv116, %conv117
  %conv119 = trunc i32 %sub118 to i16
  store i16 %conv119, ptr %x32, align 2
  %83 = load i16, ptr %x30, align 2
  %conv120 = sext i16 %83 to i32
  %84 = load i16, ptr %x13, align 2
  %conv121 = sext i16 %84 to i32
  %add122 = add nsw i32 %conv120, %conv121
  %conv123 = trunc i32 %add122 to i16
  store i16 %conv123, ptr %x40, align 2
  %85 = load i16, ptr %x30, align 2
  %conv124 = sext i16 %85 to i32
  %86 = load i16, ptr %x13, align 2
  %conv125 = sext i16 %86 to i32
  %sub126 = sub nsw i32 %conv124, %conv125
  %conv127 = trunc i32 %sub126 to i16
  store i16 %conv127, ptr %x43, align 2
  %87 = load i16, ptr %x31, align 2
  %conv128 = sext i16 %87 to i32
  %88 = load i16, ptr %x32, align 2
  %conv129 = sext i16 %88 to i32
  %add130 = add nsw i32 %conv128, %conv129
  %conv131 = trunc i32 %add130 to i16
  store i16 %conv131, ptr %x41, align 2
  %89 = load i16, ptr %x31, align 2
  %conv132 = sext i16 %89 to i32
  %90 = load i16, ptr %x32, align 2
  %conv133 = sext i16 %90 to i32
  %sub134 = sub nsw i32 %conv132, %conv133
  %conv135 = trunc i32 %sub134 to i16
  store i16 %conv135, ptr %x42, align 2
  %91 = load i16, ptr %x40, align 2
  %conv136 = sext i16 %91 to i32
  %92 = load i16, ptr %x17, align 2
  %conv137 = sext i16 %92 to i32
  %add138 = add nsw i32 %conv136, %conv137
  %add139 = add i32 %add138, 64
  %shr140 = lshr i32 %add139, 7
  %add141 = add i32 %shr140, 128
  %conv142 = trunc i32 %add141 to i16
  %call143 = call zeroext i8 @clamp(i16 noundef signext %conv142)
  %conv144 = zext i8 %call143 to i16
  %93 = load ptr, ptr %pSrc, align 8
  %add.ptr145 = getelementptr inbounds i16, ptr %93, i64 0
  store i16 %conv144, ptr %add.ptr145, align 2
  %94 = load i16, ptr %x41, align 2
  %conv146 = sext i16 %94 to i32
  %95 = load i16, ptr %tmp2, align 2
  %conv147 = sext i16 %95 to i32
  %add148 = add nsw i32 %conv146, %conv147
  %add149 = add i32 %add148, 64
  %shr150 = lshr i32 %add149, 7
  %add151 = add i32 %shr150, 128
  %conv152 = trunc i32 %add151 to i16
  %call153 = call zeroext i8 @clamp(i16 noundef signext %conv152)
  %conv154 = zext i8 %call153 to i16
  %96 = load ptr, ptr %pSrc, align 8
  %add.ptr155 = getelementptr inbounds i16, ptr %96, i64 8
  store i16 %conv154, ptr %add.ptr155, align 2
  %97 = load i16, ptr %x42, align 2
  %conv156 = sext i16 %97 to i32
  %98 = load i16, ptr %tmp3, align 2
  %conv157 = sext i16 %98 to i32
  %add158 = add nsw i32 %conv156, %conv157
  %add159 = add i32 %add158, 64
  %shr160 = lshr i32 %add159, 7
  %add161 = add i32 %shr160, 128
  %conv162 = trunc i32 %add161 to i16
  %call163 = call zeroext i8 @clamp(i16 noundef signext %conv162)
  %conv164 = zext i8 %call163 to i16
  %99 = load ptr, ptr %pSrc, align 8
  %add.ptr165 = getelementptr inbounds i16, ptr %99, i64 16
  store i16 %conv164, ptr %add.ptr165, align 2
  %100 = load i16, ptr %x43, align 2
  %conv166 = sext i16 %100 to i32
  %101 = load i16, ptr %x44, align 2
  %conv167 = sext i16 %101 to i32
  %sub168 = sub nsw i32 %conv166, %conv167
  %add169 = add i32 %sub168, 64
  %shr170 = lshr i32 %add169, 7
  %add171 = add i32 %shr170, 128
  %conv172 = trunc i32 %add171 to i16
  %call173 = call zeroext i8 @clamp(i16 noundef signext %conv172)
  %conv174 = zext i8 %call173 to i16
  %102 = load ptr, ptr %pSrc, align 8
  %add.ptr175 = getelementptr inbounds i16, ptr %102, i64 24
  store i16 %conv174, ptr %add.ptr175, align 2
  %103 = load i16, ptr %x43, align 2
  %conv176 = sext i16 %103 to i32
  %104 = load i16, ptr %x44, align 2
  %conv177 = sext i16 %104 to i32
  %add178 = add nsw i32 %conv176, %conv177
  %add179 = add i32 %add178, 64
  %shr180 = lshr i32 %add179, 7
  %add181 = add i32 %shr180, 128
  %conv182 = trunc i32 %add181 to i16
  %call183 = call zeroext i8 @clamp(i16 noundef signext %conv182)
  %conv184 = zext i8 %call183 to i16
  %105 = load ptr, ptr %pSrc, align 8
  %add.ptr185 = getelementptr inbounds i16, ptr %105, i64 32
  store i16 %conv184, ptr %add.ptr185, align 2
  %106 = load i16, ptr %x42, align 2
  %conv186 = sext i16 %106 to i32
  %107 = load i16, ptr %tmp3, align 2
  %conv187 = sext i16 %107 to i32
  %sub188 = sub nsw i32 %conv186, %conv187
  %add189 = add i32 %sub188, 64
  %shr190 = lshr i32 %add189, 7
  %add191 = add i32 %shr190, 128
  %conv192 = trunc i32 %add191 to i16
  %call193 = call zeroext i8 @clamp(i16 noundef signext %conv192)
  %conv194 = zext i8 %call193 to i16
  %108 = load ptr, ptr %pSrc, align 8
  %add.ptr195 = getelementptr inbounds i16, ptr %108, i64 40
  store i16 %conv194, ptr %add.ptr195, align 2
  %109 = load i16, ptr %x41, align 2
  %conv196 = sext i16 %109 to i32
  %110 = load i16, ptr %tmp2, align 2
  %conv197 = sext i16 %110 to i32
  %sub198 = sub nsw i32 %conv196, %conv197
  %add199 = add i32 %sub198, 64
  %shr200 = lshr i32 %add199, 7
  %add201 = add i32 %shr200, 128
  %conv202 = trunc i32 %add201 to i16
  %call203 = call zeroext i8 @clamp(i16 noundef signext %conv202)
  %conv204 = zext i8 %call203 to i16
  %111 = load ptr, ptr %pSrc, align 8
  %add.ptr205 = getelementptr inbounds i16, ptr %111, i64 48
  store i16 %conv204, ptr %add.ptr205, align 2
  %112 = load i16, ptr %x40, align 2
  %conv206 = sext i16 %112 to i32
  %113 = load i16, ptr %x17, align 2
  %conv207 = sext i16 %113 to i32
  %sub208 = sub nsw i32 %conv206, %conv207
  %add209 = add i32 %sub208, 64
  %shr210 = lshr i32 %add209, 7
  %add211 = add i32 %shr210, 128
  %conv212 = trunc i32 %add211 to i16
  %call213 = call zeroext i8 @clamp(i16 noundef signext %conv212)
  %conv214 = zext i8 %call213 to i16
  %114 = load ptr, ptr %pSrc, align 8
  %add.ptr215 = getelementptr inbounds i16, ptr %114, i64 56
  store i16 %conv214, ptr %add.ptr215, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %115 = load ptr, ptr %pSrc, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %115, i32 1
  store ptr %incdec.ptr, ptr %pSrc, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %116 = load i8, ptr %i, align 1
  %inc = add i8 %116, 1
  store i8 %inc, ptr %i, align 1
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @copyY(i8 noundef zeroext %dstOfs) #0 {
entry:
  %dstOfs.addr = alloca i8, align 1
  %i = alloca i8, align 1
  %pRDst = alloca ptr, align 8
  %pGDst = alloca ptr, align 8
  %pBDst = alloca ptr, align 8
  %pSrc = alloca ptr, align 8
  %c = alloca i8, align 1
  store i8 %dstOfs, ptr %dstOfs.addr, align 1
  %0 = load i8, ptr %dstOfs.addr, align 1
  %conv = zext i8 %0 to i32
  %idx.ext = sext i32 %conv to i64
  %add.ptr = getelementptr inbounds i8, ptr @gMCUBufR, i64 %idx.ext
  store ptr %add.ptr, ptr %pRDst, align 8
  %1 = load i8, ptr %dstOfs.addr, align 1
  %conv1 = zext i8 %1 to i32
  %idx.ext2 = sext i32 %conv1 to i64
  %add.ptr3 = getelementptr inbounds i8, ptr @gMCUBufG, i64 %idx.ext2
  store ptr %add.ptr3, ptr %pGDst, align 8
  %2 = load i8, ptr %dstOfs.addr, align 1
  %conv4 = zext i8 %2 to i32
  %idx.ext5 = sext i32 %conv4 to i64
  %add.ptr6 = getelementptr inbounds i8, ptr @gMCUBufB, i64 %idx.ext5
  store ptr %add.ptr6, ptr %pBDst, align 8
  store ptr @gCoeffBuf, ptr %pSrc, align 8
  store i8 64, ptr %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i8, ptr %i, align 1
  %conv7 = zext i8 %3 to i32
  %cmp = icmp sgt i32 %conv7, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %pSrc, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %4, i32 1
  store ptr %incdec.ptr, ptr %pSrc, align 8
  %5 = load i16, ptr %4, align 2
  %conv9 = trunc i16 %5 to i8
  store i8 %conv9, ptr %c, align 1
  %6 = load i8, ptr %c, align 1
  %7 = load ptr, ptr %pRDst, align 8
  %incdec.ptr10 = getelementptr inbounds i8, ptr %7, i32 1
  store ptr %incdec.ptr10, ptr %pRDst, align 8
  store i8 %6, ptr %7, align 1
  %8 = load i8, ptr %c, align 1
  %9 = load ptr, ptr %pGDst, align 8
  %incdec.ptr11 = getelementptr inbounds i8, ptr %9, i32 1
  store ptr %incdec.ptr11, ptr %pGDst, align 8
  store i8 %8, ptr %9, align 1
  %10 = load i8, ptr %c, align 1
  %11 = load ptr, ptr %pBDst, align 8
  %incdec.ptr12 = getelementptr inbounds i8, ptr %11, i32 1
  store ptr %incdec.ptr12, ptr %pBDst, align 8
  store i8 %10, ptr %11, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i8, ptr %i, align 1
  %dec = add i8 %12, -1
  store i8 %dec, ptr %i, align 1
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @convertCb(i8 noundef zeroext %dstOfs) #0 {
entry:
  %dstOfs.addr = alloca i8, align 1
  %i = alloca i8, align 1
  %pDstG = alloca ptr, align 8
  %pDstB = alloca ptr, align 8
  %pSrc = alloca ptr, align 8
  %cb = alloca i8, align 1
  %cbG = alloca i16, align 2
  %cbB = alloca i16, align 2
  store i8 %dstOfs, ptr %dstOfs.addr, align 1
  %0 = load i8, ptr %dstOfs.addr, align 1
  %conv = zext i8 %0 to i32
  %idx.ext = sext i32 %conv to i64
  %add.ptr = getelementptr inbounds i8, ptr @gMCUBufG, i64 %idx.ext
  store ptr %add.ptr, ptr %pDstG, align 8
  %1 = load i8, ptr %dstOfs.addr, align 1
  %conv1 = zext i8 %1 to i32
  %idx.ext2 = sext i32 %conv1 to i64
  %add.ptr3 = getelementptr inbounds i8, ptr @gMCUBufB, i64 %idx.ext2
  store ptr %add.ptr3, ptr %pDstB, align 8
  store ptr @gCoeffBuf, ptr %pSrc, align 8
  store i8 64, ptr %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i8, ptr %i, align 1
  %conv4 = zext i8 %2 to i32
  %cmp = icmp sgt i32 %conv4, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %pSrc, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %3, i32 1
  store ptr %incdec.ptr, ptr %pSrc, align 8
  %4 = load i16, ptr %3, align 2
  %conv6 = trunc i16 %4 to i8
  store i8 %conv6, ptr %cb, align 1
  %5 = load i8, ptr %cb, align 1
  %conv7 = zext i8 %5 to i32
  %mul = mul i32 %conv7, 88
  %shr = lshr i32 %mul, 8
  %sub = sub i32 %shr, 44
  %conv8 = trunc i32 %sub to i16
  store i16 %conv8, ptr %cbG, align 2
  %6 = load ptr, ptr %pDstG, align 8
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 0
  %7 = load i8, ptr %arrayidx, align 1
  %8 = load i16, ptr %cbG, align 2
  %call = call zeroext i8 @subAndClamp(i8 noundef zeroext %7, i16 noundef signext %8)
  %9 = load ptr, ptr %pDstG, align 8
  store i8 %call, ptr %9, align 1
  %10 = load ptr, ptr %pDstG, align 8
  %incdec.ptr9 = getelementptr inbounds i8, ptr %10, i32 1
  store ptr %incdec.ptr9, ptr %pDstG, align 8
  %11 = load i8, ptr %cb, align 1
  %conv10 = zext i8 %11 to i32
  %12 = load i8, ptr %cb, align 1
  %conv11 = zext i8 %12 to i32
  %mul12 = mul i32 %conv11, 198
  %shr13 = lshr i32 %mul12, 8
  %add = add i32 %conv10, %shr13
  %sub14 = sub i32 %add, 227
  %conv15 = trunc i32 %sub14 to i16
  store i16 %conv15, ptr %cbB, align 2
  %13 = load ptr, ptr %pDstB, align 8
  %arrayidx16 = getelementptr inbounds i8, ptr %13, i64 0
  %14 = load i8, ptr %arrayidx16, align 1
  %15 = load i16, ptr %cbB, align 2
  %call17 = call zeroext i8 @addAndClamp(i8 noundef zeroext %14, i16 noundef signext %15)
  %16 = load ptr, ptr %pDstB, align 8
  store i8 %call17, ptr %16, align 1
  %17 = load ptr, ptr %pDstB, align 8
  %incdec.ptr18 = getelementptr inbounds i8, ptr %17, i32 1
  store ptr %incdec.ptr18, ptr %pDstB, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i8, ptr %i, align 1
  %dec = add i8 %18, -1
  store i8 %dec, ptr %i, align 1
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @convertCr(i8 noundef zeroext %dstOfs) #0 {
entry:
  %dstOfs.addr = alloca i8, align 1
  %i = alloca i8, align 1
  %pDstR = alloca ptr, align 8
  %pDstG = alloca ptr, align 8
  %pSrc = alloca ptr, align 8
  %cr = alloca i8, align 1
  %crR = alloca i16, align 2
  %crG = alloca i16, align 2
  store i8 %dstOfs, ptr %dstOfs.addr, align 1
  %0 = load i8, ptr %dstOfs.addr, align 1
  %conv = zext i8 %0 to i32
  %idx.ext = sext i32 %conv to i64
  %add.ptr = getelementptr inbounds i8, ptr @gMCUBufR, i64 %idx.ext
  store ptr %add.ptr, ptr %pDstR, align 8
  %1 = load i8, ptr %dstOfs.addr, align 1
  %conv1 = zext i8 %1 to i32
  %idx.ext2 = sext i32 %conv1 to i64
  %add.ptr3 = getelementptr inbounds i8, ptr @gMCUBufG, i64 %idx.ext2
  store ptr %add.ptr3, ptr %pDstG, align 8
  store ptr @gCoeffBuf, ptr %pSrc, align 8
  store i8 64, ptr %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i8, ptr %i, align 1
  %conv4 = zext i8 %2 to i32
  %cmp = icmp sgt i32 %conv4, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %pSrc, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %3, i32 1
  store ptr %incdec.ptr, ptr %pSrc, align 8
  %4 = load i16, ptr %3, align 2
  %conv6 = trunc i16 %4 to i8
  store i8 %conv6, ptr %cr, align 1
  %5 = load i8, ptr %cr, align 1
  %conv7 = zext i8 %5 to i32
  %6 = load i8, ptr %cr, align 1
  %conv8 = zext i8 %6 to i32
  %mul = mul i32 %conv8, 103
  %shr = lshr i32 %mul, 8
  %add = add i32 %conv7, %shr
  %sub = sub i32 %add, 179
  %conv9 = trunc i32 %sub to i16
  store i16 %conv9, ptr %crR, align 2
  %7 = load ptr, ptr %pDstR, align 8
  %arrayidx = getelementptr inbounds i8, ptr %7, i64 0
  %8 = load i8, ptr %arrayidx, align 1
  %9 = load i16, ptr %crR, align 2
  %call = call zeroext i8 @addAndClamp(i8 noundef zeroext %8, i16 noundef signext %9)
  %10 = load ptr, ptr %pDstR, align 8
  store i8 %call, ptr %10, align 1
  %11 = load ptr, ptr %pDstR, align 8
  %incdec.ptr10 = getelementptr inbounds i8, ptr %11, i32 1
  store ptr %incdec.ptr10, ptr %pDstR, align 8
  %12 = load i8, ptr %cr, align 1
  %conv11 = zext i8 %12 to i32
  %mul12 = mul i32 %conv11, 183
  %shr13 = lshr i32 %mul12, 8
  %sub14 = sub i32 %shr13, 91
  %conv15 = trunc i32 %sub14 to i16
  store i16 %conv15, ptr %crG, align 2
  %13 = load ptr, ptr %pDstG, align 8
  %arrayidx16 = getelementptr inbounds i8, ptr %13, i64 0
  %14 = load i8, ptr %arrayidx16, align 1
  %15 = load i16, ptr %crG, align 2
  %call17 = call zeroext i8 @subAndClamp(i8 noundef zeroext %14, i16 noundef signext %15)
  %16 = load ptr, ptr %pDstG, align 8
  store i8 %call17, ptr %16, align 1
  %17 = load ptr, ptr %pDstG, align 8
  %incdec.ptr18 = getelementptr inbounds i8, ptr %17, i32 1
  store ptr %incdec.ptr18, ptr %pDstG, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i8, ptr %i, align 1
  %dec = add i8 %18, -1
  store i8 %dec, ptr %i, align 1
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @upsampleCbV(i8 noundef zeroext %srcOfs, i8 noundef zeroext %dstOfs) #0 {
entry:
  %srcOfs.addr = alloca i8, align 1
  %dstOfs.addr = alloca i8, align 1
  %x = alloca i8, align 1
  %y = alloca i8, align 1
  %pSrc = alloca ptr, align 8
  %pDstG = alloca ptr, align 8
  %pDstB = alloca ptr, align 8
  %cb = alloca i8, align 1
  %cbG = alloca i16, align 2
  %cbB = alloca i16, align 2
  store i8 %srcOfs, ptr %srcOfs.addr, align 1
  store i8 %dstOfs, ptr %dstOfs.addr, align 1
  %0 = load i8, ptr %srcOfs.addr, align 1
  %conv = zext i8 %0 to i32
  %idx.ext = sext i32 %conv to i64
  %add.ptr = getelementptr inbounds i16, ptr @gCoeffBuf, i64 %idx.ext
  store ptr %add.ptr, ptr %pSrc, align 8
  %1 = load i8, ptr %dstOfs.addr, align 1
  %conv1 = zext i8 %1 to i32
  %idx.ext2 = sext i32 %conv1 to i64
  %add.ptr3 = getelementptr inbounds i8, ptr @gMCUBufG, i64 %idx.ext2
  store ptr %add.ptr3, ptr %pDstG, align 8
  %2 = load i8, ptr %dstOfs.addr, align 1
  %conv4 = zext i8 %2 to i32
  %idx.ext5 = sext i32 %conv4 to i64
  %add.ptr6 = getelementptr inbounds i8, ptr @gMCUBufB, i64 %idx.ext5
  store ptr %add.ptr6, ptr %pDstB, align 8
  store i8 0, ptr %y, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc39, %entry
  %3 = load i8, ptr %y, align 1
  %conv7 = zext i8 %3 to i32
  %cmp = icmp slt i32 %conv7, 4
  br i1 %cmp, label %for.body, label %for.end41

for.body:                                         ; preds = %for.cond
  store i8 0, ptr %x, align 1
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc, %for.body
  %4 = load i8, ptr %x, align 1
  %conv10 = zext i8 %4 to i32
  %cmp11 = icmp slt i32 %conv10, 8
  br i1 %cmp11, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond9
  %5 = load ptr, ptr %pSrc, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %pSrc, align 8
  %6 = load i16, ptr %5, align 2
  %conv14 = trunc i16 %6 to i8
  store i8 %conv14, ptr %cb, align 1
  %7 = load i8, ptr %cb, align 1
  %conv15 = zext i8 %7 to i32
  %mul = mul i32 %conv15, 88
  %shr = lshr i32 %mul, 8
  %sub = sub i32 %shr, 44
  %conv16 = trunc i32 %sub to i16
  store i16 %conv16, ptr %cbG, align 2
  %8 = load ptr, ptr %pDstG, align 8
  %arrayidx = getelementptr inbounds i8, ptr %8, i64 0
  %9 = load i8, ptr %arrayidx, align 1
  %10 = load i16, ptr %cbG, align 2
  %call = call zeroext i8 @subAndClamp(i8 noundef zeroext %9, i16 noundef signext %10)
  %11 = load ptr, ptr %pDstG, align 8
  %arrayidx17 = getelementptr inbounds i8, ptr %11, i64 0
  store i8 %call, ptr %arrayidx17, align 1
  %12 = load ptr, ptr %pDstG, align 8
  %arrayidx18 = getelementptr inbounds i8, ptr %12, i64 8
  %13 = load i8, ptr %arrayidx18, align 1
  %14 = load i16, ptr %cbG, align 2
  %call19 = call zeroext i8 @subAndClamp(i8 noundef zeroext %13, i16 noundef signext %14)
  %15 = load ptr, ptr %pDstG, align 8
  %arrayidx20 = getelementptr inbounds i8, ptr %15, i64 8
  store i8 %call19, ptr %arrayidx20, align 1
  %16 = load i8, ptr %cb, align 1
  %conv21 = zext i8 %16 to i32
  %17 = load i8, ptr %cb, align 1
  %conv22 = zext i8 %17 to i32
  %mul23 = mul i32 %conv22, 198
  %shr24 = lshr i32 %mul23, 8
  %add = add i32 %conv21, %shr24
  %sub25 = sub i32 %add, 227
  %conv26 = trunc i32 %sub25 to i16
  store i16 %conv26, ptr %cbB, align 2
  %18 = load ptr, ptr %pDstB, align 8
  %arrayidx27 = getelementptr inbounds i8, ptr %18, i64 0
  %19 = load i8, ptr %arrayidx27, align 1
  %20 = load i16, ptr %cbB, align 2
  %call28 = call zeroext i8 @addAndClamp(i8 noundef zeroext %19, i16 noundef signext %20)
  %21 = load ptr, ptr %pDstB, align 8
  %arrayidx29 = getelementptr inbounds i8, ptr %21, i64 0
  store i8 %call28, ptr %arrayidx29, align 1
  %22 = load ptr, ptr %pDstB, align 8
  %arrayidx30 = getelementptr inbounds i8, ptr %22, i64 8
  %23 = load i8, ptr %arrayidx30, align 1
  %24 = load i16, ptr %cbB, align 2
  %call31 = call zeroext i8 @addAndClamp(i8 noundef zeroext %23, i16 noundef signext %24)
  %25 = load ptr, ptr %pDstB, align 8
  %arrayidx32 = getelementptr inbounds i8, ptr %25, i64 8
  store i8 %call31, ptr %arrayidx32, align 1
  %26 = load ptr, ptr %pDstG, align 8
  %incdec.ptr33 = getelementptr inbounds i8, ptr %26, i32 1
  store ptr %incdec.ptr33, ptr %pDstG, align 8
  %27 = load ptr, ptr %pDstB, align 8
  %incdec.ptr34 = getelementptr inbounds i8, ptr %27, i32 1
  store ptr %incdec.ptr34, ptr %pDstB, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body13
  %28 = load i8, ptr %x, align 1
  %inc = add i8 %28, 1
  store i8 %inc, ptr %x, align 1
  br label %for.cond9, !llvm.loop !20

for.end:                                          ; preds = %for.cond9
  %29 = load ptr, ptr %pDstG, align 8
  %add.ptr35 = getelementptr inbounds i8, ptr %29, i64 -8
  %add.ptr36 = getelementptr inbounds i8, ptr %add.ptr35, i64 16
  store ptr %add.ptr36, ptr %pDstG, align 8
  %30 = load ptr, ptr %pDstB, align 8
  %add.ptr37 = getelementptr inbounds i8, ptr %30, i64 -8
  %add.ptr38 = getelementptr inbounds i8, ptr %add.ptr37, i64 16
  store ptr %add.ptr38, ptr %pDstB, align 8
  br label %for.inc39

for.inc39:                                        ; preds = %for.end
  %31 = load i8, ptr %y, align 1
  %inc40 = add i8 %31, 1
  store i8 %inc40, ptr %y, align 1
  br label %for.cond, !llvm.loop !21

for.end41:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @upsampleCrV(i8 noundef zeroext %srcOfs, i8 noundef zeroext %dstOfs) #0 {
entry:
  %srcOfs.addr = alloca i8, align 1
  %dstOfs.addr = alloca i8, align 1
  %x = alloca i8, align 1
  %y = alloca i8, align 1
  %pSrc = alloca ptr, align 8
  %pDstR = alloca ptr, align 8
  %pDstG = alloca ptr, align 8
  %cr = alloca i8, align 1
  %crR = alloca i16, align 2
  %crG = alloca i16, align 2
  store i8 %srcOfs, ptr %srcOfs.addr, align 1
  store i8 %dstOfs, ptr %dstOfs.addr, align 1
  %0 = load i8, ptr %srcOfs.addr, align 1
  %conv = zext i8 %0 to i32
  %idx.ext = sext i32 %conv to i64
  %add.ptr = getelementptr inbounds i16, ptr @gCoeffBuf, i64 %idx.ext
  store ptr %add.ptr, ptr %pSrc, align 8
  %1 = load i8, ptr %dstOfs.addr, align 1
  %conv1 = zext i8 %1 to i32
  %idx.ext2 = sext i32 %conv1 to i64
  %add.ptr3 = getelementptr inbounds i8, ptr @gMCUBufR, i64 %idx.ext2
  store ptr %add.ptr3, ptr %pDstR, align 8
  %2 = load i8, ptr %dstOfs.addr, align 1
  %conv4 = zext i8 %2 to i32
  %idx.ext5 = sext i32 %conv4 to i64
  %add.ptr6 = getelementptr inbounds i8, ptr @gMCUBufG, i64 %idx.ext5
  store ptr %add.ptr6, ptr %pDstG, align 8
  store i8 0, ptr %y, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc39, %entry
  %3 = load i8, ptr %y, align 1
  %conv7 = zext i8 %3 to i32
  %cmp = icmp slt i32 %conv7, 4
  br i1 %cmp, label %for.body, label %for.end41

for.body:                                         ; preds = %for.cond
  store i8 0, ptr %x, align 1
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc, %for.body
  %4 = load i8, ptr %x, align 1
  %conv10 = zext i8 %4 to i32
  %cmp11 = icmp slt i32 %conv10, 8
  br i1 %cmp11, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond9
  %5 = load ptr, ptr %pSrc, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %pSrc, align 8
  %6 = load i16, ptr %5, align 2
  %conv14 = trunc i16 %6 to i8
  store i8 %conv14, ptr %cr, align 1
  %7 = load i8, ptr %cr, align 1
  %conv15 = zext i8 %7 to i32
  %8 = load i8, ptr %cr, align 1
  %conv16 = zext i8 %8 to i32
  %mul = mul i32 %conv16, 103
  %shr = lshr i32 %mul, 8
  %add = add i32 %conv15, %shr
  %sub = sub i32 %add, 179
  %conv17 = trunc i32 %sub to i16
  store i16 %conv17, ptr %crR, align 2
  %9 = load ptr, ptr %pDstR, align 8
  %arrayidx = getelementptr inbounds i8, ptr %9, i64 0
  %10 = load i8, ptr %arrayidx, align 1
  %11 = load i16, ptr %crR, align 2
  %call = call zeroext i8 @addAndClamp(i8 noundef zeroext %10, i16 noundef signext %11)
  %12 = load ptr, ptr %pDstR, align 8
  %arrayidx18 = getelementptr inbounds i8, ptr %12, i64 0
  store i8 %call, ptr %arrayidx18, align 1
  %13 = load ptr, ptr %pDstR, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %13, i64 8
  %14 = load i8, ptr %arrayidx19, align 1
  %15 = load i16, ptr %crR, align 2
  %call20 = call zeroext i8 @addAndClamp(i8 noundef zeroext %14, i16 noundef signext %15)
  %16 = load ptr, ptr %pDstR, align 8
  %arrayidx21 = getelementptr inbounds i8, ptr %16, i64 8
  store i8 %call20, ptr %arrayidx21, align 1
  %17 = load i8, ptr %cr, align 1
  %conv22 = zext i8 %17 to i32
  %mul23 = mul i32 %conv22, 183
  %shr24 = lshr i32 %mul23, 8
  %sub25 = sub i32 %shr24, 91
  %conv26 = trunc i32 %sub25 to i16
  store i16 %conv26, ptr %crG, align 2
  %18 = load ptr, ptr %pDstG, align 8
  %arrayidx27 = getelementptr inbounds i8, ptr %18, i64 0
  %19 = load i8, ptr %arrayidx27, align 1
  %20 = load i16, ptr %crG, align 2
  %call28 = call zeroext i8 @subAndClamp(i8 noundef zeroext %19, i16 noundef signext %20)
  %21 = load ptr, ptr %pDstG, align 8
  %arrayidx29 = getelementptr inbounds i8, ptr %21, i64 0
  store i8 %call28, ptr %arrayidx29, align 1
  %22 = load ptr, ptr %pDstG, align 8
  %arrayidx30 = getelementptr inbounds i8, ptr %22, i64 8
  %23 = load i8, ptr %arrayidx30, align 1
  %24 = load i16, ptr %crG, align 2
  %call31 = call zeroext i8 @subAndClamp(i8 noundef zeroext %23, i16 noundef signext %24)
  %25 = load ptr, ptr %pDstG, align 8
  %arrayidx32 = getelementptr inbounds i8, ptr %25, i64 8
  store i8 %call31, ptr %arrayidx32, align 1
  %26 = load ptr, ptr %pDstR, align 8
  %incdec.ptr33 = getelementptr inbounds i8, ptr %26, i32 1
  store ptr %incdec.ptr33, ptr %pDstR, align 8
  %27 = load ptr, ptr %pDstG, align 8
  %incdec.ptr34 = getelementptr inbounds i8, ptr %27, i32 1
  store ptr %incdec.ptr34, ptr %pDstG, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body13
  %28 = load i8, ptr %x, align 1
  %inc = add i8 %28, 1
  store i8 %inc, ptr %x, align 1
  br label %for.cond9, !llvm.loop !22

for.end:                                          ; preds = %for.cond9
  %29 = load ptr, ptr %pDstR, align 8
  %add.ptr35 = getelementptr inbounds i8, ptr %29, i64 -8
  %add.ptr36 = getelementptr inbounds i8, ptr %add.ptr35, i64 16
  store ptr %add.ptr36, ptr %pDstR, align 8
  %30 = load ptr, ptr %pDstG, align 8
  %add.ptr37 = getelementptr inbounds i8, ptr %30, i64 -8
  %add.ptr38 = getelementptr inbounds i8, ptr %add.ptr37, i64 16
  store ptr %add.ptr38, ptr %pDstG, align 8
  br label %for.inc39

for.inc39:                                        ; preds = %for.end
  %31 = load i8, ptr %y, align 1
  %inc40 = add i8 %31, 1
  store i8 %inc40, ptr %y, align 1
  br label %for.cond, !llvm.loop !23

for.end41:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @upsampleCbH(i8 noundef zeroext %srcOfs, i8 noundef zeroext %dstOfs) #0 {
entry:
  %srcOfs.addr = alloca i8, align 1
  %dstOfs.addr = alloca i8, align 1
  %x = alloca i8, align 1
  %y = alloca i8, align 1
  %pSrc = alloca ptr, align 8
  %pDstG = alloca ptr, align 8
  %pDstB = alloca ptr, align 8
  %cb = alloca i8, align 1
  %cbG = alloca i16, align 2
  %cbB = alloca i16, align 2
  store i8 %srcOfs, ptr %srcOfs.addr, align 1
  store i8 %dstOfs, ptr %dstOfs.addr, align 1
  %0 = load i8, ptr %srcOfs.addr, align 1
  %conv = zext i8 %0 to i32
  %idx.ext = sext i32 %conv to i64
  %add.ptr = getelementptr inbounds i16, ptr @gCoeffBuf, i64 %idx.ext
  store ptr %add.ptr, ptr %pSrc, align 8
  %1 = load i8, ptr %dstOfs.addr, align 1
  %conv1 = zext i8 %1 to i32
  %idx.ext2 = sext i32 %conv1 to i64
  %add.ptr3 = getelementptr inbounds i8, ptr @gMCUBufG, i64 %idx.ext2
  store ptr %add.ptr3, ptr %pDstG, align 8
  %2 = load i8, ptr %dstOfs.addr, align 1
  %conv4 = zext i8 %2 to i32
  %idx.ext5 = sext i32 %conv4 to i64
  %add.ptr6 = getelementptr inbounds i8, ptr @gMCUBufB, i64 %idx.ext5
  store ptr %add.ptr6, ptr %pDstB, align 8
  store i8 0, ptr %y, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc37, %entry
  %3 = load i8, ptr %y, align 1
  %conv7 = zext i8 %3 to i32
  %cmp = icmp slt i32 %conv7, 8
  br i1 %cmp, label %for.body, label %for.end39

for.body:                                         ; preds = %for.cond
  store i8 0, ptr %x, align 1
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc, %for.body
  %4 = load i8, ptr %x, align 1
  %conv10 = zext i8 %4 to i32
  %cmp11 = icmp slt i32 %conv10, 4
  br i1 %cmp11, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond9
  %5 = load ptr, ptr %pSrc, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %pSrc, align 8
  %6 = load i16, ptr %5, align 2
  %conv14 = trunc i16 %6 to i8
  store i8 %conv14, ptr %cb, align 1
  %7 = load i8, ptr %cb, align 1
  %conv15 = zext i8 %7 to i32
  %mul = mul i32 %conv15, 88
  %shr = lshr i32 %mul, 8
  %sub = sub i32 %shr, 44
  %conv16 = trunc i32 %sub to i16
  store i16 %conv16, ptr %cbG, align 2
  %8 = load ptr, ptr %pDstG, align 8
  %arrayidx = getelementptr inbounds i8, ptr %8, i64 0
  %9 = load i8, ptr %arrayidx, align 1
  %10 = load i16, ptr %cbG, align 2
  %call = call zeroext i8 @subAndClamp(i8 noundef zeroext %9, i16 noundef signext %10)
  %11 = load ptr, ptr %pDstG, align 8
  %arrayidx17 = getelementptr inbounds i8, ptr %11, i64 0
  store i8 %call, ptr %arrayidx17, align 1
  %12 = load ptr, ptr %pDstG, align 8
  %arrayidx18 = getelementptr inbounds i8, ptr %12, i64 1
  %13 = load i8, ptr %arrayidx18, align 1
  %14 = load i16, ptr %cbG, align 2
  %call19 = call zeroext i8 @subAndClamp(i8 noundef zeroext %13, i16 noundef signext %14)
  %15 = load ptr, ptr %pDstG, align 8
  %arrayidx20 = getelementptr inbounds i8, ptr %15, i64 1
  store i8 %call19, ptr %arrayidx20, align 1
  %16 = load i8, ptr %cb, align 1
  %conv21 = zext i8 %16 to i32
  %17 = load i8, ptr %cb, align 1
  %conv22 = zext i8 %17 to i32
  %mul23 = mul i32 %conv22, 198
  %shr24 = lshr i32 %mul23, 8
  %add = add i32 %conv21, %shr24
  %sub25 = sub i32 %add, 227
  %conv26 = trunc i32 %sub25 to i16
  store i16 %conv26, ptr %cbB, align 2
  %18 = load ptr, ptr %pDstB, align 8
  %arrayidx27 = getelementptr inbounds i8, ptr %18, i64 0
  %19 = load i8, ptr %arrayidx27, align 1
  %20 = load i16, ptr %cbB, align 2
  %call28 = call zeroext i8 @addAndClamp(i8 noundef zeroext %19, i16 noundef signext %20)
  %21 = load ptr, ptr %pDstB, align 8
  %arrayidx29 = getelementptr inbounds i8, ptr %21, i64 0
  store i8 %call28, ptr %arrayidx29, align 1
  %22 = load ptr, ptr %pDstB, align 8
  %arrayidx30 = getelementptr inbounds i8, ptr %22, i64 1
  %23 = load i8, ptr %arrayidx30, align 1
  %24 = load i16, ptr %cbB, align 2
  %call31 = call zeroext i8 @addAndClamp(i8 noundef zeroext %23, i16 noundef signext %24)
  %25 = load ptr, ptr %pDstB, align 8
  %arrayidx32 = getelementptr inbounds i8, ptr %25, i64 1
  store i8 %call31, ptr %arrayidx32, align 1
  %26 = load ptr, ptr %pDstG, align 8
  %add.ptr33 = getelementptr inbounds i8, ptr %26, i64 2
  store ptr %add.ptr33, ptr %pDstG, align 8
  %27 = load ptr, ptr %pDstB, align 8
  %add.ptr34 = getelementptr inbounds i8, ptr %27, i64 2
  store ptr %add.ptr34, ptr %pDstB, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body13
  %28 = load i8, ptr %x, align 1
  %inc = add i8 %28, 1
  store i8 %inc, ptr %x, align 1
  br label %for.cond9, !llvm.loop !24

for.end:                                          ; preds = %for.cond9
  %29 = load ptr, ptr %pSrc, align 8
  %add.ptr35 = getelementptr inbounds i16, ptr %29, i64 -4
  %add.ptr36 = getelementptr inbounds i16, ptr %add.ptr35, i64 8
  store ptr %add.ptr36, ptr %pSrc, align 8
  br label %for.inc37

for.inc37:                                        ; preds = %for.end
  %30 = load i8, ptr %y, align 1
  %inc38 = add i8 %30, 1
  store i8 %inc38, ptr %y, align 1
  br label %for.cond, !llvm.loop !25

for.end39:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @upsampleCrH(i8 noundef zeroext %srcOfs, i8 noundef zeroext %dstOfs) #0 {
entry:
  %srcOfs.addr = alloca i8, align 1
  %dstOfs.addr = alloca i8, align 1
  %x = alloca i8, align 1
  %y = alloca i8, align 1
  %pSrc = alloca ptr, align 8
  %pDstR = alloca ptr, align 8
  %pDstG = alloca ptr, align 8
  %cr = alloca i8, align 1
  %crR = alloca i16, align 2
  %crG = alloca i16, align 2
  store i8 %srcOfs, ptr %srcOfs.addr, align 1
  store i8 %dstOfs, ptr %dstOfs.addr, align 1
  %0 = load i8, ptr %srcOfs.addr, align 1
  %conv = zext i8 %0 to i32
  %idx.ext = sext i32 %conv to i64
  %add.ptr = getelementptr inbounds i16, ptr @gCoeffBuf, i64 %idx.ext
  store ptr %add.ptr, ptr %pSrc, align 8
  %1 = load i8, ptr %dstOfs.addr, align 1
  %conv1 = zext i8 %1 to i32
  %idx.ext2 = sext i32 %conv1 to i64
  %add.ptr3 = getelementptr inbounds i8, ptr @gMCUBufR, i64 %idx.ext2
  store ptr %add.ptr3, ptr %pDstR, align 8
  %2 = load i8, ptr %dstOfs.addr, align 1
  %conv4 = zext i8 %2 to i32
  %idx.ext5 = sext i32 %conv4 to i64
  %add.ptr6 = getelementptr inbounds i8, ptr @gMCUBufG, i64 %idx.ext5
  store ptr %add.ptr6, ptr %pDstG, align 8
  store i8 0, ptr %y, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc37, %entry
  %3 = load i8, ptr %y, align 1
  %conv7 = zext i8 %3 to i32
  %cmp = icmp slt i32 %conv7, 8
  br i1 %cmp, label %for.body, label %for.end39

for.body:                                         ; preds = %for.cond
  store i8 0, ptr %x, align 1
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc, %for.body
  %4 = load i8, ptr %x, align 1
  %conv10 = zext i8 %4 to i32
  %cmp11 = icmp slt i32 %conv10, 4
  br i1 %cmp11, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond9
  %5 = load ptr, ptr %pSrc, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %pSrc, align 8
  %6 = load i16, ptr %5, align 2
  %conv14 = trunc i16 %6 to i8
  store i8 %conv14, ptr %cr, align 1
  %7 = load i8, ptr %cr, align 1
  %conv15 = zext i8 %7 to i32
  %8 = load i8, ptr %cr, align 1
  %conv16 = zext i8 %8 to i32
  %mul = mul i32 %conv16, 103
  %shr = lshr i32 %mul, 8
  %add = add i32 %conv15, %shr
  %sub = sub i32 %add, 179
  %conv17 = trunc i32 %sub to i16
  store i16 %conv17, ptr %crR, align 2
  %9 = load ptr, ptr %pDstR, align 8
  %arrayidx = getelementptr inbounds i8, ptr %9, i64 0
  %10 = load i8, ptr %arrayidx, align 1
  %11 = load i16, ptr %crR, align 2
  %call = call zeroext i8 @addAndClamp(i8 noundef zeroext %10, i16 noundef signext %11)
  %12 = load ptr, ptr %pDstR, align 8
  %arrayidx18 = getelementptr inbounds i8, ptr %12, i64 0
  store i8 %call, ptr %arrayidx18, align 1
  %13 = load ptr, ptr %pDstR, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %13, i64 1
  %14 = load i8, ptr %arrayidx19, align 1
  %15 = load i16, ptr %crR, align 2
  %call20 = call zeroext i8 @addAndClamp(i8 noundef zeroext %14, i16 noundef signext %15)
  %16 = load ptr, ptr %pDstR, align 8
  %arrayidx21 = getelementptr inbounds i8, ptr %16, i64 1
  store i8 %call20, ptr %arrayidx21, align 1
  %17 = load i8, ptr %cr, align 1
  %conv22 = zext i8 %17 to i32
  %mul23 = mul i32 %conv22, 183
  %shr24 = lshr i32 %mul23, 8
  %sub25 = sub i32 %shr24, 91
  %conv26 = trunc i32 %sub25 to i16
  store i16 %conv26, ptr %crG, align 2
  %18 = load ptr, ptr %pDstG, align 8
  %arrayidx27 = getelementptr inbounds i8, ptr %18, i64 0
  %19 = load i8, ptr %arrayidx27, align 1
  %20 = load i16, ptr %crG, align 2
  %call28 = call zeroext i8 @subAndClamp(i8 noundef zeroext %19, i16 noundef signext %20)
  %21 = load ptr, ptr %pDstG, align 8
  %arrayidx29 = getelementptr inbounds i8, ptr %21, i64 0
  store i8 %call28, ptr %arrayidx29, align 1
  %22 = load ptr, ptr %pDstG, align 8
  %arrayidx30 = getelementptr inbounds i8, ptr %22, i64 1
  %23 = load i8, ptr %arrayidx30, align 1
  %24 = load i16, ptr %crG, align 2
  %call31 = call zeroext i8 @subAndClamp(i8 noundef zeroext %23, i16 noundef signext %24)
  %25 = load ptr, ptr %pDstG, align 8
  %arrayidx32 = getelementptr inbounds i8, ptr %25, i64 1
  store i8 %call31, ptr %arrayidx32, align 1
  %26 = load ptr, ptr %pDstR, align 8
  %add.ptr33 = getelementptr inbounds i8, ptr %26, i64 2
  store ptr %add.ptr33, ptr %pDstR, align 8
  %27 = load ptr, ptr %pDstG, align 8
  %add.ptr34 = getelementptr inbounds i8, ptr %27, i64 2
  store ptr %add.ptr34, ptr %pDstG, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body13
  %28 = load i8, ptr %x, align 1
  %inc = add i8 %28, 1
  store i8 %inc, ptr %x, align 1
  br label %for.cond9, !llvm.loop !26

for.end:                                          ; preds = %for.cond9
  %29 = load ptr, ptr %pSrc, align 8
  %add.ptr35 = getelementptr inbounds i16, ptr %29, i64 -4
  %add.ptr36 = getelementptr inbounds i16, ptr %add.ptr35, i64 8
  store ptr %add.ptr36, ptr %pSrc, align 8
  br label %for.inc37

for.inc37:                                        ; preds = %for.end
  %30 = load i8, ptr %y, align 1
  %inc38 = add i8 %30, 1
  store i8 %inc38, ptr %y, align 1
  br label %for.cond, !llvm.loop !27

for.end39:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @upsampleCb(i8 noundef zeroext %srcOfs, i8 noundef zeroext %dstOfs) #0 {
entry:
  %srcOfs.addr = alloca i8, align 1
  %dstOfs.addr = alloca i8, align 1
  %x = alloca i8, align 1
  %y = alloca i8, align 1
  %pSrc = alloca ptr, align 8
  %pDstG = alloca ptr, align 8
  %pDstB = alloca ptr, align 8
  %cb = alloca i8, align 1
  %cbG = alloca i16, align 2
  %cbB = alloca i16, align 2
  store i8 %srcOfs, ptr %srcOfs.addr, align 1
  store i8 %dstOfs, ptr %dstOfs.addr, align 1
  %0 = load i8, ptr %srcOfs.addr, align 1
  %conv = zext i8 %0 to i32
  %idx.ext = sext i32 %conv to i64
  %add.ptr = getelementptr inbounds i16, ptr @gCoeffBuf, i64 %idx.ext
  store ptr %add.ptr, ptr %pSrc, align 8
  %1 = load i8, ptr %dstOfs.addr, align 1
  %conv1 = zext i8 %1 to i32
  %idx.ext2 = sext i32 %conv1 to i64
  %add.ptr3 = getelementptr inbounds i8, ptr @gMCUBufG, i64 %idx.ext2
  store ptr %add.ptr3, ptr %pDstG, align 8
  %2 = load i8, ptr %dstOfs.addr, align 1
  %conv4 = zext i8 %2 to i32
  %idx.ext5 = sext i32 %conv4 to i64
  %add.ptr6 = getelementptr inbounds i8, ptr @gMCUBufB, i64 %idx.ext5
  store ptr %add.ptr6, ptr %pDstB, align 8
  store i8 0, ptr %y, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc53, %entry
  %3 = load i8, ptr %y, align 1
  %conv7 = zext i8 %3 to i32
  %cmp = icmp slt i32 %conv7, 4
  br i1 %cmp, label %for.body, label %for.end55

for.body:                                         ; preds = %for.cond
  store i8 0, ptr %x, align 1
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc, %for.body
  %4 = load i8, ptr %x, align 1
  %conv10 = zext i8 %4 to i32
  %cmp11 = icmp slt i32 %conv10, 4
  br i1 %cmp11, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond9
  %5 = load ptr, ptr %pSrc, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %pSrc, align 8
  %6 = load i16, ptr %5, align 2
  %conv14 = trunc i16 %6 to i8
  store i8 %conv14, ptr %cb, align 1
  %7 = load i8, ptr %cb, align 1
  %conv15 = zext i8 %7 to i32
  %mul = mul i32 %conv15, 88
  %shr = lshr i32 %mul, 8
  %sub = sub i32 %shr, 44
  %conv16 = trunc i32 %sub to i16
  store i16 %conv16, ptr %cbG, align 2
  %8 = load ptr, ptr %pDstG, align 8
  %arrayidx = getelementptr inbounds i8, ptr %8, i64 0
  %9 = load i8, ptr %arrayidx, align 1
  %10 = load i16, ptr %cbG, align 2
  %call = call zeroext i8 @subAndClamp(i8 noundef zeroext %9, i16 noundef signext %10)
  %11 = load ptr, ptr %pDstG, align 8
  %arrayidx17 = getelementptr inbounds i8, ptr %11, i64 0
  store i8 %call, ptr %arrayidx17, align 1
  %12 = load ptr, ptr %pDstG, align 8
  %arrayidx18 = getelementptr inbounds i8, ptr %12, i64 1
  %13 = load i8, ptr %arrayidx18, align 1
  %14 = load i16, ptr %cbG, align 2
  %call19 = call zeroext i8 @subAndClamp(i8 noundef zeroext %13, i16 noundef signext %14)
  %15 = load ptr, ptr %pDstG, align 8
  %arrayidx20 = getelementptr inbounds i8, ptr %15, i64 1
  store i8 %call19, ptr %arrayidx20, align 1
  %16 = load ptr, ptr %pDstG, align 8
  %arrayidx21 = getelementptr inbounds i8, ptr %16, i64 8
  %17 = load i8, ptr %arrayidx21, align 1
  %18 = load i16, ptr %cbG, align 2
  %call22 = call zeroext i8 @subAndClamp(i8 noundef zeroext %17, i16 noundef signext %18)
  %19 = load ptr, ptr %pDstG, align 8
  %arrayidx23 = getelementptr inbounds i8, ptr %19, i64 8
  store i8 %call22, ptr %arrayidx23, align 1
  %20 = load ptr, ptr %pDstG, align 8
  %arrayidx24 = getelementptr inbounds i8, ptr %20, i64 9
  %21 = load i8, ptr %arrayidx24, align 1
  %22 = load i16, ptr %cbG, align 2
  %call25 = call zeroext i8 @subAndClamp(i8 noundef zeroext %21, i16 noundef signext %22)
  %23 = load ptr, ptr %pDstG, align 8
  %arrayidx26 = getelementptr inbounds i8, ptr %23, i64 9
  store i8 %call25, ptr %arrayidx26, align 1
  %24 = load i8, ptr %cb, align 1
  %conv27 = zext i8 %24 to i32
  %25 = load i8, ptr %cb, align 1
  %conv28 = zext i8 %25 to i32
  %mul29 = mul i32 %conv28, 198
  %shr30 = lshr i32 %mul29, 8
  %add = add i32 %conv27, %shr30
  %sub31 = sub i32 %add, 227
  %conv32 = trunc i32 %sub31 to i16
  store i16 %conv32, ptr %cbB, align 2
  %26 = load ptr, ptr %pDstB, align 8
  %arrayidx33 = getelementptr inbounds i8, ptr %26, i64 0
  %27 = load i8, ptr %arrayidx33, align 1
  %28 = load i16, ptr %cbB, align 2
  %call34 = call zeroext i8 @addAndClamp(i8 noundef zeroext %27, i16 noundef signext %28)
  %29 = load ptr, ptr %pDstB, align 8
  %arrayidx35 = getelementptr inbounds i8, ptr %29, i64 0
  store i8 %call34, ptr %arrayidx35, align 1
  %30 = load ptr, ptr %pDstB, align 8
  %arrayidx36 = getelementptr inbounds i8, ptr %30, i64 1
  %31 = load i8, ptr %arrayidx36, align 1
  %32 = load i16, ptr %cbB, align 2
  %call37 = call zeroext i8 @addAndClamp(i8 noundef zeroext %31, i16 noundef signext %32)
  %33 = load ptr, ptr %pDstB, align 8
  %arrayidx38 = getelementptr inbounds i8, ptr %33, i64 1
  store i8 %call37, ptr %arrayidx38, align 1
  %34 = load ptr, ptr %pDstB, align 8
  %arrayidx39 = getelementptr inbounds i8, ptr %34, i64 8
  %35 = load i8, ptr %arrayidx39, align 1
  %36 = load i16, ptr %cbB, align 2
  %call40 = call zeroext i8 @addAndClamp(i8 noundef zeroext %35, i16 noundef signext %36)
  %37 = load ptr, ptr %pDstB, align 8
  %arrayidx41 = getelementptr inbounds i8, ptr %37, i64 8
  store i8 %call40, ptr %arrayidx41, align 1
  %38 = load ptr, ptr %pDstB, align 8
  %arrayidx42 = getelementptr inbounds i8, ptr %38, i64 9
  %39 = load i8, ptr %arrayidx42, align 1
  %40 = load i16, ptr %cbB, align 2
  %call43 = call zeroext i8 @addAndClamp(i8 noundef zeroext %39, i16 noundef signext %40)
  %41 = load ptr, ptr %pDstB, align 8
  %arrayidx44 = getelementptr inbounds i8, ptr %41, i64 9
  store i8 %call43, ptr %arrayidx44, align 1
  %42 = load ptr, ptr %pDstG, align 8
  %add.ptr45 = getelementptr inbounds i8, ptr %42, i64 2
  store ptr %add.ptr45, ptr %pDstG, align 8
  %43 = load ptr, ptr %pDstB, align 8
  %add.ptr46 = getelementptr inbounds i8, ptr %43, i64 2
  store ptr %add.ptr46, ptr %pDstB, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body13
  %44 = load i8, ptr %x, align 1
  %inc = add i8 %44, 1
  store i8 %inc, ptr %x, align 1
  br label %for.cond9, !llvm.loop !28

for.end:                                          ; preds = %for.cond9
  %45 = load ptr, ptr %pSrc, align 8
  %add.ptr47 = getelementptr inbounds i16, ptr %45, i64 -4
  %add.ptr48 = getelementptr inbounds i16, ptr %add.ptr47, i64 8
  store ptr %add.ptr48, ptr %pSrc, align 8
  %46 = load ptr, ptr %pDstG, align 8
  %add.ptr49 = getelementptr inbounds i8, ptr %46, i64 -8
  %add.ptr50 = getelementptr inbounds i8, ptr %add.ptr49, i64 16
  store ptr %add.ptr50, ptr %pDstG, align 8
  %47 = load ptr, ptr %pDstB, align 8
  %add.ptr51 = getelementptr inbounds i8, ptr %47, i64 -8
  %add.ptr52 = getelementptr inbounds i8, ptr %add.ptr51, i64 16
  store ptr %add.ptr52, ptr %pDstB, align 8
  br label %for.inc53

for.inc53:                                        ; preds = %for.end
  %48 = load i8, ptr %y, align 1
  %inc54 = add i8 %48, 1
  store i8 %inc54, ptr %y, align 1
  br label %for.cond, !llvm.loop !29

for.end55:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @upsampleCr(i8 noundef zeroext %srcOfs, i8 noundef zeroext %dstOfs) #0 {
entry:
  %srcOfs.addr = alloca i8, align 1
  %dstOfs.addr = alloca i8, align 1
  %x = alloca i8, align 1
  %y = alloca i8, align 1
  %pSrc = alloca ptr, align 8
  %pDstR = alloca ptr, align 8
  %pDstG = alloca ptr, align 8
  %cr = alloca i8, align 1
  %crR = alloca i16, align 2
  %crG = alloca i16, align 2
  store i8 %srcOfs, ptr %srcOfs.addr, align 1
  store i8 %dstOfs, ptr %dstOfs.addr, align 1
  %0 = load i8, ptr %srcOfs.addr, align 1
  %conv = zext i8 %0 to i32
  %idx.ext = sext i32 %conv to i64
  %add.ptr = getelementptr inbounds i16, ptr @gCoeffBuf, i64 %idx.ext
  store ptr %add.ptr, ptr %pSrc, align 8
  %1 = load i8, ptr %dstOfs.addr, align 1
  %conv1 = zext i8 %1 to i32
  %idx.ext2 = sext i32 %conv1 to i64
  %add.ptr3 = getelementptr inbounds i8, ptr @gMCUBufR, i64 %idx.ext2
  store ptr %add.ptr3, ptr %pDstR, align 8
  %2 = load i8, ptr %dstOfs.addr, align 1
  %conv4 = zext i8 %2 to i32
  %idx.ext5 = sext i32 %conv4 to i64
  %add.ptr6 = getelementptr inbounds i8, ptr @gMCUBufG, i64 %idx.ext5
  store ptr %add.ptr6, ptr %pDstG, align 8
  store i8 0, ptr %y, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc53, %entry
  %3 = load i8, ptr %y, align 1
  %conv7 = zext i8 %3 to i32
  %cmp = icmp slt i32 %conv7, 4
  br i1 %cmp, label %for.body, label %for.end55

for.body:                                         ; preds = %for.cond
  store i8 0, ptr %x, align 1
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc, %for.body
  %4 = load i8, ptr %x, align 1
  %conv10 = zext i8 %4 to i32
  %cmp11 = icmp slt i32 %conv10, 4
  br i1 %cmp11, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond9
  %5 = load ptr, ptr %pSrc, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %pSrc, align 8
  %6 = load i16, ptr %5, align 2
  %conv14 = trunc i16 %6 to i8
  store i8 %conv14, ptr %cr, align 1
  %7 = load i8, ptr %cr, align 1
  %conv15 = zext i8 %7 to i32
  %8 = load i8, ptr %cr, align 1
  %conv16 = zext i8 %8 to i32
  %mul = mul i32 %conv16, 103
  %shr = lshr i32 %mul, 8
  %add = add i32 %conv15, %shr
  %sub = sub i32 %add, 179
  %conv17 = trunc i32 %sub to i16
  store i16 %conv17, ptr %crR, align 2
  %9 = load ptr, ptr %pDstR, align 8
  %arrayidx = getelementptr inbounds i8, ptr %9, i64 0
  %10 = load i8, ptr %arrayidx, align 1
  %11 = load i16, ptr %crR, align 2
  %call = call zeroext i8 @addAndClamp(i8 noundef zeroext %10, i16 noundef signext %11)
  %12 = load ptr, ptr %pDstR, align 8
  %arrayidx18 = getelementptr inbounds i8, ptr %12, i64 0
  store i8 %call, ptr %arrayidx18, align 1
  %13 = load ptr, ptr %pDstR, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %13, i64 1
  %14 = load i8, ptr %arrayidx19, align 1
  %15 = load i16, ptr %crR, align 2
  %call20 = call zeroext i8 @addAndClamp(i8 noundef zeroext %14, i16 noundef signext %15)
  %16 = load ptr, ptr %pDstR, align 8
  %arrayidx21 = getelementptr inbounds i8, ptr %16, i64 1
  store i8 %call20, ptr %arrayidx21, align 1
  %17 = load ptr, ptr %pDstR, align 8
  %arrayidx22 = getelementptr inbounds i8, ptr %17, i64 8
  %18 = load i8, ptr %arrayidx22, align 1
  %19 = load i16, ptr %crR, align 2
  %call23 = call zeroext i8 @addAndClamp(i8 noundef zeroext %18, i16 noundef signext %19)
  %20 = load ptr, ptr %pDstR, align 8
  %arrayidx24 = getelementptr inbounds i8, ptr %20, i64 8
  store i8 %call23, ptr %arrayidx24, align 1
  %21 = load ptr, ptr %pDstR, align 8
  %arrayidx25 = getelementptr inbounds i8, ptr %21, i64 9
  %22 = load i8, ptr %arrayidx25, align 1
  %23 = load i16, ptr %crR, align 2
  %call26 = call zeroext i8 @addAndClamp(i8 noundef zeroext %22, i16 noundef signext %23)
  %24 = load ptr, ptr %pDstR, align 8
  %arrayidx27 = getelementptr inbounds i8, ptr %24, i64 9
  store i8 %call26, ptr %arrayidx27, align 1
  %25 = load i8, ptr %cr, align 1
  %conv28 = zext i8 %25 to i32
  %mul29 = mul i32 %conv28, 183
  %shr30 = lshr i32 %mul29, 8
  %sub31 = sub i32 %shr30, 91
  %conv32 = trunc i32 %sub31 to i16
  store i16 %conv32, ptr %crG, align 2
  %26 = load ptr, ptr %pDstG, align 8
  %arrayidx33 = getelementptr inbounds i8, ptr %26, i64 0
  %27 = load i8, ptr %arrayidx33, align 1
  %28 = load i16, ptr %crG, align 2
  %call34 = call zeroext i8 @subAndClamp(i8 noundef zeroext %27, i16 noundef signext %28)
  %29 = load ptr, ptr %pDstG, align 8
  %arrayidx35 = getelementptr inbounds i8, ptr %29, i64 0
  store i8 %call34, ptr %arrayidx35, align 1
  %30 = load ptr, ptr %pDstG, align 8
  %arrayidx36 = getelementptr inbounds i8, ptr %30, i64 1
  %31 = load i8, ptr %arrayidx36, align 1
  %32 = load i16, ptr %crG, align 2
  %call37 = call zeroext i8 @subAndClamp(i8 noundef zeroext %31, i16 noundef signext %32)
  %33 = load ptr, ptr %pDstG, align 8
  %arrayidx38 = getelementptr inbounds i8, ptr %33, i64 1
  store i8 %call37, ptr %arrayidx38, align 1
  %34 = load ptr, ptr %pDstG, align 8
  %arrayidx39 = getelementptr inbounds i8, ptr %34, i64 8
  %35 = load i8, ptr %arrayidx39, align 1
  %36 = load i16, ptr %crG, align 2
  %call40 = call zeroext i8 @subAndClamp(i8 noundef zeroext %35, i16 noundef signext %36)
  %37 = load ptr, ptr %pDstG, align 8
  %arrayidx41 = getelementptr inbounds i8, ptr %37, i64 8
  store i8 %call40, ptr %arrayidx41, align 1
  %38 = load ptr, ptr %pDstG, align 8
  %arrayidx42 = getelementptr inbounds i8, ptr %38, i64 9
  %39 = load i8, ptr %arrayidx42, align 1
  %40 = load i16, ptr %crG, align 2
  %call43 = call zeroext i8 @subAndClamp(i8 noundef zeroext %39, i16 noundef signext %40)
  %41 = load ptr, ptr %pDstG, align 8
  %arrayidx44 = getelementptr inbounds i8, ptr %41, i64 9
  store i8 %call43, ptr %arrayidx44, align 1
  %42 = load ptr, ptr %pDstR, align 8
  %add.ptr45 = getelementptr inbounds i8, ptr %42, i64 2
  store ptr %add.ptr45, ptr %pDstR, align 8
  %43 = load ptr, ptr %pDstG, align 8
  %add.ptr46 = getelementptr inbounds i8, ptr %43, i64 2
  store ptr %add.ptr46, ptr %pDstG, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body13
  %44 = load i8, ptr %x, align 1
  %inc = add i8 %44, 1
  store i8 %inc, ptr %x, align 1
  br label %for.cond9, !llvm.loop !30

for.end:                                          ; preds = %for.cond9
  %45 = load ptr, ptr %pSrc, align 8
  %add.ptr47 = getelementptr inbounds i16, ptr %45, i64 -4
  %add.ptr48 = getelementptr inbounds i16, ptr %add.ptr47, i64 8
  store ptr %add.ptr48, ptr %pSrc, align 8
  %46 = load ptr, ptr %pDstR, align 8
  %add.ptr49 = getelementptr inbounds i8, ptr %46, i64 -8
  %add.ptr50 = getelementptr inbounds i8, ptr %add.ptr49, i64 16
  store ptr %add.ptr50, ptr %pDstR, align 8
  %47 = load ptr, ptr %pDstG, align 8
  %add.ptr51 = getelementptr inbounds i8, ptr %47, i64 -8
  %add.ptr52 = getelementptr inbounds i8, ptr %add.ptr51, i64 16
  store ptr %add.ptr52, ptr %pDstG, align 8
  br label %for.inc53

for.inc53:                                        ; preds = %for.end
  %48 = load i8, ptr %y, align 1
  %inc54 = add i8 %48, 1
  store i8 %inc54, ptr %y, align 1
  br label %for.cond, !llvm.loop !31

for.end55:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal signext i16 @imul_b5(i16 noundef signext %w) #0 {
entry:
  %w.addr = alloca i16, align 2
  %x = alloca i64, align 8
  store i16 %w, ptr %w.addr, align 2
  %0 = load i16, ptr %w.addr, align 2
  %conv = sext i16 %0 to i64
  %mul = mul nsw i64 %conv, 196
  store i64 %mul, ptr %x, align 8
  %1 = load i64, ptr %x, align 8
  %add = add nsw i64 %1, 128
  store i64 %add, ptr %x, align 8
  %2 = load i64, ptr %x, align 8
  %shr = ashr i64 %2, 8
  %conv1 = trunc i64 %shr to i16
  ret i16 %conv1
}

; Function Attrs: nounwind ssp uwtable
define internal signext i16 @imul_b4(i16 noundef signext %w) #0 {
entry:
  %w.addr = alloca i16, align 2
  %x = alloca i64, align 8
  store i16 %w, ptr %w.addr, align 2
  %0 = load i16, ptr %w.addr, align 2
  %conv = sext i16 %0 to i64
  %mul = mul nsw i64 %conv, 277
  store i64 %mul, ptr %x, align 8
  %1 = load i64, ptr %x, align 8
  %add = add nsw i64 %1, 128
  store i64 %add, ptr %x, align 8
  %2 = load i64, ptr %x, align 8
  %shr = ashr i64 %2, 8
  %conv1 = trunc i64 %shr to i16
  ret i16 %conv1
}

; Function Attrs: nounwind ssp uwtable
define internal signext i16 @imul_b2(i16 noundef signext %w) #0 {
entry:
  %w.addr = alloca i16, align 2
  %x = alloca i64, align 8
  store i16 %w, ptr %w.addr, align 2
  %0 = load i16, ptr %w.addr, align 2
  %conv = sext i16 %0 to i64
  %mul = mul nsw i64 %conv, 669
  store i64 %mul, ptr %x, align 8
  %1 = load i64, ptr %x, align 8
  %add = add nsw i64 %1, 128
  store i64 %add, ptr %x, align 8
  %2 = load i64, ptr %x, align 8
  %shr = ashr i64 %2, 8
  %conv1 = trunc i64 %shr to i16
  ret i16 %conv1
}

; Function Attrs: nounwind ssp uwtable
define internal signext i16 @imul_b1_b3(i16 noundef signext %w) #0 {
entry:
  %w.addr = alloca i16, align 2
  %x = alloca i64, align 8
  store i16 %w, ptr %w.addr, align 2
  %0 = load i16, ptr %w.addr, align 2
  %conv = sext i16 %0 to i64
  %mul = mul nsw i64 %conv, 362
  store i64 %mul, ptr %x, align 8
  %1 = load i64, ptr %x, align 8
  %add = add nsw i64 %1, 128
  store i64 %add, ptr %x, align 8
  %2 = load i64, ptr %x, align 8
  %shr = ashr i64 %2, 8
  %conv1 = trunc i64 %shr to i16
  ret i16 %conv1
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i16 @getBits1(i8 noundef zeroext %numBits) #0 {
entry:
  %numBits.addr = alloca i8, align 1
  store i8 %numBits, ptr %numBits.addr, align 1
  %0 = load i8, ptr %numBits.addr, align 1
  %call = call zeroext i16 @getBits(i8 noundef zeroext %0, i8 noundef zeroext 0)
  ret i16 %call
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @locateSOIMarker() #0 {
entry:
  %retval = alloca i8, align 1
  %bytesleft = alloca i16, align 2
  %lastchar = alloca i8, align 1
  %thischar = alloca i8, align 1
  %call = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %conv = trunc i16 %call to i8
  store i8 %conv, ptr %lastchar, align 1
  %call1 = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %conv2 = trunc i16 %call1 to i8
  store i8 %conv2, ptr %thischar, align 1
  %0 = load i8, ptr %lastchar, align 1
  %conv3 = zext i8 %0 to i32
  %cmp = icmp eq i32 %conv3, 255
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, ptr %thischar, align 1
  %conv5 = zext i8 %1 to i32
  %cmp6 = icmp eq i32 %conv5, 216
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i8 0, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  store i16 4096, ptr %bytesleft, align 2
  br label %for.cond

for.cond:                                         ; preds = %if.end29, %if.end
  %2 = load i16, ptr %bytesleft, align 2
  %dec = add i16 %2, -1
  store i16 %dec, ptr %bytesleft, align 2
  %conv8 = zext i16 %dec to i32
  %cmp9 = icmp eq i32 %conv8, 0
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %for.cond
  store i8 19, ptr %retval, align 1
  br label %return

if.end12:                                         ; preds = %for.cond
  %3 = load i8, ptr %thischar, align 1
  store i8 %3, ptr %lastchar, align 1
  %call13 = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %conv14 = trunc i16 %call13 to i8
  store i8 %conv14, ptr %thischar, align 1
  %4 = load i8, ptr %lastchar, align 1
  %conv15 = zext i8 %4 to i32
  %cmp16 = icmp eq i32 %conv15, 255
  br i1 %cmp16, label %if.then18, label %if.end29

if.then18:                                        ; preds = %if.end12
  %5 = load i8, ptr %thischar, align 1
  %conv19 = zext i8 %5 to i32
  %cmp20 = icmp eq i32 %conv19, 216
  br i1 %cmp20, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.then18
  br label %for.end

if.else:                                          ; preds = %if.then18
  %6 = load i8, ptr %thischar, align 1
  %conv23 = zext i8 %6 to i32
  %cmp24 = icmp eq i32 %conv23, 217
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.else
  store i8 19, ptr %retval, align 1
  br label %return

if.end27:                                         ; preds = %if.else
  br label %if.end28

if.end28:                                         ; preds = %if.end27
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.end12
  br label %for.cond

for.end:                                          ; preds = %if.then22
  %7 = load i16, ptr @gBitBuf, align 2
  %conv30 = zext i16 %7 to i32
  %shr = ashr i32 %conv30, 8
  %and = and i32 %shr, 255
  %conv31 = trunc i32 %and to i8
  store i8 %conv31, ptr %thischar, align 1
  %8 = load i8, ptr %thischar, align 1
  %conv32 = zext i8 %8 to i32
  %cmp33 = icmp ne i32 %conv32, 255
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %for.end
  store i8 19, ptr %retval, align 1
  br label %return

if.end36:                                         ; preds = %for.end
  store i8 0, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end36, %if.then35, %if.then26, %if.then11, %if.then
  %9 = load i8, ptr %retval, align 1
  ret i8 %9
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @processMarkers(ptr noundef %pMarker) #0 {
entry:
  %retval = alloca i8, align 1
  %pMarker.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  store ptr %pMarker, ptr %pMarker.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %entry
  %call = call zeroext i8 @pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_4()
  store i8 %call, ptr %c, align 1
  %0 = load i8, ptr %c, align 1
  %conv = zext i8 %0 to i32
  switch i32 %conv, label %sw.default [
    i32 192, label %sw.bb
    i32 193, label %sw.bb
    i32 194, label %sw.bb
    i32 195, label %sw.bb
    i32 197, label %sw.bb
    i32 198, label %sw.bb
    i32 199, label %sw.bb
    i32 201, label %sw.bb
    i32 202, label %sw.bb
    i32 203, label %sw.bb
    i32 205, label %sw.bb
    i32 206, label %sw.bb
    i32 207, label %sw.bb
    i32 216, label %sw.bb
    i32 217, label %sw.bb
    i32 218, label %sw.bb
    i32 196, label %sw.bb1
    i32 204, label %sw.bb3
    i32 219, label %sw.bb4
    i32 221, label %sw.bb6
    i32 200, label %sw.bb8
    i32 208, label %sw.bb8
    i32 209, label %sw.bb8
    i32 210, label %sw.bb8
    i32 211, label %sw.bb8
    i32 212, label %sw.bb8
    i32 213, label %sw.bb8
    i32 214, label %sw.bb8
    i32 215, label %sw.bb8
    i32 1, label %sw.bb8
  ]

sw.bb:                                            ; preds = %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond
  %1 = load i8, ptr %c, align 1
  %2 = load ptr, ptr %pMarker.addr, align 8
  store i8 %1, ptr %2, align 1
  store i8 0, ptr %retval, align 1
  br label %return

sw.bb1:                                           ; preds = %for.cond
  %call2 = call zeroext i8 @readDHTMarker()
  br label %sw.epilog

sw.bb3:                                           ; preds = %for.cond
  store i8 17, ptr %retval, align 1
  br label %return

sw.bb4:                                           ; preds = %for.cond
  %call5 = call zeroext i8 @readDQTMarker()
  br label %sw.epilog

sw.bb6:                                           ; preds = %for.cond
  %call7 = call zeroext i8 @pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_5()
  br label %sw.epilog

sw.bb8:                                           ; preds = %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond
  store i8 18, ptr %retval, align 1
  br label %return

sw.default:                                       ; preds = %for.cond
  %call9 = call zeroext i8 @pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_6()
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb6, %sw.bb4, %sw.bb1
  br label %for.cond

return:                                           ; preds = %sw.bb8, %sw.bb3, %sw.bb
  %3 = load i8, ptr %retval, align 1
  ret i8 %3
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @readSOFMarker() #0 {
entry:
  %retval = alloca i8, align 1
  %i = alloca i8, align 1
  %left = alloca i16, align 2
  %call = call zeroext i16 @getBits1(i8 noundef zeroext 16)
  store i16 %call, ptr %left, align 2
  %call1 = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %conv = zext i16 %call1 to i32
  %cmp = icmp ne i32 %conv, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 7, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %call3 = call zeroext i16 @getBits1(i8 noundef zeroext 16)
  store i16 %call3, ptr @gImageYSize, align 2
  %0 = load i16, ptr @gImageYSize, align 2
  %tobool = icmp ne i16 %0, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then7

lor.lhs.false:                                    ; preds = %if.end
  %1 = load i16, ptr @gImageYSize, align 2
  %conv4 = zext i16 %1 to i32
  %cmp5 = icmp sgt i32 %conv4, 16384
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false, %if.end
  store i8 8, ptr %retval, align 1
  br label %return

if.end8:                                          ; preds = %lor.lhs.false
  %call9 = call zeroext i16 @getBits1(i8 noundef zeroext 16)
  store i16 %call9, ptr @gImageXSize, align 2
  %2 = load i16, ptr @gImageXSize, align 2
  %tobool10 = icmp ne i16 %2, 0
  br i1 %tobool10, label %lor.lhs.false11, label %if.then15

lor.lhs.false11:                                  ; preds = %if.end8
  %3 = load i16, ptr @gImageXSize, align 2
  %conv12 = zext i16 %3 to i32
  %cmp13 = icmp sgt i32 %conv12, 16384
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %lor.lhs.false11, %if.end8
  store i8 9, ptr %retval, align 1
  br label %return

if.end16:                                         ; preds = %lor.lhs.false11
  %call17 = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %conv18 = trunc i16 %call17 to i8
  store i8 %conv18, ptr @gCompsInFrame, align 1
  %4 = load i8, ptr @gCompsInFrame, align 1
  %conv19 = zext i8 %4 to i32
  %cmp20 = icmp sgt i32 %conv19, 3
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end16
  store i8 10, ptr %retval, align 1
  br label %return

if.end23:                                         ; preds = %if.end16
  %5 = load i16, ptr %left, align 2
  %conv24 = zext i16 %5 to i32
  %6 = load i8, ptr @gCompsInFrame, align 1
  %conv25 = zext i8 %6 to i32
  %7 = load i8, ptr @gCompsInFrame, align 1
  %conv26 = zext i8 %7 to i32
  %add = add nsw i32 %conv25, %conv26
  %8 = load i8, ptr @gCompsInFrame, align 1
  %conv27 = zext i8 %8 to i32
  %add28 = add nsw i32 %add, %conv27
  %add29 = add nsw i32 %add28, 8
  %cmp30 = icmp ne i32 %conv24, %add29
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end23
  store i8 11, ptr %retval, align 1
  br label %return

if.end33:                                         ; preds = %if.end23
  store i8 0, ptr %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end33
  %9 = load i8, ptr %i, align 1
  %conv34 = zext i8 %9 to i32
  %10 = load i8, ptr @gCompsInFrame, align 1
  %conv35 = zext i8 %10 to i32
  %cmp36 = icmp slt i32 %conv34, %conv35
  br i1 %cmp36, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call38 = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %conv39 = trunc i16 %call38 to i8
  %11 = load i8, ptr %i, align 1
  %idxprom = zext i8 %11 to i64
  %arrayidx = getelementptr inbounds [3 x i8], ptr @gCompIdent, i64 0, i64 %idxprom
  store i8 %conv39, ptr %arrayidx, align 1
  %call40 = call zeroext i16 @getBits1(i8 noundef zeroext 4)
  %conv41 = trunc i16 %call40 to i8
  %12 = load i8, ptr %i, align 1
  %idxprom42 = zext i8 %12 to i64
  %arrayidx43 = getelementptr inbounds [3 x i8], ptr @gCompHSamp, i64 0, i64 %idxprom42
  store i8 %conv41, ptr %arrayidx43, align 1
  %call44 = call zeroext i16 @getBits1(i8 noundef zeroext 4)
  %conv45 = trunc i16 %call44 to i8
  %13 = load i8, ptr %i, align 1
  %idxprom46 = zext i8 %13 to i64
  %arrayidx47 = getelementptr inbounds [3 x i8], ptr @gCompVSamp, i64 0, i64 %idxprom46
  store i8 %conv45, ptr %arrayidx47, align 1
  %call48 = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %conv49 = trunc i16 %call48 to i8
  %14 = load i8, ptr %i, align 1
  %idxprom50 = zext i8 %14 to i64
  %arrayidx51 = getelementptr inbounds [3 x i8], ptr @gCompQuant, i64 0, i64 %idxprom50
  store i8 %conv49, ptr %arrayidx51, align 1
  %15 = load i8, ptr %i, align 1
  %idxprom52 = zext i8 %15 to i64
  %arrayidx53 = getelementptr inbounds [3 x i8], ptr @gCompQuant, i64 0, i64 %idxprom52
  %16 = load i8, ptr %arrayidx53, align 1
  %conv54 = zext i8 %16 to i32
  %cmp55 = icmp sgt i32 %conv54, 1
  br i1 %cmp55, label %if.then57, label %if.end58

if.then57:                                        ; preds = %for.body
  store i8 36, ptr %retval, align 1
  br label %return

if.end58:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end58
  %17 = load i8, ptr %i, align 1
  %inc = add i8 %17, 1
  store i8 %inc, ptr %i, align 1
  br label %for.cond, !llvm.loop !32

for.end:                                          ; preds = %for.cond
  store i8 0, ptr %retval, align 1
  br label %return

return:                                           ; preds = %for.end, %if.then57, %if.then32, %if.then22, %if.then15, %if.then7, %if.then
  %18 = load i8, ptr %retval, align 1
  ret i8 %18
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @nextMarker() #0 {
entry:
  %c = alloca i8, align 1
  %bytes = alloca i8, align 1
  store i8 0, ptr %bytes, align 1
  br label %do.body

do.body:                                          ; preds = %do.cond12, %entry
  br label %do.body1

do.body1:                                         ; preds = %do.cond, %do.body
  %0 = load i8, ptr %bytes, align 1
  %inc = add i8 %0, 1
  store i8 %inc, ptr %bytes, align 1
  %call = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %conv = trunc i16 %call to i8
  store i8 %conv, ptr %c, align 1
  br label %do.cond

do.cond:                                          ; preds = %do.body1
  %1 = load i8, ptr %c, align 1
  %conv2 = zext i8 %1 to i32
  %cmp = icmp ne i32 %conv2, 255
  br i1 %cmp, label %do.body1, label %do.end, !llvm.loop !33

do.end:                                           ; preds = %do.cond
  br label %do.body4

do.body4:                                         ; preds = %do.cond7, %do.end
  %call5 = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %conv6 = trunc i16 %call5 to i8
  store i8 %conv6, ptr %c, align 1
  br label %do.cond7

do.cond7:                                         ; preds = %do.body4
  %2 = load i8, ptr %c, align 1
  %conv8 = zext i8 %2 to i32
  %cmp9 = icmp eq i32 %conv8, 255
  br i1 %cmp9, label %do.body4, label %do.end11, !llvm.loop !34

do.end11:                                         ; preds = %do.cond7
  br label %do.cond12

do.cond12:                                        ; preds = %do.end11
  %3 = load i8, ptr %c, align 1
  %conv13 = zext i8 %3 to i32
  %cmp14 = icmp eq i32 %conv13, 0
  br i1 %cmp14, label %do.body, label %do.end16, !llvm.loop !35

do.end16:                                         ; preds = %do.cond12
  %4 = load i8, ptr %c, align 1
  ret i8 %4
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @readDHTMarker() #0 {
entry:
  %retval = alloca i8, align 1
  %bits = alloca [16 x i8], align 1
  %left = alloca i16, align 2
  %i = alloca i8, align 1
  %tableIndex = alloca i8, align 1
  %index = alloca i8, align 1
  %pHuffVal = alloca ptr, align 8
  %pHuffTable = alloca ptr, align 8
  %count = alloca i16, align 2
  %totalRead = alloca i16, align 2
  %n = alloca i8, align 1
  %call = call zeroext i16 @getBits1(i8 noundef zeroext 16)
  store i16 %call, ptr %left, align 2
  %0 = load i16, ptr %left, align 2
  %conv = zext i16 %0 to i32
  %cmp = icmp slt i32 %conv, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 4, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i16, ptr %left, align 2
  %conv2 = zext i16 %1 to i32
  %sub = sub nsw i32 %conv2, 2
  %conv3 = trunc i32 %sub to i16
  store i16 %conv3, ptr %left, align 2
  br label %while.cond

while.cond:                                       ; preds = %if.end62, %if.end
  %2 = load i16, ptr %left, align 2
  %tobool = icmp ne i16 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call4 = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %conv5 = trunc i16 %call4 to i8
  store i8 %conv5, ptr %index, align 1
  %3 = load i8, ptr %index, align 1
  %conv6 = zext i8 %3 to i32
  %and = and i32 %conv6, 15
  %cmp7 = icmp sgt i32 %and, 1
  br i1 %cmp7, label %if.then13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %4 = load i8, ptr %index, align 1
  %conv9 = zext i8 %4 to i32
  %and10 = and i32 %conv9, 240
  %cmp11 = icmp sgt i32 %and10, 16
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %lor.lhs.false, %while.body
  store i8 3, ptr %retval, align 1
  br label %return

if.end14:                                         ; preds = %lor.lhs.false
  %5 = load i8, ptr %index, align 1
  %conv15 = zext i8 %5 to i32
  %shr = ashr i32 %conv15, 3
  %and16 = and i32 %shr, 2
  %6 = load i8, ptr %index, align 1
  %conv17 = zext i8 %6 to i32
  %and18 = and i32 %conv17, 1
  %add = add nsw i32 %and16, %and18
  %conv19 = trunc i32 %add to i8
  store i8 %conv19, ptr %tableIndex, align 1
  %7 = load i8, ptr %tableIndex, align 1
  %call20 = call ptr @pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_7(i8 noundef zeroext %7)
  store ptr %call20, ptr %pHuffTable, align 8
  %8 = load i8, ptr %tableIndex, align 1
  %call21 = call ptr @pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_8(i8 noundef zeroext %8)
  store ptr %call21, ptr %pHuffVal, align 8
  %9 = load i8, ptr %tableIndex, align 1
  %conv22 = zext i8 %9 to i32
  %shl = shl i32 1, %conv22
  %10 = load i8, ptr @gValidHuffTables, align 1
  %conv23 = zext i8 %10 to i32
  %or = or i32 %conv23, %shl
  %conv24 = trunc i32 %or to i8
  store i8 %conv24, ptr @gValidHuffTables, align 1
  store i16 0, ptr %count, align 2
  store i8 0, ptr %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end14
  %11 = load i8, ptr %i, align 1
  %conv25 = zext i8 %11 to i32
  %cmp26 = icmp sle i32 %conv25, 15
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call28 = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %conv29 = trunc i16 %call28 to i8
  store i8 %conv29, ptr %n, align 1
  %12 = load i8, ptr %n, align 1
  %13 = load i8, ptr %i, align 1
  %idxprom = zext i8 %13 to i64
  %arrayidx = getelementptr inbounds [16 x i8], ptr %bits, i64 0, i64 %idxprom
  store i8 %12, ptr %arrayidx, align 1
  %14 = load i16, ptr %count, align 2
  %conv30 = zext i16 %14 to i32
  %15 = load i8, ptr %n, align 1
  %conv31 = zext i8 %15 to i32
  %add32 = add nsw i32 %conv30, %conv31
  %conv33 = trunc i32 %add32 to i16
  store i16 %conv33, ptr %count, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i8, ptr %i, align 1
  %inc = add i8 %16, 1
  store i8 %inc, ptr %i, align 1
  br label %for.cond, !llvm.loop !36

for.end:                                          ; preds = %for.cond
  %17 = load i16, ptr %count, align 2
  %conv34 = zext i16 %17 to i32
  %18 = load i8, ptr %tableIndex, align 1
  %call35 = call zeroext i16 @pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_9(i8 noundef zeroext %18)
  %conv36 = zext i16 %call35 to i32
  %cmp37 = icmp sgt i32 %conv34, %conv36
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %for.end
  store i8 2, ptr %retval, align 1
  br label %return

if.end40:                                         ; preds = %for.end
  store i8 0, ptr %i, align 1
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc51, %if.end40
  %19 = load i8, ptr %i, align 1
  %conv42 = zext i8 %19 to i32
  %20 = load i16, ptr %count, align 2
  %conv43 = zext i16 %20 to i32
  %cmp44 = icmp slt i32 %conv42, %conv43
  br i1 %cmp44, label %for.body46, label %for.end53

for.body46:                                       ; preds = %for.cond41
  %call47 = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %conv48 = trunc i16 %call47 to i8
  %21 = load ptr, ptr %pHuffVal, align 8
  %22 = load i8, ptr %i, align 1
  %idxprom49 = zext i8 %22 to i64
  %arrayidx50 = getelementptr inbounds i8, ptr %21, i64 %idxprom49
  store i8 %conv48, ptr %arrayidx50, align 1
  br label %for.inc51

for.inc51:                                        ; preds = %for.body46
  %23 = load i8, ptr %i, align 1
  %inc52 = add i8 %23, 1
  store i8 %inc52, ptr %i, align 1
  br label %for.cond41, !llvm.loop !37

for.end53:                                        ; preds = %for.cond41
  %24 = load i16, ptr %count, align 2
  %conv54 = zext i16 %24 to i32
  %add55 = add nsw i32 17, %conv54
  %conv56 = trunc i32 %add55 to i16
  store i16 %conv56, ptr %totalRead, align 2
  %25 = load i16, ptr %left, align 2
  %conv57 = zext i16 %25 to i32
  %26 = load i16, ptr %totalRead, align 2
  %conv58 = zext i16 %26 to i32
  %cmp59 = icmp slt i32 %conv57, %conv58
  br i1 %cmp59, label %if.then61, label %if.end62

if.then61:                                        ; preds = %for.end53
  store i8 4, ptr %retval, align 1
  br label %return

if.end62:                                         ; preds = %for.end53
  %27 = load i16, ptr %left, align 2
  %conv63 = zext i16 %27 to i32
  %28 = load i16, ptr %totalRead, align 2
  %conv64 = zext i16 %28 to i32
  %sub65 = sub nsw i32 %conv63, %conv64
  %conv66 = trunc i32 %sub65 to i16
  store i16 %conv66, ptr %left, align 2
  %arraydecay = getelementptr inbounds [16 x i8], ptr %bits, i64 0, i64 0
  %29 = load ptr, ptr %pHuffTable, align 8
  call void @huffCreate(ptr noundef %arraydecay, ptr noundef %29)
  br label %while.cond, !llvm.loop !38

while.end:                                        ; preds = %while.cond
  store i8 0, ptr %retval, align 1
  br label %return

return:                                           ; preds = %while.end, %if.then61, %if.then39, %if.then13, %if.then
  %30 = load i8, ptr %retval, align 1
  ret i8 %30
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @readDQTMarker() #0 {
entry:
  %retval = alloca i8, align 1
  %left = alloca i16, align 2
  %i = alloca i8, align 1
  %n = alloca i8, align 1
  %prec = alloca i8, align 1
  %totalRead = alloca i16, align 2
  %temp = alloca i16, align 2
  %call = call zeroext i16 @getBits1(i8 noundef zeroext 16)
  store i16 %call, ptr %left, align 2
  %0 = load i16, ptr %left, align 2
  %conv = zext i16 %0 to i32
  %cmp = icmp slt i32 %conv, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 5, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i16, ptr %left, align 2
  %conv2 = zext i16 %1 to i32
  %sub = sub nsw i32 %conv2, 2
  %conv3 = trunc i32 %sub to i16
  store i16 %conv3, ptr %left, align 2
  br label %while.cond

while.cond:                                       ; preds = %if.end49, %if.end
  %2 = load i16, ptr %left, align 2
  %tobool = icmp ne i16 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call4 = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %conv5 = trunc i16 %call4 to i8
  store i8 %conv5, ptr %n, align 1
  %3 = load i8, ptr %n, align 1
  %conv6 = zext i8 %3 to i32
  %shr = ashr i32 %conv6, 4
  %conv7 = trunc i32 %shr to i8
  store i8 %conv7, ptr %prec, align 1
  %4 = load i8, ptr %n, align 1
  %conv8 = zext i8 %4 to i32
  %and = and i32 %conv8, 15
  %conv9 = trunc i32 %and to i8
  store i8 %conv9, ptr %n, align 1
  %5 = load i8, ptr %n, align 1
  %conv10 = zext i8 %5 to i32
  %cmp11 = icmp sgt i32 %conv10, 1
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %while.body
  store i8 6, ptr %retval, align 1
  br label %return

if.end14:                                         ; preds = %while.body
  %6 = load i8, ptr %n, align 1
  %conv15 = zext i8 %6 to i32
  %tobool16 = icmp ne i32 %conv15, 0
  %7 = zext i1 %tobool16 to i64
  %cond = select i1 %tobool16, i32 2, i32 1
  %8 = load i8, ptr @gValidQuantTables, align 1
  %conv17 = zext i8 %8 to i32
  %or = or i32 %conv17, %cond
  %conv18 = trunc i32 %or to i8
  store i8 %conv18, ptr @gValidQuantTables, align 1
  store i8 0, ptr %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end14
  %9 = load i8, ptr %i, align 1
  %conv19 = zext i8 %9 to i32
  %cmp20 = icmp slt i32 %conv19, 64
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call22 = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  store i16 %call22, ptr %temp, align 2
  %10 = load i8, ptr %prec, align 1
  %tobool23 = icmp ne i8 %10, 0
  br i1 %tobool23, label %if.then24, label %if.end29

if.then24:                                        ; preds = %for.body
  %11 = load i16, ptr %temp, align 2
  %conv25 = zext i16 %11 to i32
  %shl = shl i32 %conv25, 8
  %call26 = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %conv27 = zext i16 %call26 to i32
  %add = add nsw i32 %shl, %conv27
  %conv28 = trunc i32 %add to i16
  store i16 %conv28, ptr %temp, align 2
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %for.body
  %12 = load i8, ptr %n, align 1
  %tobool30 = icmp ne i8 %12, 0
  br i1 %tobool30, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.end29
  %13 = load i16, ptr %temp, align 2
  %14 = load i8, ptr %i, align 1
  %idxprom = zext i8 %14 to i64
  %arrayidx = getelementptr inbounds [64 x i16], ptr @gQuant1, i64 0, i64 %idxprom
  store i16 %13, ptr %arrayidx, align 2
  br label %if.end34

if.else:                                          ; preds = %if.end29
  %15 = load i16, ptr %temp, align 2
  %16 = load i8, ptr %i, align 1
  %idxprom32 = zext i8 %16 to i64
  %arrayidx33 = getelementptr inbounds [64 x i16], ptr @gQuant0, i64 0, i64 %idxprom32
  store i16 %15, ptr %arrayidx33, align 2
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then31
  br label %for.inc

for.inc:                                          ; preds = %if.end34
  %17 = load i8, ptr %i, align 1
  %inc = add i8 %17, 1
  store i8 %inc, ptr %i, align 1
  br label %for.cond, !llvm.loop !39

for.end:                                          ; preds = %for.cond
  %18 = load i8, ptr %n, align 1
  %conv35 = zext i8 %18 to i32
  %tobool36 = icmp ne i32 %conv35, 0
  %19 = zext i1 %tobool36 to i64
  %cond37 = select i1 %tobool36, ptr @gQuant1, ptr @gQuant0
  call void @createWinogradQuant(ptr noundef %cond37)
  store i16 65, ptr %totalRead, align 2
  %20 = load i8, ptr %prec, align 1
  %tobool38 = icmp ne i8 %20, 0
  br i1 %tobool38, label %if.then39, label %if.end43

if.then39:                                        ; preds = %for.end
  %21 = load i16, ptr %totalRead, align 2
  %conv40 = zext i16 %21 to i32
  %add41 = add nsw i32 %conv40, 64
  %conv42 = trunc i32 %add41 to i16
  store i16 %conv42, ptr %totalRead, align 2
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %for.end
  %22 = load i16, ptr %left, align 2
  %conv44 = zext i16 %22 to i32
  %23 = load i16, ptr %totalRead, align 2
  %conv45 = zext i16 %23 to i32
  %cmp46 = icmp slt i32 %conv44, %conv45
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end43
  store i8 21, ptr %retval, align 1
  br label %return

if.end49:                                         ; preds = %if.end43
  %24 = load i16, ptr %left, align 2
  %conv50 = zext i16 %24 to i32
  %25 = load i16, ptr %totalRead, align 2
  %conv51 = zext i16 %25 to i32
  %sub52 = sub nsw i32 %conv50, %conv51
  %conv53 = trunc i32 %sub52 to i16
  store i16 %conv53, ptr %left, align 2
  br label %while.cond, !llvm.loop !40

while.end:                                        ; preds = %while.cond
  store i8 0, ptr %retval, align 1
  br label %return

return:                                           ; preds = %while.end, %if.then48, %if.then13, %if.then
  %26 = load i8, ptr %retval, align 1
  ret i8 %26
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @readDRIMarker() #0 {
entry:
  %retval = alloca i8, align 1
  %call = call zeroext i16 @getBits1(i8 noundef zeroext 16)
  %conv = zext i16 %call to i32
  %cmp = icmp ne i32 %conv, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 13, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call zeroext i16 @getBits1(i8 noundef zeroext 16)
  store i16 %call2, ptr @gRestartInterval, align 2
  store i8 0, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %0 = load i8, ptr %retval, align 1
  ret i8 %0
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @skipVariableMarker() #0 {
entry:
  %retval = alloca i8, align 1
  %left = alloca i16, align 2
  %call = call zeroext i16 @getBits1(i8 noundef zeroext 16)
  store i16 %call, ptr %left, align 2
  %0 = load i16, ptr %left, align 2
  %conv = zext i16 %0 to i32
  %cmp = icmp slt i32 %conv, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 12, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i16, ptr %left, align 2
  %conv2 = zext i16 %1 to i32
  %sub = sub nsw i32 %conv2, 2
  %conv3 = trunc i32 %sub to i16
  store i16 %conv3, ptr %left, align 2
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %2 = load i16, ptr %left, align 2
  %tobool = icmp ne i16 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call4 = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %3 = load i16, ptr %left, align 2
  %dec = add i16 %3, -1
  store i16 %dec, ptr %left, align 2
  br label %while.cond, !llvm.loop !41

while.end:                                        ; preds = %while.cond
  store i8 0, ptr %retval, align 1
  br label %return

return:                                           ; preds = %while.end, %if.then
  %4 = load i8, ptr %retval, align 1
  ret i8 %4
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @getHuffTable(i8 noundef zeroext %index) #0 {
entry:
  %retval = alloca ptr, align 8
  %index.addr = alloca i8, align 1
  store i8 %index, ptr %index.addr, align 1
  %0 = load i8, ptr %index.addr, align 1
  %conv = zext i8 %0 to i32
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  store ptr @gHuffTab0, ptr %retval, align 8
  br label %return

sw.bb1:                                           ; preds = %entry
  store ptr @gHuffTab1, ptr %retval, align 8
  br label %return

sw.bb2:                                           ; preds = %entry
  store ptr @gHuffTab2, ptr %retval, align 8
  br label %return

sw.bb3:                                           ; preds = %entry
  store ptr @gHuffTab3, ptr %retval, align 8
  br label %return

sw.default:                                       ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %sw.default, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load ptr, ptr %retval, align 8
  ret ptr %1
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @getHuffVal(i8 noundef zeroext %index) #0 {
entry:
  %retval = alloca ptr, align 8
  %index.addr = alloca i8, align 1
  store i8 %index, ptr %index.addr, align 1
  %0 = load i8, ptr %index.addr, align 1
  %conv = zext i8 %0 to i32
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  store ptr @gHuffVal0, ptr %retval, align 8
  br label %return

sw.bb1:                                           ; preds = %entry
  store ptr @gHuffVal1, ptr %retval, align 8
  br label %return

sw.bb2:                                           ; preds = %entry
  store ptr @gHuffVal2, ptr %retval, align 8
  br label %return

sw.bb3:                                           ; preds = %entry
  store ptr @gHuffVal3, ptr %retval, align 8
  br label %return

sw.default:                                       ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %sw.default, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load ptr, ptr %retval, align 8
  ret ptr %1
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i16 @getMaxHuffCodes(i8 noundef zeroext %index) #0 {
entry:
  %index.addr = alloca i8, align 1
  store i8 %index, ptr %index.addr, align 1
  %0 = load i8, ptr %index.addr, align 1
  %conv = zext i8 %0 to i32
  %cmp = icmp slt i32 %conv, 2
  %1 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 12, i32 255
  %conv2 = trunc i32 %cond to i16
  ret i16 %conv2
}

; Function Attrs: nounwind ssp uwtable
define internal void @huffCreate(ptr noundef %pBits, ptr noundef %pHuffTable) #0 {
entry:
  %pBits.addr = alloca ptr, align 8
  %pHuffTable.addr = alloca ptr, align 8
  %i = alloca i8, align 1
  %j = alloca i8, align 1
  %code = alloca i16, align 2
  %num = alloca i8, align 1
  store ptr %pBits, ptr %pBits.addr, align 8
  store ptr %pHuffTable, ptr %pHuffTable.addr, align 8
  store i8 0, ptr %i, align 1
  store i8 0, ptr %j, align 1
  store i16 0, ptr %code, align 2
  br label %for.cond

for.cond:                                         ; preds = %if.end31, %entry
  %0 = load ptr, ptr %pBits.addr, align 8
  %1 = load i8, ptr %i, align 1
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1
  store i8 %2, ptr %num, align 1
  %3 = load i8, ptr %num, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %for.cond
  %4 = load ptr, ptr %pHuffTable.addr, align 8
  %mMinCode = getelementptr inbounds %struct.HuffTableT, ptr %4, i32 0, i32 0
  %5 = load i8, ptr %i, align 1
  %idxprom1 = zext i8 %5 to i64
  %arrayidx2 = getelementptr inbounds [16 x i16], ptr %mMinCode, i64 0, i64 %idxprom1
  store i16 0, ptr %arrayidx2, align 2
  %6 = load ptr, ptr %pHuffTable.addr, align 8
  %mMaxCode = getelementptr inbounds %struct.HuffTableT, ptr %6, i32 0, i32 1
  %7 = load i8, ptr %i, align 1
  %idxprom3 = zext i8 %7 to i64
  %arrayidx4 = getelementptr inbounds [16 x i16], ptr %mMaxCode, i64 0, i64 %idxprom3
  store i16 -1, ptr %arrayidx4, align 2
  %8 = load ptr, ptr %pHuffTable.addr, align 8
  %mValPtr = getelementptr inbounds %struct.HuffTableT, ptr %8, i32 0, i32 2
  %9 = load i8, ptr %i, align 1
  %idxprom5 = zext i8 %9 to i64
  %arrayidx6 = getelementptr inbounds [16 x i8], ptr %mValPtr, i64 0, i64 %idxprom5
  store i8 0, ptr %arrayidx6, align 1
  br label %if.end

if.else:                                          ; preds = %for.cond
  %10 = load i16, ptr %code, align 2
  %11 = load ptr, ptr %pHuffTable.addr, align 8
  %mMinCode7 = getelementptr inbounds %struct.HuffTableT, ptr %11, i32 0, i32 0
  %12 = load i8, ptr %i, align 1
  %idxprom8 = zext i8 %12 to i64
  %arrayidx9 = getelementptr inbounds [16 x i16], ptr %mMinCode7, i64 0, i64 %idxprom8
  store i16 %10, ptr %arrayidx9, align 2
  %13 = load i16, ptr %code, align 2
  %conv = zext i16 %13 to i32
  %14 = load i8, ptr %num, align 1
  %conv10 = zext i8 %14 to i32
  %add = add nsw i32 %conv, %conv10
  %sub = sub nsw i32 %add, 1
  %conv11 = trunc i32 %sub to i16
  %15 = load ptr, ptr %pHuffTable.addr, align 8
  %mMaxCode12 = getelementptr inbounds %struct.HuffTableT, ptr %15, i32 0, i32 1
  %16 = load i8, ptr %i, align 1
  %idxprom13 = zext i8 %16 to i64
  %arrayidx14 = getelementptr inbounds [16 x i16], ptr %mMaxCode12, i64 0, i64 %idxprom13
  store i16 %conv11, ptr %arrayidx14, align 2
  %17 = load i8, ptr %j, align 1
  %18 = load ptr, ptr %pHuffTable.addr, align 8
  %mValPtr15 = getelementptr inbounds %struct.HuffTableT, ptr %18, i32 0, i32 2
  %19 = load i8, ptr %i, align 1
  %idxprom16 = zext i8 %19 to i64
  %arrayidx17 = getelementptr inbounds [16 x i8], ptr %mValPtr15, i64 0, i64 %idxprom16
  store i8 %17, ptr %arrayidx17, align 1
  %20 = load i8, ptr %j, align 1
  %conv18 = zext i8 %20 to i32
  %21 = load i8, ptr %num, align 1
  %conv19 = zext i8 %21 to i32
  %add20 = add nsw i32 %conv18, %conv19
  %conv21 = trunc i32 %add20 to i8
  store i8 %conv21, ptr %j, align 1
  %22 = load i16, ptr %code, align 2
  %conv22 = zext i16 %22 to i32
  %23 = load i8, ptr %num, align 1
  %conv23 = zext i8 %23 to i32
  %add24 = add nsw i32 %conv22, %conv23
  %conv25 = trunc i32 %add24 to i16
  store i16 %conv25, ptr %code, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %24 = load i16, ptr %code, align 2
  %conv26 = zext i16 %24 to i32
  %shl = shl i32 %conv26, 1
  %conv27 = trunc i32 %shl to i16
  store i16 %conv27, ptr %code, align 2
  %25 = load i8, ptr %i, align 1
  %inc = add i8 %25, 1
  store i8 %inc, ptr %i, align 1
  %26 = load i8, ptr %i, align 1
  %conv28 = zext i8 %26 to i32
  %cmp = icmp sgt i32 %conv28, 15
  br i1 %cmp, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end
  br label %for.end

if.end31:                                         ; preds = %if.end
  br label %for.cond

for.end:                                          ; preds = %if.then30
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @createWinogradQuant(ptr noundef %pQuant) #0 {
entry:
  %pQuant.addr = alloca ptr, align 8
  %i = alloca i8, align 1
  %x = alloca i64, align 8
  store ptr %pQuant, ptr %pQuant.addr, align 8
  store i8 0, ptr %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8, ptr %i, align 1
  %conv = zext i8 %0 to i32
  %cmp = icmp slt i32 %conv, 64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %pQuant.addr, align 8
  %2 = load i8, ptr %i, align 1
  %idxprom = zext i8 %2 to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2
  %conv2 = sext i16 %3 to i64
  store i64 %conv2, ptr %x, align 8
  %4 = load i8, ptr %i, align 1
  %idxprom3 = zext i8 %4 to i64
  %arrayidx4 = getelementptr inbounds [64 x i8], ptr @gWinogradQuant, i64 0, i64 %idxprom3
  %5 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %5 to i64
  %6 = load i64, ptr %x, align 8
  %mul = mul nsw i64 %6, %conv5
  store i64 %mul, ptr %x, align 8
  %7 = load i64, ptr %x, align 8
  %add = add nsw i64 %7, 4
  %shr = ashr i64 %add, 3
  %conv6 = trunc i64 %shr to i16
  %8 = load ptr, ptr %pQuant.addr, align 8
  %9 = load i8, ptr %i, align 1
  %idxprom7 = zext i8 %9 to i64
  %arrayidx8 = getelementptr inbounds i16, ptr %8, i64 %idxprom7
  store i16 %conv6, ptr %arrayidx8, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i8, ptr %i, align 1
  %inc = add i8 %10, 1
  store i8 %inc, ptr %i, align 1
  br label %for.cond, !llvm.loop !42

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @locateSOSMarker(ptr noundef %pFoundEOI) #0 {
entry:
  %retval = alloca i8, align 1
  %pFoundEOI.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %status = alloca i8, align 1
  store ptr %pFoundEOI, ptr %pFoundEOI.addr, align 8
  %0 = load ptr, ptr %pFoundEOI.addr, align 8
  store i8 0, ptr %0, align 1
  %call = call zeroext i8 @processMarkers(ptr noundef %c)
  store i8 %call, ptr %status, align 1
  %1 = load i8, ptr %status, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8, ptr %status, align 1
  store i8 %2, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8, ptr %c, align 1
  %conv = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 217
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %pFoundEOI.addr, align 8
  store i8 1, ptr %4, align 1
  store i8 0, ptr %retval, align 1
  br label %return

if.else:                                          ; preds = %if.end
  %5 = load i8, ptr %c, align 1
  %conv3 = zext i8 %5 to i32
  %cmp4 = icmp ne i32 %conv3, 218
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.else
  store i8 18, ptr %retval, align 1
  br label %return

if.end7:                                          ; preds = %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end7
  %call9 = call zeroext i8 @readSOSMarker()
  store i8 %call9, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end8, %if.then6, %if.then2, %if.then
  %6 = load i8, ptr %retval, align 1
  ret i8 %6
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @checkHuffTables() #0 {
entry:
  %retval = alloca i8, align 1
  %i = alloca i8, align 1
  %compDCTab = alloca i8, align 1
  %compACTab = alloca i8, align 1
  store i8 0, ptr %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8, ptr %i, align 1
  %conv = zext i8 %0 to i32
  %1 = load i8, ptr @gCompsInScan, align 1
  %conv1 = zext i8 %1 to i32
  %cmp = icmp slt i32 %conv, %conv1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8, ptr %i, align 1
  %idxprom = zext i8 %2 to i64
  %arrayidx = getelementptr inbounds [3 x i8], ptr @gCompList, i64 0, i64 %idxprom
  %3 = load i8, ptr %arrayidx, align 1
  %idxprom3 = zext i8 %3 to i64
  %arrayidx4 = getelementptr inbounds [3 x i8], ptr @gCompDCTab, i64 0, i64 %idxprom3
  %4 = load i8, ptr %arrayidx4, align 1
  store i8 %4, ptr %compDCTab, align 1
  %5 = load i8, ptr %i, align 1
  %idxprom5 = zext i8 %5 to i64
  %arrayidx6 = getelementptr inbounds [3 x i8], ptr @gCompList, i64 0, i64 %idxprom5
  %6 = load i8, ptr %arrayidx6, align 1
  %idxprom7 = zext i8 %6 to i64
  %arrayidx8 = getelementptr inbounds [3 x i8], ptr @gCompACTab, i64 0, i64 %idxprom7
  %7 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %7 to i32
  %add = add nsw i32 %conv9, 2
  %conv10 = trunc i32 %add to i8
  store i8 %conv10, ptr %compACTab, align 1
  %8 = load i8, ptr @gValidHuffTables, align 1
  %conv11 = zext i8 %8 to i32
  %9 = load i8, ptr %compDCTab, align 1
  %conv12 = zext i8 %9 to i32
  %shl = shl i32 1, %conv12
  %and = and i32 %conv11, %shl
  %cmp13 = icmp eq i32 %and, 0
  br i1 %cmp13, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %10 = load i8, ptr @gValidHuffTables, align 1
  %conv15 = zext i8 %10 to i32
  %11 = load i8, ptr %compACTab, align 1
  %conv16 = zext i8 %11 to i32
  %shl17 = shl i32 1, %conv16
  %and18 = and i32 %conv15, %shl17
  %cmp19 = icmp eq i32 %and18, 0
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  store i8 24, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i8, ptr %i, align 1
  %inc = add i8 %12, 1
  store i8 %inc, ptr %i, align 1
  br label %for.cond, !llvm.loop !43

for.end:                                          ; preds = %for.cond
  store i8 0, ptr %retval, align 1
  br label %return

return:                                           ; preds = %for.end, %if.then
  %13 = load i8, ptr %retval, align 1
  ret i8 %13
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @checkQuantTables() #0 {
entry:
  %retval = alloca i8, align 1
  %i = alloca i8, align 1
  %compQuantMask = alloca i8, align 1
  store i8 0, ptr %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8, ptr %i, align 1
  %conv = zext i8 %0 to i32
  %1 = load i8, ptr @gCompsInScan, align 1
  %conv1 = zext i8 %1 to i32
  %cmp = icmp slt i32 %conv, %conv1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8, ptr %i, align 1
  %idxprom = zext i8 %2 to i64
  %arrayidx = getelementptr inbounds [3 x i8], ptr @gCompList, i64 0, i64 %idxprom
  %3 = load i8, ptr %arrayidx, align 1
  %idxprom3 = zext i8 %3 to i64
  %arrayidx4 = getelementptr inbounds [3 x i8], ptr @gCompQuant, i64 0, i64 %idxprom3
  %4 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %4 to i32
  %tobool = icmp ne i32 %conv5, 0
  %5 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 2, i32 1
  %conv6 = trunc i32 %cond to i8
  store i8 %conv6, ptr %compQuantMask, align 1
  %6 = load i8, ptr @gValidQuantTables, align 1
  %conv7 = zext i8 %6 to i32
  %7 = load i8, ptr %compQuantMask, align 1
  %conv8 = zext i8 %7 to i32
  %and = and i32 %conv7, %conv8
  %cmp9 = icmp eq i32 %and, 0
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i8 23, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i8, ptr %i, align 1
  %inc = add i8 %8, 1
  store i8 %inc, ptr %i, align 1
  br label %for.cond, !llvm.loop !44

for.end:                                          ; preds = %for.cond
  store i8 0, ptr %retval, align 1
  br label %return

return:                                           ; preds = %for.end, %if.then
  %9 = load i8, ptr %retval, align 1
  ret i8 %9
}

; Function Attrs: nounwind ssp uwtable
define internal void @fixInBuffer() #0 {
entry:
  %0 = load i8, ptr @gBitsLeft, align 1
  %conv = zext i8 %0 to i32
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i16, ptr @gBitBuf, align 2
  %conv2 = trunc i16 %1 to i8
  call void @stuffChar(i8 noundef zeroext %conv2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i16, ptr @gBitBuf, align 2
  %conv3 = zext i16 %2 to i32
  %shr = ashr i32 %conv3, 8
  %conv4 = trunc i32 %shr to i8
  call void @stuffChar(i8 noundef zeroext %conv4)
  store i8 8, ptr @gBitsLeft, align 1
  %call = call zeroext i16 @getBits2(i8 noundef zeroext 8)
  %call5 = call zeroext i16 @getBits2(i8 noundef zeroext 8)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @readSOSMarker() #0 {
entry:
  %retval = alloca i8, align 1
  %i = alloca i8, align 1
  %left = alloca i16, align 2
  %cc = alloca i8, align 1
  %c = alloca i8, align 1
  %ci = alloca i8, align 1
  %call = call zeroext i16 @getBits1(i8 noundef zeroext 16)
  store i16 %call, ptr %left, align 2
  %call1 = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %conv = trunc i16 %call1 to i8
  store i8 %conv, ptr @gCompsInScan, align 1
  %0 = load i16, ptr %left, align 2
  %conv2 = zext i16 %0 to i32
  %sub = sub nsw i32 %conv2, 3
  %conv3 = trunc i32 %sub to i16
  store i16 %conv3, ptr %left, align 2
  %1 = load i16, ptr %left, align 2
  %conv4 = zext i16 %1 to i32
  %2 = load i8, ptr @gCompsInScan, align 1
  %conv5 = zext i8 %2 to i32
  %3 = load i8, ptr @gCompsInScan, align 1
  %conv6 = zext i8 %3 to i32
  %add = add nsw i32 %conv5, %conv6
  %add7 = add nsw i32 %add, 3
  %cmp = icmp ne i32 %conv4, %add7
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i8, ptr @gCompsInScan, align 1
  %conv9 = zext i8 %4 to i32
  %cmp10 = icmp slt i32 %conv9, 1
  br i1 %cmp10, label %if.then, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %5 = load i8, ptr @gCompsInScan, align 1
  %conv13 = zext i8 %5 to i32
  %cmp14 = icmp sgt i32 %conv13, 3
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false12, %lor.lhs.false, %entry
  store i8 14, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %lor.lhs.false12
  store i8 0, ptr %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc56, %if.end
  %6 = load i8, ptr %i, align 1
  %conv16 = zext i8 %6 to i32
  %7 = load i8, ptr @gCompsInScan, align 1
  %conv17 = zext i8 %7 to i32
  %cmp18 = icmp slt i32 %conv16, %conv17
  br i1 %cmp18, label %for.body, label %for.end58

for.body:                                         ; preds = %for.cond
  %call20 = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %conv21 = trunc i16 %call20 to i8
  store i8 %conv21, ptr %cc, align 1
  %call22 = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %conv23 = trunc i16 %call22 to i8
  store i8 %conv23, ptr %c, align 1
  %8 = load i16, ptr %left, align 2
  %conv24 = zext i16 %8 to i32
  %sub25 = sub nsw i32 %conv24, 2
  %conv26 = trunc i32 %sub25 to i16
  store i16 %conv26, ptr %left, align 2
  store i8 0, ptr %ci, align 1
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc, %for.body
  %9 = load i8, ptr %ci, align 1
  %conv28 = zext i8 %9 to i32
  %10 = load i8, ptr @gCompsInFrame, align 1
  %conv29 = zext i8 %10 to i32
  %cmp30 = icmp slt i32 %conv28, %conv29
  br i1 %cmp30, label %for.body32, label %for.end

for.body32:                                       ; preds = %for.cond27
  %11 = load i8, ptr %cc, align 1
  %conv33 = zext i8 %11 to i32
  %12 = load i8, ptr %ci, align 1
  %idxprom = zext i8 %12 to i64
  %arrayidx = getelementptr inbounds [3 x i8], ptr @gCompIdent, i64 0, i64 %idxprom
  %13 = load i8, ptr %arrayidx, align 1
  %conv34 = zext i8 %13 to i32
  %cmp35 = icmp eq i32 %conv33, %conv34
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %for.body32
  br label %for.end

if.end38:                                         ; preds = %for.body32
  br label %for.inc

for.inc:                                          ; preds = %if.end38
  %14 = load i8, ptr %ci, align 1
  %inc = add i8 %14, 1
  store i8 %inc, ptr %ci, align 1
  br label %for.cond27, !llvm.loop !45

for.end:                                          ; preds = %if.then37, %for.cond27
  %15 = load i8, ptr %ci, align 1
  %conv39 = zext i8 %15 to i32
  %16 = load i8, ptr @gCompsInFrame, align 1
  %conv40 = zext i8 %16 to i32
  %cmp41 = icmp sge i32 %conv39, %conv40
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %for.end
  store i8 15, ptr %retval, align 1
  br label %return

if.end44:                                         ; preds = %for.end
  %17 = load i8, ptr %ci, align 1
  %18 = load i8, ptr %i, align 1
  %idxprom45 = zext i8 %18 to i64
  %arrayidx46 = getelementptr inbounds [3 x i8], ptr @gCompList, i64 0, i64 %idxprom45
  store i8 %17, ptr %arrayidx46, align 1
  %19 = load i8, ptr %c, align 1
  %conv47 = zext i8 %19 to i32
  %shr = ashr i32 %conv47, 4
  %and = and i32 %shr, 15
  %conv48 = trunc i32 %and to i8
  %20 = load i8, ptr %ci, align 1
  %idxprom49 = zext i8 %20 to i64
  %arrayidx50 = getelementptr inbounds [3 x i8], ptr @gCompDCTab, i64 0, i64 %idxprom49
  store i8 %conv48, ptr %arrayidx50, align 1
  %21 = load i8, ptr %c, align 1
  %conv51 = zext i8 %21 to i32
  %and52 = and i32 %conv51, 15
  %conv53 = trunc i32 %and52 to i8
  %22 = load i8, ptr %ci, align 1
  %idxprom54 = zext i8 %22 to i64
  %arrayidx55 = getelementptr inbounds [3 x i8], ptr @gCompACTab, i64 0, i64 %idxprom54
  store i8 %conv53, ptr %arrayidx55, align 1
  br label %for.inc56

for.inc56:                                        ; preds = %if.end44
  %23 = load i8, ptr %i, align 1
  %inc57 = add i8 %23, 1
  store i8 %inc57, ptr %i, align 1
  br label %for.cond, !llvm.loop !46

for.end58:                                        ; preds = %for.cond
  %call59 = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %conv60 = trunc i16 %call59 to i8
  store volatile i8 %conv60, ptr @spectral_start, align 1
  %call61 = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %conv62 = trunc i16 %call61 to i8
  store volatile i8 %conv62, ptr @spectral_end, align 1
  %call63 = call zeroext i16 @getBits1(i8 noundef zeroext 4)
  %conv64 = trunc i16 %call63 to i8
  store volatile i8 %conv64, ptr @successive_high, align 1
  %call65 = call zeroext i16 @getBits1(i8 noundef zeroext 4)
  %conv66 = trunc i16 %call65 to i8
  store volatile i8 %conv66, ptr @successive_low, align 1
  %24 = load i16, ptr %left, align 2
  %conv67 = zext i16 %24 to i32
  %sub68 = sub nsw i32 %conv67, 3
  %conv69 = trunc i32 %sub68 to i16
  store i16 %conv69, ptr %left, align 2
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end58
  %25 = load i16, ptr %left, align 2
  %tobool = icmp ne i16 %25, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call70 = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %26 = load i16, ptr %left, align 2
  %dec = add i16 %26, -1
  store i16 %dec, ptr %left, align 2
  br label %while.cond, !llvm.loop !47

while.end:                                        ; preds = %while.cond
  store i8 0, ptr %retval, align 1
  br label %return

return:                                           ; preds = %while.end, %if.then43, %if.then
  %27 = load i8, ptr %retval, align 1
  ret i8 %27
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define internal zeroext i8 @pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_0()  alwaysinline#0 {
entry:
  store i16 0, ptr @gImageXSize, align 2
  store i16 0, ptr @gImageYSize, align 2
  store i8 0, ptr @gCompsInFrame, align 1
  store i16 0, ptr @gRestartInterval, align 2
  store i8 0, ptr @gCompsInScan, align 1
  store i8 0, ptr @gValidHuffTables, align 1
  store i8 0, ptr @gValidQuantTables, align 1
  store i8 0, ptr @gTemFlag, align 1
  store i8 0, ptr @gInBufOfs, align 1
  store i8 0, ptr @gInBufLeft, align 1
  store i16 0, ptr @gBitBuf, align 2
  store i8 8, ptr @gBitsLeft, align 1
  %call = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %call1 = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  ret i8 0
}

define internal zeroext i8 @pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_1(ptr noundef %pFoundEOI)  alwaysinline#0 {
entry:
  %retval = alloca i8, align 1
  %pFoundEOI.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %status = alloca i8, align 1
  store ptr %pFoundEOI, ptr %pFoundEOI.addr, align 8
  %0 = load ptr, ptr %pFoundEOI.addr, align 8
  store i8 0, ptr %0, align 1
  %call = call zeroext i8 @processMarkers(ptr noundef %c)
  store i8 %call, ptr %status, align 1
  %1 = load i8, ptr %status, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8, ptr %status, align 1
  store i8 %2, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8, ptr %c, align 1
  %conv = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 217
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %pFoundEOI.addr, align 8
  store i8 1, ptr %4, align 1
  store i8 0, ptr %retval, align 1
  br label %return

if.else:                                          ; preds = %if.end
  %5 = load i8, ptr %c, align 1
  %conv3 = zext i8 %5 to i32
  %cmp4 = icmp ne i32 %conv3, 218
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.else
  store i8 18, ptr %retval, align 1
  br label %return

if.end7:                                          ; preds = %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end7
  %call9 = call zeroext i8 @readSOSMarker()
  store i8 %call9, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end8, %if.then6, %if.then2, %if.then
  %6 = load i8, ptr %retval, align 1
  ret i8 %6
}

define internal void @pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_2()  alwaysinline#0 {
entry:
  %0 = load i8, ptr @gBitsLeft, align 1
  %conv = zext i8 %0 to i32
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i16, ptr @gBitBuf, align 2
  %conv2 = trunc i16 %1 to i8
  call void @stuffChar(i8 noundef zeroext %conv2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i16, ptr @gBitBuf, align 2
  %conv3 = zext i16 %2 to i32
  %shr = ashr i32 %conv3, 8
  %conv4 = trunc i32 %shr to i8
  call void @stuffChar(i8 noundef zeroext %conv4)
  store i8 8, ptr @gBitsLeft, align 1
  %call = call zeroext i16 @getBits2(i8 noundef zeroext 8)
  %call5 = call zeroext i16 @getBits2(i8 noundef zeroext 8)
  ret void
}

define internal void @pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_3()  alwaysinline#0 {
entry:
  %status = alloca i8, align 1
  store i8 4, ptr @gInBufOfs, align 1
  store i8 0, ptr @gInBufLeft, align 1
  %0 = load ptr, ptr @g_pNeedBytesCallback, align 8
  %1 = load i8, ptr @gInBufOfs, align 1
  %conv = zext i8 %1 to i32
  %idx.ext = sext i32 %conv to i64
  %add.ptr = getelementptr inbounds i8, ptr @gInBuf, i64 %idx.ext
  %2 = load i8, ptr @gInBufOfs, align 1
  %conv1 = zext i8 %2 to i32
  %sub = sub nsw i32 256, %conv1
  %conv2 = trunc i32 %sub to i8
  %3 = load ptr, ptr @g_pCallback_data, align 8
  %call = call zeroext i8 %0(ptr noundef %add.ptr, i8 noundef zeroext %conv2, ptr noundef @gInBufLeft, ptr noundef %3)
  store i8 %call, ptr %status, align 1
  %4 = load i8, ptr %status, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i8, ptr %status, align 1
  store i8 %5, ptr @gCallbackStatus, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

define internal zeroext i8 @pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_4()  alwaysinline#0 {
entry:
  %c = alloca i8, align 1
  %bytes = alloca i8, align 1
  store i8 0, ptr %bytes, align 1
  br label %do.body

do.body:                                          ; preds = %do.cond12, %entry
  br label %do.body1

do.body1:                                         ; preds = %do.cond, %do.body
  %0 = load i8, ptr %bytes, align 1
  %inc = add i8 %0, 1
  store i8 %inc, ptr %bytes, align 1
  %call = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %conv = trunc i16 %call to i8
  store i8 %conv, ptr %c, align 1
  br label %do.cond

do.cond:                                          ; preds = %do.body1
  %1 = load i8, ptr %c, align 1
  %conv2 = zext i8 %1 to i32
  %cmp = icmp ne i32 %conv2, 255
  br i1 %cmp, label %do.body1, label %do.end, !llvm.loop !33

do.end:                                           ; preds = %do.cond
  br label %do.body4

do.body4:                                         ; preds = %do.cond7, %do.end
  %call5 = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %conv6 = trunc i16 %call5 to i8
  store i8 %conv6, ptr %c, align 1
  br label %do.cond7

do.cond7:                                         ; preds = %do.body4
  %2 = load i8, ptr %c, align 1
  %conv8 = zext i8 %2 to i32
  %cmp9 = icmp eq i32 %conv8, 255
  br i1 %cmp9, label %do.body4, label %do.end11, !llvm.loop !34

do.end11:                                         ; preds = %do.cond7
  br label %do.cond12

do.cond12:                                        ; preds = %do.end11
  %3 = load i8, ptr %c, align 1
  %conv13 = zext i8 %3 to i32
  %cmp14 = icmp eq i32 %conv13, 0
  br i1 %cmp14, label %do.body, label %do.end16, !llvm.loop !35

do.end16:                                         ; preds = %do.cond12
  %4 = load i8, ptr %c, align 1
  ret i8 %4
}

define internal zeroext i8 @pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_5()  alwaysinline#0 {
entry:
  %retval = alloca i8, align 1
  %call = call zeroext i16 @getBits1(i8 noundef zeroext 16)
  %conv = zext i16 %call to i32
  %cmp = icmp ne i32 %conv, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 13, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call zeroext i16 @getBits1(i8 noundef zeroext 16)
  store i16 %call2, ptr @gRestartInterval, align 2
  store i8 0, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %0 = load i8, ptr %retval, align 1
  ret i8 %0
}

define internal zeroext i8 @pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_6()  alwaysinline#0 {
entry:
  %retval = alloca i8, align 1
  %left = alloca i16, align 2
  %call = call zeroext i16 @getBits1(i8 noundef zeroext 16)
  store i16 %call, ptr %left, align 2
  %0 = load i16, ptr %left, align 2
  %conv = zext i16 %0 to i32
  %cmp = icmp slt i32 %conv, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 12, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i16, ptr %left, align 2
  %conv2 = zext i16 %1 to i32
  %sub = sub nsw i32 %conv2, 2
  %conv3 = trunc i32 %sub to i16
  store i16 %conv3, ptr %left, align 2
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %2 = load i16, ptr %left, align 2
  %tobool = icmp ne i16 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call4 = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %3 = load i16, ptr %left, align 2
  %dec = add i16 %3, -1
  store i16 %dec, ptr %left, align 2
  br label %while.cond, !llvm.loop !41

while.end:                                        ; preds = %while.cond
  store i8 0, ptr %retval, align 1
  br label %return

return:                                           ; preds = %while.end, %if.then
  %4 = load i8, ptr %retval, align 1
  ret i8 %4
}

define internal ptr @pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_7(i8 noundef zeroext %index)  alwaysinline#0 {
entry:
  %retval = alloca ptr, align 8
  %index.addr = alloca i8, align 1
  store i8 %index, ptr %index.addr, align 1
  %0 = load i8, ptr %index.addr, align 1
  %conv = zext i8 %0 to i32
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  store ptr @gHuffTab0, ptr %retval, align 8
  br label %return

sw.bb1:                                           ; preds = %entry
  store ptr @gHuffTab1, ptr %retval, align 8
  br label %return

sw.bb2:                                           ; preds = %entry
  store ptr @gHuffTab2, ptr %retval, align 8
  br label %return

sw.bb3:                                           ; preds = %entry
  store ptr @gHuffTab3, ptr %retval, align 8
  br label %return

sw.default:                                       ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %sw.default, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load ptr, ptr %retval, align 8
  ret ptr %1
}

define internal ptr @pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_8(i8 noundef zeroext %index)  alwaysinline#0 {
entry:
  %retval = alloca ptr, align 8
  %index.addr = alloca i8, align 1
  store i8 %index, ptr %index.addr, align 1
  %0 = load i8, ptr %index.addr, align 1
  %conv = zext i8 %0 to i32
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  store ptr @gHuffVal0, ptr %retval, align 8
  br label %return

sw.bb1:                                           ; preds = %entry
  store ptr @gHuffVal1, ptr %retval, align 8
  br label %return

sw.bb2:                                           ; preds = %entry
  store ptr @gHuffVal2, ptr %retval, align 8
  br label %return

sw.bb3:                                           ; preds = %entry
  store ptr @gHuffVal3, ptr %retval, align 8
  br label %return

sw.default:                                       ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %sw.default, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load ptr, ptr %retval, align 8
  ret ptr %1
}

define internal zeroext i16 @pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_9(i8 noundef zeroext %index)  alwaysinline#0 {
entry:
  %index.addr = alloca i8, align 1
  store i8 %index, ptr %index.addr, align 1
  %0 = load i8, ptr %index.addr, align 1
  %conv = zext i8 %0 to i32
  %cmp = icmp slt i32 %conv, 2
  %1 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 12, i32 255
  %conv2 = trunc i32 %cond to i16
  ret i16 %conv2
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
