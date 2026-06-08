; ModuleID = './out/greedy_inlinefriendly_scan/rewritten_ir/teacher_bandit_ucb_proxy/source_snapshot_public_repos_embench-iot_src_picojpeg_libpicojpeg.prepared.ll'
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
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i8, ptr @gCallbackStatus, align 1
  store i8 %1, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i16, ptr @gNumMCUSRemaining, align 2
  %tobool1.not = icmp eq i16 %2, 0
  br i1 %tobool1.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i8 1, ptr %retval, align 1
  br label %return

if.end3:                                          ; preds = %if.end
  %call = call zeroext i8 @decodeNextMCU()
  store i8 %call, ptr %status, align 1
  %tobool4.not = icmp eq i8 %call, 0
  %3 = load i8, ptr @gCallbackStatus, align 1
  %tobool6.not = icmp eq i8 %3, 0
  %or.cond = select i1 %tobool4.not, i1 %tobool6.not, i1 false
  br i1 %or.cond, label %if.end13, label %if.then7

if.then7:                                         ; preds = %if.end3
  %4 = load i8, ptr @gCallbackStatus, align 1
  %tobool9.not = icmp eq i8 %4, 0
  %5 = load i8, ptr @gCallbackStatus, align 1
  %6 = load i8, ptr %status, align 1
  %cond.in = select i1 %tobool9.not, i8 %6, i8 %5
  store i8 %cond.in, ptr %retval, align 1
  br label %return

if.end13:                                         ; preds = %if.end3
  %7 = load i16, ptr @gNumMCUSRemaining, align 2
  %dec = add i16 %7, -1
  store i16 %dec, ptr @gNumMCUSRemaining, align 2
  store i8 0, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end13, %if.then7, %if.then2, %if.then
  %8 = load i8, ptr %retval, align 1
  ret i8 %8
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @decodeNextMCU() #0 {
entry:
  %retval = alloca i8, align 1
  %status = alloca i8, align 1
  %mcuBlock = alloca i8, align 1
  %componentID = alloca i8, align 1
  %numExtraBits = alloca i8, align 1
  %compACTab = alloca i8, align 1
  %k = alloca i8, align 1
  %pQ = alloca ptr, align 8
  %r = alloca i16, align 2
  %s = alloca i8, align 1
  %extraBits = alloca i16, align 2
  %0 = load i16, ptr @gRestartInterval, align 2
  %tobool.not = icmp eq i16 %0, 0
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i16, ptr @gRestartsLeft, align 2
  %cmp = icmp eq i16 %1, 0
  br i1 %cmp, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.then
  %call = call zeroext i8 @processRestart()
  store i8 %call, ptr %status, align 1
  %tobool3.not = icmp eq i8 %call, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.then2
  %2 = load i8, ptr %status, align 1
  store i8 %2, ptr %retval, align 1
  br label %return

if.end5:                                          ; preds = %if.then2, %if.then
  %3 = load i16, ptr @gRestartsLeft, align 2
  %dec = add i16 %3, -1
  store i16 %dec, ptr @gRestartsLeft, align 2
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc201, %if.end6
  %storemerge = phi i8 [ 0, %if.end6 ], [ %inc202, %for.inc201 ]
  store i8 %storemerge, ptr %mcuBlock, align 1
  %4 = load i8, ptr @gMaxBlocksPerMCU, align 1
  %cmp9 = icmp ult i8 %storemerge, %4
  br i1 %cmp9, label %for.body, label %for.end203

for.body:                                         ; preds = %for.cond
  %5 = load i8, ptr %mcuBlock, align 1
  %idxprom = zext i8 %5 to i64
  %arrayidx = getelementptr inbounds [6 x i8], ptr @gMCUOrg, i64 0, i64 %idxprom
  %6 = load i8, ptr %arrayidx, align 1
  store i8 %6, ptr %componentID, align 1
  %idxprom11 = zext i8 %6 to i64
  %arrayidx12 = getelementptr inbounds [3 x i8], ptr @gCompQuant, i64 0, i64 %idxprom11
  %7 = load i8, ptr %arrayidx12, align 1
  %idxprom13 = zext i8 %6 to i64
  %arrayidx14 = getelementptr inbounds [3 x i8], ptr @gCompDCTab, i64 0, i64 %idxprom13
  %8 = load i8, ptr %arrayidx14, align 1
  %tobool16.not = icmp eq i8 %7, 0
  %cond = select i1 %tobool16.not, ptr @gQuant0, ptr @gQuant1
  store ptr %cond, ptr %pQ, align 8
  %tobool18.not = icmp eq i8 %8, 0
  %cond19 = select i1 %tobool18.not, ptr @gHuffTab0, ptr @gHuffTab1
  %tobool21.not = icmp eq i8 %8, 0
  %cond22 = select i1 %tobool21.not, ptr @gHuffVal0, ptr @gHuffVal1
  %call23 = call zeroext i8 @huffDecode(ptr noundef nonnull %cond19, ptr noundef nonnull %cond22)
  store i8 %call23, ptr %s, align 1
  store i16 0, ptr %r, align 2
  %9 = and i8 %call23, 15
  store i8 %9, ptr %numExtraBits, align 1
  %tobool26.not = icmp eq i8 %9, 0
  br i1 %tobool26.not, label %if.end29, label %if.then27

if.then27:                                        ; preds = %for.body
  %10 = load i8, ptr %numExtraBits, align 1
  %call28 = call zeroext i16 @getBits2(i8 noundef zeroext %10)
  store i16 %call28, ptr %r, align 2
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %for.body
  %11 = load i16, ptr %r, align 2
  %12 = load i8, ptr %s, align 1
  %call30 = call signext i16 @huffExtend(i16 noundef zeroext %11, i8 noundef zeroext %12)
  %13 = load i8, ptr %componentID, align 1
  %idxprom32 = zext i8 %13 to i64
  %arrayidx33 = getelementptr inbounds [3 x i16], ptr @gLastDC, i64 0, i64 %idxprom32
  %14 = load i16, ptr %arrayidx33, align 2
  %add = add i16 %call30, %14
  %idxprom36 = zext i8 %13 to i64
  %arrayidx37 = getelementptr inbounds [3 x i16], ptr @gLastDC, i64 0, i64 %idxprom36
  store i16 %add, ptr %arrayidx37, align 2
  %15 = load ptr, ptr %pQ, align 8
  %16 = load i16, ptr %15, align 2
  %mul = mul i16 %add, %16
  store i16 %mul, ptr @gCoeffBuf, align 2
  %17 = load i8, ptr %componentID, align 1
  %idxprom42 = zext i8 %17 to i64
  %arrayidx43 = getelementptr inbounds [3 x i8], ptr @gCompACTab, i64 0, i64 %idxprom42
  %18 = load i8, ptr %arrayidx43, align 1
  store i8 %18, ptr %compACTab, align 1
  %19 = load i8, ptr @gReduce, align 1
  %tobool44.not = icmp eq i8 %19, 0
  br i1 %tobool44.not, label %for.cond103, label %for.cond46

for.cond46:                                       ; preds = %if.end29, %for.inc
  %storemerge3 = phi i8 [ %inc, %for.inc ], [ 1, %if.end29 ]
  store i8 %storemerge3, ptr %k, align 1
  %cmp48 = icmp ult i8 %storemerge3, 64
  br i1 %cmp48, label %for.body50, label %for.end

for.body50:                                       ; preds = %for.cond46
  %20 = load i8, ptr %compACTab, align 1
  %tobool52.not = icmp eq i8 %20, 0
  %cond53 = select i1 %tobool52.not, ptr @gHuffTab2, ptr @gHuffTab3
  %tobool55.not = icmp eq i8 %20, 0
  %cond56 = select i1 %tobool55.not, ptr @gHuffVal2, ptr @gHuffVal3
  %call57 = call zeroext i8 @huffDecode(ptr noundef nonnull %cond53, ptr noundef nonnull %cond56)
  store i8 %call57, ptr %s, align 1
  %21 = and i8 %call57, 15
  store i8 %21, ptr %numExtraBits, align 1
  %tobool61.not = icmp eq i8 %21, 0
  br i1 %tobool61.not, label %if.end64, label %if.then62

if.then62:                                        ; preds = %for.body50
  %22 = load i8, ptr %numExtraBits, align 1
  %call63 = call zeroext i16 @getBits2(i8 noundef zeroext %22)
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %for.body50
  %23 = load i8, ptr %s, align 1
  %24 = lshr i8 %23, 4
  %conv66 = zext i8 %24 to i16
  store i16 %conv66, ptr %r, align 2
  %25 = and i8 %23, 15
  store i8 %25, ptr %s, align 1
  %tobool70.not = icmp eq i8 %25, 0
  br i1 %tobool70.not, label %if.else, label %if.then71

if.then71:                                        ; preds = %if.end64
  %26 = load i16, ptr %r, align 2
  %tobool72.not = icmp eq i16 %26, 0
  br i1 %tobool72.not, label %for.inc, label %if.then73

if.then73:                                        ; preds = %if.then71
  %27 = load i8, ptr %k, align 1
  %conv74 = zext i8 %27 to i32
  %28 = load i16, ptr %r, align 2
  %conv75 = zext i16 %28 to i32
  %add76 = add nuw nsw i32 %conv74, %conv75
  %cmp77 = icmp ugt i32 %add76, 63
  br i1 %cmp77, label %if.then79, label %if.end80

if.then79:                                        ; preds = %if.then73
  store i8 28, ptr %retval, align 1
  br label %return

if.end80:                                         ; preds = %if.then73
  %29 = load i8, ptr %k, align 1
  %30 = load i16, ptr %r, align 2
  %conv82 = trunc i16 %30 to i8
  %add83 = add i8 %29, %conv82
  store i8 %add83, ptr %k, align 1
  br label %for.inc

if.else:                                          ; preds = %if.end64
  %31 = load i16, ptr %r, align 2
  %cmp87 = icmp eq i16 %31, 15
  br i1 %cmp87, label %if.then89, label %for.end

if.then89:                                        ; preds = %if.else
  %32 = load i8, ptr %k, align 1
  %cmp92 = icmp ugt i8 %32, 48
  br i1 %cmp92, label %if.then94, label %if.end95

if.then94:                                        ; preds = %if.then89
  store i8 28, ptr %retval, align 1
  br label %return

if.end95:                                         ; preds = %if.then89
  %33 = load i8, ptr %k, align 1
  %add97 = add i8 %33, 15
  store i8 %add97, ptr %k, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end95, %if.end80, %if.then71
  %34 = load i8, ptr %k, align 1
  %inc = add i8 %34, 1
  br label %for.cond46, !llvm.loop !6

for.end:                                          ; preds = %if.else, %for.cond46
  %35 = load i8, ptr %mcuBlock, align 1
  call void @transformBlockReduce(i8 noundef zeroext %35)
  br label %for.inc201

for.cond103:                                      ; preds = %if.end29, %for.inc186
  %storemerge1 = phi i8 [ %inc187, %for.inc186 ], [ 1, %if.end29 ]
  store i8 %storemerge1, ptr %k, align 1
  %cmp105 = icmp ult i8 %storemerge1, 64
  br i1 %cmp105, label %for.body107, label %for.end188

for.body107:                                      ; preds = %for.cond103
  %36 = load i8, ptr %compACTab, align 1
  %tobool109.not = icmp eq i8 %36, 0
  %cond110 = select i1 %tobool109.not, ptr @gHuffTab2, ptr @gHuffTab3
  %tobool112.not = icmp eq i8 %36, 0
  %cond113 = select i1 %tobool112.not, ptr @gHuffVal2, ptr @gHuffVal3
  %call114 = call zeroext i8 @huffDecode(ptr noundef nonnull %cond110, ptr noundef nonnull %cond113)
  store i8 %call114, ptr %s, align 1
  store i16 0, ptr %extraBits, align 2
  %37 = and i8 %call114, 15
  store i8 %37, ptr %numExtraBits, align 1
  %tobool118.not = icmp eq i8 %37, 0
  br i1 %tobool118.not, label %if.end121, label %if.then119

if.then119:                                       ; preds = %for.body107
  %38 = load i8, ptr %numExtraBits, align 1
  %call120 = call zeroext i16 @getBits2(i8 noundef zeroext %38)
  store i16 %call120, ptr %extraBits, align 2
  br label %if.end121

if.end121:                                        ; preds = %if.then119, %for.body107
  %39 = load i8, ptr %s, align 1
  %40 = lshr i8 %39, 4
  %conv124 = zext i8 %40 to i16
  store i16 %conv124, ptr %r, align 2
  %41 = and i8 %39, 15
  store i8 %41, ptr %s, align 1
  %tobool128.not = icmp eq i8 %41, 0
  br i1 %tobool128.not, label %if.else158, label %if.then129

if.then129:                                       ; preds = %if.end121
  %42 = load i16, ptr %r, align 2
  %tobool130.not = icmp eq i16 %42, 0
  br i1 %tobool130.not, label %if.end146, label %if.then131

if.then131:                                       ; preds = %if.then129
  %43 = load i8, ptr %k, align 1
  %conv132 = zext i8 %43 to i32
  %44 = load i16, ptr %r, align 2
  %conv133 = zext i16 %44 to i32
  %add134 = add nuw nsw i32 %conv132, %conv133
  %cmp135 = icmp ugt i32 %add134, 63
  br i1 %cmp135, label %if.then137, label %while.cond

if.then137:                                       ; preds = %if.then131
  store i8 28, ptr %retval, align 1
  br label %return

while.cond:                                       ; preds = %if.then131, %while.body
  %45 = load i16, ptr %r, align 2
  %tobool139.not = icmp eq i16 %45, 0
  br i1 %tobool139.not, label %if.end146, label %while.body

while.body:                                       ; preds = %while.cond
  %46 = load i8, ptr %k, align 1
  %inc140 = add i8 %46, 1
  store i8 %inc140, ptr %k, align 1
  %idxprom141 = zext i8 %46 to i64
  %arrayidx142 = getelementptr inbounds [64 x i8], ptr @ZAG, i64 0, i64 %idxprom141
  %47 = load i8, ptr %arrayidx142, align 1
  %idxprom143 = sext i8 %47 to i64
  %arrayidx144 = getelementptr inbounds [64 x i16], ptr @gCoeffBuf, i64 0, i64 %idxprom143
  store i16 0, ptr %arrayidx144, align 2
  %48 = load i16, ptr %r, align 2
  %dec145 = add i16 %48, -1
  store i16 %dec145, ptr %r, align 2
  br label %while.cond, !llvm.loop !8

if.end146:                                        ; preds = %while.cond, %if.then129
  %49 = load i16, ptr %extraBits, align 2
  %50 = load i8, ptr %s, align 1
  %call147 = call signext i16 @huffExtend(i16 noundef zeroext %49, i8 noundef zeroext %50)
  %51 = load ptr, ptr %pQ, align 8
  %52 = load i8, ptr %k, align 1
  %idxprom149 = zext i8 %52 to i64
  %arrayidx150 = getelementptr inbounds i16, ptr %51, i64 %idxprom149
  %53 = load i16, ptr %arrayidx150, align 2
  %mul152 = mul i16 %call147, %53
  %idxprom154 = zext i8 %52 to i64
  %arrayidx155 = getelementptr inbounds [64 x i8], ptr @ZAG, i64 0, i64 %idxprom154
  %54 = load i8, ptr %arrayidx155, align 1
  %idxprom156 = sext i8 %54 to i64
  %arrayidx157 = getelementptr inbounds [64 x i16], ptr @gCoeffBuf, i64 0, i64 %idxprom156
  store i16 %mul152, ptr %arrayidx157, align 2
  br label %for.inc186

if.else158:                                       ; preds = %if.end121
  %55 = load i16, ptr %r, align 2
  %cmp160 = icmp eq i16 %55, 15
  br i1 %cmp160, label %if.then162, label %for.end188

if.then162:                                       ; preds = %if.else158
  %56 = load i8, ptr %k, align 1
  %cmp165 = icmp ugt i8 %56, 48
  br i1 %cmp165, label %if.then167, label %for.cond169

if.then167:                                       ; preds = %if.then162
  store i8 28, ptr %retval, align 1
  br label %return

for.cond169:                                      ; preds = %if.then162, %for.body173
  %storemerge2 = phi i16 [ %dec180, %for.body173 ], [ 16, %if.then162 ]
  store i16 %storemerge2, ptr %r, align 2
  %cmp171.not = icmp eq i16 %storemerge2, 0
  br i1 %cmp171.not, label %for.end181, label %for.body173

for.body173:                                      ; preds = %for.cond169
  %57 = load i8, ptr %k, align 1
  %inc174 = add i8 %57, 1
  store i8 %inc174, ptr %k, align 1
  %idxprom175 = zext i8 %57 to i64
  %arrayidx176 = getelementptr inbounds [64 x i8], ptr @ZAG, i64 0, i64 %idxprom175
  %58 = load i8, ptr %arrayidx176, align 1
  %idxprom177 = sext i8 %58 to i64
  %arrayidx178 = getelementptr inbounds [64 x i16], ptr @gCoeffBuf, i64 0, i64 %idxprom177
  store i16 0, ptr %arrayidx178, align 2
  %59 = load i16, ptr %r, align 2
  %dec180 = add i16 %59, -1
  br label %for.cond169, !llvm.loop !9

for.end181:                                       ; preds = %for.cond169
  %60 = load i8, ptr %k, align 1
  %dec182 = add i8 %60, -1
  store i8 %dec182, ptr %k, align 1
  br label %for.inc186

for.inc186:                                       ; preds = %if.end146, %for.end181
  %61 = load i8, ptr %k, align 1
  %inc187 = add i8 %61, 1
  br label %for.cond103, !llvm.loop !10

for.end188:                                       ; preds = %if.else158, %for.cond103
  br label %while.cond189

while.cond189:                                    ; preds = %while.body193, %for.end188
  %62 = load i8, ptr %k, align 1
  %cmp191 = icmp ult i8 %62, 64
  br i1 %cmp191, label %while.body193, label %while.end199

while.body193:                                    ; preds = %while.cond189
  %63 = load i8, ptr %k, align 1
  %inc194 = add i8 %63, 1
  store i8 %inc194, ptr %k, align 1
  %idxprom195 = zext i8 %63 to i64
  %arrayidx196 = getelementptr inbounds [64 x i8], ptr @ZAG, i64 0, i64 %idxprom195
  %64 = load i8, ptr %arrayidx196, align 1
  %idxprom197 = sext i8 %64 to i64
  %arrayidx198 = getelementptr inbounds [64 x i16], ptr @gCoeffBuf, i64 0, i64 %idxprom197
  store i16 0, ptr %arrayidx198, align 2
  br label %while.cond189, !llvm.loop !11

while.end199:                                     ; preds = %while.cond189
  %65 = load i8, ptr %mcuBlock, align 1
  call void @transformBlock(i8 noundef zeroext %65)
  br label %for.inc201

for.inc201:                                       ; preds = %for.end, %while.end199
  %66 = load i8, ptr %mcuBlock, align 1
  %inc202 = add i8 %66, 1
  br label %for.cond, !llvm.loop !12

for.end203:                                       ; preds = %for.cond
  store i8 0, ptr %retval, align 1
  br label %return

return:                                           ; preds = %for.end203, %if.then167, %if.then137, %if.then94, %if.then79, %if.then4
  %67 = load i8, ptr %retval, align 1
  ret i8 %67
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
  store i32 0, ptr %pInfo, align 8
  %m_height = getelementptr inbounds %struct.pjpeg_image_info_t, ptr %pInfo, i64 0, i32 1
  store i32 0, ptr %m_height, align 4
  %0 = load ptr, ptr %pInfo.addr, align 8
  %m_comps = getelementptr inbounds %struct.pjpeg_image_info_t, ptr %0, i64 0, i32 2
  store i32 0, ptr %m_comps, align 8
  %m_MCUSPerRow = getelementptr inbounds %struct.pjpeg_image_info_t, ptr %0, i64 0, i32 3
  store i32 0, ptr %m_MCUSPerRow, align 4
  %m_MCUSPerCol = getelementptr inbounds %struct.pjpeg_image_info_t, ptr %0, i64 0, i32 4
  store i32 0, ptr %m_MCUSPerCol, align 8
  %1 = load ptr, ptr %pInfo.addr, align 8
  %m_scanType = getelementptr inbounds %struct.pjpeg_image_info_t, ptr %1, i64 0, i32 5
  store i32 0, ptr %m_scanType, align 4
  %m_MCUWidth = getelementptr inbounds %struct.pjpeg_image_info_t, ptr %1, i64 0, i32 6
  store i32 0, ptr %m_MCUWidth, align 8
  %m_MCUHeight = getelementptr inbounds %struct.pjpeg_image_info_t, ptr %1, i64 0, i32 7
  store i32 0, ptr %m_MCUHeight, align 4
  %2 = load ptr, ptr %pInfo.addr, align 8
  %m_pMCUBufR = getelementptr inbounds %struct.pjpeg_image_info_t, ptr %2, i64 0, i32 8
  store ptr null, ptr %m_pMCUBufR, align 8
  %m_pMCUBufG = getelementptr inbounds %struct.pjpeg_image_info_t, ptr %2, i64 0, i32 9
  store ptr null, ptr %m_pMCUBufG, align 8
  %m_pMCUBufB = getelementptr inbounds %struct.pjpeg_image_info_t, ptr %2, i64 0, i32 10
  store ptr null, ptr %m_pMCUBufB, align 8
  %3 = load ptr, ptr %pNeed_bytes_callback.addr, align 8
  store ptr %3, ptr @g_pNeedBytesCallback, align 8
  %4 = load ptr, ptr %pCallback_data.addr, align 8
  store ptr %4, ptr @g_pCallback_data, align 8
  store i8 0, ptr @gCallbackStatus, align 1
  %5 = load i8, ptr %reduce.addr, align 1
  store i8 %5, ptr @gReduce, align 1
  %call = call zeroext i8 @init()
  store i8 %call, ptr %status, align 1
  %tobool.not = icmp eq i8 %call, 0
  %6 = load i8, ptr @gCallbackStatus, align 1
  %tobool2.not = icmp eq i8 %6, 0
  %or.cond = select i1 %tobool.not, i1 %tobool2.not, i1 false
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load i8, ptr @gCallbackStatus, align 1
  %tobool4.not = icmp eq i8 %7, 0
  %8 = load i8, ptr @gCallbackStatus, align 1
  %9 = load i8, ptr %status, align 1
  %cond.in = select i1 %tobool4.not, i8 %9, i8 %8
  store i8 %cond.in, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %call8 = call zeroext i8 @locateSOFMarker()
  store i8 %call8, ptr %status, align 1
  %tobool10.not = icmp eq i8 %call8, 0
  %10 = load i8, ptr @gCallbackStatus, align 1
  %tobool13.not = icmp eq i8 %10, 0
  %or.cond1 = select i1 %tobool10.not, i1 %tobool13.not, i1 false
  br i1 %or.cond1, label %if.end24, label %if.then14

if.then14:                                        ; preds = %if.end
  %11 = load i8, ptr @gCallbackStatus, align 1
  %tobool16.not = icmp eq i8 %11, 0
  %12 = load i8, ptr @gCallbackStatus, align 1
  %13 = load i8, ptr %status, align 1
  %cond22.in = select i1 %tobool16.not, i8 %13, i8 %12
  store i8 %cond22.in, ptr %retval, align 1
  br label %return

if.end24:                                         ; preds = %if.end
  %call25 = call zeroext i8 @initFrame()
  store i8 %call25, ptr %status, align 1
  %tobool27.not = icmp eq i8 %call25, 0
  %14 = load i8, ptr @gCallbackStatus, align 1
  %tobool30.not = icmp eq i8 %14, 0
  %or.cond2 = select i1 %tobool27.not, i1 %tobool30.not, i1 false
  br i1 %or.cond2, label %if.end41, label %if.then31

if.then31:                                        ; preds = %if.end24
  %15 = load i8, ptr @gCallbackStatus, align 1
  %tobool33.not = icmp eq i8 %15, 0
  %16 = load i8, ptr @gCallbackStatus, align 1
  %17 = load i8, ptr %status, align 1
  %cond39.in = select i1 %tobool33.not, i8 %17, i8 %16
  store i8 %cond39.in, ptr %retval, align 1
  br label %return

if.end41:                                         ; preds = %if.end24
  %call42 = call zeroext i8 @initScan()
  store i8 %call42, ptr %status, align 1
  %tobool44.not = icmp eq i8 %call42, 0
  %18 = load i8, ptr @gCallbackStatus, align 1
  %tobool47.not = icmp eq i8 %18, 0
  %or.cond3 = select i1 %tobool44.not, i1 %tobool47.not, i1 false
  br i1 %or.cond3, label %if.end58, label %if.then48

if.then48:                                        ; preds = %if.end41
  %19 = load i8, ptr @gCallbackStatus, align 1
  %tobool50.not = icmp eq i8 %19, 0
  %20 = load i8, ptr @gCallbackStatus, align 1
  %21 = load i8, ptr %status, align 1
  %cond56.in = select i1 %tobool50.not, i8 %21, i8 %20
  store i8 %cond56.in, ptr %retval, align 1
  br label %return

