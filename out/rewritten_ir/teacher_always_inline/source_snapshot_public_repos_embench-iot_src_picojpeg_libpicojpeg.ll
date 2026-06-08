; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_public_repos_embench-iot_src_picojpeg_libpicojpeg.prepared.ll'
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
  %retval.i = alloca i8, align 1
  %status.i = alloca i8, align 1
  %mcuBlock.i = alloca i8, align 1
  %componentID.i = alloca i8, align 1
  %numExtraBits.i = alloca i8, align 1
  %compACTab.i = alloca i8, align 1
  %k.i = alloca i8, align 1
  %pQ.i = alloca ptr, align 8
  %r.i = alloca i16, align 2
  %s.i = alloca i8, align 1
  %extraBits.i = alloca i16, align 2
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mcuBlock.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %componentID.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %numExtraBits.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %compACTab.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %k.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pQ.i)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %r.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %s.i)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %extraBits.i)
  %3 = load i16, ptr @gRestartInterval, align 2
  %tobool.i.not = icmp eq i16 %3, 0
  br i1 %tobool.i.not, label %if.end6.i, label %if.then.i

if.then.i:                                        ; preds = %if.end3
  %4 = load i16, ptr @gRestartsLeft, align 2
  %cmp.i = icmp eq i16 %4, 0
  br i1 %cmp.i, label %if.then2.i, label %if.end5.i

if.then2.i:                                       ; preds = %if.then.i
  %call.i = call zeroext i8 @processRestart()
  store i8 %call.i, ptr %status.i, align 1
  %tobool3.i.not = icmp eq i8 %call.i, 0
  br i1 %tobool3.i.not, label %if.end5.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.then2.i
  %5 = load i8, ptr %status.i, align 1
  store i8 %5, ptr %retval.i, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_0.exit

if.end5.i:                                        ; preds = %if.then2.i, %if.then.i
  %6 = load i16, ptr @gRestartsLeft, align 2
  %dec.i = add i16 %6, -1
  store i16 %dec.i, ptr @gRestartsLeft, align 2
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end5.i, %if.end3
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end200.i, %if.end6.i
  %storemerge = phi i8 [ 0, %if.end6.i ], [ %inc202.i, %if.end200.i ]
  store i8 %storemerge, ptr %mcuBlock.i, align 1
  %7 = load i8, ptr @gMaxBlocksPerMCU, align 1
  %cmp9.i = icmp ult i8 %storemerge, %7
  br i1 %cmp9.i, label %for.body.i, label %for.end203.i

for.body.i:                                       ; preds = %for.cond.i
  %8 = load i8, ptr %mcuBlock.i, align 1
  %idxprom.i = zext i8 %8 to i64
  %arrayidx.i = getelementptr inbounds [6 x i8], ptr @gMCUOrg, i64 0, i64 %idxprom.i
  %9 = load i8, ptr %arrayidx.i, align 1
  store i8 %9, ptr %componentID.i, align 1
  %idxprom11.i = zext i8 %9 to i64
  %arrayidx12.i = getelementptr inbounds [3 x i8], ptr @gCompQuant, i64 0, i64 %idxprom11.i
  %10 = load i8, ptr %arrayidx12.i, align 1
  %idxprom13.i = zext i8 %9 to i64
  %arrayidx14.i = getelementptr inbounds [3 x i8], ptr @gCompDCTab, i64 0, i64 %idxprom13.i
  %11 = load i8, ptr %arrayidx14.i, align 1
  %tobool16.i.not = icmp eq i8 %10, 0
  %cond.i = select i1 %tobool16.i.not, ptr @gQuant0, ptr @gQuant1
  store ptr %cond.i, ptr %pQ.i, align 8
  %tobool18.i.not = icmp eq i8 %11, 0
  %cond19.i = select i1 %tobool18.i.not, ptr @gHuffTab0, ptr @gHuffTab1
  %tobool21.i.not = icmp eq i8 %11, 0
  %cond22.i = select i1 %tobool21.i.not, ptr @gHuffVal0, ptr @gHuffVal1
  %call23.i = call zeroext i8 @huffDecode(ptr noundef nonnull %cond19.i, ptr noundef nonnull %cond22.i)
  store i8 %call23.i, ptr %s.i, align 1
  store i16 0, ptr %r.i, align 2
  %12 = and i8 %call23.i, 15
  store i8 %12, ptr %numExtraBits.i, align 1
  %tobool26.i.not = icmp eq i8 %12, 0
  br i1 %tobool26.i.not, label %if.end29.i, label %if.then27.i

if.then27.i:                                      ; preds = %for.body.i
  %13 = load i8, ptr %numExtraBits.i, align 1
  %call28.i = call zeroext i16 @getBits2(i8 noundef zeroext %13)
  store i16 %call28.i, ptr %r.i, align 2
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then27.i, %for.body.i
  %14 = load i16, ptr %r.i, align 2
  %15 = load i8, ptr %s.i, align 1
  %call30.i = call signext i16 @huffExtend(i16 noundef zeroext %14, i8 noundef zeroext %15)
  %16 = load i8, ptr %componentID.i, align 1
  %idxprom32.i = zext i8 %16 to i64
  %arrayidx33.i = getelementptr inbounds [3 x i16], ptr @gLastDC, i64 0, i64 %idxprom32.i
  %17 = load i16, ptr %arrayidx33.i, align 2
  %add.i = add i16 %call30.i, %17
  %idxprom36.i = zext i8 %16 to i64
  %arrayidx37.i = getelementptr inbounds [3 x i16], ptr @gLastDC, i64 0, i64 %idxprom36.i
  store i16 %add.i, ptr %arrayidx37.i, align 2
  %18 = load ptr, ptr %pQ.i, align 8
  %19 = load i16, ptr %18, align 2
  %mul.i = mul i16 %add.i, %19
  store i16 %mul.i, ptr @gCoeffBuf, align 2
  %20 = load i8, ptr %componentID.i, align 1
  %idxprom42.i = zext i8 %20 to i64
  %arrayidx43.i = getelementptr inbounds [3 x i8], ptr @gCompACTab, i64 0, i64 %idxprom42.i
  %21 = load i8, ptr %arrayidx43.i, align 1
  store i8 %21, ptr %compACTab.i, align 1
  %22 = load i8, ptr @gReduce, align 1
  %tobool44.i.not = icmp eq i8 %22, 0
  br i1 %tobool44.i.not, label %for.cond103.i, label %for.cond46.i

for.cond46.i:                                     ; preds = %if.end29.i, %if.end101.i
  %storemerge3 = phi i8 [ %inc.i, %if.end101.i ], [ 1, %if.end29.i ]
  store i8 %storemerge3, ptr %k.i, align 1
  %cmp48.i = icmp ult i8 %storemerge3, 64
  br i1 %cmp48.i, label %for.body50.i, label %for.end.i

for.body50.i:                                     ; preds = %for.cond46.i
  %23 = load i8, ptr %compACTab.i, align 1
  %tobool52.i.not = icmp eq i8 %23, 0
  %cond53.i = select i1 %tobool52.i.not, ptr @gHuffTab2, ptr @gHuffTab3
  %tobool55.i.not = icmp eq i8 %23, 0
  %cond56.i = select i1 %tobool55.i.not, ptr @gHuffVal2, ptr @gHuffVal3
  %call57.i = call zeroext i8 @huffDecode(ptr noundef nonnull %cond53.i, ptr noundef nonnull %cond56.i)
  store i8 %call57.i, ptr %s.i, align 1
  %24 = and i8 %call57.i, 15
  store i8 %24, ptr %numExtraBits.i, align 1
  %tobool61.i.not = icmp eq i8 %24, 0
  br i1 %tobool61.i.not, label %if.end64.i, label %if.then62.i

if.then62.i:                                      ; preds = %for.body50.i
  %25 = load i8, ptr %numExtraBits.i, align 1
  %call63.i = call zeroext i16 @getBits2(i8 noundef zeroext %25)
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.then62.i, %for.body50.i
  %26 = load i8, ptr %s.i, align 1
  %27 = lshr i8 %26, 4
  %conv66.i = zext i8 %27 to i16
  store i16 %conv66.i, ptr %r.i, align 2
  %28 = and i8 %26, 15
  store i8 %28, ptr %s.i, align 1
  %tobool70.i.not = icmp eq i8 %28, 0
  br i1 %tobool70.i.not, label %if.else.i, label %if.then71.i

if.then71.i:                                      ; preds = %if.end64.i
  %29 = load i16, ptr %r.i, align 2
  %tobool72.i.not = icmp eq i16 %29, 0
  br i1 %tobool72.i.not, label %if.end101.i, label %if.then73.i

if.then73.i:                                      ; preds = %if.then71.i
  %30 = load i8, ptr %k.i, align 1
  %conv74.i = zext i8 %30 to i32
  %31 = load i16, ptr %r.i, align 2
  %conv75.i = zext i16 %31 to i32
  %add76.i = add nuw nsw i32 %conv74.i, %conv75.i
  %cmp77.i = icmp ugt i32 %add76.i, 63
  br i1 %cmp77.i, label %if.then79.i, label %if.end80.i

if.then79.i:                                      ; preds = %if.then73.i
  store i8 28, ptr %retval.i, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_0.exit

if.end80.i:                                       ; preds = %if.then73.i
  %32 = load i8, ptr %k.i, align 1
  %33 = load i16, ptr %r.i, align 2
  %conv82.i = trunc i16 %33 to i8
  %add83.i = add i8 %32, %conv82.i
  store i8 %add83.i, ptr %k.i, align 1
  br label %if.end101.i

if.else.i:                                        ; preds = %if.end64.i
  %34 = load i16, ptr %r.i, align 2
  %cmp87.i = icmp eq i16 %34, 15
  br i1 %cmp87.i, label %if.then89.i, label %for.end.i

if.then89.i:                                      ; preds = %if.else.i
  %35 = load i8, ptr %k.i, align 1
  %cmp92.i = icmp ugt i8 %35, 48
  br i1 %cmp92.i, label %if.then94.i, label %if.end95.i

if.then94.i:                                      ; preds = %if.then89.i
  store i8 28, ptr %retval.i, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_0.exit

if.end95.i:                                       ; preds = %if.then89.i
  %36 = load i8, ptr %k.i, align 1
  %add97.i = add i8 %36, 15
  store i8 %add97.i, ptr %k.i, align 1
  br label %if.end101.i

if.end101.i:                                      ; preds = %if.then71.i, %if.end80.i, %if.end95.i
  %37 = load i8, ptr %k.i, align 1
  %inc.i = add i8 %37, 1
  br label %for.cond46.i, !llvm.loop !6

for.end.i:                                        ; preds = %if.else.i, %for.cond46.i
  %38 = load i8, ptr %mcuBlock.i, align 1
  call void @transformBlockReduce(i8 noundef zeroext %38)
  br label %if.end200.i

for.cond103.i:                                    ; preds = %if.end29.i, %if.end185.i
  %storemerge1 = phi i8 [ %inc187.i, %if.end185.i ], [ 1, %if.end29.i ]
  store i8 %storemerge1, ptr %k.i, align 1
  %cmp105.i = icmp ult i8 %storemerge1, 64
  br i1 %cmp105.i, label %for.body107.i, label %for.end188.i

for.body107.i:                                    ; preds = %for.cond103.i
  %39 = load i8, ptr %compACTab.i, align 1
  %tobool109.i.not = icmp eq i8 %39, 0
  %cond110.i = select i1 %tobool109.i.not, ptr @gHuffTab2, ptr @gHuffTab3
  %tobool112.i.not = icmp eq i8 %39, 0
  %cond113.i = select i1 %tobool112.i.not, ptr @gHuffVal2, ptr @gHuffVal3
  %call114.i = call zeroext i8 @huffDecode(ptr noundef nonnull %cond110.i, ptr noundef nonnull %cond113.i)
  store i8 %call114.i, ptr %s.i, align 1
  store i16 0, ptr %extraBits.i, align 2
  %40 = and i8 %call114.i, 15
  store i8 %40, ptr %numExtraBits.i, align 1
  %tobool118.i.not = icmp eq i8 %40, 0
  br i1 %tobool118.i.not, label %if.end121.i, label %if.then119.i

if.then119.i:                                     ; preds = %for.body107.i
  %41 = load i8, ptr %numExtraBits.i, align 1
  %call120.i = call zeroext i16 @getBits2(i8 noundef zeroext %41)
  store i16 %call120.i, ptr %extraBits.i, align 2
  br label %if.end121.i

if.end121.i:                                      ; preds = %if.then119.i, %for.body107.i
  %42 = load i8, ptr %s.i, align 1
  %43 = lshr i8 %42, 4
  %conv124.i = zext i8 %43 to i16
  store i16 %conv124.i, ptr %r.i, align 2
  %44 = and i8 %42, 15
  store i8 %44, ptr %s.i, align 1
  %tobool128.i.not = icmp eq i8 %44, 0
  br i1 %tobool128.i.not, label %if.else158.i, label %if.then129.i

if.then129.i:                                     ; preds = %if.end121.i
  %45 = load i16, ptr %r.i, align 2
  %tobool130.i.not = icmp eq i16 %45, 0
  br i1 %tobool130.i.not, label %if.end146.i, label %if.then131.i

if.then131.i:                                     ; preds = %if.then129.i
  %46 = load i8, ptr %k.i, align 1
  %conv132.i = zext i8 %46 to i32
  %47 = load i16, ptr %r.i, align 2
  %conv133.i = zext i16 %47 to i32
  %add134.i = add nuw nsw i32 %conv132.i, %conv133.i
  %cmp135.i = icmp ugt i32 %add134.i, 63
  br i1 %cmp135.i, label %if.then137.i, label %while.cond.i

if.then137.i:                                     ; preds = %if.then131.i
  store i8 28, ptr %retval.i, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_0.exit

while.cond.i:                                     ; preds = %if.then131.i, %while.body.i
  %48 = load i16, ptr %r.i, align 2
  %tobool139.i.not = icmp eq i16 %48, 0
  br i1 %tobool139.i.not, label %if.end146.i, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %49 = load i8, ptr %k.i, align 1
  %inc140.i = add i8 %49, 1
  store i8 %inc140.i, ptr %k.i, align 1
  %idxprom141.i = zext i8 %49 to i64
  %arrayidx142.i = getelementptr inbounds [64 x i8], ptr @ZAG, i64 0, i64 %idxprom141.i
  %50 = load i8, ptr %arrayidx142.i, align 1
  %idxprom143.i = sext i8 %50 to i64
  %arrayidx144.i = getelementptr inbounds [64 x i16], ptr @gCoeffBuf, i64 0, i64 %idxprom143.i
  store i16 0, ptr %arrayidx144.i, align 2
  %51 = load i16, ptr %r.i, align 2
  %dec145.i = add i16 %51, -1
  store i16 %dec145.i, ptr %r.i, align 2
  br label %while.cond.i, !llvm.loop !8

if.end146.i:                                      ; preds = %while.cond.i, %if.then129.i
  %52 = load i16, ptr %extraBits.i, align 2
  %53 = load i8, ptr %s.i, align 1
  %call147.i = call signext i16 @huffExtend(i16 noundef zeroext %52, i8 noundef zeroext %53)
  %54 = load ptr, ptr %pQ.i, align 8
  %55 = load i8, ptr %k.i, align 1
  %idxprom149.i = zext i8 %55 to i64
  %arrayidx150.i = getelementptr inbounds i16, ptr %54, i64 %idxprom149.i
  %56 = load i16, ptr %arrayidx150.i, align 2
  %mul152.i = mul i16 %call147.i, %56
  %idxprom154.i = zext i8 %55 to i64
  %arrayidx155.i = getelementptr inbounds [64 x i8], ptr @ZAG, i64 0, i64 %idxprom154.i
  %57 = load i8, ptr %arrayidx155.i, align 1
  %idxprom156.i = sext i8 %57 to i64
  %arrayidx157.i = getelementptr inbounds [64 x i16], ptr @gCoeffBuf, i64 0, i64 %idxprom156.i
  store i16 %mul152.i, ptr %arrayidx157.i, align 2
  br label %if.end185.i

if.else158.i:                                     ; preds = %if.end121.i
  %58 = load i16, ptr %r.i, align 2
  %cmp160.i = icmp eq i16 %58, 15
  br i1 %cmp160.i, label %if.then162.i, label %for.end188.i

if.then162.i:                                     ; preds = %if.else158.i
  %59 = load i8, ptr %k.i, align 1
  %cmp165.i = icmp ugt i8 %59, 48
  br i1 %cmp165.i, label %if.then167.i, label %for.cond169.i

if.then167.i:                                     ; preds = %if.then162.i
  store i8 28, ptr %retval.i, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_0.exit

for.cond169.i:                                    ; preds = %if.then162.i, %for.body173.i
  %storemerge2 = phi i16 [ %dec180.i, %for.body173.i ], [ 16, %if.then162.i ]
  store i16 %storemerge2, ptr %r.i, align 2
  %cmp171.i.not = icmp eq i16 %storemerge2, 0
  br i1 %cmp171.i.not, label %for.end181.i, label %for.body173.i

for.body173.i:                                    ; preds = %for.cond169.i
  %60 = load i8, ptr %k.i, align 1
  %inc174.i = add i8 %60, 1
  store i8 %inc174.i, ptr %k.i, align 1
  %idxprom175.i = zext i8 %60 to i64
  %arrayidx176.i = getelementptr inbounds [64 x i8], ptr @ZAG, i64 0, i64 %idxprom175.i
  %61 = load i8, ptr %arrayidx176.i, align 1
  %idxprom177.i = sext i8 %61 to i64
  %arrayidx178.i = getelementptr inbounds [64 x i16], ptr @gCoeffBuf, i64 0, i64 %idxprom177.i
  store i16 0, ptr %arrayidx178.i, align 2
  %62 = load i16, ptr %r.i, align 2
  %dec180.i = add i16 %62, -1
  br label %for.cond169.i, !llvm.loop !9

for.end181.i:                                     ; preds = %for.cond169.i
  %63 = load i8, ptr %k.i, align 1
  %dec182.i = add i8 %63, -1
  store i8 %dec182.i, ptr %k.i, align 1
  br label %if.end185.i

if.end185.i:                                      ; preds = %for.end181.i, %if.end146.i
  %64 = load i8, ptr %k.i, align 1
  %inc187.i = add i8 %64, 1
  br label %for.cond103.i, !llvm.loop !10

for.end188.i:                                     ; preds = %if.else158.i, %for.cond103.i
  br label %while.cond189.i

while.cond189.i:                                  ; preds = %while.body193.i, %for.end188.i
  %65 = load i8, ptr %k.i, align 1
  %cmp191.i = icmp ult i8 %65, 64
  br i1 %cmp191.i, label %while.body193.i, label %while.end199.i

while.body193.i:                                  ; preds = %while.cond189.i
  %66 = load i8, ptr %k.i, align 1
  %inc194.i = add i8 %66, 1
  store i8 %inc194.i, ptr %k.i, align 1
  %idxprom195.i = zext i8 %66 to i64
  %arrayidx196.i = getelementptr inbounds [64 x i8], ptr @ZAG, i64 0, i64 %idxprom195.i
  %67 = load i8, ptr %arrayidx196.i, align 1
  %idxprom197.i = sext i8 %67 to i64
  %arrayidx198.i = getelementptr inbounds [64 x i16], ptr @gCoeffBuf, i64 0, i64 %idxprom197.i
  store i16 0, ptr %arrayidx198.i, align 2
  br label %while.cond189.i, !llvm.loop !11

while.end199.i:                                   ; preds = %while.cond189.i
  %68 = load i8, ptr %mcuBlock.i, align 1
  call void @transformBlock(i8 noundef zeroext %68)
  br label %if.end200.i

if.end200.i:                                      ; preds = %while.end199.i, %for.end.i
  %69 = load i8, ptr %mcuBlock.i, align 1
  %inc202.i = add i8 %69, 1
  br label %for.cond.i, !llvm.loop !12

for.end203.i:                                     ; preds = %for.cond.i
  store i8 0, ptr %retval.i, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_0.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_0.exit: ; preds = %if.then4.i, %if.then79.i, %if.then94.i, %if.then137.i, %if.then167.i, %for.end203.i
  %70 = load i8, ptr %retval.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mcuBlock.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %componentID.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %numExtraBits.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %compACTab.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %k.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pQ.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %r.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %s.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %extraBits.i)
  store i8 %70, ptr %status, align 1
  %tobool4.not = icmp eq i8 %70, 0
  %71 = load i8, ptr @gCallbackStatus, align 1
  %tobool6.not = icmp eq i8 %71, 0
  %or.cond = select i1 %tobool4.not, i1 %tobool6.not, i1 false
  br i1 %or.cond, label %if.end13, label %if.then7

if.then7:                                         ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_0.exit
  %72 = load i8, ptr @gCallbackStatus, align 1
  %tobool9.not = icmp eq i8 %72, 0
  %73 = load i8, ptr @gCallbackStatus, align 1
  %74 = load i8, ptr %status, align 1
  %cond.in = select i1 %tobool9.not, i8 %74, i8 %73
  store i8 %cond.in, ptr %retval, align 1
  br label %return

if.end13:                                         ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_0.exit
  %75 = load i16, ptr @gNumMCUSRemaining, align 2
  %dec = add i16 %75, -1
  store i16 %dec, ptr @gNumMCUSRemaining, align 2
  store i8 0, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end13, %if.then7, %if.then2, %if.then
  %76 = load i8, ptr %retval, align 1
  ret i8 %76
}

; Function Attrs: nounwind ssp uwtable
define zeroext i8 @pjpeg_decode_init(ptr noundef %pInfo, ptr noundef %pNeed_bytes_callback, ptr noundef %pCallback_data, i8 noundef zeroext %reduce) #0 {
entry:
  %retval.i8 = alloca i8, align 1
  %foundEOI.i = alloca i8, align 1
  %status.i9 = alloca i8, align 1
  %retval.i3 = alloca i8, align 1
  %retval.i = alloca i8, align 1
  %c.i = alloca i8, align 1
  %status.i = alloca i8, align 1
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
  %call.i = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %call1.i = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  store i8 0, ptr %status, align 1
  %6 = load i8, ptr @gCallbackStatus, align 1
  %tobool2.not = icmp eq i8 %6, 0
  br i1 %tobool2.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load i8, ptr @gCallbackStatus, align 1
  %tobool4.not = icmp eq i8 %7, 0
  %8 = load i8, ptr @gCallbackStatus, align 1
  %9 = load i8, ptr %status, align 1
  %cond.in = select i1 %tobool4.not, i8 %9, i8 %8
  store i8 %cond.in, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %c.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status.i)
  %call.i1 = call zeroext i8 @locateSOIMarker()
  store i8 %call.i1, ptr %status.i, align 1
  %tobool.i.not = icmp eq i8 %call.i1, 0
  br i1 %tobool.i.not, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %10 = load i8, ptr %status.i, align 1
  store i8 %10, ptr %retval.i, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_13.exit

if.end.i:                                         ; preds = %if.end
  %call1.i2 = call zeroext i8 @processMarkers(ptr noundef nonnull %c.i)
  store i8 %call1.i2, ptr %status.i, align 1
  %tobool2.i.not = icmp eq i8 %call1.i2, 0
  br i1 %tobool2.i.not, label %if.end4.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  %11 = load i8, ptr %status.i, align 1
  store i8 %11, ptr %retval.i, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_13.exit

if.end4.i:                                        ; preds = %if.end.i
  %12 = load i8, ptr %c.i, align 1
  switch i8 %12, label %sw.default.i [
    i8 -62, label %sw.bb.i
    i8 -64, label %sw.bb5.i
    i8 -55, label %sw.bb10.i
  ]

sw.bb.i:                                          ; preds = %if.end4.i
  store i8 37, ptr %retval.i, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_13.exit

sw.bb5.i:                                         ; preds = %if.end4.i
  %call6.i = call zeroext i8 @readSOFMarker()
  store i8 %call6.i, ptr %status.i, align 1
  %tobool7.i.not = icmp eq i8 %call6.i, 0
  br i1 %tobool7.i.not, label %if.end9.i, label %if.then8.i

if.then8.i:                                       ; preds = %sw.bb5.i
  %13 = load i8, ptr %status.i, align 1
  store i8 %13, ptr %retval.i, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_13.exit

if.end9.i:                                        ; preds = %sw.bb5.i
  store i8 0, ptr %retval.i, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_13.exit

sw.bb10.i:                                        ; preds = %if.end4.i
  store i8 17, ptr %retval.i, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_13.exit

sw.default.i:                                     ; preds = %if.end4.i
  store i8 20, ptr %retval.i, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_13.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_13.exit: ; preds = %if.then.i, %if.then3.i, %sw.bb.i, %if.then8.i, %sw.bb10.i, %sw.default.i, %if.end9.i
  %14 = load i8, ptr %retval.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %c.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i)
  store i8 %14, ptr %status, align 1
  %tobool10.not = icmp eq i8 %14, 0
  %15 = load i8, ptr @gCallbackStatus, align 1
  %tobool13.not = icmp eq i8 %15, 0
  %or.cond = select i1 %tobool10.not, i1 %tobool13.not, i1 false
  br i1 %or.cond, label %if.end24, label %if.then14

if.then14:                                        ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_13.exit
  %16 = load i8, ptr @gCallbackStatus, align 1
  %tobool16.not = icmp eq i8 %16, 0
  %17 = load i8, ptr @gCallbackStatus, align 1
  %18 = load i8, ptr %status, align 1
  %cond22.in = select i1 %tobool16.not, i8 %18, i8 %17
  store i8 %cond22.in, ptr %retval, align 1
  br label %return

if.end24:                                         ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_13.exit
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %retval.i3)
  %19 = load i8, ptr @gCompsInFrame, align 1
  %cmp.i = icmp eq i8 %19, 1
  br i1 %cmp.i, label %if.then.i5, label %if.else.i

if.then.i5:                                       ; preds = %if.end24
  %20 = load i8, ptr @gCompHSamp, align 1
  %cmp3.i.not = icmp eq i8 %20, 1
  %21 = load i8, ptr @gCompVSamp, align 1
  %cmp6.i.not = icmp eq i8 %21, 1
  %or.cond20 = select i1 %cmp3.i.not, i1 %cmp6.i.not, i1 false
  br i1 %or.cond20, label %if.end.i7, label %if.then8.i6

if.then8.i6:                                      ; preds = %if.then.i5
  store i8 27, ptr %retval.i3, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_14.exit

if.end.i7:                                        ; preds = %if.then.i5
  store i32 0, ptr @gScanType, align 4
  store i8 1, ptr @gMaxBlocksPerMCU, align 1
  store i8 0, ptr @gMCUOrg, align 1
  br label %if.end71.i

if.else.i:                                        ; preds = %if.end24
  %22 = load i8, ptr @gCompsInFrame, align 1
  %cmp10.i = icmp eq i8 %22, 3
  br i1 %cmp10.i, label %if.then12.i, label %if.else69.i

if.then12.i:                                      ; preds = %if.else.i
  %23 = load i8, ptr getelementptr inbounds ([3 x i8], ptr @gCompHSamp, i64 0, i64 1), align 1
  %cmp14.i.not = icmp eq i8 %23, 1
  %24 = load i8, ptr getelementptr inbounds ([3 x i8], ptr @gCompVSamp, i64 0, i64 1), align 1
  %cmp18.i.not = icmp eq i8 %24, 1
  %or.cond21 = select i1 %cmp14.i.not, i1 %cmp18.i.not, i1 false
  %25 = load i8, ptr getelementptr inbounds ([3 x i8], ptr @gCompHSamp, i64 0, i64 2), align 1
  %cmp22.i.not = icmp eq i8 %25, 1
  %or.cond22 = select i1 %or.cond21, i1 %cmp22.i.not, i1 false
  %26 = load i8, ptr getelementptr inbounds ([3 x i8], ptr @gCompVSamp, i64 0, i64 2), align 1
  %cmp26.i.not = icmp eq i8 %26, 1
  %or.cond23 = select i1 %or.cond22, i1 %cmp26.i.not, i1 false
  br i1 %or.cond23, label %if.end29.i, label %if.then28.i

if.then28.i:                                      ; preds = %if.then12.i
  store i8 27, ptr %retval.i3, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_14.exit

if.end29.i:                                       ; preds = %if.then12.i
  %27 = load i8, ptr @gCompHSamp, align 1
  %cmp31.i = icmp eq i8 %27, 1
  %28 = load i8, ptr @gCompVSamp, align 1
  %cmp34.i = icmp eq i8 %28, 1
  %or.cond24 = select i1 %cmp31.i, i1 %cmp34.i, i1 false
  br i1 %or.cond24, label %if.then36.i, label %if.else37.i

if.then36.i:                                      ; preds = %if.end29.i
  store i32 1, ptr @gScanType, align 4
  store i8 3, ptr @gMaxBlocksPerMCU, align 1
  store i8 0, ptr @gMCUOrg, align 1
  store i8 1, ptr getelementptr inbounds ([6 x i8], ptr @gMCUOrg, i64 0, i64 1), align 1
  store i8 2, ptr getelementptr inbounds ([6 x i8], ptr @gMCUOrg, i64 0, i64 2), align 1
  br label %if.end71.i

if.else37.i:                                      ; preds = %if.end29.i
  %29 = load i8, ptr @gCompHSamp, align 1
  %cmp39.i = icmp eq i8 %29, 1
  %30 = load i8, ptr @gCompVSamp, align 1
  %cmp43.i = icmp eq i8 %30, 2
  %or.cond25 = select i1 %cmp39.i, i1 %cmp43.i, i1 false
  br i1 %or.cond25, label %if.then45.i, label %if.else46.i

if.then45.i:                                      ; preds = %if.else37.i
  store i32 3, ptr @gScanType, align 4
  store i8 4, ptr @gMaxBlocksPerMCU, align 1
  store i8 0, ptr @gMCUOrg, align 1
  store i8 0, ptr getelementptr inbounds ([6 x i8], ptr @gMCUOrg, i64 0, i64 1), align 1
  store i8 1, ptr getelementptr inbounds ([6 x i8], ptr @gMCUOrg, i64 0, i64 2), align 1
  store i8 2, ptr getelementptr inbounds ([6 x i8], ptr @gMCUOrg, i64 0, i64 3), align 1
  br label %if.end71.i

if.else46.i:                                      ; preds = %if.else37.i
  %31 = load i8, ptr @gCompHSamp, align 1
  %cmp48.i = icmp eq i8 %31, 2
  %32 = load i8, ptr @gCompVSamp, align 1
  %cmp52.i = icmp eq i8 %32, 1
  %or.cond26 = select i1 %cmp48.i, i1 %cmp52.i, i1 false
  br i1 %or.cond26, label %if.then54.i, label %if.else55.i

if.then54.i:                                      ; preds = %if.else46.i
  store i32 2, ptr @gScanType, align 4
  store i8 4, ptr @gMaxBlocksPerMCU, align 1
  store i8 0, ptr @gMCUOrg, align 1
  store i8 0, ptr getelementptr inbounds ([6 x i8], ptr @gMCUOrg, i64 0, i64 1), align 1
  store i8 1, ptr getelementptr inbounds ([6 x i8], ptr @gMCUOrg, i64 0, i64 2), align 1
  store i8 2, ptr getelementptr inbounds ([6 x i8], ptr @gMCUOrg, i64 0, i64 3), align 1
  br label %if.end71.i

if.else55.i:                                      ; preds = %if.else46.i
  %33 = load i8, ptr @gCompHSamp, align 1
  %cmp57.i = icmp eq i8 %33, 2
  %34 = load i8, ptr @gCompVSamp, align 1
  %cmp61.i = icmp eq i8 %34, 2
  %or.cond27 = select i1 %cmp57.i, i1 %cmp61.i, i1 false
  br i1 %or.cond27, label %if.then63.i, label %if.else64.i

if.then63.i:                                      ; preds = %if.else55.i
  store i32 4, ptr @gScanType, align 4
  store i8 6, ptr @gMaxBlocksPerMCU, align 1
  store i8 0, ptr @gMCUOrg, align 1
  store i8 0, ptr getelementptr inbounds ([6 x i8], ptr @gMCUOrg, i64 0, i64 1), align 1
  store i8 0, ptr getelementptr inbounds ([6 x i8], ptr @gMCUOrg, i64 0, i64 2), align 1
  store i8 0, ptr getelementptr inbounds ([6 x i8], ptr @gMCUOrg, i64 0, i64 3), align 1
  store i8 1, ptr getelementptr inbounds ([6 x i8], ptr @gMCUOrg, i64 0, i64 4), align 1
  store i8 2, ptr getelementptr inbounds ([6 x i8], ptr @gMCUOrg, i64 0, i64 5), align 1
  br label %if.end71.i

if.else64.i:                                      ; preds = %if.else55.i
  store i8 27, ptr %retval.i3, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_14.exit

if.else69.i:                                      ; preds = %if.else.i
  store i8 26, ptr %retval.i3, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_14.exit

if.end71.i:                                       ; preds = %if.then36.i, %if.then54.i, %if.then63.i, %if.then45.i, %if.end.i7
  %storemerge19 = phi i8 [ 8, %if.end.i7 ], [ 8, %if.then36.i ], [ 8, %if.then45.i ], [ 16, %if.then63.i ], [ 16, %if.then54.i ]
  %storemerge18 = phi i8 [ 8, %if.end.i7 ], [ 8, %if.then36.i ], [ 16, %if.then45.i ], [ 16, %if.then63.i ], [ 8, %if.then54.i ]
  store i8 %storemerge19, ptr @gMaxMCUXSize, align 1
  store i8 %storemerge18, ptr @gMaxMCUYSize, align 1
  %35 = load i16, ptr @gImageXSize, align 2
  %conv72.i = zext i16 %35 to i32
  %conv73.i = zext i8 %storemerge19 to i32
  %sub.i = add nsw i32 %conv73.i, -1
  %add.i = add nsw i32 %sub.i, %conv72.i
  %36 = load i8, ptr @gMaxMCUXSize, align 1
  %cmp75.i = icmp eq i8 %36, 8
  %cond.i = select i1 %cmp75.i, i32 3, i32 4
  %shr.i = ashr i32 %add.i, %cond.i
  %conv77.i = trunc i32 %shr.i to i16
  store i16 %conv77.i, ptr @gMaxMCUSPerRow, align 2
  %37 = load i16, ptr @gImageYSize, align 2
  %conv78.i = zext i16 %37 to i32
  %38 = load i8, ptr @gMaxMCUYSize, align 1
  %conv79.i = zext i8 %38 to i32
  %sub80.i = add nsw i32 %conv79.i, -1
  %add81.i = add nsw i32 %sub80.i, %conv78.i
  %cmp83.i = icmp eq i8 %38, 8
  %cond85.i = select i1 %cmp83.i, i32 3, i32 4
  %shr86.i = ashr i32 %add81.i, %cond85.i
  %conv87.i = trunc i32 %shr86.i to i16
  store i16 %conv87.i, ptr @gMaxMCUSPerCol, align 2
  %39 = load i16, ptr @gMaxMCUSPerRow, align 2
  %40 = trunc i32 %shr86.i to i16
  %conv90.i = mul i16 %39, %40
  store i16 %conv90.i, ptr @gNumMCUSRemaining, align 2
  store i8 0, ptr %retval.i3, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_14.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_14.exit: ; preds = %if.then8.i6, %if.then28.i, %if.else64.i, %if.else69.i, %if.end71.i
  %41 = load i8, ptr %retval.i3, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %retval.i3)
  store i8 %41, ptr %status, align 1
  %tobool27.not = icmp eq i8 %41, 0
  %42 = load i8, ptr @gCallbackStatus, align 1
  %tobool30.not = icmp eq i8 %42, 0
  %or.cond28 = select i1 %tobool27.not, i1 %tobool30.not, i1 false
  br i1 %or.cond28, label %if.end41, label %if.then31

if.then31:                                        ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_14.exit
  %43 = load i8, ptr @gCallbackStatus, align 1
  %tobool33.not = icmp eq i8 %43, 0
  %44 = load i8, ptr @gCallbackStatus, align 1
  %45 = load i8, ptr %status, align 1
  %cond39.in = select i1 %tobool33.not, i8 %45, i8 %44
  store i8 %cond39.in, ptr %retval, align 1
  br label %return

if.end41:                                         ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_14.exit
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %retval.i8)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %foundEOI.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status.i9)
  %call.i10 = call zeroext i8 @locateSOSMarker(ptr noundef nonnull %foundEOI.i)
  store i8 %call.i10, ptr %status.i9, align 1
  %tobool.i11.not = icmp eq i8 %call.i10, 0
  br i1 %tobool.i11.not, label %if.end.i13, label %if.then.i12

if.then.i12:                                      ; preds = %if.end41
  %46 = load i8, ptr %status.i9, align 1
  store i8 %46, ptr %retval.i8, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_15.exit

if.end.i13:                                       ; preds = %if.end41
  %47 = load i8, ptr %foundEOI.i, align 1
  %tobool1.i.not = icmp eq i8 %47, 0
  br i1 %tobool1.i.not, label %if.end3.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i13
  store i8 18, ptr %retval.i8, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_15.exit

if.end3.i:                                        ; preds = %if.end.i13
  %call4.i = call zeroext i8 @checkHuffTables()
  store i8 %call4.i, ptr %status.i9, align 1
  %tobool5.i.not = icmp eq i8 %call4.i, 0
  br i1 %tobool5.i.not, label %if.end7.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end3.i
  %48 = load i8, ptr %status.i9, align 1
  store i8 %48, ptr %retval.i8, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_15.exit

if.end7.i:                                        ; preds = %if.end3.i
  %call8.i = call zeroext i8 @checkQuantTables()
  store i8 %call8.i, ptr %status.i9, align 1
  %tobool9.i.not = icmp eq i8 %call8.i, 0
  br i1 %tobool9.i.not, label %if.end11.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end7.i
  %49 = load i8, ptr %status.i9, align 1
  store i8 %49, ptr %retval.i8, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_15.exit

if.end11.i:                                       ; preds = %if.end7.i
  store i16 0, ptr @gLastDC, align 2
  store i16 0, ptr getelementptr inbounds ([3 x i16], ptr @gLastDC, i64 0, i64 1), align 2
  store i16 0, ptr getelementptr inbounds ([3 x i16], ptr @gLastDC, i64 0, i64 2), align 2
  %50 = load i16, ptr @gRestartInterval, align 2
  %tobool12.i.not = icmp eq i16 %50, 0
  br i1 %tobool12.i.not, label %if.end14.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.end11.i
  %51 = load i16, ptr @gRestartInterval, align 2
  store i16 %51, ptr @gRestartsLeft, align 2
  store i16 0, ptr @gNextRestartNum, align 2
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then13.i, %if.end11.i
  call void @fixInBuffer()
  store i8 0, ptr %retval.i8, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_15.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_15.exit: ; preds = %if.then.i12, %if.then2.i, %if.then6.i, %if.then10.i, %if.end14.i
  %52 = load i8, ptr %retval.i8, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %retval.i8)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %foundEOI.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i9)
  store i8 %52, ptr %status, align 1
  %tobool44.not = icmp eq i8 %52, 0
  %53 = load i8, ptr @gCallbackStatus, align 1
  %tobool47.not = icmp eq i8 %53, 0
  %or.cond29 = select i1 %tobool44.not, i1 %tobool47.not, i1 false
  br i1 %or.cond29, label %if.end58, label %if.then48

if.then48:                                        ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_15.exit
  %54 = load i8, ptr @gCallbackStatus, align 1
  %tobool50.not = icmp eq i8 %54, 0
  %55 = load i8, ptr @gCallbackStatus, align 1
  %56 = load i8, ptr %status, align 1
  %cond56.in = select i1 %tobool50.not, i8 %56, i8 %55
  store i8 %cond56.in, ptr %retval, align 1
  br label %return

if.end58:                                         ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_15.exit
  %57 = load i16, ptr @gImageXSize, align 2
  %conv59 = zext i16 %57 to i32
  %58 = load ptr, ptr %pInfo.addr, align 8
  store i32 %conv59, ptr %58, align 8
  %59 = load i16, ptr @gImageYSize, align 2
  %conv61 = zext i16 %59 to i32
  %m_height62 = getelementptr inbounds %struct.pjpeg_image_info_t, ptr %58, i64 0, i32 1
  store i32 %conv61, ptr %m_height62, align 4
  %60 = load i8, ptr @gCompsInFrame, align 1
  %conv63 = zext i8 %60 to i32
  %61 = load ptr, ptr %pInfo.addr, align 8
  %m_comps64 = getelementptr inbounds %struct.pjpeg_image_info_t, ptr %61, i64 0, i32 2
  store i32 %conv63, ptr %m_comps64, align 8
  %62 = load i32, ptr @gScanType, align 4
  %m_scanType65 = getelementptr inbounds %struct.pjpeg_image_info_t, ptr %61, i64 0, i32 5
  store i32 %62, ptr %m_scanType65, align 4
  %63 = load i16, ptr @gMaxMCUSPerRow, align 2
  %conv66 = zext i16 %63 to i32
  %64 = load ptr, ptr %pInfo.addr, align 8
  %m_MCUSPerRow67 = getelementptr inbounds %struct.pjpeg_image_info_t, ptr %64, i64 0, i32 3
  store i32 %conv66, ptr %m_MCUSPerRow67, align 4
  %65 = load i16, ptr @gMaxMCUSPerCol, align 2
  %conv68 = zext i16 %65 to i32
  %m_MCUSPerCol69 = getelementptr inbounds %struct.pjpeg_image_info_t, ptr %64, i64 0, i32 4
  store i32 %conv68, ptr %m_MCUSPerCol69, align 8
  %66 = load i8, ptr @gMaxMCUXSize, align 1
  %conv70 = zext i8 %66 to i32
  %67 = load ptr, ptr %pInfo.addr, align 8
  %m_MCUWidth71 = getelementptr inbounds %struct.pjpeg_image_info_t, ptr %67, i64 0, i32 6
  store i32 %conv70, ptr %m_MCUWidth71, align 8
  %68 = load i8, ptr @gMaxMCUYSize, align 1
  %conv72 = zext i8 %68 to i32
  %m_MCUHeight73 = getelementptr inbounds %struct.pjpeg_image_info_t, ptr %67, i64 0, i32 7
  store i32 %conv72, ptr %m_MCUHeight73, align 4
  %69 = load ptr, ptr %pInfo.addr, align 8
  %m_pMCUBufR74 = getelementptr inbounds %struct.pjpeg_image_info_t, ptr %69, i64 0, i32 8
  store ptr @gMCUBufR, ptr %m_pMCUBufR74, align 8
  %m_pMCUBufG75 = getelementptr inbounds %struct.pjpeg_image_info_t, ptr %69, i64 0, i32 9
  store ptr @gMCUBufG, ptr %m_pMCUBufG75, align 8
  %m_pMCUBufB76 = getelementptr inbounds %struct.pjpeg_image_info_t, ptr %69, i64 0, i32 10
  store ptr @gMCUBufB, ptr %m_pMCUBufB76, align 8
  store i8 0, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end58, %if.then48, %if.then31, %if.then14, %if.then
  %70 = load i8, ptr %retval, align 1
  ret i8 %70
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
  %0 = load i8, ptr @gInBufLeft, align 1
  %tobool.i.not = icmp eq i8 %0, 0
  br i1 %tobool.i.not, label %if.then.i, label %if.end7.i

if.then.i:                                        ; preds = %for.body
  call void @fillInBuf()
  %1 = load i8, ptr @gInBufLeft, align 1
  %tobool1.i.not = icmp eq i8 %1, 0
  br i1 %tobool1.i.not, label %if.then2.i, label %if.end7.i

if.then2.i:                                       ; preds = %if.then.i
  %2 = load i8, ptr @gTemFlag, align 1
  %neg.i = xor i8 %2, -1
  store i8 %neg.i, ptr @gTemFlag, align 1
  %tobool5.i.not = icmp eq i8 %2, -1
  %conv6.i = select i1 %tobool5.i.not, i8 -39, i8 -1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_25.exit

if.end7.i:                                        ; preds = %if.then.i, %for.body
  %3 = load i8, ptr @gInBufLeft, align 1
  %dec.i = add i8 %3, -1
  store i8 %dec.i, ptr @gInBufLeft, align 1
  %4 = load i8, ptr @gInBufOfs, align 1
  %inc.i = add i8 %4, 1
  store i8 %inc.i, ptr @gInBufOfs, align 1
  %idxprom.i = zext i8 %4 to i64
  %arrayidx.i = getelementptr inbounds [256 x i8], ptr @gInBuf, i64 0, i64 %idxprom.i
  %5 = load i8, ptr %arrayidx.i, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_25.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_25.exit: ; preds = %if.then2.i, %if.end7.i
  %storemerge22 = phi i8 [ %conv6.i, %if.then2.i ], [ %5, %if.end7.i ]
  %cmp3 = icmp eq i8 %storemerge22, -1
  br i1 %cmp3, label %for.end, label %for.inc

for.inc:                                          ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_25.exit
  %6 = load i16, ptr %i, align 2
  %dec = add i16 %6, -1
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_25.exit, %for.cond
  %7 = load i16, ptr %i, align 2
  %cmp6 = icmp eq i16 %7, 0
  br i1 %cmp6, label %if.then8, label %for.cond10

if.then8:                                         ; preds = %for.end
  store i8 29, ptr %retval, align 1
  br label %return

for.cond10:                                       ; preds = %for.end, %for.inc21
  %8 = load i16, ptr %i, align 2
  %cmp12.not = icmp eq i16 %8, 0
  br i1 %cmp12.not, label %for.end23, label %for.body14

for.body14:                                       ; preds = %for.cond10
  %9 = load i8, ptr @gInBufLeft, align 1
  %tobool.i2.not = icmp eq i8 %9, 0
  br i1 %tobool.i2.not, label %if.then.i4, label %if.end7.i18

if.then.i4:                                       ; preds = %for.body14
  call void @fillInBuf()
  %10 = load i8, ptr @gInBufLeft, align 1
  %tobool1.i3.not = icmp eq i8 %10, 0
  br i1 %tobool1.i3.not, label %if.then2.i12, label %if.end7.i18

if.then2.i12:                                     ; preds = %if.then.i4
  %11 = load i8, ptr @gTemFlag, align 1
  %neg.i6 = xor i8 %11, -1
  store i8 %neg.i6, ptr @gTemFlag, align 1
  %tobool5.i9.not = icmp eq i8 %11, -1
  %conv6.i11 = select i1 %tobool5.i9.not, i8 -39, i8 -1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_26.exit

if.end7.i18:                                      ; preds = %if.then.i4, %for.body14
  %12 = load i8, ptr @gInBufLeft, align 1
  %dec.i14 = add i8 %12, -1
  store i8 %dec.i14, ptr @gInBufLeft, align 1
  %13 = load i8, ptr @gInBufOfs, align 1
  %inc.i15 = add i8 %13, 1
  store i8 %inc.i15, ptr @gInBufOfs, align 1
  %idxprom.i16 = zext i8 %13 to i64
  %arrayidx.i17 = getelementptr inbounds [256 x i8], ptr @gInBuf, i64 0, i64 %idxprom.i16
  %14 = load i8, ptr %arrayidx.i17, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_26.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_26.exit: ; preds = %if.then2.i12, %if.end7.i18
  %storemerge21 = phi i8 [ %conv6.i11, %if.then2.i12 ], [ %14, %if.end7.i18 ]
  store i8 %storemerge21, ptr %c, align 1
  %cmp17.not = icmp eq i8 %storemerge21, -1
  br i1 %cmp17.not, label %for.inc21, label %for.end23

for.inc21:                                        ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_26.exit
  %15 = load i16, ptr %i, align 2
  %dec22 = add i16 %15, -1
  store i16 %dec22, ptr %i, align 2
  br label %for.cond10, !llvm.loop !14

for.end23:                                        ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_26.exit, %for.cond10
  %16 = load i16, ptr %i, align 2
  %cmp25 = icmp eq i16 %16, 0
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %for.end23
  store i8 29, ptr %retval, align 1
  br label %return

if.end28:                                         ; preds = %for.end23
  %17 = load i8, ptr %c, align 1
  %conv29 = zext i8 %17 to i32
  %18 = load i16, ptr @gNextRestartNum, align 2
  %conv30 = zext i16 %18 to i32
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
  %19 = load i16, ptr @gRestartInterval, align 2
  store i16 %19, ptr @gRestartsLeft, align 2
  %20 = load i16, ptr @gNextRestartNum, align 2
  %21 = add i16 %20, 1
  %22 = and i16 %21, 7
  store i16 %22, ptr @gNextRestartNum, align 2
  store i8 8, ptr @gBitsLeft, align 1
  %call.i = call zeroext i16 @getBits(i8 noundef zeroext 8, i8 noundef zeroext 1)
  %call.i20 = call zeroext i16 @getBits(i8 noundef zeroext 8, i8 noundef zeroext 1)
  store i8 0, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end34, %if.then33, %if.then27, %if.then8
  %23 = load i8, ptr %retval, align 1
  ret i8 %23
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @huffDecode(ptr noundef %pHuffTable, ptr noundef %pHuffVal) #0 {
entry:
  %ret.i1 = alloca i8, align 1
  %ret.i = alloca i8, align 1
  %pHuffTable.addr = alloca ptr, align 8
  %pHuffVal.addr = alloca ptr, align 8
  %i = alloca i8, align 1
  %code = alloca i16, align 2
  %maxCode = alloca i16, align 2
  store ptr %pHuffTable, ptr %pHuffTable.addr, align 8
  store ptr %pHuffVal, ptr %pHuffVal.addr, align 8
  store i8 0, ptr %i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ret.i)
  store i8 0, ptr %ret.i, align 1
  %0 = load i16, ptr @gBitBuf, align 2
  %tobool.i.not = icmp sgt i16 %0, -1
  %spec.store.select = select i1 %tobool.i.not, i8 0, i8 1
  store i8 %spec.store.select, ptr %ret.i, align 1
  %1 = load i8, ptr @gBitsLeft, align 1
  %tobool1.i.not = icmp eq i8 %1, 0
  br i1 %tobool1.i.not, label %if.then2.i, label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_29.exit

if.then2.i:                                       ; preds = %entry
  %call.i = call zeroext i8 @getOctet(i8 noundef zeroext 1)
  %conv3.i = zext i8 %call.i to i16
  %2 = load i16, ptr @gBitBuf, align 2
  %or.i = or i16 %2, %conv3.i
  store i16 %or.i, ptr @gBitBuf, align 2
  %3 = load i8, ptr @gBitsLeft, align 1
  %add.i = add i8 %3, 8
  store i8 %add.i, ptr @gBitsLeft, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_29.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_29.exit: ; preds = %entry, %if.then2.i
  %4 = load i8, ptr @gBitsLeft, align 1
  %dec.i = add i8 %4, -1
  store i8 %dec.i, ptr @gBitsLeft, align 1
  %5 = load i16, ptr @gBitBuf, align 2
  %shl.i = shl i16 %5, 1
  store i16 %shl.i, ptr @gBitBuf, align 2
  %6 = load i8, ptr %ret.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ret.i)
  %conv = zext i8 %6 to i16
  br label %for.cond

for.cond:                                         ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_30.exit, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_29.exit
  %storemerge = phi i16 [ %conv, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_29.exit ], [ %or, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_30.exit ]
  store i16 %storemerge, ptr %code, align 2
  %7 = load i8, ptr %i, align 1
  %cmp = icmp eq i8 %7, 16
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %for.cond
  %8 = load ptr, ptr %pHuffTable.addr, align 8
  %9 = load i8, ptr %i, align 1
  %idxprom = zext i8 %9 to i64
  %arrayidx = getelementptr inbounds %struct.HuffTableT, ptr %8, i64 0, i32 1, i64 %idxprom
  %10 = load i16, ptr %arrayidx, align 2
  store i16 %10, ptr %maxCode, align 2
  %11 = load i16, ptr %code, align 2
  %cmp5.not = icmp ugt i16 %11, %10
  %12 = load i16, ptr %maxCode, align 2
  %cmp8.not = icmp eq i16 %12, -1
  %or.cond = select i1 %cmp5.not, i1 true, i1 %cmp8.not
  br i1 %or.cond, label %if.end11, label %for.end

if.end11:                                         ; preds = %if.end
  %13 = load i8, ptr %i, align 1
  %inc = add i8 %13, 1
  store i8 %inc, ptr %i, align 1
  %14 = load i16, ptr %code, align 2
  %shl = shl i16 %14, 1
  store i16 %shl, ptr %code, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ret.i1)
  store i8 0, ptr %ret.i1, align 1
  %15 = load i16, ptr @gBitBuf, align 2
  %tobool.i4.not = icmp sgt i16 %15, -1
  %spec.store.select22 = select i1 %tobool.i4.not, i8 0, i8 1
  store i8 %spec.store.select22, ptr %ret.i1, align 1
  %16 = load i8, ptr @gBitsLeft, align 1
  %tobool1.i6.not = icmp eq i8 %16, 0
  br i1 %tobool1.i6.not, label %if.then2.i16, label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_30.exit

if.then2.i16:                                     ; preds = %if.end11
  %call.i8 = call zeroext i8 @getOctet(i8 noundef zeroext 1)
  %conv3.i9 = zext i8 %call.i8 to i16
  %17 = load i16, ptr @gBitBuf, align 2
  %or.i11 = or i16 %17, %conv3.i9
  store i16 %or.i11, ptr @gBitBuf, align 2
  %18 = load i8, ptr @gBitsLeft, align 1
  %add.i14 = add i8 %18, 8
  store i8 %add.i14, ptr @gBitsLeft, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_30.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_30.exit: ; preds = %if.end11, %if.then2.i16
  %19 = load i8, ptr @gBitsLeft, align 1
  %dec.i17 = add i8 %19, -1
  store i8 %dec.i17, ptr @gBitsLeft, align 1
  %20 = load i16, ptr @gBitBuf, align 2
  %shl.i19 = shl i16 %20, 1
  store i16 %shl.i19, ptr @gBitBuf, align 2
  %21 = load i8, ptr %ret.i1, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ret.i1)
  %conv15 = zext i8 %21 to i16
  %22 = load i16, ptr %code, align 2
  %or = or i16 %22, %conv15
  br label %for.cond

for.end:                                          ; preds = %if.end
  %23 = load ptr, ptr %pHuffTable.addr, align 8
  %24 = load i8, ptr %i, align 1
  %idxprom18 = zext i8 %24 to i64
  %arrayidx19 = getelementptr inbounds %struct.HuffTableT, ptr %23, i64 0, i32 2, i64 %idxprom18
  %25 = load i8, ptr %arrayidx19, align 1
  %26 = load i16, ptr %code, align 2
  %conv21 = trunc i16 %26 to i8
  %27 = load ptr, ptr %pHuffTable.addr, align 8
  %28 = load i8, ptr %i, align 1
  %idxprom22 = zext i8 %28 to i64
  %arrayidx23 = getelementptr inbounds [16 x i16], ptr %27, i64 0, i64 %idxprom22
  %29 = load i16, ptr %arrayidx23, align 2
  %conv24 = trunc i16 %29 to i8
  %sub = sub i8 %conv21, %conv24
  %add = add i8 %sub, %25
  %30 = load ptr, ptr %pHuffVal.addr, align 8
  %idxprom26 = zext i8 %add to i64
  %arrayidx27 = getelementptr inbounds i8, ptr %30, i64 %idxprom26
  %31 = load i8, ptr %arrayidx27, align 1
  br label %return

return:                                           ; preds = %for.cond, %for.end
  %storemerge21 = phi i8 [ %31, %for.end ], [ 0, %for.cond ]
  ret i8 %storemerge21
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i16 @getBits2(i8 noundef zeroext %numBits) #0 {
entry:
  %numBits.addr.i = alloca i8, align 1
  %FFCheck.addr.i = alloca i8, align 1
  %origBits.i = alloca i8, align 1
  %ret.i = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %numBits.addr.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %FFCheck.addr.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %origBits.i)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ret.i)
  store i8 %numBits, ptr %numBits.addr.i, align 1
  store i8 1, ptr %FFCheck.addr.i, align 1
  store i8 %numBits, ptr %origBits.i, align 1
  %0 = load i16, ptr @gBitBuf, align 2
  store i16 %0, ptr %ret.i, align 2
  %cmp.i = icmp ugt i8 %numBits, 8
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %1 = load i8, ptr %numBits.addr.i, align 1
  %sub.i = add i8 %1, -8
  store i8 %sub.i, ptr %numBits.addr.i, align 1
  %2 = load i8, ptr @gBitsLeft, align 1
  %conv4.i = zext i8 %2 to i32
  %3 = load i16, ptr @gBitBuf, align 2
  %conv5.i = zext i16 %3 to i32
  %shl.i = shl i32 %conv5.i, %conv4.i
  %conv6.i = trunc i32 %shl.i to i16
  store i16 %conv6.i, ptr @gBitBuf, align 2
  %4 = load i8, ptr %FFCheck.addr.i, align 1
  %call.i = call zeroext i8 @getOctet(i8 noundef zeroext %4)
  %conv7.i = zext i8 %call.i to i16
  %5 = load i16, ptr @gBitBuf, align 2
  %or.i = or i16 %5, %conv7.i
  store i16 %or.i, ptr @gBitBuf, align 2
  %6 = load i8, ptr @gBitsLeft, align 1
  %conv10.i = zext i8 %6 to i32
  %sub11.i = sub nsw i32 8, %conv10.i
  %conv12.i = zext i16 %or.i to i32
  %shl13.i = shl i32 %conv12.i, %sub11.i
  %conv14.i = trunc i32 %shl13.i to i16
  store i16 %conv14.i, ptr @gBitBuf, align 2
  %7 = load i16, ptr %ret.i, align 2
  %8 = and i16 %7, -256
  %9 = trunc i32 %shl13.i to i16
  %10 = lshr i16 %9, 8
  %conv18.i = or i16 %10, %8
  store i16 %conv18.i, ptr %ret.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry
  %11 = load i8, ptr @gBitsLeft, align 1
  %12 = load i8, ptr %numBits.addr.i, align 1
  %cmp21.i = icmp ult i8 %11, %12
  br i1 %cmp21.i, label %if.then23.i, label %if.else.i

if.then23.i:                                      ; preds = %if.end.i
  %13 = load i8, ptr @gBitsLeft, align 1
  %conv24.i = zext i8 %13 to i32
  %14 = load i16, ptr @gBitBuf, align 2
  %conv25.i = zext i16 %14 to i32
  %shl26.i = shl i32 %conv25.i, %conv24.i
  %conv27.i = trunc i32 %shl26.i to i16
  store i16 %conv27.i, ptr @gBitBuf, align 2
  %15 = load i8, ptr %FFCheck.addr.i, align 1
  %call28.i = call zeroext i8 @getOctet(i8 noundef zeroext %15)
  %conv29.i = zext i8 %call28.i to i16
  %16 = load i16, ptr @gBitBuf, align 2
  %or31.i = or i16 %16, %conv29.i
  store i16 %or31.i, ptr @gBitBuf, align 2
  %17 = load i8, ptr %numBits.addr.i, align 1
  %conv33.i = zext i8 %17 to i32
  %18 = load i8, ptr @gBitsLeft, align 1
  %conv34.i = zext i8 %18 to i32
  %sub35.i = sub nsw i32 %conv33.i, %conv34.i
  %conv36.i = zext i16 %or31.i to i32
  %shl37.i = shl i32 %conv36.i, %sub35.i
  %conv38.i = trunc i32 %shl37.i to i16
  store i16 %conv38.i, ptr @gBitBuf, align 2
  %19 = load i8, ptr %numBits.addr.i, align 1
  %20 = load i8, ptr @gBitsLeft, align 1
  %sub41.i.neg = sub i8 %20, %19
  %sub42.i = add i8 %sub41.i.neg, 8
  store i8 %sub42.i, ptr @gBitsLeft, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_31.exit

if.else.i:                                        ; preds = %if.end.i
  %21 = load i8, ptr @gBitsLeft, align 1
  %22 = load i8, ptr %numBits.addr.i, align 1
  %sub46.i = sub i8 %21, %22
  store i8 %sub46.i, ptr @gBitsLeft, align 1
  %conv48.i = zext i8 %22 to i32
  %23 = load i16, ptr @gBitBuf, align 2
  %conv49.i = zext i16 %23 to i32
  %shl50.i = shl i32 %conv49.i, %conv48.i
  %conv51.i = trunc i32 %shl50.i to i16
  store i16 %conv51.i, ptr @gBitBuf, align 2
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_31.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_31.exit: ; preds = %if.then23.i, %if.else.i
  %24 = load i16, ptr %ret.i, align 2
  %conv53.i = zext i16 %24 to i32
  %25 = load i8, ptr %origBits.i, align 1
  %conv54.i = zext i8 %25 to i32
  %sub55.i = sub nsw i32 16, %conv54.i
  %shr56.i = lshr i32 %conv53.i, %sub55.i
  %conv57.i = trunc i32 %shr56.i to i16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %numBits.addr.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %FFCheck.addr.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %origBits.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ret.i)
  ret i16 %conv57.i
}

; Function Attrs: nounwind ssp uwtable
define internal signext i16 @huffExtend(i16 noundef zeroext %x, i8 noundef zeroext %s) #0 {
entry:
  %retval.i1 = alloca i16, align 2
  %retval.i = alloca i16, align 2
  %x.addr = alloca i16, align 2
  %s.addr = alloca i8, align 1
  store i16 %x, ptr %x.addr, align 2
  store i8 %s, ptr %s.addr, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %retval.i)
  switch i8 %s, label %sw.default.i [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb1.i
    i8 2, label %sw.bb2.i
    i8 3, label %sw.bb3.i
    i8 4, label %sw.bb4.i
    i8 5, label %sw.bb5.i
    i8 6, label %sw.bb6.i
    i8 7, label %sw.bb7.i
    i8 8, label %sw.bb8.i
    i8 9, label %sw.bb9.i
    i8 10, label %sw.bb10.i
    i8 11, label %sw.bb11.i
    i8 12, label %sw.bb12.i
    i8 13, label %sw.bb13.i
    i8 14, label %sw.bb14.i
    i8 15, label %sw.bb15.i
  ]

sw.bb.i:                                          ; preds = %entry
  store i16 0, ptr %retval.i, align 2
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_32.exit

sw.bb1.i:                                         ; preds = %entry
  store i16 1, ptr %retval.i, align 2
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_32.exit

sw.bb2.i:                                         ; preds = %entry
  store i16 2, ptr %retval.i, align 2
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_32.exit

sw.bb3.i:                                         ; preds = %entry
  store i16 4, ptr %retval.i, align 2
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_32.exit

sw.bb4.i:                                         ; preds = %entry
  store i16 8, ptr %retval.i, align 2
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_32.exit

sw.bb5.i:                                         ; preds = %entry
  store i16 16, ptr %retval.i, align 2
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_32.exit

sw.bb6.i:                                         ; preds = %entry
  store i16 32, ptr %retval.i, align 2
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_32.exit

sw.bb7.i:                                         ; preds = %entry
  store i16 64, ptr %retval.i, align 2
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_32.exit

sw.bb8.i:                                         ; preds = %entry
  store i16 128, ptr %retval.i, align 2
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_32.exit

sw.bb9.i:                                         ; preds = %entry
  store i16 256, ptr %retval.i, align 2
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_32.exit

sw.bb10.i:                                        ; preds = %entry
  store i16 512, ptr %retval.i, align 2
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_32.exit

sw.bb11.i:                                        ; preds = %entry
  store i16 1024, ptr %retval.i, align 2
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_32.exit

sw.bb12.i:                                        ; preds = %entry
  store i16 2048, ptr %retval.i, align 2
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_32.exit

sw.bb13.i:                                        ; preds = %entry
  store i16 4096, ptr %retval.i, align 2
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_32.exit

sw.bb14.i:                                        ; preds = %entry
  store i16 8192, ptr %retval.i, align 2
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_32.exit

sw.bb15.i:                                        ; preds = %entry
  store i16 16384, ptr %retval.i, align 2
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_32.exit

sw.default.i:                                     ; preds = %entry
  store i16 0, ptr %retval.i, align 2
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_32.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_32.exit: ; preds = %sw.bb.i, %sw.bb1.i, %sw.bb2.i, %sw.bb3.i, %sw.bb4.i, %sw.bb5.i, %sw.bb6.i, %sw.bb7.i, %sw.bb8.i, %sw.bb9.i, %sw.bb10.i, %sw.bb11.i, %sw.bb12.i, %sw.bb13.i, %sw.bb14.i, %sw.bb15.i, %sw.default.i
  %0 = load i16, ptr %retval.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %retval.i)
  %cmp = icmp ugt i16 %0, %x
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_32.exit
  %1 = load i16, ptr %x.addr, align 2
  %2 = load i8, ptr %s.addr, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %retval.i1)
  switch i8 %2, label %sw.default.i20 [
    i8 0, label %sw.bb.i4
    i8 1, label %sw.bb1.i5
    i8 2, label %sw.bb2.i6
    i8 3, label %sw.bb3.i7
    i8 4, label %sw.bb4.i8
    i8 5, label %sw.bb5.i9
    i8 6, label %sw.bb6.i10
    i8 7, label %sw.bb7.i11
    i8 8, label %sw.bb8.i12
    i8 9, label %sw.bb9.i13
    i8 10, label %sw.bb10.i14
    i8 11, label %sw.bb11.i15
    i8 12, label %sw.bb12.i16
    i8 13, label %sw.bb13.i17
    i8 14, label %sw.bb14.i18
    i8 15, label %sw.bb15.i19
  ]

sw.bb.i4:                                         ; preds = %cond.true
  store i16 0, ptr %retval.i1, align 2
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_33.exit

sw.bb1.i5:                                        ; preds = %cond.true
  store i16 -1, ptr %retval.i1, align 2
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_33.exit

sw.bb2.i6:                                        ; preds = %cond.true
  store i16 -3, ptr %retval.i1, align 2
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_33.exit

sw.bb3.i7:                                        ; preds = %cond.true
  store i16 -7, ptr %retval.i1, align 2
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_33.exit

sw.bb4.i8:                                        ; preds = %cond.true
  store i16 -15, ptr %retval.i1, align 2
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_33.exit

sw.bb5.i9:                                        ; preds = %cond.true
  store i16 -31, ptr %retval.i1, align 2
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_33.exit

sw.bb6.i10:                                       ; preds = %cond.true
  store i16 -63, ptr %retval.i1, align 2
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_33.exit

sw.bb7.i11:                                       ; preds = %cond.true
  store i16 -127, ptr %retval.i1, align 2
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_33.exit

sw.bb8.i12:                                       ; preds = %cond.true
  store i16 -255, ptr %retval.i1, align 2
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_33.exit

sw.bb9.i13:                                       ; preds = %cond.true
  store i16 -511, ptr %retval.i1, align 2
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_33.exit

sw.bb10.i14:                                      ; preds = %cond.true
  store i16 -1023, ptr %retval.i1, align 2
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_33.exit

sw.bb11.i15:                                      ; preds = %cond.true
  store i16 -2047, ptr %retval.i1, align 2
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_33.exit

sw.bb12.i16:                                      ; preds = %cond.true
  store i16 -4095, ptr %retval.i1, align 2
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_33.exit

sw.bb13.i17:                                      ; preds = %cond.true
  store i16 -8191, ptr %retval.i1, align 2
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_33.exit

sw.bb14.i18:                                      ; preds = %cond.true
  store i16 -16383, ptr %retval.i1, align 2
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_33.exit

sw.bb15.i19:                                      ; preds = %cond.true
  store i16 -32767, ptr %retval.i1, align 2
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_33.exit

sw.default.i20:                                   ; preds = %cond.true
  store i16 0, ptr %retval.i1, align 2
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_33.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_33.exit: ; preds = %sw.bb.i4, %sw.bb1.i5, %sw.bb2.i6, %sw.bb3.i7, %sw.bb4.i8, %sw.bb5.i9, %sw.bb6.i10, %sw.bb7.i11, %sw.bb8.i12, %sw.bb9.i13, %sw.bb10.i14, %sw.bb11.i15, %sw.bb12.i16, %sw.bb13.i17, %sw.bb14.i18, %sw.bb15.i19, %sw.default.i20
  %3 = load i16, ptr %retval.i1, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %retval.i1)
  %add = add i16 %1, %3
  br label %cond.end

cond.false:                                       ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_32.exit
  %4 = load i16, ptr %x.addr, align 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_33.exit
  %cond = phi i16 [ %add, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_33.exit ], [ %4, %cond.false ]
  ret i16 %cond
}

; Function Attrs: nounwind ssp uwtable
define internal void @transformBlockReduce(i8 noundef zeroext %mcuBlock) #0 {
entry:
  %retval.i687 = alloca i8, align 1
  %b.addr.i689 = alloca i16, align 2
  %retval.i667 = alloca i8, align 1
  %b.addr.i669 = alloca i16, align 2
  %retval.i647 = alloca i8, align 1
  %b.addr.i649 = alloca i16, align 2
  %retval.i627 = alloca i8, align 1
  %b.addr.i629 = alloca i16, align 2
  %retval.i607 = alloca i8, align 1
  %b.addr.i609 = alloca i16, align 2
  %retval.i587 = alloca i8, align 1
  %b.addr.i589 = alloca i16, align 2
  %retval.i567 = alloca i8, align 1
  %b.addr.i569 = alloca i16, align 2
  %retval.i547 = alloca i8, align 1
  %b.addr.i549 = alloca i16, align 2
  %retval.i527 = alloca i8, align 1
  %b.addr.i529 = alloca i16, align 2
  %retval.i507 = alloca i8, align 1
  %b.addr.i509 = alloca i16, align 2
  %retval.i487 = alloca i8, align 1
  %b.addr.i489 = alloca i16, align 2
  %retval.i467 = alloca i8, align 1
  %b.addr.i469 = alloca i16, align 2
  %retval.i447 = alloca i8, align 1
  %b.addr.i449 = alloca i16, align 2
  %retval.i427 = alloca i8, align 1
  %b.addr.i429 = alloca i16, align 2
  %retval.i407 = alloca i8, align 1
  %b.addr.i409 = alloca i16, align 2
  %retval.i387 = alloca i8, align 1
  %b.addr.i389 = alloca i16, align 2
  %retval.i367 = alloca i8, align 1
  %b.addr.i369 = alloca i16, align 2
  %retval.i347 = alloca i8, align 1
  %b.addr.i349 = alloca i16, align 2
  %retval.i327 = alloca i8, align 1
  %b.addr.i329 = alloca i16, align 2
  %retval.i307 = alloca i8, align 1
  %b.addr.i309 = alloca i16, align 2
  %retval.i287 = alloca i8, align 1
  %b.addr.i289 = alloca i16, align 2
  %retval.i267 = alloca i8, align 1
  %b.addr.i269 = alloca i16, align 2
  %retval.i247 = alloca i8, align 1
  %b.addr.i249 = alloca i16, align 2
  %retval.i227 = alloca i8, align 1
  %b.addr.i229 = alloca i16, align 2
  %retval.i207 = alloca i8, align 1
  %b.addr.i209 = alloca i16, align 2
  %retval.i187 = alloca i8, align 1
  %b.addr.i189 = alloca i16, align 2
  %retval.i167 = alloca i8, align 1
  %b.addr.i169 = alloca i16, align 2
  %retval.i147 = alloca i8, align 1
  %b.addr.i149 = alloca i16, align 2
  %retval.i127 = alloca i8, align 1
  %b.addr.i129 = alloca i16, align 2
  %retval.i107 = alloca i8, align 1
  %b.addr.i109 = alloca i16, align 2
  %retval.i87 = alloca i8, align 1
  %b.addr.i89 = alloca i16, align 2
  %retval.i67 = alloca i8, align 1
  %b.addr.i69 = alloca i16, align 2
  %retval.i47 = alloca i8, align 1
  %b.addr.i49 = alloca i16, align 2
  %retval.i27 = alloca i8, align 1
  %b.addr.i29 = alloca i16, align 2
  %retval.i8 = alloca i8, align 1
  %b.addr.i10 = alloca i16, align 2
  %retval.i1 = alloca i8, align 1
  %b.addr.i = alloca i16, align 2
  %retval.i = alloca i8, align 1
  %s.addr.i = alloca i16, align 2
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %s.addr.i)
  store i16 %conv2, ptr %s.addr.i, align 2
  %cmp.i = icmp ugt i16 %conv2, 255
  br i1 %cmp.i, label %if.then.i, label %if.end11.i

if.then.i:                                        ; preds = %entry
  %2 = load i16, ptr %s.addr.i, align 2
  %cmp3.i = icmp slt i16 %2, 0
  br i1 %cmp3.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %if.then.i
  store i8 0, ptr %retval.i, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_34.exit

if.else.i:                                        ; preds = %if.then.i
  %3 = load i16, ptr %s.addr.i, align 2
  %cmp7.i = icmp sgt i16 %3, 255
  br i1 %cmp7.i, label %if.then9.i, label %if.end11.i

if.then9.i:                                       ; preds = %if.else.i
  store i8 -1, ptr %retval.i, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_34.exit

if.end11.i:                                       ; preds = %if.else.i, %entry
  %4 = load i16, ptr %s.addr.i, align 2
  %conv12.i = trunc i16 %4 to i8
  store i8 %conv12.i, ptr %retval.i, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_34.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_34.exit: ; preds = %if.then5.i, %if.then9.i, %if.end11.i
  %5 = load i8, ptr %retval.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %s.addr.i)
  store i8 %5, ptr %c, align 1
  %6 = load i32, ptr @gScanType, align 4
  switch i32 %6, label %sw.epilog161 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 3, label %sw.bb34
    i32 2, label %sw.bb73
    i32 4, label %sw.bb112
  ]

sw.bb:                                            ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_34.exit
  %7 = load i8, ptr %c, align 1
  store i8 %7, ptr @gMCUBufR, align 1
  br label %sw.epilog161

sw.bb3:                                           ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_34.exit
  %8 = load i8, ptr %mcuBlock.addr, align 1
  switch i8 %8, label %sw.epilog161 [
    i8 0, label %sw.bb5
    i8 1, label %sw.bb6
    i8 2, label %sw.bb19
  ]

sw.bb5:                                           ; preds = %sw.bb3
  %9 = load i8, ptr %c, align 1
  store i8 %9, ptr @gMCUBufR, align 1
  store i8 %9, ptr @gMCUBufG, align 1
  store i8 %9, ptr @gMCUBufB, align 1
  br label %sw.epilog161

sw.bb6:                                           ; preds = %sw.bb3
  %10 = load i8, ptr %c, align 1
  %conv7 = zext i8 %10 to i16
  %mul = mul nuw nsw i16 %conv7, 88
  %shr8 = lshr i16 %mul, 8
  %sub = add nsw i16 %shr8, -44
  store i16 %sub, ptr %cbG, align 2
  %11 = load i8, ptr @gMCUBufG, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %retval.i1)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b.addr.i)
  %conv.i2 = zext i8 %11 to i16
  %sub.i = sub nsw i16 %conv.i2, %sub
  store i16 %sub.i, ptr %b.addr.i, align 2
  %cmp.i4 = icmp ugt i16 %sub.i, 255
  br i1 %cmp.i4, label %if.then.i5, label %if.end14.i

if.then.i5:                                       ; preds = %sw.bb6
  %12 = load i16, ptr %b.addr.i, align 2
  %cmp6.i = icmp slt i16 %12, 0
  br i1 %cmp6.i, label %if.then8.i, label %if.else.i6

if.then8.i:                                       ; preds = %if.then.i5
  store i8 0, ptr %retval.i1, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_35.exit

if.else.i6:                                       ; preds = %if.then.i5
  %13 = load i16, ptr %b.addr.i, align 2
  %cmp10.i = icmp sgt i16 %13, 255
  br i1 %cmp10.i, label %if.then12.i, label %if.end14.i

if.then12.i:                                      ; preds = %if.else.i6
  store i8 -1, ptr %retval.i1, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_35.exit

if.end14.i:                                       ; preds = %if.else.i6, %sw.bb6
  %14 = load i16, ptr %b.addr.i, align 2
  %conv15.i = trunc i16 %14 to i8
  store i8 %conv15.i, ptr %retval.i1, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_35.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_35.exit: ; preds = %if.then8.i, %if.then12.i, %if.end14.i
  %15 = load i8, ptr %retval.i1, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %retval.i1)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b.addr.i)
  store i8 %15, ptr @gMCUBufG, align 1
  %16 = load i8, ptr %c, align 1
  %conv11 = zext i8 %16 to i16
  %conv12 = zext i8 %16 to i16
  %mul13 = mul nuw i16 %conv12, 198
  %shr14 = lshr i16 %mul13, 8
  %add15 = add nuw nsw i16 %shr14, %conv11
  %sub16 = add nsw i16 %add15, -227
  store i16 %sub16, ptr %cbB, align 2
  %17 = load i8, ptr @gMCUBufB, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %retval.i8)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b.addr.i10)
  %conv.i11 = zext i8 %17 to i16
  %add.i = add nsw i16 %sub16, %conv.i11
  store i16 %add.i, ptr %b.addr.i10, align 2
  %cmp.i15 = icmp ugt i16 %add.i, 255
  br i1 %cmp.i15, label %if.then.i18, label %if.end14.i26

if.then.i18:                                      ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_35.exit
  %18 = load i16, ptr %b.addr.i10, align 2
  %cmp6.i17 = icmp slt i16 %18, 0
  br i1 %cmp6.i17, label %if.then8.i19, label %if.else.i22

if.then8.i19:                                     ; preds = %if.then.i18
  store i8 0, ptr %retval.i8, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_36.exit

if.else.i22:                                      ; preds = %if.then.i18
  %19 = load i16, ptr %b.addr.i10, align 2
  %cmp10.i21 = icmp sgt i16 %19, 255
  br i1 %cmp10.i21, label %if.then12.i23, label %if.end14.i26

if.then12.i23:                                    ; preds = %if.else.i22
  store i8 -1, ptr %retval.i8, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_36.exit

if.end14.i26:                                     ; preds = %if.else.i22, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_35.exit
  %20 = load i16, ptr %b.addr.i10, align 2
  %conv15.i25 = trunc i16 %20 to i8
  store i8 %conv15.i25, ptr %retval.i8, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_36.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_36.exit: ; preds = %if.then8.i19, %if.then12.i23, %if.end14.i26
  %21 = load i8, ptr %retval.i8, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %retval.i8)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b.addr.i10)
  store i8 %21, ptr @gMCUBufB, align 1
  br label %sw.epilog161

sw.bb19:                                          ; preds = %sw.bb3
  %22 = load i8, ptr %c, align 1
  %conv20 = zext i8 %22 to i16
  %conv21 = zext i8 %22 to i16
  %mul22 = mul nuw nsw i16 %conv21, 103
  %shr23 = lshr i16 %mul22, 8
  %add24 = add nuw nsw i16 %shr23, %conv20
  %sub25 = add nsw i16 %add24, -179
  store i16 %sub25, ptr %crR, align 2
  %23 = load i8, ptr @gMCUBufR, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %retval.i27)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b.addr.i29)
  %conv.i30 = zext i8 %23 to i16
  %add.i32 = add nsw i16 %sub25, %conv.i30
  store i16 %add.i32, ptr %b.addr.i29, align 2
  %cmp.i35 = icmp ugt i16 %add.i32, 255
  br i1 %cmp.i35, label %if.then.i38, label %if.end14.i46

if.then.i38:                                      ; preds = %sw.bb19
  %24 = load i16, ptr %b.addr.i29, align 2
  %cmp6.i37 = icmp slt i16 %24, 0
  br i1 %cmp6.i37, label %if.then8.i39, label %if.else.i42

if.then8.i39:                                     ; preds = %if.then.i38
  store i8 0, ptr %retval.i27, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_37.exit

if.else.i42:                                      ; preds = %if.then.i38
  %25 = load i16, ptr %b.addr.i29, align 2
  %cmp10.i41 = icmp sgt i16 %25, 255
  br i1 %cmp10.i41, label %if.then12.i43, label %if.end14.i46

if.then12.i43:                                    ; preds = %if.else.i42
  store i8 -1, ptr %retval.i27, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_37.exit

if.end14.i46:                                     ; preds = %if.else.i42, %sw.bb19
  %26 = load i16, ptr %b.addr.i29, align 2
  %conv15.i45 = trunc i16 %26 to i8
  store i8 %conv15.i45, ptr %retval.i27, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_37.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_37.exit: ; preds = %if.then8.i39, %if.then12.i43, %if.end14.i46
  %27 = load i8, ptr %retval.i27, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %retval.i27)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b.addr.i29)
  store i8 %27, ptr @gMCUBufR, align 1
  %28 = load i8, ptr %c, align 1
  %conv28 = zext i8 %28 to i16
  %mul29 = mul nuw i16 %conv28, 183
  %shr30 = lshr i16 %mul29, 8
  %sub31 = add nsw i16 %shr30, -91
  store i16 %sub31, ptr %crG, align 2
  %29 = load i8, ptr @gMCUBufG, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %retval.i47)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b.addr.i49)
  %conv.i50 = zext i8 %29 to i16
  %sub.i52 = sub nsw i16 %conv.i50, %sub31
  store i16 %sub.i52, ptr %b.addr.i49, align 2
  %cmp.i55 = icmp ugt i16 %sub.i52, 255
  br i1 %cmp.i55, label %if.then.i58, label %if.end14.i66

if.then.i58:                                      ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_37.exit
  %30 = load i16, ptr %b.addr.i49, align 2
  %cmp6.i57 = icmp slt i16 %30, 0
  br i1 %cmp6.i57, label %if.then8.i59, label %if.else.i62

if.then8.i59:                                     ; preds = %if.then.i58
  store i8 0, ptr %retval.i47, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_38.exit

if.else.i62:                                      ; preds = %if.then.i58
  %31 = load i16, ptr %b.addr.i49, align 2
  %cmp10.i61 = icmp sgt i16 %31, 255
  br i1 %cmp10.i61, label %if.then12.i63, label %if.end14.i66

if.then12.i63:                                    ; preds = %if.else.i62
  store i8 -1, ptr %retval.i47, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_38.exit

if.end14.i66:                                     ; preds = %if.else.i62, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_37.exit
  %32 = load i16, ptr %b.addr.i49, align 2
  %conv15.i65 = trunc i16 %32 to i8
  store i8 %conv15.i65, ptr %retval.i47, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_38.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_38.exit: ; preds = %if.then8.i59, %if.then12.i63, %if.end14.i66
  %33 = load i8, ptr %retval.i47, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %retval.i47)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b.addr.i49)
  store i8 %33, ptr @gMCUBufG, align 1
  br label %sw.epilog161

sw.bb34:                                          ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_34.exit
  %34 = load i8, ptr %mcuBlock.addr, align 1
  switch i8 %34, label %sw.epilog161 [
    i8 0, label %sw.bb36
    i8 1, label %sw.bb37
    i8 2, label %sw.bb38
    i8 3, label %sw.bb55
  ]

sw.bb36:                                          ; preds = %sw.bb34
  %35 = load i8, ptr %c, align 1
  store i8 %35, ptr @gMCUBufR, align 1
  store i8 %35, ptr @gMCUBufG, align 1
  store i8 %35, ptr @gMCUBufB, align 1
  br label %sw.epilog161

sw.bb37:                                          ; preds = %sw.bb34
  %36 = load i8, ptr %c, align 1
  store i8 %36, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 128), align 1
  store i8 %36, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 128), align 1
  store i8 %36, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 128), align 1
  br label %sw.epilog161

sw.bb38:                                          ; preds = %sw.bb34
  %37 = load i8, ptr %c, align 1
  %conv39 = zext i8 %37 to i16
  %mul40 = mul nuw nsw i16 %conv39, 88
  %shr41 = lshr i16 %mul40, 8
  %sub42 = add nsw i16 %shr41, -44
  store i16 %sub42, ptr %cbG, align 2
  %38 = load i8, ptr @gMCUBufG, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %retval.i67)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b.addr.i69)
  %conv.i70 = zext i8 %38 to i16
  %sub.i72 = sub nsw i16 %conv.i70, %sub42
  store i16 %sub.i72, ptr %b.addr.i69, align 2
  %cmp.i75 = icmp ugt i16 %sub.i72, 255
  br i1 %cmp.i75, label %if.then.i78, label %if.end14.i86

if.then.i78:                                      ; preds = %sw.bb38
  %39 = load i16, ptr %b.addr.i69, align 2
  %cmp6.i77 = icmp slt i16 %39, 0
  br i1 %cmp6.i77, label %if.then8.i79, label %if.else.i82

if.then8.i79:                                     ; preds = %if.then.i78
  store i8 0, ptr %retval.i67, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_39.exit

if.else.i82:                                      ; preds = %if.then.i78
  %40 = load i16, ptr %b.addr.i69, align 2
  %cmp10.i81 = icmp sgt i16 %40, 255
  br i1 %cmp10.i81, label %if.then12.i83, label %if.end14.i86

if.then12.i83:                                    ; preds = %if.else.i82
  store i8 -1, ptr %retval.i67, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_39.exit

if.end14.i86:                                     ; preds = %if.else.i82, %sw.bb38
  %41 = load i16, ptr %b.addr.i69, align 2
  %conv15.i85 = trunc i16 %41 to i8
  store i8 %conv15.i85, ptr %retval.i67, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_39.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_39.exit: ; preds = %if.then8.i79, %if.then12.i83, %if.end14.i86
  %42 = load i8, ptr %retval.i67, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %retval.i67)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b.addr.i69)
  store i8 %42, ptr @gMCUBufG, align 1
  %43 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 128), align 1
  %44 = load i16, ptr %cbG, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %retval.i87)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b.addr.i89)
  %conv.i90 = zext i8 %43 to i16
  %sub.i92 = sub i16 %conv.i90, %44
  store i16 %sub.i92, ptr %b.addr.i89, align 2
  %cmp.i95 = icmp ugt i16 %sub.i92, 255
  br i1 %cmp.i95, label %if.then.i98, label %if.end14.i106

if.then.i98:                                      ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_39.exit
  %45 = load i16, ptr %b.addr.i89, align 2
  %cmp6.i97 = icmp slt i16 %45, 0
  br i1 %cmp6.i97, label %if.then8.i99, label %if.else.i102

if.then8.i99:                                     ; preds = %if.then.i98
  store i8 0, ptr %retval.i87, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_40.exit

if.else.i102:                                     ; preds = %if.then.i98
  %46 = load i16, ptr %b.addr.i89, align 2
  %cmp10.i101 = icmp sgt i16 %46, 255
  br i1 %cmp10.i101, label %if.then12.i103, label %if.end14.i106

if.then12.i103:                                   ; preds = %if.else.i102
  store i8 -1, ptr %retval.i87, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_40.exit

if.end14.i106:                                    ; preds = %if.else.i102, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_39.exit
  %47 = load i16, ptr %b.addr.i89, align 2
  %conv15.i105 = trunc i16 %47 to i8
  store i8 %conv15.i105, ptr %retval.i87, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_40.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_40.exit: ; preds = %if.then8.i99, %if.then12.i103, %if.end14.i106
  %48 = load i8, ptr %retval.i87, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %retval.i87)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b.addr.i89)
  store i8 %48, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 128), align 1
  %49 = load i8, ptr %c, align 1
  %conv46 = zext i8 %49 to i16
  %conv47 = zext i8 %49 to i16
  %mul48 = mul nuw i16 %conv47, 198
  %shr49 = lshr i16 %mul48, 8
  %add50 = add nuw nsw i16 %shr49, %conv46
  %sub51 = add nsw i16 %add50, -227
  store i16 %sub51, ptr %cbB, align 2
  %50 = load i8, ptr @gMCUBufB, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %retval.i107)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b.addr.i109)
  %conv.i110 = zext i8 %50 to i16
  %add.i112 = add nsw i16 %sub51, %conv.i110
  store i16 %add.i112, ptr %b.addr.i109, align 2
  %cmp.i115 = icmp ugt i16 %add.i112, 255
  br i1 %cmp.i115, label %if.then.i118, label %if.end14.i126

if.then.i118:                                     ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_40.exit
  %51 = load i16, ptr %b.addr.i109, align 2
  %cmp6.i117 = icmp slt i16 %51, 0
  br i1 %cmp6.i117, label %if.then8.i119, label %if.else.i122

if.then8.i119:                                    ; preds = %if.then.i118
  store i8 0, ptr %retval.i107, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_41.exit

if.else.i122:                                     ; preds = %if.then.i118
  %52 = load i16, ptr %b.addr.i109, align 2
  %cmp10.i121 = icmp sgt i16 %52, 255
  br i1 %cmp10.i121, label %if.then12.i123, label %if.end14.i126

if.then12.i123:                                   ; preds = %if.else.i122
  store i8 -1, ptr %retval.i107, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_41.exit

if.end14.i126:                                    ; preds = %if.else.i122, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_40.exit
  %53 = load i16, ptr %b.addr.i109, align 2
  %conv15.i125 = trunc i16 %53 to i8
  store i8 %conv15.i125, ptr %retval.i107, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_41.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_41.exit: ; preds = %if.then8.i119, %if.then12.i123, %if.end14.i126
  %54 = load i8, ptr %retval.i107, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %retval.i107)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b.addr.i109)
  store i8 %54, ptr @gMCUBufB, align 1
  %55 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 128), align 1
  %56 = load i16, ptr %cbB, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %retval.i127)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b.addr.i129)
  %conv.i130 = zext i8 %55 to i16
  %add.i132 = add i16 %56, %conv.i130
  store i16 %add.i132, ptr %b.addr.i129, align 2
  %cmp.i135 = icmp ugt i16 %add.i132, 255
  br i1 %cmp.i135, label %if.then.i138, label %if.end14.i146

if.then.i138:                                     ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_41.exit
  %57 = load i16, ptr %b.addr.i129, align 2
  %cmp6.i137 = icmp slt i16 %57, 0
  br i1 %cmp6.i137, label %if.then8.i139, label %if.else.i142

if.then8.i139:                                    ; preds = %if.then.i138
  store i8 0, ptr %retval.i127, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_42.exit

if.else.i142:                                     ; preds = %if.then.i138
  %58 = load i16, ptr %b.addr.i129, align 2
  %cmp10.i141 = icmp sgt i16 %58, 255
  br i1 %cmp10.i141, label %if.then12.i143, label %if.end14.i146

if.then12.i143:                                   ; preds = %if.else.i142
  store i8 -1, ptr %retval.i127, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_42.exit

if.end14.i146:                                    ; preds = %if.else.i142, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_41.exit
  %59 = load i16, ptr %b.addr.i129, align 2
  %conv15.i145 = trunc i16 %59 to i8
  store i8 %conv15.i145, ptr %retval.i127, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_42.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_42.exit: ; preds = %if.then8.i139, %if.then12.i143, %if.end14.i146
  %60 = load i8, ptr %retval.i127, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %retval.i127)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b.addr.i129)
  store i8 %60, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 128), align 1
  br label %sw.epilog161

sw.bb55:                                          ; preds = %sw.bb34
  %61 = load i8, ptr %c, align 1
  %conv56 = zext i8 %61 to i16
  %conv57 = zext i8 %61 to i16
  %mul58 = mul nuw nsw i16 %conv57, 103
  %shr59 = lshr i16 %mul58, 8
  %add60 = add nuw nsw i16 %shr59, %conv56
  %sub61 = add nsw i16 %add60, -179
  store i16 %sub61, ptr %crR, align 2
  %62 = load i8, ptr @gMCUBufR, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %retval.i147)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b.addr.i149)
  %conv.i150 = zext i8 %62 to i16
  %add.i152 = add nsw i16 %sub61, %conv.i150
  store i16 %add.i152, ptr %b.addr.i149, align 2
  %cmp.i155 = icmp ugt i16 %add.i152, 255
  br i1 %cmp.i155, label %if.then.i158, label %if.end14.i166

if.then.i158:                                     ; preds = %sw.bb55
  %63 = load i16, ptr %b.addr.i149, align 2
  %cmp6.i157 = icmp slt i16 %63, 0
  br i1 %cmp6.i157, label %if.then8.i159, label %if.else.i162

if.then8.i159:                                    ; preds = %if.then.i158
  store i8 0, ptr %retval.i147, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_43.exit

if.else.i162:                                     ; preds = %if.then.i158
  %64 = load i16, ptr %b.addr.i149, align 2
  %cmp10.i161 = icmp sgt i16 %64, 255
  br i1 %cmp10.i161, label %if.then12.i163, label %if.end14.i166

if.then12.i163:                                   ; preds = %if.else.i162
  store i8 -1, ptr %retval.i147, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_43.exit

if.end14.i166:                                    ; preds = %if.else.i162, %sw.bb55
  %65 = load i16, ptr %b.addr.i149, align 2
  %conv15.i165 = trunc i16 %65 to i8
  store i8 %conv15.i165, ptr %retval.i147, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_43.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_43.exit: ; preds = %if.then8.i159, %if.then12.i163, %if.end14.i166
  %66 = load i8, ptr %retval.i147, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %retval.i147)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b.addr.i149)
  store i8 %66, ptr @gMCUBufR, align 1
  %67 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 128), align 1
  %68 = load i16, ptr %crR, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %retval.i167)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b.addr.i169)
  %conv.i170 = zext i8 %67 to i16
  %add.i172 = add i16 %68, %conv.i170
  store i16 %add.i172, ptr %b.addr.i169, align 2
  %cmp.i175 = icmp ugt i16 %add.i172, 255
  br i1 %cmp.i175, label %if.then.i178, label %if.end14.i186

if.then.i178:                                     ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_43.exit
  %69 = load i16, ptr %b.addr.i169, align 2
  %cmp6.i177 = icmp slt i16 %69, 0
  br i1 %cmp6.i177, label %if.then8.i179, label %if.else.i182

if.then8.i179:                                    ; preds = %if.then.i178
  store i8 0, ptr %retval.i167, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_44.exit

if.else.i182:                                     ; preds = %if.then.i178
  %70 = load i16, ptr %b.addr.i169, align 2
  %cmp10.i181 = icmp sgt i16 %70, 255
  br i1 %cmp10.i181, label %if.then12.i183, label %if.end14.i186

if.then12.i183:                                   ; preds = %if.else.i182
  store i8 -1, ptr %retval.i167, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_44.exit

if.end14.i186:                                    ; preds = %if.else.i182, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_43.exit
  %71 = load i16, ptr %b.addr.i169, align 2
  %conv15.i185 = trunc i16 %71 to i8
  store i8 %conv15.i185, ptr %retval.i167, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_44.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_44.exit: ; preds = %if.then8.i179, %if.then12.i183, %if.end14.i186
  %72 = load i8, ptr %retval.i167, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %retval.i167)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b.addr.i169)
  store i8 %72, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 128), align 1
  %73 = load i8, ptr %c, align 1
  %conv65 = zext i8 %73 to i16
  %mul66 = mul nuw i16 %conv65, 183
  %shr67 = lshr i16 %mul66, 8
  %sub68 = add nsw i16 %shr67, -91
  store i16 %sub68, ptr %crG, align 2
  %74 = load i8, ptr @gMCUBufG, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %retval.i187)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b.addr.i189)
  %conv.i190 = zext i8 %74 to i16
  %sub.i192 = sub nsw i16 %conv.i190, %sub68
  store i16 %sub.i192, ptr %b.addr.i189, align 2
  %cmp.i195 = icmp ugt i16 %sub.i192, 255
  br i1 %cmp.i195, label %if.then.i198, label %if.end14.i206

if.then.i198:                                     ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_44.exit
  %75 = load i16, ptr %b.addr.i189, align 2
  %cmp6.i197 = icmp slt i16 %75, 0
  br i1 %cmp6.i197, label %if.then8.i199, label %if.else.i202

if.then8.i199:                                    ; preds = %if.then.i198
  store i8 0, ptr %retval.i187, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_45.exit

if.else.i202:                                     ; preds = %if.then.i198
  %76 = load i16, ptr %b.addr.i189, align 2
  %cmp10.i201 = icmp sgt i16 %76, 255
  br i1 %cmp10.i201, label %if.then12.i203, label %if.end14.i206

if.then12.i203:                                   ; preds = %if.else.i202
  store i8 -1, ptr %retval.i187, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_45.exit

if.end14.i206:                                    ; preds = %if.else.i202, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_44.exit
  %77 = load i16, ptr %b.addr.i189, align 2
  %conv15.i205 = trunc i16 %77 to i8
  store i8 %conv15.i205, ptr %retval.i187, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_45.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_45.exit: ; preds = %if.then8.i199, %if.then12.i203, %if.end14.i206
  %78 = load i8, ptr %retval.i187, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %retval.i187)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b.addr.i189)
  store i8 %78, ptr @gMCUBufG, align 1
  %79 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 128), align 1
  %80 = load i16, ptr %crG, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %retval.i207)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b.addr.i209)
  %conv.i210 = zext i8 %79 to i16
  %sub.i212 = sub i16 %conv.i210, %80
  store i16 %sub.i212, ptr %b.addr.i209, align 2
  %cmp.i215 = icmp ugt i16 %sub.i212, 255
  br i1 %cmp.i215, label %if.then.i218, label %if.end14.i226

if.then.i218:                                     ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_45.exit
  %81 = load i16, ptr %b.addr.i209, align 2
  %cmp6.i217 = icmp slt i16 %81, 0
  br i1 %cmp6.i217, label %if.then8.i219, label %if.else.i222

if.then8.i219:                                    ; preds = %if.then.i218
  store i8 0, ptr %retval.i207, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_46.exit

if.else.i222:                                     ; preds = %if.then.i218
  %82 = load i16, ptr %b.addr.i209, align 2
  %cmp10.i221 = icmp sgt i16 %82, 255
  br i1 %cmp10.i221, label %if.then12.i223, label %if.end14.i226

if.then12.i223:                                   ; preds = %if.else.i222
  store i8 -1, ptr %retval.i207, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_46.exit

if.end14.i226:                                    ; preds = %if.else.i222, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_45.exit
  %83 = load i16, ptr %b.addr.i209, align 2
  %conv15.i225 = trunc i16 %83 to i8
  store i8 %conv15.i225, ptr %retval.i207, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_46.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_46.exit: ; preds = %if.then8.i219, %if.then12.i223, %if.end14.i226
  %84 = load i8, ptr %retval.i207, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %retval.i207)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b.addr.i209)
  store i8 %84, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 128), align 1
  br label %sw.epilog161

sw.bb73:                                          ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_34.exit
  %85 = load i8, ptr %mcuBlock.addr, align 1
  switch i8 %85, label %sw.epilog161 [
    i8 0, label %sw.bb75
    i8 1, label %sw.bb76
    i8 2, label %sw.bb77
    i8 3, label %sw.bb94
  ]

sw.bb75:                                          ; preds = %sw.bb73
  %86 = load i8, ptr %c, align 1
  store i8 %86, ptr @gMCUBufR, align 1
  store i8 %86, ptr @gMCUBufG, align 1
  store i8 %86, ptr @gMCUBufB, align 1
  br label %sw.epilog161

sw.bb76:                                          ; preds = %sw.bb73
  %87 = load i8, ptr %c, align 1
  store i8 %87, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 64), align 1
  store i8 %87, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 64), align 1
  store i8 %87, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 64), align 1
  br label %sw.epilog161

sw.bb77:                                          ; preds = %sw.bb73
  %88 = load i8, ptr %c, align 1
  %conv78 = zext i8 %88 to i16
  %mul79 = mul nuw nsw i16 %conv78, 88
  %shr80 = lshr i16 %mul79, 8
  %sub81 = add nsw i16 %shr80, -44
  store i16 %sub81, ptr %cbG, align 2
  %89 = load i8, ptr @gMCUBufG, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %retval.i227)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b.addr.i229)
  %conv.i230 = zext i8 %89 to i16
  %sub.i232 = sub nsw i16 %conv.i230, %sub81
  store i16 %sub.i232, ptr %b.addr.i229, align 2
  %cmp.i235 = icmp ugt i16 %sub.i232, 255
  br i1 %cmp.i235, label %if.then.i238, label %if.end14.i246

if.then.i238:                                     ; preds = %sw.bb77
  %90 = load i16, ptr %b.addr.i229, align 2
  %cmp6.i237 = icmp slt i16 %90, 0
  br i1 %cmp6.i237, label %if.then8.i239, label %if.else.i242

if.then8.i239:                                    ; preds = %if.then.i238
  store i8 0, ptr %retval.i227, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_47.exit

if.else.i242:                                     ; preds = %if.then.i238
  %91 = load i16, ptr %b.addr.i229, align 2
  %cmp10.i241 = icmp sgt i16 %91, 255
  br i1 %cmp10.i241, label %if.then12.i243, label %if.end14.i246

if.then12.i243:                                   ; preds = %if.else.i242
  store i8 -1, ptr %retval.i227, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_47.exit

if.end14.i246:                                    ; preds = %if.else.i242, %sw.bb77
  %92 = load i16, ptr %b.addr.i229, align 2
  %conv15.i245 = trunc i16 %92 to i8
  store i8 %conv15.i245, ptr %retval.i227, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_47.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_47.exit: ; preds = %if.then8.i239, %if.then12.i243, %if.end14.i246
  %93 = load i8, ptr %retval.i227, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %retval.i227)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b.addr.i229)
  store i8 %93, ptr @gMCUBufG, align 1
  %94 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 64), align 1
  %95 = load i16, ptr %cbG, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %retval.i247)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b.addr.i249)
  %conv.i250 = zext i8 %94 to i16
  %sub.i252 = sub i16 %conv.i250, %95
  store i16 %sub.i252, ptr %b.addr.i249, align 2
  %cmp.i255 = icmp ugt i16 %sub.i252, 255
  br i1 %cmp.i255, label %if.then.i258, label %if.end14.i266

if.then.i258:                                     ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_47.exit
  %96 = load i16, ptr %b.addr.i249, align 2
  %cmp6.i257 = icmp slt i16 %96, 0
  br i1 %cmp6.i257, label %if.then8.i259, label %if.else.i262

if.then8.i259:                                    ; preds = %if.then.i258
  store i8 0, ptr %retval.i247, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_48.exit

if.else.i262:                                     ; preds = %if.then.i258
  %97 = load i16, ptr %b.addr.i249, align 2
  %cmp10.i261 = icmp sgt i16 %97, 255
  br i1 %cmp10.i261, label %if.then12.i263, label %if.end14.i266

if.then12.i263:                                   ; preds = %if.else.i262
  store i8 -1, ptr %retval.i247, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_48.exit

if.end14.i266:                                    ; preds = %if.else.i262, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_47.exit
  %98 = load i16, ptr %b.addr.i249, align 2
  %conv15.i265 = trunc i16 %98 to i8
  store i8 %conv15.i265, ptr %retval.i247, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_48.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_48.exit: ; preds = %if.then8.i259, %if.then12.i263, %if.end14.i266
  %99 = load i8, ptr %retval.i247, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %retval.i247)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b.addr.i249)
  store i8 %99, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 64), align 1
  %100 = load i8, ptr %c, align 1
  %conv85 = zext i8 %100 to i16
  %conv86 = zext i8 %100 to i16
  %mul87 = mul nuw i16 %conv86, 198
  %shr88 = lshr i16 %mul87, 8
  %add89 = add nuw nsw i16 %shr88, %conv85
  %sub90 = add nsw i16 %add89, -227
  store i16 %sub90, ptr %cbB, align 2
  %101 = load i8, ptr @gMCUBufB, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %retval.i267)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b.addr.i269)
  %conv.i270 = zext i8 %101 to i16
  %add.i272 = add nsw i16 %sub90, %conv.i270
  store i16 %add.i272, ptr %b.addr.i269, align 2
  %cmp.i275 = icmp ugt i16 %add.i272, 255
  br i1 %cmp.i275, label %if.then.i278, label %if.end14.i286

if.then.i278:                                     ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_48.exit
  %102 = load i16, ptr %b.addr.i269, align 2
  %cmp6.i277 = icmp slt i16 %102, 0
  br i1 %cmp6.i277, label %if.then8.i279, label %if.else.i282

if.then8.i279:                                    ; preds = %if.then.i278
  store i8 0, ptr %retval.i267, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_49.exit

if.else.i282:                                     ; preds = %if.then.i278
  %103 = load i16, ptr %b.addr.i269, align 2
  %cmp10.i281 = icmp sgt i16 %103, 255
  br i1 %cmp10.i281, label %if.then12.i283, label %if.end14.i286

if.then12.i283:                                   ; preds = %if.else.i282
  store i8 -1, ptr %retval.i267, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_49.exit

if.end14.i286:                                    ; preds = %if.else.i282, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_48.exit
  %104 = load i16, ptr %b.addr.i269, align 2
  %conv15.i285 = trunc i16 %104 to i8
  store i8 %conv15.i285, ptr %retval.i267, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_49.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_49.exit: ; preds = %if.then8.i279, %if.then12.i283, %if.end14.i286
  %105 = load i8, ptr %retval.i267, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %retval.i267)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b.addr.i269)
  store i8 %105, ptr @gMCUBufB, align 1
  %106 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 64), align 1
  %107 = load i16, ptr %cbB, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %retval.i287)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b.addr.i289)
  %conv.i290 = zext i8 %106 to i16
  %add.i292 = add i16 %107, %conv.i290
  store i16 %add.i292, ptr %b.addr.i289, align 2
  %cmp.i295 = icmp ugt i16 %add.i292, 255
  br i1 %cmp.i295, label %if.then.i298, label %if.end14.i306

if.then.i298:                                     ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_49.exit
  %108 = load i16, ptr %b.addr.i289, align 2
  %cmp6.i297 = icmp slt i16 %108, 0
  br i1 %cmp6.i297, label %if.then8.i299, label %if.else.i302

if.then8.i299:                                    ; preds = %if.then.i298
  store i8 0, ptr %retval.i287, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_50.exit

if.else.i302:                                     ; preds = %if.then.i298
  %109 = load i16, ptr %b.addr.i289, align 2
  %cmp10.i301 = icmp sgt i16 %109, 255
  br i1 %cmp10.i301, label %if.then12.i303, label %if.end14.i306

if.then12.i303:                                   ; preds = %if.else.i302
  store i8 -1, ptr %retval.i287, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_50.exit

if.end14.i306:                                    ; preds = %if.else.i302, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_49.exit
  %110 = load i16, ptr %b.addr.i289, align 2
  %conv15.i305 = trunc i16 %110 to i8
  store i8 %conv15.i305, ptr %retval.i287, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_50.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_50.exit: ; preds = %if.then8.i299, %if.then12.i303, %if.end14.i306
  %111 = load i8, ptr %retval.i287, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %retval.i287)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b.addr.i289)
  store i8 %111, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 64), align 1
  br label %sw.epilog161

sw.bb94:                                          ; preds = %sw.bb73
  %112 = load i8, ptr %c, align 1
  %conv95 = zext i8 %112 to i16
  %conv96 = zext i8 %112 to i16
  %mul97 = mul nuw nsw i16 %conv96, 103
  %shr98 = lshr i16 %mul97, 8
  %add99 = add nuw nsw i16 %shr98, %conv95
  %sub100 = add nsw i16 %add99, -179
  store i16 %sub100, ptr %crR, align 2
  %113 = load i8, ptr @gMCUBufR, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %retval.i307)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b.addr.i309)
  %conv.i310 = zext i8 %113 to i16
  %add.i312 = add nsw i16 %sub100, %conv.i310
  store i16 %add.i312, ptr %b.addr.i309, align 2
  %cmp.i315 = icmp ugt i16 %add.i312, 255
  br i1 %cmp.i315, label %if.then.i318, label %if.end14.i326

if.then.i318:                                     ; preds = %sw.bb94
  %114 = load i16, ptr %b.addr.i309, align 2
  %cmp6.i317 = icmp slt i16 %114, 0
  br i1 %cmp6.i317, label %if.then8.i319, label %if.else.i322

if.then8.i319:                                    ; preds = %if.then.i318
  store i8 0, ptr %retval.i307, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_51.exit

if.else.i322:                                     ; preds = %if.then.i318
  %115 = load i16, ptr %b.addr.i309, align 2
  %cmp10.i321 = icmp sgt i16 %115, 255
  br i1 %cmp10.i321, label %if.then12.i323, label %if.end14.i326

if.then12.i323:                                   ; preds = %if.else.i322
  store i8 -1, ptr %retval.i307, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_51.exit

if.end14.i326:                                    ; preds = %if.else.i322, %sw.bb94
  %116 = load i16, ptr %b.addr.i309, align 2
  %conv15.i325 = trunc i16 %116 to i8
  store i8 %conv15.i325, ptr %retval.i307, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_51.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_51.exit: ; preds = %if.then8.i319, %if.then12.i323, %if.end14.i326
  %117 = load i8, ptr %retval.i307, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %retval.i307)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b.addr.i309)
  store i8 %117, ptr @gMCUBufR, align 1
  %118 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 64), align 1
  %119 = load i16, ptr %crR, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %retval.i327)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b.addr.i329)
  %conv.i330 = zext i8 %118 to i16
  %add.i332 = add i16 %119, %conv.i330
  store i16 %add.i332, ptr %b.addr.i329, align 2
  %cmp.i335 = icmp ugt i16 %add.i332, 255
  br i1 %cmp.i335, label %if.then.i338, label %if.end14.i346

if.then.i338:                                     ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_51.exit
  %120 = load i16, ptr %b.addr.i329, align 2
  %cmp6.i337 = icmp slt i16 %120, 0
  br i1 %cmp6.i337, label %if.then8.i339, label %if.else.i342

if.then8.i339:                                    ; preds = %if.then.i338
  store i8 0, ptr %retval.i327, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_52.exit

if.else.i342:                                     ; preds = %if.then.i338
  %121 = load i16, ptr %b.addr.i329, align 2
  %cmp10.i341 = icmp sgt i16 %121, 255
  br i1 %cmp10.i341, label %if.then12.i343, label %if.end14.i346

if.then12.i343:                                   ; preds = %if.else.i342
  store i8 -1, ptr %retval.i327, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_52.exit

if.end14.i346:                                    ; preds = %if.else.i342, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_51.exit
  %122 = load i16, ptr %b.addr.i329, align 2
  %conv15.i345 = trunc i16 %122 to i8
  store i8 %conv15.i345, ptr %retval.i327, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_52.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_52.exit: ; preds = %if.then8.i339, %if.then12.i343, %if.end14.i346
  %123 = load i8, ptr %retval.i327, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %retval.i327)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b.addr.i329)
  store i8 %123, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 64), align 1
  %124 = load i8, ptr %c, align 1
  %conv104 = zext i8 %124 to i16
  %mul105 = mul nuw i16 %conv104, 183
  %shr106 = lshr i16 %mul105, 8
  %sub107 = add nsw i16 %shr106, -91
  store i16 %sub107, ptr %crG, align 2
  %125 = load i8, ptr @gMCUBufG, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %retval.i347)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b.addr.i349)
  %conv.i350 = zext i8 %125 to i16
  %sub.i352 = sub nsw i16 %conv.i350, %sub107
  store i16 %sub.i352, ptr %b.addr.i349, align 2
  %cmp.i355 = icmp ugt i16 %sub.i352, 255
  br i1 %cmp.i355, label %if.then.i358, label %if.end14.i366

if.then.i358:                                     ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_52.exit
  %126 = load i16, ptr %b.addr.i349, align 2
  %cmp6.i357 = icmp slt i16 %126, 0
  br i1 %cmp6.i357, label %if.then8.i359, label %if.else.i362

if.then8.i359:                                    ; preds = %if.then.i358
  store i8 0, ptr %retval.i347, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_53.exit

if.else.i362:                                     ; preds = %if.then.i358
  %127 = load i16, ptr %b.addr.i349, align 2
  %cmp10.i361 = icmp sgt i16 %127, 255
  br i1 %cmp10.i361, label %if.then12.i363, label %if.end14.i366

if.then12.i363:                                   ; preds = %if.else.i362
  store i8 -1, ptr %retval.i347, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_53.exit

if.end14.i366:                                    ; preds = %if.else.i362, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_52.exit
  %128 = load i16, ptr %b.addr.i349, align 2
  %conv15.i365 = trunc i16 %128 to i8
  store i8 %conv15.i365, ptr %retval.i347, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_53.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_53.exit: ; preds = %if.then8.i359, %if.then12.i363, %if.end14.i366
  %129 = load i8, ptr %retval.i347, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %retval.i347)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b.addr.i349)
  store i8 %129, ptr @gMCUBufG, align 1
  %130 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 64), align 1
  %131 = load i16, ptr %crG, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %retval.i367)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b.addr.i369)
  %conv.i370 = zext i8 %130 to i16
  %sub.i372 = sub i16 %conv.i370, %131
  store i16 %sub.i372, ptr %b.addr.i369, align 2
  %cmp.i375 = icmp ugt i16 %sub.i372, 255
  br i1 %cmp.i375, label %if.then.i378, label %if.end14.i386

if.then.i378:                                     ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_53.exit
  %132 = load i16, ptr %b.addr.i369, align 2
  %cmp6.i377 = icmp slt i16 %132, 0
  br i1 %cmp6.i377, label %if.then8.i379, label %if.else.i382

if.then8.i379:                                    ; preds = %if.then.i378
  store i8 0, ptr %retval.i367, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_54.exit

if.else.i382:                                     ; preds = %if.then.i378
  %133 = load i16, ptr %b.addr.i369, align 2
  %cmp10.i381 = icmp sgt i16 %133, 255
  br i1 %cmp10.i381, label %if.then12.i383, label %if.end14.i386

if.then12.i383:                                   ; preds = %if.else.i382
  store i8 -1, ptr %retval.i367, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_54.exit

if.end14.i386:                                    ; preds = %if.else.i382, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_53.exit
  %134 = load i16, ptr %b.addr.i369, align 2
  %conv15.i385 = trunc i16 %134 to i8
  store i8 %conv15.i385, ptr %retval.i367, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_54.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_54.exit: ; preds = %if.then8.i379, %if.then12.i383, %if.end14.i386
  %135 = load i8, ptr %retval.i367, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %retval.i367)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b.addr.i369)
  store i8 %135, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 64), align 1
  br label %sw.epilog161

sw.bb112:                                         ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_34.exit
  %136 = load i8, ptr %mcuBlock.addr, align 1
  switch i8 %136, label %sw.epilog161 [
    i8 0, label %sw.bb114
    i8 1, label %sw.bb115
    i8 2, label %sw.bb116
    i8 3, label %sw.bb117
    i8 4, label %sw.bb118
    i8 5, label %sw.bb139
  ]

sw.bb114:                                         ; preds = %sw.bb112
  %137 = load i8, ptr %c, align 1
  store i8 %137, ptr @gMCUBufR, align 1
  store i8 %137, ptr @gMCUBufG, align 1
  store i8 %137, ptr @gMCUBufB, align 1
  br label %sw.epilog161

sw.bb115:                                         ; preds = %sw.bb112
  %138 = load i8, ptr %c, align 1
  store i8 %138, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 64), align 1
  store i8 %138, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 64), align 1
  store i8 %138, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 64), align 1
  br label %sw.epilog161

sw.bb116:                                         ; preds = %sw.bb112
  %139 = load i8, ptr %c, align 1
  store i8 %139, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 128), align 1
  store i8 %139, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 128), align 1
  store i8 %139, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 128), align 1
  br label %sw.epilog161

sw.bb117:                                         ; preds = %sw.bb112
  %140 = load i8, ptr %c, align 1
  store i8 %140, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 192), align 1
  store i8 %140, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 192), align 1
  store i8 %140, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 192), align 1
  br label %sw.epilog161

sw.bb118:                                         ; preds = %sw.bb112
  %141 = load i8, ptr %c, align 1
  %conv119 = zext i8 %141 to i16
  %mul120 = mul nuw nsw i16 %conv119, 88
  %shr121 = lshr i16 %mul120, 8
  %sub122 = add nsw i16 %shr121, -44
  store i16 %sub122, ptr %cbG, align 2
  %142 = load i8, ptr @gMCUBufG, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %retval.i387)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b.addr.i389)
  %conv.i390 = zext i8 %142 to i16
  %sub.i392 = sub nsw i16 %conv.i390, %sub122
  store i16 %sub.i392, ptr %b.addr.i389, align 2
  %cmp.i395 = icmp ugt i16 %sub.i392, 255
  br i1 %cmp.i395, label %if.then.i398, label %if.end14.i406

if.then.i398:                                     ; preds = %sw.bb118
  %143 = load i16, ptr %b.addr.i389, align 2
  %cmp6.i397 = icmp slt i16 %143, 0
  br i1 %cmp6.i397, label %if.then8.i399, label %if.else.i402

if.then8.i399:                                    ; preds = %if.then.i398
  store i8 0, ptr %retval.i387, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_55.exit

if.else.i402:                                     ; preds = %if.then.i398
  %144 = load i16, ptr %b.addr.i389, align 2
  %cmp10.i401 = icmp sgt i16 %144, 255
  br i1 %cmp10.i401, label %if.then12.i403, label %if.end14.i406

if.then12.i403:                                   ; preds = %if.else.i402
  store i8 -1, ptr %retval.i387, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_55.exit

if.end14.i406:                                    ; preds = %if.else.i402, %sw.bb118
  %145 = load i16, ptr %b.addr.i389, align 2
  %conv15.i405 = trunc i16 %145 to i8
  store i8 %conv15.i405, ptr %retval.i387, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_55.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_55.exit: ; preds = %if.then8.i399, %if.then12.i403, %if.end14.i406
  %146 = load i8, ptr %retval.i387, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %retval.i387)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b.addr.i389)
  store i8 %146, ptr @gMCUBufG, align 1
  %147 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 64), align 1
  %148 = load i16, ptr %cbG, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %retval.i407)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b.addr.i409)
  %conv.i410 = zext i8 %147 to i16
  %sub.i412 = sub i16 %conv.i410, %148
  store i16 %sub.i412, ptr %b.addr.i409, align 2
  %cmp.i415 = icmp ugt i16 %sub.i412, 255
  br i1 %cmp.i415, label %if.then.i418, label %if.end14.i426

if.then.i418:                                     ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_55.exit
  %149 = load i16, ptr %b.addr.i409, align 2
  %cmp6.i417 = icmp slt i16 %149, 0
  br i1 %cmp6.i417, label %if.then8.i419, label %if.else.i422

if.then8.i419:                                    ; preds = %if.then.i418
  store i8 0, ptr %retval.i407, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_56.exit

if.else.i422:                                     ; preds = %if.then.i418
  %150 = load i16, ptr %b.addr.i409, align 2
  %cmp10.i421 = icmp sgt i16 %150, 255
  br i1 %cmp10.i421, label %if.then12.i423, label %if.end14.i426

if.then12.i423:                                   ; preds = %if.else.i422
  store i8 -1, ptr %retval.i407, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_56.exit

if.end14.i426:                                    ; preds = %if.else.i422, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_55.exit
  %151 = load i16, ptr %b.addr.i409, align 2
  %conv15.i425 = trunc i16 %151 to i8
  store i8 %conv15.i425, ptr %retval.i407, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_56.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_56.exit: ; preds = %if.then8.i419, %if.then12.i423, %if.end14.i426
  %152 = load i8, ptr %retval.i407, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %retval.i407)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b.addr.i409)
  store i8 %152, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 64), align 1
  %153 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 128), align 1
  %154 = load i16, ptr %cbG, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %retval.i427)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b.addr.i429)
  %conv.i430 = zext i8 %153 to i16
  %sub.i432 = sub i16 %conv.i430, %154
  store i16 %sub.i432, ptr %b.addr.i429, align 2
  %cmp.i435 = icmp ugt i16 %sub.i432, 255
  br i1 %cmp.i435, label %if.then.i438, label %if.end14.i446

if.then.i438:                                     ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_56.exit
  %155 = load i16, ptr %b.addr.i429, align 2
  %cmp6.i437 = icmp slt i16 %155, 0
  br i1 %cmp6.i437, label %if.then8.i439, label %if.else.i442

if.then8.i439:                                    ; preds = %if.then.i438
  store i8 0, ptr %retval.i427, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_57.exit

if.else.i442:                                     ; preds = %if.then.i438
  %156 = load i16, ptr %b.addr.i429, align 2
  %cmp10.i441 = icmp sgt i16 %156, 255
  br i1 %cmp10.i441, label %if.then12.i443, label %if.end14.i446

if.then12.i443:                                   ; preds = %if.else.i442
  store i8 -1, ptr %retval.i427, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_57.exit

if.end14.i446:                                    ; preds = %if.else.i442, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_56.exit
  %157 = load i16, ptr %b.addr.i429, align 2
  %conv15.i445 = trunc i16 %157 to i8
  store i8 %conv15.i445, ptr %retval.i427, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_57.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_57.exit: ; preds = %if.then8.i439, %if.then12.i443, %if.end14.i446
  %158 = load i8, ptr %retval.i427, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %retval.i427)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b.addr.i429)
  store i8 %158, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 128), align 1
  %159 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 192), align 1
  %160 = load i16, ptr %cbG, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %retval.i447)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b.addr.i449)
  %conv.i450 = zext i8 %159 to i16
  %sub.i452 = sub i16 %conv.i450, %160
  store i16 %sub.i452, ptr %b.addr.i449, align 2
  %cmp.i455 = icmp ugt i16 %sub.i452, 255
  br i1 %cmp.i455, label %if.then.i458, label %if.end14.i466

if.then.i458:                                     ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_57.exit
  %161 = load i16, ptr %b.addr.i449, align 2
  %cmp6.i457 = icmp slt i16 %161, 0
  br i1 %cmp6.i457, label %if.then8.i459, label %if.else.i462

if.then8.i459:                                    ; preds = %if.then.i458
  store i8 0, ptr %retval.i447, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_58.exit

if.else.i462:                                     ; preds = %if.then.i458
  %162 = load i16, ptr %b.addr.i449, align 2
  %cmp10.i461 = icmp sgt i16 %162, 255
  br i1 %cmp10.i461, label %if.then12.i463, label %if.end14.i466

if.then12.i463:                                   ; preds = %if.else.i462
  store i8 -1, ptr %retval.i447, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_58.exit

if.end14.i466:                                    ; preds = %if.else.i462, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_57.exit
  %163 = load i16, ptr %b.addr.i449, align 2
  %conv15.i465 = trunc i16 %163 to i8
  store i8 %conv15.i465, ptr %retval.i447, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_58.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_58.exit: ; preds = %if.then8.i459, %if.then12.i463, %if.end14.i466
  %164 = load i8, ptr %retval.i447, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %retval.i447)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b.addr.i449)
  store i8 %164, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 192), align 1
  %165 = load i8, ptr %c, align 1
  %conv128 = zext i8 %165 to i16
  %conv129 = zext i8 %165 to i16
  %mul130 = mul nuw i16 %conv129, 198
  %shr131 = lshr i16 %mul130, 8
  %add132 = add nuw nsw i16 %shr131, %conv128
  %sub133 = add nsw i16 %add132, -227
  store i16 %sub133, ptr %cbB, align 2
  %166 = load i8, ptr @gMCUBufB, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %retval.i467)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b.addr.i469)
  %conv.i470 = zext i8 %166 to i16
  %add.i472 = add nsw i16 %sub133, %conv.i470
  store i16 %add.i472, ptr %b.addr.i469, align 2
  %cmp.i475 = icmp ugt i16 %add.i472, 255
  br i1 %cmp.i475, label %if.then.i478, label %if.end14.i486

if.then.i478:                                     ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_58.exit
  %167 = load i16, ptr %b.addr.i469, align 2
  %cmp6.i477 = icmp slt i16 %167, 0
  br i1 %cmp6.i477, label %if.then8.i479, label %if.else.i482

if.then8.i479:                                    ; preds = %if.then.i478
  store i8 0, ptr %retval.i467, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_59.exit

if.else.i482:                                     ; preds = %if.then.i478
  %168 = load i16, ptr %b.addr.i469, align 2
  %cmp10.i481 = icmp sgt i16 %168, 255
  br i1 %cmp10.i481, label %if.then12.i483, label %if.end14.i486

if.then12.i483:                                   ; preds = %if.else.i482
  store i8 -1, ptr %retval.i467, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_59.exit

if.end14.i486:                                    ; preds = %if.else.i482, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_58.exit
  %169 = load i16, ptr %b.addr.i469, align 2
  %conv15.i485 = trunc i16 %169 to i8
  store i8 %conv15.i485, ptr %retval.i467, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_59.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_59.exit: ; preds = %if.then8.i479, %if.then12.i483, %if.end14.i486
  %170 = load i8, ptr %retval.i467, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %retval.i467)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b.addr.i469)
  store i8 %170, ptr @gMCUBufB, align 1
  %171 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 64), align 1
  %172 = load i16, ptr %cbB, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %retval.i487)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b.addr.i489)
  %conv.i490 = zext i8 %171 to i16
  %add.i492 = add i16 %172, %conv.i490
  store i16 %add.i492, ptr %b.addr.i489, align 2
  %cmp.i495 = icmp ugt i16 %add.i492, 255
  br i1 %cmp.i495, label %if.then.i498, label %if.end14.i506

if.then.i498:                                     ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_59.exit
  %173 = load i16, ptr %b.addr.i489, align 2
  %cmp6.i497 = icmp slt i16 %173, 0
  br i1 %cmp6.i497, label %if.then8.i499, label %if.else.i502

if.then8.i499:                                    ; preds = %if.then.i498
  store i8 0, ptr %retval.i487, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_60.exit

if.else.i502:                                     ; preds = %if.then.i498
  %174 = load i16, ptr %b.addr.i489, align 2
  %cmp10.i501 = icmp sgt i16 %174, 255
  br i1 %cmp10.i501, label %if.then12.i503, label %if.end14.i506

if.then12.i503:                                   ; preds = %if.else.i502
  store i8 -1, ptr %retval.i487, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_60.exit

if.end14.i506:                                    ; preds = %if.else.i502, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_59.exit
  %175 = load i16, ptr %b.addr.i489, align 2
  %conv15.i505 = trunc i16 %175 to i8
  store i8 %conv15.i505, ptr %retval.i487, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_60.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_60.exit: ; preds = %if.then8.i499, %if.then12.i503, %if.end14.i506
  %176 = load i8, ptr %retval.i487, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %retval.i487)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b.addr.i489)
  store i8 %176, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 64), align 1
  %177 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 128), align 1
  %178 = load i16, ptr %cbB, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %retval.i507)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b.addr.i509)
  %conv.i510 = zext i8 %177 to i16
  %add.i512 = add i16 %178, %conv.i510
  store i16 %add.i512, ptr %b.addr.i509, align 2
  %cmp.i515 = icmp ugt i16 %add.i512, 255
  br i1 %cmp.i515, label %if.then.i518, label %if.end14.i526

if.then.i518:                                     ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_60.exit
  %179 = load i16, ptr %b.addr.i509, align 2
  %cmp6.i517 = icmp slt i16 %179, 0
  br i1 %cmp6.i517, label %if.then8.i519, label %if.else.i522

if.then8.i519:                                    ; preds = %if.then.i518
  store i8 0, ptr %retval.i507, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_61.exit

if.else.i522:                                     ; preds = %if.then.i518
  %180 = load i16, ptr %b.addr.i509, align 2
  %cmp10.i521 = icmp sgt i16 %180, 255
  br i1 %cmp10.i521, label %if.then12.i523, label %if.end14.i526

if.then12.i523:                                   ; preds = %if.else.i522
  store i8 -1, ptr %retval.i507, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_61.exit

if.end14.i526:                                    ; preds = %if.else.i522, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_60.exit
  %181 = load i16, ptr %b.addr.i509, align 2
  %conv15.i525 = trunc i16 %181 to i8
  store i8 %conv15.i525, ptr %retval.i507, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_61.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_61.exit: ; preds = %if.then8.i519, %if.then12.i523, %if.end14.i526
  %182 = load i8, ptr %retval.i507, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %retval.i507)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b.addr.i509)
  store i8 %182, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 128), align 1
  %183 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 192), align 1
  %184 = load i16, ptr %cbB, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %retval.i527)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b.addr.i529)
  %conv.i530 = zext i8 %183 to i16
  %add.i532 = add i16 %184, %conv.i530
  store i16 %add.i532, ptr %b.addr.i529, align 2
  %cmp.i535 = icmp ugt i16 %add.i532, 255
  br i1 %cmp.i535, label %if.then.i538, label %if.end14.i546

if.then.i538:                                     ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_61.exit
  %185 = load i16, ptr %b.addr.i529, align 2
  %cmp6.i537 = icmp slt i16 %185, 0
  br i1 %cmp6.i537, label %if.then8.i539, label %if.else.i542

if.then8.i539:                                    ; preds = %if.then.i538
  store i8 0, ptr %retval.i527, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_62.exit

if.else.i542:                                     ; preds = %if.then.i538
  %186 = load i16, ptr %b.addr.i529, align 2
  %cmp10.i541 = icmp sgt i16 %186, 255
  br i1 %cmp10.i541, label %if.then12.i543, label %if.end14.i546

if.then12.i543:                                   ; preds = %if.else.i542
  store i8 -1, ptr %retval.i527, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_62.exit

if.end14.i546:                                    ; preds = %if.else.i542, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_61.exit
  %187 = load i16, ptr %b.addr.i529, align 2
  %conv15.i545 = trunc i16 %187 to i8
  store i8 %conv15.i545, ptr %retval.i527, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_62.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_62.exit: ; preds = %if.then8.i539, %if.then12.i543, %if.end14.i546
  %188 = load i8, ptr %retval.i527, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %retval.i527)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b.addr.i529)
  store i8 %188, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 192), align 1
  br label %sw.epilog161

sw.bb139:                                         ; preds = %sw.bb112
  %189 = load i8, ptr %c, align 1
  %conv140 = zext i8 %189 to i16
  %conv141 = zext i8 %189 to i16
  %mul142 = mul nuw nsw i16 %conv141, 103
  %shr143 = lshr i16 %mul142, 8
  %add144 = add nuw nsw i16 %shr143, %conv140
  %sub145 = add nsw i16 %add144, -179
  store i16 %sub145, ptr %crR, align 2
  %190 = load i8, ptr @gMCUBufR, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %retval.i547)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b.addr.i549)
  %conv.i550 = zext i8 %190 to i16
  %add.i552 = add nsw i16 %sub145, %conv.i550
  store i16 %add.i552, ptr %b.addr.i549, align 2
  %cmp.i555 = icmp ugt i16 %add.i552, 255
  br i1 %cmp.i555, label %if.then.i558, label %if.end14.i566

if.then.i558:                                     ; preds = %sw.bb139
  %191 = load i16, ptr %b.addr.i549, align 2
  %cmp6.i557 = icmp slt i16 %191, 0
  br i1 %cmp6.i557, label %if.then8.i559, label %if.else.i562

if.then8.i559:                                    ; preds = %if.then.i558
  store i8 0, ptr %retval.i547, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_63.exit

if.else.i562:                                     ; preds = %if.then.i558
  %192 = load i16, ptr %b.addr.i549, align 2
  %cmp10.i561 = icmp sgt i16 %192, 255
  br i1 %cmp10.i561, label %if.then12.i563, label %if.end14.i566

if.then12.i563:                                   ; preds = %if.else.i562
  store i8 -1, ptr %retval.i547, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_63.exit

if.end14.i566:                                    ; preds = %if.else.i562, %sw.bb139
  %193 = load i16, ptr %b.addr.i549, align 2
  %conv15.i565 = trunc i16 %193 to i8
  store i8 %conv15.i565, ptr %retval.i547, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_63.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_63.exit: ; preds = %if.then8.i559, %if.then12.i563, %if.end14.i566
  %194 = load i8, ptr %retval.i547, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %retval.i547)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b.addr.i549)
  store i8 %194, ptr @gMCUBufR, align 1
  %195 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 64), align 1
  %196 = load i16, ptr %crR, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %retval.i567)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b.addr.i569)
  %conv.i570 = zext i8 %195 to i16
  %add.i572 = add i16 %196, %conv.i570
  store i16 %add.i572, ptr %b.addr.i569, align 2
  %cmp.i575 = icmp ugt i16 %add.i572, 255
  br i1 %cmp.i575, label %if.then.i578, label %if.end14.i586

if.then.i578:                                     ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_63.exit
  %197 = load i16, ptr %b.addr.i569, align 2
  %cmp6.i577 = icmp slt i16 %197, 0
  br i1 %cmp6.i577, label %if.then8.i579, label %if.else.i582

if.then8.i579:                                    ; preds = %if.then.i578
  store i8 0, ptr %retval.i567, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_64.exit

if.else.i582:                                     ; preds = %if.then.i578
  %198 = load i16, ptr %b.addr.i569, align 2
  %cmp10.i581 = icmp sgt i16 %198, 255
  br i1 %cmp10.i581, label %if.then12.i583, label %if.end14.i586

if.then12.i583:                                   ; preds = %if.else.i582
  store i8 -1, ptr %retval.i567, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_64.exit

if.end14.i586:                                    ; preds = %if.else.i582, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_63.exit
  %199 = load i16, ptr %b.addr.i569, align 2
  %conv15.i585 = trunc i16 %199 to i8
  store i8 %conv15.i585, ptr %retval.i567, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_64.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_64.exit: ; preds = %if.then8.i579, %if.then12.i583, %if.end14.i586
  %200 = load i8, ptr %retval.i567, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %retval.i567)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b.addr.i569)
  store i8 %200, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 64), align 1
  %201 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 128), align 1
  %202 = load i16, ptr %crR, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %retval.i587)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b.addr.i589)
  %conv.i590 = zext i8 %201 to i16
  %add.i592 = add i16 %202, %conv.i590
  store i16 %add.i592, ptr %b.addr.i589, align 2
  %cmp.i595 = icmp ugt i16 %add.i592, 255
  br i1 %cmp.i595, label %if.then.i598, label %if.end14.i606

if.then.i598:                                     ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_64.exit
  %203 = load i16, ptr %b.addr.i589, align 2
  %cmp6.i597 = icmp slt i16 %203, 0
  br i1 %cmp6.i597, label %if.then8.i599, label %if.else.i602

if.then8.i599:                                    ; preds = %if.then.i598
  store i8 0, ptr %retval.i587, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_65.exit

if.else.i602:                                     ; preds = %if.then.i598
  %204 = load i16, ptr %b.addr.i589, align 2
  %cmp10.i601 = icmp sgt i16 %204, 255
  br i1 %cmp10.i601, label %if.then12.i603, label %if.end14.i606

if.then12.i603:                                   ; preds = %if.else.i602
  store i8 -1, ptr %retval.i587, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_65.exit

if.end14.i606:                                    ; preds = %if.else.i602, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_64.exit
  %205 = load i16, ptr %b.addr.i589, align 2
  %conv15.i605 = trunc i16 %205 to i8
  store i8 %conv15.i605, ptr %retval.i587, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_65.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_65.exit: ; preds = %if.then8.i599, %if.then12.i603, %if.end14.i606
  %206 = load i8, ptr %retval.i587, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %retval.i587)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b.addr.i589)
  store i8 %206, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 128), align 1
  %207 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 192), align 1
  %208 = load i16, ptr %crR, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %retval.i607)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b.addr.i609)
  %conv.i610 = zext i8 %207 to i16
  %add.i612 = add i16 %208, %conv.i610
  store i16 %add.i612, ptr %b.addr.i609, align 2
  %cmp.i615 = icmp ugt i16 %add.i612, 255
  br i1 %cmp.i615, label %if.then.i618, label %if.end14.i626

if.then.i618:                                     ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_65.exit
  %209 = load i16, ptr %b.addr.i609, align 2
  %cmp6.i617 = icmp slt i16 %209, 0
  br i1 %cmp6.i617, label %if.then8.i619, label %if.else.i622

if.then8.i619:                                    ; preds = %if.then.i618
  store i8 0, ptr %retval.i607, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_66.exit

if.else.i622:                                     ; preds = %if.then.i618
  %210 = load i16, ptr %b.addr.i609, align 2
  %cmp10.i621 = icmp sgt i16 %210, 255
  br i1 %cmp10.i621, label %if.then12.i623, label %if.end14.i626

if.then12.i623:                                   ; preds = %if.else.i622
  store i8 -1, ptr %retval.i607, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_66.exit

if.end14.i626:                                    ; preds = %if.else.i622, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_65.exit
  %211 = load i16, ptr %b.addr.i609, align 2
  %conv15.i625 = trunc i16 %211 to i8
  store i8 %conv15.i625, ptr %retval.i607, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_66.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_66.exit: ; preds = %if.then8.i619, %if.then12.i623, %if.end14.i626
  %212 = load i8, ptr %retval.i607, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %retval.i607)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b.addr.i609)
  store i8 %212, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 192), align 1
  %213 = load i8, ptr %c, align 1
  %conv151 = zext i8 %213 to i16
  %mul152 = mul nuw i16 %conv151, 183
  %shr153 = lshr i16 %mul152, 8
  %sub154 = add nsw i16 %shr153, -91
  store i16 %sub154, ptr %crG, align 2
  %214 = load i8, ptr @gMCUBufG, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %retval.i627)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b.addr.i629)
  %conv.i630 = zext i8 %214 to i16
  %sub.i632 = sub nsw i16 %conv.i630, %sub154
  store i16 %sub.i632, ptr %b.addr.i629, align 2
  %cmp.i635 = icmp ugt i16 %sub.i632, 255
  br i1 %cmp.i635, label %if.then.i638, label %if.end14.i646

if.then.i638:                                     ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_66.exit
  %215 = load i16, ptr %b.addr.i629, align 2
  %cmp6.i637 = icmp slt i16 %215, 0
  br i1 %cmp6.i637, label %if.then8.i639, label %if.else.i642

if.then8.i639:                                    ; preds = %if.then.i638
  store i8 0, ptr %retval.i627, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_67.exit

if.else.i642:                                     ; preds = %if.then.i638
  %216 = load i16, ptr %b.addr.i629, align 2
  %cmp10.i641 = icmp sgt i16 %216, 255
  br i1 %cmp10.i641, label %if.then12.i643, label %if.end14.i646

if.then12.i643:                                   ; preds = %if.else.i642
  store i8 -1, ptr %retval.i627, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_67.exit

if.end14.i646:                                    ; preds = %if.else.i642, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_66.exit
  %217 = load i16, ptr %b.addr.i629, align 2
  %conv15.i645 = trunc i16 %217 to i8
  store i8 %conv15.i645, ptr %retval.i627, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_67.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_67.exit: ; preds = %if.then8.i639, %if.then12.i643, %if.end14.i646
  %218 = load i8, ptr %retval.i627, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %retval.i627)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b.addr.i629)
  store i8 %218, ptr @gMCUBufG, align 1
  %219 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 64), align 1
  %220 = load i16, ptr %crG, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %retval.i647)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b.addr.i649)
  %conv.i650 = zext i8 %219 to i16
  %sub.i652 = sub i16 %conv.i650, %220
  store i16 %sub.i652, ptr %b.addr.i649, align 2
  %cmp.i655 = icmp ugt i16 %sub.i652, 255
  br i1 %cmp.i655, label %if.then.i658, label %if.end14.i666

if.then.i658:                                     ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_67.exit
  %221 = load i16, ptr %b.addr.i649, align 2
  %cmp6.i657 = icmp slt i16 %221, 0
  br i1 %cmp6.i657, label %if.then8.i659, label %if.else.i662

if.then8.i659:                                    ; preds = %if.then.i658
  store i8 0, ptr %retval.i647, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_68.exit

if.else.i662:                                     ; preds = %if.then.i658
  %222 = load i16, ptr %b.addr.i649, align 2
  %cmp10.i661 = icmp sgt i16 %222, 255
  br i1 %cmp10.i661, label %if.then12.i663, label %if.end14.i666

if.then12.i663:                                   ; preds = %if.else.i662
  store i8 -1, ptr %retval.i647, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_68.exit

if.end14.i666:                                    ; preds = %if.else.i662, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_67.exit
  %223 = load i16, ptr %b.addr.i649, align 2
  %conv15.i665 = trunc i16 %223 to i8
  store i8 %conv15.i665, ptr %retval.i647, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_68.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_68.exit: ; preds = %if.then8.i659, %if.then12.i663, %if.end14.i666
  %224 = load i8, ptr %retval.i647, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %retval.i647)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b.addr.i649)
  store i8 %224, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 64), align 1
  %225 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 128), align 1
  %226 = load i16, ptr %crG, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %retval.i667)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b.addr.i669)
  %conv.i670 = zext i8 %225 to i16
  %sub.i672 = sub i16 %conv.i670, %226
  store i16 %sub.i672, ptr %b.addr.i669, align 2
  %cmp.i675 = icmp ugt i16 %sub.i672, 255
  br i1 %cmp.i675, label %if.then.i678, label %if.end14.i686

if.then.i678:                                     ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_68.exit
  %227 = load i16, ptr %b.addr.i669, align 2
  %cmp6.i677 = icmp slt i16 %227, 0
  br i1 %cmp6.i677, label %if.then8.i679, label %if.else.i682

if.then8.i679:                                    ; preds = %if.then.i678
  store i8 0, ptr %retval.i667, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_69.exit

if.else.i682:                                     ; preds = %if.then.i678
  %228 = load i16, ptr %b.addr.i669, align 2
  %cmp10.i681 = icmp sgt i16 %228, 255
  br i1 %cmp10.i681, label %if.then12.i683, label %if.end14.i686

if.then12.i683:                                   ; preds = %if.else.i682
  store i8 -1, ptr %retval.i667, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_69.exit

if.end14.i686:                                    ; preds = %if.else.i682, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_68.exit
  %229 = load i16, ptr %b.addr.i669, align 2
  %conv15.i685 = trunc i16 %229 to i8
  store i8 %conv15.i685, ptr %retval.i667, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_69.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_69.exit: ; preds = %if.then8.i679, %if.then12.i683, %if.end14.i686
  %230 = load i8, ptr %retval.i667, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %retval.i667)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b.addr.i669)
  store i8 %230, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 128), align 1
  %231 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 192), align 1
  %232 = load i16, ptr %crG, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %retval.i687)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b.addr.i689)
  %conv.i690 = zext i8 %231 to i16
  %sub.i692 = sub i16 %conv.i690, %232
  store i16 %sub.i692, ptr %b.addr.i689, align 2
  %cmp.i695 = icmp ugt i16 %sub.i692, 255
  br i1 %cmp.i695, label %if.then.i698, label %if.end14.i706

if.then.i698:                                     ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_69.exit
  %233 = load i16, ptr %b.addr.i689, align 2
  %cmp6.i697 = icmp slt i16 %233, 0
  br i1 %cmp6.i697, label %if.then8.i699, label %if.else.i702

if.then8.i699:                                    ; preds = %if.then.i698
  store i8 0, ptr %retval.i687, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_70.exit

if.else.i702:                                     ; preds = %if.then.i698
  %234 = load i16, ptr %b.addr.i689, align 2
  %cmp10.i701 = icmp sgt i16 %234, 255
  br i1 %cmp10.i701, label %if.then12.i703, label %if.end14.i706

if.then12.i703:                                   ; preds = %if.else.i702
  store i8 -1, ptr %retval.i687, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_70.exit

if.end14.i706:                                    ; preds = %if.else.i702, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_69.exit
  %235 = load i16, ptr %b.addr.i689, align 2
  %conv15.i705 = trunc i16 %235 to i8
  store i8 %conv15.i705, ptr %retval.i687, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_70.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_70.exit: ; preds = %if.then8.i699, %if.then12.i703, %if.end14.i706
  %236 = load i8, ptr %retval.i687, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %retval.i687)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b.addr.i689)
  store i8 %236, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 192), align 1
  br label %sw.epilog161

sw.epilog161:                                     ; preds = %sw.bb112, %sw.bb114, %sw.bb115, %sw.bb116, %sw.bb117, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_62.exit, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_70.exit, %sw.bb73, %sw.bb75, %sw.bb76, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_50.exit, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_54.exit, %sw.bb34, %sw.bb36, %sw.bb37, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_42.exit, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_46.exit, %sw.bb3, %sw.bb5, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_36.exit, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_38.exit, %sw.bb, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_34.exit
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @transformBlock(i8 noundef zeroext %mcuBlock) #0 {
entry:
  %x.i1326 = alloca i8, align 1
  %y.i1327 = alloca i8, align 1
  %pSrc.i1328 = alloca ptr, align 8
  %pDstR.i1329 = alloca ptr, align 8
  %pDstG.i1330 = alloca ptr, align 8
  %cr.i1331 = alloca i8, align 1
  %crR.i1332 = alloca i16, align 2
  %crG.i1333 = alloca i16, align 2
  %x.i1254 = alloca i8, align 1
  %y.i1255 = alloca i8, align 1
  %pSrc.i1256 = alloca ptr, align 8
  %pDstR.i1257 = alloca ptr, align 8
  %pDstG.i1258 = alloca ptr, align 8
  %cr.i1259 = alloca i8, align 1
  %crR.i1260 = alloca i16, align 2
  %crG.i1261 = alloca i16, align 2
  %x.i1182 = alloca i8, align 1
  %y.i1183 = alloca i8, align 1
  %pSrc.i1184 = alloca ptr, align 8
  %pDstR.i1185 = alloca ptr, align 8
  %pDstG.i1186 = alloca ptr, align 8
  %cr.i1187 = alloca i8, align 1
  %crR.i1188 = alloca i16, align 2
  %crG.i1189 = alloca i16, align 2
  %x.i1115 = alloca i8, align 1
  %y.i1116 = alloca i8, align 1
  %pSrc.i1117 = alloca ptr, align 8
  %pDstR.i1118 = alloca ptr, align 8
  %pDstG.i1119 = alloca ptr, align 8
  %cr.i1120 = alloca i8, align 1
  %crR.i1121 = alloca i16, align 2
  %crG.i1122 = alloca i16, align 2
  %x.i1043 = alloca i8, align 1
  %y.i1044 = alloca i8, align 1
  %pSrc.i1045 = alloca ptr, align 8
  %pDstG.i1046 = alloca ptr, align 8
  %pDstB.i1047 = alloca ptr, align 8
  %cb.i1048 = alloca i8, align 1
  %cbG.i1049 = alloca i16, align 2
  %cbB.i1050 = alloca i16, align 2
  %x.i971 = alloca i8, align 1
  %y.i972 = alloca i8, align 1
  %pSrc.i973 = alloca ptr, align 8
  %pDstG.i974 = alloca ptr, align 8
  %pDstB.i975 = alloca ptr, align 8
  %cb.i976 = alloca i8, align 1
  %cbG.i977 = alloca i16, align 2
  %cbB.i978 = alloca i16, align 2
  %x.i899 = alloca i8, align 1
  %y.i900 = alloca i8, align 1
  %pSrc.i901 = alloca ptr, align 8
  %pDstG.i902 = alloca ptr, align 8
  %pDstB.i903 = alloca ptr, align 8
  %cb.i904 = alloca i8, align 1
  %cbG.i905 = alloca i16, align 2
  %cbB.i906 = alloca i16, align 2
  %x.i853 = alloca i8, align 1
  %y.i854 = alloca i8, align 1
  %pSrc.i855 = alloca ptr, align 8
  %pDstG.i856 = alloca ptr, align 8
  %pDstB.i857 = alloca ptr, align 8
  %cb.i858 = alloca i8, align 1
  %cbG.i859 = alloca i16, align 2
  %cbB.i860 = alloca i16, align 2
  %i.i825 = alloca i8, align 1
  %pRDst.i826 = alloca ptr, align 8
  %pGDst.i827 = alloca ptr, align 8
  %pBDst.i828 = alloca ptr, align 8
  %pSrc.i829 = alloca ptr, align 8
  %c.i830 = alloca i8, align 1
  %i.i798 = alloca i8, align 1
  %pRDst.i799 = alloca ptr, align 8
  %pGDst.i800 = alloca ptr, align 8
  %pBDst.i801 = alloca ptr, align 8
  %pSrc.i802 = alloca ptr, align 8
  %c.i803 = alloca i8, align 1
  %i.i771 = alloca i8, align 1
  %pRDst.i772 = alloca ptr, align 8
  %pGDst.i773 = alloca ptr, align 8
  %pBDst.i774 = alloca ptr, align 8
  %pSrc.i775 = alloca ptr, align 8
  %c.i776 = alloca i8, align 1
  %i.i744 = alloca i8, align 1
  %pRDst.i745 = alloca ptr, align 8
  %pGDst.i746 = alloca ptr, align 8
  %pBDst.i747 = alloca ptr, align 8
  %pSrc.i748 = alloca ptr, align 8
  %c.i749 = alloca i8, align 1
  %x.i689 = alloca i8, align 1
  %y.i690 = alloca i8, align 1
  %pSrc.i691 = alloca ptr, align 8
  %pDstR.i692 = alloca ptr, align 8
  %pDstG.i693 = alloca ptr, align 8
  %cr.i694 = alloca i8, align 1
  %crR.i695 = alloca i16, align 2
  %crG.i696 = alloca i16, align 2
  %x.i633 = alloca i8, align 1
  %y.i634 = alloca i8, align 1
  %pSrc.i635 = alloca ptr, align 8
  %pDstR.i636 = alloca ptr, align 8
  %pDstG.i637 = alloca ptr, align 8
  %cr.i638 = alloca i8, align 1
  %crR.i639 = alloca i16, align 2
  %crG.i640 = alloca i16, align 2
  %x.i577 = alloca i8, align 1
  %y.i578 = alloca i8, align 1
  %pSrc.i579 = alloca ptr, align 8
  %pDstG.i580 = alloca ptr, align 8
  %pDstB.i581 = alloca ptr, align 8
  %cb.i582 = alloca i8, align 1
  %cbG.i583 = alloca i16, align 2
  %cbB.i584 = alloca i16, align 2
  %x.i523 = alloca i8, align 1
  %y.i524 = alloca i8, align 1
  %pSrc.i525 = alloca ptr, align 8
  %pDstG.i526 = alloca ptr, align 8
  %pDstB.i527 = alloca ptr, align 8
  %cb.i528 = alloca i8, align 1
  %cbG.i529 = alloca i16, align 2
  %cbB.i530 = alloca i16, align 2
  %i.i495 = alloca i8, align 1
  %pRDst.i496 = alloca ptr, align 8
  %pGDst.i497 = alloca ptr, align 8
  %pBDst.i498 = alloca ptr, align 8
  %pSrc.i499 = alloca ptr, align 8
  %c.i500 = alloca i8, align 1
  %i.i468 = alloca i8, align 1
  %pRDst.i469 = alloca ptr, align 8
  %pGDst.i470 = alloca ptr, align 8
  %pBDst.i471 = alloca ptr, align 8
  %pSrc.i472 = alloca ptr, align 8
  %c.i473 = alloca i8, align 1
  %x.i411 = alloca i8, align 1
  %y.i412 = alloca i8, align 1
  %pSrc.i413 = alloca ptr, align 8
  %pDstR.i414 = alloca ptr, align 8
  %pDstG.i415 = alloca ptr, align 8
  %cr.i416 = alloca i8, align 1
  %crR.i417 = alloca i16, align 2
  %crG.i418 = alloca i16, align 2
  %x.i357 = alloca i8, align 1
  %y.i358 = alloca i8, align 1
  %pSrc.i359 = alloca ptr, align 8
  %pDstR.i360 = alloca ptr, align 8
  %pDstG.i361 = alloca ptr, align 8
  %cr.i362 = alloca i8, align 1
  %crR.i363 = alloca i16, align 2
  %crG.i364 = alloca i16, align 2
  %x.i299 = alloca i8, align 1
  %y.i300 = alloca i8, align 1
  %pSrc.i301 = alloca ptr, align 8
  %pDstG.i302 = alloca ptr, align 8
  %pDstB.i303 = alloca ptr, align 8
  %cb.i304 = alloca i8, align 1
  %cbG.i305 = alloca i16, align 2
  %cbB.i306 = alloca i16, align 2
  %x.i = alloca i8, align 1
  %y.i = alloca i8, align 1
  %pSrc.i264 = alloca ptr, align 8
  %pDstG.i265 = alloca ptr, align 8
  %pDstB.i266 = alloca ptr, align 8
  %cb.i267 = alloca i8, align 1
  %cbG.i268 = alloca i16, align 2
  %cbB.i269 = alloca i16, align 2
  %i.i238 = alloca i8, align 1
  %pRDst.i239 = alloca ptr, align 8
  %pGDst.i240 = alloca ptr, align 8
  %pBDst.i241 = alloca ptr, align 8
  %pSrc.i242 = alloca ptr, align 8
  %c.i243 = alloca i8, align 1
  %i.i212 = alloca i8, align 1
  %pRDst.i213 = alloca ptr, align 8
  %pGDst.i214 = alloca ptr, align 8
  %pBDst.i215 = alloca ptr, align 8
  %pSrc.i216 = alloca ptr, align 8
  %c.i217 = alloca i8, align 1
  %i.i179 = alloca i8, align 1
  %pDstR.i = alloca ptr, align 8
  %pDstG.i180 = alloca ptr, align 8
  %pSrc.i181 = alloca ptr, align 8
  %cr.i = alloca i8, align 1
  %i.i157 = alloca i8, align 1
  %pDstG.i = alloca ptr, align 8
  %pDstB.i = alloca ptr, align 8
  %pSrc.i158 = alloca ptr, align 8
  %cb.i = alloca i8, align 1
  %i.i131 = alloca i8, align 1
  %pRDst.i132 = alloca ptr, align 8
  %pGDst.i133 = alloca ptr, align 8
  %pBDst.i134 = alloca ptr, align 8
  %pSrc.i135 = alloca ptr, align 8
  %c.i136 = alloca i8, align 1
  %i.i119 = alloca i8, align 1
  %pRDst.i = alloca ptr, align 8
  %pGDst.i = alloca ptr, align 8
  %pBDst.i = alloca ptr, align 8
  %pSrc.i120 = alloca ptr, align 8
  %c.i121 = alloca i8, align 1
  %i.i1 = alloca i8, align 1
  %pSrc.i2 = alloca ptr, align 8
  %c.i = alloca i8, align 1
  %x4.i5 = alloca i16, align 2
  %x7.i6 = alloca i16, align 2
  %x5.i9 = alloca i16, align 2
  %stg26.i12 = alloca i16, align 2
  %x24.i13 = alloca i16, align 2
  %x17.i15 = alloca i16, align 2
  %tmp2.i16 = alloca i16, align 2
  %tmp3.i17 = alloca i16, align 2
  %x44.i18 = alloca i16, align 2
  %x30.i21 = alloca i16, align 2
  %x31.i22 = alloca i16, align 2
  %x13.i26 = alloca i16, align 2
  %x32.i27 = alloca i16, align 2
  %x40.i28 = alloca i16, align 2
  %x43.i29 = alloca i16, align 2
  %x41.i30 = alloca i16, align 2
  %x42.i31 = alloca i16, align 2
  %i.i = alloca i8, align 1
  %pSrc.i = alloca ptr, align 8
  %src0.i = alloca i16, align 2
  %x4.i = alloca i16, align 2
  %x7.i = alloca i16, align 2
  %x5.i = alloca i16, align 2
  %stg26.i = alloca i16, align 2
  %x24.i = alloca i16, align 2
  %x17.i = alloca i16, align 2
  %tmp2.i = alloca i16, align 2
  %tmp3.i = alloca i16, align 2
  %x44.i = alloca i16, align 2
  %x30.i = alloca i16, align 2
  %x31.i = alloca i16, align 2
  %x13.i = alloca i16, align 2
  %x32.i = alloca i16, align 2
  %x40.i = alloca i16, align 2
  %x43.i = alloca i16, align 2
  %x41.i = alloca i16, align 2
  %x42.i = alloca i16, align 2
  %mcuBlock.addr = alloca i8, align 1
  store i8 %mcuBlock, ptr %mcuBlock.addr, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pSrc.i)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %src0.i)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %x4.i)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %x7.i)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %x5.i)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %stg26.i)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %x24.i)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %x17.i)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp2.i)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp3.i)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %x44.i)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %x30.i)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %x31.i)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %x13.i)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %x32.i)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %x40.i)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %x43.i)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %x41.i)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %x42.i)
  store ptr @gCoeffBuf, ptr %pSrc.i, align 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end.i, %entry
  %storemerge = phi i8 [ 0, %entry ], [ %inc.i, %if.end.i ]
  store i8 %storemerge, ptr %i.i, align 1
  %cmp.i = icmp ult i8 %storemerge, 8
  br i1 %cmp.i, label %for.body.i, label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_71.exit

for.body.i:                                       ; preds = %for.cond.i
  %0 = load ptr, ptr %pSrc.i, align 8
  %arrayidx.i = getelementptr inbounds i16, ptr %0, i64 1
  %1 = load i16, ptr %arrayidx.i, align 2
  %arrayidx3.i = getelementptr inbounds i16, ptr %0, i64 2
  %2 = load i16, ptr %arrayidx3.i, align 2
  %or.i1482 = or i16 %1, %2
  %arrayidx5.i = getelementptr inbounds i16, ptr %0, i64 3
  %3 = load i16, ptr %arrayidx5.i, align 2
  %or7.i1483 = or i16 %or.i1482, %3
  %arrayidx8.i = getelementptr inbounds i16, ptr %0, i64 4
  %4 = load i16, ptr %arrayidx8.i, align 2
  %or10.i1484 = or i16 %or7.i1483, %4
  %5 = load ptr, ptr %pSrc.i, align 8
  %arrayidx11.i = getelementptr inbounds i16, ptr %5, i64 5
  %6 = load i16, ptr %arrayidx11.i, align 2
  %or13.i1485 = or i16 %or10.i1484, %6
  %arrayidx14.i = getelementptr inbounds i16, ptr %5, i64 6
  %7 = load i16, ptr %arrayidx14.i, align 2
  %or16.i1486 = or i16 %or13.i1485, %7
  %8 = load ptr, ptr %pSrc.i, align 8
  %arrayidx17.i = getelementptr inbounds i16, ptr %8, i64 7
  %9 = load i16, ptr %arrayidx17.i, align 2
  %or19.i1487 = or i16 %or16.i1486, %9
  %cmp20.i = icmp eq i16 %or19.i1487, 0
  br i1 %cmp20.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body.i
  %10 = load ptr, ptr %pSrc.i, align 8
  %11 = load i16, ptr %10, align 2
  store i16 %11, ptr %src0.i, align 2
  %add.ptr.i = getelementptr inbounds i16, ptr %10, i64 1
  store i16 %11, ptr %add.ptr.i, align 2
  %add.ptr22.i = getelementptr inbounds i16, ptr %10, i64 2
  store i16 %11, ptr %add.ptr22.i, align 2
  %12 = load ptr, ptr %pSrc.i, align 8
  %add.ptr23.i = getelementptr inbounds i16, ptr %12, i64 3
  store i16 %11, ptr %add.ptr23.i, align 2
  %13 = load i16, ptr %src0.i, align 2
  %add.ptr24.i = getelementptr inbounds i16, ptr %12, i64 4
  store i16 %13, ptr %add.ptr24.i, align 2
  %add.ptr25.i = getelementptr inbounds i16, ptr %12, i64 5
  store i16 %13, ptr %add.ptr25.i, align 2
  %14 = load ptr, ptr %pSrc.i, align 8
  %add.ptr26.i = getelementptr inbounds i16, ptr %14, i64 6
  store i16 %13, ptr %add.ptr26.i, align 2
  %15 = load i16, ptr %src0.i, align 2
  %add.ptr27.i = getelementptr inbounds i16, ptr %14, i64 7
  store i16 %15, ptr %add.ptr27.i, align 2
  br label %if.end.i

if.else.i:                                        ; preds = %for.body.i
  %16 = load ptr, ptr %pSrc.i, align 8
  %add.ptr28.i = getelementptr inbounds i16, ptr %16, i64 5
  %17 = load i16, ptr %add.ptr28.i, align 2
  %add.ptr29.i = getelementptr inbounds i16, ptr %16, i64 3
  %18 = load i16, ptr %add.ptr29.i, align 2
  %sub.i = sub i16 %17, %18
  store i16 %sub.i, ptr %x4.i, align 2
  %add.i = add i16 %17, %18
  store i16 %add.i, ptr %x7.i, align 2
  %19 = load ptr, ptr %pSrc.i, align 8
  %add.ptr36.i = getelementptr inbounds i16, ptr %19, i64 1
  %20 = load i16, ptr %add.ptr36.i, align 2
  %add.ptr37.i = getelementptr inbounds i16, ptr %19, i64 7
  %21 = load i16, ptr %add.ptr37.i, align 2
  %add40.i = add i16 %20, %21
  store i16 %add40.i, ptr %x5.i, align 2
  %sub44.i = sub i16 %20, %21
  %22 = load i16, ptr %x4.i, align 2
  %sub48.i = sub i16 %22, %sub44.i
  %call.i = call signext i16 @imul_b5(i16 noundef signext %sub48.i)
  %call50.i = call signext i16 @imul_b4(i16 noundef signext %sub44.i)
  %sub53.i = sub i16 %call50.i, %call.i
  store i16 %sub53.i, ptr %stg26.i, align 2
  %call56.i = call signext i16 @imul_b2(i16 noundef signext %22)
  %sub58.i = sub i16 %call.i, %call56.i
  store i16 %sub58.i, ptr %x24.i, align 2
  %23 = load i16, ptr %x5.i, align 2
  %24 = load i16, ptr %x7.i, align 2
  %sub62.i = sub i16 %23, %24
  %add66.i = add i16 %23, %24
  store i16 %add66.i, ptr %x17.i, align 2
  %25 = load i16, ptr %stg26.i, align 2
  %sub70.i = sub i16 %25, %add66.i
  store i16 %sub70.i, ptr %tmp2.i, align 2
  %call72.i = call signext i16 @imul_b1_b3(i16 noundef signext %sub62.i)
  %sub75.i = sub i16 %call72.i, %sub70.i
  store i16 %sub75.i, ptr %tmp3.i, align 2
  %26 = load i16, ptr %x24.i, align 2
  %add79.i = add i16 %sub75.i, %26
  store i16 %add79.i, ptr %x44.i, align 2
  %27 = load ptr, ptr %pSrc.i, align 8
  %28 = load i16, ptr %27, align 2
  %add.ptr83.i = getelementptr inbounds i16, ptr %27, i64 4
  %29 = load i16, ptr %add.ptr83.i, align 2
  %add86.i = add i16 %28, %29
  store i16 %add86.i, ptr %x30.i, align 2
  %sub90.i = sub i16 %28, %29
  store i16 %sub90.i, ptr %x31.i, align 2
  %30 = load ptr, ptr %pSrc.i, align 8
  %add.ptr92.i = getelementptr inbounds i16, ptr %30, i64 2
  %31 = load i16, ptr %add.ptr92.i, align 2
  %add.ptr93.i = getelementptr inbounds i16, ptr %30, i64 6
  %32 = load i16, ptr %add.ptr93.i, align 2
  %sub96.i = sub i16 %31, %32
  %add100.i = add i16 %31, %32
  store i16 %add100.i, ptr %x13.i, align 2
  %call102.i = call signext i16 @imul_b1_b3(i16 noundef signext %sub96.i)
  %sub105.i = sub i16 %call102.i, %add100.i
  store i16 %sub105.i, ptr %x32.i, align 2
  %33 = load i16, ptr %x30.i, align 2
  %add109.i = add i16 %33, %add100.i
  store i16 %add109.i, ptr %x40.i, align 2
  %34 = load i16, ptr %x13.i, align 2
  %sub113.i = sub i16 %33, %34
  store i16 %sub113.i, ptr %x43.i, align 2
  %35 = load i16, ptr %x31.i, align 2
  %36 = load i16, ptr %x32.i, align 2
  %add117.i = add i16 %35, %36
  store i16 %add117.i, ptr %x41.i, align 2
  %sub121.i = sub i16 %35, %36
  store i16 %sub121.i, ptr %x42.i, align 2
  %37 = load i16, ptr %x40.i, align 2
  %38 = load i16, ptr %x17.i, align 2
  %add125.i = add i16 %37, %38
  %39 = load ptr, ptr %pSrc.i, align 8
  store i16 %add125.i, ptr %39, align 2
  %40 = load i16, ptr %x41.i, align 2
  %41 = load i16, ptr %tmp2.i, align 2
  %add130.i = add i16 %40, %41
  %add.ptr132.i = getelementptr inbounds i16, ptr %39, i64 1
  store i16 %add130.i, ptr %add.ptr132.i, align 2
  %42 = load i16, ptr %x42.i, align 2
  %43 = load i16, ptr %tmp3.i, align 2
  %add135.i = add i16 %42, %43
  %44 = load ptr, ptr %pSrc.i, align 8
  %add.ptr137.i = getelementptr inbounds i16, ptr %44, i64 2
  store i16 %add135.i, ptr %add.ptr137.i, align 2
  %45 = load i16, ptr %x43.i, align 2
  %46 = load i16, ptr %x44.i, align 2
  %sub140.i = sub i16 %45, %46
  %add.ptr142.i = getelementptr inbounds i16, ptr %44, i64 3
  store i16 %sub140.i, ptr %add.ptr142.i, align 2
  %add145.i = add i16 %45, %46
  %47 = load ptr, ptr %pSrc.i, align 8
  %add.ptr147.i = getelementptr inbounds i16, ptr %47, i64 4
  store i16 %add145.i, ptr %add.ptr147.i, align 2
  %48 = load i16, ptr %x42.i, align 2
  %49 = load i16, ptr %tmp3.i, align 2
  %sub150.i = sub i16 %48, %49
  %add.ptr152.i = getelementptr inbounds i16, ptr %47, i64 5
  store i16 %sub150.i, ptr %add.ptr152.i, align 2
  %50 = load i16, ptr %x41.i, align 2
  %51 = load i16, ptr %tmp2.i, align 2
  %sub155.i = sub i16 %50, %51
  %52 = load ptr, ptr %pSrc.i, align 8
  %add.ptr157.i = getelementptr inbounds i16, ptr %52, i64 6
  store i16 %sub155.i, ptr %add.ptr157.i, align 2
  %53 = load i16, ptr %x40.i, align 2
  %54 = load i16, ptr %x17.i, align 2
  %sub160.i = sub i16 %53, %54
  %add.ptr162.i = getelementptr inbounds i16, ptr %52, i64 7
  store i16 %sub160.i, ptr %add.ptr162.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %55 = load ptr, ptr %pSrc.i, align 8
  %add.ptr163.i = getelementptr inbounds i16, ptr %55, i64 8
  store ptr %add.ptr163.i, ptr %pSrc.i, align 8
  %56 = load i8, ptr %i.i, align 1
  %inc.i = add i8 %56, 1
  br label %for.cond.i, !llvm.loop !15

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_71.exit: ; preds = %for.cond.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pSrc.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %src0.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %x4.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %x7.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %x5.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %stg26.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %x24.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %x17.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp2.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp3.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %x44.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %x30.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %x31.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %x13.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %x32.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %x40.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %x43.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %x41.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %x42.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i.i1)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pSrc.i2)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %c.i)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %x4.i5)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %x7.i6)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %x5.i9)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %stg26.i12)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %x24.i13)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %x17.i15)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp2.i16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp3.i17)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %x44.i18)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %x30.i21)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %x31.i22)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %x13.i26)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %x32.i27)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %x40.i28)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %x43.i29)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %x41.i30)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %x42.i31)
  store ptr @gCoeffBuf, ptr %pSrc.i2, align 8
  br label %for.cond.i34

for.cond.i34:                                     ; preds = %if.end.i117, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_71.exit
  %storemerge1396 = phi i8 [ 0, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_71.exit ], [ %inc.i118, %if.end.i117 ]
  store i8 %storemerge1396, ptr %i.i1, align 1
  %cmp.i33 = icmp ult i8 %storemerge1396, 8
  br i1 %cmp.i33, label %for.body.i56, label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_72.exit

for.body.i56:                                     ; preds = %for.cond.i34
  %57 = load ptr, ptr %pSrc.i2, align 8
  %arrayidx.i35 = getelementptr inbounds i16, ptr %57, i64 8
  %58 = load i16, ptr %arrayidx.i35, align 2
  %arrayidx3.i37 = getelementptr inbounds i16, ptr %57, i64 16
  %59 = load i16, ptr %arrayidx3.i37, align 2
  %or.i391476 = or i16 %58, %59
  %arrayidx5.i40 = getelementptr inbounds i16, ptr %57, i64 24
  %60 = load i16, ptr %arrayidx5.i40, align 2
  %or7.i421477 = or i16 %or.i391476, %60
  %arrayidx8.i43 = getelementptr inbounds i16, ptr %57, i64 32
  %61 = load i16, ptr %arrayidx8.i43, align 2
  %or10.i451478 = or i16 %or7.i421477, %61
  %62 = load ptr, ptr %pSrc.i2, align 8
  %arrayidx11.i46 = getelementptr inbounds i16, ptr %62, i64 40
  %63 = load i16, ptr %arrayidx11.i46, align 2
  %or13.i481479 = or i16 %or10.i451478, %63
  %arrayidx14.i49 = getelementptr inbounds i16, ptr %62, i64 48
  %64 = load i16, ptr %arrayidx14.i49, align 2
  %or16.i511480 = or i16 %or13.i481479, %64
  %65 = load ptr, ptr %pSrc.i2, align 8
  %arrayidx17.i52 = getelementptr inbounds i16, ptr %65, i64 56
  %66 = load i16, ptr %arrayidx17.i52, align 2
  %or19.i541481 = or i16 %or16.i511480, %66
  %cmp20.i55 = icmp eq i16 %or19.i541481, 0
  br i1 %cmp20.i55, label %if.then.i66, label %if.else.i116

if.then.i66:                                      ; preds = %for.body.i56
  %67 = load ptr, ptr %pSrc.i2, align 8
  %68 = load i16, ptr %67, align 2
  %conv22.i = sext i16 %68 to i32
  %add.i57 = add nsw i32 %conv22.i, 64
  %shr.i = lshr i32 %add.i57, 7
  %69 = trunc i32 %shr.i to i16
  %conv24.i = add i16 %69, 128
  %call.i58 = call zeroext i8 @clamp(i16 noundef signext %conv24.i)
  store i8 %call.i58, ptr %c.i, align 1
  %conv25.i = zext i8 %call.i58 to i16
  %70 = load ptr, ptr %pSrc.i2, align 8
  store i16 %conv25.i, ptr %70, align 2
  %conv26.i = zext i8 %call.i58 to i16
  %add.ptr27.i59 = getelementptr inbounds i16, ptr %70, i64 8
  store i16 %conv26.i, ptr %add.ptr27.i59, align 2
  %71 = load i8, ptr %c.i, align 1
  %conv28.i = zext i8 %71 to i16
  %72 = load ptr, ptr %pSrc.i2, align 8
  %add.ptr29.i60 = getelementptr inbounds i16, ptr %72, i64 16
  store i16 %conv28.i, ptr %add.ptr29.i60, align 2
  %conv30.i61 = zext i8 %71 to i16
  %add.ptr31.i = getelementptr inbounds i16, ptr %72, i64 24
  store i16 %conv30.i61, ptr %add.ptr31.i, align 2
  %73 = load i8, ptr %c.i, align 1
  %conv32.i62 = zext i8 %73 to i16
  %74 = load ptr, ptr %pSrc.i2, align 8
  %add.ptr33.i = getelementptr inbounds i16, ptr %74, i64 32
  store i16 %conv32.i62, ptr %add.ptr33.i, align 2
  %conv34.i63 = zext i8 %73 to i16
  %add.ptr35.i = getelementptr inbounds i16, ptr %74, i64 40
  store i16 %conv34.i63, ptr %add.ptr35.i, align 2
  %75 = load i8, ptr %c.i, align 1
  %conv36.i = zext i8 %75 to i16
  %76 = load ptr, ptr %pSrc.i2, align 8
  %add.ptr37.i64 = getelementptr inbounds i16, ptr %76, i64 48
  store i16 %conv36.i, ptr %add.ptr37.i64, align 2
  %conv38.i65 = zext i8 %75 to i16
  %add.ptr39.i = getelementptr inbounds i16, ptr %76, i64 56
  store i16 %conv38.i65, ptr %add.ptr39.i, align 2
  br label %if.end.i117

if.else.i116:                                     ; preds = %for.body.i56
  %77 = load ptr, ptr %pSrc.i2, align 8
  %add.ptr40.i = getelementptr inbounds i16, ptr %77, i64 40
  %78 = load i16, ptr %add.ptr40.i, align 2
  %add.ptr41.i = getelementptr inbounds i16, ptr %77, i64 24
  %79 = load i16, ptr %add.ptr41.i, align 2
  %sub.i69 = sub i16 %78, %79
  store i16 %sub.i69, ptr %x4.i5, align 2
  %add47.i = add i16 %78, %79
  store i16 %add47.i, ptr %x7.i6, align 2
  %80 = load ptr, ptr %pSrc.i2, align 8
  %add.ptr49.i = getelementptr inbounds i16, ptr %80, i64 8
  %81 = load i16, ptr %add.ptr49.i, align 2
  %add.ptr50.i = getelementptr inbounds i16, ptr %80, i64 56
  %82 = load i16, ptr %add.ptr50.i, align 2
  %add53.i = add i16 %81, %82
  store i16 %add53.i, ptr %x5.i9, align 2
  %sub57.i = sub i16 %81, %82
  %83 = load i16, ptr %x4.i5, align 2
  %sub61.i = sub i16 %83, %sub57.i
  %call63.i = call signext i16 @imul_b5(i16 noundef signext %sub61.i)
  %call64.i = call signext i16 @imul_b4(i16 noundef signext %sub57.i)
  %sub67.i = sub i16 %call64.i, %call63.i
  store i16 %sub67.i, ptr %stg26.i12, align 2
  %call70.i = call signext i16 @imul_b2(i16 noundef signext %83)
  %sub72.i = sub i16 %call63.i, %call70.i
  store i16 %sub72.i, ptr %x24.i13, align 2
  %84 = load i16, ptr %x5.i9, align 2
  %85 = load i16, ptr %x7.i6, align 2
  %sub76.i = sub i16 %84, %85
  %add80.i = add i16 %84, %85
  store i16 %add80.i, ptr %x17.i15, align 2
  %86 = load i16, ptr %stg26.i12, align 2
  %sub84.i = sub i16 %86, %add80.i
  store i16 %sub84.i, ptr %tmp2.i16, align 2
  %call86.i = call signext i16 @imul_b1_b3(i16 noundef signext %sub76.i)
  %sub89.i = sub i16 %call86.i, %sub84.i
  store i16 %sub89.i, ptr %tmp3.i17, align 2
  %87 = load i16, ptr %x24.i13, align 2
  %add93.i = add i16 %sub89.i, %87
  store i16 %add93.i, ptr %x44.i18, align 2
  %88 = load ptr, ptr %pSrc.i2, align 8
  %89 = load i16, ptr %88, align 2
  %add.ptr96.i = getelementptr inbounds i16, ptr %88, i64 32
  %90 = load i16, ptr %add.ptr96.i, align 2
  %add99.i = add i16 %89, %90
  store i16 %add99.i, ptr %x30.i21, align 2
  %sub103.i = sub i16 %89, %90
  store i16 %sub103.i, ptr %x31.i22, align 2
  %91 = load ptr, ptr %pSrc.i2, align 8
  %add.ptr105.i = getelementptr inbounds i16, ptr %91, i64 16
  %92 = load i16, ptr %add.ptr105.i, align 2
  %add.ptr106.i = getelementptr inbounds i16, ptr %91, i64 48
  %93 = load i16, ptr %add.ptr106.i, align 2
  %sub109.i = sub i16 %92, %93
  %add113.i = add i16 %92, %93
  store i16 %add113.i, ptr %x13.i26, align 2
  %call115.i = call signext i16 @imul_b1_b3(i16 noundef signext %sub109.i)
  %sub118.i = sub i16 %call115.i, %add113.i
  store i16 %sub118.i, ptr %x32.i27, align 2
  %94 = load i16, ptr %x30.i21, align 2
  %add122.i = add i16 %94, %add113.i
  store i16 %add122.i, ptr %x40.i28, align 2
  %95 = load i16, ptr %x13.i26, align 2
  %sub126.i = sub i16 %94, %95
  store i16 %sub126.i, ptr %x43.i29, align 2
  %96 = load i16, ptr %x31.i22, align 2
  %97 = load i16, ptr %x32.i27, align 2
  %add130.i108 = add i16 %96, %97
  store i16 %add130.i108, ptr %x41.i30, align 2
  %sub134.i = sub i16 %96, %97
  store i16 %sub134.i, ptr %x42.i31, align 2
  %98 = load i16, ptr %x40.i28, align 2
  %conv136.i111 = sext i16 %98 to i32
  %99 = load i16, ptr %x17.i15, align 2
  %conv137.i = sext i16 %99 to i32
  %add138.i = add nsw i32 %conv136.i111, %conv137.i
  %add139.i = add nsw i32 %add138.i, 64
  %shr140.i = lshr i32 %add139.i, 7
  %100 = trunc i32 %shr140.i to i16
  %conv142.i = add i16 %100, 128
  %call143.i = call zeroext i8 @clamp(i16 noundef signext %conv142.i)
  %conv144.i112 = zext i8 %call143.i to i16
  %101 = load ptr, ptr %pSrc.i2, align 8
  store i16 %conv144.i112, ptr %101, align 2
  %102 = load i16, ptr %x41.i30, align 2
  %conv146.i113 = sext i16 %102 to i32
  %103 = load i16, ptr %tmp2.i16, align 2
  %conv147.i = sext i16 %103 to i32
  %add148.i = add nsw i32 %conv146.i113, %conv147.i
  %add149.i = add nsw i32 %add148.i, 64
  %shr150.i = lshr i32 %add149.i, 7
  %104 = trunc i32 %shr150.i to i16
  %conv152.i = add i16 %104, 128
  %call153.i = call zeroext i8 @clamp(i16 noundef signext %conv152.i)
  %conv154.i114 = zext i8 %call153.i to i16
  %105 = load ptr, ptr %pSrc.i2, align 8
  %add.ptr155.i = getelementptr inbounds i16, ptr %105, i64 8
  store i16 %conv154.i114, ptr %add.ptr155.i, align 2
  %106 = load i16, ptr %x42.i31, align 2
  %conv156.i115 = sext i16 %106 to i32
  %107 = load i16, ptr %tmp3.i17, align 2
  %conv157.i = sext i16 %107 to i32
  %add158.i = add nsw i32 %conv156.i115, %conv157.i
  %add159.i = add nsw i32 %add158.i, 64
  %shr160.i = lshr i32 %add159.i, 7
  %108 = trunc i32 %shr160.i to i16
  %conv162.i = add i16 %108, 128
  %call163.i = call zeroext i8 @clamp(i16 noundef signext %conv162.i)
  %conv164.i = zext i8 %call163.i to i16
  %109 = load ptr, ptr %pSrc.i2, align 8
  %add.ptr165.i = getelementptr inbounds i16, ptr %109, i64 16
  store i16 %conv164.i, ptr %add.ptr165.i, align 2
  %110 = load i16, ptr %x43.i29, align 2
  %conv166.i = sext i16 %110 to i32
  %111 = load i16, ptr %x44.i18, align 2
  %conv167.i = sext i16 %111 to i32
  %sub168.i = sub nsw i32 %conv166.i, %conv167.i
  %add169.i = add nsw i32 %sub168.i, 64
  %shr170.i = lshr i32 %add169.i, 7
  %112 = trunc i32 %shr170.i to i16
  %conv172.i = add i16 %112, 128
  %call173.i = call zeroext i8 @clamp(i16 noundef signext %conv172.i)
  %conv174.i = zext i8 %call173.i to i16
  %113 = load ptr, ptr %pSrc.i2, align 8
  %add.ptr175.i = getelementptr inbounds i16, ptr %113, i64 24
  store i16 %conv174.i, ptr %add.ptr175.i, align 2
  %114 = load i16, ptr %x43.i29, align 2
  %conv176.i = sext i16 %114 to i32
  %115 = load i16, ptr %x44.i18, align 2
  %conv177.i = sext i16 %115 to i32
  %add178.i = add nsw i32 %conv176.i, %conv177.i
  %add179.i = add nsw i32 %add178.i, 64
  %shr180.i = lshr i32 %add179.i, 7
  %116 = trunc i32 %shr180.i to i16
  %conv182.i = add i16 %116, 128
  %call183.i = call zeroext i8 @clamp(i16 noundef signext %conv182.i)
  %conv184.i = zext i8 %call183.i to i16
  %117 = load ptr, ptr %pSrc.i2, align 8
  %add.ptr185.i = getelementptr inbounds i16, ptr %117, i64 32
  store i16 %conv184.i, ptr %add.ptr185.i, align 2
  %118 = load i16, ptr %x42.i31, align 2
  %conv186.i = sext i16 %118 to i32
  %119 = load i16, ptr %tmp3.i17, align 2
  %conv187.i = sext i16 %119 to i32
  %sub188.i = sub nsw i32 %conv186.i, %conv187.i
  %add189.i = add nsw i32 %sub188.i, 64
  %shr190.i = lshr i32 %add189.i, 7
  %120 = trunc i32 %shr190.i to i16
  %conv192.i = add i16 %120, 128
  %call193.i = call zeroext i8 @clamp(i16 noundef signext %conv192.i)
  %conv194.i = zext i8 %call193.i to i16
  %121 = load ptr, ptr %pSrc.i2, align 8
  %add.ptr195.i = getelementptr inbounds i16, ptr %121, i64 40
  store i16 %conv194.i, ptr %add.ptr195.i, align 2
  %122 = load i16, ptr %x41.i30, align 2
  %conv196.i = sext i16 %122 to i32
  %123 = load i16, ptr %tmp2.i16, align 2
  %conv197.i = sext i16 %123 to i32
  %sub198.i = sub nsw i32 %conv196.i, %conv197.i
  %add199.i = add nsw i32 %sub198.i, 64
  %shr200.i = lshr i32 %add199.i, 7
  %124 = trunc i32 %shr200.i to i16
  %conv202.i = add i16 %124, 128
  %call203.i = call zeroext i8 @clamp(i16 noundef signext %conv202.i)
  %conv204.i = zext i8 %call203.i to i16
  %125 = load ptr, ptr %pSrc.i2, align 8
  %add.ptr205.i = getelementptr inbounds i16, ptr %125, i64 48
  store i16 %conv204.i, ptr %add.ptr205.i, align 2
  %126 = load i16, ptr %x40.i28, align 2
  %conv206.i = sext i16 %126 to i32
  %127 = load i16, ptr %x17.i15, align 2
  %conv207.i = sext i16 %127 to i32
  %sub208.i = sub nsw i32 %conv206.i, %conv207.i
  %add209.i = add nsw i32 %sub208.i, 64
  %shr210.i = lshr i32 %add209.i, 7
  %128 = trunc i32 %shr210.i to i16
  %conv212.i = add i16 %128, 128
  %call213.i = call zeroext i8 @clamp(i16 noundef signext %conv212.i)
  %conv214.i = zext i8 %call213.i to i16
  %129 = load ptr, ptr %pSrc.i2, align 8
  %add.ptr215.i = getelementptr inbounds i16, ptr %129, i64 56
  store i16 %conv214.i, ptr %add.ptr215.i, align 2
  br label %if.end.i117

if.end.i117:                                      ; preds = %if.else.i116, %if.then.i66
  %130 = load ptr, ptr %pSrc.i2, align 8
  %incdec.ptr.i = getelementptr inbounds i16, ptr %130, i64 1
  store ptr %incdec.ptr.i, ptr %pSrc.i2, align 8
  %131 = load i8, ptr %i.i1, align 1
  %inc.i118 = add i8 %131, 1
  br label %for.cond.i34, !llvm.loop !16

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_72.exit: ; preds = %for.cond.i34
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i.i1)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pSrc.i2)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %c.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %x4.i5)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %x7.i6)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %x5.i9)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %stg26.i12)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %x24.i13)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %x17.i15)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp2.i16)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp3.i17)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %x44.i18)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %x30.i21)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %x31.i22)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %x13.i26)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %x32.i27)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %x40.i28)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %x43.i29)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %x41.i30)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %x42.i31)
  %132 = load i32, ptr @gScanType, align 4
  switch i32 %132, label %sw.epilog28 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 3, label %sw.bb5
    i32 2, label %sw.bb12
    i32 4, label %sw.bb19
  ]

sw.bb:                                            ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_72.exit
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i.i119)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pRDst.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pGDst.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pBDst.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pSrc.i120)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %c.i121)
  store ptr @gMCUBufR, ptr %pRDst.i, align 8
  store ptr @gMCUBufG, ptr %pGDst.i, align 8
  store ptr @gMCUBufB, ptr %pBDst.i, align 8
  store ptr @gCoeffBuf, ptr %pSrc.i120, align 8
  br label %for.cond.i126

for.cond.i126:                                    ; preds = %for.body.i129, %sw.bb
  %storemerge1475 = phi i8 [ 64, %sw.bb ], [ %dec.i, %for.body.i129 ]
  store i8 %storemerge1475, ptr %i.i119, align 1
  %cmp.i125.not = icmp eq i8 %storemerge1475, 0
  br i1 %cmp.i125.not, label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_73.exit, label %for.body.i129

for.body.i129:                                    ; preds = %for.cond.i126
  %133 = load ptr, ptr %pSrc.i120, align 8
  %incdec.ptr.i127 = getelementptr inbounds i16, ptr %133, i64 1
  store ptr %incdec.ptr.i127, ptr %pSrc.i120, align 8
  %134 = load i16, ptr %133, align 2
  %conv9.i128 = trunc i16 %134 to i8
  store i8 %conv9.i128, ptr %c.i121, align 1
  %135 = load ptr, ptr %pRDst.i, align 8
  %incdec.ptr10.i = getelementptr inbounds i8, ptr %135, i64 1
  store ptr %incdec.ptr10.i, ptr %pRDst.i, align 8
  store i8 %conv9.i128, ptr %135, align 1
  %136 = load ptr, ptr %pGDst.i, align 8
  %incdec.ptr11.i = getelementptr inbounds i8, ptr %136, i64 1
  store ptr %incdec.ptr11.i, ptr %pGDst.i, align 8
  store i8 %conv9.i128, ptr %136, align 1
  %137 = load i8, ptr %c.i121, align 1
  %138 = load ptr, ptr %pBDst.i, align 8
  %incdec.ptr12.i = getelementptr inbounds i8, ptr %138, i64 1
  store ptr %incdec.ptr12.i, ptr %pBDst.i, align 8
  store i8 %137, ptr %138, align 1
  %139 = load i8, ptr %i.i119, align 1
  %dec.i = add i8 %139, -1
  br label %for.cond.i126, !llvm.loop !17

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_73.exit: ; preds = %for.cond.i126
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i.i119)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pRDst.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pGDst.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pBDst.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pSrc.i120)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %c.i121)
  br label %sw.epilog28

sw.bb1:                                           ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_72.exit
  %140 = load i8, ptr %mcuBlock.addr, align 1
  switch i8 %140, label %sw.epilog28 [
    i8 0, label %sw.bb2
    i8 1, label %sw.bb3
    i8 2, label %sw.bb4
  ]

sw.bb2:                                           ; preds = %sw.bb1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i.i131)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pRDst.i132)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pGDst.i133)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pBDst.i134)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pSrc.i135)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %c.i136)
  store ptr @gMCUBufR, ptr %pRDst.i132, align 8
  store ptr @gMCUBufG, ptr %pGDst.i133, align 8
  store ptr @gMCUBufB, ptr %pBDst.i134, align 8
  store ptr @gCoeffBuf, ptr %pSrc.i135, align 8
  br label %for.cond.i148

for.cond.i148:                                    ; preds = %for.body.i154, %sw.bb2
  %storemerge1474 = phi i8 [ 64, %sw.bb2 ], [ %dec.i155, %for.body.i154 ]
  store i8 %storemerge1474, ptr %i.i131, align 1
  %cmp.i147.not = icmp eq i8 %storemerge1474, 0
  br i1 %cmp.i147.not, label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_74.exit, label %for.body.i154

for.body.i154:                                    ; preds = %for.cond.i148
  %141 = load ptr, ptr %pSrc.i135, align 8
  %incdec.ptr.i149 = getelementptr inbounds i16, ptr %141, i64 1
  store ptr %incdec.ptr.i149, ptr %pSrc.i135, align 8
  %142 = load i16, ptr %141, align 2
  %conv9.i150 = trunc i16 %142 to i8
  store i8 %conv9.i150, ptr %c.i136, align 1
  %143 = load ptr, ptr %pRDst.i132, align 8
  %incdec.ptr10.i151 = getelementptr inbounds i8, ptr %143, i64 1
  store ptr %incdec.ptr10.i151, ptr %pRDst.i132, align 8
  store i8 %conv9.i150, ptr %143, align 1
  %144 = load ptr, ptr %pGDst.i133, align 8
  %incdec.ptr11.i152 = getelementptr inbounds i8, ptr %144, i64 1
  store ptr %incdec.ptr11.i152, ptr %pGDst.i133, align 8
  store i8 %conv9.i150, ptr %144, align 1
  %145 = load i8, ptr %c.i136, align 1
  %146 = load ptr, ptr %pBDst.i134, align 8
  %incdec.ptr12.i153 = getelementptr inbounds i8, ptr %146, i64 1
  store ptr %incdec.ptr12.i153, ptr %pBDst.i134, align 8
  store i8 %145, ptr %146, align 1
  %147 = load i8, ptr %i.i131, align 1
  %dec.i155 = add i8 %147, -1
  br label %for.cond.i148, !llvm.loop !17

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_74.exit: ; preds = %for.cond.i148
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i.i131)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pRDst.i132)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pGDst.i133)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pBDst.i134)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pSrc.i135)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %c.i136)
  br label %sw.epilog28

sw.bb3:                                           ; preds = %sw.bb1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i.i157)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pDstG.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pDstB.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pSrc.i158)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cb.i)
  store ptr @gMCUBufG, ptr %pDstG.i, align 8
  store ptr @gMCUBufB, ptr %pDstB.i, align 8
  store ptr @gCoeffBuf, ptr %pSrc.i158, align 8
  br label %for.cond.i167

for.cond.i167:                                    ; preds = %for.body.i176, %sw.bb3
  %storemerge1472 = phi i8 [ 64, %sw.bb3 ], [ %dec.i177, %for.body.i176 ]
  store i8 %storemerge1472, ptr %i.i157, align 1
  %cmp.i166.not = icmp eq i8 %storemerge1472, 0
  br i1 %cmp.i166.not, label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_75.exit, label %for.body.i176

for.body.i176:                                    ; preds = %for.cond.i167
  %148 = load ptr, ptr %pSrc.i158, align 8
  %incdec.ptr.i168 = getelementptr inbounds i16, ptr %148, i64 1
  store ptr %incdec.ptr.i168, ptr %pSrc.i158, align 8
  %149 = load i16, ptr %148, align 2
  %conv6.i169 = trunc i16 %149 to i8
  store i8 %conv6.i169, ptr %cb.i, align 1
  %conv6.i169.mask = and i16 %149, 255
  %narrow1473 = mul nuw nsw i16 %conv6.i169.mask, 88
  %150 = lshr i16 %narrow1473, 8
  %sub.i172 = add nsw i16 %150, -44
  %151 = load ptr, ptr %pDstG.i, align 8
  %152 = load i8, ptr %151, align 1
  %call.i173 = call zeroext i8 @subAndClamp(i8 noundef zeroext %152, i16 noundef signext %sub.i172)
  store i8 %call.i173, ptr %151, align 1
  %incdec.ptr9.i = getelementptr inbounds i8, ptr %151, i64 1
  store ptr %incdec.ptr9.i, ptr %pDstG.i, align 8
  %153 = load i8, ptr %cb.i, align 1
  %conv10.i = zext i8 %153 to i16
  %conv11.i = zext i8 %153 to i16
  %mul12.i = mul nuw i16 %conv11.i, 198
  %shr13.i = lshr i16 %mul12.i, 8
  %add.i174 = add nuw nsw i16 %shr13.i, %conv10.i
  %sub14.i = add nsw i16 %add.i174, -227
  %154 = load ptr, ptr %pDstB.i, align 8
  %155 = load i8, ptr %154, align 1
  %call17.i = call zeroext i8 @addAndClamp(i8 noundef zeroext %155, i16 noundef signext %sub14.i)
  store i8 %call17.i, ptr %154, align 1
  %incdec.ptr18.i = getelementptr inbounds i8, ptr %154, i64 1
  store ptr %incdec.ptr18.i, ptr %pDstB.i, align 8
  %156 = load i8, ptr %i.i157, align 1
  %dec.i177 = add i8 %156, -1
  br label %for.cond.i167, !llvm.loop !18

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_75.exit: ; preds = %for.cond.i167
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i.i157)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pDstG.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pDstB.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pSrc.i158)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cb.i)
  br label %sw.epilog28

sw.bb4:                                           ; preds = %sw.bb1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i.i179)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pDstR.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pDstG.i180)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pSrc.i181)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cr.i)
  store ptr @gMCUBufR, ptr %pDstR.i, align 8
  store ptr @gMCUBufG, ptr %pDstG.i180, align 8
  store ptr @gCoeffBuf, ptr %pSrc.i181, align 8
  br label %for.cond.i190

for.cond.i190:                                    ; preds = %for.body.i209, %sw.bb4
  %storemerge1468 = phi i8 [ 64, %sw.bb4 ], [ %dec.i210, %for.body.i209 ]
  store i8 %storemerge1468, ptr %i.i179, align 1
  %cmp.i189.not = icmp eq i8 %storemerge1468, 0
  br i1 %cmp.i189.not, label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_76.exit, label %for.body.i209

for.body.i209:                                    ; preds = %for.cond.i190
  %157 = load ptr, ptr %pSrc.i181, align 8
  %incdec.ptr.i191 = getelementptr inbounds i16, ptr %157, i64 1
  store ptr %incdec.ptr.i191, ptr %pSrc.i181, align 8
  %158 = load i16, ptr %157, align 2
  %conv6.i192 = trunc i16 %158 to i8
  store i8 %conv6.i192, ptr %cr.i, align 1
  %conv6.i192.mask = and i16 %158, 255
  %conv6.i192.mask1469 = and i16 %158, 255
  %narrow1470 = mul nuw nsw i16 %conv6.i192.mask1469, 103
  %159 = lshr i16 %narrow1470, 8
  %narrow1471 = add nuw nsw i16 %conv6.i192.mask, %159
  %sub.i198 = add nsw i16 %narrow1471, -179
  %160 = load ptr, ptr %pDstR.i, align 8
  %161 = load i8, ptr %160, align 1
  %call.i200 = call zeroext i8 @addAndClamp(i8 noundef zeroext %161, i16 noundef signext %sub.i198)
  store i8 %call.i200, ptr %160, align 1
  %incdec.ptr10.i201 = getelementptr inbounds i8, ptr %160, i64 1
  store ptr %incdec.ptr10.i201, ptr %pDstR.i, align 8
  %162 = load i8, ptr %cr.i, align 1
  %conv11.i202 = zext i8 %162 to i16
  %mul12.i203 = mul nuw i16 %conv11.i202, 183
  %shr13.i204 = lshr i16 %mul12.i203, 8
  %sub14.i205 = add nsw i16 %shr13.i204, -91
  %163 = load ptr, ptr %pDstG.i180, align 8
  %164 = load i8, ptr %163, align 1
  %call17.i207 = call zeroext i8 @subAndClamp(i8 noundef zeroext %164, i16 noundef signext %sub14.i205)
  store i8 %call17.i207, ptr %163, align 1
  %incdec.ptr18.i208 = getelementptr inbounds i8, ptr %163, i64 1
  store ptr %incdec.ptr18.i208, ptr %pDstG.i180, align 8
  %165 = load i8, ptr %i.i179, align 1
  %dec.i210 = add i8 %165, -1
  br label %for.cond.i190, !llvm.loop !19

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_76.exit: ; preds = %for.cond.i190
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i.i179)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pDstR.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pDstG.i180)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pSrc.i181)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cr.i)
  br label %sw.epilog28

sw.bb5:                                           ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_72.exit
  %166 = load i8, ptr %mcuBlock.addr, align 1
  switch i8 %166, label %sw.epilog28 [
    i8 0, label %sw.bb7
    i8 1, label %sw.bb8
    i8 2, label %sw.bb9
    i8 3, label %sw.bb10
  ]

sw.bb7:                                           ; preds = %sw.bb5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i.i212)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pRDst.i213)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pGDst.i214)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pBDst.i215)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pSrc.i216)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %c.i217)
  store ptr @gMCUBufR, ptr %pRDst.i213, align 8
  store ptr @gMCUBufG, ptr %pGDst.i214, align 8
  store ptr @gMCUBufB, ptr %pBDst.i215, align 8
  store ptr @gCoeffBuf, ptr %pSrc.i216, align 8
  br label %for.cond.i229

for.cond.i229:                                    ; preds = %for.body.i235, %sw.bb7
  %storemerge1467 = phi i8 [ 64, %sw.bb7 ], [ %dec.i236, %for.body.i235 ]
  store i8 %storemerge1467, ptr %i.i212, align 1
  %cmp.i228.not = icmp eq i8 %storemerge1467, 0
  br i1 %cmp.i228.not, label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_77.exit, label %for.body.i235

for.body.i235:                                    ; preds = %for.cond.i229
  %167 = load ptr, ptr %pSrc.i216, align 8
  %incdec.ptr.i230 = getelementptr inbounds i16, ptr %167, i64 1
  store ptr %incdec.ptr.i230, ptr %pSrc.i216, align 8
  %168 = load i16, ptr %167, align 2
  %conv9.i231 = trunc i16 %168 to i8
  store i8 %conv9.i231, ptr %c.i217, align 1
  %169 = load ptr, ptr %pRDst.i213, align 8
  %incdec.ptr10.i232 = getelementptr inbounds i8, ptr %169, i64 1
  store ptr %incdec.ptr10.i232, ptr %pRDst.i213, align 8
  store i8 %conv9.i231, ptr %169, align 1
  %170 = load ptr, ptr %pGDst.i214, align 8
  %incdec.ptr11.i233 = getelementptr inbounds i8, ptr %170, i64 1
  store ptr %incdec.ptr11.i233, ptr %pGDst.i214, align 8
  store i8 %conv9.i231, ptr %170, align 1
  %171 = load i8, ptr %c.i217, align 1
  %172 = load ptr, ptr %pBDst.i215, align 8
  %incdec.ptr12.i234 = getelementptr inbounds i8, ptr %172, i64 1
  store ptr %incdec.ptr12.i234, ptr %pBDst.i215, align 8
  store i8 %171, ptr %172, align 1
  %173 = load i8, ptr %i.i212, align 1
  %dec.i236 = add i8 %173, -1
  br label %for.cond.i229, !llvm.loop !17

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_77.exit: ; preds = %for.cond.i229
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i.i212)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pRDst.i213)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pGDst.i214)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pBDst.i215)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pSrc.i216)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %c.i217)
  br label %sw.epilog28

sw.bb8:                                           ; preds = %sw.bb5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i.i238)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pRDst.i239)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pGDst.i240)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pBDst.i241)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pSrc.i242)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %c.i243)
  store ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 128), ptr %pRDst.i239, align 8
  store ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 128), ptr %pGDst.i240, align 8
  store ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 128), ptr %pBDst.i241, align 8
  store ptr @gCoeffBuf, ptr %pSrc.i242, align 8
  br label %for.cond.i255

for.cond.i255:                                    ; preds = %for.body.i261, %sw.bb8
  %storemerge1466 = phi i8 [ 64, %sw.bb8 ], [ %dec.i262, %for.body.i261 ]
  store i8 %storemerge1466, ptr %i.i238, align 1
  %cmp.i254.not = icmp eq i8 %storemerge1466, 0
  br i1 %cmp.i254.not, label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_78.exit, label %for.body.i261

for.body.i261:                                    ; preds = %for.cond.i255
  %174 = load ptr, ptr %pSrc.i242, align 8
  %incdec.ptr.i256 = getelementptr inbounds i16, ptr %174, i64 1
  store ptr %incdec.ptr.i256, ptr %pSrc.i242, align 8
  %175 = load i16, ptr %174, align 2
  %conv9.i257 = trunc i16 %175 to i8
  store i8 %conv9.i257, ptr %c.i243, align 1
  %176 = load ptr, ptr %pRDst.i239, align 8
  %incdec.ptr10.i258 = getelementptr inbounds i8, ptr %176, i64 1
  store ptr %incdec.ptr10.i258, ptr %pRDst.i239, align 8
  store i8 %conv9.i257, ptr %176, align 1
  %177 = load ptr, ptr %pGDst.i240, align 8
  %incdec.ptr11.i259 = getelementptr inbounds i8, ptr %177, i64 1
  store ptr %incdec.ptr11.i259, ptr %pGDst.i240, align 8
  store i8 %conv9.i257, ptr %177, align 1
  %178 = load i8, ptr %c.i243, align 1
  %179 = load ptr, ptr %pBDst.i241, align 8
  %incdec.ptr12.i260 = getelementptr inbounds i8, ptr %179, i64 1
  store ptr %incdec.ptr12.i260, ptr %pBDst.i241, align 8
  store i8 %178, ptr %179, align 1
  %180 = load i8, ptr %i.i238, align 1
  %dec.i262 = add i8 %180, -1
  br label %for.cond.i255, !llvm.loop !17

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_78.exit: ; preds = %for.cond.i255
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i.i238)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pRDst.i239)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pGDst.i240)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pBDst.i241)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pSrc.i242)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %c.i243)
  br label %sw.epilog28

sw.bb9:                                           ; preds = %sw.bb5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %x.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %y.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pSrc.i264)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pDstG.i265)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pDstB.i266)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cb.i267)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cbG.i268)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cbB.i269)
  store ptr @gCoeffBuf, ptr %pSrc.i264, align 8
  store ptr @gMCUBufG, ptr %pDstG.i265, align 8
  store ptr @gMCUBufB, ptr %pDstB.i266, align 8
  br label %for.cond.i281

for.cond.i281:                                    ; preds = %for.end.i, %sw.bb9
  %storemerge1460 = phi i8 [ 0, %sw.bb9 ], [ %inc40.i, %for.end.i ]
  store i8 %storemerge1460, ptr %y.i, align 1
  %cmp.i280 = icmp ult i8 %storemerge1460, 4
  br i1 %cmp.i280, label %for.cond9.i, label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_79.exit

for.cond9.i:                                      ; preds = %for.cond.i281, %for.body13.i
  %storemerge1464 = phi i8 [ %inc.i293, %for.body13.i ], [ 0, %for.cond.i281 ]
  store i8 %storemerge1464, ptr %x.i, align 1
  %cmp11.i = icmp ult i8 %storemerge1464, 8
  br i1 %cmp11.i, label %for.body13.i, label %for.end.i

for.body13.i:                                     ; preds = %for.cond9.i
  %181 = load ptr, ptr %pSrc.i264, align 8
  %incdec.ptr.i284 = getelementptr inbounds i16, ptr %181, i64 1
  store ptr %incdec.ptr.i284, ptr %pSrc.i264, align 8
  %182 = load i16, ptr %181, align 2
  %conv14.i = trunc i16 %182 to i8
  store i8 %conv14.i, ptr %cb.i267, align 1
  %conv14.i.mask = and i16 %182, 255
  %narrow1465 = mul nuw nsw i16 %conv14.i.mask, 88
  %183 = lshr i16 %narrow1465, 8
  %sub.i288 = add nsw i16 %183, -44
  store i16 %sub.i288, ptr %cbG.i268, align 2
  %184 = load ptr, ptr %pDstG.i265, align 8
  %185 = load i8, ptr %184, align 1
  %call.i289 = call zeroext i8 @subAndClamp(i8 noundef zeroext %185, i16 noundef signext %sub.i288)
  store i8 %call.i289, ptr %184, align 1
  %arrayidx18.i = getelementptr inbounds i8, ptr %184, i64 8
  %186 = load i8, ptr %arrayidx18.i, align 1
  %187 = load i16, ptr %cbG.i268, align 2
  %call19.i = call zeroext i8 @subAndClamp(i8 noundef zeroext %186, i16 noundef signext %187)
  %188 = load ptr, ptr %pDstG.i265, align 8
  %arrayidx20.i = getelementptr inbounds i8, ptr %188, i64 8
  store i8 %call19.i, ptr %arrayidx20.i, align 1
  %189 = load i8, ptr %cb.i267, align 1
  %conv21.i = zext i8 %189 to i16
  %conv22.i290 = zext i8 %189 to i16
  %mul23.i = mul nuw i16 %conv22.i290, 198
  %shr24.i = lshr i16 %mul23.i, 8
  %add.i291 = add nuw nsw i16 %shr24.i, %conv21.i
  %sub25.i = add nsw i16 %add.i291, -227
  store i16 %sub25.i, ptr %cbB.i269, align 2
  %190 = load ptr, ptr %pDstB.i266, align 8
  %191 = load i8, ptr %190, align 1
  %call28.i = call zeroext i8 @addAndClamp(i8 noundef zeroext %191, i16 noundef signext %sub25.i)
  store i8 %call28.i, ptr %190, align 1
  %arrayidx30.i = getelementptr inbounds i8, ptr %190, i64 8
  %192 = load i8, ptr %arrayidx30.i, align 1
  %193 = load i16, ptr %cbB.i269, align 2
  %call31.i = call zeroext i8 @addAndClamp(i8 noundef zeroext %192, i16 noundef signext %193)
  %194 = load ptr, ptr %pDstB.i266, align 8
  %arrayidx32.i = getelementptr inbounds i8, ptr %194, i64 8
  store i8 %call31.i, ptr %arrayidx32.i, align 1
  %195 = load ptr, ptr %pDstG.i265, align 8
  %incdec.ptr33.i = getelementptr inbounds i8, ptr %195, i64 1
  store ptr %incdec.ptr33.i, ptr %pDstG.i265, align 8
  %incdec.ptr34.i = getelementptr inbounds i8, ptr %194, i64 1
  store ptr %incdec.ptr34.i, ptr %pDstB.i266, align 8
  %196 = load i8, ptr %x.i, align 1
  %inc.i293 = add i8 %196, 1
  br label %for.cond9.i, !llvm.loop !20

for.end.i:                                        ; preds = %for.cond9.i
  %197 = load ptr, ptr %pDstG.i265, align 8
  %add.ptr36.i295 = getelementptr inbounds i8, ptr %197, i64 8
  store ptr %add.ptr36.i295, ptr %pDstG.i265, align 8
  %198 = load ptr, ptr %pDstB.i266, align 8
  %add.ptr38.i = getelementptr inbounds i8, ptr %198, i64 8
  store ptr %add.ptr38.i, ptr %pDstB.i266, align 8
  %199 = load i8, ptr %y.i, align 1
  %inc40.i = add i8 %199, 1
  br label %for.cond.i281, !llvm.loop !21

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_79.exit: ; preds = %for.cond.i281
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %x.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %y.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pSrc.i264)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pDstG.i265)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pDstB.i266)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cb.i267)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cbG.i268)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cbB.i269)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %x.i299)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %y.i300)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pSrc.i301)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pDstG.i302)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pDstB.i303)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cb.i304)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cbG.i305)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cbB.i306)
  store ptr getelementptr inbounds ([64 x i16], ptr @gCoeffBuf, i64 0, i64 32), ptr %pSrc.i301, align 8
  store ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 128), ptr %pDstG.i302, align 8
  store ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 128), ptr %pDstB.i303, align 8
  br label %for.cond.i318

for.cond.i318:                                    ; preds = %for.end.i353, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_79.exit
  %storemerge1461 = phi i8 [ 0, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_79.exit ], [ %inc40.i354, %for.end.i353 ]
  store i8 %storemerge1461, ptr %y.i300, align 1
  %cmp.i317 = icmp ult i8 %storemerge1461, 4
  br i1 %cmp.i317, label %for.cond9.i322, label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_80.exit

for.cond9.i322:                                   ; preds = %for.cond.i318, %for.body13.i347
  %storemerge1462 = phi i8 [ %inc.i348, %for.body13.i347 ], [ 0, %for.cond.i318 ]
  store i8 %storemerge1462, ptr %x.i299, align 1
  %cmp11.i321 = icmp ult i8 %storemerge1462, 8
  br i1 %cmp11.i321, label %for.body13.i347, label %for.end.i353

for.body13.i347:                                  ; preds = %for.cond9.i322
  %200 = load ptr, ptr %pSrc.i301, align 8
  %incdec.ptr.i323 = getelementptr inbounds i16, ptr %200, i64 1
  store ptr %incdec.ptr.i323, ptr %pSrc.i301, align 8
  %201 = load i16, ptr %200, align 2
  %conv14.i324 = trunc i16 %201 to i8
  store i8 %conv14.i324, ptr %cb.i304, align 1
  %conv14.i324.mask = and i16 %201, 255
  %narrow1463 = mul nuw nsw i16 %conv14.i324.mask, 88
  %202 = lshr i16 %narrow1463, 8
  %sub.i328 = add nsw i16 %202, -44
  store i16 %sub.i328, ptr %cbG.i305, align 2
  %203 = load ptr, ptr %pDstG.i302, align 8
  %204 = load i8, ptr %203, align 1
  %call.i330 = call zeroext i8 @subAndClamp(i8 noundef zeroext %204, i16 noundef signext %sub.i328)
  store i8 %call.i330, ptr %203, align 1
  %arrayidx18.i331 = getelementptr inbounds i8, ptr %203, i64 8
  %205 = load i8, ptr %arrayidx18.i331, align 1
  %206 = load i16, ptr %cbG.i305, align 2
  %call19.i332 = call zeroext i8 @subAndClamp(i8 noundef zeroext %205, i16 noundef signext %206)
  %207 = load ptr, ptr %pDstG.i302, align 8
  %arrayidx20.i333 = getelementptr inbounds i8, ptr %207, i64 8
  store i8 %call19.i332, ptr %arrayidx20.i333, align 1
  %208 = load i8, ptr %cb.i304, align 1
  %conv21.i334 = zext i8 %208 to i16
  %conv22.i335 = zext i8 %208 to i16
  %mul23.i336 = mul nuw i16 %conv22.i335, 198
  %shr24.i337 = lshr i16 %mul23.i336, 8
  %add.i338 = add nuw nsw i16 %shr24.i337, %conv21.i334
  %sub25.i339 = add nsw i16 %add.i338, -227
  store i16 %sub25.i339, ptr %cbB.i306, align 2
  %209 = load ptr, ptr %pDstB.i303, align 8
  %210 = load i8, ptr %209, align 1
  %call28.i341 = call zeroext i8 @addAndClamp(i8 noundef zeroext %210, i16 noundef signext %sub25.i339)
  store i8 %call28.i341, ptr %209, align 1
  %arrayidx30.i342 = getelementptr inbounds i8, ptr %209, i64 8
  %211 = load i8, ptr %arrayidx30.i342, align 1
  %212 = load i16, ptr %cbB.i306, align 2
  %call31.i343 = call zeroext i8 @addAndClamp(i8 noundef zeroext %211, i16 noundef signext %212)
  %213 = load ptr, ptr %pDstB.i303, align 8
  %arrayidx32.i344 = getelementptr inbounds i8, ptr %213, i64 8
  store i8 %call31.i343, ptr %arrayidx32.i344, align 1
  %214 = load ptr, ptr %pDstG.i302, align 8
  %incdec.ptr33.i345 = getelementptr inbounds i8, ptr %214, i64 1
  store ptr %incdec.ptr33.i345, ptr %pDstG.i302, align 8
  %incdec.ptr34.i346 = getelementptr inbounds i8, ptr %213, i64 1
  store ptr %incdec.ptr34.i346, ptr %pDstB.i303, align 8
  %215 = load i8, ptr %x.i299, align 1
  %inc.i348 = add i8 %215, 1
  br label %for.cond9.i322, !llvm.loop !20

for.end.i353:                                     ; preds = %for.cond9.i322
  %216 = load ptr, ptr %pDstG.i302, align 8
  %add.ptr36.i350 = getelementptr inbounds i8, ptr %216, i64 8
  store ptr %add.ptr36.i350, ptr %pDstG.i302, align 8
  %217 = load ptr, ptr %pDstB.i303, align 8
  %add.ptr38.i352 = getelementptr inbounds i8, ptr %217, i64 8
  store ptr %add.ptr38.i352, ptr %pDstB.i303, align 8
  %218 = load i8, ptr %y.i300, align 1
  %inc40.i354 = add i8 %218, 1
  br label %for.cond.i318, !llvm.loop !21

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_80.exit: ; preds = %for.cond.i318
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %x.i299)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %y.i300)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pSrc.i301)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pDstG.i302)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pDstB.i303)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cb.i304)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cbG.i305)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cbB.i306)
  br label %sw.epilog28

sw.bb10:                                          ; preds = %sw.bb5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %x.i357)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %y.i358)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pSrc.i359)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pDstR.i360)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pDstG.i361)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cr.i362)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %crR.i363)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %crG.i364)
  store ptr @gCoeffBuf, ptr %pSrc.i359, align 8
  store ptr @gMCUBufR, ptr %pDstR.i360, align 8
  store ptr @gMCUBufG, ptr %pDstG.i361, align 8
  br label %for.cond.i376

for.cond.i376:                                    ; preds = %for.end.i407, %sw.bb10
  %storemerge1450 = phi i8 [ 0, %sw.bb10 ], [ %inc40.i408, %for.end.i407 ]
  store i8 %storemerge1450, ptr %y.i358, align 1
  %cmp.i375 = icmp ult i8 %storemerge1450, 4
  br i1 %cmp.i375, label %for.cond9.i380, label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_81.exit

for.cond9.i380:                                   ; preds = %for.cond.i376, %for.body13.i401
  %storemerge1456 = phi i8 [ %inc.i402, %for.body13.i401 ], [ 0, %for.cond.i376 ]
  store i8 %storemerge1456, ptr %x.i357, align 1
  %cmp11.i379 = icmp ult i8 %storemerge1456, 8
  br i1 %cmp11.i379, label %for.body13.i401, label %for.end.i407

for.body13.i401:                                  ; preds = %for.cond9.i380
  %219 = load ptr, ptr %pSrc.i359, align 8
  %incdec.ptr.i381 = getelementptr inbounds i16, ptr %219, i64 1
  store ptr %incdec.ptr.i381, ptr %pSrc.i359, align 8
  %220 = load i16, ptr %219, align 2
  %conv14.i382 = trunc i16 %220 to i8
  store i8 %conv14.i382, ptr %cr.i362, align 1
  %conv14.i382.mask = and i16 %220, 255
  %conv14.i382.mask1457 = and i16 %220, 255
  %narrow1458 = mul nuw nsw i16 %conv14.i382.mask1457, 103
  %221 = lshr i16 %narrow1458, 8
  %narrow1459 = add nuw nsw i16 %conv14.i382.mask, %221
  %sub.i388 = add nsw i16 %narrow1459, -179
  store i16 %sub.i388, ptr %crR.i363, align 2
  %222 = load ptr, ptr %pDstR.i360, align 8
  %223 = load i8, ptr %222, align 1
  %call.i389 = call zeroext i8 @addAndClamp(i8 noundef zeroext %223, i16 noundef signext %sub.i388)
  store i8 %call.i389, ptr %222, align 1
  %arrayidx19.i = getelementptr inbounds i8, ptr %222, i64 8
  %224 = load i8, ptr %arrayidx19.i, align 1
  %225 = load i16, ptr %crR.i363, align 2
  %call20.i = call zeroext i8 @addAndClamp(i8 noundef zeroext %224, i16 noundef signext %225)
  %226 = load ptr, ptr %pDstR.i360, align 8
  %arrayidx21.i = getelementptr inbounds i8, ptr %226, i64 8
  store i8 %call20.i, ptr %arrayidx21.i, align 1
  %227 = load i8, ptr %cr.i362, align 1
  %conv22.i390 = zext i8 %227 to i16
  %mul23.i391 = mul nuw i16 %conv22.i390, 183
  %shr24.i392 = lshr i16 %mul23.i391, 8
  %sub25.i393 = add nsw i16 %shr24.i392, -91
  store i16 %sub25.i393, ptr %crG.i364, align 2
  %228 = load ptr, ptr %pDstG.i361, align 8
  %229 = load i8, ptr %228, align 1
  %call28.i395 = call zeroext i8 @subAndClamp(i8 noundef zeroext %229, i16 noundef signext %sub25.i393)
  store i8 %call28.i395, ptr %228, align 1
  %arrayidx30.i396 = getelementptr inbounds i8, ptr %228, i64 8
  %230 = load i8, ptr %arrayidx30.i396, align 1
  %231 = load i16, ptr %crG.i364, align 2
  %call31.i397 = call zeroext i8 @subAndClamp(i8 noundef zeroext %230, i16 noundef signext %231)
  %232 = load ptr, ptr %pDstG.i361, align 8
  %arrayidx32.i398 = getelementptr inbounds i8, ptr %232, i64 8
  store i8 %call31.i397, ptr %arrayidx32.i398, align 1
  %233 = load ptr, ptr %pDstR.i360, align 8
  %incdec.ptr33.i399 = getelementptr inbounds i8, ptr %233, i64 1
  store ptr %incdec.ptr33.i399, ptr %pDstR.i360, align 8
  %incdec.ptr34.i400 = getelementptr inbounds i8, ptr %232, i64 1
  store ptr %incdec.ptr34.i400, ptr %pDstG.i361, align 8
  %234 = load i8, ptr %x.i357, align 1
  %inc.i402 = add i8 %234, 1
  br label %for.cond9.i380, !llvm.loop !22

for.end.i407:                                     ; preds = %for.cond9.i380
  %235 = load ptr, ptr %pDstR.i360, align 8
  %add.ptr36.i404 = getelementptr inbounds i8, ptr %235, i64 8
  store ptr %add.ptr36.i404, ptr %pDstR.i360, align 8
  %236 = load ptr, ptr %pDstG.i361, align 8
  %add.ptr38.i406 = getelementptr inbounds i8, ptr %236, i64 8
  store ptr %add.ptr38.i406, ptr %pDstG.i361, align 8
  %237 = load i8, ptr %y.i358, align 1
  %inc40.i408 = add i8 %237, 1
  br label %for.cond.i376, !llvm.loop !23

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_81.exit: ; preds = %for.cond.i376
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %x.i357)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %y.i358)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pSrc.i359)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pDstR.i360)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pDstG.i361)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cr.i362)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %crR.i363)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %crG.i364)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %x.i411)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %y.i412)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pSrc.i413)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pDstR.i414)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pDstG.i415)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cr.i416)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %crR.i417)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %crG.i418)
  store ptr getelementptr inbounds ([64 x i16], ptr @gCoeffBuf, i64 0, i64 32), ptr %pSrc.i413, align 8
  store ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 128), ptr %pDstR.i414, align 8
  store ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 128), ptr %pDstG.i415, align 8
  br label %for.cond.i430

for.cond.i430:                                    ; preds = %for.end.i465, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_81.exit
  %storemerge1451 = phi i8 [ 0, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_81.exit ], [ %inc40.i466, %for.end.i465 ]
  store i8 %storemerge1451, ptr %y.i412, align 1
  %cmp.i429 = icmp ult i8 %storemerge1451, 4
  br i1 %cmp.i429, label %for.cond9.i434, label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_82.exit

for.cond9.i434:                                   ; preds = %for.cond.i430, %for.body13.i459
  %storemerge1452 = phi i8 [ %inc.i460, %for.body13.i459 ], [ 0, %for.cond.i430 ]
  store i8 %storemerge1452, ptr %x.i411, align 1
  %cmp11.i433 = icmp ult i8 %storemerge1452, 8
  br i1 %cmp11.i433, label %for.body13.i459, label %for.end.i465

for.body13.i459:                                  ; preds = %for.cond9.i434
  %238 = load ptr, ptr %pSrc.i413, align 8
  %incdec.ptr.i435 = getelementptr inbounds i16, ptr %238, i64 1
  store ptr %incdec.ptr.i435, ptr %pSrc.i413, align 8
  %239 = load i16, ptr %238, align 2
  %conv14.i436 = trunc i16 %239 to i8
  store i8 %conv14.i436, ptr %cr.i416, align 1
  %conv14.i436.mask = and i16 %239, 255
  %conv14.i436.mask1453 = and i16 %239, 255
  %narrow1454 = mul nuw nsw i16 %conv14.i436.mask1453, 103
  %240 = lshr i16 %narrow1454, 8
  %narrow1455 = add nuw nsw i16 %conv14.i436.mask, %240
  %sub.i442 = add nsw i16 %narrow1455, -179
  store i16 %sub.i442, ptr %crR.i417, align 2
  %241 = load ptr, ptr %pDstR.i414, align 8
  %242 = load i8, ptr %241, align 1
  %call.i444 = call zeroext i8 @addAndClamp(i8 noundef zeroext %242, i16 noundef signext %sub.i442)
  store i8 %call.i444, ptr %241, align 1
  %arrayidx19.i445 = getelementptr inbounds i8, ptr %241, i64 8
  %243 = load i8, ptr %arrayidx19.i445, align 1
  %244 = load i16, ptr %crR.i417, align 2
  %call20.i446 = call zeroext i8 @addAndClamp(i8 noundef zeroext %243, i16 noundef signext %244)
  %245 = load ptr, ptr %pDstR.i414, align 8
  %arrayidx21.i447 = getelementptr inbounds i8, ptr %245, i64 8
  store i8 %call20.i446, ptr %arrayidx21.i447, align 1
  %246 = load i8, ptr %cr.i416, align 1
  %conv22.i448 = zext i8 %246 to i16
  %mul23.i449 = mul nuw i16 %conv22.i448, 183
  %shr24.i450 = lshr i16 %mul23.i449, 8
  %sub25.i451 = add nsw i16 %shr24.i450, -91
  store i16 %sub25.i451, ptr %crG.i418, align 2
  %247 = load ptr, ptr %pDstG.i415, align 8
  %248 = load i8, ptr %247, align 1
  %call28.i453 = call zeroext i8 @subAndClamp(i8 noundef zeroext %248, i16 noundef signext %sub25.i451)
  store i8 %call28.i453, ptr %247, align 1
  %arrayidx30.i454 = getelementptr inbounds i8, ptr %247, i64 8
  %249 = load i8, ptr %arrayidx30.i454, align 1
  %250 = load i16, ptr %crG.i418, align 2
  %call31.i455 = call zeroext i8 @subAndClamp(i8 noundef zeroext %249, i16 noundef signext %250)
  %251 = load ptr, ptr %pDstG.i415, align 8
  %arrayidx32.i456 = getelementptr inbounds i8, ptr %251, i64 8
  store i8 %call31.i455, ptr %arrayidx32.i456, align 1
  %252 = load ptr, ptr %pDstR.i414, align 8
  %incdec.ptr33.i457 = getelementptr inbounds i8, ptr %252, i64 1
  store ptr %incdec.ptr33.i457, ptr %pDstR.i414, align 8
  %incdec.ptr34.i458 = getelementptr inbounds i8, ptr %251, i64 1
  store ptr %incdec.ptr34.i458, ptr %pDstG.i415, align 8
  %253 = load i8, ptr %x.i411, align 1
  %inc.i460 = add i8 %253, 1
  br label %for.cond9.i434, !llvm.loop !22

for.end.i465:                                     ; preds = %for.cond9.i434
  %254 = load ptr, ptr %pDstR.i414, align 8
  %add.ptr36.i462 = getelementptr inbounds i8, ptr %254, i64 8
  store ptr %add.ptr36.i462, ptr %pDstR.i414, align 8
  %255 = load ptr, ptr %pDstG.i415, align 8
  %add.ptr38.i464 = getelementptr inbounds i8, ptr %255, i64 8
  store ptr %add.ptr38.i464, ptr %pDstG.i415, align 8
  %256 = load i8, ptr %y.i412, align 1
  %inc40.i466 = add i8 %256, 1
  br label %for.cond.i430, !llvm.loop !23

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_82.exit: ; preds = %for.cond.i430
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %x.i411)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %y.i412)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pSrc.i413)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pDstR.i414)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pDstG.i415)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cr.i416)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %crR.i417)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %crG.i418)
  br label %sw.epilog28

sw.bb12:                                          ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_72.exit
  %257 = load i8, ptr %mcuBlock.addr, align 1
  switch i8 %257, label %sw.epilog28 [
    i8 0, label %sw.bb14
    i8 1, label %sw.bb15
    i8 2, label %sw.bb16
    i8 3, label %sw.bb17
  ]

sw.bb14:                                          ; preds = %sw.bb12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i.i468)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pRDst.i469)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pGDst.i470)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pBDst.i471)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pSrc.i472)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %c.i473)
  store ptr @gMCUBufR, ptr %pRDst.i469, align 8
  store ptr @gMCUBufG, ptr %pGDst.i470, align 8
  store ptr @gMCUBufB, ptr %pBDst.i471, align 8
  store ptr @gCoeffBuf, ptr %pSrc.i472, align 8
  br label %for.cond.i485

for.cond.i485:                                    ; preds = %for.body.i491, %sw.bb14
  %storemerge1449 = phi i8 [ 64, %sw.bb14 ], [ %dec.i492, %for.body.i491 ]
  store i8 %storemerge1449, ptr %i.i468, align 1
  %cmp.i484.not = icmp eq i8 %storemerge1449, 0
  br i1 %cmp.i484.not, label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_83.exit, label %for.body.i491

for.body.i491:                                    ; preds = %for.cond.i485
  %258 = load ptr, ptr %pSrc.i472, align 8
  %incdec.ptr.i486 = getelementptr inbounds i16, ptr %258, i64 1
  store ptr %incdec.ptr.i486, ptr %pSrc.i472, align 8
  %259 = load i16, ptr %258, align 2
  %conv9.i487 = trunc i16 %259 to i8
  store i8 %conv9.i487, ptr %c.i473, align 1
  %260 = load ptr, ptr %pRDst.i469, align 8
  %incdec.ptr10.i488 = getelementptr inbounds i8, ptr %260, i64 1
  store ptr %incdec.ptr10.i488, ptr %pRDst.i469, align 8
  store i8 %conv9.i487, ptr %260, align 1
  %261 = load ptr, ptr %pGDst.i470, align 8
  %incdec.ptr11.i489 = getelementptr inbounds i8, ptr %261, i64 1
  store ptr %incdec.ptr11.i489, ptr %pGDst.i470, align 8
  store i8 %conv9.i487, ptr %261, align 1
  %262 = load i8, ptr %c.i473, align 1
  %263 = load ptr, ptr %pBDst.i471, align 8
  %incdec.ptr12.i490 = getelementptr inbounds i8, ptr %263, i64 1
  store ptr %incdec.ptr12.i490, ptr %pBDst.i471, align 8
  store i8 %262, ptr %263, align 1
  %264 = load i8, ptr %i.i468, align 1
  %dec.i492 = add i8 %264, -1
  br label %for.cond.i485, !llvm.loop !17

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_83.exit: ; preds = %for.cond.i485
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i.i468)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pRDst.i469)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pGDst.i470)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pBDst.i471)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pSrc.i472)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %c.i473)
  br label %sw.epilog28

sw.bb15:                                          ; preds = %sw.bb12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i.i495)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pRDst.i496)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pGDst.i497)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pBDst.i498)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pSrc.i499)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %c.i500)
  store ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 64), ptr %pRDst.i496, align 8
  store ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 64), ptr %pGDst.i497, align 8
  store ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 64), ptr %pBDst.i498, align 8
  store ptr @gCoeffBuf, ptr %pSrc.i499, align 8
  br label %for.cond.i512

for.cond.i512:                                    ; preds = %for.body.i518, %sw.bb15
  %storemerge1448 = phi i8 [ 64, %sw.bb15 ], [ %dec.i519, %for.body.i518 ]
  store i8 %storemerge1448, ptr %i.i495, align 1
  %cmp.i511.not = icmp eq i8 %storemerge1448, 0
  br i1 %cmp.i511.not, label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_84.exit, label %for.body.i518

for.body.i518:                                    ; preds = %for.cond.i512
  %265 = load ptr, ptr %pSrc.i499, align 8
  %incdec.ptr.i513 = getelementptr inbounds i16, ptr %265, i64 1
  store ptr %incdec.ptr.i513, ptr %pSrc.i499, align 8
  %266 = load i16, ptr %265, align 2
  %conv9.i514 = trunc i16 %266 to i8
  store i8 %conv9.i514, ptr %c.i500, align 1
  %267 = load ptr, ptr %pRDst.i496, align 8
  %incdec.ptr10.i515 = getelementptr inbounds i8, ptr %267, i64 1
  store ptr %incdec.ptr10.i515, ptr %pRDst.i496, align 8
  store i8 %conv9.i514, ptr %267, align 1
  %268 = load ptr, ptr %pGDst.i497, align 8
  %incdec.ptr11.i516 = getelementptr inbounds i8, ptr %268, i64 1
  store ptr %incdec.ptr11.i516, ptr %pGDst.i497, align 8
  store i8 %conv9.i514, ptr %268, align 1
  %269 = load i8, ptr %c.i500, align 1
  %270 = load ptr, ptr %pBDst.i498, align 8
  %incdec.ptr12.i517 = getelementptr inbounds i8, ptr %270, i64 1
  store ptr %incdec.ptr12.i517, ptr %pBDst.i498, align 8
  store i8 %269, ptr %270, align 1
  %271 = load i8, ptr %i.i495, align 1
  %dec.i519 = add i8 %271, -1
  br label %for.cond.i512, !llvm.loop !17

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_84.exit: ; preds = %for.cond.i512
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i.i495)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pRDst.i496)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pGDst.i497)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pBDst.i498)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pSrc.i499)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %c.i500)
  br label %sw.epilog28

sw.bb16:                                          ; preds = %sw.bb12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %x.i523)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %y.i524)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pSrc.i525)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pDstG.i526)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pDstB.i527)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cb.i528)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cbG.i529)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cbB.i530)
  store ptr @gCoeffBuf, ptr %pSrc.i525, align 8
  store ptr @gMCUBufG, ptr %pDstG.i526, align 8
  store ptr @gMCUBufB, ptr %pDstB.i527, align 8
  br label %for.cond.i542

for.cond.i542:                                    ; preds = %for.end.i574, %sw.bb16
  %storemerge1442 = phi i8 [ 0, %sw.bb16 ], [ %inc38.i, %for.end.i574 ]
  store i8 %storemerge1442, ptr %y.i524, align 1
  %cmp.i541 = icmp ult i8 %storemerge1442, 8
  br i1 %cmp.i541, label %for.cond9.i546, label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_85.exit

for.cond9.i546:                                   ; preds = %for.cond.i542, %for.body13.i570
  %storemerge1446 = phi i8 [ %inc.i571, %for.body13.i570 ], [ 0, %for.cond.i542 ]
  store i8 %storemerge1446, ptr %x.i523, align 1
  %cmp11.i545 = icmp ult i8 %storemerge1446, 4
  br i1 %cmp11.i545, label %for.body13.i570, label %for.end.i574

for.body13.i570:                                  ; preds = %for.cond9.i546
  %272 = load ptr, ptr %pSrc.i525, align 8
  %incdec.ptr.i547 = getelementptr inbounds i16, ptr %272, i64 1
  store ptr %incdec.ptr.i547, ptr %pSrc.i525, align 8
  %273 = load i16, ptr %272, align 2
  %conv14.i548 = trunc i16 %273 to i8
  store i8 %conv14.i548, ptr %cb.i528, align 1
  %conv14.i548.mask = and i16 %273, 255
  %narrow1447 = mul nuw nsw i16 %conv14.i548.mask, 88
  %274 = lshr i16 %narrow1447, 8
  %sub.i552 = add nsw i16 %274, -44
  store i16 %sub.i552, ptr %cbG.i529, align 2
  %275 = load ptr, ptr %pDstG.i526, align 8
  %276 = load i8, ptr %275, align 1
  %call.i554 = call zeroext i8 @subAndClamp(i8 noundef zeroext %276, i16 noundef signext %sub.i552)
  store i8 %call.i554, ptr %275, align 1
  %arrayidx18.i555 = getelementptr inbounds i8, ptr %275, i64 1
  %277 = load i8, ptr %arrayidx18.i555, align 1
  %278 = load i16, ptr %cbG.i529, align 2
  %call19.i556 = call zeroext i8 @subAndClamp(i8 noundef zeroext %277, i16 noundef signext %278)
  %279 = load ptr, ptr %pDstG.i526, align 8
  %arrayidx20.i557 = getelementptr inbounds i8, ptr %279, i64 1
  store i8 %call19.i556, ptr %arrayidx20.i557, align 1
  %280 = load i8, ptr %cb.i528, align 1
  %conv21.i558 = zext i8 %280 to i16
  %conv22.i559 = zext i8 %280 to i16
  %mul23.i560 = mul nuw i16 %conv22.i559, 198
  %shr24.i561 = lshr i16 %mul23.i560, 8
  %add.i562 = add nuw nsw i16 %shr24.i561, %conv21.i558
  %sub25.i563 = add nsw i16 %add.i562, -227
  store i16 %sub25.i563, ptr %cbB.i530, align 2
  %281 = load ptr, ptr %pDstB.i527, align 8
  %282 = load i8, ptr %281, align 1
  %call28.i565 = call zeroext i8 @addAndClamp(i8 noundef zeroext %282, i16 noundef signext %sub25.i563)
  store i8 %call28.i565, ptr %281, align 1
  %arrayidx30.i566 = getelementptr inbounds i8, ptr %281, i64 1
  %283 = load i8, ptr %arrayidx30.i566, align 1
  %284 = load i16, ptr %cbB.i530, align 2
  %call31.i567 = call zeroext i8 @addAndClamp(i8 noundef zeroext %283, i16 noundef signext %284)
  %285 = load ptr, ptr %pDstB.i527, align 8
  %arrayidx32.i568 = getelementptr inbounds i8, ptr %285, i64 1
  store i8 %call31.i567, ptr %arrayidx32.i568, align 1
  %286 = load ptr, ptr %pDstG.i526, align 8
  %add.ptr33.i569 = getelementptr inbounds i8, ptr %286, i64 2
  store ptr %add.ptr33.i569, ptr %pDstG.i526, align 8
  %add.ptr34.i = getelementptr inbounds i8, ptr %285, i64 2
  store ptr %add.ptr34.i, ptr %pDstB.i527, align 8
  %287 = load i8, ptr %x.i523, align 1
  %inc.i571 = add i8 %287, 1
  br label %for.cond9.i546, !llvm.loop !24

for.end.i574:                                     ; preds = %for.cond9.i546
  %288 = load ptr, ptr %pSrc.i525, align 8
  %add.ptr36.i573 = getelementptr inbounds i16, ptr %288, i64 4
  store ptr %add.ptr36.i573, ptr %pSrc.i525, align 8
  %289 = load i8, ptr %y.i524, align 1
  %inc38.i = add i8 %289, 1
  br label %for.cond.i542, !llvm.loop !25

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_85.exit: ; preds = %for.cond.i542
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %x.i523)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %y.i524)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pSrc.i525)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pDstG.i526)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pDstB.i527)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cb.i528)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cbG.i529)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cbB.i530)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %x.i577)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %y.i578)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pSrc.i579)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pDstG.i580)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pDstB.i581)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cb.i582)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cbG.i583)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cbB.i584)
  store ptr getelementptr inbounds ([64 x i16], ptr @gCoeffBuf, i64 0, i64 4), ptr %pSrc.i579, align 8
  store ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 64), ptr %pDstG.i580, align 8
  store ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 64), ptr %pDstB.i581, align 8
  br label %for.cond.i596

for.cond.i596:                                    ; preds = %for.end.i629, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_85.exit
  %storemerge1443 = phi i8 [ 0, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_85.exit ], [ %inc38.i630, %for.end.i629 ]
  store i8 %storemerge1443, ptr %y.i578, align 1
  %cmp.i595 = icmp ult i8 %storemerge1443, 8
  br i1 %cmp.i595, label %for.cond9.i600, label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_86.exit

for.cond9.i600:                                   ; preds = %for.cond.i596, %for.body13.i625
  %storemerge1444 = phi i8 [ %inc.i626, %for.body13.i625 ], [ 0, %for.cond.i596 ]
  store i8 %storemerge1444, ptr %x.i577, align 1
  %cmp11.i599 = icmp ult i8 %storemerge1444, 4
  br i1 %cmp11.i599, label %for.body13.i625, label %for.end.i629

for.body13.i625:                                  ; preds = %for.cond9.i600
  %290 = load ptr, ptr %pSrc.i579, align 8
  %incdec.ptr.i601 = getelementptr inbounds i16, ptr %290, i64 1
  store ptr %incdec.ptr.i601, ptr %pSrc.i579, align 8
  %291 = load i16, ptr %290, align 2
  %conv14.i602 = trunc i16 %291 to i8
  store i8 %conv14.i602, ptr %cb.i582, align 1
  %conv14.i602.mask = and i16 %291, 255
  %narrow1445 = mul nuw nsw i16 %conv14.i602.mask, 88
  %292 = lshr i16 %narrow1445, 8
  %sub.i606 = add nsw i16 %292, -44
  store i16 %sub.i606, ptr %cbG.i583, align 2
  %293 = load ptr, ptr %pDstG.i580, align 8
  %294 = load i8, ptr %293, align 1
  %call.i608 = call zeroext i8 @subAndClamp(i8 noundef zeroext %294, i16 noundef signext %sub.i606)
  store i8 %call.i608, ptr %293, align 1
  %arrayidx18.i609 = getelementptr inbounds i8, ptr %293, i64 1
  %295 = load i8, ptr %arrayidx18.i609, align 1
  %296 = load i16, ptr %cbG.i583, align 2
  %call19.i610 = call zeroext i8 @subAndClamp(i8 noundef zeroext %295, i16 noundef signext %296)
  %297 = load ptr, ptr %pDstG.i580, align 8
  %arrayidx20.i611 = getelementptr inbounds i8, ptr %297, i64 1
  store i8 %call19.i610, ptr %arrayidx20.i611, align 1
  %298 = load i8, ptr %cb.i582, align 1
  %conv21.i612 = zext i8 %298 to i16
  %conv22.i613 = zext i8 %298 to i16
  %mul23.i614 = mul nuw i16 %conv22.i613, 198
  %shr24.i615 = lshr i16 %mul23.i614, 8
  %add.i616 = add nuw nsw i16 %shr24.i615, %conv21.i612
  %sub25.i617 = add nsw i16 %add.i616, -227
  store i16 %sub25.i617, ptr %cbB.i584, align 2
  %299 = load ptr, ptr %pDstB.i581, align 8
  %300 = load i8, ptr %299, align 1
  %call28.i619 = call zeroext i8 @addAndClamp(i8 noundef zeroext %300, i16 noundef signext %sub25.i617)
  store i8 %call28.i619, ptr %299, align 1
  %arrayidx30.i620 = getelementptr inbounds i8, ptr %299, i64 1
  %301 = load i8, ptr %arrayidx30.i620, align 1
  %302 = load i16, ptr %cbB.i584, align 2
  %call31.i621 = call zeroext i8 @addAndClamp(i8 noundef zeroext %301, i16 noundef signext %302)
  %303 = load ptr, ptr %pDstB.i581, align 8
  %arrayidx32.i622 = getelementptr inbounds i8, ptr %303, i64 1
  store i8 %call31.i621, ptr %arrayidx32.i622, align 1
  %304 = load ptr, ptr %pDstG.i580, align 8
  %add.ptr33.i623 = getelementptr inbounds i8, ptr %304, i64 2
  store ptr %add.ptr33.i623, ptr %pDstG.i580, align 8
  %add.ptr34.i624 = getelementptr inbounds i8, ptr %303, i64 2
  store ptr %add.ptr34.i624, ptr %pDstB.i581, align 8
  %305 = load i8, ptr %x.i577, align 1
  %inc.i626 = add i8 %305, 1
  br label %for.cond9.i600, !llvm.loop !24

for.end.i629:                                     ; preds = %for.cond9.i600
  %306 = load ptr, ptr %pSrc.i579, align 8
  %add.ptr36.i628 = getelementptr inbounds i16, ptr %306, i64 4
  store ptr %add.ptr36.i628, ptr %pSrc.i579, align 8
  %307 = load i8, ptr %y.i578, align 1
  %inc38.i630 = add i8 %307, 1
  br label %for.cond.i596, !llvm.loop !25

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_86.exit: ; preds = %for.cond.i596
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %x.i577)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %y.i578)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pSrc.i579)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pDstG.i580)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pDstB.i581)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cb.i582)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cbG.i583)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cbB.i584)
  br label %sw.epilog28

sw.bb17:                                          ; preds = %sw.bb12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %x.i633)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %y.i634)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pSrc.i635)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pDstR.i636)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pDstG.i637)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cr.i638)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %crR.i639)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %crG.i640)
  store ptr @gCoeffBuf, ptr %pSrc.i635, align 8
  store ptr @gMCUBufR, ptr %pDstR.i636, align 8
  store ptr @gMCUBufG, ptr %pDstG.i637, align 8
  br label %for.cond.i652

for.cond.i652:                                    ; preds = %for.end.i685, %sw.bb17
  %storemerge1432 = phi i8 [ 0, %sw.bb17 ], [ %inc38.i686, %for.end.i685 ]
  store i8 %storemerge1432, ptr %y.i634, align 1
  %cmp.i651 = icmp ult i8 %storemerge1432, 8
  br i1 %cmp.i651, label %for.cond9.i656, label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_87.exit

for.cond9.i656:                                   ; preds = %for.cond.i652, %for.body13.i681
  %storemerge1438 = phi i8 [ %inc.i682, %for.body13.i681 ], [ 0, %for.cond.i652 ]
  store i8 %storemerge1438, ptr %x.i633, align 1
  %cmp11.i655 = icmp ult i8 %storemerge1438, 4
  br i1 %cmp11.i655, label %for.body13.i681, label %for.end.i685

for.body13.i681:                                  ; preds = %for.cond9.i656
  %308 = load ptr, ptr %pSrc.i635, align 8
  %incdec.ptr.i657 = getelementptr inbounds i16, ptr %308, i64 1
  store ptr %incdec.ptr.i657, ptr %pSrc.i635, align 8
  %309 = load i16, ptr %308, align 2
  %conv14.i658 = trunc i16 %309 to i8
  store i8 %conv14.i658, ptr %cr.i638, align 1
  %conv14.i658.mask = and i16 %309, 255
  %conv14.i658.mask1439 = and i16 %309, 255
  %narrow1440 = mul nuw nsw i16 %conv14.i658.mask1439, 103
  %310 = lshr i16 %narrow1440, 8
  %narrow1441 = add nuw nsw i16 %conv14.i658.mask, %310
  %sub.i664 = add nsw i16 %narrow1441, -179
  store i16 %sub.i664, ptr %crR.i639, align 2
  %311 = load ptr, ptr %pDstR.i636, align 8
  %312 = load i8, ptr %311, align 1
  %call.i666 = call zeroext i8 @addAndClamp(i8 noundef zeroext %312, i16 noundef signext %sub.i664)
  store i8 %call.i666, ptr %311, align 1
  %arrayidx19.i667 = getelementptr inbounds i8, ptr %311, i64 1
  %313 = load i8, ptr %arrayidx19.i667, align 1
  %314 = load i16, ptr %crR.i639, align 2
  %call20.i668 = call zeroext i8 @addAndClamp(i8 noundef zeroext %313, i16 noundef signext %314)
  %315 = load ptr, ptr %pDstR.i636, align 8
  %arrayidx21.i669 = getelementptr inbounds i8, ptr %315, i64 1
  store i8 %call20.i668, ptr %arrayidx21.i669, align 1
  %316 = load i8, ptr %cr.i638, align 1
  %conv22.i670 = zext i8 %316 to i16
  %mul23.i671 = mul nuw i16 %conv22.i670, 183
  %shr24.i672 = lshr i16 %mul23.i671, 8
  %sub25.i673 = add nsw i16 %shr24.i672, -91
  store i16 %sub25.i673, ptr %crG.i640, align 2
  %317 = load ptr, ptr %pDstG.i637, align 8
  %318 = load i8, ptr %317, align 1
  %call28.i675 = call zeroext i8 @subAndClamp(i8 noundef zeroext %318, i16 noundef signext %sub25.i673)
  store i8 %call28.i675, ptr %317, align 1
  %arrayidx30.i676 = getelementptr inbounds i8, ptr %317, i64 1
  %319 = load i8, ptr %arrayidx30.i676, align 1
  %320 = load i16, ptr %crG.i640, align 2
  %call31.i677 = call zeroext i8 @subAndClamp(i8 noundef zeroext %319, i16 noundef signext %320)
  %321 = load ptr, ptr %pDstG.i637, align 8
  %arrayidx32.i678 = getelementptr inbounds i8, ptr %321, i64 1
  store i8 %call31.i677, ptr %arrayidx32.i678, align 1
  %322 = load ptr, ptr %pDstR.i636, align 8
  %add.ptr33.i679 = getelementptr inbounds i8, ptr %322, i64 2
  store ptr %add.ptr33.i679, ptr %pDstR.i636, align 8
  %add.ptr34.i680 = getelementptr inbounds i8, ptr %321, i64 2
  store ptr %add.ptr34.i680, ptr %pDstG.i637, align 8
  %323 = load i8, ptr %x.i633, align 1
  %inc.i682 = add i8 %323, 1
  br label %for.cond9.i656, !llvm.loop !26

for.end.i685:                                     ; preds = %for.cond9.i656
  %324 = load ptr, ptr %pSrc.i635, align 8
  %add.ptr36.i684 = getelementptr inbounds i16, ptr %324, i64 4
  store ptr %add.ptr36.i684, ptr %pSrc.i635, align 8
  %325 = load i8, ptr %y.i634, align 1
  %inc38.i686 = add i8 %325, 1
  br label %for.cond.i652, !llvm.loop !27

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_87.exit: ; preds = %for.cond.i652
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %x.i633)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %y.i634)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pSrc.i635)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pDstR.i636)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pDstG.i637)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cr.i638)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %crR.i639)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %crG.i640)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %x.i689)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %y.i690)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pSrc.i691)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pDstR.i692)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pDstG.i693)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cr.i694)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %crR.i695)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %crG.i696)
  store ptr getelementptr inbounds ([64 x i16], ptr @gCoeffBuf, i64 0, i64 4), ptr %pSrc.i691, align 8
  store ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 64), ptr %pDstR.i692, align 8
  store ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 64), ptr %pDstG.i693, align 8
  br label %for.cond.i708

for.cond.i708:                                    ; preds = %for.end.i741, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_87.exit
  %storemerge1433 = phi i8 [ 0, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_87.exit ], [ %inc38.i742, %for.end.i741 ]
  store i8 %storemerge1433, ptr %y.i690, align 1
  %cmp.i707 = icmp ult i8 %storemerge1433, 8
  br i1 %cmp.i707, label %for.cond9.i712, label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_88.exit

for.cond9.i712:                                   ; preds = %for.cond.i708, %for.body13.i737
  %storemerge1434 = phi i8 [ %inc.i738, %for.body13.i737 ], [ 0, %for.cond.i708 ]
  store i8 %storemerge1434, ptr %x.i689, align 1
  %cmp11.i711 = icmp ult i8 %storemerge1434, 4
  br i1 %cmp11.i711, label %for.body13.i737, label %for.end.i741

for.body13.i737:                                  ; preds = %for.cond9.i712
  %326 = load ptr, ptr %pSrc.i691, align 8
  %incdec.ptr.i713 = getelementptr inbounds i16, ptr %326, i64 1
  store ptr %incdec.ptr.i713, ptr %pSrc.i691, align 8
  %327 = load i16, ptr %326, align 2
  %conv14.i714 = trunc i16 %327 to i8
  store i8 %conv14.i714, ptr %cr.i694, align 1
  %conv14.i714.mask = and i16 %327, 255
  %conv14.i714.mask1435 = and i16 %327, 255
  %narrow1436 = mul nuw nsw i16 %conv14.i714.mask1435, 103
  %328 = lshr i16 %narrow1436, 8
  %narrow1437 = add nuw nsw i16 %conv14.i714.mask, %328
  %sub.i720 = add nsw i16 %narrow1437, -179
  store i16 %sub.i720, ptr %crR.i695, align 2
  %329 = load ptr, ptr %pDstR.i692, align 8
  %330 = load i8, ptr %329, align 1
  %call.i722 = call zeroext i8 @addAndClamp(i8 noundef zeroext %330, i16 noundef signext %sub.i720)
  store i8 %call.i722, ptr %329, align 1
  %arrayidx19.i723 = getelementptr inbounds i8, ptr %329, i64 1
  %331 = load i8, ptr %arrayidx19.i723, align 1
  %332 = load i16, ptr %crR.i695, align 2
  %call20.i724 = call zeroext i8 @addAndClamp(i8 noundef zeroext %331, i16 noundef signext %332)
  %333 = load ptr, ptr %pDstR.i692, align 8
  %arrayidx21.i725 = getelementptr inbounds i8, ptr %333, i64 1
  store i8 %call20.i724, ptr %arrayidx21.i725, align 1
  %334 = load i8, ptr %cr.i694, align 1
  %conv22.i726 = zext i8 %334 to i16
  %mul23.i727 = mul nuw i16 %conv22.i726, 183
  %shr24.i728 = lshr i16 %mul23.i727, 8
  %sub25.i729 = add nsw i16 %shr24.i728, -91
  store i16 %sub25.i729, ptr %crG.i696, align 2
  %335 = load ptr, ptr %pDstG.i693, align 8
  %336 = load i8, ptr %335, align 1
  %call28.i731 = call zeroext i8 @subAndClamp(i8 noundef zeroext %336, i16 noundef signext %sub25.i729)
  store i8 %call28.i731, ptr %335, align 1
  %arrayidx30.i732 = getelementptr inbounds i8, ptr %335, i64 1
  %337 = load i8, ptr %arrayidx30.i732, align 1
  %338 = load i16, ptr %crG.i696, align 2
  %call31.i733 = call zeroext i8 @subAndClamp(i8 noundef zeroext %337, i16 noundef signext %338)
  %339 = load ptr, ptr %pDstG.i693, align 8
  %arrayidx32.i734 = getelementptr inbounds i8, ptr %339, i64 1
  store i8 %call31.i733, ptr %arrayidx32.i734, align 1
  %340 = load ptr, ptr %pDstR.i692, align 8
  %add.ptr33.i735 = getelementptr inbounds i8, ptr %340, i64 2
  store ptr %add.ptr33.i735, ptr %pDstR.i692, align 8
  %add.ptr34.i736 = getelementptr inbounds i8, ptr %339, i64 2
  store ptr %add.ptr34.i736, ptr %pDstG.i693, align 8
  %341 = load i8, ptr %x.i689, align 1
  %inc.i738 = add i8 %341, 1
  br label %for.cond9.i712, !llvm.loop !26

for.end.i741:                                     ; preds = %for.cond9.i712
  %342 = load ptr, ptr %pSrc.i691, align 8
  %add.ptr36.i740 = getelementptr inbounds i16, ptr %342, i64 4
  store ptr %add.ptr36.i740, ptr %pSrc.i691, align 8
  %343 = load i8, ptr %y.i690, align 1
  %inc38.i742 = add i8 %343, 1
  br label %for.cond.i708, !llvm.loop !27

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_88.exit: ; preds = %for.cond.i708
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %x.i689)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %y.i690)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pSrc.i691)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pDstR.i692)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pDstG.i693)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cr.i694)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %crR.i695)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %crG.i696)
  br label %sw.epilog28

sw.bb19:                                          ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_72.exit
  %344 = load i8, ptr %mcuBlock.addr, align 1
  switch i8 %344, label %sw.epilog28 [
    i8 0, label %sw.bb21
    i8 1, label %sw.bb22
    i8 2, label %sw.bb23
    i8 3, label %sw.bb24
    i8 4, label %sw.bb25
    i8 5, label %sw.bb26
  ]

sw.bb21:                                          ; preds = %sw.bb19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i.i744)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pRDst.i745)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pGDst.i746)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pBDst.i747)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pSrc.i748)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %c.i749)
  store ptr @gMCUBufR, ptr %pRDst.i745, align 8
  store ptr @gMCUBufG, ptr %pGDst.i746, align 8
  store ptr @gMCUBufB, ptr %pBDst.i747, align 8
  store ptr @gCoeffBuf, ptr %pSrc.i748, align 8
  br label %for.cond.i761

for.cond.i761:                                    ; preds = %for.body.i767, %sw.bb21
  %storemerge1431 = phi i8 [ 64, %sw.bb21 ], [ %dec.i768, %for.body.i767 ]
  store i8 %storemerge1431, ptr %i.i744, align 1
  %cmp.i760.not = icmp eq i8 %storemerge1431, 0
  br i1 %cmp.i760.not, label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_89.exit, label %for.body.i767

for.body.i767:                                    ; preds = %for.cond.i761
  %345 = load ptr, ptr %pSrc.i748, align 8
  %incdec.ptr.i762 = getelementptr inbounds i16, ptr %345, i64 1
  store ptr %incdec.ptr.i762, ptr %pSrc.i748, align 8
  %346 = load i16, ptr %345, align 2
  %conv9.i763 = trunc i16 %346 to i8
  store i8 %conv9.i763, ptr %c.i749, align 1
  %347 = load ptr, ptr %pRDst.i745, align 8
  %incdec.ptr10.i764 = getelementptr inbounds i8, ptr %347, i64 1
  store ptr %incdec.ptr10.i764, ptr %pRDst.i745, align 8
  store i8 %conv9.i763, ptr %347, align 1
  %348 = load ptr, ptr %pGDst.i746, align 8
  %incdec.ptr11.i765 = getelementptr inbounds i8, ptr %348, i64 1
  store ptr %incdec.ptr11.i765, ptr %pGDst.i746, align 8
  store i8 %conv9.i763, ptr %348, align 1
  %349 = load i8, ptr %c.i749, align 1
  %350 = load ptr, ptr %pBDst.i747, align 8
  %incdec.ptr12.i766 = getelementptr inbounds i8, ptr %350, i64 1
  store ptr %incdec.ptr12.i766, ptr %pBDst.i747, align 8
  store i8 %349, ptr %350, align 1
  %351 = load i8, ptr %i.i744, align 1
  %dec.i768 = add i8 %351, -1
  br label %for.cond.i761, !llvm.loop !17

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_89.exit: ; preds = %for.cond.i761
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i.i744)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pRDst.i745)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pGDst.i746)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pBDst.i747)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pSrc.i748)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %c.i749)
  br label %sw.epilog28

sw.bb22:                                          ; preds = %sw.bb19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i.i771)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pRDst.i772)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pGDst.i773)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pBDst.i774)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pSrc.i775)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %c.i776)
  store ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 64), ptr %pRDst.i772, align 8
  store ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 64), ptr %pGDst.i773, align 8
  store ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 64), ptr %pBDst.i774, align 8
  store ptr @gCoeffBuf, ptr %pSrc.i775, align 8
  br label %for.cond.i788

for.cond.i788:                                    ; preds = %for.body.i794, %sw.bb22
  %storemerge1430 = phi i8 [ 64, %sw.bb22 ], [ %dec.i795, %for.body.i794 ]
  store i8 %storemerge1430, ptr %i.i771, align 1
  %cmp.i787.not = icmp eq i8 %storemerge1430, 0
  br i1 %cmp.i787.not, label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_90.exit, label %for.body.i794

for.body.i794:                                    ; preds = %for.cond.i788
  %352 = load ptr, ptr %pSrc.i775, align 8
  %incdec.ptr.i789 = getelementptr inbounds i16, ptr %352, i64 1
  store ptr %incdec.ptr.i789, ptr %pSrc.i775, align 8
  %353 = load i16, ptr %352, align 2
  %conv9.i790 = trunc i16 %353 to i8
  store i8 %conv9.i790, ptr %c.i776, align 1
  %354 = load ptr, ptr %pRDst.i772, align 8
  %incdec.ptr10.i791 = getelementptr inbounds i8, ptr %354, i64 1
  store ptr %incdec.ptr10.i791, ptr %pRDst.i772, align 8
  store i8 %conv9.i790, ptr %354, align 1
  %355 = load ptr, ptr %pGDst.i773, align 8
  %incdec.ptr11.i792 = getelementptr inbounds i8, ptr %355, i64 1
  store ptr %incdec.ptr11.i792, ptr %pGDst.i773, align 8
  store i8 %conv9.i790, ptr %355, align 1
  %356 = load i8, ptr %c.i776, align 1
  %357 = load ptr, ptr %pBDst.i774, align 8
  %incdec.ptr12.i793 = getelementptr inbounds i8, ptr %357, i64 1
  store ptr %incdec.ptr12.i793, ptr %pBDst.i774, align 8
  store i8 %356, ptr %357, align 1
  %358 = load i8, ptr %i.i771, align 1
  %dec.i795 = add i8 %358, -1
  br label %for.cond.i788, !llvm.loop !17

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_90.exit: ; preds = %for.cond.i788
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i.i771)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pRDst.i772)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pGDst.i773)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pBDst.i774)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pSrc.i775)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %c.i776)
  br label %sw.epilog28

sw.bb23:                                          ; preds = %sw.bb19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i.i798)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pRDst.i799)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pGDst.i800)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pBDst.i801)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pSrc.i802)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %c.i803)
  store ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 128), ptr %pRDst.i799, align 8
  store ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 128), ptr %pGDst.i800, align 8
  store ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 128), ptr %pBDst.i801, align 8
  store ptr @gCoeffBuf, ptr %pSrc.i802, align 8
  br label %for.cond.i815

for.cond.i815:                                    ; preds = %for.body.i821, %sw.bb23
  %storemerge1429 = phi i8 [ 64, %sw.bb23 ], [ %dec.i822, %for.body.i821 ]
  store i8 %storemerge1429, ptr %i.i798, align 1
  %cmp.i814.not = icmp eq i8 %storemerge1429, 0
  br i1 %cmp.i814.not, label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_91.exit, label %for.body.i821

for.body.i821:                                    ; preds = %for.cond.i815
  %359 = load ptr, ptr %pSrc.i802, align 8
  %incdec.ptr.i816 = getelementptr inbounds i16, ptr %359, i64 1
  store ptr %incdec.ptr.i816, ptr %pSrc.i802, align 8
  %360 = load i16, ptr %359, align 2
  %conv9.i817 = trunc i16 %360 to i8
  store i8 %conv9.i817, ptr %c.i803, align 1
  %361 = load ptr, ptr %pRDst.i799, align 8
  %incdec.ptr10.i818 = getelementptr inbounds i8, ptr %361, i64 1
  store ptr %incdec.ptr10.i818, ptr %pRDst.i799, align 8
  store i8 %conv9.i817, ptr %361, align 1
  %362 = load ptr, ptr %pGDst.i800, align 8
  %incdec.ptr11.i819 = getelementptr inbounds i8, ptr %362, i64 1
  store ptr %incdec.ptr11.i819, ptr %pGDst.i800, align 8
  store i8 %conv9.i817, ptr %362, align 1
  %363 = load i8, ptr %c.i803, align 1
  %364 = load ptr, ptr %pBDst.i801, align 8
  %incdec.ptr12.i820 = getelementptr inbounds i8, ptr %364, i64 1
  store ptr %incdec.ptr12.i820, ptr %pBDst.i801, align 8
  store i8 %363, ptr %364, align 1
  %365 = load i8, ptr %i.i798, align 1
  %dec.i822 = add i8 %365, -1
  br label %for.cond.i815, !llvm.loop !17

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_91.exit: ; preds = %for.cond.i815
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i.i798)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pRDst.i799)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pGDst.i800)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pBDst.i801)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pSrc.i802)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %c.i803)
  br label %sw.epilog28

sw.bb24:                                          ; preds = %sw.bb19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i.i825)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pRDst.i826)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pGDst.i827)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pBDst.i828)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pSrc.i829)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %c.i830)
  store ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 192), ptr %pRDst.i826, align 8
  store ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 192), ptr %pGDst.i827, align 8
  store ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 192), ptr %pBDst.i828, align 8
  store ptr @gCoeffBuf, ptr %pSrc.i829, align 8
  br label %for.cond.i842

for.cond.i842:                                    ; preds = %for.body.i848, %sw.bb24
  %storemerge1428 = phi i8 [ 64, %sw.bb24 ], [ %dec.i849, %for.body.i848 ]
  store i8 %storemerge1428, ptr %i.i825, align 1
  %cmp.i841.not = icmp eq i8 %storemerge1428, 0
  br i1 %cmp.i841.not, label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_92.exit, label %for.body.i848

for.body.i848:                                    ; preds = %for.cond.i842
  %366 = load ptr, ptr %pSrc.i829, align 8
  %incdec.ptr.i843 = getelementptr inbounds i16, ptr %366, i64 1
  store ptr %incdec.ptr.i843, ptr %pSrc.i829, align 8
  %367 = load i16, ptr %366, align 2
  %conv9.i844 = trunc i16 %367 to i8
  store i8 %conv9.i844, ptr %c.i830, align 1
  %368 = load ptr, ptr %pRDst.i826, align 8
  %incdec.ptr10.i845 = getelementptr inbounds i8, ptr %368, i64 1
  store ptr %incdec.ptr10.i845, ptr %pRDst.i826, align 8
  store i8 %conv9.i844, ptr %368, align 1
  %369 = load ptr, ptr %pGDst.i827, align 8
  %incdec.ptr11.i846 = getelementptr inbounds i8, ptr %369, i64 1
  store ptr %incdec.ptr11.i846, ptr %pGDst.i827, align 8
  store i8 %conv9.i844, ptr %369, align 1
  %370 = load i8, ptr %c.i830, align 1
  %371 = load ptr, ptr %pBDst.i828, align 8
  %incdec.ptr12.i847 = getelementptr inbounds i8, ptr %371, i64 1
  store ptr %incdec.ptr12.i847, ptr %pBDst.i828, align 8
  store i8 %370, ptr %371, align 1
  %372 = load i8, ptr %i.i825, align 1
  %dec.i849 = add i8 %372, -1
  br label %for.cond.i842, !llvm.loop !17

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_92.exit: ; preds = %for.cond.i842
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i.i825)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pRDst.i826)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pGDst.i827)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pBDst.i828)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pSrc.i829)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %c.i830)
  br label %sw.epilog28

sw.bb25:                                          ; preds = %sw.bb19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %x.i853)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %y.i854)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pSrc.i855)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pDstG.i856)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pDstB.i857)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cb.i858)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cbG.i859)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cbB.i860)
  store ptr @gCoeffBuf, ptr %pSrc.i855, align 8
  store ptr @gMCUBufG, ptr %pDstG.i856, align 8
  store ptr @gMCUBufB, ptr %pDstB.i857, align 8
  br label %for.cond.i872

for.cond.i872:                                    ; preds = %for.end.i896, %sw.bb25
  %storemerge1416 = phi i8 [ 0, %sw.bb25 ], [ %inc54.i, %for.end.i896 ]
  store i8 %storemerge1416, ptr %y.i854, align 1
  %cmp.i871 = icmp ult i8 %storemerge1416, 4
  br i1 %cmp.i871, label %for.cond9.i876, label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_93.exit

for.cond9.i876:                                   ; preds = %for.cond.i872, %for.body13.i892
  %storemerge1426 = phi i8 [ %inc.i893, %for.body13.i892 ], [ 0, %for.cond.i872 ]
  store i8 %storemerge1426, ptr %x.i853, align 1
  %cmp11.i875 = icmp ult i8 %storemerge1426, 4
  br i1 %cmp11.i875, label %for.body13.i892, label %for.end.i896

for.body13.i892:                                  ; preds = %for.cond9.i876
  %373 = load ptr, ptr %pSrc.i855, align 8
  %incdec.ptr.i877 = getelementptr inbounds i16, ptr %373, i64 1
  store ptr %incdec.ptr.i877, ptr %pSrc.i855, align 8
  %374 = load i16, ptr %373, align 2
  %conv14.i878 = trunc i16 %374 to i8
  store i8 %conv14.i878, ptr %cb.i858, align 1
  %conv14.i878.mask = and i16 %374, 255
  %narrow1427 = mul nuw nsw i16 %conv14.i878.mask, 88
  %375 = lshr i16 %narrow1427, 8
  %sub.i882 = add nsw i16 %375, -44
  store i16 %sub.i882, ptr %cbG.i859, align 2
  %376 = load ptr, ptr %pDstG.i856, align 8
  %377 = load i8, ptr %376, align 1
  %call.i884 = call zeroext i8 @subAndClamp(i8 noundef zeroext %377, i16 noundef signext %sub.i882)
  store i8 %call.i884, ptr %376, align 1
  %arrayidx18.i885 = getelementptr inbounds i8, ptr %376, i64 1
  %378 = load i8, ptr %arrayidx18.i885, align 1
  %379 = load i16, ptr %cbG.i859, align 2
  %call19.i886 = call zeroext i8 @subAndClamp(i8 noundef zeroext %378, i16 noundef signext %379)
  %380 = load ptr, ptr %pDstG.i856, align 8
  %arrayidx20.i887 = getelementptr inbounds i8, ptr %380, i64 1
  store i8 %call19.i886, ptr %arrayidx20.i887, align 1
  %arrayidx21.i888 = getelementptr inbounds i8, ptr %380, i64 8
  %381 = load i8, ptr %arrayidx21.i888, align 1
  %382 = load i16, ptr %cbG.i859, align 2
  %call22.i = call zeroext i8 @subAndClamp(i8 noundef zeroext %381, i16 noundef signext %382)
  %383 = load ptr, ptr %pDstG.i856, align 8
  %arrayidx23.i = getelementptr inbounds i8, ptr %383, i64 8
  store i8 %call22.i, ptr %arrayidx23.i, align 1
  %arrayidx24.i = getelementptr inbounds i8, ptr %383, i64 9
  %384 = load i8, ptr %arrayidx24.i, align 1
  %385 = load i16, ptr %cbG.i859, align 2
  %call25.i = call zeroext i8 @subAndClamp(i8 noundef zeroext %384, i16 noundef signext %385)
  %386 = load ptr, ptr %pDstG.i856, align 8
  %arrayidx26.i = getelementptr inbounds i8, ptr %386, i64 9
  store i8 %call25.i, ptr %arrayidx26.i, align 1
  %387 = load i8, ptr %cb.i858, align 1
  %conv27.i = zext i8 %387 to i16
  %conv28.i889 = zext i8 %387 to i16
  %mul29.i = mul nuw i16 %conv28.i889, 198
  %shr30.i = lshr i16 %mul29.i, 8
  %add.i890 = add nuw nsw i16 %shr30.i, %conv27.i
  %sub31.i = add nsw i16 %add.i890, -227
  store i16 %sub31.i, ptr %cbB.i860, align 2
  %388 = load ptr, ptr %pDstB.i857, align 8
  %389 = load i8, ptr %388, align 1
  %call34.i = call zeroext i8 @addAndClamp(i8 noundef zeroext %389, i16 noundef signext %sub31.i)
  store i8 %call34.i, ptr %388, align 1
  %arrayidx36.i = getelementptr inbounds i8, ptr %388, i64 1
  %390 = load i8, ptr %arrayidx36.i, align 1
  %391 = load i16, ptr %cbB.i860, align 2
  %call37.i = call zeroext i8 @addAndClamp(i8 noundef zeroext %390, i16 noundef signext %391)
  %392 = load ptr, ptr %pDstB.i857, align 8
  %arrayidx38.i = getelementptr inbounds i8, ptr %392, i64 1
  store i8 %call37.i, ptr %arrayidx38.i, align 1
  %arrayidx39.i = getelementptr inbounds i8, ptr %392, i64 8
  %393 = load i8, ptr %arrayidx39.i, align 1
  %394 = load i16, ptr %cbB.i860, align 2
  %call40.i = call zeroext i8 @addAndClamp(i8 noundef zeroext %393, i16 noundef signext %394)
  %395 = load ptr, ptr %pDstB.i857, align 8
  %arrayidx41.i = getelementptr inbounds i8, ptr %395, i64 8
  store i8 %call40.i, ptr %arrayidx41.i, align 1
  %arrayidx42.i = getelementptr inbounds i8, ptr %395, i64 9
  %396 = load i8, ptr %arrayidx42.i, align 1
  %397 = load i16, ptr %cbB.i860, align 2
  %call43.i = call zeroext i8 @addAndClamp(i8 noundef zeroext %396, i16 noundef signext %397)
  %398 = load ptr, ptr %pDstB.i857, align 8
  %arrayidx44.i = getelementptr inbounds i8, ptr %398, i64 9
  store i8 %call43.i, ptr %arrayidx44.i, align 1
  %399 = load ptr, ptr %pDstG.i856, align 8
  %add.ptr45.i = getelementptr inbounds i8, ptr %399, i64 2
  store ptr %add.ptr45.i, ptr %pDstG.i856, align 8
  %add.ptr46.i = getelementptr inbounds i8, ptr %398, i64 2
  store ptr %add.ptr46.i, ptr %pDstB.i857, align 8
  %400 = load i8, ptr %x.i853, align 1
  %inc.i893 = add i8 %400, 1
  br label %for.cond9.i876, !llvm.loop !28

for.end.i896:                                     ; preds = %for.cond9.i876
  %401 = load ptr, ptr %pSrc.i855, align 8
  %add.ptr48.i = getelementptr inbounds i16, ptr %401, i64 4
  store ptr %add.ptr48.i, ptr %pSrc.i855, align 8
  %402 = load ptr, ptr %pDstG.i856, align 8
  %add.ptr50.i895 = getelementptr inbounds i8, ptr %402, i64 8
  store ptr %add.ptr50.i895, ptr %pDstG.i856, align 8
  %403 = load ptr, ptr %pDstB.i857, align 8
  %add.ptr52.i = getelementptr inbounds i8, ptr %403, i64 8
  store ptr %add.ptr52.i, ptr %pDstB.i857, align 8
  %404 = load i8, ptr %y.i854, align 1
  %inc54.i = add i8 %404, 1
  br label %for.cond.i872, !llvm.loop !29

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_93.exit: ; preds = %for.cond.i872
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %x.i853)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %y.i854)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pSrc.i855)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pDstG.i856)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pDstB.i857)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cb.i858)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cbG.i859)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cbB.i860)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %x.i899)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %y.i900)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pSrc.i901)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pDstG.i902)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pDstB.i903)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cb.i904)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cbG.i905)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cbB.i906)
  store ptr getelementptr inbounds ([64 x i16], ptr @gCoeffBuf, i64 0, i64 4), ptr %pSrc.i901, align 8
  store ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 64), ptr %pDstG.i902, align 8
  store ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 64), ptr %pDstB.i903, align 8
  br label %for.cond.i918

for.cond.i918:                                    ; preds = %for.end.i967, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_93.exit
  %storemerge1417 = phi i8 [ 0, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_93.exit ], [ %inc54.i968, %for.end.i967 ]
  store i8 %storemerge1417, ptr %y.i900, align 1
  %cmp.i917 = icmp ult i8 %storemerge1417, 4
  br i1 %cmp.i917, label %for.cond9.i922, label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_94.exit

for.cond9.i922:                                   ; preds = %for.cond.i918, %for.body13.i959
  %storemerge1424 = phi i8 [ %inc.i960, %for.body13.i959 ], [ 0, %for.cond.i918 ]
  store i8 %storemerge1424, ptr %x.i899, align 1
  %cmp11.i921 = icmp ult i8 %storemerge1424, 4
  br i1 %cmp11.i921, label %for.body13.i959, label %for.end.i967

for.body13.i959:                                  ; preds = %for.cond9.i922
  %405 = load ptr, ptr %pSrc.i901, align 8
  %incdec.ptr.i923 = getelementptr inbounds i16, ptr %405, i64 1
  store ptr %incdec.ptr.i923, ptr %pSrc.i901, align 8
  %406 = load i16, ptr %405, align 2
  %conv14.i924 = trunc i16 %406 to i8
  store i8 %conv14.i924, ptr %cb.i904, align 1
  %conv14.i924.mask = and i16 %406, 255
  %narrow1425 = mul nuw nsw i16 %conv14.i924.mask, 88
  %407 = lshr i16 %narrow1425, 8
  %sub.i928 = add nsw i16 %407, -44
  store i16 %sub.i928, ptr %cbG.i905, align 2
  %408 = load ptr, ptr %pDstG.i902, align 8
  %409 = load i8, ptr %408, align 1
  %call.i930 = call zeroext i8 @subAndClamp(i8 noundef zeroext %409, i16 noundef signext %sub.i928)
  store i8 %call.i930, ptr %408, align 1
  %arrayidx18.i931 = getelementptr inbounds i8, ptr %408, i64 1
  %410 = load i8, ptr %arrayidx18.i931, align 1
  %411 = load i16, ptr %cbG.i905, align 2
  %call19.i932 = call zeroext i8 @subAndClamp(i8 noundef zeroext %410, i16 noundef signext %411)
  %412 = load ptr, ptr %pDstG.i902, align 8
  %arrayidx20.i933 = getelementptr inbounds i8, ptr %412, i64 1
  store i8 %call19.i932, ptr %arrayidx20.i933, align 1
  %arrayidx21.i934 = getelementptr inbounds i8, ptr %412, i64 8
  %413 = load i8, ptr %arrayidx21.i934, align 1
  %414 = load i16, ptr %cbG.i905, align 2
  %call22.i935 = call zeroext i8 @subAndClamp(i8 noundef zeroext %413, i16 noundef signext %414)
  %415 = load ptr, ptr %pDstG.i902, align 8
  %arrayidx23.i936 = getelementptr inbounds i8, ptr %415, i64 8
  store i8 %call22.i935, ptr %arrayidx23.i936, align 1
  %arrayidx24.i937 = getelementptr inbounds i8, ptr %415, i64 9
  %416 = load i8, ptr %arrayidx24.i937, align 1
  %417 = load i16, ptr %cbG.i905, align 2
  %call25.i938 = call zeroext i8 @subAndClamp(i8 noundef zeroext %416, i16 noundef signext %417)
  %418 = load ptr, ptr %pDstG.i902, align 8
  %arrayidx26.i939 = getelementptr inbounds i8, ptr %418, i64 9
  store i8 %call25.i938, ptr %arrayidx26.i939, align 1
  %419 = load i8, ptr %cb.i904, align 1
  %conv27.i940 = zext i8 %419 to i16
  %conv28.i941 = zext i8 %419 to i16
  %mul29.i942 = mul nuw i16 %conv28.i941, 198
  %shr30.i943 = lshr i16 %mul29.i942, 8
  %add.i944 = add nuw nsw i16 %shr30.i943, %conv27.i940
  %sub31.i945 = add nsw i16 %add.i944, -227
  store i16 %sub31.i945, ptr %cbB.i906, align 2
  %420 = load ptr, ptr %pDstB.i903, align 8
  %421 = load i8, ptr %420, align 1
  %call34.i947 = call zeroext i8 @addAndClamp(i8 noundef zeroext %421, i16 noundef signext %sub31.i945)
  store i8 %call34.i947, ptr %420, align 1
  %arrayidx36.i948 = getelementptr inbounds i8, ptr %420, i64 1
  %422 = load i8, ptr %arrayidx36.i948, align 1
  %423 = load i16, ptr %cbB.i906, align 2
  %call37.i949 = call zeroext i8 @addAndClamp(i8 noundef zeroext %422, i16 noundef signext %423)
  %424 = load ptr, ptr %pDstB.i903, align 8
  %arrayidx38.i950 = getelementptr inbounds i8, ptr %424, i64 1
  store i8 %call37.i949, ptr %arrayidx38.i950, align 1
  %arrayidx39.i951 = getelementptr inbounds i8, ptr %424, i64 8
  %425 = load i8, ptr %arrayidx39.i951, align 1
  %426 = load i16, ptr %cbB.i906, align 2
  %call40.i952 = call zeroext i8 @addAndClamp(i8 noundef zeroext %425, i16 noundef signext %426)
  %427 = load ptr, ptr %pDstB.i903, align 8
  %arrayidx41.i953 = getelementptr inbounds i8, ptr %427, i64 8
  store i8 %call40.i952, ptr %arrayidx41.i953, align 1
  %arrayidx42.i954 = getelementptr inbounds i8, ptr %427, i64 9
  %428 = load i8, ptr %arrayidx42.i954, align 1
  %429 = load i16, ptr %cbB.i906, align 2
  %call43.i955 = call zeroext i8 @addAndClamp(i8 noundef zeroext %428, i16 noundef signext %429)
  %430 = load ptr, ptr %pDstB.i903, align 8
  %arrayidx44.i956 = getelementptr inbounds i8, ptr %430, i64 9
  store i8 %call43.i955, ptr %arrayidx44.i956, align 1
  %431 = load ptr, ptr %pDstG.i902, align 8
  %add.ptr45.i957 = getelementptr inbounds i8, ptr %431, i64 2
  store ptr %add.ptr45.i957, ptr %pDstG.i902, align 8
  %add.ptr46.i958 = getelementptr inbounds i8, ptr %430, i64 2
  store ptr %add.ptr46.i958, ptr %pDstB.i903, align 8
  %432 = load i8, ptr %x.i899, align 1
  %inc.i960 = add i8 %432, 1
  br label %for.cond9.i922, !llvm.loop !28

for.end.i967:                                     ; preds = %for.cond9.i922
  %433 = load ptr, ptr %pSrc.i901, align 8
  %add.ptr48.i962 = getelementptr inbounds i16, ptr %433, i64 4
  store ptr %add.ptr48.i962, ptr %pSrc.i901, align 8
  %434 = load ptr, ptr %pDstG.i902, align 8
  %add.ptr50.i964 = getelementptr inbounds i8, ptr %434, i64 8
  store ptr %add.ptr50.i964, ptr %pDstG.i902, align 8
  %435 = load ptr, ptr %pDstB.i903, align 8
  %add.ptr52.i966 = getelementptr inbounds i8, ptr %435, i64 8
  store ptr %add.ptr52.i966, ptr %pDstB.i903, align 8
  %436 = load i8, ptr %y.i900, align 1
  %inc54.i968 = add i8 %436, 1
  br label %for.cond.i918, !llvm.loop !29

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_94.exit: ; preds = %for.cond.i918
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %x.i899)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %y.i900)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pSrc.i901)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pDstG.i902)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pDstB.i903)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cb.i904)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cbG.i905)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cbB.i906)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %x.i971)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %y.i972)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pSrc.i973)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pDstG.i974)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pDstB.i975)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cb.i976)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cbG.i977)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cbB.i978)
  store ptr getelementptr inbounds ([64 x i16], ptr @gCoeffBuf, i64 0, i64 32), ptr %pSrc.i973, align 8
  store ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 128), ptr %pDstG.i974, align 8
  store ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 128), ptr %pDstB.i975, align 8
  br label %for.cond.i990

for.cond.i990:                                    ; preds = %for.end.i1039, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_94.exit
  %storemerge1418 = phi i8 [ 0, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_94.exit ], [ %inc54.i1040, %for.end.i1039 ]
  store i8 %storemerge1418, ptr %y.i972, align 1
  %cmp.i989 = icmp ult i8 %storemerge1418, 4
  br i1 %cmp.i989, label %for.cond9.i994, label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_95.exit

for.cond9.i994:                                   ; preds = %for.cond.i990, %for.body13.i1031
  %storemerge1422 = phi i8 [ %inc.i1032, %for.body13.i1031 ], [ 0, %for.cond.i990 ]
  store i8 %storemerge1422, ptr %x.i971, align 1
  %cmp11.i993 = icmp ult i8 %storemerge1422, 4
  br i1 %cmp11.i993, label %for.body13.i1031, label %for.end.i1039

for.body13.i1031:                                 ; preds = %for.cond9.i994
  %437 = load ptr, ptr %pSrc.i973, align 8
  %incdec.ptr.i995 = getelementptr inbounds i16, ptr %437, i64 1
  store ptr %incdec.ptr.i995, ptr %pSrc.i973, align 8
  %438 = load i16, ptr %437, align 2
  %conv14.i996 = trunc i16 %438 to i8
  store i8 %conv14.i996, ptr %cb.i976, align 1
  %conv14.i996.mask = and i16 %438, 255
  %narrow1423 = mul nuw nsw i16 %conv14.i996.mask, 88
  %439 = lshr i16 %narrow1423, 8
  %sub.i1000 = add nsw i16 %439, -44
  store i16 %sub.i1000, ptr %cbG.i977, align 2
  %440 = load ptr, ptr %pDstG.i974, align 8
  %441 = load i8, ptr %440, align 1
  %call.i1002 = call zeroext i8 @subAndClamp(i8 noundef zeroext %441, i16 noundef signext %sub.i1000)
  store i8 %call.i1002, ptr %440, align 1
  %arrayidx18.i1003 = getelementptr inbounds i8, ptr %440, i64 1
  %442 = load i8, ptr %arrayidx18.i1003, align 1
  %443 = load i16, ptr %cbG.i977, align 2
  %call19.i1004 = call zeroext i8 @subAndClamp(i8 noundef zeroext %442, i16 noundef signext %443)
  %444 = load ptr, ptr %pDstG.i974, align 8
  %arrayidx20.i1005 = getelementptr inbounds i8, ptr %444, i64 1
  store i8 %call19.i1004, ptr %arrayidx20.i1005, align 1
  %arrayidx21.i1006 = getelementptr inbounds i8, ptr %444, i64 8
  %445 = load i8, ptr %arrayidx21.i1006, align 1
  %446 = load i16, ptr %cbG.i977, align 2
  %call22.i1007 = call zeroext i8 @subAndClamp(i8 noundef zeroext %445, i16 noundef signext %446)
  %447 = load ptr, ptr %pDstG.i974, align 8
  %arrayidx23.i1008 = getelementptr inbounds i8, ptr %447, i64 8
  store i8 %call22.i1007, ptr %arrayidx23.i1008, align 1
  %arrayidx24.i1009 = getelementptr inbounds i8, ptr %447, i64 9
  %448 = load i8, ptr %arrayidx24.i1009, align 1
  %449 = load i16, ptr %cbG.i977, align 2
  %call25.i1010 = call zeroext i8 @subAndClamp(i8 noundef zeroext %448, i16 noundef signext %449)
  %450 = load ptr, ptr %pDstG.i974, align 8
  %arrayidx26.i1011 = getelementptr inbounds i8, ptr %450, i64 9
  store i8 %call25.i1010, ptr %arrayidx26.i1011, align 1
  %451 = load i8, ptr %cb.i976, align 1
  %conv27.i1012 = zext i8 %451 to i16
  %conv28.i1013 = zext i8 %451 to i16
  %mul29.i1014 = mul nuw i16 %conv28.i1013, 198
  %shr30.i1015 = lshr i16 %mul29.i1014, 8
  %add.i1016 = add nuw nsw i16 %shr30.i1015, %conv27.i1012
  %sub31.i1017 = add nsw i16 %add.i1016, -227
  store i16 %sub31.i1017, ptr %cbB.i978, align 2
  %452 = load ptr, ptr %pDstB.i975, align 8
  %453 = load i8, ptr %452, align 1
  %call34.i1019 = call zeroext i8 @addAndClamp(i8 noundef zeroext %453, i16 noundef signext %sub31.i1017)
  store i8 %call34.i1019, ptr %452, align 1
  %arrayidx36.i1020 = getelementptr inbounds i8, ptr %452, i64 1
  %454 = load i8, ptr %arrayidx36.i1020, align 1
  %455 = load i16, ptr %cbB.i978, align 2
  %call37.i1021 = call zeroext i8 @addAndClamp(i8 noundef zeroext %454, i16 noundef signext %455)
  %456 = load ptr, ptr %pDstB.i975, align 8
  %arrayidx38.i1022 = getelementptr inbounds i8, ptr %456, i64 1
  store i8 %call37.i1021, ptr %arrayidx38.i1022, align 1
  %arrayidx39.i1023 = getelementptr inbounds i8, ptr %456, i64 8
  %457 = load i8, ptr %arrayidx39.i1023, align 1
  %458 = load i16, ptr %cbB.i978, align 2
  %call40.i1024 = call zeroext i8 @addAndClamp(i8 noundef zeroext %457, i16 noundef signext %458)
  %459 = load ptr, ptr %pDstB.i975, align 8
  %arrayidx41.i1025 = getelementptr inbounds i8, ptr %459, i64 8
  store i8 %call40.i1024, ptr %arrayidx41.i1025, align 1
  %arrayidx42.i1026 = getelementptr inbounds i8, ptr %459, i64 9
  %460 = load i8, ptr %arrayidx42.i1026, align 1
  %461 = load i16, ptr %cbB.i978, align 2
  %call43.i1027 = call zeroext i8 @addAndClamp(i8 noundef zeroext %460, i16 noundef signext %461)
  %462 = load ptr, ptr %pDstB.i975, align 8
  %arrayidx44.i1028 = getelementptr inbounds i8, ptr %462, i64 9
  store i8 %call43.i1027, ptr %arrayidx44.i1028, align 1
  %463 = load ptr, ptr %pDstG.i974, align 8
  %add.ptr45.i1029 = getelementptr inbounds i8, ptr %463, i64 2
  store ptr %add.ptr45.i1029, ptr %pDstG.i974, align 8
  %add.ptr46.i1030 = getelementptr inbounds i8, ptr %462, i64 2
  store ptr %add.ptr46.i1030, ptr %pDstB.i975, align 8
  %464 = load i8, ptr %x.i971, align 1
  %inc.i1032 = add i8 %464, 1
  br label %for.cond9.i994, !llvm.loop !28

for.end.i1039:                                    ; preds = %for.cond9.i994
  %465 = load ptr, ptr %pSrc.i973, align 8
  %add.ptr48.i1034 = getelementptr inbounds i16, ptr %465, i64 4
  store ptr %add.ptr48.i1034, ptr %pSrc.i973, align 8
  %466 = load ptr, ptr %pDstG.i974, align 8
  %add.ptr50.i1036 = getelementptr inbounds i8, ptr %466, i64 8
  store ptr %add.ptr50.i1036, ptr %pDstG.i974, align 8
  %467 = load ptr, ptr %pDstB.i975, align 8
  %add.ptr52.i1038 = getelementptr inbounds i8, ptr %467, i64 8
  store ptr %add.ptr52.i1038, ptr %pDstB.i975, align 8
  %468 = load i8, ptr %y.i972, align 1
  %inc54.i1040 = add i8 %468, 1
  br label %for.cond.i990, !llvm.loop !29

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_95.exit: ; preds = %for.cond.i990
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %x.i971)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %y.i972)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pSrc.i973)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pDstG.i974)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pDstB.i975)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cb.i976)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cbG.i977)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cbB.i978)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %x.i1043)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %y.i1044)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pSrc.i1045)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pDstG.i1046)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pDstB.i1047)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cb.i1048)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cbG.i1049)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cbB.i1050)
  store ptr getelementptr inbounds ([64 x i16], ptr @gCoeffBuf, i64 0, i64 36), ptr %pSrc.i1045, align 8
  store ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 192), ptr %pDstG.i1046, align 8
  store ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 192), ptr %pDstB.i1047, align 8
  br label %for.cond.i1062

for.cond.i1062:                                   ; preds = %for.end.i1111, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_95.exit
  %storemerge1419 = phi i8 [ 0, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_95.exit ], [ %inc54.i1112, %for.end.i1111 ]
  store i8 %storemerge1419, ptr %y.i1044, align 1
  %cmp.i1061 = icmp ult i8 %storemerge1419, 4
  br i1 %cmp.i1061, label %for.cond9.i1066, label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_96.exit

for.cond9.i1066:                                  ; preds = %for.cond.i1062, %for.body13.i1103
  %storemerge1420 = phi i8 [ %inc.i1104, %for.body13.i1103 ], [ 0, %for.cond.i1062 ]
  store i8 %storemerge1420, ptr %x.i1043, align 1
  %cmp11.i1065 = icmp ult i8 %storemerge1420, 4
  br i1 %cmp11.i1065, label %for.body13.i1103, label %for.end.i1111

for.body13.i1103:                                 ; preds = %for.cond9.i1066
  %469 = load ptr, ptr %pSrc.i1045, align 8
  %incdec.ptr.i1067 = getelementptr inbounds i16, ptr %469, i64 1
  store ptr %incdec.ptr.i1067, ptr %pSrc.i1045, align 8
  %470 = load i16, ptr %469, align 2
  %conv14.i1068 = trunc i16 %470 to i8
  store i8 %conv14.i1068, ptr %cb.i1048, align 1
  %conv14.i1068.mask = and i16 %470, 255
  %narrow1421 = mul nuw nsw i16 %conv14.i1068.mask, 88
  %471 = lshr i16 %narrow1421, 8
  %sub.i1072 = add nsw i16 %471, -44
  store i16 %sub.i1072, ptr %cbG.i1049, align 2
  %472 = load ptr, ptr %pDstG.i1046, align 8
  %473 = load i8, ptr %472, align 1
  %call.i1074 = call zeroext i8 @subAndClamp(i8 noundef zeroext %473, i16 noundef signext %sub.i1072)
  store i8 %call.i1074, ptr %472, align 1
  %arrayidx18.i1075 = getelementptr inbounds i8, ptr %472, i64 1
  %474 = load i8, ptr %arrayidx18.i1075, align 1
  %475 = load i16, ptr %cbG.i1049, align 2
  %call19.i1076 = call zeroext i8 @subAndClamp(i8 noundef zeroext %474, i16 noundef signext %475)
  %476 = load ptr, ptr %pDstG.i1046, align 8
  %arrayidx20.i1077 = getelementptr inbounds i8, ptr %476, i64 1
  store i8 %call19.i1076, ptr %arrayidx20.i1077, align 1
  %arrayidx21.i1078 = getelementptr inbounds i8, ptr %476, i64 8
  %477 = load i8, ptr %arrayidx21.i1078, align 1
  %478 = load i16, ptr %cbG.i1049, align 2
  %call22.i1079 = call zeroext i8 @subAndClamp(i8 noundef zeroext %477, i16 noundef signext %478)
  %479 = load ptr, ptr %pDstG.i1046, align 8
  %arrayidx23.i1080 = getelementptr inbounds i8, ptr %479, i64 8
  store i8 %call22.i1079, ptr %arrayidx23.i1080, align 1
  %arrayidx24.i1081 = getelementptr inbounds i8, ptr %479, i64 9
  %480 = load i8, ptr %arrayidx24.i1081, align 1
  %481 = load i16, ptr %cbG.i1049, align 2
  %call25.i1082 = call zeroext i8 @subAndClamp(i8 noundef zeroext %480, i16 noundef signext %481)
  %482 = load ptr, ptr %pDstG.i1046, align 8
  %arrayidx26.i1083 = getelementptr inbounds i8, ptr %482, i64 9
  store i8 %call25.i1082, ptr %arrayidx26.i1083, align 1
  %483 = load i8, ptr %cb.i1048, align 1
  %conv27.i1084 = zext i8 %483 to i16
  %conv28.i1085 = zext i8 %483 to i16
  %mul29.i1086 = mul nuw i16 %conv28.i1085, 198
  %shr30.i1087 = lshr i16 %mul29.i1086, 8
  %add.i1088 = add nuw nsw i16 %shr30.i1087, %conv27.i1084
  %sub31.i1089 = add nsw i16 %add.i1088, -227
  store i16 %sub31.i1089, ptr %cbB.i1050, align 2
  %484 = load ptr, ptr %pDstB.i1047, align 8
  %485 = load i8, ptr %484, align 1
  %call34.i1091 = call zeroext i8 @addAndClamp(i8 noundef zeroext %485, i16 noundef signext %sub31.i1089)
  store i8 %call34.i1091, ptr %484, align 1
  %arrayidx36.i1092 = getelementptr inbounds i8, ptr %484, i64 1
  %486 = load i8, ptr %arrayidx36.i1092, align 1
  %487 = load i16, ptr %cbB.i1050, align 2
  %call37.i1093 = call zeroext i8 @addAndClamp(i8 noundef zeroext %486, i16 noundef signext %487)
  %488 = load ptr, ptr %pDstB.i1047, align 8
  %arrayidx38.i1094 = getelementptr inbounds i8, ptr %488, i64 1
  store i8 %call37.i1093, ptr %arrayidx38.i1094, align 1
  %arrayidx39.i1095 = getelementptr inbounds i8, ptr %488, i64 8
  %489 = load i8, ptr %arrayidx39.i1095, align 1
  %490 = load i16, ptr %cbB.i1050, align 2
  %call40.i1096 = call zeroext i8 @addAndClamp(i8 noundef zeroext %489, i16 noundef signext %490)
  %491 = load ptr, ptr %pDstB.i1047, align 8
  %arrayidx41.i1097 = getelementptr inbounds i8, ptr %491, i64 8
  store i8 %call40.i1096, ptr %arrayidx41.i1097, align 1
  %arrayidx42.i1098 = getelementptr inbounds i8, ptr %491, i64 9
  %492 = load i8, ptr %arrayidx42.i1098, align 1
  %493 = load i16, ptr %cbB.i1050, align 2
  %call43.i1099 = call zeroext i8 @addAndClamp(i8 noundef zeroext %492, i16 noundef signext %493)
  %494 = load ptr, ptr %pDstB.i1047, align 8
  %arrayidx44.i1100 = getelementptr inbounds i8, ptr %494, i64 9
  store i8 %call43.i1099, ptr %arrayidx44.i1100, align 1
  %495 = load ptr, ptr %pDstG.i1046, align 8
  %add.ptr45.i1101 = getelementptr inbounds i8, ptr %495, i64 2
  store ptr %add.ptr45.i1101, ptr %pDstG.i1046, align 8
  %add.ptr46.i1102 = getelementptr inbounds i8, ptr %494, i64 2
  store ptr %add.ptr46.i1102, ptr %pDstB.i1047, align 8
  %496 = load i8, ptr %x.i1043, align 1
  %inc.i1104 = add i8 %496, 1
  br label %for.cond9.i1066, !llvm.loop !28

for.end.i1111:                                    ; preds = %for.cond9.i1066
  %497 = load ptr, ptr %pSrc.i1045, align 8
  %add.ptr48.i1106 = getelementptr inbounds i16, ptr %497, i64 4
  store ptr %add.ptr48.i1106, ptr %pSrc.i1045, align 8
  %498 = load ptr, ptr %pDstG.i1046, align 8
  %add.ptr50.i1108 = getelementptr inbounds i8, ptr %498, i64 8
  store ptr %add.ptr50.i1108, ptr %pDstG.i1046, align 8
  %499 = load ptr, ptr %pDstB.i1047, align 8
  %add.ptr52.i1110 = getelementptr inbounds i8, ptr %499, i64 8
  store ptr %add.ptr52.i1110, ptr %pDstB.i1047, align 8
  %500 = load i8, ptr %y.i1044, align 1
  %inc54.i1112 = add i8 %500, 1
  br label %for.cond.i1062, !llvm.loop !29

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_96.exit: ; preds = %for.cond.i1062
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %x.i1043)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %y.i1044)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pSrc.i1045)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pDstG.i1046)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pDstB.i1047)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cb.i1048)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cbG.i1049)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cbB.i1050)
  br label %sw.epilog28

sw.bb26:                                          ; preds = %sw.bb19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %x.i1115)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %y.i1116)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pSrc.i1117)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pDstR.i1118)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pDstG.i1119)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cr.i1120)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %crR.i1121)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %crG.i1122)
  store ptr @gCoeffBuf, ptr %pSrc.i1117, align 8
  store ptr @gMCUBufR, ptr %pDstR.i1118, align 8
  store ptr @gMCUBufG, ptr %pDstG.i1119, align 8
  br label %for.cond.i1134

for.cond.i1134:                                   ; preds = %for.end.i1178, %sw.bb26
  %storemerge1397 = phi i8 [ 0, %sw.bb26 ], [ %inc54.i1179, %for.end.i1178 ]
  store i8 %storemerge1397, ptr %y.i1116, align 1
  %cmp.i1133 = icmp ult i8 %storemerge1397, 4
  br i1 %cmp.i1133, label %for.cond9.i1138, label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_97.exit

for.cond9.i1138:                                  ; preds = %for.cond.i1134, %for.body13.i1170
  %storemerge1412 = phi i8 [ %inc.i1171, %for.body13.i1170 ], [ 0, %for.cond.i1134 ]
  store i8 %storemerge1412, ptr %x.i1115, align 1
  %cmp11.i1137 = icmp ult i8 %storemerge1412, 4
  br i1 %cmp11.i1137, label %for.body13.i1170, label %for.end.i1178

for.body13.i1170:                                 ; preds = %for.cond9.i1138
  %501 = load ptr, ptr %pSrc.i1117, align 8
  %incdec.ptr.i1139 = getelementptr inbounds i16, ptr %501, i64 1
  store ptr %incdec.ptr.i1139, ptr %pSrc.i1117, align 8
  %502 = load i16, ptr %501, align 2
  %conv14.i1140 = trunc i16 %502 to i8
  store i8 %conv14.i1140, ptr %cr.i1120, align 1
  %conv14.i1140.mask = and i16 %502, 255
  %conv14.i1140.mask1413 = and i16 %502, 255
  %narrow1414 = mul nuw nsw i16 %conv14.i1140.mask1413, 103
  %503 = lshr i16 %narrow1414, 8
  %narrow1415 = add nuw nsw i16 %conv14.i1140.mask, %503
  %sub.i1146 = add nsw i16 %narrow1415, -179
  store i16 %sub.i1146, ptr %crR.i1121, align 2
  %504 = load ptr, ptr %pDstR.i1118, align 8
  %505 = load i8, ptr %504, align 1
  %call.i1148 = call zeroext i8 @addAndClamp(i8 noundef zeroext %505, i16 noundef signext %sub.i1146)
  store i8 %call.i1148, ptr %504, align 1
  %arrayidx19.i1149 = getelementptr inbounds i8, ptr %504, i64 1
  %506 = load i8, ptr %arrayidx19.i1149, align 1
  %507 = load i16, ptr %crR.i1121, align 2
  %call20.i1150 = call zeroext i8 @addAndClamp(i8 noundef zeroext %506, i16 noundef signext %507)
  %508 = load ptr, ptr %pDstR.i1118, align 8
  %arrayidx21.i1151 = getelementptr inbounds i8, ptr %508, i64 1
  store i8 %call20.i1150, ptr %arrayidx21.i1151, align 1
  %arrayidx22.i = getelementptr inbounds i8, ptr %508, i64 8
  %509 = load i8, ptr %arrayidx22.i, align 1
  %510 = load i16, ptr %crR.i1121, align 2
  %call23.i = call zeroext i8 @addAndClamp(i8 noundef zeroext %509, i16 noundef signext %510)
  %511 = load ptr, ptr %pDstR.i1118, align 8
  %arrayidx24.i1152 = getelementptr inbounds i8, ptr %511, i64 8
  store i8 %call23.i, ptr %arrayidx24.i1152, align 1
  %arrayidx25.i = getelementptr inbounds i8, ptr %511, i64 9
  %512 = load i8, ptr %arrayidx25.i, align 1
  %513 = load i16, ptr %crR.i1121, align 2
  %call26.i = call zeroext i8 @addAndClamp(i8 noundef zeroext %512, i16 noundef signext %513)
  %514 = load ptr, ptr %pDstR.i1118, align 8
  %arrayidx27.i = getelementptr inbounds i8, ptr %514, i64 9
  store i8 %call26.i, ptr %arrayidx27.i, align 1
  %515 = load i8, ptr %cr.i1120, align 1
  %conv28.i1153 = zext i8 %515 to i16
  %mul29.i1154 = mul nuw i16 %conv28.i1153, 183
  %shr30.i1155 = lshr i16 %mul29.i1154, 8
  %sub31.i1156 = add nsw i16 %shr30.i1155, -91
  store i16 %sub31.i1156, ptr %crG.i1122, align 2
  %516 = load ptr, ptr %pDstG.i1119, align 8
  %517 = load i8, ptr %516, align 1
  %call34.i1158 = call zeroext i8 @subAndClamp(i8 noundef zeroext %517, i16 noundef signext %sub31.i1156)
  store i8 %call34.i1158, ptr %516, align 1
  %arrayidx36.i1159 = getelementptr inbounds i8, ptr %516, i64 1
  %518 = load i8, ptr %arrayidx36.i1159, align 1
  %519 = load i16, ptr %crG.i1122, align 2
  %call37.i1160 = call zeroext i8 @subAndClamp(i8 noundef zeroext %518, i16 noundef signext %519)
  %520 = load ptr, ptr %pDstG.i1119, align 8
  %arrayidx38.i1161 = getelementptr inbounds i8, ptr %520, i64 1
  store i8 %call37.i1160, ptr %arrayidx38.i1161, align 1
  %arrayidx39.i1162 = getelementptr inbounds i8, ptr %520, i64 8
  %521 = load i8, ptr %arrayidx39.i1162, align 1
  %522 = load i16, ptr %crG.i1122, align 2
  %call40.i1163 = call zeroext i8 @subAndClamp(i8 noundef zeroext %521, i16 noundef signext %522)
  %523 = load ptr, ptr %pDstG.i1119, align 8
  %arrayidx41.i1164 = getelementptr inbounds i8, ptr %523, i64 8
  store i8 %call40.i1163, ptr %arrayidx41.i1164, align 1
  %arrayidx42.i1165 = getelementptr inbounds i8, ptr %523, i64 9
  %524 = load i8, ptr %arrayidx42.i1165, align 1
  %525 = load i16, ptr %crG.i1122, align 2
  %call43.i1166 = call zeroext i8 @subAndClamp(i8 noundef zeroext %524, i16 noundef signext %525)
  %526 = load ptr, ptr %pDstG.i1119, align 8
  %arrayidx44.i1167 = getelementptr inbounds i8, ptr %526, i64 9
  store i8 %call43.i1166, ptr %arrayidx44.i1167, align 1
  %527 = load ptr, ptr %pDstR.i1118, align 8
  %add.ptr45.i1168 = getelementptr inbounds i8, ptr %527, i64 2
  store ptr %add.ptr45.i1168, ptr %pDstR.i1118, align 8
  %add.ptr46.i1169 = getelementptr inbounds i8, ptr %526, i64 2
  store ptr %add.ptr46.i1169, ptr %pDstG.i1119, align 8
  %528 = load i8, ptr %x.i1115, align 1
  %inc.i1171 = add i8 %528, 1
  br label %for.cond9.i1138, !llvm.loop !30

for.end.i1178:                                    ; preds = %for.cond9.i1138
  %529 = load ptr, ptr %pSrc.i1117, align 8
  %add.ptr48.i1173 = getelementptr inbounds i16, ptr %529, i64 4
  store ptr %add.ptr48.i1173, ptr %pSrc.i1117, align 8
  %530 = load ptr, ptr %pDstR.i1118, align 8
  %add.ptr50.i1175 = getelementptr inbounds i8, ptr %530, i64 8
  store ptr %add.ptr50.i1175, ptr %pDstR.i1118, align 8
  %531 = load ptr, ptr %pDstG.i1119, align 8
  %add.ptr52.i1177 = getelementptr inbounds i8, ptr %531, i64 8
  store ptr %add.ptr52.i1177, ptr %pDstG.i1119, align 8
  %532 = load i8, ptr %y.i1116, align 1
  %inc54.i1179 = add i8 %532, 1
  br label %for.cond.i1134, !llvm.loop !31

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_97.exit: ; preds = %for.cond.i1134
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %x.i1115)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %y.i1116)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pSrc.i1117)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pDstR.i1118)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pDstG.i1119)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cr.i1120)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %crR.i1121)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %crG.i1122)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %x.i1182)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %y.i1183)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pSrc.i1184)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pDstR.i1185)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pDstG.i1186)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cr.i1187)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %crR.i1188)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %crG.i1189)
  store ptr getelementptr inbounds ([64 x i16], ptr @gCoeffBuf, i64 0, i64 4), ptr %pSrc.i1184, align 8
  store ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 64), ptr %pDstR.i1185, align 8
  store ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 64), ptr %pDstG.i1186, align 8
  br label %for.cond.i1201

for.cond.i1201:                                   ; preds = %for.end.i1250, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_97.exit
  %storemerge1398 = phi i8 [ 0, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_97.exit ], [ %inc54.i1251, %for.end.i1250 ]
  store i8 %storemerge1398, ptr %y.i1183, align 1
  %cmp.i1200 = icmp ult i8 %storemerge1398, 4
  br i1 %cmp.i1200, label %for.cond9.i1205, label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_98.exit

for.cond9.i1205:                                  ; preds = %for.cond.i1201, %for.body13.i1242
  %storemerge1408 = phi i8 [ %inc.i1243, %for.body13.i1242 ], [ 0, %for.cond.i1201 ]
  store i8 %storemerge1408, ptr %x.i1182, align 1
  %cmp11.i1204 = icmp ult i8 %storemerge1408, 4
  br i1 %cmp11.i1204, label %for.body13.i1242, label %for.end.i1250

for.body13.i1242:                                 ; preds = %for.cond9.i1205
  %533 = load ptr, ptr %pSrc.i1184, align 8
  %incdec.ptr.i1206 = getelementptr inbounds i16, ptr %533, i64 1
  store ptr %incdec.ptr.i1206, ptr %pSrc.i1184, align 8
  %534 = load i16, ptr %533, align 2
  %conv14.i1207 = trunc i16 %534 to i8
  store i8 %conv14.i1207, ptr %cr.i1187, align 1
  %conv14.i1207.mask = and i16 %534, 255
  %conv14.i1207.mask1409 = and i16 %534, 255
  %narrow1410 = mul nuw nsw i16 %conv14.i1207.mask1409, 103
  %535 = lshr i16 %narrow1410, 8
  %narrow1411 = add nuw nsw i16 %conv14.i1207.mask, %535
  %sub.i1213 = add nsw i16 %narrow1411, -179
  store i16 %sub.i1213, ptr %crR.i1188, align 2
  %536 = load ptr, ptr %pDstR.i1185, align 8
  %537 = load i8, ptr %536, align 1
  %call.i1215 = call zeroext i8 @addAndClamp(i8 noundef zeroext %537, i16 noundef signext %sub.i1213)
  store i8 %call.i1215, ptr %536, align 1
  %arrayidx19.i1216 = getelementptr inbounds i8, ptr %536, i64 1
  %538 = load i8, ptr %arrayidx19.i1216, align 1
  %539 = load i16, ptr %crR.i1188, align 2
  %call20.i1217 = call zeroext i8 @addAndClamp(i8 noundef zeroext %538, i16 noundef signext %539)
  %540 = load ptr, ptr %pDstR.i1185, align 8
  %arrayidx21.i1218 = getelementptr inbounds i8, ptr %540, i64 1
  store i8 %call20.i1217, ptr %arrayidx21.i1218, align 1
  %arrayidx22.i1219 = getelementptr inbounds i8, ptr %540, i64 8
  %541 = load i8, ptr %arrayidx22.i1219, align 1
  %542 = load i16, ptr %crR.i1188, align 2
  %call23.i1220 = call zeroext i8 @addAndClamp(i8 noundef zeroext %541, i16 noundef signext %542)
  %543 = load ptr, ptr %pDstR.i1185, align 8
  %arrayidx24.i1221 = getelementptr inbounds i8, ptr %543, i64 8
  store i8 %call23.i1220, ptr %arrayidx24.i1221, align 1
  %arrayidx25.i1222 = getelementptr inbounds i8, ptr %543, i64 9
  %544 = load i8, ptr %arrayidx25.i1222, align 1
  %545 = load i16, ptr %crR.i1188, align 2
  %call26.i1223 = call zeroext i8 @addAndClamp(i8 noundef zeroext %544, i16 noundef signext %545)
  %546 = load ptr, ptr %pDstR.i1185, align 8
  %arrayidx27.i1224 = getelementptr inbounds i8, ptr %546, i64 9
  store i8 %call26.i1223, ptr %arrayidx27.i1224, align 1
  %547 = load i8, ptr %cr.i1187, align 1
  %conv28.i1225 = zext i8 %547 to i16
  %mul29.i1226 = mul nuw i16 %conv28.i1225, 183
  %shr30.i1227 = lshr i16 %mul29.i1226, 8
  %sub31.i1228 = add nsw i16 %shr30.i1227, -91
  store i16 %sub31.i1228, ptr %crG.i1189, align 2
  %548 = load ptr, ptr %pDstG.i1186, align 8
  %549 = load i8, ptr %548, align 1
  %call34.i1230 = call zeroext i8 @subAndClamp(i8 noundef zeroext %549, i16 noundef signext %sub31.i1228)
  store i8 %call34.i1230, ptr %548, align 1
  %arrayidx36.i1231 = getelementptr inbounds i8, ptr %548, i64 1
  %550 = load i8, ptr %arrayidx36.i1231, align 1
  %551 = load i16, ptr %crG.i1189, align 2
  %call37.i1232 = call zeroext i8 @subAndClamp(i8 noundef zeroext %550, i16 noundef signext %551)
  %552 = load ptr, ptr %pDstG.i1186, align 8
  %arrayidx38.i1233 = getelementptr inbounds i8, ptr %552, i64 1
  store i8 %call37.i1232, ptr %arrayidx38.i1233, align 1
  %arrayidx39.i1234 = getelementptr inbounds i8, ptr %552, i64 8
  %553 = load i8, ptr %arrayidx39.i1234, align 1
  %554 = load i16, ptr %crG.i1189, align 2
  %call40.i1235 = call zeroext i8 @subAndClamp(i8 noundef zeroext %553, i16 noundef signext %554)
  %555 = load ptr, ptr %pDstG.i1186, align 8
  %arrayidx41.i1236 = getelementptr inbounds i8, ptr %555, i64 8
  store i8 %call40.i1235, ptr %arrayidx41.i1236, align 1
  %arrayidx42.i1237 = getelementptr inbounds i8, ptr %555, i64 9
  %556 = load i8, ptr %arrayidx42.i1237, align 1
  %557 = load i16, ptr %crG.i1189, align 2
  %call43.i1238 = call zeroext i8 @subAndClamp(i8 noundef zeroext %556, i16 noundef signext %557)
  %558 = load ptr, ptr %pDstG.i1186, align 8
  %arrayidx44.i1239 = getelementptr inbounds i8, ptr %558, i64 9
  store i8 %call43.i1238, ptr %arrayidx44.i1239, align 1
  %559 = load ptr, ptr %pDstR.i1185, align 8
  %add.ptr45.i1240 = getelementptr inbounds i8, ptr %559, i64 2
  store ptr %add.ptr45.i1240, ptr %pDstR.i1185, align 8
  %add.ptr46.i1241 = getelementptr inbounds i8, ptr %558, i64 2
  store ptr %add.ptr46.i1241, ptr %pDstG.i1186, align 8
  %560 = load i8, ptr %x.i1182, align 1
  %inc.i1243 = add i8 %560, 1
  br label %for.cond9.i1205, !llvm.loop !30

for.end.i1250:                                    ; preds = %for.cond9.i1205
  %561 = load ptr, ptr %pSrc.i1184, align 8
  %add.ptr48.i1245 = getelementptr inbounds i16, ptr %561, i64 4
  store ptr %add.ptr48.i1245, ptr %pSrc.i1184, align 8
  %562 = load ptr, ptr %pDstR.i1185, align 8
  %add.ptr50.i1247 = getelementptr inbounds i8, ptr %562, i64 8
  store ptr %add.ptr50.i1247, ptr %pDstR.i1185, align 8
  %563 = load ptr, ptr %pDstG.i1186, align 8
  %add.ptr52.i1249 = getelementptr inbounds i8, ptr %563, i64 8
  store ptr %add.ptr52.i1249, ptr %pDstG.i1186, align 8
  %564 = load i8, ptr %y.i1183, align 1
  %inc54.i1251 = add i8 %564, 1
  br label %for.cond.i1201, !llvm.loop !31

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_98.exit: ; preds = %for.cond.i1201
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %x.i1182)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %y.i1183)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pSrc.i1184)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pDstR.i1185)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pDstG.i1186)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cr.i1187)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %crR.i1188)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %crG.i1189)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %x.i1254)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %y.i1255)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pSrc.i1256)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pDstR.i1257)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pDstG.i1258)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cr.i1259)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %crR.i1260)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %crG.i1261)
  store ptr getelementptr inbounds ([64 x i16], ptr @gCoeffBuf, i64 0, i64 32), ptr %pSrc.i1256, align 8
  store ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 128), ptr %pDstR.i1257, align 8
  store ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 128), ptr %pDstG.i1258, align 8
  br label %for.cond.i1273

for.cond.i1273:                                   ; preds = %for.end.i1322, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_98.exit
  %storemerge1399 = phi i8 [ 0, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_98.exit ], [ %inc54.i1323, %for.end.i1322 ]
  store i8 %storemerge1399, ptr %y.i1255, align 1
  %cmp.i1272 = icmp ult i8 %storemerge1399, 4
  br i1 %cmp.i1272, label %for.cond9.i1277, label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_99.exit

for.cond9.i1277:                                  ; preds = %for.cond.i1273, %for.body13.i1314
  %storemerge1404 = phi i8 [ %inc.i1315, %for.body13.i1314 ], [ 0, %for.cond.i1273 ]
  store i8 %storemerge1404, ptr %x.i1254, align 1
  %cmp11.i1276 = icmp ult i8 %storemerge1404, 4
  br i1 %cmp11.i1276, label %for.body13.i1314, label %for.end.i1322

for.body13.i1314:                                 ; preds = %for.cond9.i1277
  %565 = load ptr, ptr %pSrc.i1256, align 8
  %incdec.ptr.i1278 = getelementptr inbounds i16, ptr %565, i64 1
  store ptr %incdec.ptr.i1278, ptr %pSrc.i1256, align 8
  %566 = load i16, ptr %565, align 2
  %conv14.i1279 = trunc i16 %566 to i8
  store i8 %conv14.i1279, ptr %cr.i1259, align 1
  %conv14.i1279.mask = and i16 %566, 255
  %conv14.i1279.mask1405 = and i16 %566, 255
  %narrow1406 = mul nuw nsw i16 %conv14.i1279.mask1405, 103
  %567 = lshr i16 %narrow1406, 8
  %narrow1407 = add nuw nsw i16 %conv14.i1279.mask, %567
  %sub.i1285 = add nsw i16 %narrow1407, -179
  store i16 %sub.i1285, ptr %crR.i1260, align 2
  %568 = load ptr, ptr %pDstR.i1257, align 8
  %569 = load i8, ptr %568, align 1
  %call.i1287 = call zeroext i8 @addAndClamp(i8 noundef zeroext %569, i16 noundef signext %sub.i1285)
  store i8 %call.i1287, ptr %568, align 1
  %arrayidx19.i1288 = getelementptr inbounds i8, ptr %568, i64 1
  %570 = load i8, ptr %arrayidx19.i1288, align 1
  %571 = load i16, ptr %crR.i1260, align 2
  %call20.i1289 = call zeroext i8 @addAndClamp(i8 noundef zeroext %570, i16 noundef signext %571)
  %572 = load ptr, ptr %pDstR.i1257, align 8
  %arrayidx21.i1290 = getelementptr inbounds i8, ptr %572, i64 1
  store i8 %call20.i1289, ptr %arrayidx21.i1290, align 1
  %arrayidx22.i1291 = getelementptr inbounds i8, ptr %572, i64 8
  %573 = load i8, ptr %arrayidx22.i1291, align 1
  %574 = load i16, ptr %crR.i1260, align 2
  %call23.i1292 = call zeroext i8 @addAndClamp(i8 noundef zeroext %573, i16 noundef signext %574)
  %575 = load ptr, ptr %pDstR.i1257, align 8
  %arrayidx24.i1293 = getelementptr inbounds i8, ptr %575, i64 8
  store i8 %call23.i1292, ptr %arrayidx24.i1293, align 1
  %arrayidx25.i1294 = getelementptr inbounds i8, ptr %575, i64 9
  %576 = load i8, ptr %arrayidx25.i1294, align 1
  %577 = load i16, ptr %crR.i1260, align 2
  %call26.i1295 = call zeroext i8 @addAndClamp(i8 noundef zeroext %576, i16 noundef signext %577)
  %578 = load ptr, ptr %pDstR.i1257, align 8
  %arrayidx27.i1296 = getelementptr inbounds i8, ptr %578, i64 9
  store i8 %call26.i1295, ptr %arrayidx27.i1296, align 1
  %579 = load i8, ptr %cr.i1259, align 1
  %conv28.i1297 = zext i8 %579 to i16
  %mul29.i1298 = mul nuw i16 %conv28.i1297, 183
  %shr30.i1299 = lshr i16 %mul29.i1298, 8
  %sub31.i1300 = add nsw i16 %shr30.i1299, -91
  store i16 %sub31.i1300, ptr %crG.i1261, align 2
  %580 = load ptr, ptr %pDstG.i1258, align 8
  %581 = load i8, ptr %580, align 1
  %call34.i1302 = call zeroext i8 @subAndClamp(i8 noundef zeroext %581, i16 noundef signext %sub31.i1300)
  store i8 %call34.i1302, ptr %580, align 1
  %arrayidx36.i1303 = getelementptr inbounds i8, ptr %580, i64 1
  %582 = load i8, ptr %arrayidx36.i1303, align 1
  %583 = load i16, ptr %crG.i1261, align 2
  %call37.i1304 = call zeroext i8 @subAndClamp(i8 noundef zeroext %582, i16 noundef signext %583)
  %584 = load ptr, ptr %pDstG.i1258, align 8
  %arrayidx38.i1305 = getelementptr inbounds i8, ptr %584, i64 1
  store i8 %call37.i1304, ptr %arrayidx38.i1305, align 1
  %arrayidx39.i1306 = getelementptr inbounds i8, ptr %584, i64 8
  %585 = load i8, ptr %arrayidx39.i1306, align 1
  %586 = load i16, ptr %crG.i1261, align 2
  %call40.i1307 = call zeroext i8 @subAndClamp(i8 noundef zeroext %585, i16 noundef signext %586)
  %587 = load ptr, ptr %pDstG.i1258, align 8
  %arrayidx41.i1308 = getelementptr inbounds i8, ptr %587, i64 8
  store i8 %call40.i1307, ptr %arrayidx41.i1308, align 1
  %arrayidx42.i1309 = getelementptr inbounds i8, ptr %587, i64 9
  %588 = load i8, ptr %arrayidx42.i1309, align 1
  %589 = load i16, ptr %crG.i1261, align 2
  %call43.i1310 = call zeroext i8 @subAndClamp(i8 noundef zeroext %588, i16 noundef signext %589)
  %590 = load ptr, ptr %pDstG.i1258, align 8
  %arrayidx44.i1311 = getelementptr inbounds i8, ptr %590, i64 9
  store i8 %call43.i1310, ptr %arrayidx44.i1311, align 1
  %591 = load ptr, ptr %pDstR.i1257, align 8
  %add.ptr45.i1312 = getelementptr inbounds i8, ptr %591, i64 2
  store ptr %add.ptr45.i1312, ptr %pDstR.i1257, align 8
  %add.ptr46.i1313 = getelementptr inbounds i8, ptr %590, i64 2
  store ptr %add.ptr46.i1313, ptr %pDstG.i1258, align 8
  %592 = load i8, ptr %x.i1254, align 1
  %inc.i1315 = add i8 %592, 1
  br label %for.cond9.i1277, !llvm.loop !30

for.end.i1322:                                    ; preds = %for.cond9.i1277
  %593 = load ptr, ptr %pSrc.i1256, align 8
  %add.ptr48.i1317 = getelementptr inbounds i16, ptr %593, i64 4
  store ptr %add.ptr48.i1317, ptr %pSrc.i1256, align 8
  %594 = load ptr, ptr %pDstR.i1257, align 8
  %add.ptr50.i1319 = getelementptr inbounds i8, ptr %594, i64 8
  store ptr %add.ptr50.i1319, ptr %pDstR.i1257, align 8
  %595 = load ptr, ptr %pDstG.i1258, align 8
  %add.ptr52.i1321 = getelementptr inbounds i8, ptr %595, i64 8
  store ptr %add.ptr52.i1321, ptr %pDstG.i1258, align 8
  %596 = load i8, ptr %y.i1255, align 1
  %inc54.i1323 = add i8 %596, 1
  br label %for.cond.i1273, !llvm.loop !31

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_99.exit: ; preds = %for.cond.i1273
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %x.i1254)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %y.i1255)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pSrc.i1256)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pDstR.i1257)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pDstG.i1258)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cr.i1259)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %crR.i1260)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %crG.i1261)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %x.i1326)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %y.i1327)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pSrc.i1328)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pDstR.i1329)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pDstG.i1330)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cr.i1331)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %crR.i1332)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %crG.i1333)
  store ptr getelementptr inbounds ([64 x i16], ptr @gCoeffBuf, i64 0, i64 36), ptr %pSrc.i1328, align 8
  store ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 192), ptr %pDstR.i1329, align 8
  store ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 192), ptr %pDstG.i1330, align 8
  br label %for.cond.i1345

for.cond.i1345:                                   ; preds = %for.end.i1394, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_99.exit
  %storemerge1400 = phi i8 [ 0, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_99.exit ], [ %inc54.i1395, %for.end.i1394 ]
  store i8 %storemerge1400, ptr %y.i1327, align 1
  %cmp.i1344 = icmp ult i8 %storemerge1400, 4
  br i1 %cmp.i1344, label %for.cond9.i1349, label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_100.exit

for.cond9.i1349:                                  ; preds = %for.cond.i1345, %for.body13.i1386
  %storemerge1401 = phi i8 [ %inc.i1387, %for.body13.i1386 ], [ 0, %for.cond.i1345 ]
  store i8 %storemerge1401, ptr %x.i1326, align 1
  %cmp11.i1348 = icmp ult i8 %storemerge1401, 4
  br i1 %cmp11.i1348, label %for.body13.i1386, label %for.end.i1394

for.body13.i1386:                                 ; preds = %for.cond9.i1349
  %597 = load ptr, ptr %pSrc.i1328, align 8
  %incdec.ptr.i1350 = getelementptr inbounds i16, ptr %597, i64 1
  store ptr %incdec.ptr.i1350, ptr %pSrc.i1328, align 8
  %598 = load i16, ptr %597, align 2
  %conv14.i1351 = trunc i16 %598 to i8
  store i8 %conv14.i1351, ptr %cr.i1331, align 1
  %conv14.i1351.mask = and i16 %598, 255
  %conv14.i1351.mask1402 = and i16 %598, 255
  %narrow = mul nuw nsw i16 %conv14.i1351.mask1402, 103
  %599 = lshr i16 %narrow, 8
  %narrow1403 = add nuw nsw i16 %conv14.i1351.mask, %599
  %sub.i1357 = add nsw i16 %narrow1403, -179
  store i16 %sub.i1357, ptr %crR.i1332, align 2
  %600 = load ptr, ptr %pDstR.i1329, align 8
  %601 = load i8, ptr %600, align 1
  %call.i1359 = call zeroext i8 @addAndClamp(i8 noundef zeroext %601, i16 noundef signext %sub.i1357)
  store i8 %call.i1359, ptr %600, align 1
  %arrayidx19.i1360 = getelementptr inbounds i8, ptr %600, i64 1
  %602 = load i8, ptr %arrayidx19.i1360, align 1
  %603 = load i16, ptr %crR.i1332, align 2
  %call20.i1361 = call zeroext i8 @addAndClamp(i8 noundef zeroext %602, i16 noundef signext %603)
  %604 = load ptr, ptr %pDstR.i1329, align 8
  %arrayidx21.i1362 = getelementptr inbounds i8, ptr %604, i64 1
  store i8 %call20.i1361, ptr %arrayidx21.i1362, align 1
  %arrayidx22.i1363 = getelementptr inbounds i8, ptr %604, i64 8
  %605 = load i8, ptr %arrayidx22.i1363, align 1
  %606 = load i16, ptr %crR.i1332, align 2
  %call23.i1364 = call zeroext i8 @addAndClamp(i8 noundef zeroext %605, i16 noundef signext %606)
  %607 = load ptr, ptr %pDstR.i1329, align 8
  %arrayidx24.i1365 = getelementptr inbounds i8, ptr %607, i64 8
  store i8 %call23.i1364, ptr %arrayidx24.i1365, align 1
  %arrayidx25.i1366 = getelementptr inbounds i8, ptr %607, i64 9
  %608 = load i8, ptr %arrayidx25.i1366, align 1
  %609 = load i16, ptr %crR.i1332, align 2
  %call26.i1367 = call zeroext i8 @addAndClamp(i8 noundef zeroext %608, i16 noundef signext %609)
  %610 = load ptr, ptr %pDstR.i1329, align 8
  %arrayidx27.i1368 = getelementptr inbounds i8, ptr %610, i64 9
  store i8 %call26.i1367, ptr %arrayidx27.i1368, align 1
  %611 = load i8, ptr %cr.i1331, align 1
  %conv28.i1369 = zext i8 %611 to i16
  %mul29.i1370 = mul nuw i16 %conv28.i1369, 183
  %shr30.i1371 = lshr i16 %mul29.i1370, 8
  %sub31.i1372 = add nsw i16 %shr30.i1371, -91
  store i16 %sub31.i1372, ptr %crG.i1333, align 2
  %612 = load ptr, ptr %pDstG.i1330, align 8
  %613 = load i8, ptr %612, align 1
  %call34.i1374 = call zeroext i8 @subAndClamp(i8 noundef zeroext %613, i16 noundef signext %sub31.i1372)
  store i8 %call34.i1374, ptr %612, align 1
  %arrayidx36.i1375 = getelementptr inbounds i8, ptr %612, i64 1
  %614 = load i8, ptr %arrayidx36.i1375, align 1
  %615 = load i16, ptr %crG.i1333, align 2
  %call37.i1376 = call zeroext i8 @subAndClamp(i8 noundef zeroext %614, i16 noundef signext %615)
  %616 = load ptr, ptr %pDstG.i1330, align 8
  %arrayidx38.i1377 = getelementptr inbounds i8, ptr %616, i64 1
  store i8 %call37.i1376, ptr %arrayidx38.i1377, align 1
  %arrayidx39.i1378 = getelementptr inbounds i8, ptr %616, i64 8
  %617 = load i8, ptr %arrayidx39.i1378, align 1
  %618 = load i16, ptr %crG.i1333, align 2
  %call40.i1379 = call zeroext i8 @subAndClamp(i8 noundef zeroext %617, i16 noundef signext %618)
  %619 = load ptr, ptr %pDstG.i1330, align 8
  %arrayidx41.i1380 = getelementptr inbounds i8, ptr %619, i64 8
  store i8 %call40.i1379, ptr %arrayidx41.i1380, align 1
  %arrayidx42.i1381 = getelementptr inbounds i8, ptr %619, i64 9
  %620 = load i8, ptr %arrayidx42.i1381, align 1
  %621 = load i16, ptr %crG.i1333, align 2
  %call43.i1382 = call zeroext i8 @subAndClamp(i8 noundef zeroext %620, i16 noundef signext %621)
  %622 = load ptr, ptr %pDstG.i1330, align 8
  %arrayidx44.i1383 = getelementptr inbounds i8, ptr %622, i64 9
  store i8 %call43.i1382, ptr %arrayidx44.i1383, align 1
  %623 = load ptr, ptr %pDstR.i1329, align 8
  %add.ptr45.i1384 = getelementptr inbounds i8, ptr %623, i64 2
  store ptr %add.ptr45.i1384, ptr %pDstR.i1329, align 8
  %add.ptr46.i1385 = getelementptr inbounds i8, ptr %622, i64 2
  store ptr %add.ptr46.i1385, ptr %pDstG.i1330, align 8
  %624 = load i8, ptr %x.i1326, align 1
  %inc.i1387 = add i8 %624, 1
  br label %for.cond9.i1349, !llvm.loop !30

for.end.i1394:                                    ; preds = %for.cond9.i1349
  %625 = load ptr, ptr %pSrc.i1328, align 8
  %add.ptr48.i1389 = getelementptr inbounds i16, ptr %625, i64 4
  store ptr %add.ptr48.i1389, ptr %pSrc.i1328, align 8
  %626 = load ptr, ptr %pDstR.i1329, align 8
  %add.ptr50.i1391 = getelementptr inbounds i8, ptr %626, i64 8
  store ptr %add.ptr50.i1391, ptr %pDstR.i1329, align 8
  %627 = load ptr, ptr %pDstG.i1330, align 8
  %add.ptr52.i1393 = getelementptr inbounds i8, ptr %627, i64 8
  store ptr %add.ptr52.i1393, ptr %pDstG.i1330, align 8
  %628 = load i8, ptr %y.i1327, align 1
  %inc54.i1395 = add i8 %628, 1
  br label %for.cond.i1345, !llvm.loop !31

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_100.exit: ; preds = %for.cond.i1345
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %x.i1326)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %y.i1327)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pSrc.i1328)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pDstR.i1329)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pDstG.i1330)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cr.i1331)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %crR.i1332)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %crG.i1333)
  br label %sw.epilog28

sw.epilog28:                                      ; preds = %sw.bb19, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_89.exit, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_90.exit, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_91.exit, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_92.exit, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_96.exit, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_100.exit, %sw.bb12, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_83.exit, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_84.exit, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_86.exit, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_88.exit, %sw.bb5, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_77.exit, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_78.exit, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_80.exit, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_82.exit, %sw.bb1, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_74.exit, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_75.exit, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_76.exit, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_73.exit, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_72.exit
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
  br i1 %tobool.i.not, label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_101.exit, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %3 = load i8, ptr %status.i, align 1
  store i8 %3, ptr @gCallbackStatus, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_101.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_101.exit: ; preds = %if.then, %if.then.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i)
  %4 = load i8, ptr @gInBufLeft, align 1
  %tobool1.not = icmp eq i8 %4, 0
  br i1 %tobool1.not, label %if.then2, label %if.end7

if.then2:                                         ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_101.exit
  %5 = load i8, ptr @gTemFlag, align 1
  %neg = xor i8 %5, -1
  store i8 %neg, ptr @gTemFlag, align 1
  %tobool5.not = icmp eq i8 %5, -1
  %conv6 = select i1 %tobool5.not, i8 -39, i8 -1
  br label %return

if.end7:                                          ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_101.exit, %entry
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
define internal void @fillInBuf() #0 {
entry:
  %status = alloca i8, align 1
  store i8 4, ptr @gInBufOfs, align 1
  store i8 0, ptr @gInBufLeft, align 1
  %0 = load ptr, ptr @g_pNeedBytesCallback, align 8
  %1 = load ptr, ptr @g_pCallback_data, align 8
  %call = call zeroext i8 %0(ptr noundef getelementptr inbounds ([256 x i8], ptr @gInBuf, i64 0, i64 4), i8 noundef zeroext -4, ptr noundef nonnull @gInBufLeft, ptr noundef %1) #2
  store i8 %call, ptr %status, align 1
  %tobool.not = icmp eq i8 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i8, ptr %status, align 1
  store i8 %2, ptr @gCallbackStatus, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @getOctet(i8 noundef zeroext %FFCheck) #0 {
entry:
  %FFCheck.addr = alloca i8, align 1
  %c = alloca i8, align 1
  %n = alloca i8, align 1
  store i8 %FFCheck, ptr %FFCheck.addr, align 1
  %0 = load i8, ptr @gInBufLeft, align 1
  %tobool.i.not = icmp eq i8 %0, 0
  br i1 %tobool.i.not, label %if.then.i, label %if.end7.i

if.then.i:                                        ; preds = %entry
  call void @fillInBuf()
  %1 = load i8, ptr @gInBufLeft, align 1
  %tobool1.i.not = icmp eq i8 %1, 0
  br i1 %tobool1.i.not, label %if.then2.i, label %if.end7.i

if.then2.i:                                       ; preds = %if.then.i
  %2 = load i8, ptr @gTemFlag, align 1
  %neg.i = xor i8 %2, -1
  store i8 %neg.i, ptr @gTemFlag, align 1
  %tobool5.i.not = icmp eq i8 %2, -1
  %conv6.i = select i1 %tobool5.i.not, i8 -39, i8 -1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_103.exit

if.end7.i:                                        ; preds = %if.then.i, %entry
  %3 = load i8, ptr @gInBufLeft, align 1
  %dec.i = add i8 %3, -1
  store i8 %dec.i, ptr @gInBufLeft, align 1
  %4 = load i8, ptr @gInBufOfs, align 1
  %inc.i = add i8 %4, 1
  store i8 %inc.i, ptr @gInBufOfs, align 1
  %idxprom.i = zext i8 %4 to i64
  %arrayidx.i = getelementptr inbounds [256 x i8], ptr @gInBuf, i64 0, i64 %idxprom.i
  %5 = load i8, ptr %arrayidx.i, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_103.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_103.exit: ; preds = %if.then2.i, %if.end7.i
  %storemerge = phi i8 [ %conv6.i, %if.then2.i ], [ %5, %if.end7.i ]
  store i8 %storemerge, ptr %c, align 1
  %6 = load i8, ptr %FFCheck.addr, align 1
  %tobool.not = icmp ne i8 %6, 0
  %7 = load i8, ptr %c, align 1
  %cmp = icmp eq i8 %7, -1
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then, label %if.end6

if.then:                                          ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_103.exit
  %8 = load i8, ptr @gInBufLeft, align 1
  %tobool.i2.not = icmp eq i8 %8, 0
  br i1 %tobool.i2.not, label %if.then.i4, label %if.end7.i18

if.then.i4:                                       ; preds = %if.then
  call void @fillInBuf()
  %9 = load i8, ptr @gInBufLeft, align 1
  %tobool1.i3.not = icmp eq i8 %9, 0
  br i1 %tobool1.i3.not, label %if.then2.i12, label %if.end7.i18

if.then2.i12:                                     ; preds = %if.then.i4
  %10 = load i8, ptr @gTemFlag, align 1
  %neg.i6 = xor i8 %10, -1
  store i8 %neg.i6, ptr @gTemFlag, align 1
  %tobool5.i9.not = icmp eq i8 %10, -1
  %conv6.i11 = select i1 %tobool5.i9.not, i8 -39, i8 -1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_104.exit

if.end7.i18:                                      ; preds = %if.then.i4, %if.then
  %11 = load i8, ptr @gInBufLeft, align 1
  %dec.i14 = add i8 %11, -1
  store i8 %dec.i14, ptr @gInBufLeft, align 1
  %12 = load i8, ptr @gInBufOfs, align 1
  %inc.i15 = add i8 %12, 1
  store i8 %inc.i15, ptr @gInBufOfs, align 1
  %idxprom.i16 = zext i8 %12 to i64
  %arrayidx.i17 = getelementptr inbounds [256 x i8], ptr @gInBuf, i64 0, i64 %idxprom.i16
  %13 = load i8, ptr %arrayidx.i17, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_104.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_104.exit: ; preds = %if.then2.i12, %if.end7.i18
  %storemerge28 = phi i8 [ %conv6.i11, %if.then2.i12 ], [ %13, %if.end7.i18 ]
  store i8 %storemerge28, ptr %n, align 1
  %tobool4.not = icmp eq i8 %storemerge28, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_104.exit
  %14 = load i8, ptr %n, align 1
  %15 = load i8, ptr @gInBufOfs, align 1
  %dec.i19 = add i8 %15, -1
  store i8 %dec.i19, ptr @gInBufOfs, align 1
  %idxprom.i20 = zext i8 %dec.i19 to i64
  %arrayidx.i21 = getelementptr inbounds [256 x i8], ptr @gInBuf, i64 0, i64 %idxprom.i20
  store i8 %14, ptr %arrayidx.i21, align 1
  %16 = load i8, ptr @gInBufLeft, align 1
  %inc.i22 = add i8 %16, 1
  store i8 %inc.i22, ptr @gInBufLeft, align 1
  %17 = load i8, ptr @gInBufOfs, align 1
  %dec.i24 = add i8 %17, -1
  store i8 %dec.i24, ptr @gInBufOfs, align 1
  %idxprom.i25 = zext i8 %dec.i24 to i64
  %arrayidx.i26 = getelementptr inbounds [256 x i8], ptr @gInBuf, i64 0, i64 %idxprom.i25
  store i8 -1, ptr %arrayidx.i26, align 1
  %18 = load i8, ptr @gInBufLeft, align 1
  %inc.i27 = add i8 %18, 1
  store i8 %inc.i27, ptr @gInBufLeft, align 1
  br label %if.end6

if.end6:                                          ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_104.exit, %if.then5, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_103.exit
  %19 = load i8, ptr %c, align 1
  ret i8 %19
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
  %c.i2 = alloca i8, align 1
  %n.i3 = alloca i8, align 1
  %c.i = alloca i8, align 1
  %n.i = alloca i8, align 1
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %c.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %n.i)
  %call.i = call zeroext i8 @getChar()
  store i8 %call.i, ptr %c.i, align 1
  %tobool.i.not = icmp ne i8 %4, 0
  %5 = load i8, ptr %c.i, align 1
  %cmp.i = icmp eq i8 %5, -1
  %or.cond = select i1 %tobool.i.not, i1 %cmp.i, i1 false
  br i1 %or.cond, label %if.then.i, label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_107.exit

if.then.i:                                        ; preds = %if.then
  %call3.i = call zeroext i8 @getChar()
  store i8 %call3.i, ptr %n.i, align 1
  %tobool4.i.not = icmp eq i8 %call3.i, 0
  br i1 %tobool4.i.not, label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_107.exit, label %if.then5.i

if.then5.i:                                       ; preds = %if.then.i
  %6 = load i8, ptr %n.i, align 1
  call void @stuffChar(i8 noundef zeroext %6)
  call void @stuffChar(i8 noundef zeroext -1)
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_107.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_107.exit: ; preds = %if.then.i, %if.then5.i, %if.then
  %7 = load i8, ptr %c.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %c.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %n.i)
  %conv7 = zext i8 %7 to i16
  %8 = load i16, ptr @gBitBuf, align 2
  %or = or i16 %8, %conv7
  store i16 %or, ptr @gBitBuf, align 2
  %9 = load i8, ptr @gBitsLeft, align 1
  %conv10 = zext i8 %9 to i32
  %sub11 = sub nsw i32 8, %conv10
  %conv12 = zext i16 %or to i32
  %shl13 = shl i32 %conv12, %sub11
  %conv14 = trunc i32 %shl13 to i16
  store i16 %conv14, ptr @gBitBuf, align 2
  %10 = load i16, ptr %ret, align 2
  %11 = and i16 %10, -256
  %12 = trunc i32 %shl13 to i16
  %13 = lshr i16 %12, 8
  %conv18 = or i16 %13, %11
  store i16 %conv18, ptr %ret, align 2
  br label %if.end

if.end:                                           ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_107.exit, %entry
  %14 = load i8, ptr @gBitsLeft, align 1
  %15 = load i8, ptr %numBits.addr, align 1
  %cmp21 = icmp ult i8 %14, %15
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end
  %16 = load i8, ptr @gBitsLeft, align 1
  %conv24 = zext i8 %16 to i32
  %17 = load i16, ptr @gBitBuf, align 2
  %conv25 = zext i16 %17 to i32
  %shl26 = shl i32 %conv25, %conv24
  %conv27 = trunc i32 %shl26 to i16
  store i16 %conv27, ptr @gBitBuf, align 2
  %18 = load i8, ptr %FFCheck.addr, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %c.i2)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %n.i3)
  %call.i4 = call zeroext i8 @getChar()
  store i8 %call.i4, ptr %c.i2, align 1
  %tobool.i6.not = icmp ne i8 %18, 0
  %19 = load i8, ptr %c.i2, align 1
  %cmp.i8 = icmp eq i8 %19, -1
  %or.cond15 = select i1 %tobool.i6.not, i1 %cmp.i8, i1 false
  br i1 %or.cond15, label %if.then.i12, label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_108.exit

if.then.i12:                                      ; preds = %if.then23
  %call3.i10 = call zeroext i8 @getChar()
  store i8 %call3.i10, ptr %n.i3, align 1
  %tobool4.i11.not = icmp eq i8 %call3.i10, 0
  br i1 %tobool4.i11.not, label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_108.exit, label %if.then5.i13

if.then5.i13:                                     ; preds = %if.then.i12
  %20 = load i8, ptr %n.i3, align 1
  call void @stuffChar(i8 noundef zeroext %20)
  call void @stuffChar(i8 noundef zeroext -1)
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_108.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_108.exit: ; preds = %if.then.i12, %if.then5.i13, %if.then23
  %21 = load i8, ptr %c.i2, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %c.i2)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %n.i3)
  %conv29 = zext i8 %21 to i16
  %22 = load i16, ptr @gBitBuf, align 2
  %or31 = or i16 %22, %conv29
  store i16 %or31, ptr @gBitBuf, align 2
  %23 = load i8, ptr %numBits.addr, align 1
  %conv33 = zext i8 %23 to i32
  %24 = load i8, ptr @gBitsLeft, align 1
  %conv34 = zext i8 %24 to i32
  %sub35 = sub nsw i32 %conv33, %conv34
  %conv36 = zext i16 %or31 to i32
  %shl37 = shl i32 %conv36, %sub35
  %conv38 = trunc i32 %shl37 to i16
  store i16 %conv38, ptr @gBitBuf, align 2
  %25 = load i8, ptr %numBits.addr, align 1
  %26 = load i8, ptr @gBitsLeft, align 1
  %sub41.neg = sub i8 %26, %25
  %sub42 = add i8 %sub41.neg, 8
  store i8 %sub42, ptr @gBitsLeft, align 1
  br label %if.end52

if.else:                                          ; preds = %if.end
  %27 = load i8, ptr @gBitsLeft, align 1
  %28 = load i8, ptr %numBits.addr, align 1
  %sub46 = sub i8 %27, %28
  store i8 %sub46, ptr @gBitsLeft, align 1
  %conv48 = zext i8 %28 to i32
  %29 = load i16, ptr @gBitBuf, align 2
  %conv49 = zext i16 %29 to i32
  %shl50 = shl i32 %conv49, %conv48
  %conv51 = trunc i32 %shl50 to i16
  store i16 %conv51, ptr @gBitBuf, align 2
  br label %if.end52

if.end52:                                         ; preds = %if.else, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_108.exit
  %30 = load i16, ptr %ret, align 2
  %conv53 = zext i16 %30 to i32
  %31 = load i8, ptr %origBits, align 1
  %conv54 = zext i8 %31 to i32
  %sub55 = sub nsw i32 16, %conv54
  %shr56 = lshr i32 %conv53, %sub55
  %conv57 = trunc i32 %shr56 to i16
  ret i16 %conv57
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
define internal zeroext i16 @getBits1(i8 noundef zeroext %numBits) #0 {
entry:
  %numBits.addr.i = alloca i8, align 1
  %FFCheck.addr.i = alloca i8, align 1
  %origBits.i = alloca i8, align 1
  %ret.i = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %numBits.addr.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %FFCheck.addr.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %origBits.i)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ret.i)
  store i8 %numBits, ptr %numBits.addr.i, align 1
  store i8 0, ptr %FFCheck.addr.i, align 1
  store i8 %numBits, ptr %origBits.i, align 1
  %0 = load i16, ptr @gBitBuf, align 2
  store i16 %0, ptr %ret.i, align 2
  %cmp.i = icmp ugt i8 %numBits, 8
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %1 = load i8, ptr %numBits.addr.i, align 1
  %sub.i = add i8 %1, -8
  store i8 %sub.i, ptr %numBits.addr.i, align 1
  %2 = load i8, ptr @gBitsLeft, align 1
  %conv4.i = zext i8 %2 to i32
  %3 = load i16, ptr @gBitBuf, align 2
  %conv5.i = zext i16 %3 to i32
  %shl.i = shl i32 %conv5.i, %conv4.i
  %conv6.i = trunc i32 %shl.i to i16
  store i16 %conv6.i, ptr @gBitBuf, align 2
  %4 = load i8, ptr %FFCheck.addr.i, align 1
  %call.i = call zeroext i8 @getOctet(i8 noundef zeroext %4)
  %conv7.i = zext i8 %call.i to i16
  %5 = load i16, ptr @gBitBuf, align 2
  %or.i = or i16 %5, %conv7.i
  store i16 %or.i, ptr @gBitBuf, align 2
  %6 = load i8, ptr @gBitsLeft, align 1
  %conv10.i = zext i8 %6 to i32
  %sub11.i = sub nsw i32 8, %conv10.i
  %conv12.i = zext i16 %or.i to i32
  %shl13.i = shl i32 %conv12.i, %sub11.i
  %conv14.i = trunc i32 %shl13.i to i16
  store i16 %conv14.i, ptr @gBitBuf, align 2
  %7 = load i16, ptr %ret.i, align 2
  %8 = and i16 %7, -256
  %9 = trunc i32 %shl13.i to i16
  %10 = lshr i16 %9, 8
  %conv18.i = or i16 %10, %8
  store i16 %conv18.i, ptr %ret.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry
  %11 = load i8, ptr @gBitsLeft, align 1
  %12 = load i8, ptr %numBits.addr.i, align 1
  %cmp21.i = icmp ult i8 %11, %12
  br i1 %cmp21.i, label %if.then23.i, label %if.else.i

if.then23.i:                                      ; preds = %if.end.i
  %13 = load i8, ptr @gBitsLeft, align 1
  %conv24.i = zext i8 %13 to i32
  %14 = load i16, ptr @gBitBuf, align 2
  %conv25.i = zext i16 %14 to i32
  %shl26.i = shl i32 %conv25.i, %conv24.i
  %conv27.i = trunc i32 %shl26.i to i16
  store i16 %conv27.i, ptr @gBitBuf, align 2
  %15 = load i8, ptr %FFCheck.addr.i, align 1
  %call28.i = call zeroext i8 @getOctet(i8 noundef zeroext %15)
  %conv29.i = zext i8 %call28.i to i16
  %16 = load i16, ptr @gBitBuf, align 2
  %or31.i = or i16 %16, %conv29.i
  store i16 %or31.i, ptr @gBitBuf, align 2
  %17 = load i8, ptr %numBits.addr.i, align 1
  %conv33.i = zext i8 %17 to i32
  %18 = load i8, ptr @gBitsLeft, align 1
  %conv34.i = zext i8 %18 to i32
  %sub35.i = sub nsw i32 %conv33.i, %conv34.i
  %conv36.i = zext i16 %or31.i to i32
  %shl37.i = shl i32 %conv36.i, %sub35.i
  %conv38.i = trunc i32 %shl37.i to i16
  store i16 %conv38.i, ptr @gBitBuf, align 2
  %19 = load i8, ptr %numBits.addr.i, align 1
  %20 = load i8, ptr @gBitsLeft, align 1
  %sub41.i.neg = sub i8 %20, %19
  %sub42.i = add i8 %sub41.i.neg, 8
  store i8 %sub42.i, ptr @gBitsLeft, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_164.exit

if.else.i:                                        ; preds = %if.end.i
  %21 = load i8, ptr @gBitsLeft, align 1
  %22 = load i8, ptr %numBits.addr.i, align 1
  %sub46.i = sub i8 %21, %22
  store i8 %sub46.i, ptr @gBitsLeft, align 1
  %conv48.i = zext i8 %22 to i32
  %23 = load i16, ptr @gBitBuf, align 2
  %conv49.i = zext i16 %23 to i32
  %shl50.i = shl i32 %conv49.i, %conv48.i
  %conv51.i = trunc i32 %shl50.i to i16
  store i16 %conv51.i, ptr @gBitBuf, align 2
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_164.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_164.exit: ; preds = %if.then23.i, %if.else.i
  %24 = load i16, ptr %ret.i, align 2
  %conv53.i = zext i16 %24 to i32
  %25 = load i8, ptr %origBits.i, align 1
  %conv54.i = zext i8 %25 to i32
  %sub55.i = sub nsw i32 16, %conv54.i
  %shr56.i = lshr i32 %conv53.i, %sub55.i
  %conv57.i = trunc i32 %shr56.i to i16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %numBits.addr.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %FFCheck.addr.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %origBits.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ret.i)
  ret i16 %conv57.i
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
  %left.i56 = alloca i16, align 2
  %left.i8 = alloca i16, align 2
  %i.i9 = alloca i8, align 1
  %n.i10 = alloca i8, align 1
  %prec.i = alloca i8, align 1
  %totalRead.i11 = alloca i16, align 2
  %temp.i = alloca i16, align 2
  %bits.i = alloca [16 x i8], align 1
  %left.i = alloca i16, align 2
  %i.i = alloca i8, align 1
  %tableIndex.i = alloca i8, align 1
  %index.i = alloca i8, align 1
  %pHuffVal.i = alloca ptr, align 8
  %pHuffTable.i = alloca ptr, align 8
  %count.i = alloca i16, align 2
  %totalRead.i = alloca i16, align 2
  %c.i = alloca i8, align 1
  %bytes.i = alloca i8, align 1
  %retval = alloca i8, align 1
  %pMarker.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  store ptr %pMarker, ptr %pMarker.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %c.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bytes.i)
  store i8 0, ptr %bytes.i, align 1
  br label %do.body.i

do.body.i:                                        ; preds = %do.end11.i, %for.cond
  br label %do.body1.i

do.body1.i:                                       ; preds = %do.body1.i, %do.body.i
  %0 = load i8, ptr %bytes.i, align 1
  %inc.i = add i8 %0, 1
  store i8 %inc.i, ptr %bytes.i, align 1
  %call.i = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %conv.i = trunc i16 %call.i to i8
  store i8 %conv.i, ptr %c.i, align 1
  %conv.i.mask = and i16 %call.i, 255
  %cmp.i.not = icmp eq i16 %conv.i.mask, 255
  br i1 %cmp.i.not, label %do.body4.i, label %do.body1.i, !llvm.loop !32

do.body4.i:                                       ; preds = %do.body1.i, %do.body4.i
  %call5.i = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %conv6.i = trunc i16 %call5.i to i8
  store i8 %conv6.i, ptr %c.i, align 1
  %conv6.i.mask = and i16 %call5.i, 255
  %cmp9.i = icmp eq i16 %conv6.i.mask, 255
  br i1 %cmp9.i, label %do.body4.i, label %do.end11.i, !llvm.loop !33

do.end11.i:                                       ; preds = %do.body4.i
  %1 = load i8, ptr %c.i, align 1
  %cmp14.i = icmp eq i8 %1, 0
  br i1 %cmp14.i, label %do.body.i, label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_168.exit, !llvm.loop !34

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_168.exit: ; preds = %do.end11.i
  %2 = load i8, ptr %c.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %c.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bytes.i)
  store i8 %2, ptr %c, align 1
  switch i8 %2, label %sw.default [
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

sw.bb:                                            ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_168.exit, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_168.exit, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_168.exit, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_168.exit, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_168.exit, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_168.exit, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_168.exit, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_168.exit, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_168.exit, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_168.exit, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_168.exit, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_168.exit, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_168.exit, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_168.exit, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_168.exit, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_168.exit
  %3 = load i8, ptr %c, align 1
  %4 = load ptr, ptr %pMarker.addr, align 8
  store i8 %3, ptr %4, align 1
  store i8 0, ptr %retval, align 1
  br label %return

sw.bb1:                                           ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_168.exit
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %bits.i)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %left.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tableIndex.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %index.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pHuffVal.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pHuffTable.i)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %count.i)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %totalRead.i)
  %call.i1 = call zeroext i16 @getBits1(i8 noundef zeroext 16)
  store i16 %call.i1, ptr %left.i, align 2
  %cmp.i3 = icmp ult i16 %call.i1, 2
  br i1 %cmp.i3, label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_169.exit, label %if.end.i

if.end.i:                                         ; preds = %sw.bb1
  %5 = load i16, ptr %left.i, align 2
  %sub.i = add i16 %5, -2
  store i16 %sub.i, ptr %left.i, align 2
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end62.i, %if.end.i
  %6 = load i16, ptr %left.i, align 2
  %tobool.i.not = icmp eq i16 %6, 0
  br i1 %tobool.i.not, label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_169.exit, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %call4.i = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %conv5.i = trunc i16 %call4.i to i8
  store i8 %conv5.i, ptr %index.i, align 1
  %7 = and i16 %call4.i, 14
  %cmp7.i.not = icmp eq i16 %7, 0
  br i1 %cmp7.i.not, label %lor.lhs.false.i, label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_169.exit

lor.lhs.false.i:                                  ; preds = %while.body.i
  %8 = load i8, ptr %index.i, align 1
  %9 = and i8 %8, -16
  %cmp11.i = icmp ugt i8 %9, 16
  br i1 %cmp11.i, label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_169.exit, label %if.end14.i

if.end14.i:                                       ; preds = %lor.lhs.false.i
  %10 = load i8, ptr %index.i, align 1
  %11 = lshr i8 %10, 3
  %12 = and i8 %11, 2
  %13 = and i8 %10, 1
  %add.i71 = or i8 %12, %13
  store i8 %add.i71, ptr %tableIndex.i, align 1
  %call20.i = call ptr @getHuffTable(i8 noundef zeroext %add.i71)
  store ptr %call20.i, ptr %pHuffTable.i, align 8
  %call21.i = call ptr @getHuffVal(i8 noundef zeroext %add.i71)
  store ptr %call21.i, ptr %pHuffVal.i, align 8
  %shl.i = shl i8 1, %add.i71
  %14 = load i8, ptr @gValidHuffTables, align 1
  %or.i = or i8 %shl.i, %14
  store i8 %or.i, ptr @gValidHuffTables, align 1
  store i16 0, ptr %count.i, align 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %if.end14.i
  %storemerge72 = phi i8 [ 0, %if.end14.i ], [ %inc.i6, %for.body.i ]
  store i8 %storemerge72, ptr %i.i, align 1
  %cmp26.i = icmp ult i8 %storemerge72, 16
  br i1 %cmp26.i, label %for.body.i, label %for.end.i

for.body.i:                                       ; preds = %for.cond.i
  %call28.i = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %conv29.i = trunc i16 %call28.i to i8
  %15 = load i8, ptr %i.i, align 1
  %idxprom.i = zext i8 %15 to i64
  %arrayidx.i = getelementptr inbounds [16 x i8], ptr %bits.i, i64 0, i64 %idxprom.i
  store i8 %conv29.i, ptr %arrayidx.i, align 1
  %16 = load i16, ptr %count.i, align 2
  %conv31.i = and i16 %call28.i, 255
  %add32.i = add i16 %16, %conv31.i
  store i16 %add32.i, ptr %count.i, align 2
  %17 = load i8, ptr %i.i, align 1
  %inc.i6 = add i8 %17, 1
  br label %for.cond.i, !llvm.loop !35

for.end.i:                                        ; preds = %for.cond.i
  %18 = load i16, ptr %count.i, align 2
  %19 = load i8, ptr %tableIndex.i, align 1
  %call35.i = call zeroext i16 @getMaxHuffCodes(i8 noundef zeroext %19)
  %cmp37.i = icmp ugt i16 %18, %call35.i
  br i1 %cmp37.i, label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_169.exit, label %for.cond41.i

for.cond41.i:                                     ; preds = %for.end.i, %for.body46.i
  %storemerge73 = phi i8 [ %inc52.i, %for.body46.i ], [ 0, %for.end.i ]
  store i8 %storemerge73, ptr %i.i, align 1
  %20 = load i16, ptr %count.i, align 2
  %21 = zext i8 %storemerge73 to i16
  %cmp44.i = icmp ugt i16 %20, %21
  br i1 %cmp44.i, label %for.body46.i, label %for.end53.i

for.body46.i:                                     ; preds = %for.cond41.i
  %call47.i = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %conv48.i = trunc i16 %call47.i to i8
  %22 = load ptr, ptr %pHuffVal.i, align 8
  %23 = load i8, ptr %i.i, align 1
  %idxprom49.i = zext i8 %23 to i64
  %arrayidx50.i = getelementptr inbounds i8, ptr %22, i64 %idxprom49.i
  store i8 %conv48.i, ptr %arrayidx50.i, align 1
  %inc52.i = add i8 %23, 1
  br label %for.cond41.i, !llvm.loop !36

for.end53.i:                                      ; preds = %for.cond41.i
  %24 = load i16, ptr %count.i, align 2
  %add55.i = add i16 %24, 17
  store i16 %add55.i, ptr %totalRead.i, align 2
  %25 = load i16, ptr %left.i, align 2
  %cmp59.i = icmp ult i16 %25, %add55.i
  br i1 %cmp59.i, label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_169.exit, label %if.end62.i

if.end62.i:                                       ; preds = %for.end53.i
  %26 = load i16, ptr %left.i, align 2
  %27 = load i16, ptr %totalRead.i, align 2
  %sub65.i = sub i16 %26, %27
  store i16 %sub65.i, ptr %left.i, align 2
  %28 = load ptr, ptr %pHuffTable.i, align 8
  call void @huffCreate(ptr noundef nonnull %bits.i, ptr noundef %28)
  br label %while.cond.i, !llvm.loop !37

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_169.exit: ; preds = %while.cond.i, %for.end53.i, %for.end.i, %while.body.i, %lor.lhs.false.i, %sw.bb1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bits.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %left.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tableIndex.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %index.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pHuffVal.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pHuffTable.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %count.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %totalRead.i)
  br label %sw.epilog

sw.bb3:                                           ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_168.exit
  store i8 17, ptr %retval, align 1
  br label %return

sw.bb4:                                           ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_168.exit
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %left.i8)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i.i9)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %n.i10)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %prec.i)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %totalRead.i11)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %temp.i)
  %call.i12 = call zeroext i16 @getBits1(i8 noundef zeroext 16)
  store i16 %call.i12, ptr %left.i8, align 2
  %cmp.i14 = icmp ult i16 %call.i12, 2
  br i1 %cmp.i14, label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_170.exit, label %if.end.i19

if.end.i19:                                       ; preds = %sw.bb4
  %29 = load i16, ptr %left.i8, align 2
  %sub.i17 = add i16 %29, -2
  br label %while.cond.i21

while.cond.i21:                                   ; preds = %if.end49.i, %if.end.i19
  %storemerge = phi i16 [ %sub.i17, %if.end.i19 ], [ %sub52.i, %if.end49.i ]
  store i16 %storemerge, ptr %left.i8, align 2
  %tobool.i20.not = icmp eq i16 %storemerge, 0
  br i1 %tobool.i20.not, label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_170.exit, label %while.body.i30

while.body.i30:                                   ; preds = %while.cond.i21
  %call4.i22 = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %conv5.i23 = trunc i16 %call4.i22 to i8
  store i8 %conv5.i23, ptr %n.i10, align 1
  %30 = trunc i16 %call4.i22 to i8
  %31 = lshr i8 %30, 4
  store i8 %31, ptr %prec.i, align 1
  %32 = trunc i16 %call4.i22 to i8
  %conv9.i28 = and i8 %32, 15
  store i8 %conv9.i28, ptr %n.i10, align 1
  %cmp11.i29 = icmp ugt i8 %conv9.i28, 1
  br i1 %cmp11.i29, label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_170.exit, label %if.end14.i35

if.end14.i35:                                     ; preds = %while.body.i30
  %33 = load i8, ptr %n.i10, align 1
  %tobool16.i.not = icmp eq i8 %33, 0
  %cond.i = select i1 %tobool16.i.not, i8 1, i8 2
  %34 = load i8, ptr @gValidQuantTables, align 1
  %or.i34 = or i8 %cond.i, %34
  store i8 %or.i34, ptr @gValidQuantTables, align 1
  br label %for.cond.i37

for.cond.i37:                                     ; preds = %if.end34.i, %if.end14.i35
  %storemerge70 = phi i8 [ 0, %if.end14.i35 ], [ %inc.i44, %if.end34.i ]
  store i8 %storemerge70, ptr %i.i9, align 1
  %cmp20.i = icmp ult i8 %storemerge70, 64
  br i1 %cmp20.i, label %for.body.i38, label %for.end.i45

for.body.i38:                                     ; preds = %for.cond.i37
  %call22.i = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  store i16 %call22.i, ptr %temp.i, align 2
  %35 = load i8, ptr %prec.i, align 1
  %tobool23.i.not = icmp eq i8 %35, 0
  br i1 %tobool23.i.not, label %if.end29.i, label %if.then24.i

if.then24.i:                                      ; preds = %for.body.i38
  %36 = load i16, ptr %temp.i, align 2
  %shl.i40 = shl i16 %36, 8
  %call26.i = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %add.i41 = add i16 %shl.i40, %call26.i
  store i16 %add.i41, ptr %temp.i, align 2
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then24.i, %for.body.i38
  %37 = load i8, ptr %n.i10, align 1
  %tobool30.i.not = icmp eq i8 %37, 0
  br i1 %tobool30.i.not, label %if.else.i, label %if.then31.i

if.then31.i:                                      ; preds = %if.end29.i
  %38 = load i16, ptr %temp.i, align 2
  %39 = load i8, ptr %i.i9, align 1
  %idxprom.i42 = zext i8 %39 to i64
  %arrayidx.i43 = getelementptr inbounds [64 x i16], ptr @gQuant1, i64 0, i64 %idxprom.i42
  store i16 %38, ptr %arrayidx.i43, align 2
  br label %if.end34.i

if.else.i:                                        ; preds = %if.end29.i
  %40 = load i16, ptr %temp.i, align 2
  %41 = load i8, ptr %i.i9, align 1
  %idxprom32.i = zext i8 %41 to i64
  %arrayidx33.i = getelementptr inbounds [64 x i16], ptr @gQuant0, i64 0, i64 %idxprom32.i
  store i16 %40, ptr %arrayidx33.i, align 2
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.else.i, %if.then31.i
  %42 = load i8, ptr %i.i9, align 1
  %inc.i44 = add i8 %42, 1
  br label %for.cond.i37, !llvm.loop !38

for.end.i45:                                      ; preds = %for.cond.i37
  %43 = load i8, ptr %n.i10, align 1
  %tobool36.i.not = icmp eq i8 %43, 0
  %cond37.i = select i1 %tobool36.i.not, ptr @gQuant0, ptr @gQuant1
  call void @createWinogradQuant(ptr noundef nonnull %cond37.i)
  store i16 65, ptr %totalRead.i11, align 2
  %44 = load i8, ptr %prec.i, align 1
  %tobool38.i.not = icmp eq i8 %44, 0
  br i1 %tobool38.i.not, label %if.end43.i, label %if.then39.i47

if.then39.i47:                                    ; preds = %for.end.i45
  %45 = load i16, ptr %totalRead.i11, align 2
  %add41.i = add i16 %45, 64
  store i16 %add41.i, ptr %totalRead.i11, align 2
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then39.i47, %for.end.i45
  %46 = load i16, ptr %left.i8, align 2
  %47 = load i16, ptr %totalRead.i11, align 2
  %cmp46.i = icmp ult i16 %46, %47
  br i1 %cmp46.i, label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_170.exit, label %if.end49.i

if.end49.i:                                       ; preds = %if.end43.i
  %48 = load i16, ptr %left.i8, align 2
  %49 = load i16, ptr %totalRead.i11, align 2
  %sub52.i = sub i16 %48, %49
  br label %while.cond.i21, !llvm.loop !39

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_170.exit: ; preds = %while.cond.i21, %if.end43.i, %while.body.i30, %sw.bb4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %left.i8)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i.i9)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %n.i10)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %prec.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %totalRead.i11)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %temp.i)
  br label %sw.epilog

sw.bb6:                                           ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_168.exit
  %call.i50 = call zeroext i16 @getBits1(i8 noundef zeroext 16)
  %cmp.i52.not = icmp eq i16 %call.i50, 4
  br i1 %cmp.i52.not, label %if.end.i54, label %sw.epilog

if.end.i54:                                       ; preds = %sw.bb6
  %call2.i = call zeroext i16 @getBits1(i8 noundef zeroext 16)
  store i16 %call2.i, ptr @gRestartInterval, align 2
  br label %sw.epilog

sw.bb8:                                           ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_168.exit, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_168.exit, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_168.exit, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_168.exit, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_168.exit, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_168.exit, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_168.exit, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_168.exit, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_168.exit, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_168.exit
  store i8 18, ptr %retval, align 1
  br label %return

sw.default:                                       ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_168.exit
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %left.i56)
  %call.i57 = call zeroext i16 @getBits1(i8 noundef zeroext 16)
  store i16 %call.i57, ptr %left.i56, align 2
  %cmp.i59 = icmp ult i16 %call.i57, 2
  br i1 %cmp.i59, label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_172.exit, label %if.end.i64

if.end.i64:                                       ; preds = %sw.default
  %50 = load i16, ptr %left.i56, align 2
  %sub.i62 = add i16 %50, -2
  br label %while.cond.i66

while.cond.i66:                                   ; preds = %while.body.i68, %if.end.i64
  %storemerge74 = phi i16 [ %sub.i62, %if.end.i64 ], [ %dec.i, %while.body.i68 ]
  store i16 %storemerge74, ptr %left.i56, align 2
  %tobool.i65.not = icmp eq i16 %storemerge74, 0
  br i1 %tobool.i65.not, label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_172.exit, label %while.body.i68

while.body.i68:                                   ; preds = %while.cond.i66
  %call4.i67 = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %51 = load i16, ptr %left.i56, align 2
  %dec.i = add i16 %51, -1
  br label %while.cond.i66, !llvm.loop !40

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_172.exit: ; preds = %while.cond.i66, %sw.default
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %left.i56)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.i54, %sw.bb6, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_172.exit, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_170.exit, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_169.exit
  br label %for.cond

return:                                           ; preds = %sw.bb8, %sw.bb3, %sw.bb
  %52 = load i8, ptr %retval, align 1
  ret i8 %52
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
  br label %for.cond, !llvm.loop !41

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
  br i1 %cmp.not, label %do.body4, label %do.body1, !llvm.loop !32

do.body4:                                         ; preds = %do.body1, %do.body4
  %call.i2 = call zeroext i16 @getBits(i8 noundef zeroext 8, i8 noundef zeroext 0)
  %conv6 = trunc i16 %call.i2 to i8
  store i8 %conv6, ptr %c, align 1
  %2 = load i8, ptr %c, align 1
  %cmp9 = icmp eq i8 %2, -1
  br i1 %cmp9, label %do.body4, label %do.cond12, !llvm.loop !33

do.cond12:                                        ; preds = %do.body4
  %3 = load i8, ptr %c, align 1
  %cmp14 = icmp eq i8 %3, 0
  br i1 %cmp14, label %do.body, label %do.end16, !llvm.loop !34

do.end16:                                         ; preds = %do.cond12
  %4 = load i8, ptr %c, align 1
  ret i8 %4
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @readDHTMarker() #0 {
entry:
  %pBits.addr.i = alloca ptr, align 8
  %pHuffTable.addr.i = alloca ptr, align 8
  %i.i = alloca i8, align 1
  %j.i = alloca i8, align 1
  %code.i = alloca i16, align 2
  %num.i = alloca i8, align 1
  %retval.i3 = alloca ptr, align 8
  %retval.i = alloca ptr, align 8
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

while.cond:                                       ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_191.exit, %if.end
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
  %add19 = or i8 %7, %8
  store i8 %add19, ptr %tableIndex, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %retval.i)
  %conv.i = zext i8 %add19 to i32
  switch i32 %conv.i, label %if.end14.unreachabledefault [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
    i32 3, label %sw.bb3.i
  ]

sw.bb.i:                                          ; preds = %if.end14
  store ptr @gHuffTab0, ptr %retval.i, align 8
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_186.exit

sw.bb1.i:                                         ; preds = %if.end14
  store ptr @gHuffTab1, ptr %retval.i, align 8
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_186.exit

sw.bb2.i:                                         ; preds = %if.end14
  store ptr @gHuffTab2, ptr %retval.i, align 8
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_186.exit

sw.bb3.i:                                         ; preds = %if.end14
  store ptr @gHuffTab3, ptr %retval.i, align 8
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_186.exit

if.end14.unreachabledefault:                      ; preds = %if.end14
  unreachable

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_186.exit: ; preds = %sw.bb.i, %sw.bb1.i, %sw.bb2.i, %sw.bb3.i
  %9 = load ptr, ptr %retval.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %retval.i)
  store ptr %9, ptr %pHuffTable, align 8
  %10 = load i8, ptr %tableIndex, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %retval.i3)
  switch i8 %10, label %sw.default.i10 [
    i8 0, label %sw.bb.i6
    i8 1, label %sw.bb1.i7
    i8 2, label %sw.bb2.i8
    i8 3, label %sw.bb3.i9
  ]

sw.bb.i6:                                         ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_186.exit
  store ptr @gHuffVal0, ptr %retval.i3, align 8
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_187.exit

sw.bb1.i7:                                        ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_186.exit
  store ptr @gHuffVal1, ptr %retval.i3, align 8
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_187.exit

sw.bb2.i8:                                        ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_186.exit
  store ptr @gHuffVal2, ptr %retval.i3, align 8
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_187.exit

sw.bb3.i9:                                        ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_186.exit
  store ptr @gHuffVal3, ptr %retval.i3, align 8
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_187.exit

sw.default.i10:                                   ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_186.exit
  store ptr null, ptr %retval.i3, align 8
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_187.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_187.exit: ; preds = %sw.bb.i6, %sw.bb1.i7, %sw.bb2.i8, %sw.bb3.i9, %sw.default.i10
  %11 = load ptr, ptr %retval.i3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %retval.i3)
  store ptr %11, ptr %pHuffVal, align 8
  %12 = load i8, ptr %tableIndex, align 1
  %conv22 = zext i8 %12 to i32
  %shl = shl i32 1, %conv22
  %13 = load i8, ptr @gValidHuffTables, align 1
  %14 = trunc i32 %shl to i8
  %conv24 = or i8 %13, %14
  store i8 %conv24, ptr @gValidHuffTables, align 1
  store i16 0, ptr %count, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.body, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_187.exit
  %storemerge = phi i8 [ 0, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_187.exit ], [ %inc, %for.body ]
  store i8 %storemerge, ptr %i, align 1
  %cmp26 = icmp ult i8 %storemerge, 16
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call.i12 = call zeroext i16 @getBits(i8 noundef zeroext 8, i8 noundef zeroext 0)
  %conv29 = trunc i16 %call.i12 to i8
  %15 = load i8, ptr %i, align 1
  %idxprom = zext i8 %15 to i64
  %arrayidx = getelementptr inbounds [16 x i8], ptr %bits, i64 0, i64 %idxprom
  store i8 %conv29, ptr %arrayidx, align 1
  %16 = load i16, ptr %count, align 2
  %conv31 = and i16 %call.i12, 255
  %add32 = add i16 %16, %conv31
  store i16 %add32, ptr %count, align 2
  %17 = load i8, ptr %i, align 1
  %inc = add i8 %17, 1
  br label %for.cond, !llvm.loop !35

for.end:                                          ; preds = %for.cond
  %18 = load i16, ptr %count, align 2
  %conv34 = zext i16 %18 to i32
  %19 = load i8, ptr %tableIndex, align 1
  %cmp.i = icmp ult i8 %19, 2
  %conv36 = select i1 %cmp.i, i32 12, i32 255
  %cmp37 = icmp ult i32 %conv36, %conv34
  br i1 %cmp37, label %if.then39, label %for.cond41

if.then39:                                        ; preds = %for.end
  store i8 2, ptr %retval, align 1
  br label %return

for.cond41:                                       ; preds = %for.end, %for.body46
  %storemerge20 = phi i8 [ %inc52, %for.body46 ], [ 0, %for.end ]
  store i8 %storemerge20, ptr %i, align 1
  %20 = load i16, ptr %count, align 2
  %21 = zext i8 %storemerge20 to i16
  %cmp44 = icmp ugt i16 %20, %21
  br i1 %cmp44, label %for.body46, label %for.end53

for.body46:                                       ; preds = %for.cond41
  %call.i16 = call zeroext i16 @getBits(i8 noundef zeroext 8, i8 noundef zeroext 0)
  %conv48 = trunc i16 %call.i16 to i8
  %22 = load ptr, ptr %pHuffVal, align 8
  %23 = load i8, ptr %i, align 1
  %idxprom49 = zext i8 %23 to i64
  %arrayidx50 = getelementptr inbounds i8, ptr %22, i64 %idxprom49
  store i8 %conv48, ptr %arrayidx50, align 1
  %24 = load i8, ptr %i, align 1
  %inc52 = add i8 %24, 1
  br label %for.cond41, !llvm.loop !36

for.end53:                                        ; preds = %for.cond41
  %25 = load i16, ptr %count, align 2
  %add55 = add i16 %25, 17
  store i16 %add55, ptr %totalRead, align 2
  %26 = load i16, ptr %left, align 2
  %cmp59 = icmp ult i16 %26, %add55
  br i1 %cmp59, label %if.then61, label %if.end62

if.then61:                                        ; preds = %for.end53
  store i8 4, ptr %retval, align 1
  br label %return

if.end62:                                         ; preds = %for.end53
  %27 = load i16, ptr %left, align 2
  %28 = load i16, ptr %totalRead, align 2
  %sub65 = sub i16 %27, %28
  store i16 %sub65, ptr %left, align 2
  %29 = load ptr, ptr %pHuffTable, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pBits.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pHuffTable.addr.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %j.i)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %code.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %num.i)
  store ptr %bits, ptr %pBits.addr.i, align 8
  store ptr %29, ptr %pHuffTable.addr.i, align 8
  store i8 0, ptr %i.i, align 1
  store i8 0, ptr %j.i, align 1
  store i16 0, ptr %code.i, align 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end.i, %if.end62
  %30 = load ptr, ptr %pBits.addr.i, align 8
  %31 = load i8, ptr %i.i, align 1
  %idxprom.i = zext i8 %31 to i64
  %arrayidx.i = getelementptr inbounds i8, ptr %30, i64 %idxprom.i
  %32 = load i8, ptr %arrayidx.i, align 1
  store i8 %32, ptr %num.i, align 1
  %tobool.i.not = icmp eq i8 %32, 0
  br i1 %tobool.i.not, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.cond.i
  %33 = load ptr, ptr %pHuffTable.addr.i, align 8
  %34 = load i8, ptr %i.i, align 1
  %idxprom1.i = zext i8 %34 to i64
  %arrayidx2.i = getelementptr inbounds [16 x i16], ptr %33, i64 0, i64 %idxprom1.i
  store i16 0, ptr %arrayidx2.i, align 2
  %idxprom3.i = zext i8 %34 to i64
  %arrayidx4.i = getelementptr inbounds %struct.HuffTableT, ptr %33, i64 0, i32 1, i64 %idxprom3.i
  store i16 -1, ptr %arrayidx4.i, align 2
  %35 = load ptr, ptr %pHuffTable.addr.i, align 8
  %36 = load i8, ptr %i.i, align 1
  %idxprom5.i = zext i8 %36 to i64
  %arrayidx6.i = getelementptr inbounds %struct.HuffTableT, ptr %35, i64 0, i32 2, i64 %idxprom5.i
  store i8 0, ptr %arrayidx6.i, align 1
  br label %if.end.i

if.else.i:                                        ; preds = %for.cond.i
  %37 = load i16, ptr %code.i, align 2
  %38 = load ptr, ptr %pHuffTable.addr.i, align 8
  %39 = load i8, ptr %i.i, align 1
  %idxprom8.i = zext i8 %39 to i64
  %arrayidx9.i = getelementptr inbounds [16 x i16], ptr %38, i64 0, i64 %idxprom8.i
  store i16 %37, ptr %arrayidx9.i, align 2
  %40 = load i8, ptr %num.i, align 1
  %conv10.i = zext i8 %40 to i16
  %add.i = add i16 %37, %conv10.i
  %sub.i = add i16 %add.i, -1
  %41 = load ptr, ptr %pHuffTable.addr.i, align 8
  %42 = load i8, ptr %i.i, align 1
  %idxprom13.i = zext i8 %42 to i64
  %arrayidx14.i = getelementptr inbounds %struct.HuffTableT, ptr %41, i64 0, i32 1, i64 %idxprom13.i
  store i16 %sub.i, ptr %arrayidx14.i, align 2
  %43 = load i8, ptr %j.i, align 1
  %idxprom16.i = zext i8 %42 to i64
  %arrayidx17.i = getelementptr inbounds %struct.HuffTableT, ptr %41, i64 0, i32 2, i64 %idxprom16.i
  store i8 %43, ptr %arrayidx17.i, align 1
  %44 = load i8, ptr %num.i, align 1
  %add20.i = add i8 %43, %44
  store i8 %add20.i, ptr %j.i, align 1
  %45 = load i16, ptr %code.i, align 2
  %conv23.i = zext i8 %44 to i16
  %add24.i = add i16 %45, %conv23.i
  store i16 %add24.i, ptr %code.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %46 = load i16, ptr %code.i, align 2
  %shl.i = shl i16 %46, 1
  store i16 %shl.i, ptr %code.i, align 2
  %47 = load i8, ptr %i.i, align 1
  %inc.i = add i8 %47, 1
  store i8 %inc.i, ptr %i.i, align 1
  %cmp.i18 = icmp ugt i8 %inc.i, 15
  br i1 %cmp.i18, label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_191.exit, label %for.cond.i

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_191.exit: ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pBits.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pHuffTable.addr.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %j.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %code.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %num.i)
  br label %while.cond, !llvm.loop !37

while.end:                                        ; preds = %while.cond
  store i8 0, ptr %retval, align 1
  br label %return

return:                                           ; preds = %while.end, %if.then61, %if.then39, %if.then13, %if.then
  %48 = load i8, ptr %retval, align 1
  ret i8 %48
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @readDQTMarker() #0 {
entry:
  %pQuant.addr.i = alloca ptr, align 8
  %i.i = alloca i8, align 1
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
  br label %for.cond, !llvm.loop !38

for.end:                                          ; preds = %for.cond
  %14 = load i8, ptr %n, align 1
  %tobool36.not = icmp eq i8 %14, 0
  %cond37 = select i1 %tobool36.not, ptr @gQuant0, ptr @gQuant1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pQuant.addr.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i.i)
  store ptr %cond37, ptr %pQuant.addr.i, align 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %for.end
  %storemerge8 = phi i8 [ 0, %for.end ], [ %inc.i, %for.body.i ]
  store i8 %storemerge8, ptr %i.i, align 1
  %cmp.i = icmp ult i8 %storemerge8, 64
  br i1 %cmp.i, label %for.body.i, label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_196.exit

for.body.i:                                       ; preds = %for.cond.i
  %15 = load ptr, ptr %pQuant.addr.i, align 8
  %16 = load i8, ptr %i.i, align 1
  %idxprom.i = zext i8 %16 to i64
  %arrayidx.i = getelementptr inbounds i16, ptr %15, i64 %idxprom.i
  %17 = load i16, ptr %arrayidx.i, align 2
  %conv2.i = sext i16 %17 to i32
  %idxprom3.i = zext i8 %16 to i64
  %arrayidx4.i = getelementptr inbounds [64 x i8], ptr @gWinogradQuant, i64 0, i64 %idxprom3.i
  %18 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %18 to i32
  %mul.i = mul nsw i32 %conv2.i, %conv5.i
  %add.i = add nsw i32 %mul.i, 4
  %19 = lshr i32 %add.i, 3
  %conv6.i = trunc i32 %19 to i16
  %20 = load ptr, ptr %pQuant.addr.i, align 8
  %21 = load i8, ptr %i.i, align 1
  %idxprom7.i = zext i8 %21 to i64
  %arrayidx8.i = getelementptr inbounds i16, ptr %20, i64 %idxprom7.i
  store i16 %conv6.i, ptr %arrayidx8.i, align 2
  %inc.i = add i8 %21, 1
  br label %for.cond.i, !llvm.loop !42

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_196.exit: ; preds = %for.cond.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pQuant.addr.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i.i)
  store i16 65, ptr %totalRead, align 2
  %22 = load i8, ptr %prec, align 1
  %tobool38.not = icmp eq i8 %22, 0
  br i1 %tobool38.not, label %if.end43, label %if.then39

if.then39:                                        ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_196.exit
  %23 = load i16, ptr %totalRead, align 2
  %add41 = add i16 %23, 64
  store i16 %add41, ptr %totalRead, align 2
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_196.exit
  %24 = load i16, ptr %left, align 2
  %25 = load i16, ptr %totalRead, align 2
  %cmp46 = icmp ult i16 %24, %25
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end43
  store i8 21, ptr %retval, align 1
  br label %return

if.end49:                                         ; preds = %if.end43
  %26 = load i16, ptr %left, align 2
  %27 = load i16, ptr %totalRead, align 2
  %sub52 = sub i16 %26, %27
  br label %while.cond, !llvm.loop !39

while.end:                                        ; preds = %while.cond
  store i8 0, ptr %retval, align 1
  br label %return

return:                                           ; preds = %while.end, %if.then48, %if.then13, %if.then
  %28 = load i8, ptr %retval, align 1
  ret i8 %28
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
  br label %while.cond, !llvm.loop !40

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
define internal zeroext i16 @getMaxHuffCodes(i8 noundef zeroext %index) #0 {
entry:
  %cmp = icmp ult i8 %index, 2
  %conv2 = select i1 %cmp, i16 12, i16 255
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
  %retval.i1 = alloca i8, align 1
  %i.i = alloca i8, align 1
  %left.i = alloca i16, align 2
  %cc.i = alloca i8, align 1
  %c.i2 = alloca i8, align 1
  %ci.i = alloca i8, align 1
  %retval.i = alloca i8, align 1
  %pMarker.addr.i = alloca ptr, align 8
  %c.i = alloca i8, align 1
  %retval = alloca i8, align 1
  %pFoundEOI.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %status = alloca i8, align 1
  store ptr %pFoundEOI, ptr %pFoundEOI.addr, align 8
  store i8 0, ptr %pFoundEOI, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pMarker.addr.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %c.i)
  store ptr %c, ptr %pMarker.addr.i, align 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %sw.epilog.i, %entry
  %call.i = call zeroext i8 @nextMarker()
  store i8 %call.i, ptr %c.i, align 1
  switch i8 %call.i, label %sw.default.i [
    i8 -64, label %sw.bb.i
    i8 -63, label %sw.bb.i
    i8 -62, label %sw.bb.i
    i8 -61, label %sw.bb.i
    i8 -59, label %sw.bb.i
    i8 -58, label %sw.bb.i
    i8 -57, label %sw.bb.i
    i8 -55, label %sw.bb.i
    i8 -54, label %sw.bb.i
    i8 -53, label %sw.bb.i
    i8 -51, label %sw.bb.i
    i8 -50, label %sw.bb.i
    i8 -49, label %sw.bb.i
    i8 -40, label %sw.bb.i
    i8 -39, label %sw.bb.i
    i8 -38, label %sw.bb.i
    i8 -60, label %sw.bb1.i
    i8 -52, label %sw.bb3.i
    i8 -37, label %sw.bb4.i
    i8 -35, label %sw.bb6.i
    i8 -56, label %sw.bb8.i
    i8 -48, label %sw.bb8.i
    i8 -47, label %sw.bb8.i
    i8 -46, label %sw.bb8.i
    i8 -45, label %sw.bb8.i
    i8 -44, label %sw.bb8.i
    i8 -43, label %sw.bb8.i
    i8 -42, label %sw.bb8.i
    i8 -41, label %sw.bb8.i
    i8 1, label %sw.bb8.i
  ]

sw.bb.i:                                          ; preds = %for.cond.i, %for.cond.i, %for.cond.i, %for.cond.i, %for.cond.i, %for.cond.i, %for.cond.i, %for.cond.i, %for.cond.i, %for.cond.i, %for.cond.i, %for.cond.i, %for.cond.i, %for.cond.i, %for.cond.i, %for.cond.i
  %0 = load i8, ptr %c.i, align 1
  %1 = load ptr, ptr %pMarker.addr.i, align 8
  store i8 %0, ptr %1, align 1
  store i8 0, ptr %retval.i, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_201.exit

sw.bb1.i:                                         ; preds = %for.cond.i
  %call2.i = call zeroext i8 @readDHTMarker()
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %for.cond.i
  store i8 17, ptr %retval.i, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_201.exit

sw.bb4.i:                                         ; preds = %for.cond.i
  %call5.i = call zeroext i8 @readDQTMarker()
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %for.cond.i
  %call7.i = call zeroext i8 @readDRIMarker()
  br label %sw.epilog.i

sw.bb8.i:                                         ; preds = %for.cond.i, %for.cond.i, %for.cond.i, %for.cond.i, %for.cond.i, %for.cond.i, %for.cond.i, %for.cond.i, %for.cond.i, %for.cond.i
  store i8 18, ptr %retval.i, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_201.exit

sw.default.i:                                     ; preds = %for.cond.i
  %call9.i = call zeroext i8 @skipVariableMarker()
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb6.i, %sw.bb4.i, %sw.bb1.i
  br label %for.cond.i

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_201.exit: ; preds = %sw.bb.i, %sw.bb3.i, %sw.bb8.i
  %2 = load i8, ptr %retval.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pMarker.addr.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %c.i)
  store i8 %2, ptr %status, align 1
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_201.exit
  %3 = load i8, ptr %status, align 1
  store i8 %3, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_201.exit
  %4 = load i8, ptr %c, align 1
  %cmp = icmp eq i8 %4, -39
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %pFoundEOI.addr, align 8
  store i8 1, ptr %5, align 1
  store i8 0, ptr %retval, align 1
  br label %return

if.else:                                          ; preds = %if.end
  %6 = load i8, ptr %c, align 1
  %cmp4.not = icmp eq i8 %6, -38
  br i1 %cmp4.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.else
  store i8 18, ptr %retval, align 1
  br label %return

if.end8:                                          ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %retval.i1)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %left.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cc.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %c.i2)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ci.i)
  %call.i3 = call zeroext i16 @getBits1(i8 noundef zeroext 16)
  store i16 %call.i3, ptr %left.i, align 2
  %call1.i = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %conv.i4 = trunc i16 %call1.i to i8
  store i8 %conv.i4, ptr @gCompsInScan, align 1
  %sub.i = add i16 %call.i3, -3
  store i16 %sub.i, ptr %left.i, align 2
  %conv.i4.mask = and i16 %call1.i, 255
  %conv.i4.mask6 = and i16 %call1.i, 255
  %narrow = add nuw nsw i16 %conv.i4.mask, %conv.i4.mask6
  %7 = add nuw nsw i16 %narrow, 6
  %cmp.i.not = icmp ne i16 %call.i3, %7
  %8 = load i8, ptr @gCompsInScan, align 1
  %cmp10.i = icmp eq i8 %8, 0
  %or.cond = select i1 %cmp.i.not, i1 true, i1 %cmp10.i
  %9 = load i8, ptr @gCompsInScan, align 1
  %cmp14.i = icmp ugt i8 %9, 3
  %or.cond10 = select i1 %or.cond, i1 true, i1 %cmp14.i
  br i1 %or.cond10, label %if.then.i, label %for.cond.i5

if.then.i:                                        ; preds = %if.end8
  store i8 14, ptr %retval.i1, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_202.exit

for.cond.i5:                                      ; preds = %if.end8, %if.end44.i
  %storemerge = phi i8 [ %inc57.i, %if.end44.i ], [ 0, %if.end8 ]
  store i8 %storemerge, ptr %i.i, align 1
  %10 = load i8, ptr @gCompsInScan, align 1
  %cmp18.i = icmp ult i8 %storemerge, %10
  br i1 %cmp18.i, label %for.body.i, label %for.end58.i

for.body.i:                                       ; preds = %for.cond.i5
  %call20.i = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %conv21.i = trunc i16 %call20.i to i8
  store i8 %conv21.i, ptr %cc.i, align 1
  %call22.i = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %conv23.i = trunc i16 %call22.i to i8
  store i8 %conv23.i, ptr %c.i2, align 1
  %11 = load i16, ptr %left.i, align 2
  %sub25.i = add i16 %11, -2
  store i16 %sub25.i, ptr %left.i, align 2
  br label %for.cond27.i

for.cond27.i:                                     ; preds = %if.end38.i, %for.body.i
  %storemerge9 = phi i8 [ 0, %for.body.i ], [ %inc.i, %if.end38.i ]
  store i8 %storemerge9, ptr %ci.i, align 1
  %12 = load i8, ptr @gCompsInFrame, align 1
  %cmp30.i = icmp ult i8 %storemerge9, %12
  br i1 %cmp30.i, label %for.body32.i, label %for.end.i

for.body32.i:                                     ; preds = %for.cond27.i
  %13 = load i8, ptr %cc.i, align 1
  %14 = load i8, ptr %ci.i, align 1
  %idxprom.i = zext i8 %14 to i64
  %arrayidx.i = getelementptr inbounds [3 x i8], ptr @gCompIdent, i64 0, i64 %idxprom.i
  %15 = load i8, ptr %arrayidx.i, align 1
  %cmp35.i = icmp eq i8 %13, %15
  br i1 %cmp35.i, label %for.end.i, label %if.end38.i

if.end38.i:                                       ; preds = %for.body32.i
  %16 = load i8, ptr %ci.i, align 1
  %inc.i = add i8 %16, 1
  br label %for.cond27.i, !llvm.loop !43

for.end.i:                                        ; preds = %for.body32.i, %for.cond27.i
  %17 = load i8, ptr %ci.i, align 1
  %18 = load i8, ptr @gCompsInFrame, align 1
  %cmp41.i.not = icmp ult i8 %17, %18
  br i1 %cmp41.i.not, label %if.end44.i, label %if.then43.i

if.then43.i:                                      ; preds = %for.end.i
  store i8 15, ptr %retval.i1, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_202.exit

if.end44.i:                                       ; preds = %for.end.i
  %19 = load i8, ptr %ci.i, align 1
  %20 = load i8, ptr %i.i, align 1
  %idxprom45.i = zext i8 %20 to i64
  %arrayidx46.i = getelementptr inbounds [3 x i8], ptr @gCompList, i64 0, i64 %idxprom45.i
  store i8 %19, ptr %arrayidx46.i, align 1
  %21 = load i8, ptr %c.i2, align 1
  %22 = lshr i8 %21, 4
  %23 = load i8, ptr %ci.i, align 1
  %idxprom49.i = zext i8 %23 to i64
  %arrayidx50.i = getelementptr inbounds [3 x i8], ptr @gCompDCTab, i64 0, i64 %idxprom49.i
  store i8 %22, ptr %arrayidx50.i, align 1
  %24 = and i8 %21, 15
  %idxprom54.i = zext i8 %23 to i64
  %arrayidx55.i = getelementptr inbounds [3 x i8], ptr @gCompACTab, i64 0, i64 %idxprom54.i
  store i8 %24, ptr %arrayidx55.i, align 1
  %25 = load i8, ptr %i.i, align 1
  %inc57.i = add i8 %25, 1
  br label %for.cond.i5, !llvm.loop !44

for.end58.i:                                      ; preds = %for.cond.i5
  %call59.i = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %conv60.i = trunc i16 %call59.i to i8
  store volatile i8 %conv60.i, ptr @spectral_start, align 1
  %call61.i = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %conv62.i = trunc i16 %call61.i to i8
  store volatile i8 %conv62.i, ptr @spectral_end, align 1
  %call63.i = call zeroext i16 @getBits1(i8 noundef zeroext 4)
  %conv64.i = trunc i16 %call63.i to i8
  store volatile i8 %conv64.i, ptr @successive_high, align 1
  %call65.i = call zeroext i16 @getBits1(i8 noundef zeroext 4)
  %conv66.i = trunc i16 %call65.i to i8
  store volatile i8 %conv66.i, ptr @successive_low, align 1
  %26 = load i16, ptr %left.i, align 2
  %sub68.i = add i16 %26, -3
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i, %for.end58.i
  %storemerge8 = phi i16 [ %sub68.i, %for.end58.i ], [ %dec.i, %while.body.i ]
  store i16 %storemerge8, ptr %left.i, align 2
  %tobool.i.not = icmp eq i16 %storemerge8, 0
  br i1 %tobool.i.not, label %while.end.i, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %call70.i = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %27 = load i16, ptr %left.i, align 2
  %dec.i = add i16 %27, -1
  br label %while.cond.i, !llvm.loop !45

while.end.i:                                      ; preds = %while.cond.i
  store i8 0, ptr %retval.i1, align 1
  br label %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_202.exit

pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_202.exit: ; preds = %if.then.i, %if.then43.i, %while.end.i
  %28 = load i8, ptr %retval.i1, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %retval.i1)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %left.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cc.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %c.i2)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ci.i)
  store i8 %28, ptr %retval, align 1
  br label %return

return:                                           ; preds = %pc_inline_source_snapshot_public_repos_embench_iot_src_picojpeg_libpicojpeg_202.exit, %if.then6, %if.then2, %if.then
  %29 = load i8, ptr %retval, align 1
  ret i8 %29
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
  br label %for.cond, !llvm.loop !46

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
  br label %for.cond, !llvm.loop !47

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
  %2 = load i8, ptr @gInBufOfs, align 1
  %dec.i = add i8 %2, -1
  store i8 %dec.i, ptr @gInBufOfs, align 1
  %idxprom.i = zext i8 %dec.i to i64
  %arrayidx.i = getelementptr inbounds [256 x i8], ptr @gInBuf, i64 0, i64 %idxprom.i
  store i8 %conv2, ptr %arrayidx.i, align 1
  %3 = load i8, ptr @gInBufLeft, align 1
  %inc.i = add i8 %3, 1
  store i8 %inc.i, ptr @gInBufLeft, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i16, ptr @gBitBuf, align 2
  %5 = lshr i16 %4, 8
  %conv4 = trunc i16 %5 to i8
  %6 = load i8, ptr @gInBufOfs, align 1
  %dec.i2 = add i8 %6, -1
  store i8 %dec.i2, ptr @gInBufOfs, align 1
  %idxprom.i3 = zext i8 %dec.i2 to i64
  %arrayidx.i4 = getelementptr inbounds [256 x i8], ptr @gInBuf, i64 0, i64 %idxprom.i3
  store i8 %conv4, ptr %arrayidx.i4, align 1
  %7 = load i8, ptr @gInBufLeft, align 1
  %inc.i5 = add i8 %7, 1
  store i8 %inc.i5, ptr @gInBufLeft, align 1
  store i8 8, ptr @gBitsLeft, align 1
  %call.i = call zeroext i16 @getBits(i8 noundef zeroext 8, i8 noundef zeroext 1)
  %call.i7 = call zeroext i16 @getBits(i8 noundef zeroext 8, i8 noundef zeroext 1)
  ret void
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