if.end58:                                         ; preds = %if.end41
  %22 = load i16, ptr @gImageXSize, align 2
  %conv59 = zext i16 %22 to i32
  %23 = load ptr, ptr %pInfo.addr, align 8
  store i32 %conv59, ptr %23, align 8
  %24 = load i16, ptr @gImageYSize, align 2
  %conv61 = zext i16 %24 to i32
  %m_height62 = getelementptr inbounds %struct.pjpeg_image_info_t, ptr %23, i64 0, i32 1
  store i32 %conv61, ptr %m_height62, align 4
  %25 = load i8, ptr @gCompsInFrame, align 1
  %conv63 = zext i8 %25 to i32
  %26 = load ptr, ptr %pInfo.addr, align 8
  %m_comps64 = getelementptr inbounds %struct.pjpeg_image_info_t, ptr %26, i64 0, i32 2
  store i32 %conv63, ptr %m_comps64, align 8
  %27 = load i32, ptr @gScanType, align 4
  %m_scanType65 = getelementptr inbounds %struct.pjpeg_image_info_t, ptr %26, i64 0, i32 5
  store i32 %27, ptr %m_scanType65, align 4
  %28 = load i16, ptr @gMaxMCUSPerRow, align 2
  %conv66 = zext i16 %28 to i32
  %29 = load ptr, ptr %pInfo.addr, align 8
  %m_MCUSPerRow67 = getelementptr inbounds %struct.pjpeg_image_info_t, ptr %29, i64 0, i32 3
  store i32 %conv66, ptr %m_MCUSPerRow67, align 4
  %30 = load i16, ptr @gMaxMCUSPerCol, align 2
  %conv68 = zext i16 %30 to i32
  %m_MCUSPerCol69 = getelementptr inbounds %struct.pjpeg_image_info_t, ptr %29, i64 0, i32 4
  store i32 %conv68, ptr %m_MCUSPerCol69, align 8
  %31 = load i8, ptr @gMaxMCUXSize, align 1
  %conv70 = zext i8 %31 to i32
  %32 = load ptr, ptr %pInfo.addr, align 8
  %m_MCUWidth71 = getelementptr inbounds %struct.pjpeg_image_info_t, ptr %32, i64 0, i32 6
  store i32 %conv70, ptr %m_MCUWidth71, align 8
  %33 = load i8, ptr @gMaxMCUYSize, align 1
  %conv72 = zext i8 %33 to i32
  %m_MCUHeight73 = getelementptr inbounds %struct.pjpeg_image_info_t, ptr %32, i64 0, i32 7
  store i32 %conv72, ptr %m_MCUHeight73, align 4
  %34 = load ptr, ptr %pInfo.addr, align 8
  %m_pMCUBufR74 = getelementptr inbounds %struct.pjpeg_image_info_t, ptr %34, i64 0, i32 8
  store ptr @gMCUBufR, ptr %m_pMCUBufR74, align 8
  %m_pMCUBufG75 = getelementptr inbounds %struct.pjpeg_image_info_t, ptr %34, i64 0, i32 9
  store ptr @gMCUBufG, ptr %m_pMCUBufG75, align 8
  %m_pMCUBufB76 = getelementptr inbounds %struct.pjpeg_image_info_t, ptr %34, i64 0, i32 10
  store ptr @gMCUBufB, ptr %m_pMCUBufB76, align 8
  store i8 0, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end58, %if.then48, %if.then31, %if.then14, %if.then
  %35 = load i8, ptr %retval, align 1
  ret i8 %35
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
  %call.i = call zeroext i16 @getBits(i8 noundef zeroext 8, i8 noundef zeroext 0)
  %call.i2 = call zeroext i16 @getBits(i8 noundef zeroext 8, i8 noundef zeroext 0)
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
  %tobool.not = icmp eq i8 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i8, ptr %status, align 1
  store i8 %0, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call zeroext i8 @processMarkers(ptr noundef nonnull %c)
  store i8 %call1, ptr %status, align 1
  %tobool2.not = icmp eq i8 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %1 = load i8, ptr %status, align 1
  store i8 %1, ptr %retval, align 1
  br label %return

if.end4:                                          ; preds = %if.end
  %2 = load i8, ptr %c, align 1
  switch i8 %2, label %sw.default [
    i8 -62, label %sw.bb
    i8 -64, label %sw.bb5
    i8 -55, label %sw.bb10
  ]

sw.bb:                                            ; preds = %if.end4
  store i8 37, ptr %retval, align 1
  br label %return

sw.bb5:                                           ; preds = %if.end4
  %call6 = call zeroext i8 @readSOFMarker()
  store i8 %call6, ptr %status, align 1
  %tobool7.not = icmp eq i8 %call6, 0
  br i1 %tobool7.not, label %sw.epilog, label %if.then8

if.then8:                                         ; preds = %sw.bb5
  %3 = load i8, ptr %status, align 1
  store i8 %3, ptr %retval, align 1
  br label %return

sw.bb10:                                          ; preds = %if.end4
  store i8 17, ptr %retval, align 1
  br label %return

sw.default:                                       ; preds = %if.end4
  store i8 20, ptr %retval, align 1
  br label %return

sw.epilog:                                        ; preds = %sw.bb5
  store i8 0, ptr %retval, align 1
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %sw.bb10, %if.then8, %sw.bb, %if.then3, %if.then
  %4 = load i8, ptr %retval, align 1
  ret i8 %4
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @initFrame() #0 {
entry:
  %retval = alloca i8, align 1
  %0 = load i8, ptr @gCompsInFrame, align 1
  %cmp = icmp eq i8 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8, ptr @gCompHSamp, align 1
  %cmp3.not = icmp eq i8 %1, 1
  %2 = load i8, ptr @gCompVSamp, align 1
  %cmp6.not = icmp eq i8 %2, 1
  %or.cond = select i1 %cmp3.not, i1 %cmp6.not, i1 false
  br i1 %or.cond, label %if.end, label %if.then8

if.then8:                                         ; preds = %if.then
  store i8 27, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %if.then
  store i32 0, ptr @gScanType, align 4
  store i8 1, ptr @gMaxBlocksPerMCU, align 1
  store i8 0, ptr @gMCUOrg, align 1
  store i8 8, ptr @gMaxMCUXSize, align 1
  store i8 8, ptr @gMaxMCUYSize, align 1
  br label %if.end71

if.else:                                          ; preds = %entry
  %3 = load i8, ptr @gCompsInFrame, align 1
  %cmp10 = icmp eq i8 %3, 3
  br i1 %cmp10, label %if.then12, label %if.else69

if.then12:                                        ; preds = %if.else
  %4 = load i8, ptr getelementptr inbounds ([3 x i8], ptr @gCompHSamp, i64 0, i64 1), align 1
  %cmp14.not = icmp eq i8 %4, 1
  %5 = load i8, ptr getelementptr inbounds ([3 x i8], ptr @gCompVSamp, i64 0, i64 1), align 1
  %cmp18.not = icmp eq i8 %5, 1
  %or.cond1 = select i1 %cmp14.not, i1 %cmp18.not, i1 false
  %6 = load i8, ptr getelementptr inbounds ([3 x i8], ptr @gCompHSamp, i64 0, i64 2), align 1
  %cmp22.not = icmp eq i8 %6, 1
  %or.cond2 = select i1 %or.cond1, i1 %cmp22.not, i1 false
  %7 = load i8, ptr getelementptr inbounds ([3 x i8], ptr @gCompVSamp, i64 0, i64 2), align 1
  %cmp26.not = icmp eq i8 %7, 1
  %or.cond3 = select i1 %or.cond2, i1 %cmp26.not, i1 false
  br i1 %or.cond3, label %if.end29, label %if.then28

if.then28:                                        ; preds = %if.then12
  store i8 27, ptr %retval, align 1
  br label %return

if.end29:                                         ; preds = %if.then12
  %8 = load i8, ptr @gCompHSamp, align 1
  %cmp31 = icmp eq i8 %8, 1
  %9 = load i8, ptr @gCompVSamp, align 1
  %cmp34 = icmp eq i8 %9, 1
  %or.cond4 = select i1 %cmp31, i1 %cmp34, i1 false
  br i1 %or.cond4, label %if.then36, label %if.else37

if.then36:                                        ; preds = %if.end29
  store i32 1, ptr @gScanType, align 4
  store i8 3, ptr @gMaxBlocksPerMCU, align 1
  store i8 0, ptr @gMCUOrg, align 1
  store i8 1, ptr getelementptr inbounds ([6 x i8], ptr @gMCUOrg, i64 0, i64 1), align 1
  store i8 2, ptr getelementptr inbounds ([6 x i8], ptr @gMCUOrg, i64 0, i64 2), align 1
  store i8 8, ptr @gMaxMCUXSize, align 1
  store i8 8, ptr @gMaxMCUYSize, align 1
  br label %if.end71

if.else37:                                        ; preds = %if.end29
  %10 = load i8, ptr @gCompHSamp, align 1
  %cmp39 = icmp eq i8 %10, 1
  %11 = load i8, ptr @gCompVSamp, align 1
  %cmp43 = icmp eq i8 %11, 2
  %or.cond5 = select i1 %cmp39, i1 %cmp43, i1 false
  br i1 %or.cond5, label %if.then45, label %if.else46

if.then45:                                        ; preds = %if.else37
  store i32 3, ptr @gScanType, align 4
  store i8 4, ptr @gMaxBlocksPerMCU, align 1
  store i8 0, ptr @gMCUOrg, align 1
  store i8 0, ptr getelementptr inbounds ([6 x i8], ptr @gMCUOrg, i64 0, i64 1), align 1
  store i8 1, ptr getelementptr inbounds ([6 x i8], ptr @gMCUOrg, i64 0, i64 2), align 1
  store i8 2, ptr getelementptr inbounds ([6 x i8], ptr @gMCUOrg, i64 0, i64 3), align 1
  store i8 8, ptr @gMaxMCUXSize, align 1
  store i8 16, ptr @gMaxMCUYSize, align 1
  br label %if.end71

if.else46:                                        ; preds = %if.else37
  %12 = load i8, ptr @gCompHSamp, align 1
  %cmp48 = icmp eq i8 %12, 2
  %13 = load i8, ptr @gCompVSamp, align 1
  %cmp52 = icmp eq i8 %13, 1
  %or.cond6 = select i1 %cmp48, i1 %cmp52, i1 false
  br i1 %or.cond6, label %if.then54, label %if.else55

if.then54:                                        ; preds = %if.else46
  store i32 2, ptr @gScanType, align 4
  store i8 4, ptr @gMaxBlocksPerMCU, align 1
  store i8 0, ptr @gMCUOrg, align 1
  store i8 0, ptr getelementptr inbounds ([6 x i8], ptr @gMCUOrg, i64 0, i64 1), align 1
  store i8 1, ptr getelementptr inbounds ([6 x i8], ptr @gMCUOrg, i64 0, i64 2), align 1
  store i8 2, ptr getelementptr inbounds ([6 x i8], ptr @gMCUOrg, i64 0, i64 3), align 1
  store i8 16, ptr @gMaxMCUXSize, align 1
  store i8 8, ptr @gMaxMCUYSize, align 1
  br label %if.end71

if.else55:                                        ; preds = %if.else46
  %14 = load i8, ptr @gCompHSamp, align 1
  %cmp57 = icmp eq i8 %14, 2
  %15 = load i8, ptr @gCompVSamp, align 1
  %cmp61 = icmp eq i8 %15, 2
  %or.cond7 = select i1 %cmp57, i1 %cmp61, i1 false
  br i1 %or.cond7, label %if.then63, label %if.else64

if.then63:                                        ; preds = %if.else55
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
  br label %if.end71

if.else64:                                        ; preds = %if.else55
  store i8 27, ptr %retval, align 1
  br label %return

if.else69:                                        ; preds = %if.else
  store i8 26, ptr %retval, align 1
  br label %return

if.end71:                                         ; preds = %if.then45, %if.then63, %if.then54, %if.then36, %if.end
  %16 = load i16, ptr @gImageXSize, align 2
  %conv72 = zext i16 %16 to i32
  %17 = load i8, ptr @gMaxMCUXSize, align 1
  %conv73 = zext i8 %17 to i32
  %sub = add nsw i32 %conv73, -1
  %add = add nsw i32 %sub, %conv72
  %cmp75 = icmp eq i8 %17, 8
  %cond = select i1 %cmp75, i32 3, i32 4
  %shr = ashr i32 %add, %cond
  %conv77 = trunc i32 %shr to i16
  store i16 %conv77, ptr @gMaxMCUSPerRow, align 2
  %18 = load i16, ptr @gImageYSize, align 2
  %conv78 = zext i16 %18 to i32
  %19 = load i8, ptr @gMaxMCUYSize, align 1
  %conv79 = zext i8 %19 to i32
  %sub80 = add nsw i32 %conv79, -1
  %add81 = add nsw i32 %sub80, %conv78
  %cmp83 = icmp eq i8 %19, 8
  %cond85 = select i1 %cmp83, i32 3, i32 4
  %shr86 = ashr i32 %add81, %cond85
  %conv87 = trunc i32 %shr86 to i16
  store i16 %conv87, ptr @gMaxMCUSPerCol, align 2
  %20 = load i16, ptr @gMaxMCUSPerRow, align 2
  %21 = trunc i32 %shr86 to i16
  %conv90 = mul i16 %20, %21
  store i16 %conv90, ptr @gNumMCUSRemaining, align 2
  store i8 0, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end71, %if.else69, %if.else64, %if.then28, %if.then8
  %22 = load i8, ptr %retval, align 1
  ret i8 %22
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @initScan() #0 {
entry:
  %retval = alloca i8, align 1
  %foundEOI = alloca i8, align 1
  %status = alloca i8, align 1
  %call = call zeroext i8 @locateSOSMarker(ptr noundef nonnull %foundEOI)
  store i8 %call, ptr %status, align 1
  %tobool.not = icmp eq i8 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i8, ptr %status, align 1
  store i8 %0, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8, ptr %foundEOI, align 1
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  store i8 18, ptr %retval, align 1
  br label %return

if.end3:                                          ; preds = %if.end
  %call4 = call zeroext i8 @checkHuffTables()
  store i8 %call4, ptr %status, align 1
  %tobool5.not = icmp eq i8 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end3
  %2 = load i8, ptr %status, align 1
  store i8 %2, ptr %retval, align 1
  br label %return

if.end7:                                          ; preds = %if.end3
  %call8 = call zeroext i8 @checkQuantTables()
  store i8 %call8, ptr %status, align 1
  %tobool9.not = icmp eq i8 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end7
  %3 = load i8, ptr %status, align 1
  store i8 %3, ptr %retval, align 1
  br label %return

if.end11:                                         ; preds = %if.end7
  store i16 0, ptr @gLastDC, align 2
  store i16 0, ptr getelementptr inbounds ([3 x i16], ptr @gLastDC, i64 0, i64 1), align 2
  store i16 0, ptr getelementptr inbounds ([3 x i16], ptr @gLastDC, i64 0, i64 2), align 2
  %4 = load i16, ptr @gRestartInterval, align 2
  %tobool12.not = icmp eq i16 %4, 0
  br i1 %tobool12.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end11
  %5 = load i16, ptr @gRestartInterval, align 2
  store i16 %5, ptr @gRestartsLeft, align 2
  store i16 0, ptr @gNextRestartNum, align 2
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end11
  call void @fixInBuffer()
  store i8 0, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end14, %if.then10, %if.then6, %if.then2, %if.then
  %6 = load i8, ptr %retval, align 1
  ret i8 %6
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @processRestart() #0 {
entry:
  %retval = alloca i8, align 1
  %i = alloca i16, align 2
  %c = alloca i8, align 1
  store i8 0, ptr %c, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i16 [ 1536, %entry ], [ %dec, %for.inc ]
  store i16 %storemerge, ptr %i, align 2
  %cmp.not = icmp eq i16 %storemerge, 0
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %call = call zeroext i8 @getChar()
  %cmp3 = icmp eq i8 %call, -1
  br i1 %cmp3, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %0 = load i16, ptr %i, align 2
  %dec = add i16 %0, -1
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.body, %for.cond
  %1 = load i16, ptr %i, align 2
  %cmp6 = icmp eq i16 %1, 0
  br i1 %cmp6, label %if.then8, label %for.cond10

if.then8:                                         ; preds = %for.end
  store i8 29, ptr %retval, align 1
  br label %return

for.cond10:                                       ; preds = %for.end, %for.inc21
  %2 = load i16, ptr %i, align 2
  %cmp12.not = icmp eq i16 %2, 0
  br i1 %cmp12.not, label %for.end23, label %for.body14

for.body14:                                       ; preds = %for.cond10
  %call15 = call zeroext i8 @getChar()
  store i8 %call15, ptr %c, align 1
  %cmp17.not = icmp eq i8 %call15, -1
  br i1 %cmp17.not, label %for.inc21, label %for.end23

for.inc21:                                        ; preds = %for.body14
  %3 = load i16, ptr %i, align 2
  %dec22 = add i16 %3, -1
  store i16 %dec22, ptr %i, align 2
  br label %for.cond10, !llvm.loop !14

for.end23:                                        ; preds = %for.body14, %for.cond10
  %4 = load i16, ptr %i, align 2
  %cmp25 = icmp eq i16 %4, 0
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %for.end23
  store i8 29, ptr %retval, align 1
  br label %return

if.end28:                                         ; preds = %for.end23
  %5 = load i8, ptr %c, align 1
  %conv29 = zext i8 %5 to i32
  %6 = load i16, ptr @gNextRestartNum, align 2
  %conv30 = zext i16 %6 to i32
  %add = add nuw nsw i32 %conv30, 208
  %cmp31.not = icmp eq i32 %add, %conv29
  br i1 %cmp31.not, label %if.end34, label %if.then33

if.then33:                                        ; preds = %if.end28
  store i8 29, ptr %retval, align 1
  br label %return

if.end34:                                         ; preds = %if.end28
  store i16 0, ptr @gLastDC, align 2
  store i16 0, ptr getelementptr inbounds ([3 x i16], ptr @gLastDC, i64 0, i64 1), align 2
  store i16 0, ptr getelementptr inbounds ([3 x i16], ptr @gLastDC, i64 0, i64 2), align 2
  %7 = load i16, ptr @gRestartInterval, align 2
  store i16 %7, ptr @gRestartsLeft, align 2
  %8 = load i16, ptr @gNextRestartNum, align 2
  %9 = add i16 %8, 1
  %10 = and i16 %9, 7
  store i16 %10, ptr @gNextRestartNum, align 2
  store i8 8, ptr @gBitsLeft, align 1
  %call.i = call zeroext i16 @getBits(i8 noundef zeroext 8, i8 noundef zeroext 1)
  %call.i2 = call zeroext i16 @getBits(i8 noundef zeroext 8, i8 noundef zeroext 1)
  store i8 0, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end34, %if.then33, %if.then27, %if.then8
  %11 = load i8, ptr %retval, align 1
  ret i8 %11
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @huffDecode(ptr noundef %pHuffTable, ptr noundef %pHuffVal) #0 {
entry:
  %pHuffTable.addr = alloca ptr, align 8
  %pHuffVal.addr = alloca ptr, align 8
  %i = alloca i8, align 1
  %code = alloca i16, align 2
  %maxCode = alloca i16, align 2
  store ptr %pHuffTable, ptr %pHuffTable.addr, align 8
  store ptr %pHuffVal, ptr %pHuffVal.addr, align 8
  store i8 0, ptr %i, align 1
  %call = call zeroext i8 @getBit()
  %conv = zext i8 %call to i16
  br label %for.cond

for.cond:                                         ; preds = %if.end11, %entry
  %storemerge = phi i16 [ %conv, %entry ], [ %or, %if.end11 ]
  store i16 %storemerge, ptr %code, align 2
  %0 = load i8, ptr %i, align 1
  %cmp = icmp eq i8 %0, 16
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %for.cond
  %1 = load ptr, ptr %pHuffTable.addr, align 8
  %2 = load i8, ptr %i, align 1
  %idxprom = zext i8 %2 to i64
  %arrayidx = getelementptr inbounds %struct.HuffTableT, ptr %1, i64 0, i32 1, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2
  store i16 %3, ptr %maxCode, align 2
  %4 = load i16, ptr %code, align 2
  %cmp5.not = icmp ugt i16 %4, %3
  %5 = load i16, ptr %maxCode, align 2
  %cmp8.not = icmp eq i16 %5, -1
  %or.cond = select i1 %cmp5.not, i1 true, i1 %cmp8.not
  br i1 %or.cond, label %if.end11, label %for.end

if.end11:                                         ; preds = %if.end
  %6 = load i8, ptr %i, align 1
  %inc = add i8 %6, 1
  store i8 %inc, ptr %i, align 1
  %7 = load i16, ptr %code, align 2
  %shl = shl i16 %7, 1
  store i16 %shl, ptr %code, align 2
  %call14 = call zeroext i8 @getBit()
  %conv15 = zext i8 %call14 to i16
  %or = or i16 %shl, %conv15
  br label %for.cond

for.end:                                          ; preds = %if.end
  %8 = load ptr, ptr %pHuffTable.addr, align 8
  %9 = load i8, ptr %i, align 1
  %idxprom18 = zext i8 %9 to i64
  %arrayidx19 = getelementptr inbounds %struct.HuffTableT, ptr %8, i64 0, i32 2, i64 %idxprom18
  %10 = load i8, ptr %arrayidx19, align 1
  %11 = load i16, ptr %code, align 2
  %conv21 = trunc i16 %11 to i8
  %12 = load ptr, ptr %pHuffTable.addr, align 8
  %13 = load i8, ptr %i, align 1
  %idxprom22 = zext i8 %13 to i64
  %arrayidx23 = getelementptr inbounds [16 x i16], ptr %12, i64 0, i64 %idxprom22
  %14 = load i16, ptr %arrayidx23, align 2
  %conv24 = trunc i16 %14 to i8
  %sub = sub i8 %conv21, %conv24
  %add = add i8 %sub, %10
  %15 = load ptr, ptr %pHuffVal.addr, align 8
  %idxprom26 = zext i8 %add to i64
  %arrayidx27 = getelementptr inbounds i8, ptr %15, i64 %idxprom26
  %16 = load i8, ptr %arrayidx27, align 1
  br label %return

return:                                           ; preds = %for.cond, %for.end
  %storemerge1 = phi i8 [ %16, %for.end ], [ 0, %for.cond ]
  ret i8 %storemerge1
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i16 @getBits2(i8 noundef zeroext %numBits) #0 {
entry:
  %call = call zeroext i16 @getBits(i8 noundef zeroext %numBits, i8 noundef zeroext 1)
  ret i16 %call
}

; Function Attrs: nounwind ssp uwtable
define internal signext i16 @huffExtend(i16 noundef zeroext %x, i8 noundef zeroext %s) #0 {
entry:
  %x.addr = alloca i16, align 2
  %s.addr = alloca i8, align 1
  store i16 %x, ptr %x.addr, align 2
  store i8 %s, ptr %s.addr, align 1
  %call = call zeroext i16 @getExtendTest(i8 noundef zeroext %s)
  %cmp = icmp ugt i16 %call, %x
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %0 = load i16, ptr %x.addr, align 2
  %1 = load i8, ptr %s.addr, align 1
  %call4 = call signext i16 @getExtendOffset(i8 noundef zeroext %1)
  %add = add i16 %0, %call4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i16, ptr %x.addr, align 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i16 [ %add, %cond.true ], [ %2, %cond.false ]
  ret i16 %cond
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
  %add = add nsw i32 %conv, 64
  %shr = lshr i32 %add, 7
  %1 = trunc i32 %shr to i16
  %conv2 = add i16 %1, 128
  %call = call zeroext i8 @clamp(i16 noundef signext %conv2)
  store i8 %call, ptr %c, align 1
  %2 = load i32, ptr @gScanType, align 4
  switch i32 %2, label %sw.epilog161 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 3, label %sw.bb34
    i32 2, label %sw.bb73
    i32 4, label %sw.bb112
  ]

sw.bb:                                            ; preds = %entry
  %3 = load i8, ptr %c, align 1
  store i8 %3, ptr @gMCUBufR, align 1
  br label %sw.epilog161

sw.bb3:                                           ; preds = %entry
  %4 = load i8, ptr %mcuBlock.addr, align 1
  switch i8 %4, label %sw.epilog161 [
    i8 0, label %sw.bb5
    i8 1, label %sw.bb6
    i8 2, label %sw.bb19
  ]

sw.bb5:                                           ; preds = %sw.bb3
  %5 = load i8, ptr %c, align 1
  store i8 %5, ptr @gMCUBufR, align 1
  store i8 %5, ptr @gMCUBufG, align 1
  store i8 %5, ptr @gMCUBufB, align 1
  br label %sw.epilog161

sw.bb6:                                           ; preds = %sw.bb3
  %6 = load i8, ptr %c, align 1
  %conv7 = zext i8 %6 to i16
  %mul = mul nuw nsw i16 %conv7, 88
  %shr8 = lshr i16 %mul, 8
  %sub = add nsw i16 %shr8, -44
  store i16 %sub, ptr %cbG, align 2
  %7 = load i8, ptr @gMCUBufG, align 1
  %call10 = call zeroext i8 @subAndClamp(i8 noundef zeroext %7, i16 noundef signext %sub)
  store i8 %call10, ptr @gMCUBufG, align 1
  %8 = load i8, ptr %c, align 1
  %conv11 = zext i8 %8 to i16
  %conv12 = zext i8 %8 to i16
  %mul13 = mul nuw i16 %conv12, 198
  %shr14 = lshr i16 %mul13, 8
  %add15 = add nuw nsw i16 %shr14, %conv11
  %sub16 = add nsw i16 %add15, -227
  store i16 %sub16, ptr %cbB, align 2
  %9 = load i8, ptr @gMCUBufB, align 1
  %call18 = call zeroext i8 @addAndClamp(i8 noundef zeroext %9, i16 noundef signext %sub16)
  store i8 %call18, ptr @gMCUBufB, align 1
  br label %sw.epilog161

sw.bb19:                                          ; preds = %sw.bb3
  %10 = load i8, ptr %c, align 1
  %conv20 = zext i8 %10 to i16
  %conv21 = zext i8 %10 to i16
  %mul22 = mul nuw nsw i16 %conv21, 103
  %shr23 = lshr i16 %mul22, 8
  %add24 = add nuw nsw i16 %shr23, %conv20
  %sub25 = add nsw i16 %add24, -179
  store i16 %sub25, ptr %crR, align 2
  %11 = load i8, ptr @gMCUBufR, align 1
  %call27 = call zeroext i8 @addAndClamp(i8 noundef zeroext %11, i16 noundef signext %sub25)
  store i8 %call27, ptr @gMCUBufR, align 1
  %12 = load i8, ptr %c, align 1
  %conv28 = zext i8 %12 to i16
  %mul29 = mul nuw i16 %conv28, 183
  %shr30 = lshr i16 %mul29, 8
  %sub31 = add nsw i16 %shr30, -91
  store i16 %sub31, ptr %crG, align 2
  %13 = load i8, ptr @gMCUBufG, align 1
  %call33 = call zeroext i8 @subAndClamp(i8 noundef zeroext %13, i16 noundef signext %sub31)
  store i8 %call33, ptr @gMCUBufG, align 1
  br label %sw.epilog161

sw.bb34:                                          ; preds = %entry
  %14 = load i8, ptr %mcuBlock.addr, align 1
  switch i8 %14, label %sw.epilog161 [
    i8 0, label %sw.bb36
    i8 1, label %sw.bb37
    i8 2, label %sw.bb38
    i8 3, label %sw.bb55
  ]

sw.bb36:                                          ; preds = %sw.bb34
  %15 = load i8, ptr %c, align 1
  store i8 %15, ptr @gMCUBufR, align 1
  store i8 %15, ptr @gMCUBufG, align 1
  store i8 %15, ptr @gMCUBufB, align 1
  br label %sw.epilog161

sw.bb37:                                          ; preds = %sw.bb34
  %16 = load i8, ptr %c, align 1
  store i8 %16, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 128), align 1
  store i8 %16, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 128), align 1
  store i8 %16, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 128), align 1
  br label %sw.epilog161

sw.bb38:                                          ; preds = %sw.bb34
  %17 = load i8, ptr %c, align 1
  %conv39 = zext i8 %17 to i16
  %mul40 = mul nuw nsw i16 %conv39, 88
  %shr41 = lshr i16 %mul40, 8
  %sub42 = add nsw i16 %shr41, -44
  store i16 %sub42, ptr %cbG, align 2
  %18 = load i8, ptr @gMCUBufG, align 1
  %call44 = call zeroext i8 @subAndClamp(i8 noundef zeroext %18, i16 noundef signext %sub42)
  store i8 %call44, ptr @gMCUBufG, align 1
  %19 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 128), align 1
  %call45 = call zeroext i8 @subAndClamp(i8 noundef zeroext %19, i16 noundef signext %sub42)
  store i8 %call45, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 128), align 1
  %20 = load i8, ptr %c, align 1
  %conv46 = zext i8 %20 to i16
  %conv47 = zext i8 %20 to i16
  %mul48 = mul nuw i16 %conv47, 198
  %shr49 = lshr i16 %mul48, 8
  %add50 = add nuw nsw i16 %shr49, %conv46
  %sub51 = add nsw i16 %add50, -227
  store i16 %sub51, ptr %cbB, align 2
  %21 = load i8, ptr @gMCUBufB, align 1
  %call53 = call zeroext i8 @addAndClamp(i8 noundef zeroext %21, i16 noundef signext %sub51)
  store i8 %call53, ptr @gMCUBufB, align 1
  %22 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 128), align 1
  %call54 = call zeroext i8 @addAndClamp(i8 noundef zeroext %22, i16 noundef signext %sub51)
  store i8 %call54, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 128), align 1
  br label %sw.epilog161

sw.bb55:                                          ; preds = %sw.bb34
  %23 = load i8, ptr %c, align 1
  %conv56 = zext i8 %23 to i16
  %conv57 = zext i8 %23 to i16
  %mul58 = mul nuw nsw i16 %conv57, 103
  %shr59 = lshr i16 %mul58, 8
  %add60 = add nuw nsw i16 %shr59, %conv56
  %sub61 = add nsw i16 %add60, -179
  store i16 %sub61, ptr %crR, align 2
  %24 = load i8, ptr @gMCUBufR, align 1
  %call63 = call zeroext i8 @addAndClamp(i8 noundef zeroext %24, i16 noundef signext %sub61)
  store i8 %call63, ptr @gMCUBufR, align 1
  %25 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 128), align 1
  %call64 = call zeroext i8 @addAndClamp(i8 noundef zeroext %25, i16 noundef signext %sub61)
  store i8 %call64, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 128), align 1
  %26 = load i8, ptr %c, align 1
  %conv65 = zext i8 %26 to i16
  %mul66 = mul nuw i16 %conv65, 183
  %shr67 = lshr i16 %mul66, 8
  %sub68 = add nsw i16 %shr67, -91
  store i16 %sub68, ptr %crG, align 2
  %27 = load i8, ptr @gMCUBufG, align 1
  %call70 = call zeroext i8 @subAndClamp(i8 noundef zeroext %27, i16 noundef signext %sub68)
  store i8 %call70, ptr @gMCUBufG, align 1
  %28 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 128), align 1
  %call71 = call zeroext i8 @subAndClamp(i8 noundef zeroext %28, i16 noundef signext %sub68)
  store i8 %call71, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 128), align 1
  br label %sw.epilog161

sw.bb73:                                          ; preds = %entry
  %29 = load i8, ptr %mcuBlock.addr, align 1
  switch i8 %29, label %sw.epilog161 [
    i8 0, label %sw.bb75
    i8 1, label %sw.bb76
    i8 2, label %sw.bb77
    i8 3, label %sw.bb94
  ]

sw.bb75:                                          ; preds = %sw.bb73
  %30 = load i8, ptr %c, align 1
  store i8 %30, ptr @gMCUBufR, align 1
  store i8 %30, ptr @gMCUBufG, align 1
  store i8 %30, ptr @gMCUBufB, align 1
  br label %sw.epilog161

sw.bb76:                                          ; preds = %sw.bb73
  %31 = load i8, ptr %c, align 1
  store i8 %31, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 64), align 1
  store i8 %31, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 64), align 1
  store i8 %31, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 64), align 1
  br label %sw.epilog161

sw.bb77:                                          ; preds = %sw.bb73
  %32 = load i8, ptr %c, align 1
  %conv78 = zext i8 %32 to i16
  %mul79 = mul nuw nsw i16 %conv78, 88
  %shr80 = lshr i16 %mul79, 8
  %sub81 = add nsw i16 %shr80, -44
  store i16 %sub81, ptr %cbG, align 2
  %33 = load i8, ptr @gMCUBufG, align 1
  %call83 = call zeroext i8 @subAndClamp(i8 noundef zeroext %33, i16 noundef signext %sub81)
  store i8 %call83, ptr @gMCUBufG, align 1
  %34 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 64), align 1
  %call84 = call zeroext i8 @subAndClamp(i8 noundef zeroext %34, i16 noundef signext %sub81)
  store i8 %call84, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 64), align 1
  %35 = load i8, ptr %c, align 1
  %conv85 = zext i8 %35 to i16
  %conv86 = zext i8 %35 to i16
  %mul87 = mul nuw i16 %conv86, 198
  %shr88 = lshr i16 %mul87, 8
  %add89 = add nuw nsw i16 %shr88, %conv85
  %sub90 = add nsw i16 %add89, -227
  store i16 %sub90, ptr %cbB, align 2
  %36 = load i8, ptr @gMCUBufB, align 1
  %call92 = call zeroext i8 @addAndClamp(i8 noundef zeroext %36, i16 noundef signext %sub90)
  store i8 %call92, ptr @gMCUBufB, align 1
  %37 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 64), align 1
  %call93 = call zeroext i8 @addAndClamp(i8 noundef zeroext %37, i16 noundef signext %sub90)
  store i8 %call93, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 64), align 1
  br label %sw.epilog161

sw.bb94:                                          ; preds = %sw.bb73
  %38 = load i8, ptr %c, align 1
  %conv95 = zext i8 %38 to i16
  %conv96 = zext i8 %38 to i16
  %mul97 = mul nuw nsw i16 %conv96, 103
  %shr98 = lshr i16 %mul97, 8
  %add99 = add nuw nsw i16 %shr98, %conv95
  %sub100 = add nsw i16 %add99, -179
  store i16 %sub100, ptr %crR, align 2
  %39 = load i8, ptr @gMCUBufR, align 1
  %call102 = call zeroext i8 @addAndClamp(i8 noundef zeroext %39, i16 noundef signext %sub100)
  store i8 %call102, ptr @gMCUBufR, align 1
  %40 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 64), align 1
  %call103 = call zeroext i8 @addAndClamp(i8 noundef zeroext %40, i16 noundef signext %sub100)
  store i8 %call103, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 64), align 1
  %41 = load i8, ptr %c, align 1
  %conv104 = zext i8 %41 to i16
  %mul105 = mul nuw i16 %conv104, 183
  %shr106 = lshr i16 %mul105, 8
  %sub107 = add nsw i16 %shr106, -91
  store i16 %sub107, ptr %crG, align 2
  %42 = load i8, ptr @gMCUBufG, align 1
  %call109 = call zeroext i8 @subAndClamp(i8 noundef zeroext %42, i16 noundef signext %sub107)
  store i8 %call109, ptr @gMCUBufG, align 1
  %43 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 64), align 1
  %call110 = call zeroext i8 @subAndClamp(i8 noundef zeroext %43, i16 noundef signext %sub107)
  store i8 %call110, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 64), align 1
  br label %sw.epilog161

sw.bb112:                                         ; preds = %entry
  %44 = load i8, ptr %mcuBlock.addr, align 1
  switch i8 %44, label %sw.epilog161 [
    i8 0, label %sw.bb114
    i8 1, label %sw.bb115
    i8 2, label %sw.bb116
    i8 3, label %sw.bb117
    i8 4, label %sw.bb118
    i8 5, label %sw.bb139
  ]

sw.bb114:                                         ; preds = %sw.bb112
  %45 = load i8, ptr %c, align 1
  store i8 %45, ptr @gMCUBufR, align 1
  store i8 %45, ptr @gMCUBufG, align 1
  store i8 %45, ptr @gMCUBufB, align 1
  br label %sw.epilog161

sw.bb115:                                         ; preds = %sw.bb112
  %46 = load i8, ptr %c, align 1
  store i8 %46, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 64), align 1
  store i8 %46, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 64), align 1
  store i8 %46, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 64), align 1
  br label %sw.epilog161

sw.bb116:                                         ; preds = %sw.bb112
  %47 = load i8, ptr %c, align 1
  store i8 %47, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 128), align 1
  store i8 %47, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 128), align 1
  store i8 %47, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 128), align 1
  br label %sw.epilog161

sw.bb117:                                         ; preds = %sw.bb112
  %48 = load i8, ptr %c, align 1
  store i8 %48, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 192), align 1
  store i8 %48, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 192), align 1
  store i8 %48, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 192), align 1
  br label %sw.epilog161

sw.bb118:                                         ; preds = %sw.bb112
  %49 = load i8, ptr %c, align 1
  %conv119 = zext i8 %49 to i16
  %mul120 = mul nuw nsw i16 %conv119, 88
  %shr121 = lshr i16 %mul120, 8
  %sub122 = add nsw i16 %shr121, -44
  store i16 %sub122, ptr %cbG, align 2
  %50 = load i8, ptr @gMCUBufG, align 1
  %call124 = call zeroext i8 @subAndClamp(i8 noundef zeroext %50, i16 noundef signext %sub122)
  store i8 %call124, ptr @gMCUBufG, align 1
  %51 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 64), align 1
  %call125 = call zeroext i8 @subAndClamp(i8 noundef zeroext %51, i16 noundef signext %sub122)
  store i8 %call125, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 64), align 1
  %52 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 128), align 1
  %53 = load i16, ptr %cbG, align 2
  %call126 = call zeroext i8 @subAndClamp(i8 noundef zeroext %52, i16 noundef signext %53)
  store i8 %call126, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 128), align 1
  %54 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 192), align 1
  %call127 = call zeroext i8 @subAndClamp(i8 noundef zeroext %54, i16 noundef signext %53)
  store i8 %call127, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 192), align 1
  %55 = load i8, ptr %c, align 1
  %conv128 = zext i8 %55 to i16
  %conv129 = zext i8 %55 to i16
  %mul130 = mul nuw i16 %conv129, 198
  %shr131 = lshr i16 %mul130, 8
  %add132 = add nuw nsw i16 %shr131, %conv128
  %sub133 = add nsw i16 %add132, -227
  store i16 %sub133, ptr %cbB, align 2
  %56 = load i8, ptr @gMCUBufB, align 1
  %call135 = call zeroext i8 @addAndClamp(i8 noundef zeroext %56, i16 noundef signext %sub133)
  store i8 %call135, ptr @gMCUBufB, align 1
  %57 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 64), align 1
  %call136 = call zeroext i8 @addAndClamp(i8 noundef zeroext %57, i16 noundef signext %sub133)
  store i8 %call136, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 64), align 1
  %58 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 128), align 1
  %59 = load i16, ptr %cbB, align 2
  %call137 = call zeroext i8 @addAndClamp(i8 noundef zeroext %58, i16 noundef signext %59)
  store i8 %call137, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 128), align 1
  %60 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 192), align 1
  %call138 = call zeroext i8 @addAndClamp(i8 noundef zeroext %60, i16 noundef signext %59)
  store i8 %call138, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 192), align 1
  br label %sw.epilog161

sw.bb139:                                         ; preds = %sw.bb112
  %61 = load i8, ptr %c, align 1
  %conv140 = zext i8 %61 to i16
  %conv141 = zext i8 %61 to i16
  %mul142 = mul nuw nsw i16 %conv141, 103
  %shr143 = lshr i16 %mul142, 8
  %add144 = add nuw nsw i16 %shr143, %conv140
  %sub145 = add nsw i16 %add144, -179
  store i16 %sub145, ptr %crR, align 2
  %62 = load i8, ptr @gMCUBufR, align 1
  %call147 = call zeroext i8 @addAndClamp(i8 noundef zeroext %62, i16 noundef signext %sub145)
  store i8 %call147, ptr @gMCUBufR, align 1
  %63 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 64), align 1
  %call148 = call zeroext i8 @addAndClamp(i8 noundef zeroext %63, i16 noundef signext %sub145)
  store i8 %call148, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 64), align 1
  %64 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 128), align 1
  %65 = load i16, ptr %crR, align 2
  %call149 = call zeroext i8 @addAndClamp(i8 noundef zeroext %64, i16 noundef signext %65)
  store i8 %call149, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 128), align 1
  %66 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 192), align 1
  %call150 = call zeroext i8 @addAndClamp(i8 noundef zeroext %66, i16 noundef signext %65)
  store i8 %call150, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 192), align 1
  %67 = load i8, ptr %c, align 1
  %conv151 = zext i8 %67 to i16
  %mul152 = mul nuw i16 %conv151, 183
  %shr153 = lshr i16 %mul152, 8
  %sub154 = add nsw i16 %shr153, -91
  store i16 %sub154, ptr %crG, align 2
  %68 = load i8, ptr @gMCUBufG, align 1
  %call156 = call zeroext i8 @subAndClamp(i8 noundef zeroext %68, i16 noundef signext %sub154)
  store i8 %call156, ptr @gMCUBufG, align 1
  %69 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 64), align 1
  %call157 = call zeroext i8 @subAndClamp(i8 noundef zeroext %69, i16 noundef signext %sub154)
  store i8 %call157, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 64), align 1
  %70 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 128), align 1
  %71 = load i16, ptr %crG, align 2
  %call158 = call zeroext i8 @subAndClamp(i8 noundef zeroext %70, i16 noundef signext %71)
  store i8 %call158, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 128), align 1
  %72 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 192), align 1
  %call159 = call zeroext i8 @subAndClamp(i8 noundef zeroext %72, i16 noundef signext %71)
  store i8 %call159, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 192), align 1
  br label %sw.epilog161

sw.epilog161:                                     ; preds = %sw.bb112, %sw.bb114, %sw.bb115, %sw.bb116, %sw.bb117, %sw.bb118, %sw.bb139, %sw.bb73, %sw.bb75, %sw.bb76, %sw.bb77, %sw.bb94, %sw.bb34, %sw.bb36, %sw.bb37, %sw.bb38, %sw.bb55, %sw.bb3, %sw.bb5, %sw.bb6, %sw.bb19, %sw.bb, %entry
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
  switch i8 %1, label %sw.epilog28 [
    i8 0, label %sw.bb2
    i8 1, label %sw.bb3
    i8 2, label %sw.bb4
  ]

sw.bb2:                                           ; preds = %sw.bb1
  call void @copyY(i8 noundef zeroext 0)
  br label %sw.epilog28

sw.bb3:                                           ; preds = %sw.bb1
  call void @convertCb(i8 noundef zeroext 0)
  br label %sw.epilog28

sw.bb4:                                           ; preds = %sw.bb1
  call void @convertCr(i8 noundef zeroext 0)
  br label %sw.epilog28

sw.bb5:                                           ; preds = %entry
  %2 = load i8, ptr %mcuBlock.addr, align 1
  switch i8 %2, label %sw.epilog28 [
    i8 0, label %sw.bb7
    i8 1, label %sw.bb8
    i8 2, label %sw.bb9
    i8 3, label %sw.bb10
  ]

sw.bb7:                                           ; preds = %sw.bb5
  call void @copyY(i8 noundef zeroext 0)
  br label %sw.epilog28

sw.bb8:                                           ; preds = %sw.bb5
  call void @copyY(i8 noundef zeroext -128)
  br label %sw.epilog28

sw.bb9:                                           ; preds = %sw.bb5
  call void @upsampleCbV(i8 noundef zeroext 0, i8 noundef zeroext 0)
  call void @upsampleCbV(i8 noundef zeroext 32, i8 noundef zeroext -128)
  br label %sw.epilog28

sw.bb10:                                          ; preds = %sw.bb5
  call void @upsampleCrV(i8 noundef zeroext 0, i8 noundef zeroext 0)
  call void @upsampleCrV(i8 noundef zeroext 32, i8 noundef zeroext -128)
  br label %sw.epilog28

sw.bb12:                                          ; preds = %entry
  %3 = load i8, ptr %mcuBlock.addr, align 1
  switch i8 %3, label %sw.epilog28 [
    i8 0, label %sw.bb14
    i8 1, label %sw.bb15
    i8 2, label %sw.bb16
    i8 3, label %sw.bb17
  ]

sw.bb14:                                          ; preds = %sw.bb12
  call void @copyY(i8 noundef zeroext 0)
  br label %sw.epilog28

sw.bb15:                                          ; preds = %sw.bb12
  call void @copyY(i8 noundef zeroext 64)
  br label %sw.epilog28

sw.bb16:                                          ; preds = %sw.bb12
  call void @upsampleCbH(i8 noundef zeroext 0, i8 noundef zeroext 0)
  call void @upsampleCbH(i8 noundef zeroext 4, i8 noundef zeroext 64)
  br label %sw.epilog28

sw.bb17:                                          ; preds = %sw.bb12
  call void @upsampleCrH(i8 noundef zeroext 0, i8 noundef zeroext 0)
  call void @upsampleCrH(i8 noundef zeroext 4, i8 noundef zeroext 64)
  br label %sw.epilog28

sw.bb19:                                          ; preds = %entry
  %4 = load i8, ptr %mcuBlock.addr, align 1
  switch i8 %4, label %sw.epilog28 [
    i8 0, label %sw.bb21
    i8 1, label %sw.bb22
    i8 2, label %sw.bb23
    i8 3, label %sw.bb24
    i8 4, label %sw.bb25
    i8 5, label %sw.bb26
  ]

sw.bb21:                                          ; preds = %sw.bb19
  call void @copyY(i8 noundef zeroext 0)
  br label %sw.epilog28

sw.bb22:                                          ; preds = %sw.bb19
  call void @copyY(i8 noundef zeroext 64)
  br label %sw.epilog28

sw.bb23:                                          ; preds = %sw.bb19
  call void @copyY(i8 noundef zeroext -128)
  br label %sw.epilog28

sw.bb24:                                          ; preds = %sw.bb19
  call void @copyY(i8 noundef zeroext -64)
  br label %sw.epilog28

sw.bb25:                                          ; preds = %sw.bb19
  call void @upsampleCb(i8 noundef zeroext 0, i8 noundef zeroext 0)
  call void @upsampleCb(i8 noundef zeroext 4, i8 noundef zeroext 64)
  call void @upsampleCb(i8 noundef zeroext 32, i8 noundef zeroext -128)
  call void @upsampleCb(i8 noundef zeroext 36, i8 noundef zeroext -64)
  br label %sw.epilog28

sw.bb26:                                          ; preds = %sw.bb19
  call void @upsampleCr(i8 noundef zeroext 0, i8 noundef zeroext 0)
  call void @upsampleCr(i8 noundef zeroext 4, i8 noundef zeroext 64)
  call void @upsampleCr(i8 noundef zeroext 32, i8 noundef zeroext -128)
  call void @upsampleCr(i8 noundef zeroext 36, i8 noundef zeroext -64)
  br label %sw.epilog28

sw.epilog28:                                      ; preds = %sw.bb19, %sw.bb21, %sw.bb22, %sw.bb23, %sw.bb24, %sw.bb25, %sw.bb26, %sw.bb12, %sw.bb14, %sw.bb15, %sw.bb16, %sw.bb17, %sw.bb5, %sw.bb7, %sw.bb8, %sw.bb9, %sw.bb10, %sw.bb1, %sw.bb2, %sw.bb3, %sw.bb4, %sw.bb, %entry
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @getChar() #0 {
entry:
  %status.i = alloca i8, align 1
  %0 = load i8, ptr @gInBufLeft, align 1
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status.i)
  store i8 4, ptr @gInBufOfs, align 1
  store i8 0, ptr @gInBufLeft, align 1
  %1 = load ptr, ptr @g_pNeedBytesCallback, align 8
  %2 = load ptr, ptr @g_pCallback_data, align 8
  %call.i = call zeroext i8 %1(ptr noundef getelementptr inbounds ([256 x i8], ptr @gInBuf, i64 0, i64 4), i8 noundef zeroext -4, ptr noundef nonnull @gInBufLeft, ptr noundef %2) #2
  store i8 %call.i, ptr %status.i, align 1
  %tobool.i.not = icmp eq i8 %call.i, 0
  br i1 %tobool.i.not, label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_4.exit, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %3 = load i8, ptr %status.i, align 1
  store i8 %3, ptr @gCallbackStatus, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_4.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_4.exit: ; preds = %if.then, %if.then.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i)
  %4 = load i8, ptr @gInBufLeft, align 1
  %tobool1.not = icmp eq i8 %4, 0
  br i1 %tobool1.not, label %if.then2, label %if.end7

if.then2:                                         ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_4.exit
  %5 = load i8, ptr @gTemFlag, align 1
  %neg = xor i8 %5, -1
  store i8 %neg, ptr @gTemFlag, align 1
  %tobool5.not = icmp eq i8 %5, -1
  %conv6 = select i1 %tobool5.not, i8 -39, i8 -1
  br label %return

if.end7:                                          ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_4.exit, %entry
  %6 = load i8, ptr @gInBufLeft, align 1
  %dec = add i8 %6, -1
  store i8 %dec, ptr @gInBufLeft, align 1
  %7 = load i8, ptr @gInBufOfs, align 1
  %inc = add i8 %7, 1
  store i8 %inc, ptr @gInBufOfs, align 1
  %idxprom = zext i8 %7 to i64
  %arrayidx = getelementptr inbounds [256 x i8], ptr @gInBuf, i64 0, i64 %idxprom
  %8 = load i8, ptr %arrayidx, align 1
  br label %return

return:                                           ; preds = %if.end7, %if.then2
  %storemerge = phi i8 [ %conv6, %if.then2 ], [ %8, %if.end7 ]
  ret i8 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @getBit() #0 {
entry:
  %ret = alloca i8, align 1
  store i8 0, ptr %ret, align 1
  %0 = load i16, ptr @gBitBuf, align 2
  %tobool.not = icmp sgt i16 %0, -1
  %spec.store.select = select i1 %tobool.not, i8 0, i8 1
  store i8 %spec.store.select, ptr %ret, align 1
  %1 = load i8, ptr @gBitsLeft, align 1
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.then2, label %if.end8

if.then2:                                         ; preds = %entry
  %call = call zeroext i8 @getOctet(i8 noundef zeroext 1)
  %conv3 = zext i8 %call to i16
  %2 = load i16, ptr @gBitBuf, align 2
  %or = or i16 %2, %conv3
  store i16 %or, ptr @gBitBuf, align 2
  %3 = load i8, ptr @gBitsLeft, align 1
  %add = add i8 %3, 8
  store i8 %add, ptr @gBitsLeft, align 1
  br label %if.end8

if.end8:                                          ; preds = %if.then2, %entry
  %4 = load i8, ptr @gBitsLeft, align 1
  %dec = add i8 %4, -1
  store i8 %dec, ptr @gBitsLeft, align 1
  %5 = load i16, ptr @gBitBuf, align 2
  %shl = shl i16 %5, 1
  store i16 %shl, ptr @gBitBuf, align 2
  %6 = load i8, ptr %ret, align 1
  ret i8 %6
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @getOctet(i8 noundef zeroext %FFCheck) #0 {
entry:
  %c = alloca i8, align 1
  %n = alloca i8, align 1
  %call = call zeroext i8 @getChar()
  store i8 %call, ptr %c, align 1
  %tobool.not = icmp ne i8 %FFCheck, 0
  %0 = load i8, ptr %c, align 1
  %cmp = icmp eq i8 %0, -1
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %call3 = call zeroext i8 @getChar()
  store i8 %call3, ptr %n, align 1
  %tobool4.not = icmp eq i8 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.then
  %1 = load i8, ptr %n, align 1
  %2 = load i8, ptr @gInBufOfs, align 1
  %dec.i = add i8 %2, -1
  store i8 %dec.i, ptr @gInBufOfs, align 1
  %idxprom.i = zext i8 %dec.i to i64
  %arrayidx.i = getelementptr inbounds [256 x i8], ptr @gInBuf, i64 0, i64 %idxprom.i
  store i8 %1, ptr %arrayidx.i, align 1
  %3 = load i8, ptr @gInBufLeft, align 1
  %inc.i = add i8 %3, 1
  store i8 %inc.i, ptr @gInBufLeft, align 1
  %4 = load i8, ptr @gInBufOfs, align 1
  %dec.i2 = add i8 %4, -1
  store i8 %dec.i2, ptr @gInBufOfs, align 1
  %idxprom.i3 = zext i8 %dec.i2 to i64
  %arrayidx.i4 = getelementptr inbounds [256 x i8], ptr @gInBuf, i64 0, i64 %idxprom.i3
  store i8 -1, ptr %arrayidx.i4, align 1
  %5 = load i8, ptr @gInBufLeft, align 1
  %inc.i5 = add i8 %5, 1
  store i8 %inc.i5, ptr @gInBufLeft, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.then, %if.then5, %entry
  %6 = load i8, ptr %c, align 1
  ret i8 %6
}

; Function Attrs: nounwind ssp uwtable
define internal void @stuffChar(i8 noundef zeroext %i) #0 {
entry:
  %0 = load i8, ptr @gInBufOfs, align 1
  %dec = add i8 %0, -1
  store i8 %dec, ptr @gInBufOfs, align 1
  %idxprom = zext i8 %dec to i64
  %arrayidx = getelementptr inbounds [256 x i8], ptr @gInBuf, i64 0, i64 %idxprom
  store i8 %i, ptr %arrayidx, align 1
  %1 = load i8, ptr @gInBufLeft, align 1
  %inc = add i8 %1, 1
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
  store i8 %numBits, ptr %origBits, align 1
  %0 = load i16, ptr @gBitBuf, align 2
  store i16 %0, ptr %ret, align 2
  %cmp = icmp ugt i8 %numBits, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8, ptr %numBits.addr, align 1
  %sub = add i8 %1, -8
  store i8 %sub, ptr %numBits.addr, align 1
  %2 = load i8, ptr @gBitsLeft, align 1
  %conv4 = zext i8 %2 to i32
  %3 = load i16, ptr @gBitBuf, align 2
  %conv5 = zext i16 %3 to i32
  %shl = shl i32 %conv5, %conv4
  %conv6 = trunc i32 %shl to i16
  store i16 %conv6, ptr @gBitBuf, align 2
  %4 = load i8, ptr %FFCheck.addr, align 1
  %call = call zeroext i8 @getOctet(i8 noundef zeroext %4)
  %conv7 = zext i8 %call to i16
  %5 = load i16, ptr @gBitBuf, align 2
  %or = or i16 %5, %conv7
  store i16 %or, ptr @gBitBuf, align 2
  %6 = load i8, ptr @gBitsLeft, align 1
  %conv10 = zext i8 %6 to i32
  %sub11 = sub nsw i32 8, %conv10
  %conv12 = zext i16 %or to i32
  %shl13 = shl i32 %conv12, %sub11
  %conv14 = trunc i32 %shl13 to i16
  store i16 %conv14, ptr @gBitBuf, align 2
  %7 = load i16, ptr %ret, align 2
  %8 = and i16 %7, -256
  %9 = trunc i32 %shl13 to i16
  %10 = lshr i16 %9, 8
  %conv18 = or i16 %10, %8
  store i16 %conv18, ptr %ret, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i8, ptr @gBitsLeft, align 1
  %12 = load i8, ptr %numBits.addr, align 1
  %cmp21 = icmp ult i8 %11, %12
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end
  %13 = load i8, ptr @gBitsLeft, align 1
  %conv24 = zext i8 %13 to i32
  %14 = load i16, ptr @gBitBuf, align 2
  %conv25 = zext i16 %14 to i32
  %shl26 = shl i32 %conv25, %conv24
  %conv27 = trunc i32 %shl26 to i16
  store i16 %conv27, ptr @gBitBuf, align 2
  %15 = load i8, ptr %FFCheck.addr, align 1
  %call28 = call zeroext i8 @getOctet(i8 noundef zeroext %15)
  %conv29 = zext i8 %call28 to i16
  %16 = load i16, ptr @gBitBuf, align 2
  %or31 = or i16 %16, %conv29
  store i16 %or31, ptr @gBitBuf, align 2
  %17 = load i8, ptr %numBits.addr, align 1
  %conv33 = zext i8 %17 to i32
  %18 = load i8, ptr @gBitsLeft, align 1
  %conv34 = zext i8 %18 to i32
  %sub35 = sub nsw i32 %conv33, %conv34
  %conv36 = zext i16 %or31 to i32
  %shl37 = shl i32 %conv36, %sub35
  %conv38 = trunc i32 %shl37 to i16
  store i16 %conv38, ptr @gBitBuf, align 2
  %19 = load i8, ptr %numBits.addr, align 1
  %20 = load i8, ptr @gBitsLeft, align 1
  %sub41.neg = sub i8 %20, %19
  %sub42 = add i8 %sub41.neg, 8
  store i8 %sub42, ptr @gBitsLeft, align 1
  br label %if.end52

if.else:                                          ; preds = %if.end
  %21 = load i8, ptr @gBitsLeft, align 1
  %22 = load i8, ptr %numBits.addr, align 1
  %sub46 = sub i8 %21, %22
  store i8 %sub46, ptr @gBitsLeft, align 1
  %conv48 = zext i8 %22 to i32
  %23 = load i16, ptr @gBitBuf, align 2
  %conv49 = zext i16 %23 to i32
  %shl50 = shl i32 %conv49, %conv48
  %conv51 = trunc i32 %shl50 to i16
  store i16 %conv51, ptr @gBitBuf, align 2
  br label %if.end52

if.end52:                                         ; preds = %if.else, %if.then23
  %24 = load i16, ptr %ret, align 2
  %conv53 = zext i16 %24 to i32
  %25 = load i8, ptr %origBits, align 1
  %conv54 = zext i8 %25 to i32
  %sub55 = sub nsw i32 16, %conv54
  %shr56 = lshr i32 %conv53, %sub55
  %conv57 = trunc i32 %shr56 to i16
  ret i16 %conv57
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i16 @getExtendTest(i8 noundef zeroext %i) #0 {
entry:
  %retval = alloca i16, align 2
  switch i8 %i, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb1
    i8 2, label %sw.bb2
    i8 3, label %sw.bb3
    i8 4, label %sw.bb4
    i8 5, label %sw.bb5
    i8 6, label %sw.bb6
    i8 7, label %sw.bb7
    i8 8, label %sw.bb8
    i8 9, label %sw.bb9
    i8 10, label %sw.bb10
    i8 11, label %sw.bb11
    i8 12, label %sw.bb12
    i8 13, label %sw.bb13
    i8 14, label %sw.bb14
    i8 15, label %sw.bb15
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
  %0 = load i16, ptr %retval, align 2
  ret i16 %0
}

; Function Attrs: nounwind ssp uwtable
define internal signext i16 @getExtendOffset(i8 noundef zeroext %i) #0 {
entry:
  %retval = alloca i16, align 2
  switch i8 %i, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb1
    i8 2, label %sw.bb2
    i8 3, label %sw.bb3
    i8 4, label %sw.bb4
    i8 5, label %sw.bb5
    i8 6, label %sw.bb6
    i8 7, label %sw.bb7
    i8 8, label %sw.bb8
    i8 9, label %sw.bb9
    i8 10, label %sw.bb10
    i8 11, label %sw.bb11
    i8 12, label %sw.bb12
    i8 13, label %sw.bb13
    i8 14, label %sw.bb14
    i8 15, label %sw.bb15
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
  %0 = load i16, ptr %retval, align 2
  ret i16 %0
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @clamp(i16 noundef signext %s) #0 {
entry:
  %retval = alloca i8, align 1
  %s.addr = alloca i16, align 2
  store i16 %s, ptr %s.addr, align 2
  %cmp = icmp ugt i16 %s, 255
  br i1 %cmp, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %0 = load i16, ptr %s.addr, align 2
  %cmp3 = icmp slt i16 %0, 0
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  store i8 0, ptr %retval, align 1
  br label %return

if.else:                                          ; preds = %if.then
  %1 = load i16, ptr %s.addr, align 2
  %cmp7 = icmp sgt i16 %1, 255
  br i1 %cmp7, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.else
  store i8 -1, ptr %retval, align 1
  br label %return

if.end11:                                         ; preds = %if.else, %entry
  %2 = load i16, ptr %s.addr, align 2
  %conv12 = trunc i16 %2 to i8
  store i8 %conv12, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end11, %if.then9, %if.then5
  %3 = load i8, ptr %retval, align 1
  ret i8 %3
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @subAndClamp(i8 noundef zeroext %a, i16 noundef signext %b) #0 {
entry:
  %retval = alloca i8, align 1
  %b.addr = alloca i16, align 2
  %conv = zext i8 %a to i16
  %sub = sub i16 %conv, %b
  store i16 %sub, ptr %b.addr, align 2
  %cmp = icmp ugt i16 %sub, 255
  br i1 %cmp, label %if.then, label %if.end14

if.then:                                          ; preds = %entry
  %0 = load i16, ptr %b.addr, align 2
  %cmp6 = icmp slt i16 %0, 0
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then
  store i8 0, ptr %retval, align 1
  br label %return

if.else:                                          ; preds = %if.then
  %1 = load i16, ptr %b.addr, align 2
  %cmp10 = icmp sgt i16 %1, 255
  br i1 %cmp10, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.else
  store i8 -1, ptr %retval, align 1
  br label %return

if.end14:                                         ; preds = %if.else, %entry
  %2 = load i16, ptr %b.addr, align 2
  %conv15 = trunc i16 %2 to i8
  store i8 %conv15, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end14, %if.then12, %if.then8
  %3 = load i8, ptr %retval, align 1
  ret i8 %3
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @addAndClamp(i8 noundef zeroext %a, i16 noundef signext %b) #0 {
entry:
  %retval = alloca i8, align 1
  %b.addr = alloca i16, align 2
  %conv = zext i8 %a to i16
  %add = add i16 %conv, %b
  store i16 %add, ptr %b.addr, align 2
  %cmp = icmp ugt i16 %add, 255
  br i1 %cmp, label %if.then, label %if.end14

if.then:                                          ; preds = %entry
  %0 = load i16, ptr %b.addr, align 2
  %cmp6 = icmp slt i16 %0, 0
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then
  store i8 0, ptr %retval, align 1
  br label %return

if.else:                                          ; preds = %if.then
  %1 = load i16, ptr %b.addr, align 2
  %cmp10 = icmp sgt i16 %1, 255
  br i1 %cmp10, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.else
  store i8 -1, ptr %retval, align 1
  br label %return

if.end14:                                         ; preds = %if.else, %entry
  %2 = load i16, ptr %b.addr, align 2
  %conv15 = trunc i16 %2 to i8
  store i8 %conv15, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end14, %if.then12, %if.then8
  %3 = load i8, ptr %retval, align 1
  ret i8 %3
}

; Function Attrs: nounwind ssp uwtable
define internal void @idctRows() #0 {
entry:
  %i = alloca i8, align 1
  %pSrc = alloca ptr, align 8
  %src0 = alloca i16, align 2
  %x4 = alloca i16, align 2
  %x7 = alloca i16, align 2
  %x5 = alloca i16, align 2
  %stg26 = alloca i16, align 2
  %x24 = alloca i16, align 2
  %x17 = alloca i16, align 2
  %tmp2 = alloca i16, align 2
  %tmp3 = alloca i16, align 2
  %x44 = alloca i16, align 2
  %x30 = alloca i16, align 2
  %x31 = alloca i16, align 2
  %x13 = alloca i16, align 2
  %x32 = alloca i16, align 2
  %x40 = alloca i16, align 2
  %x43 = alloca i16, align 2
  %x41 = alloca i16, align 2
  %x42 = alloca i16, align 2
  store ptr @gCoeffBuf, ptr %pSrc, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %storemerge = phi i8 [ 0, %entry ], [ %inc, %if.end ]
  store i8 %storemerge, ptr %i, align 1
  %cmp = icmp ult i8 %storemerge, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load ptr, ptr %pSrc, align 8
  %arrayidx = getelementptr inbounds i16, ptr %0, i64 1
  %1 = load i16, ptr %arrayidx, align 2
  %arrayidx3 = getelementptr inbounds i16, ptr %0, i64 2
  %2 = load i16, ptr %arrayidx3, align 2
  %or1 = or i16 %1, %2
  %arrayidx5 = getelementptr inbounds i16, ptr %0, i64 3
  %3 = load i16, ptr %arrayidx5, align 2
  %or72 = or i16 %or1, %3
  %arrayidx8 = getelementptr inbounds i16, ptr %0, i64 4
  %4 = load i16, ptr %arrayidx8, align 2
  %or103 = or i16 %or72, %4
  %5 = load ptr, ptr %pSrc, align 8
  %arrayidx11 = getelementptr inbounds i16, ptr %5, i64 5
  %6 = load i16, ptr %arrayidx11, align 2
  %or134 = or i16 %or103, %6
  %arrayidx14 = getelementptr inbounds i16, ptr %5, i64 6
  %7 = load i16, ptr %arrayidx14, align 2
  %or165 = or i16 %or134, %7
  %8 = load ptr, ptr %pSrc, align 8
  %arrayidx17 = getelementptr inbounds i16, ptr %8, i64 7
  %9 = load i16, ptr %arrayidx17, align 2
  %or196 = or i16 %or165, %9
  %cmp20 = icmp eq i16 %or196, 0
  br i1 %cmp20, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %10 = load ptr, ptr %pSrc, align 8
  %11 = load i16, ptr %10, align 2
  store i16 %11, ptr %src0, align 2
  %add.ptr = getelementptr inbounds i16, ptr %10, i64 1
  store i16 %11, ptr %add.ptr, align 2
  %add.ptr22 = getelementptr inbounds i16, ptr %10, i64 2
  store i16 %11, ptr %add.ptr22, align 2
  %12 = load ptr, ptr %pSrc, align 8
  %add.ptr23 = getelementptr inbounds i16, ptr %12, i64 3
  store i16 %11, ptr %add.ptr23, align 2
  %13 = load i16, ptr %src0, align 2
  %add.ptr24 = getelementptr inbounds i16, ptr %12, i64 4
  store i16 %13, ptr %add.ptr24, align 2
  %add.ptr25 = getelementptr inbounds i16, ptr %12, i64 5
  store i16 %13, ptr %add.ptr25, align 2
  %14 = load ptr, ptr %pSrc, align 8
  %add.ptr26 = getelementptr inbounds i16, ptr %14, i64 6
  store i16 %13, ptr %add.ptr26, align 2
  %15 = load i16, ptr %src0, align 2
  %add.ptr27 = getelementptr inbounds i16, ptr %14, i64 7
  store i16 %15, ptr %add.ptr27, align 2
  br label %if.end

if.else:                                          ; preds = %for.body
  %16 = load ptr, ptr %pSrc, align 8
  %add.ptr28 = getelementptr inbounds i16, ptr %16, i64 5
  %17 = load i16, ptr %add.ptr28, align 2
  %add.ptr29 = getelementptr inbounds i16, ptr %16, i64 3
  %18 = load i16, ptr %add.ptr29, align 2
  %sub = sub i16 %17, %18
  store i16 %sub, ptr %x4, align 2
  %add = add i16 %17, %18
  store i16 %add, ptr %x7, align 2
  %19 = load ptr, ptr %pSrc, align 8
  %add.ptr36 = getelementptr inbounds i16, ptr %19, i64 1
  %20 = load i16, ptr %add.ptr36, align 2
  %add.ptr37 = getelementptr inbounds i16, ptr %19, i64 7
  %21 = load i16, ptr %add.ptr37, align 2
  %add40 = add i16 %20, %21
  store i16 %add40, ptr %x5, align 2
  %sub44 = sub i16 %20, %21
  %22 = load i16, ptr %x4, align 2
  %sub48 = sub i16 %22, %sub44
  %call = call signext i16 @imul_b5(i16 noundef signext %sub48)
  %call50 = call signext i16 @imul_b4(i16 noundef signext %sub44)
  %sub53 = sub i16 %call50, %call
  store i16 %sub53, ptr %stg26, align 2
  %call56 = call signext i16 @imul_b2(i16 noundef signext %22)
  %sub58 = sub i16 %call, %call56
  store i16 %sub58, ptr %x24, align 2
  %23 = load i16, ptr %x5, align 2
  %24 = load i16, ptr %x7, align 2
  %sub62 = sub i16 %23, %24
  %add66 = add i16 %23, %24
  store i16 %add66, ptr %x17, align 2
  %25 = load i16, ptr %stg26, align 2
  %sub70 = sub i16 %25, %add66
  store i16 %sub70, ptr %tmp2, align 2
  %call72 = call signext i16 @imul_b1_b3(i16 noundef signext %sub62)
  %sub75 = sub i16 %call72, %sub70
  store i16 %sub75, ptr %tmp3, align 2
  %26 = load i16, ptr %x24, align 2
  %add79 = add i16 %sub75, %26
  store i16 %add79, ptr %x44, align 2
  %27 = load ptr, ptr %pSrc, align 8
  %28 = load i16, ptr %27, align 2
  %add.ptr83 = getelementptr inbounds i16, ptr %27, i64 4
  %29 = load i16, ptr %add.ptr83, align 2
  %add86 = add i16 %28, %29
  store i16 %add86, ptr %x30, align 2
  %sub90 = sub i16 %28, %29
  store i16 %sub90, ptr %x31, align 2
  %30 = load ptr, ptr %pSrc, align 8
  %add.ptr92 = getelementptr inbounds i16, ptr %30, i64 2
  %31 = load i16, ptr %add.ptr92, align 2
  %add.ptr93 = getelementptr inbounds i16, ptr %30, i64 6
  %32 = load i16, ptr %add.ptr93, align 2
  %sub96 = sub i16 %31, %32
  %add100 = add i16 %31, %32
  store i16 %add100, ptr %x13, align 2
  %call102 = call signext i16 @imul_b1_b3(i16 noundef signext %sub96)
  %sub105 = sub i16 %call102, %add100
  store i16 %sub105, ptr %x32, align 2
  %33 = load i16, ptr %x30, align 2
  %add109 = add i16 %33, %add100
  store i16 %add109, ptr %x40, align 2
  %34 = load i16, ptr %x13, align 2
  %sub113 = sub i16 %33, %34
  store i16 %sub113, ptr %x43, align 2
  %35 = load i16, ptr %x31, align 2
  %36 = load i16, ptr %x32, align 2
  %add117 = add i16 %35, %36
  store i16 %add117, ptr %x41, align 2
  %sub121 = sub i16 %35, %36
  store i16 %sub121, ptr %x42, align 2
  %37 = load i16, ptr %x40, align 2
  %38 = load i16, ptr %x17, align 2
  %add125 = add i16 %37, %38
  %39 = load ptr, ptr %pSrc, align 8
  store i16 %add125, ptr %39, align 2
  %40 = load i16, ptr %x41, align 2
  %41 = load i16, ptr %tmp2, align 2
  %add130 = add i16 %40, %41
  %add.ptr132 = getelementptr inbounds i16, ptr %39, i64 1
  store i16 %add130, ptr %add.ptr132, align 2
  %42 = load i16, ptr %x42, align 2
  %43 = load i16, ptr %tmp3, align 2
  %add135 = add i16 %42, %43
  %44 = load ptr, ptr %pSrc, align 8
  %add.ptr137 = getelementptr inbounds i16, ptr %44, i64 2
  store i16 %add135, ptr %add.ptr137, align 2
  %45 = load i16, ptr %x43, align 2
  %46 = load i16, ptr %x44, align 2
  %sub140 = sub i16 %45, %46
  %add.ptr142 = getelementptr inbounds i16, ptr %44, i64 3
  store i16 %sub140, ptr %add.ptr142, align 2
  %add145 = add i16 %45, %46
  %47 = load ptr, ptr %pSrc, align 8
  %add.ptr147 = getelementptr inbounds i16, ptr %47, i64 4
  store i16 %add145, ptr %add.ptr147, align 2
  %48 = load i16, ptr %x42, align 2
  %49 = load i16, ptr %tmp3, align 2
  %sub150 = sub i16 %48, %49
  %add.ptr152 = getelementptr inbounds i16, ptr %47, i64 5
  store i16 %sub150, ptr %add.ptr152, align 2
  %50 = load i16, ptr %x41, align 2
  %51 = load i16, ptr %tmp2, align 2
  %sub155 = sub i16 %50, %51
  %52 = load ptr, ptr %pSrc, align 8
  %add.ptr157 = getelementptr inbounds i16, ptr %52, i64 6
  store i16 %sub155, ptr %add.ptr157, align 2
  %53 = load i16, ptr %x40, align 2
  %54 = load i16, ptr %x17, align 2
  %sub160 = sub i16 %53, %54
  %add.ptr162 = getelementptr inbounds i16, ptr %52, i64 7
  store i16 %sub160, ptr %add.ptr162, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %55 = load ptr, ptr %pSrc, align 8
  %add.ptr163 = getelementptr inbounds i16, ptr %55, i64 8
  store ptr %add.ptr163, ptr %pSrc, align 8
  %56 = load i8, ptr %i, align 1
  %inc = add i8 %56, 1
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
  %x4 = alloca i16, align 2
  %x7 = alloca i16, align 2
  %x5 = alloca i16, align 2
  %stg26 = alloca i16, align 2
  %x24 = alloca i16, align 2
  %x17 = alloca i16, align 2
  %tmp2 = alloca i16, align 2
  %tmp3 = alloca i16, align 2
  %x44 = alloca i16, align 2
  %x30 = alloca i16, align 2
  %x31 = alloca i16, align 2
  %x13 = alloca i16, align 2
  %x32 = alloca i16, align 2
  %x40 = alloca i16, align 2
  %x43 = alloca i16, align 2
  %x41 = alloca i16, align 2
  %x42 = alloca i16, align 2
  store ptr @gCoeffBuf, ptr %pSrc, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %storemerge = phi i8 [ 0, %entry ], [ %inc, %if.end ]
  store i8 %storemerge, ptr %i, align 1
  %cmp = icmp ult i8 %storemerge, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load ptr, ptr %pSrc, align 8
  %arrayidx = getelementptr inbounds i16, ptr %0, i64 8
  %1 = load i16, ptr %arrayidx, align 2
  %arrayidx3 = getelementptr inbounds i16, ptr %0, i64 16
  %2 = load i16, ptr %arrayidx3, align 2
  %or1 = or i16 %1, %2
  %arrayidx5 = getelementptr inbounds i16, ptr %0, i64 24
  %3 = load i16, ptr %arrayidx5, align 2
  %or72 = or i16 %or1, %3
  %arrayidx8 = getelementptr inbounds i16, ptr %0, i64 32
  %4 = load i16, ptr %arrayidx8, align 2
  %or103 = or i16 %or72, %4
  %5 = load ptr, ptr %pSrc, align 8
  %arrayidx11 = getelementptr inbounds i16, ptr %5, i64 40
  %6 = load i16, ptr %arrayidx11, align 2
  %or134 = or i16 %or103, %6
  %arrayidx14 = getelementptr inbounds i16, ptr %5, i64 48
  %7 = load i16, ptr %arrayidx14, align 2
  %or165 = or i16 %or134, %7
  %8 = load ptr, ptr %pSrc, align 8
  %arrayidx17 = getelementptr inbounds i16, ptr %8, i64 56
  %9 = load i16, ptr %arrayidx17, align 2
  %or196 = or i16 %or165, %9
  %cmp20 = icmp eq i16 %or196, 0
  br i1 %cmp20, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %10 = load ptr, ptr %pSrc, align 8
  %11 = load i16, ptr %10, align 2
  %conv22 = sext i16 %11 to i32
  %add = add nsw i32 %conv22, 64
  %shr = lshr i32 %add, 7
  %12 = trunc i32 %shr to i16
  %conv24 = add i16 %12, 128
  %call = call zeroext i8 @clamp(i16 noundef signext %conv24)
  store i8 %call, ptr %c, align 1
  %conv25 = zext i8 %call to i16
  %13 = load ptr, ptr %pSrc, align 8
  store i16 %conv25, ptr %13, align 2
  %conv26 = zext i8 %call to i16
  %add.ptr27 = getelementptr inbounds i16, ptr %13, i64 8
  store i16 %conv26, ptr %add.ptr27, align 2
  %14 = load i8, ptr %c, align 1
  %conv28 = zext i8 %14 to i16
  %15 = load ptr, ptr %pSrc, align 8
  %add.ptr29 = getelementptr inbounds i16, ptr %15, i64 16
  store i16 %conv28, ptr %add.ptr29, align 2
  %conv30 = zext i8 %14 to i16
  %add.ptr31 = getelementptr inbounds i16, ptr %15, i64 24
  store i16 %conv30, ptr %add.ptr31, align 2
  %16 = load i8, ptr %c, align 1
  %conv32 = zext i8 %16 to i16
  %17 = load ptr, ptr %pSrc, align 8
  %add.ptr33 = getelementptr inbounds i16, ptr %17, i64 32
  store i16 %conv32, ptr %add.ptr33, align 2
  %conv34 = zext i8 %16 to i16
  %add.ptr35 = getelementptr inbounds i16, ptr %17, i64 40
  store i16 %conv34, ptr %add.ptr35, align 2
  %18 = load i8, ptr %c, align 1
  %conv36 = zext i8 %18 to i16
  %19 = load ptr, ptr %pSrc, align 8
  %add.ptr37 = getelementptr inbounds i16, ptr %19, i64 48
  store i16 %conv36, ptr %add.ptr37, align 2
  %conv38 = zext i8 %18 to i16
  %add.ptr39 = getelementptr inbounds i16, ptr %19, i64 56
  store i16 %conv38, ptr %add.ptr39, align 2
  br label %if.end

if.else:                                          ; preds = %for.body
  %20 = load ptr, ptr %pSrc, align 8
  %add.ptr40 = getelementptr inbounds i16, ptr %20, i64 40
  %21 = load i16, ptr %add.ptr40, align 2
  %add.ptr41 = getelementptr inbounds i16, ptr %20, i64 24
  %22 = load i16, ptr %add.ptr41, align 2
  %sub = sub i16 %21, %22
  store i16 %sub, ptr %x4, align 2
  %add47 = add i16 %21, %22
  store i16 %add47, ptr %x7, align 2
  %23 = load ptr, ptr %pSrc, align 8
  %add.ptr49 = getelementptr inbounds i16, ptr %23, i64 8
  %24 = load i16, ptr %add.ptr49, align 2
  %add.ptr50 = getelementptr inbounds i16, ptr %23, i64 56
  %25 = load i16, ptr %add.ptr50, align 2
  %add53 = add i16 %24, %25
  store i16 %add53, ptr %x5, align 2
  %sub57 = sub i16 %24, %25
  %26 = load i16, ptr %x4, align 2
  %sub61 = sub i16 %26, %sub57
  %call63 = call signext i16 @imul_b5(i16 noundef signext %sub61)
  %call64 = call signext i16 @imul_b4(i16 noundef signext %sub57)
  %sub67 = sub i16 %call64, %call63
  store i16 %sub67, ptr %stg26, align 2
  %call70 = call signext i16 @imul_b2(i16 noundef signext %26)
  %sub72 = sub i16 %call63, %call70
  store i16 %sub72, ptr %x24, align 2
  %27 = load i16, ptr %x5, align 2
  %28 = load i16, ptr %x7, align 2
  %sub76 = sub i16 %27, %28
  %add80 = add i16 %27, %28
  store i16 %add80, ptr %x17, align 2
  %29 = load i16, ptr %stg26, align 2
  %sub84 = sub i16 %29, %add80
  store i16 %sub84, ptr %tmp2, align 2
  %call86 = call signext i16 @imul_b1_b3(i16 noundef signext %sub76)
  %sub89 = sub i16 %call86, %sub84
  store i16 %sub89, ptr %tmp3, align 2
  %30 = load i16, ptr %x24, align 2
  %add93 = add i16 %sub89, %30
  store i16 %add93, ptr %x44, align 2
  %31 = load ptr, ptr %pSrc, align 8
  %32 = load i16, ptr %31, align 2
  %add.ptr96 = getelementptr inbounds i16, ptr %31, i64 32
  %33 = load i16, ptr %add.ptr96, align 2
  %add99 = add i16 %32, %33
  store i16 %add99, ptr %x30, align 2
  %sub103 = sub i16 %32, %33
  store i16 %sub103, ptr %x31, align 2
  %34 = load ptr, ptr %pSrc, align 8
  %add.ptr105 = getelementptr inbounds i16, ptr %34, i64 16
  %35 = load i16, ptr %add.ptr105, align 2
  %add.ptr106 = getelementptr inbounds i16, ptr %34, i64 48
  %36 = load i16, ptr %add.ptr106, align 2
  %sub109 = sub i16 %35, %36
  %add113 = add i16 %35, %36
  store i16 %add113, ptr %x13, align 2
  %call115 = call signext i16 @imul_b1_b3(i16 noundef signext %sub109)
  %sub118 = sub i16 %call115, %add113
  store i16 %sub118, ptr %x32, align 2
  %37 = load i16, ptr %x30, align 2
  %add122 = add i16 %37, %add113
  store i16 %add122, ptr %x40, align 2
  %38 = load i16, ptr %x13, align 2
  %sub126 = sub i16 %37, %38
  store i16 %sub126, ptr %x43, align 2
  %39 = load i16, ptr %x31, align 2
  %40 = load i16, ptr %x32, align 2
  %add130 = add i16 %39, %40
  store i16 %add130, ptr %x41, align 2
  %sub134 = sub i16 %39, %40
  store i16 %sub134, ptr %x42, align 2
  %41 = load i16, ptr %x40, align 2
  %conv136 = sext i16 %41 to i32
  %42 = load i16, ptr %x17, align 2
  %conv137 = sext i16 %42 to i32
  %add138 = add nsw i32 %conv136, %conv137
  %add139 = add nsw i32 %add138, 64
  %shr140 = lshr i32 %add139, 7
  %43 = trunc i32 %shr140 to i16
  %conv142 = add i16 %43, 128
  %call143 = call zeroext i8 @clamp(i16 noundef signext %conv142)
  %conv144 = zext i8 %call143 to i16
  %44 = load ptr, ptr %pSrc, align 8
  store i16 %conv144, ptr %44, align 2
  %45 = load i16, ptr %x41, align 2
  %conv146 = sext i16 %45 to i32
  %46 = load i16, ptr %tmp2, align 2
  %conv147 = sext i16 %46 to i32
  %add148 = add nsw i32 %conv146, %conv147
  %add149 = add nsw i32 %add148, 64
  %shr150 = lshr i32 %add149, 7
  %47 = trunc i32 %shr150 to i16
  %conv152 = add i16 %47, 128
  %call153 = call zeroext i8 @clamp(i16 noundef signext %conv152)
  %conv154 = zext i8 %call153 to i16
  %48 = load ptr, ptr %pSrc, align 8
  %add.ptr155 = getelementptr inbounds i16, ptr %48, i64 8
  store i16 %conv154, ptr %add.ptr155, align 2
  %49 = load i16, ptr %x42, align 2
  %conv156 = sext i16 %49 to i32
  %50 = load i16, ptr %tmp3, align 2
  %conv157 = sext i16 %50 to i32
  %add158 = add nsw i32 %conv156, %conv157
  %add159 = add nsw i32 %add158, 64
  %shr160 = lshr i32 %add159, 7
  %51 = trunc i32 %shr160 to i16
  %conv162 = add i16 %51, 128
  %call163 = call zeroext i8 @clamp(i16 noundef signext %conv162)
  %conv164 = zext i8 %call163 to i16
  %52 = load ptr, ptr %pSrc, align 8
  %add.ptr165 = getelementptr inbounds i16, ptr %52, i64 16
  store i16 %conv164, ptr %add.ptr165, align 2
  %53 = load i16, ptr %x43, align 2
  %conv166 = sext i16 %53 to i32
  %54 = load i16, ptr %x44, align 2
  %conv167 = sext i16 %54 to i32
  %sub168 = sub nsw i32 %conv166, %conv167
  %add169 = add nsw i32 %sub168, 64
  %shr170 = lshr i32 %add169, 7
  %55 = trunc i32 %shr170 to i16
  %conv172 = add i16 %55, 128
  %call173 = call zeroext i8 @clamp(i16 noundef signext %conv172)
  %conv174 = zext i8 %call173 to i16
  %56 = load ptr, ptr %pSrc, align 8
  %add.ptr175 = getelementptr inbounds i16, ptr %56, i64 24
  store i16 %conv174, ptr %add.ptr175, align 2
  %57 = load i16, ptr %x43, align 2
  %conv176 = sext i16 %57 to i32
  %58 = load i16, ptr %x44, align 2
  %conv177 = sext i16 %58 to i32
  %add178 = add nsw i32 %conv176, %conv177
  %add179 = add nsw i32 %add178, 64
  %shr180 = lshr i32 %add179, 7
  %59 = trunc i32 %shr180 to i16
  %conv182 = add i16 %59, 128
  %call183 = call zeroext i8 @clamp(i16 noundef signext %conv182)
  %conv184 = zext i8 %call183 to i16
  %60 = load ptr, ptr %pSrc, align 8
  %add.ptr185 = getelementptr inbounds i16, ptr %60, i64 32
  store i16 %conv184, ptr %add.ptr185, align 2
  %61 = load i16, ptr %x42, align 2
  %conv186 = sext i16 %61 to i32
  %62 = load i16, ptr %tmp3, align 2
  %conv187 = sext i16 %62 to i32
  %sub188 = sub nsw i32 %conv186, %conv187
  %add189 = add nsw i32 %sub188, 64
  %shr190 = lshr i32 %add189, 7
  %63 = trunc i32 %shr190 to i16
  %conv192 = add i16 %63, 128
  %call193 = call zeroext i8 @clamp(i16 noundef signext %conv192)
  %conv194 = zext i8 %call193 to i16
  %64 = load ptr, ptr %pSrc, align 8
  %add.ptr195 = getelementptr inbounds i16, ptr %64, i64 40
  store i16 %conv194, ptr %add.ptr195, align 2
  %65 = load i16, ptr %x41, align 2
  %conv196 = sext i16 %65 to i32
  %66 = load i16, ptr %tmp2, align 2
  %conv197 = sext i16 %66 to i32
  %sub198 = sub nsw i32 %conv196, %conv197
  %add199 = add nsw i32 %sub198, 64
  %shr200 = lshr i32 %add199, 7
  %67 = trunc i32 %shr200 to i16
  %conv202 = add i16 %67, 128
  %call203 = call zeroext i8 @clamp(i16 noundef signext %conv202)
  %conv204 = zext i8 %call203 to i16
  %68 = load ptr, ptr %pSrc, align 8
  %add.ptr205 = getelementptr inbounds i16, ptr %68, i64 48
  store i16 %conv204, ptr %add.ptr205, align 2
  %69 = load i16, ptr %x40, align 2
  %conv206 = sext i16 %69 to i32
  %70 = load i16, ptr %x17, align 2
  %conv207 = sext i16 %70 to i32
  %sub208 = sub nsw i32 %conv206, %conv207
  %add209 = add nsw i32 %sub208, 64
  %shr210 = lshr i32 %add209, 7
  %71 = trunc i32 %shr210 to i16
  %conv212 = add i16 %71, 128
  %call213 = call zeroext i8 @clamp(i16 noundef signext %conv212)
  %conv214 = zext i8 %call213 to i16
  %72 = load ptr, ptr %pSrc, align 8
  %add.ptr215 = getelementptr inbounds i16, ptr %72, i64 56
  store i16 %conv214, ptr %add.ptr215, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %73 = load ptr, ptr %pSrc, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %73, i64 1
  store ptr %incdec.ptr, ptr %pSrc, align 8
  %74 = load i8, ptr %i, align 1
  %inc = add i8 %74, 1
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
  %idx.ext = zext i8 %dstOfs to i64
  %add.ptr = getelementptr inbounds i8, ptr @gMCUBufR, i64 %idx.ext
  store ptr %add.ptr, ptr %pRDst, align 8
  %idx.ext2 = zext i8 %dstOfs to i64
  %add.ptr3 = getelementptr inbounds i8, ptr @gMCUBufG, i64 %idx.ext2
  store ptr %add.ptr3, ptr %pGDst, align 8
  %0 = load i8, ptr %dstOfs.addr, align 1
  %idx.ext5 = zext i8 %0 to i64
  %add.ptr6 = getelementptr inbounds i8, ptr @gMCUBufB, i64 %idx.ext5
  store ptr %add.ptr6, ptr %pBDst, align 8
  store ptr @gCoeffBuf, ptr %pSrc, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i8 [ 64, %entry ], [ %dec, %for.body ]
  store i8 %storemerge, ptr %i, align 1
  %cmp.not = icmp eq i8 %storemerge, 0
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %pSrc, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %1, i64 1
  store ptr %incdec.ptr, ptr %pSrc, align 8
  %2 = load i16, ptr %1, align 2
  %conv9 = trunc i16 %2 to i8
  store i8 %conv9, ptr %c, align 1
  %3 = load ptr, ptr %pRDst, align 8
  %incdec.ptr10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %incdec.ptr10, ptr %pRDst, align 8
  store i8 %conv9, ptr %3, align 1
  %4 = load ptr, ptr %pGDst, align 8
  %incdec.ptr11 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %incdec.ptr11, ptr %pGDst, align 8
  store i8 %conv9, ptr %4, align 1
  %5 = load i8, ptr %c, align 1
  %6 = load ptr, ptr %pBDst, align 8
  %incdec.ptr12 = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %incdec.ptr12, ptr %pBDst, align 8
  store i8 %5, ptr %6, align 1
  %7 = load i8, ptr %i, align 1
  %dec = add i8 %7, -1
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @convertCb(i8 noundef zeroext %dstOfs) #0 {
entry:
  %i = alloca i8, align 1
  %pDstG = alloca ptr, align 8
  %pDstB = alloca ptr, align 8
  %pSrc = alloca ptr, align 8
  %cb = alloca i8, align 1
  %idx.ext = zext i8 %dstOfs to i64
  %add.ptr = getelementptr inbounds i8, ptr @gMCUBufG, i64 %idx.ext
  store ptr %add.ptr, ptr %pDstG, align 8
  %idx.ext2 = zext i8 %dstOfs to i64
  %add.ptr3 = getelementptr inbounds i8, ptr @gMCUBufB, i64 %idx.ext2
  store ptr %add.ptr3, ptr %pDstB, align 8
  store ptr @gCoeffBuf, ptr %pSrc, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i8 [ 64, %entry ], [ %dec, %for.body ]
  store i8 %storemerge, ptr %i, align 1
  %cmp.not = icmp eq i8 %storemerge, 0
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %0 = load ptr, ptr %pSrc, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %0, i64 1
  store ptr %incdec.ptr, ptr %pSrc, align 8
  %1 = load i16, ptr %0, align 2
  %conv6 = trunc i16 %1 to i8
  store i8 %conv6, ptr %cb, align 1
  %conv6.mask = and i16 %1, 255
  %narrow = mul nuw nsw i16 %conv6.mask, 88
  %2 = lshr i16 %narrow, 8
  %sub = add nsw i16 %2, -44
  %3 = load ptr, ptr %pDstG, align 8
  %4 = load i8, ptr %3, align 1
  %call = call zeroext i8 @subAndClamp(i8 noundef zeroext %4, i16 noundef signext %sub)
  store i8 %call, ptr %3, align 1
  %incdec.ptr9 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %incdec.ptr9, ptr %pDstG, align 8
  %5 = load i8, ptr %cb, align 1
  %conv10 = zext i8 %5 to i16
  %conv11 = zext i8 %5 to i16
  %mul12 = mul nuw i16 %conv11, 198
  %shr13 = lshr i16 %mul12, 8
  %add = add nuw nsw i16 %shr13, %conv10
  %sub14 = add nsw i16 %add, -227
  %6 = load ptr, ptr %pDstB, align 8
  %7 = load i8, ptr %6, align 1
  %call17 = call zeroext i8 @addAndClamp(i8 noundef zeroext %7, i16 noundef signext %sub14)
  store i8 %call17, ptr %6, align 1
  %incdec.ptr18 = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %incdec.ptr18, ptr %pDstB, align 8
  %8 = load i8, ptr %i, align 1
  %dec = add i8 %8, -1
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @convertCr(i8 noundef zeroext %dstOfs) #0 {
entry:
  %i = alloca i8, align 1
  %pDstR = alloca ptr, align 8
  %pDstG = alloca ptr, align 8
  %pSrc = alloca ptr, align 8
  %cr = alloca i8, align 1
  %idx.ext = zext i8 %dstOfs to i64
  %add.ptr = getelementptr inbounds i8, ptr @gMCUBufR, i64 %idx.ext
  store ptr %add.ptr, ptr %pDstR, align 8
  %idx.ext2 = zext i8 %dstOfs to i64
  %add.ptr3 = getelementptr inbounds i8, ptr @gMCUBufG, i64 %idx.ext2
  store ptr %add.ptr3, ptr %pDstG, align 8
  store ptr @gCoeffBuf, ptr %pSrc, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i8 [ 64, %entry ], [ %dec, %for.body ]
  store i8 %storemerge, ptr %i, align 1
  %cmp.not = icmp eq i8 %storemerge, 0
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %0 = load ptr, ptr %pSrc, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %0, i64 1
  store ptr %incdec.ptr, ptr %pSrc, align 8
  %1 = load i16, ptr %0, align 2
  %conv6 = trunc i16 %1 to i8
  store i8 %conv6, ptr %cr, align 1
  %conv6.mask = and i16 %1, 255
  %conv6.mask1 = and i16 %1, 255
  %narrow = mul nuw nsw i16 %conv6.mask1, 103
  %2 = lshr i16 %narrow, 8
  %narrow2 = add nuw nsw i16 %conv6.mask, %2
  %sub = add nsw i16 %narrow2, -179
  %3 = load ptr, ptr %pDstR, align 8
  %4 = load i8, ptr %3, align 1
  %call = call zeroext i8 @addAndClamp(i8 noundef zeroext %4, i16 noundef signext %sub)
  store i8 %call, ptr %3, align 1
  %incdec.ptr10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %incdec.ptr10, ptr %pDstR, align 8
  %5 = load i8, ptr %cr, align 1
  %conv11 = zext i8 %5 to i16
  %mul12 = mul nuw i16 %conv11, 183
  %shr13 = lshr i16 %mul12, 8
  %sub14 = add nsw i16 %shr13, -91
  %6 = load ptr, ptr %pDstG, align 8
  %7 = load i8, ptr %6, align 1
  %call17 = call zeroext i8 @subAndClamp(i8 noundef zeroext %7, i16 noundef signext %sub14)
  store i8 %call17, ptr %6, align 1
  %incdec.ptr18 = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %incdec.ptr18, ptr %pDstG, align 8
  %8 = load i8, ptr %i, align 1
  %dec = add i8 %8, -1
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @upsampleCbV(i8 noundef zeroext %srcOfs, i8 noundef zeroext %dstOfs) #0 {
entry:
  %dstOfs.addr = alloca i8, align 1
  %x = alloca i8, align 1
  %y = alloca i8, align 1
  %pSrc = alloca ptr, align 8
  %pDstG = alloca ptr, align 8
  %pDstB = alloca ptr, align 8
  %cb = alloca i8, align 1
  %cbG = alloca i16, align 2
  %cbB = alloca i16, align 2
  store i8 %dstOfs, ptr %dstOfs.addr, align 1
  %idx.ext = zext i8 %srcOfs to i64
  %add.ptr = getelementptr inbounds i16, ptr @gCoeffBuf, i64 %idx.ext
  store ptr %add.ptr, ptr %pSrc, align 8
  %idx.ext2 = zext i8 %dstOfs to i64
  %add.ptr3 = getelementptr inbounds i8, ptr @gMCUBufG, i64 %idx.ext2
  store ptr %add.ptr3, ptr %pDstG, align 8
  %0 = load i8, ptr %dstOfs.addr, align 1
  %idx.ext5 = zext i8 %0 to i64
  %add.ptr6 = getelementptr inbounds i8, ptr @gMCUBufB, i64 %idx.ext5
  store ptr %add.ptr6, ptr %pDstB, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %storemerge = phi i8 [ 0, %entry ], [ %inc40, %for.end ]
  store i8 %storemerge, ptr %y, align 1
  %cmp = icmp ult i8 %storemerge, 4
  br i1 %cmp, label %for.cond9, label %for.end41

for.cond9:                                        ; preds = %for.cond, %for.body13
  %storemerge1 = phi i8 [ %inc, %for.body13 ], [ 0, %for.cond ]
  store i8 %storemerge1, ptr %x, align 1
  %cmp11 = icmp ult i8 %storemerge1, 8
  br i1 %cmp11, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond9
  %1 = load ptr, ptr %pSrc, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %1, i64 1
  store ptr %incdec.ptr, ptr %pSrc, align 8
  %2 = load i16, ptr %1, align 2
  %conv14 = trunc i16 %2 to i8
  store i8 %conv14, ptr %cb, align 1
  %conv14.mask = and i16 %2, 255
  %narrow = mul nuw nsw i16 %conv14.mask, 88
  %3 = lshr i16 %narrow, 8
  %sub = add nsw i16 %3, -44
  store i16 %sub, ptr %cbG, align 2
  %4 = load ptr, ptr %pDstG, align 8
  %5 = load i8, ptr %4, align 1
  %call = call zeroext i8 @subAndClamp(i8 noundef zeroext %5, i16 noundef signext %sub)
  store i8 %call, ptr %4, align 1
  %arrayidx18 = getelementptr inbounds i8, ptr %4, i64 8
  %6 = load i8, ptr %arrayidx18, align 1
  %7 = load i16, ptr %cbG, align 2
  %call19 = call zeroext i8 @subAndClamp(i8 noundef zeroext %6, i16 noundef signext %7)
  %8 = load ptr, ptr %pDstG, align 8
  %arrayidx20 = getelementptr inbounds i8, ptr %8, i64 8
  store i8 %call19, ptr %arrayidx20, align 1
  %9 = load i8, ptr %cb, align 1
  %conv21 = zext i8 %9 to i16
  %conv22 = zext i8 %9 to i16
  %mul23 = mul nuw i16 %conv22, 198
  %shr24 = lshr i16 %mul23, 8
  %add = add nuw nsw i16 %shr24, %conv21
  %sub25 = add nsw i16 %add, -227
  store i16 %sub25, ptr %cbB, align 2
  %10 = load ptr, ptr %pDstB, align 8
  %11 = load i8, ptr %10, align 1
  %call28 = call zeroext i8 @addAndClamp(i8 noundef zeroext %11, i16 noundef signext %sub25)
  store i8 %call28, ptr %10, align 1
  %arrayidx30 = getelementptr inbounds i8, ptr %10, i64 8
  %12 = load i8, ptr %arrayidx30, align 1
  %13 = load i16, ptr %cbB, align 2
  %call31 = call zeroext i8 @addAndClamp(i8 noundef zeroext %12, i16 noundef signext %13)
  %14 = load ptr, ptr %pDstB, align 8
  %arrayidx32 = getelementptr inbounds i8, ptr %14, i64 8
  store i8 %call31, ptr %arrayidx32, align 1
  %15 = load ptr, ptr %pDstG, align 8
  %incdec.ptr33 = getelementptr inbounds i8, ptr %15, i64 1
  store ptr %incdec.ptr33, ptr %pDstG, align 8
  %incdec.ptr34 = getelementptr inbounds i8, ptr %14, i64 1
  store ptr %incdec.ptr34, ptr %pDstB, align 8
  %16 = load i8, ptr %x, align 1
  %inc = add i8 %16, 1
  br label %for.cond9, !llvm.loop !20

for.end:                                          ; preds = %for.cond9
  %17 = load ptr, ptr %pDstG, align 8
  %add.ptr36 = getelementptr inbounds i8, ptr %17, i64 8
  store ptr %add.ptr36, ptr %pDstG, align 8
  %18 = load ptr, ptr %pDstB, align 8
  %add.ptr38 = getelementptr inbounds i8, ptr %18, i64 8
  store ptr %add.ptr38, ptr %pDstB, align 8
  %19 = load i8, ptr %y, align 1
  %inc40 = add i8 %19, 1
  br label %for.cond, !llvm.loop !21

for.end41:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @upsampleCrV(i8 noundef zeroext %srcOfs, i8 noundef zeroext %dstOfs) #0 {
entry:
  %dstOfs.addr = alloca i8, align 1
  %x = alloca i8, align 1
  %y = alloca i8, align 1
  %pSrc = alloca ptr, align 8
  %pDstR = alloca ptr, align 8
  %pDstG = alloca ptr, align 8
  %cr = alloca i8, align 1
  %crR = alloca i16, align 2
  %crG = alloca i16, align 2
  store i8 %dstOfs, ptr %dstOfs.addr, align 1
  %idx.ext = zext i8 %srcOfs to i64
  %add.ptr = getelementptr inbounds i16, ptr @gCoeffBuf, i64 %idx.ext
  store ptr %add.ptr, ptr %pSrc, align 8
  %idx.ext2 = zext i8 %dstOfs to i64
  %add.ptr3 = getelementptr inbounds i8, ptr @gMCUBufR, i64 %idx.ext2
  store ptr %add.ptr3, ptr %pDstR, align 8
  %0 = load i8, ptr %dstOfs.addr, align 1
  %idx.ext5 = zext i8 %0 to i64
  %add.ptr6 = getelementptr inbounds i8, ptr @gMCUBufG, i64 %idx.ext5
  store ptr %add.ptr6, ptr %pDstG, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %storemerge = phi i8 [ 0, %entry ], [ %inc40, %for.end ]
  store i8 %storemerge, ptr %y, align 1
  %cmp = icmp ult i8 %storemerge, 4
  br i1 %cmp, label %for.cond9, label %for.end41

for.cond9:                                        ; preds = %for.cond, %for.body13
  %storemerge1 = phi i8 [ %inc, %for.body13 ], [ 0, %for.cond ]
  store i8 %storemerge1, ptr %x, align 1
  %cmp11 = icmp ult i8 %storemerge1, 8
  br i1 %cmp11, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond9
  %1 = load ptr, ptr %pSrc, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %1, i64 1
  store ptr %incdec.ptr, ptr %pSrc, align 8
  %2 = load i16, ptr %1, align 2
  %conv14 = trunc i16 %2 to i8
  store i8 %conv14, ptr %cr, align 1
  %conv14.mask = and i16 %2, 255
  %conv14.mask2 = and i16 %2, 255
  %narrow = mul nuw nsw i16 %conv14.mask2, 103
  %3 = lshr i16 %narrow, 8
  %narrow3 = add nuw nsw i16 %conv14.mask, %3
  %sub = add nsw i16 %narrow3, -179
  store i16 %sub, ptr %crR, align 2
  %4 = load ptr, ptr %pDstR, align 8
  %5 = load i8, ptr %4, align 1
  %call = call zeroext i8 @addAndClamp(i8 noundef zeroext %5, i16 noundef signext %sub)
  store i8 %call, ptr %4, align 1
  %arrayidx19 = getelementptr inbounds i8, ptr %4, i64 8
  %6 = load i8, ptr %arrayidx19, align 1
  %7 = load i16, ptr %crR, align 2
  %call20 = call zeroext i8 @addAndClamp(i8 noundef zeroext %6, i16 noundef signext %7)
  %8 = load ptr, ptr %pDstR, align 8
  %arrayidx21 = getelementptr inbounds i8, ptr %8, i64 8
  store i8 %call20, ptr %arrayidx21, align 1
  %9 = load i8, ptr %cr, align 1
  %conv22 = zext i8 %9 to i16
  %mul23 = mul nuw i16 %conv22, 183
  %shr24 = lshr i16 %mul23, 8
  %sub25 = add nsw i16 %shr24, -91
  store i16 %sub25, ptr %crG, align 2
  %10 = load ptr, ptr %pDstG, align 8
  %11 = load i8, ptr %10, align 1
  %call28 = call zeroext i8 @subAndClamp(i8 noundef zeroext %11, i16 noundef signext %sub25)
  store i8 %call28, ptr %10, align 1
  %arrayidx30 = getelementptr inbounds i8, ptr %10, i64 8
  %12 = load i8, ptr %arrayidx30, align 1
  %13 = load i16, ptr %crG, align 2
  %call31 = call zeroext i8 @subAndClamp(i8 noundef zeroext %12, i16 noundef signext %13)
  %14 = load ptr, ptr %pDstG, align 8
  %arrayidx32 = getelementptr inbounds i8, ptr %14, i64 8
  store i8 %call31, ptr %arrayidx32, align 1
  %15 = load ptr, ptr %pDstR, align 8
  %incdec.ptr33 = getelementptr inbounds i8, ptr %15, i64 1
  store ptr %incdec.ptr33, ptr %pDstR, align 8
  %incdec.ptr34 = getelementptr inbounds i8, ptr %14, i64 1
  store ptr %incdec.ptr34, ptr %pDstG, align 8
  %16 = load i8, ptr %x, align 1
  %inc = add i8 %16, 1
  br label %for.cond9, !llvm.loop !22

for.end:                                          ; preds = %for.cond9
  %17 = load ptr, ptr %pDstR, align 8
  %add.ptr36 = getelementptr inbounds i8, ptr %17, i64 8
  store ptr %add.ptr36, ptr %pDstR, align 8
  %18 = load ptr, ptr %pDstG, align 8
  %add.ptr38 = getelementptr inbounds i8, ptr %18, i64 8
  store ptr %add.ptr38, ptr %pDstG, align 8
  %19 = load i8, ptr %y, align 1
  %inc40 = add i8 %19, 1
  br label %for.cond, !llvm.loop !23

for.end41:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @upsampleCbH(i8 noundef zeroext %srcOfs, i8 noundef zeroext %dstOfs) #0 {
entry:
  %dstOfs.addr = alloca i8, align 1
  %x = alloca i8, align 1
  %y = alloca i8, align 1
  %pSrc = alloca ptr, align 8
  %pDstG = alloca ptr, align 8
  %pDstB = alloca ptr, align 8
  %cb = alloca i8, align 1
  %cbG = alloca i16, align 2
  %cbB = alloca i16, align 2
  store i8 %dstOfs, ptr %dstOfs.addr, align 1
  %idx.ext = zext i8 %srcOfs to i64
  %add.ptr = getelementptr inbounds i16, ptr @gCoeffBuf, i64 %idx.ext
  store ptr %add.ptr, ptr %pSrc, align 8
  %idx.ext2 = zext i8 %dstOfs to i64
  %add.ptr3 = getelementptr inbounds i8, ptr @gMCUBufG, i64 %idx.ext2
  store ptr %add.ptr3, ptr %pDstG, align 8
  %0 = load i8, ptr %dstOfs.addr, align 1
  %idx.ext5 = zext i8 %0 to i64
  %add.ptr6 = getelementptr inbounds i8, ptr @gMCUBufB, i64 %idx.ext5
  store ptr %add.ptr6, ptr %pDstB, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %storemerge = phi i8 [ 0, %entry ], [ %inc38, %for.end ]
  store i8 %storemerge, ptr %y, align 1
  %cmp = icmp ult i8 %storemerge, 8
  br i1 %cmp, label %for.cond9, label %for.end39

for.cond9:                                        ; preds = %for.cond, %for.body13
  %storemerge1 = phi i8 [ %inc, %for.body13 ], [ 0, %for.cond ]
  store i8 %storemerge1, ptr %x, align 1
  %cmp11 = icmp ult i8 %storemerge1, 4
  br i1 %cmp11, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond9
  %1 = load ptr, ptr %pSrc, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %1, i64 1
  store ptr %incdec.ptr, ptr %pSrc, align 8
  %2 = load i16, ptr %1, align 2
  %conv14 = trunc i16 %2 to i8
  store i8 %conv14, ptr %cb, align 1
  %conv14.mask = and i16 %2, 255
  %narrow = mul nuw nsw i16 %conv14.mask, 88
  %3 = lshr i16 %narrow, 8
  %sub = add nsw i16 %3, -44
  store i16 %sub, ptr %cbG, align 2
  %4 = load ptr, ptr %pDstG, align 8
  %5 = load i8, ptr %4, align 1
  %call = call zeroext i8 @subAndClamp(i8 noundef zeroext %5, i16 noundef signext %sub)
  store i8 %call, ptr %4, align 1
  %arrayidx18 = getelementptr inbounds i8, ptr %4, i64 1
  %6 = load i8, ptr %arrayidx18, align 1
  %7 = load i16, ptr %cbG, align 2
  %call19 = call zeroext i8 @subAndClamp(i8 noundef zeroext %6, i16 noundef signext %7)
  %8 = load ptr, ptr %pDstG, align 8
  %arrayidx20 = getelementptr inbounds i8, ptr %8, i64 1
  store i8 %call19, ptr %arrayidx20, align 1
  %9 = load i8, ptr %cb, align 1
  %conv21 = zext i8 %9 to i16
  %conv22 = zext i8 %9 to i16
  %mul23 = mul nuw i16 %conv22, 198
  %shr24 = lshr i16 %mul23, 8
  %add = add nuw nsw i16 %shr24, %conv21
  %sub25 = add nsw i16 %add, -227
  store i16 %sub25, ptr %cbB, align 2
  %10 = load ptr, ptr %pDstB, align 8
  %11 = load i8, ptr %10, align 1
  %call28 = call zeroext i8 @addAndClamp(i8 noundef zeroext %11, i16 noundef signext %sub25)
  store i8 %call28, ptr %10, align 1
  %arrayidx30 = getelementptr inbounds i8, ptr %10, i64 1
  %12 = load i8, ptr %arrayidx30, align 1
  %13 = load i16, ptr %cbB, align 2
  %call31 = call zeroext i8 @addAndClamp(i8 noundef zeroext %12, i16 noundef signext %13)
  %14 = load ptr, ptr %pDstB, align 8
  %arrayidx32 = getelementptr inbounds i8, ptr %14, i64 1
  store i8 %call31, ptr %arrayidx32, align 1
  %15 = load ptr, ptr %pDstG, align 8
  %add.ptr33 = getelementptr inbounds i8, ptr %15, i64 2
  store ptr %add.ptr33, ptr %pDstG, align 8
  %add.ptr34 = getelementptr inbounds i8, ptr %14, i64 2
  store ptr %add.ptr34, ptr %pDstB, align 8
  %16 = load i8, ptr %x, align 1
  %inc = add i8 %16, 1
  br label %for.cond9, !llvm.loop !24

for.end:                                          ; preds = %for.cond9
  %17 = load ptr, ptr %pSrc, align 8
  %add.ptr36 = getelementptr inbounds i16, ptr %17, i64 4
  store ptr %add.ptr36, ptr %pSrc, align 8
  %18 = load i8, ptr %y, align 1
  %inc38 = add i8 %18, 1
  br label %for.cond, !llvm.loop !25

for.end39:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @upsampleCrH(i8 noundef zeroext %srcOfs, i8 noundef zeroext %dstOfs) #0 {
entry:
  %dstOfs.addr = alloca i8, align 1
  %x = alloca i8, align 1
  %y = alloca i8, align 1
  %pSrc = alloca ptr, align 8
  %pDstR = alloca ptr, align 8
  %pDstG = alloca ptr, align 8
  %cr = alloca i8, align 1
  %crR = alloca i16, align 2
  %crG = alloca i16, align 2
  store i8 %dstOfs, ptr %dstOfs.addr, align 1
  %idx.ext = zext i8 %srcOfs to i64
  %add.ptr = getelementptr inbounds i16, ptr @gCoeffBuf, i64 %idx.ext
  store ptr %add.ptr, ptr %pSrc, align 8
  %idx.ext2 = zext i8 %dstOfs to i64
  %add.ptr3 = getelementptr inbounds i8, ptr @gMCUBufR, i64 %idx.ext2
  store ptr %add.ptr3, ptr %pDstR, align 8
  %0 = load i8, ptr %dstOfs.addr, align 1
  %idx.ext5 = zext i8 %0 to i64
  %add.ptr6 = getelementptr inbounds i8, ptr @gMCUBufG, i64 %idx.ext5
  store ptr %add.ptr6, ptr %pDstG, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %storemerge = phi i8 [ 0, %entry ], [ %inc38, %for.end ]
  store i8 %storemerge, ptr %y, align 1
  %cmp = icmp ult i8 %storemerge, 8
  br i1 %cmp, label %for.cond9, label %for.end39

for.cond9:                                        ; preds = %for.cond, %for.body13
  %storemerge1 = phi i8 [ %inc, %for.body13 ], [ 0, %for.cond ]
  store i8 %storemerge1, ptr %x, align 1
  %cmp11 = icmp ult i8 %storemerge1, 4
  br i1 %cmp11, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond9
  %1 = load ptr, ptr %pSrc, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %1, i64 1
  store ptr %incdec.ptr, ptr %pSrc, align 8
  %2 = load i16, ptr %1, align 2
  %conv14 = trunc i16 %2 to i8
  store i8 %conv14, ptr %cr, align 1
  %conv14.mask = and i16 %2, 255
  %conv14.mask2 = and i16 %2, 255
  %narrow = mul nuw nsw i16 %conv14.mask2, 103
  %3 = lshr i16 %narrow, 8
  %narrow3 = add nuw nsw i16 %conv14.mask, %3
  %sub = add nsw i16 %narrow3, -179
  store i16 %sub, ptr %crR, align 2
  %4 = load ptr, ptr %pDstR, align 8
  %5 = load i8, ptr %4, align 1
  %call = call zeroext i8 @addAndClamp(i8 noundef zeroext %5, i16 noundef signext %sub)
  store i8 %call, ptr %4, align 1
  %arrayidx19 = getelementptr inbounds i8, ptr %4, i64 1
  %6 = load i8, ptr %arrayidx19, align 1
  %7 = load i16, ptr %crR, align 2
  %call20 = call zeroext i8 @addAndClamp(i8 noundef zeroext %6, i16 noundef signext %7)
  %8 = load ptr, ptr %pDstR, align 8
  %arrayidx21 = getelementptr inbounds i8, ptr %8, i64 1
  store i8 %call20, ptr %arrayidx21, align 1
  %9 = load i8, ptr %cr, align 1
  %conv22 = zext i8 %9 to i16
  %mul23 = mul nuw i16 %conv22, 183
  %shr24 = lshr i16 %mul23, 8
  %sub25 = add nsw i16 %shr24, -91
  store i16 %sub25, ptr %crG, align 2
  %10 = load ptr, ptr %pDstG, align 8
  %11 = load i8, ptr %10, align 1
  %call28 = call zeroext i8 @subAndClamp(i8 noundef zeroext %11, i16 noundef signext %sub25)
  store i8 %call28, ptr %10, align 1
  %arrayidx30 = getelementptr inbounds i8, ptr %10, i64 1
  %12 = load i8, ptr %arrayidx30, align 1
  %13 = load i16, ptr %crG, align 2
  %call31 = call zeroext i8 @subAndClamp(i8 noundef zeroext %12, i16 noundef signext %13)
  %14 = load ptr, ptr %pDstG, align 8
  %arrayidx32 = getelementptr inbounds i8, ptr %14, i64 1
  store i8 %call31, ptr %arrayidx32, align 1
  %15 = load ptr, ptr %pDstR, align 8
  %add.ptr33 = getelementptr inbounds i8, ptr %15, i64 2
  store ptr %add.ptr33, ptr %pDstR, align 8
  %add.ptr34 = getelementptr inbounds i8, ptr %14, i64 2
  store ptr %add.ptr34, ptr %pDstG, align 8
  %16 = load i8, ptr %x, align 1
  %inc = add i8 %16, 1
  br label %for.cond9, !llvm.loop !26

for.end:                                          ; preds = %for.cond9
  %17 = load ptr, ptr %pSrc, align 8
  %add.ptr36 = getelementptr inbounds i16, ptr %17, i64 4
  store ptr %add.ptr36, ptr %pSrc, align 8
  %18 = load i8, ptr %y, align 1
  %inc38 = add i8 %18, 1
  br label %for.cond, !llvm.loop !27

for.end39:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @upsampleCb(i8 noundef zeroext %srcOfs, i8 noundef zeroext %dstOfs) #0 {
entry:
  %dstOfs.addr = alloca i8, align 1
  %x = alloca i8, align 1
  %y = alloca i8, align 1
  %pSrc = alloca ptr, align 8
  %pDstG = alloca ptr, align 8
  %pDstB = alloca ptr, align 8
  %cb = alloca i8, align 1
  %cbG = alloca i16, align 2
  %cbB = alloca i16, align 2
  store i8 %dstOfs, ptr %dstOfs.addr, align 1
  %idx.ext = zext i8 %srcOfs to i64
  %add.ptr = getelementptr inbounds i16, ptr @gCoeffBuf, i64 %idx.ext
  store ptr %add.ptr, ptr %pSrc, align 8
  %idx.ext2 = zext i8 %dstOfs to i64
  %add.ptr3 = getelementptr inbounds i8, ptr @gMCUBufG, i64 %idx.ext2
  store ptr %add.ptr3, ptr %pDstG, align 8
  %0 = load i8, ptr %dstOfs.addr, align 1
  %idx.ext5 = zext i8 %0 to i64
  %add.ptr6 = getelementptr inbounds i8, ptr @gMCUBufB, i64 %idx.ext5
  store ptr %add.ptr6, ptr %pDstB, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %storemerge = phi i8 [ 0, %entry ], [ %inc54, %for.end ]
  store i8 %storemerge, ptr %y, align 1
  %cmp = icmp ult i8 %storemerge, 4
  br i1 %cmp, label %for.cond9, label %for.end55

for.cond9:                                        ; preds = %for.cond, %for.body13
  %storemerge1 = phi i8 [ %inc, %for.body13 ], [ 0, %for.cond ]
  store i8 %storemerge1, ptr %x, align 1
  %cmp11 = icmp ult i8 %storemerge1, 4
  br i1 %cmp11, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond9
  %1 = load ptr, ptr %pSrc, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %1, i64 1
  store ptr %incdec.ptr, ptr %pSrc, align 8
  %2 = load i16, ptr %1, align 2
  %conv14 = trunc i16 %2 to i8
  store i8 %conv14, ptr %cb, align 1
  %conv14.mask = and i16 %2, 255
  %narrow = mul nuw nsw i16 %conv14.mask, 88
  %3 = lshr i16 %narrow, 8
  %sub = add nsw i16 %3, -44
  store i16 %sub, ptr %cbG, align 2
  %4 = load ptr, ptr %pDstG, align 8
  %5 = load i8, ptr %4, align 1
  %call = call zeroext i8 @subAndClamp(i8 noundef zeroext %5, i16 noundef signext %sub)
  store i8 %call, ptr %4, align 1
  %arrayidx18 = getelementptr inbounds i8, ptr %4, i64 1
  %6 = load i8, ptr %arrayidx18, align 1
  %7 = load i16, ptr %cbG, align 2
  %call19 = call zeroext i8 @subAndClamp(i8 noundef zeroext %6, i16 noundef signext %7)
  %8 = load ptr, ptr %pDstG, align 8
  %arrayidx20 = getelementptr inbounds i8, ptr %8, i64 1
  store i8 %call19, ptr %arrayidx20, align 1
  %arrayidx21 = getelementptr inbounds i8, ptr %8, i64 8
  %9 = load i8, ptr %arrayidx21, align 1
  %10 = load i16, ptr %cbG, align 2
  %call22 = call zeroext i8 @subAndClamp(i8 noundef zeroext %9, i16 noundef signext %10)
  %11 = load ptr, ptr %pDstG, align 8
  %arrayidx23 = getelementptr inbounds i8, ptr %11, i64 8
  store i8 %call22, ptr %arrayidx23, align 1
  %arrayidx24 = getelementptr inbounds i8, ptr %11, i64 9
  %12 = load i8, ptr %arrayidx24, align 1
  %13 = load i16, ptr %cbG, align 2
  %call25 = call zeroext i8 @subAndClamp(i8 noundef zeroext %12, i16 noundef signext %13)
  %14 = load ptr, ptr %pDstG, align 8
  %arrayidx26 = getelementptr inbounds i8, ptr %14, i64 9
  store i8 %call25, ptr %arrayidx26, align 1
  %15 = load i8, ptr %cb, align 1
  %conv27 = zext i8 %15 to i16
  %conv28 = zext i8 %15 to i16
  %mul29 = mul nuw i16 %conv28, 198
  %shr30 = lshr i16 %mul29, 8
  %add = add nuw nsw i16 %shr30, %conv27
  %sub31 = add nsw i16 %add, -227
  store i16 %sub31, ptr %cbB, align 2
  %16 = load ptr, ptr %pDstB, align 8
  %17 = load i8, ptr %16, align 1
  %call34 = call zeroext i8 @addAndClamp(i8 noundef zeroext %17, i16 noundef signext %sub31)
  store i8 %call34, ptr %16, align 1
  %arrayidx36 = getelementptr inbounds i8, ptr %16, i64 1
  %18 = load i8, ptr %arrayidx36, align 1
  %19 = load i16, ptr %cbB, align 2
  %call37 = call zeroext i8 @addAndClamp(i8 noundef zeroext %18, i16 noundef signext %19)
  %20 = load ptr, ptr %pDstB, align 8
  %arrayidx38 = getelementptr inbounds i8, ptr %20, i64 1
  store i8 %call37, ptr %arrayidx38, align 1
  %arrayidx39 = getelementptr inbounds i8, ptr %20, i64 8
  %21 = load i8, ptr %arrayidx39, align 1
  %22 = load i16, ptr %cbB, align 2
  %call40 = call zeroext i8 @addAndClamp(i8 noundef zeroext %21, i16 noundef signext %22)
  %23 = load ptr, ptr %pDstB, align 8
  %arrayidx41 = getelementptr inbounds i8, ptr %23, i64 8
  store i8 %call40, ptr %arrayidx41, align 1
  %arrayidx42 = getelementptr inbounds i8, ptr %23, i64 9
  %24 = load i8, ptr %arrayidx42, align 1
  %25 = load i16, ptr %cbB, align 2
  %call43 = call zeroext i8 @addAndClamp(i8 noundef zeroext %24, i16 noundef signext %25)
  %26 = load ptr, ptr %pDstB, align 8
  %arrayidx44 = getelementptr inbounds i8, ptr %26, i64 9
  store i8 %call43, ptr %arrayidx44, align 1
  %27 = load ptr, ptr %pDstG, align 8
  %add.ptr45 = getelementptr inbounds i8, ptr %27, i64 2
  store ptr %add.ptr45, ptr %pDstG, align 8
  %add.ptr46 = getelementptr inbounds i8, ptr %26, i64 2
  store ptr %add.ptr46, ptr %pDstB, align 8
  %28 = load i8, ptr %x, align 1
  %inc = add i8 %28, 1
  br label %for.cond9, !llvm.loop !28

for.end:                                          ; preds = %for.cond9
  %29 = load ptr, ptr %pSrc, align 8
  %add.ptr48 = getelementptr inbounds i16, ptr %29, i64 4
  store ptr %add.ptr48, ptr %pSrc, align 8
  %30 = load ptr, ptr %pDstG, align 8
  %add.ptr50 = getelementptr inbounds i8, ptr %30, i64 8
  store ptr %add.ptr50, ptr %pDstG, align 8
  %31 = load ptr, ptr %pDstB, align 8
  %add.ptr52 = getelementptr inbounds i8, ptr %31, i64 8
  store ptr %add.ptr52, ptr %pDstB, align 8
  %32 = load i8, ptr %y, align 1
  %inc54 = add i8 %32, 1
  br label %for.cond, !llvm.loop !29

for.end55:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @upsampleCr(i8 noundef zeroext %srcOfs, i8 noundef zeroext %dstOfs) #0 {
entry:
  %dstOfs.addr = alloca i8, align 1
  %x = alloca i8, align 1
  %y = alloca i8, align 1
  %pSrc = alloca ptr, align 8
  %pDstR = alloca ptr, align 8
  %pDstG = alloca ptr, align 8
  %cr = alloca i8, align 1
  %crR = alloca i16, align 2
  %crG = alloca i16, align 2
  store i8 %dstOfs, ptr %dstOfs.addr, align 1
  %idx.ext = zext i8 %srcOfs to i64
  %add.ptr = getelementptr inbounds i16, ptr @gCoeffBuf, i64 %idx.ext
  store ptr %add.ptr, ptr %pSrc, align 8
  %idx.ext2 = zext i8 %dstOfs to i64
  %add.ptr3 = getelementptr inbounds i8, ptr @gMCUBufR, i64 %idx.ext2
  store ptr %add.ptr3, ptr %pDstR, align 8
  %0 = load i8, ptr %dstOfs.addr, align 1
  %idx.ext5 = zext i8 %0 to i64
  %add.ptr6 = getelementptr inbounds i8, ptr @gMCUBufG, i64 %idx.ext5
  store ptr %add.ptr6, ptr %pDstG, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %storemerge = phi i8 [ 0, %entry ], [ %inc54, %for.end ]
  store i8 %storemerge, ptr %y, align 1
  %cmp = icmp ult i8 %storemerge, 4
  br i1 %cmp, label %for.cond9, label %for.end55

for.cond9:                                        ; preds = %for.cond, %for.body13
  %storemerge1 = phi i8 [ %inc, %for.body13 ], [ 0, %for.cond ]
  store i8 %storemerge1, ptr %x, align 1
  %cmp11 = icmp ult i8 %storemerge1, 4
  br i1 %cmp11, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond9
  %1 = load ptr, ptr %pSrc, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %1, i64 1
  store ptr %incdec.ptr, ptr %pSrc, align 8
  %2 = load i16, ptr %1, align 2
  %conv14 = trunc i16 %2 to i8
  store i8 %conv14, ptr %cr, align 1
  %conv14.mask = and i16 %2, 255
  %conv14.mask2 = and i16 %2, 255
  %narrow = mul nuw nsw i16 %conv14.mask2, 103
  %3 = lshr i16 %narrow, 8
  %narrow3 = add nuw nsw i16 %conv14.mask, %3
  %sub = add nsw i16 %narrow3, -179
  store i16 %sub, ptr %crR, align 2
  %4 = load ptr, ptr %pDstR, align 8
  %5 = load i8, ptr %4, align 1
  %call = call zeroext i8 @addAndClamp(i8 noundef zeroext %5, i16 noundef signext %sub)
  store i8 %call, ptr %4, align 1
  %arrayidx19 = getelementptr inbounds i8, ptr %4, i64 1
  %6 = load i8, ptr %arrayidx19, align 1
  %7 = load i16, ptr %crR, align 2
  %call20 = call zeroext i8 @addAndClamp(i8 noundef zeroext %6, i16 noundef signext %7)
  %8 = load ptr, ptr %pDstR, align 8
  %arrayidx21 = getelementptr inbounds i8, ptr %8, i64 1
  store i8 %call20, ptr %arrayidx21, align 1
  %arrayidx22 = getelementptr inbounds i8, ptr %8, i64 8
  %9 = load i8, ptr %arrayidx22, align 1
  %10 = load i16, ptr %crR, align 2
  %call23 = call zeroext i8 @addAndClamp(i8 noundef zeroext %9, i16 noundef signext %10)
  %11 = load ptr, ptr %pDstR, align 8
  %arrayidx24 = getelementptr inbounds i8, ptr %11, i64 8
  store i8 %call23, ptr %arrayidx24, align 1
  %arrayidx25 = getelementptr inbounds i8, ptr %11, i64 9
  %12 = load i8, ptr %arrayidx25, align 1
  %13 = load i16, ptr %crR, align 2
  %call26 = call zeroext i8 @addAndClamp(i8 noundef zeroext %12, i16 noundef signext %13)
  %14 = load ptr, ptr %pDstR, align 8
  %arrayidx27 = getelementptr inbounds i8, ptr %14, i64 9
  store i8 %call26, ptr %arrayidx27, align 1
  %15 = load i8, ptr %cr, align 1
  %conv28 = zext i8 %15 to i16
  %mul29 = mul nuw i16 %conv28, 183
  %shr30 = lshr i16 %mul29, 8
  %sub31 = add nsw i16 %shr30, -91
  store i16 %sub31, ptr %crG, align 2
  %16 = load ptr, ptr %pDstG, align 8
  %17 = load i8, ptr %16, align 1
  %call34 = call zeroext i8 @subAndClamp(i8 noundef zeroext %17, i16 noundef signext %sub31)
  store i8 %call34, ptr %16, align 1
  %arrayidx36 = getelementptr inbounds i8, ptr %16, i64 1
  %18 = load i8, ptr %arrayidx36, align 1
  %19 = load i16, ptr %crG, align 2
  %call37 = call zeroext i8 @subAndClamp(i8 noundef zeroext %18, i16 noundef signext %19)
  %20 = load ptr, ptr %pDstG, align 8
  %arrayidx38 = getelementptr inbounds i8, ptr %20, i64 1
  store i8 %call37, ptr %arrayidx38, align 1
  %arrayidx39 = getelementptr inbounds i8, ptr %20, i64 8
  %21 = load i8, ptr %arrayidx39, align 1
  %22 = load i16, ptr %crG, align 2
  %call40 = call zeroext i8 @subAndClamp(i8 noundef zeroext %21, i16 noundef signext %22)
  %23 = load ptr, ptr %pDstG, align 8
  %arrayidx41 = getelementptr inbounds i8, ptr %23, i64 8
  store i8 %call40, ptr %arrayidx41, align 1
  %arrayidx42 = getelementptr inbounds i8, ptr %23, i64 9
  %24 = load i8, ptr %arrayidx42, align 1
  %25 = load i16, ptr %crG, align 2
  %call43 = call zeroext i8 @subAndClamp(i8 noundef zeroext %24, i16 noundef signext %25)
  %26 = load ptr, ptr %pDstG, align 8
  %arrayidx44 = getelementptr inbounds i8, ptr %26, i64 9
  store i8 %call43, ptr %arrayidx44, align 1
  %27 = load ptr, ptr %pDstR, align 8
  %add.ptr45 = getelementptr inbounds i8, ptr %27, i64 2
  store ptr %add.ptr45, ptr %pDstR, align 8
  %add.ptr46 = getelementptr inbounds i8, ptr %26, i64 2
  store ptr %add.ptr46, ptr %pDstG, align 8
  %28 = load i8, ptr %x, align 1
  %inc = add i8 %28, 1
  br label %for.cond9, !llvm.loop !30

for.end:                                          ; preds = %for.cond9
  %29 = load ptr, ptr %pSrc, align 8
  %add.ptr48 = getelementptr inbounds i16, ptr %29, i64 4
  store ptr %add.ptr48, ptr %pSrc, align 8
  %30 = load ptr, ptr %pDstR, align 8
  %add.ptr50 = getelementptr inbounds i8, ptr %30, i64 8
  store ptr %add.ptr50, ptr %pDstR, align 8
  %31 = load ptr, ptr %pDstG, align 8
  %add.ptr52 = getelementptr inbounds i8, ptr %31, i64 8
  store ptr %add.ptr52, ptr %pDstG, align 8
  %32 = load i8, ptr %y, align 1
  %inc54 = add i8 %32, 1
  br label %for.cond, !llvm.loop !31

for.end55:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal signext i16 @imul_b5(i16 noundef signext %w) #0 {
entry:
  %conv = sext i16 %w to i32
  %mul = mul nsw i32 %conv, 196
  %add = add nsw i32 %mul, 128
  %0 = lshr i32 %add, 8
  %conv1 = trunc i32 %0 to i16
  ret i16 %conv1
}

; Function Attrs: nounwind ssp uwtable
define internal signext i16 @imul_b4(i16 noundef signext %w) #0 {
entry:
  %conv = sext i16 %w to i32
  %mul = mul nsw i32 %conv, 277
  %add = add nsw i32 %mul, 128
  %0 = lshr i32 %add, 8
  %conv1 = trunc i32 %0 to i16
  ret i16 %conv1
}

; Function Attrs: nounwind ssp uwtable
define internal signext i16 @imul_b2(i16 noundef signext %w) #0 {
entry:
  %conv = sext i16 %w to i32
  %mul = mul nsw i32 %conv, 669
  %add = add nsw i32 %mul, 128
  %0 = lshr i32 %add, 8
  %conv1 = trunc i32 %0 to i16
  ret i16 %conv1
}

; Function Attrs: nounwind ssp uwtable
define internal signext i16 @imul_b1_b3(i16 noundef signext %w) #0 {
entry:
  %conv = sext i16 %w to i32
  %mul = mul nsw i32 %conv, 362
  %add = add nsw i32 %mul, 128
  %0 = lshr i32 %add, 8
  %conv1 = trunc i32 %0 to i16
  ret i16 %conv1
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @locateSOIMarker() #0 {
entry:
  %retval = alloca i8, align 1
  %bytesleft = alloca i16, align 2
  %thischar = alloca i8, align 1
  %call.i = call zeroext i16 @getBits(i8 noundef zeroext 8, i8 noundef zeroext 0)
  %call.i2 = call zeroext i16 @getBits(i8 noundef zeroext 8, i8 noundef zeroext 0)
  %conv2 = trunc i16 %call.i2 to i8
  store i8 %conv2, ptr %thischar, align 1
  %conv.mask = and i16 %call.i, 255
  %cmp = icmp eq i16 %conv.mask, 255
  %0 = load i8, ptr %thischar, align 1
  %cmp6 = icmp eq i8 %0, -40
  %or.cond = select i1 %cmp, i1 %cmp6, i1 false
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 0, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  store i16 4096, ptr %bytesleft, align 2
  br label %for.cond

for.cond:                                         ; preds = %if.end29, %if.end
  %1 = load i16, ptr %bytesleft, align 2
  %dec = add i16 %1, -1
  store i16 %dec, ptr %bytesleft, align 2
  %cmp9 = icmp eq i16 %dec, 0
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %for.cond
  store i8 19, ptr %retval, align 1
  br label %return

if.end12:                                         ; preds = %for.cond
  %2 = load i8, ptr %thischar, align 1
  %call.i4 = call zeroext i16 @getBits(i8 noundef zeroext 8, i8 noundef zeroext 0)
  %conv14 = trunc i16 %call.i4 to i8
  store i8 %conv14, ptr %thischar, align 1
  %cmp16 = icmp eq i8 %2, -1
  br i1 %cmp16, label %if.then18, label %if.end29

if.then18:                                        ; preds = %if.end12
  %3 = load i8, ptr %thischar, align 1
  %cmp20 = icmp eq i8 %3, -40
  br i1 %cmp20, label %for.end, label %if.else

if.else:                                          ; preds = %if.then18
  %4 = load i8, ptr %thischar, align 1
  %cmp24 = icmp eq i8 %4, -39
  br i1 %cmp24, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.else
  store i8 19, ptr %retval, align 1
  br label %return

if.end29:                                         ; preds = %if.else, %if.end12
  br label %for.cond

for.end:                                          ; preds = %if.then18
  %5 = load i16, ptr @gBitBuf, align 2
  %6 = lshr i16 %5, 8
  %conv31 = trunc i16 %6 to i8
  store i8 %conv31, ptr %thischar, align 1
  %cmp33.not = icmp eq i16 %6, 255
  br i1 %cmp33.not, label %if.end36, label %if.then35

if.then35:                                        ; preds = %for.end
  store i8 19, ptr %retval, align 1
  br label %return

if.end36:                                         ; preds = %for.end
  store i8 0, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end36, %if.then35, %if.then26, %if.then11, %if.then
  %7 = load i8, ptr %retval, align 1
  ret i8 %7
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
  %call = call zeroext i8 @nextMarker()
  store i8 %call, ptr %c, align 1
  switch i8 %call, label %sw.default [
    i8 -64, label %sw.bb
    i8 -63, label %sw.bb
    i8 -62, label %sw.bb
    i8 -61, label %sw.bb
    i8 -59, label %sw.bb
    i8 -58, label %sw.bb
    i8 -57, label %sw.bb
    i8 -55, label %sw.bb
    i8 -54, label %sw.bb
    i8 -53, label %sw.bb
    i8 -51, label %sw.bb
    i8 -50, label %sw.bb
    i8 -49, label %sw.bb
    i8 -40, label %sw.bb
    i8 -39, label %sw.bb
    i8 -38, label %sw.bb
    i8 -60, label %sw.bb1
    i8 -52, label %sw.bb3
    i8 -37, label %sw.bb4
    i8 -35, label %sw.bb6
    i8 -56, label %sw.bb8
    i8 -48, label %sw.bb8
    i8 -47, label %sw.bb8
    i8 -46, label %sw.bb8
    i8 -45, label %sw.bb8
    i8 -44, label %sw.bb8
    i8 -43, label %sw.bb8
    i8 -42, label %sw.bb8
    i8 -41, label %sw.bb8
    i8 1, label %sw.bb8
  ]

sw.bb:                                            ; preds = %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond
  %0 = load i8, ptr %c, align 1
  %1 = load ptr, ptr %pMarker.addr, align 8
  store i8 %0, ptr %1, align 1
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
  %call7 = call zeroext i8 @readDRIMarker()
  br label %sw.epilog

sw.bb8:                                           ; preds = %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond
  store i8 18, ptr %retval, align 1
  br label %return

sw.default:                                       ; preds = %for.cond
  %call9 = call zeroext i8 @skipVariableMarker()
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb6, %sw.bb4, %sw.bb1
  br label %for.cond

return:                                           ; preds = %sw.bb8, %sw.bb3, %sw.bb
  %2 = load i8, ptr %retval, align 1
  ret i8 %2
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @readSOFMarker() #0 {
entry:
  %retval = alloca i8, align 1
  %i = alloca i8, align 1
  %left = alloca i16, align 2
  %call.i = call zeroext i16 @getBits(i8 noundef zeroext 16, i8 noundef zeroext 0)
  store i16 %call.i, ptr %left, align 2
  %call.i2 = call zeroext i16 @getBits(i8 noundef zeroext 8, i8 noundef zeroext 0)
  %cmp.not = icmp eq i16 %call.i2, 8
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 7, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %call.i4 = call zeroext i16 @getBits(i8 noundef zeroext 16, i8 noundef zeroext 0)
  store i16 %call.i4, ptr @gImageYSize, align 2
  %tobool.not = icmp eq i16 %call.i4, 0
  %0 = load i16, ptr @gImageYSize, align 2
  %cmp5 = icmp ugt i16 %0, 16384
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp5
  br i1 %or.cond, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  store i8 8, ptr %retval, align 1
  br label %return

if.end8:                                          ; preds = %if.end
  %call.i6 = call zeroext i16 @getBits(i8 noundef zeroext 16, i8 noundef zeroext 0)
  store i16 %call.i6, ptr @gImageXSize, align 2
  %tobool10.not = icmp eq i16 %call.i6, 0
  %1 = load i16, ptr @gImageXSize, align 2
  %cmp13 = icmp ugt i16 %1, 16384
  %or.cond17 = select i1 %tobool10.not, i1 true, i1 %cmp13
  br i1 %or.cond17, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end8
  store i8 9, ptr %retval, align 1
  br label %return

if.end16:                                         ; preds = %if.end8
  %call.i8 = call zeroext i16 @getBits(i8 noundef zeroext 8, i8 noundef zeroext 0)
  %conv18 = trunc i16 %call.i8 to i8
  store i8 %conv18, ptr @gCompsInFrame, align 1
  %conv18.mask = and i16 %call.i8, 252
  %cmp20.not = icmp eq i16 %conv18.mask, 0
  br i1 %cmp20.not, label %if.end23, label %if.then22

if.then22:                                        ; preds = %if.end16
  store i8 10, ptr %retval, align 1
  br label %return

if.end23:                                         ; preds = %if.end16
  %2 = load i16, ptr %left, align 2
  %conv24 = zext i16 %2 to i32
  %3 = load i8, ptr @gCompsInFrame, align 1
  %conv25 = zext i8 %3 to i32
  %conv26 = zext i8 %3 to i32
  %add = add nuw nsw i32 %conv25, %conv26
  %conv27 = zext i8 %3 to i32
  %add28 = add nuw nsw i32 %add, %conv27
  %add29 = add nuw nsw i32 %add28, 8
  %cmp30.not = icmp eq i32 %add29, %conv24
  br i1 %cmp30.not, label %for.cond, label %if.then32

if.then32:                                        ; preds = %if.end23
  store i8 11, ptr %retval, align 1
  br label %return

for.cond:                                         ; preds = %if.end23, %for.inc
  %storemerge = phi i8 [ %inc, %for.inc ], [ 0, %if.end23 ]
  store i8 %storemerge, ptr %i, align 1
  %4 = load i8, ptr @gCompsInFrame, align 1
  %cmp36 = icmp ult i8 %storemerge, %4
  br i1 %cmp36, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call.i10 = call zeroext i16 @getBits(i8 noundef zeroext 8, i8 noundef zeroext 0)
  %conv39 = trunc i16 %call.i10 to i8
  %5 = load i8, ptr %i, align 1
  %idxprom = zext i8 %5 to i64
  %arrayidx = getelementptr inbounds [3 x i8], ptr @gCompIdent, i64 0, i64 %idxprom
  store i8 %conv39, ptr %arrayidx, align 1
  %call.i12 = call zeroext i16 @getBits(i8 noundef zeroext 4, i8 noundef zeroext 0)
  %conv41 = trunc i16 %call.i12 to i8
  %idxprom42 = zext i8 %5 to i64
  %arrayidx43 = getelementptr inbounds [3 x i8], ptr @gCompHSamp, i64 0, i64 %idxprom42
  store i8 %conv41, ptr %arrayidx43, align 1
  %call.i14 = call zeroext i16 @getBits(i8 noundef zeroext 4, i8 noundef zeroext 0)
  %conv45 = trunc i16 %call.i14 to i8
  %6 = load i8, ptr %i, align 1
  %idxprom46 = zext i8 %6 to i64
  %arrayidx47 = getelementptr inbounds [3 x i8], ptr @gCompVSamp, i64 0, i64 %idxprom46
  store i8 %conv45, ptr %arrayidx47, align 1
  %call.i16 = call zeroext i16 @getBits(i8 noundef zeroext 8, i8 noundef zeroext 0)
  %conv49 = trunc i16 %call.i16 to i8
  %idxprom50 = zext i8 %6 to i64
  %arrayidx51 = getelementptr inbounds [3 x i8], ptr @gCompQuant, i64 0, i64 %idxprom50
  store i8 %conv49, ptr %arrayidx51, align 1
  %7 = load i8, ptr %i, align 1
  %idxprom52 = zext i8 %7 to i64
  %arrayidx53 = getelementptr inbounds [3 x i8], ptr @gCompQuant, i64 0, i64 %idxprom52
  %8 = load i8, ptr %arrayidx53, align 1
  %cmp55 = icmp ugt i8 %8, 1
  br i1 %cmp55, label %if.then57, label %for.inc

if.then57:                                        ; preds = %for.body
  store i8 36, ptr %retval, align 1
  br label %return

for.inc:                                          ; preds = %for.body
  %9 = load i8, ptr %i, align 1
  %inc = add i8 %9, 1
  br label %for.cond, !llvm.loop !32

for.end:                                          ; preds = %for.cond
  store i8 0, ptr %retval, align 1
  br label %return

return:                                           ; preds = %for.end, %if.then57, %if.then32, %if.then22, %if.then15, %if.then7, %if.then
  %10 = load i8, ptr %retval, align 1
  ret i8 %10
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

do.body1:                                         ; preds = %do.body1, %do.body
  %0 = load i8, ptr %bytes, align 1
  %inc = add i8 %0, 1
  store i8 %inc, ptr %bytes, align 1
  %call.i = call zeroext i16 @getBits(i8 noundef zeroext 8, i8 noundef zeroext 0)
  %conv = trunc i16 %call.i to i8
  store i8 %conv, ptr %c, align 1
  %1 = load i8, ptr %c, align 1
  %cmp.not = icmp eq i8 %1, -1
  br i1 %cmp.not, label %do.body4, label %do.body1, !llvm.loop !33

do.body4:                                         ; preds = %do.body1, %do.body4
  %call.i2 = call zeroext i16 @getBits(i8 noundef zeroext 8, i8 noundef zeroext 0)
  %conv6 = trunc i16 %call.i2 to i8
  store i8 %conv6, ptr %c, align 1
  %2 = load i8, ptr %c, align 1
  %cmp9 = icmp eq i8 %2, -1
  br i1 %cmp9, label %do.body4, label %do.cond12, !llvm.loop !34

do.cond12:                                        ; preds = %do.body4
  %3 = load i8, ptr %c, align 1
  %cmp14 = icmp eq i8 %3, 0
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
  %call.i = call zeroext i16 @getBits(i8 noundef zeroext 16, i8 noundef zeroext 0)
  store i16 %call.i, ptr %left, align 2
  %cmp = icmp ult i16 %call.i, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 4, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %0 = load i16, ptr %left, align 2
  %sub = add i16 %0, -2
  store i16 %sub, ptr %left, align 2
  br label %while.cond

while.cond:                                       ; preds = %if.end62, %if.end
  %1 = load i16, ptr %left, align 2
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %call.i2 = call zeroext i16 @getBits(i8 noundef zeroext 8, i8 noundef zeroext 0)
  %conv5 = trunc i16 %call.i2 to i8
  store i8 %conv5, ptr %index, align 1
  %2 = and i16 %call.i2, 14
  %cmp7.not = icmp eq i16 %2, 0
  br i1 %cmp7.not, label %lor.lhs.false, label %if.then13

lor.lhs.false:                                    ; preds = %while.body
  %3 = load i8, ptr %index, align 1
  %4 = and i8 %3, -16
  %cmp11 = icmp ugt i8 %4, 16
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %lor.lhs.false, %while.body
  store i8 3, ptr %retval, align 1
  br label %return

if.end14:                                         ; preds = %lor.lhs.false
  %5 = load i8, ptr %index, align 1
  %6 = lshr i8 %5, 3
  %7 = and i8 %6, 2
  %8 = and i8 %5, 1
  %add7 = or i8 %7, %8
  store i8 %add7, ptr %tableIndex, align 1
  %call20 = call ptr @getHuffTable(i8 noundef zeroext %add7)
  store ptr %call20, ptr %pHuffTable, align 8
  %call21 = call ptr @getHuffVal(i8 noundef zeroext %add7)
  store ptr %call21, ptr %pHuffVal, align 8
  %shl = shl i8 1, %add7
  %9 = load i8, ptr @gValidHuffTables, align 1
  %or = or i8 %shl, %9
  store i8 %or, ptr @gValidHuffTables, align 1
  store i16 0, ptr %count, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end14
  %storemerge = phi i8 [ 0, %if.end14 ], [ %inc, %for.body ]
  store i8 %storemerge, ptr %i, align 1
  %cmp26 = icmp ult i8 %storemerge, 16
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call.i4 = call zeroext i16 @getBits(i8 noundef zeroext 8, i8 noundef zeroext 0)
  %conv29 = trunc i16 %call.i4 to i8
  %10 = load i8, ptr %i, align 1
  %idxprom = zext i8 %10 to i64
  %arrayidx = getelementptr inbounds [16 x i8], ptr %bits, i64 0, i64 %idxprom
  store i8 %conv29, ptr %arrayidx, align 1
  %11 = load i16, ptr %count, align 2
  %conv31 = and i16 %call.i4, 255
  %add32 = add i16 %11, %conv31
  store i16 %add32, ptr %count, align 2
  %12 = load i8, ptr %i, align 1
  %inc = add i8 %12, 1
  br label %for.cond, !llvm.loop !36

for.end:                                          ; preds = %for.cond
  %13 = load i16, ptr %count, align 2
  %conv34 = zext i16 %13 to i32
  %14 = load i8, ptr %tableIndex, align 1
  %cmp.i = icmp ult i8 %14, 2
  %conv36 = select i1 %cmp.i, i32 12, i32 255
  %cmp37 = icmp ult i32 %conv36, %conv34
  br i1 %cmp37, label %if.then39, label %for.cond41

if.then39:                                        ; preds = %for.end
  store i8 2, ptr %retval, align 1
  br label %return

for.cond41:                                       ; preds = %for.end, %for.body46
  %storemerge8 = phi i8 [ %inc52, %for.body46 ], [ 0, %for.end ]
  store i8 %storemerge8, ptr %i, align 1
  %15 = load i16, ptr %count, align 2
  %16 = zext i8 %storemerge8 to i16
  %cmp44 = icmp ugt i16 %15, %16
  br i1 %cmp44, label %for.body46, label %for.end53

for.body46:                                       ; preds = %for.cond41
  %call.i6 = call zeroext i16 @getBits(i8 noundef zeroext 8, i8 noundef zeroext 0)
  %conv48 = trunc i16 %call.i6 to i8
  %17 = load ptr, ptr %pHuffVal, align 8
  %18 = load i8, ptr %i, align 1
  %idxprom49 = zext i8 %18 to i64
  %arrayidx50 = getelementptr inbounds i8, ptr %17, i64 %idxprom49
  store i8 %conv48, ptr %arrayidx50, align 1
  %19 = load i8, ptr %i, align 1
  %inc52 = add i8 %19, 1
  br label %for.cond41, !llvm.loop !37

for.end53:                                        ; preds = %for.cond41
  %20 = load i16, ptr %count, align 2
  %add55 = add i16 %20, 17
  store i16 %add55, ptr %totalRead, align 2
  %21 = load i16, ptr %left, align 2
  %cmp59 = icmp ult i16 %21, %add55
  br i1 %cmp59, label %if.then61, label %if.end62

if.then61:                                        ; preds = %for.end53
  store i8 4, ptr %retval, align 1
  br label %return

if.end62:                                         ; preds = %for.end53
  %22 = load i16, ptr %left, align 2
  %23 = load i16, ptr %totalRead, align 2
  %sub65 = sub i16 %22, %23
  store i16 %sub65, ptr %left, align 2
  %24 = load ptr, ptr %pHuffTable, align 8
  call void @huffCreate(ptr noundef nonnull %bits, ptr noundef %24)
  br label %while.cond, !llvm.loop !38

while.end:                                        ; preds = %while.cond
  store i8 0, ptr %retval, align 1
  br label %return

return:                                           ; preds = %while.end, %if.then61, %if.then39, %if.then13, %if.then
  %25 = load i8, ptr %retval, align 1
  ret i8 %25
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
  %call.i = call zeroext i16 @getBits(i8 noundef zeroext 16, i8 noundef zeroext 0)
  store i16 %call.i, ptr %left, align 2
  %cmp = icmp ult i16 %call.i, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 5, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %0 = load i16, ptr %left, align 2
  %sub = add i16 %0, -2
  br label %while.cond

while.cond:                                       ; preds = %if.end49, %if.end
  %storemerge = phi i16 [ %sub, %if.end ], [ %sub52, %if.end49 ]
  store i16 %storemerge, ptr %left, align 2
  %tobool.not = icmp eq i16 %storemerge, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %call.i2 = call zeroext i16 @getBits(i8 noundef zeroext 8, i8 noundef zeroext 0)
  %conv5 = trunc i16 %call.i2 to i8
  store i8 %conv5, ptr %n, align 1
  %1 = trunc i16 %call.i2 to i8
  %2 = lshr i8 %1, 4
  store i8 %2, ptr %prec, align 1
  %3 = trunc i16 %call.i2 to i8
  %conv9 = and i8 %3, 15
  store i8 %conv9, ptr %n, align 1
  %cmp11 = icmp ugt i8 %conv9, 1
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %while.body
  store i8 6, ptr %retval, align 1
  br label %return

if.end14:                                         ; preds = %while.body
  %4 = load i8, ptr %n, align 1
  %tobool16.not = icmp eq i8 %4, 0
  %cond = select i1 %tobool16.not, i8 1, i8 2
  %5 = load i8, ptr @gValidQuantTables, align 1
  %or = or i8 %cond, %5
  store i8 %or, ptr @gValidQuantTables, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end14
  %storemerge7 = phi i8 [ 0, %if.end14 ], [ %inc, %for.inc ]
  store i8 %storemerge7, ptr %i, align 1
  %cmp20 = icmp ult i8 %storemerge7, 64
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call.i4 = call zeroext i16 @getBits(i8 noundef zeroext 8, i8 noundef zeroext 0)
  store i16 %call.i4, ptr %temp, align 2
  %6 = load i8, ptr %prec, align 1
  %tobool23.not = icmp eq i8 %6, 0
  br i1 %tobool23.not, label %if.end29, label %if.then24

if.then24:                                        ; preds = %for.body
  %7 = load i16, ptr %temp, align 2
  %shl = shl i16 %7, 8
  %call.i6 = call zeroext i16 @getBits(i8 noundef zeroext 8, i8 noundef zeroext 0)
  %add = add i16 %shl, %call.i6
  store i16 %add, ptr %temp, align 2
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %for.body
  %8 = load i8, ptr %n, align 1
  %tobool30.not = icmp eq i8 %8, 0
  br i1 %tobool30.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.end29
  %9 = load i16, ptr %temp, align 2
  %10 = load i8, ptr %i, align 1
  %idxprom = zext i8 %10 to i64
  %arrayidx = getelementptr inbounds [64 x i16], ptr @gQuant1, i64 0, i64 %idxprom
  store i16 %9, ptr %arrayidx, align 2
  br label %for.inc

if.else:                                          ; preds = %if.end29
  %11 = load i16, ptr %temp, align 2
  %12 = load i8, ptr %i, align 1
  %idxprom32 = zext i8 %12 to i64
  %arrayidx33 = getelementptr inbounds [64 x i16], ptr @gQuant0, i64 0, i64 %idxprom32
  store i16 %11, ptr %arrayidx33, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.then31, %if.else
  %13 = load i8, ptr %i, align 1
  %inc = add i8 %13, 1
  br label %for.cond, !llvm.loop !39

for.end:                                          ; preds = %for.cond
  %14 = load i8, ptr %n, align 1
  %tobool36.not = icmp eq i8 %14, 0
  %cond37 = select i1 %tobool36.not, ptr @gQuant0, ptr @gQuant1
  call void @createWinogradQuant(ptr noundef nonnull %cond37)
  store i16 65, ptr %totalRead, align 2
  %15 = load i8, ptr %prec, align 1
  %tobool38.not = icmp eq i8 %15, 0
  br i1 %tobool38.not, label %if.end43, label %if.then39

if.then39:                                        ; preds = %for.end
  %16 = load i16, ptr %totalRead, align 2
  %add41 = add i16 %16, 64
  store i16 %add41, ptr %totalRead, align 2
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %for.end
  %17 = load i16, ptr %left, align 2
  %18 = load i16, ptr %totalRead, align 2
  %cmp46 = icmp ult i16 %17, %18
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end43
  store i8 21, ptr %retval, align 1
  br label %return

if.end49:                                         ; preds = %if.end43
  %19 = load i16, ptr %left, align 2
  %20 = load i16, ptr %totalRead, align 2
  %sub52 = sub i16 %19, %20
  br label %while.cond, !llvm.loop !40

while.end:                                        ; preds = %while.cond
  store i8 0, ptr %retval, align 1
  br label %return

return:                                           ; preds = %while.end, %if.then48, %if.then13, %if.then
  %21 = load i8, ptr %retval, align 1
  ret i8 %21
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @readDRIMarker() #0 {
entry:
  %call.i = call zeroext i16 @getBits(i8 noundef zeroext 16, i8 noundef zeroext 0)
  %cmp.not = icmp eq i16 %call.i, 4
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call.i2 = call zeroext i16 @getBits(i8 noundef zeroext 16, i8 noundef zeroext 0)
  store i16 %call.i2, ptr @gRestartInterval, align 2
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i8 [ 0, %if.end ], [ 13, %entry ]
  ret i8 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @skipVariableMarker() #0 {
entry:
  %left = alloca i16, align 2
  %call.i = call zeroext i16 @getBits(i8 noundef zeroext 16, i8 noundef zeroext 0)
  store i16 %call.i, ptr %left, align 2
  %cmp = icmp ult i16 %call.i, 2
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i16, ptr %left, align 2
  %sub = add i16 %0, -2
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %storemerge = phi i16 [ %sub, %if.end ], [ %dec, %while.body ]
  store i16 %storemerge, ptr %left, align 2
  %tobool.not = icmp eq i16 %storemerge, 0
  br i1 %tobool.not, label %return, label %while.body

while.body:                                       ; preds = %while.cond
  %call.i2 = call zeroext i16 @getBits(i8 noundef zeroext 8, i8 noundef zeroext 0)
  %1 = load i16, ptr %left, align 2
  %dec = add i16 %1, -1
  br label %while.cond, !llvm.loop !41

return:                                           ; preds = %while.cond, %entry
  %storemerge3 = phi i8 [ 12, %entry ], [ 0, %while.cond ]
  ret i8 %storemerge3
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @getHuffTable(i8 noundef zeroext %index) #0 {
entry:
  %retval = alloca ptr, align 8
  switch i8 %index, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb1
    i8 2, label %sw.bb2
    i8 3, label %sw.bb3
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
  %0 = load ptr, ptr %retval, align 8
  ret ptr %0
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @getHuffVal(i8 noundef zeroext %index) #0 {
entry:
  %retval = alloca ptr, align 8
  switch i8 %index, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb1
    i8 2, label %sw.bb2
    i8 3, label %sw.bb3
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
  %0 = load ptr, ptr %retval, align 8
  ret ptr %0
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

for.cond:                                         ; preds = %if.end, %entry
  %0 = load ptr, ptr %pBits.addr, align 8
  %1 = load i8, ptr %i, align 1
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1
  store i8 %2, ptr %num, align 1
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  %3 = load ptr, ptr %pHuffTable.addr, align 8
  %4 = load i8, ptr %i, align 1
  %idxprom1 = zext i8 %4 to i64
  %arrayidx2 = getelementptr inbounds [16 x i16], ptr %3, i64 0, i64 %idxprom1
  store i16 0, ptr %arrayidx2, align 2
  %idxprom3 = zext i8 %4 to i64
  %arrayidx4 = getelementptr inbounds %struct.HuffTableT, ptr %3, i64 0, i32 1, i64 %idxprom3
  store i16 -1, ptr %arrayidx4, align 2
  %5 = load ptr, ptr %pHuffTable.addr, align 8
  %6 = load i8, ptr %i, align 1
  %idxprom5 = zext i8 %6 to i64
  %arrayidx6 = getelementptr inbounds %struct.HuffTableT, ptr %5, i64 0, i32 2, i64 %idxprom5
  store i8 0, ptr %arrayidx6, align 1
  br label %if.end

if.else:                                          ; preds = %for.cond
  %7 = load i16, ptr %code, align 2
  %8 = load ptr, ptr %pHuffTable.addr, align 8
  %9 = load i8, ptr %i, align 1
  %idxprom8 = zext i8 %9 to i64
  %arrayidx9 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 %idxprom8
  store i16 %7, ptr %arrayidx9, align 2
  %10 = load i8, ptr %num, align 1
  %conv10 = zext i8 %10 to i16
  %add = add i16 %7, %conv10
  %sub = add i16 %add, -1
  %11 = load ptr, ptr %pHuffTable.addr, align 8
  %12 = load i8, ptr %i, align 1
  %idxprom13 = zext i8 %12 to i64
  %arrayidx14 = getelementptr inbounds %struct.HuffTableT, ptr %11, i64 0, i32 1, i64 %idxprom13
  store i16 %sub, ptr %arrayidx14, align 2
  %13 = load i8, ptr %j, align 1
  %idxprom16 = zext i8 %12 to i64
  %arrayidx17 = getelementptr inbounds %struct.HuffTableT, ptr %11, i64 0, i32 2, i64 %idxprom16
  store i8 %13, ptr %arrayidx17, align 1
  %14 = load i8, ptr %num, align 1
  %add20 = add i8 %13, %14
  store i8 %add20, ptr %j, align 1
  %15 = load i16, ptr %code, align 2
  %conv23 = zext i8 %14 to i16
  %add24 = add i16 %15, %conv23
  store i16 %add24, ptr %code, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load i16, ptr %code, align 2
  %shl = shl i16 %16, 1
  store i16 %shl, ptr %code, align 2
  %17 = load i8, ptr %i, align 1
  %inc = add i8 %17, 1
  store i8 %inc, ptr %i, align 1
  %cmp = icmp ugt i8 %inc, 15
  br i1 %cmp, label %for.end, label %for.cond

for.end:                                          ; preds = %if.end
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @createWinogradQuant(ptr noundef %pQuant) #0 {
entry:
  %pQuant.addr = alloca ptr, align 8
  %i = alloca i8, align 1
  store ptr %pQuant, ptr %pQuant.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i8 [ 0, %entry ], [ %inc, %for.body ]
  store i8 %storemerge, ptr %i, align 1
  %cmp = icmp ult i8 %storemerge, 64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load ptr, ptr %pQuant.addr, align 8
  %1 = load i8, ptr %i, align 1
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds i16, ptr %0, i64 %idxprom
  %2 = load i16, ptr %arrayidx, align 2
  %conv2 = sext i16 %2 to i32
  %idxprom3 = zext i8 %1 to i64
  %arrayidx4 = getelementptr inbounds [64 x i8], ptr @gWinogradQuant, i64 0, i64 %idxprom3
  %3 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %3 to i32
  %mul = mul nsw i32 %conv2, %conv5
  %add = add nsw i32 %mul, 4
  %4 = lshr i32 %add, 3
  %conv6 = trunc i32 %4 to i16
  %5 = load ptr, ptr %pQuant.addr, align 8
  %6 = load i8, ptr %i, align 1
  %idxprom7 = zext i8 %6 to i64
  %arrayidx8 = getelementptr inbounds i16, ptr %5, i64 %idxprom7
  store i16 %conv6, ptr %arrayidx8, align 2
  %7 = load i8, ptr %i, align 1
  %inc = add i8 %7, 1
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
  store i8 0, ptr %pFoundEOI, align 1
  %call = call zeroext i8 @processMarkers(ptr noundef nonnull %c)
  store i8 %call, ptr %status, align 1
  %tobool.not = icmp eq i8 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i8, ptr %status, align 1
  store i8 %0, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8, ptr %c, align 1
  %cmp = icmp eq i8 %1, -39
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr %pFoundEOI.addr, align 8
  store i8 1, ptr %2, align 1
  store i8 0, ptr %retval, align 1
  br label %return

if.else:                                          ; preds = %if.end
  %3 = load i8, ptr %c, align 1
  %cmp4.not = icmp eq i8 %3, -38
  br i1 %cmp4.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.else
  store i8 18, ptr %retval, align 1
  br label %return

if.end8:                                          ; preds = %if.else
  %call9 = call zeroext i8 @readSOSMarker()
  store i8 %call9, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end8, %if.then6, %if.then2, %if.then
  %4 = load i8, ptr %retval, align 1
  ret i8 %4
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @checkHuffTables() #0 {
entry:
  %i = alloca i8, align 1
  %compDCTab = alloca i8, align 1
  %compACTab = alloca i8, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i8 [ 0, %entry ], [ %inc, %for.inc ]
  store i8 %storemerge, ptr %i, align 1
  %0 = load i8, ptr @gCompsInScan, align 1
  %cmp = icmp ult i8 %storemerge, %0
  br i1 %cmp, label %for.body, label %return

for.body:                                         ; preds = %for.cond
  %1 = load i8, ptr %i, align 1
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds [3 x i8], ptr @gCompList, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1
  %idxprom3 = zext i8 %2 to i64
  %arrayidx4 = getelementptr inbounds [3 x i8], ptr @gCompDCTab, i64 0, i64 %idxprom3
  %3 = load i8, ptr %arrayidx4, align 1
  store i8 %3, ptr %compDCTab, align 1
  %4 = load i8, ptr %i, align 1
  %idxprom5 = zext i8 %4 to i64
  %arrayidx6 = getelementptr inbounds [3 x i8], ptr @gCompList, i64 0, i64 %idxprom5
  %5 = load i8, ptr %arrayidx6, align 1
  %idxprom7 = zext i8 %5 to i64
  %arrayidx8 = getelementptr inbounds [3 x i8], ptr @gCompACTab, i64 0, i64 %idxprom7
  %6 = load i8, ptr %arrayidx8, align 1
  %add = add i8 %6, 2
  store i8 %add, ptr %compACTab, align 1
  %7 = load i8, ptr @gValidHuffTables, align 1
  %conv11 = zext i8 %7 to i32
  %8 = load i8, ptr %compDCTab, align 1
  %conv12 = zext i8 %8 to i32
  %shl = shl i32 1, %conv12
  %and = and i32 %shl, %conv11
  %cmp13 = icmp eq i32 %and, 0
  br i1 %cmp13, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %9 = load i8, ptr @gValidHuffTables, align 1
  %conv15 = zext i8 %9 to i32
  %10 = load i8, ptr %compACTab, align 1
  %conv16 = zext i8 %10 to i32
  %shl17 = shl i32 1, %conv16
  %and18 = and i32 %shl17, %conv15
  %cmp19 = icmp eq i32 %and18, 0
  br i1 %cmp19, label %return, label %for.inc

for.inc:                                          ; preds = %lor.lhs.false
  %11 = load i8, ptr %i, align 1
  %inc = add i8 %11, 1
  br label %for.cond, !llvm.loop !43

return:                                           ; preds = %for.cond, %for.body, %lor.lhs.false
  %storemerge1 = phi i8 [ 24, %lor.lhs.false ], [ 24, %for.body ], [ 0, %for.cond ]
  ret i8 %storemerge1
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @checkQuantTables() #0 {
entry:
  %i = alloca i8, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i8 [ 0, %entry ], [ %inc, %for.inc ]
  store i8 %storemerge, ptr %i, align 1
  %0 = load i8, ptr @gCompsInScan, align 1
  %cmp = icmp ult i8 %storemerge, %0
  br i1 %cmp, label %for.body, label %return

for.body:                                         ; preds = %for.cond
  %1 = load i8, ptr %i, align 1
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds [3 x i8], ptr @gCompList, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1
  %idxprom3 = zext i8 %2 to i64
  %arrayidx4 = getelementptr inbounds [3 x i8], ptr @gCompQuant, i64 0, i64 %idxprom3
  %3 = load i8, ptr %arrayidx4, align 1
  %tobool.not = icmp eq i8 %3, 0
  %conv6 = select i1 %tobool.not, i32 1, i32 2
  %4 = load i8, ptr @gValidQuantTables, align 1
  %conv7 = zext i8 %4 to i32
  %and = and i32 %conv6, %conv7
  %cmp9 = icmp eq i32 %and, 0
  br i1 %cmp9, label %return, label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i8, ptr %i, align 1
  %inc = add i8 %5, 1
  br label %for.cond, !llvm.loop !44

return:                                           ; preds = %for.cond, %for.body
  %storemerge1 = phi i8 [ 23, %for.body ], [ 0, %for.cond ]
  ret i8 %storemerge1
}

; Function Attrs: nounwind ssp uwtable
define internal void @fixInBuffer() #0 {
entry:
  %0 = load i8, ptr @gBitsLeft, align 1
  %cmp.not = icmp eq i8 %0, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i16, ptr @gBitBuf, align 2
  %conv2 = trunc i16 %1 to i8
  call void @stuffChar(i8 noundef zeroext %conv2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i16, ptr @gBitBuf, align 2
  %3 = lshr i16 %2, 8
  %conv4 = trunc i16 %3 to i8
  call void @stuffChar(i8 noundef zeroext %conv4)
  store i8 8, ptr @gBitsLeft, align 1
  %call.i = call zeroext i16 @getBits(i8 noundef zeroext 8, i8 noundef zeroext 1)
  %call.i2 = call zeroext i16 @getBits(i8 noundef zeroext 8, i8 noundef zeroext 1)
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
  %call.i = call zeroext i16 @getBits(i8 noundef zeroext 16, i8 noundef zeroext 0)
  store i16 %call.i, ptr %left, align 2
  %call.i2 = call zeroext i16 @getBits(i8 noundef zeroext 8, i8 noundef zeroext 0)
  %conv = trunc i16 %call.i2 to i8
  store i8 %conv, ptr @gCompsInScan, align 1
  %sub = add i16 %call.i, -3
  store i16 %sub, ptr %left, align 2
  %conv.mask = and i16 %call.i2, 255
  %conv.mask17 = and i16 %call.i2, 255
  %narrow = add nuw nsw i16 %conv.mask, %conv.mask17
  %0 = add nuw nsw i16 %narrow, 6
  %cmp.not = icmp ne i16 %call.i, %0
  %1 = load i8, ptr @gCompsInScan, align 1
  %cmp10 = icmp eq i8 %1, 0
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp10
  %2 = load i8, ptr @gCompsInScan, align 1
  %cmp14 = icmp ugt i8 %2, 3
  %or.cond21 = select i1 %or.cond, i1 true, i1 %cmp14
  br i1 %or.cond21, label %if.then, label %for.cond

if.then:                                          ; preds = %entry
  store i8 14, ptr %retval, align 1
  br label %return

for.cond:                                         ; preds = %entry, %if.end44
  %storemerge = phi i8 [ %inc57, %if.end44 ], [ 0, %entry ]
  store i8 %storemerge, ptr %i, align 1
  %3 = load i8, ptr @gCompsInScan, align 1
  %cmp18 = icmp ult i8 %storemerge, %3
  br i1 %cmp18, label %for.body, label %for.end58

for.body:                                         ; preds = %for.cond
  %call.i4 = call zeroext i16 @getBits(i8 noundef zeroext 8, i8 noundef zeroext 0)
  %conv21 = trunc i16 %call.i4 to i8
  store i8 %conv21, ptr %cc, align 1
  %call.i6 = call zeroext i16 @getBits(i8 noundef zeroext 8, i8 noundef zeroext 0)
  %conv23 = trunc i16 %call.i6 to i8
  store i8 %conv23, ptr %c, align 1
  %4 = load i16, ptr %left, align 2
  %sub25 = add i16 %4, -2
  store i16 %sub25, ptr %left, align 2
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc, %for.body
  %storemerge20 = phi i8 [ 0, %for.body ], [ %inc, %for.inc ]
  store i8 %storemerge20, ptr %ci, align 1
  %5 = load i8, ptr @gCompsInFrame, align 1
  %cmp30 = icmp ult i8 %storemerge20, %5
  br i1 %cmp30, label %for.body32, label %for.end

for.body32:                                       ; preds = %for.cond27
  %6 = load i8, ptr %cc, align 1
  %7 = load i8, ptr %ci, align 1
  %idxprom = zext i8 %7 to i64
  %arrayidx = getelementptr inbounds [3 x i8], ptr @gCompIdent, i64 0, i64 %idxprom
  %8 = load i8, ptr %arrayidx, align 1
  %cmp35 = icmp eq i8 %6, %8
  br i1 %cmp35, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body32
  %9 = load i8, ptr %ci, align 1
  %inc = add i8 %9, 1
  br label %for.cond27, !llvm.loop !45

for.end:                                          ; preds = %for.body32, %for.cond27
  %10 = load i8, ptr %ci, align 1
  %11 = load i8, ptr @gCompsInFrame, align 1
  %cmp41.not = icmp ult i8 %10, %11
  br i1 %cmp41.not, label %if.end44, label %if.then43

if.then43:                                        ; preds = %for.end
  store i8 15, ptr %retval, align 1
  br label %return

if.end44:                                         ; preds = %for.end
  %12 = load i8, ptr %ci, align 1
  %13 = load i8, ptr %i, align 1
  %idxprom45 = zext i8 %13 to i64
  %arrayidx46 = getelementptr inbounds [3 x i8], ptr @gCompList, i64 0, i64 %idxprom45
  store i8 %12, ptr %arrayidx46, align 1
  %14 = load i8, ptr %c, align 1
  %15 = lshr i8 %14, 4
  %16 = load i8, ptr %ci, align 1
  %idxprom49 = zext i8 %16 to i64
  %arrayidx50 = getelementptr inbounds [3 x i8], ptr @gCompDCTab, i64 0, i64 %idxprom49
  store i8 %15, ptr %arrayidx50, align 1
  %17 = and i8 %14, 15
  %idxprom54 = zext i8 %16 to i64
  %arrayidx55 = getelementptr inbounds [3 x i8], ptr @gCompACTab, i64 0, i64 %idxprom54
  store i8 %17, ptr %arrayidx55, align 1
  %18 = load i8, ptr %i, align 1
  %inc57 = add i8 %18, 1
  br label %for.cond, !llvm.loop !46

for.end58:                                        ; preds = %for.cond
  %call.i8 = call zeroext i16 @getBits(i8 noundef zeroext 8, i8 noundef zeroext 0)
  %conv60 = trunc i16 %call.i8 to i8
  store volatile i8 %conv60, ptr @spectral_start, align 1
  %call.i10 = call zeroext i16 @getBits(i8 noundef zeroext 8, i8 noundef zeroext 0)
  %conv62 = trunc i16 %call.i10 to i8
  store volatile i8 %conv62, ptr @spectral_end, align 1
  %call.i12 = call zeroext i16 @getBits(i8 noundef zeroext 4, i8 noundef zeroext 0)
  %conv64 = trunc i16 %call.i12 to i8
  store volatile i8 %conv64, ptr @successive_high, align 1
  %call.i14 = call zeroext i16 @getBits(i8 noundef zeroext 4, i8 noundef zeroext 0)
  %conv66 = trunc i16 %call.i14 to i8
  store volatile i8 %conv66, ptr @successive_low, align 1
  %19 = load i16, ptr %left, align 2
  %sub68 = add i16 %19, -3
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end58
  %storemerge19 = phi i16 [ %sub68, %for.end58 ], [ %dec, %while.body ]
  store i16 %storemerge19, ptr %left, align 2
  %tobool.not = icmp eq i16 %storemerge19, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %call.i16 = call zeroext i16 @getBits(i8 noundef zeroext 8, i8 noundef zeroext 0)
  %20 = load i16, ptr %left, align 2
  %dec = add i16 %20, -1
  br label %while.cond, !llvm.loop !47

while.end:                                        ; preds = %while.cond
  store i8 0, ptr %retval, align 1
  br label %return

return:                                           ; preds = %while.end, %if.then43, %if.then
  %21 = load i8, ptr %retval, align 1
  ret i8 %21
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind }

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
