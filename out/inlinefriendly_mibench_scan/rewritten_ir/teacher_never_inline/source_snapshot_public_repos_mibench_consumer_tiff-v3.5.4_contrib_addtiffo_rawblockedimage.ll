; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_never_inline/source_snapshot_public_repos_mibench_consumer_tiff-v3.5.4_contrib_addtiffo_rawblockedimage.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/contrib/addtiffo/rawblockedimage.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%class.RawBlockedImage = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, i32, ptr, ptr, ptr }
%class.RawBlock = type { ptr, ptr, i32, i32, ptr }

@_ZZN15RawBlockedImageC1EiiiiiE12nTempCounter = internal global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"temp_%d.rbi\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"w+b\00", align 1
@__stderrp = external global ptr, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"Seek to %d in overview spill file %s failed.\0A\00", align 1
@.str.4 = private unnamed_addr constant [70 x i8] c"Write of %d bytes at %d in overview spill file %s.\0AIs the disk full?\0A\00", align 1
@__func__._ZN15RawBlockedImage11GetRawBlockEii = private unnamed_addr constant [12 x i8] c"GetRawBlock\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"rawblockedimage.cpp\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"nBlock >= 0 && nBlock < nBlocks\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"RawBlockedImage::GetRawBlock() - out of memory\0A\00", align 1

; Function Attrs: ssp uwtable
define noundef ptr @_ZN15RawBlockedImageC2Eiiiii(ptr noundef nonnull returned align 8 dereferenceable(96) %this, i32 noundef %nXSizeIn, i32 noundef %nYSizeIn, i32 noundef %nBlockXSizeIn, i32 noundef %nBlockYSizeIn, i32 noundef %nBitsPerPixelIn) unnamed_addr #0 align 2 {
entry:
  %retval = alloca ptr, align 8
  %nBlockXSizeIn.addr = alloca i32, align 4
  %nBlockYSizeIn.addr = alloca i32, align 4
  %nBitsPerPixelIn.addr = alloca i32, align 4
  %szFilename = alloca [128 x i8], align 1
  store i32 %nBlockXSizeIn, ptr %nBlockXSizeIn.addr, align 4
  store i32 %nBlockYSizeIn, ptr %nBlockYSizeIn.addr, align 4
  store i32 %nBitsPerPixelIn, ptr %nBitsPerPixelIn.addr, align 4
  store ptr %this, ptr %retval, align 8
  store i32 %nXSizeIn, ptr %this, align 8
  %nYSize = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 1
  store i32 %nYSizeIn, ptr %nYSize, align 4
  %0 = load i32, ptr %nBlockXSizeIn.addr, align 4
  %nBlockXSize = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 2
  store i32 %0, ptr %nBlockXSize, align 8
  %1 = load i32, ptr %nBlockYSizeIn.addr, align 4
  %nBlockYSize = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 3
  store i32 %1, ptr %nBlockYSize, align 4
  %2 = load i32, ptr %nBitsPerPixelIn.addr, align 4
  %nBitsPerPixel = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 4
  store i32 %2, ptr %nBitsPerPixel, align 8
  %fp = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 12
  store ptr null, ptr %fp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %fp2 = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 12
  %3 = load ptr, ptr %fp2, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, ptr @_ZZN15RawBlockedImageC1EiiiiiE12nTempCounter, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr @_ZZN15RawBlockedImageC1EiiiiiE12nTempCounter, align 4
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %szFilename, ptr noundef nonnull @.str, i32 noundef %4)
  %call4 = call ptr @"\01_fopen"(ptr noundef nonnull %szFilename, ptr noundef nonnull @.str.1)
  %fp5 = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 12
  store ptr %call4, ptr %fp5, align 8
  %cmp7.not = icmp eq ptr %call4, null
  br i1 %cmp7.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  %fp8 = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 12
  %5 = load ptr, ptr %fp8, align 8
  %call9 = call i32 @fclose(ptr noundef %5)
  br label %if.end

if.else:                                          ; preds = %while.body
  %call11 = call ptr @"\01_fopen"(ptr noundef nonnull %szFilename, ptr noundef nonnull @.str.2)
  %fp12 = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 12
  store ptr %call11, ptr %fp12, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %call14 = call ptr @strdup(ptr noundef nonnull %szFilename)
  %pszFilename = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 14
  store ptr %call14, ptr %pszFilename, align 8
  %nCurFileSize = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 13
  store i32 0, ptr %nCurFileSize, align 8
  %6 = load i32, ptr %this, align 8
  %nBlockXSize16 = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 2
  %7 = load i32, ptr %nBlockXSize16, align 8
  %add = add nsw i32 %6, %7
  %sub = add nsw i32 %add, -1
  %div = sdiv i32 %sub, %7
  %nBlocksPerRow = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 6
  store i32 %div, ptr %nBlocksPerRow, align 8
  %nYSize18 = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 1
  %8 = load i32, ptr %nYSize18, align 4
  %nBlockYSize19 = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 3
  %9 = load i32, ptr %nBlockYSize19, align 4
  %add20 = add nsw i32 %8, %9
  %sub21 = add nsw i32 %add20, -1
  %div23 = sdiv i32 %sub21, %9
  %nBlocksPerColumn = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 7
  store i32 %div23, ptr %nBlocksPerColumn, align 4
  %nBlockXSize24 = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 2
  %10 = load i32, ptr %nBlockXSize24, align 8
  %nBlockYSize25 = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 3
  %11 = load i32, ptr %nBlockYSize25, align 4
  %mul = mul nsw i32 %10, %11
  %nBitsPerPixel26 = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 4
  %12 = load i32, ptr %nBitsPerPixel26, align 8
  %mul27 = mul nsw i32 %mul, %12
  %add28 = add nsw i32 %mul27, 7
  %div29 = sdiv i32 %add28, 8
  %nBytesPerBlock = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 5
  store i32 %div29, ptr %nBytesPerBlock, align 4
  %nBlocksPerRow30 = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 6
  %13 = load i32, ptr %nBlocksPerRow30, align 8
  %nBlocksPerColumn31 = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 7
  %14 = load i32, ptr %nBlocksPerColumn31, align 4
  %mul32 = mul nsw i32 %13, %14
  %nBlocks = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 8
  store i32 %mul32, ptr %nBlocks, align 8
  %nBlocksInCache = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 10
  store i32 0, ptr %nBlocksInCache, align 8
  %nBlocksPerRow34 = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 6
  %15 = load i32, ptr %nBlocksPerRow34, align 8
  %mul35 = shl nsw i32 %15, 1
  %cmp36 = icmp slt i32 %mul32, %mul35
  %nBlocks37 = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 8
  %16 = load i32, ptr %nBlocks37, align 8
  %nBlocksPerRow38 = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 6
  %17 = load i32, ptr %nBlocksPerRow38, align 8
  %mul39 = shl nsw i32 %17, 1
  %cond = select i1 %cmp36, i32 %16, i32 %mul39
  %nMaxBlocksInCache = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 11
  store i32 %cond, ptr %nMaxBlocksInCache, align 4
  %nBlocks40 = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 8
  %18 = load i32, ptr %nBlocks40, align 8
  %conv = sext i32 %18 to i64
  %call41 = call ptr @calloc(i64 noundef 8, i64 noundef %conv) #12
  %papoBlocks = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 9
  store ptr %call41, ptr %papoBlocks, align 8
  %poLRUHead = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 15
  store ptr null, ptr %poLRUHead, align 8
  %poLRUTail = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 16
  store ptr null, ptr %poLRUTail, align 8
  %19 = load ptr, ptr %retval, align 8
  ret ptr %19
}

declare i32 @sprintf(ptr noundef, ptr noundef, ...) #1

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

declare i32 @fclose(ptr noundef) #1

declare ptr @strdup(ptr noundef) #1

; Function Attrs: allocsize(0,1)
declare ptr @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: ssp uwtable
define noundef ptr @_ZN15RawBlockedImageC1Eiiiii(ptr noundef nonnull returned align 8 dereferenceable(96) %this, i32 noundef %nXSizeIn, i32 noundef %nYSizeIn, i32 noundef %nBlockXSizeIn, i32 noundef %nBlockYSizeIn, i32 noundef %nBitsPerPixelIn) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZN15RawBlockedImageC2Eiiiii(ptr noundef nonnull align 8 dereferenceable(96) %this, i32 noundef %nXSizeIn, i32 noundef %nYSizeIn, i32 noundef %nBlockXSizeIn, i32 noundef %nBlockYSizeIn, i32 noundef %nBitsPerPixelIn)
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define noundef ptr @_ZN15RawBlockedImageD2Ev(ptr noundef nonnull returned align 8 dereferenceable(96) %this) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %this, ptr %retval, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr %i, align 4
  %nBlocks = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 8
  %0 = load i32, ptr %nBlocks, align 8
  %cmp = icmp slt i32 %storemerge, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %papoBlocks = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 9
  %1 = load ptr, ptr %papoBlocks, align 8
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %idxprom
  %3 = load ptr, ptr %arrayidx, align 8
  %cmp2.not = icmp eq ptr %3, null
  br i1 %cmp2.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %papoBlocks3 = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 9
  %4 = load ptr, ptr %papoBlocks3, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds ptr, ptr %4, i64 %idxprom4
  %6 = load ptr, ptr %arrayidx5, align 8
  %pabyData = getelementptr inbounds %class.RawBlock, ptr %6, i64 0, i32 4
  %7 = load ptr, ptr %pabyData, align 8
  %cmp6.not = icmp eq ptr %7, null
  br i1 %cmp6.not, label %if.end, label %if.then7

if.then7:                                         ; preds = %if.then
  %papoBlocks8 = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 9
  %8 = load ptr, ptr %papoBlocks8, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds ptr, ptr %8, i64 %idxprom9
  %10 = load ptr, ptr %arrayidx10, align 8
  %pabyData11 = getelementptr inbounds %class.RawBlock, ptr %10, i64 0, i32 4
  %11 = load ptr, ptr %pabyData11, align 8
  invoke void @free(ptr noundef %11)
          to label %if.end unwind label %terminate.lpad

if.end:                                           ; preds = %if.then7, %if.then
  %papoBlocks12 = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 9
  %12 = load ptr, ptr %papoBlocks12, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom13 = sext i32 %13 to i64
  %arrayidx14 = getelementptr inbounds ptr, ptr %12, i64 %idxprom13
  %14 = load ptr, ptr %arrayidx14, align 8
  %isnull = icmp eq ptr %14, null
  br i1 %isnull, label %for.inc, label %delete.notnull

delete.notnull:                                   ; preds = %if.end
  call void @_ZdlPv(ptr noundef %14) #13
  br label %for.inc

for.inc:                                          ; preds = %for.body, %delete.notnull, %if.end
  %15 = load i32, ptr %i, align 4
  %inc = add nsw i32 %15, 1
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %papoBlocks16 = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 9
  %16 = load ptr, ptr %papoBlocks16, align 8
  %cmp17.not = icmp eq ptr %16, null
  br i1 %cmp17.not, label %if.end21, label %if.then18

if.then18:                                        ; preds = %for.end
  %papoBlocks19 = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 9
  %17 = load ptr, ptr %papoBlocks19, align 8
  invoke void @free(ptr noundef %17)
          to label %if.end21 unwind label %terminate.lpad

if.end21:                                         ; preds = %if.then18, %for.end
  %fp = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 12
  %18 = load ptr, ptr %fp, align 8
  %call = invoke i32 @fclose(ptr noundef %18)
          to label %invoke.cont22 unwind label %terminate.lpad

invoke.cont22:                                    ; preds = %if.end21
  %pszFilename = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 14
  %19 = load ptr, ptr %pszFilename, align 8
  %call24 = invoke i32 @unlink(ptr noundef %19)
          to label %invoke.cont23 unwind label %terminate.lpad

invoke.cont23:                                    ; preds = %invoke.cont22
  %pszFilename25 = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 14
  %20 = load ptr, ptr %pszFilename25, align 8
  invoke void @free(ptr noundef %20)
          to label %invoke.cont26 unwind label %terminate.lpad

invoke.cont26:                                    ; preds = %invoke.cont23
  %21 = load ptr, ptr %retval, align 8
  ret ptr %21

terminate.lpad:                                   ; preds = %invoke.cont23, %invoke.cont22, %if.end21, %if.then18, %if.then7
  %22 = landingpad { ptr, i32 }
          catch ptr null
  %23 = extractvalue { ptr, i32 } %22, 0
  call void @__clang_call_terminate(ptr %23) #4
  unreachable
}

declare void @free(ptr noundef) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(ptr %0) #4 {
  %2 = call ptr @__cxa_begin_catch(ptr %0) #14
  call void @_ZSt9terminatev() #4
  unreachable
}

declare ptr @__cxa_begin_catch(ptr)

declare void @_ZSt9terminatev()

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #5

declare i32 @unlink(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define noundef ptr @_ZN15RawBlockedImageD1Ev(ptr noundef nonnull returned align 8 dereferenceable(96) %this) unnamed_addr #3 align 2 {
entry:
  %call = call noundef ptr @_ZN15RawBlockedImageD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %this) #14
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define void @_ZN15RawBlockedImage15InsertInLRUListEP8RawBlock(ptr noundef nonnull align 8 dereferenceable(96) %this, ptr noundef %poBlock) #6 align 2 {
entry:
  %poBlock.addr = alloca ptr, align 8
  store ptr %poBlock, ptr %poBlock.addr, align 8
  %poPrevLRU = getelementptr inbounds %class.RawBlock, ptr %poBlock, i64 0, i32 1
  %0 = load ptr, ptr %poPrevLRU, align 8
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %poLRUHead = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 15
  %1 = load ptr, ptr %poLRUHead, align 8
  %2 = load ptr, ptr %poBlock.addr, align 8
  %cmp2 = icmp eq ptr %1, %2
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load ptr, ptr %poBlock.addr, align 8
  call void @_ZN15RawBlockedImage17RemoveFromLRUListEP8RawBlock(ptr noundef nonnull align 8 dereferenceable(96) %this, ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %poLRUHead3 = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 15
  %4 = load ptr, ptr %poLRUHead3, align 8
  %cmp4.not = icmp eq ptr %4, null
  br i1 %cmp4.not, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.end
  %5 = load ptr, ptr %poBlock.addr, align 8
  %poLRUHead6 = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 15
  %6 = load ptr, ptr %poLRUHead6, align 8
  %poPrevLRU7 = getelementptr inbounds %class.RawBlock, ptr %6, i64 0, i32 1
  store ptr %5, ptr %poPrevLRU7, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end
  %poLRUHead9 = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 15
  %7 = load ptr, ptr %poLRUHead9, align 8
  %8 = load ptr, ptr %poBlock.addr, align 8
  store ptr %7, ptr %8, align 8
  %poLRUHead10 = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 15
  store ptr %8, ptr %poLRUHead10, align 8
  %poLRUTail = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 16
  %9 = load ptr, ptr %poLRUTail, align 8
  %cmp11 = icmp eq ptr %9, null
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end8
  %10 = load ptr, ptr %poBlock.addr, align 8
  %poLRUTail13 = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 16
  store ptr %10, ptr %poLRUTail13, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end8
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define void @_ZN15RawBlockedImage17RemoveFromLRUListEP8RawBlock(ptr noundef nonnull align 8 dereferenceable(96) %this, ptr noundef %poBlock) #7 align 2 {
entry:
  %poBlock.addr = alloca ptr, align 8
  store ptr %poBlock, ptr %poBlock.addr, align 8
  %poPrevLRU = getelementptr inbounds %class.RawBlock, ptr %poBlock, i64 0, i32 1
  %0 = load ptr, ptr %poPrevLRU, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %poLRUHead = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 15
  %1 = load ptr, ptr %poLRUHead, align 8
  %2 = load ptr, ptr %poBlock.addr, align 8
  %cmp2.not = icmp eq ptr %1, %2
  br i1 %cmp2.not, label %if.end, label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load ptr, ptr %poBlock.addr, align 8
  %poPrevLRU3 = getelementptr inbounds %class.RawBlock, ptr %3, i64 0, i32 1
  %4 = load ptr, ptr %poPrevLRU3, align 8
  %cmp4 = icmp eq ptr %4, null
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %5 = load ptr, ptr %poBlock.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %poLRUHead6 = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 15
  store ptr %6, ptr %poLRUHead6, align 8
  br label %if.end10

if.else:                                          ; preds = %if.end
  %7 = load ptr, ptr %poBlock.addr, align 8
  %8 = load ptr, ptr %7, align 8
  %poPrevLRU8 = getelementptr inbounds %class.RawBlock, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %poPrevLRU8, align 8
  store ptr %8, ptr %9, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then5
  %10 = load ptr, ptr %poBlock.addr, align 8
  %11 = load ptr, ptr %10, align 8
  %cmp12 = icmp eq ptr %11, null
  br i1 %cmp12, label %if.then13, label %if.else15

if.then13:                                        ; preds = %if.end10
  %12 = load ptr, ptr %poBlock.addr, align 8
  %poPrevLRU14 = getelementptr inbounds %class.RawBlock, ptr %12, i64 0, i32 1
  %13 = load ptr, ptr %poPrevLRU14, align 8
  %poLRUTail = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 16
  store ptr %13, ptr %poLRUTail, align 8
  br label %if.end19

if.else15:                                        ; preds = %if.end10
  %14 = load ptr, ptr %poBlock.addr, align 8
  %poPrevLRU16 = getelementptr inbounds %class.RawBlock, ptr %14, i64 0, i32 1
  %15 = load ptr, ptr %poPrevLRU16, align 8
  %16 = load ptr, ptr %14, align 8
  %poPrevLRU18 = getelementptr inbounds %class.RawBlock, ptr %16, i64 0, i32 1
  store ptr %15, ptr %poPrevLRU18, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.else15, %if.then13
  %17 = load ptr, ptr %poBlock.addr, align 8
  store ptr null, ptr %17, align 8
  %poPrevLRU21 = getelementptr inbounds %class.RawBlock, ptr %17, i64 0, i32 1
  store ptr null, ptr %poPrevLRU21, align 8
  br label %return

return:                                           ; preds = %land.lhs.true, %if.end19
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define void @_ZN15RawBlockedImage10FlushBlockEP8RawBlock(ptr noundef nonnull align 8 dereferenceable(96) %this, ptr noundef %poBlock) #6 align 2 {
entry:
  %poBlock.addr = alloca ptr, align 8
  store ptr %poBlock, ptr %poBlock.addr, align 8
  %cmp = icmp eq ptr %poBlock, null
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %poLRUTail = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 16
  %0 = load ptr, ptr %poLRUTail, align 8
  %cmp2 = icmp eq ptr %0, null
  br i1 %cmp2, label %return, label %if.end

if.end:                                           ; preds = %if.then
  %poLRUTail4 = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 16
  %1 = load ptr, ptr %poLRUTail4, align 8
  store ptr %1, ptr %poBlock.addr, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %2 = load ptr, ptr %poBlock.addr, align 8
  call void @_ZN15RawBlockedImage17RemoveFromLRUListEP8RawBlock(ptr noundef nonnull align 8 dereferenceable(96) %this, ptr noundef %2)
  %pabyData = getelementptr inbounds %class.RawBlock, ptr %2, i64 0, i32 4
  %3 = load ptr, ptr %pabyData, align 8
  %cmp6 = icmp eq ptr %3, null
  br i1 %cmp6, label %return, label %if.end8

if.end8:                                          ; preds = %if.end5
  %4 = load ptr, ptr %poBlock.addr, align 8
  %nDirty = getelementptr inbounds %class.RawBlock, ptr %4, i64 0, i32 2
  %5 = load i32, ptr %nDirty, align 8
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end36, label %if.then9

if.then9:                                         ; preds = %if.end8
  %6 = load ptr, ptr %poBlock.addr, align 8
  %nPositionInFile = getelementptr inbounds %class.RawBlock, ptr %6, i64 0, i32 3
  %7 = load i32, ptr %nPositionInFile, align 4
  %cmp10 = icmp eq i32 %7, -1
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.then9
  %nCurFileSize = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 13
  %8 = load i32, ptr %nCurFileSize, align 8
  %9 = load ptr, ptr %poBlock.addr, align 8
  %nPositionInFile12 = getelementptr inbounds %class.RawBlock, ptr %9, i64 0, i32 3
  store i32 %8, ptr %nPositionInFile12, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.then9
  %nBytesPerBlock = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 5
  %10 = load i32, ptr %nBytesPerBlock, align 4
  %nCurFileSize14 = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 13
  %11 = load i32, ptr %nCurFileSize14, align 8
  %add = add nsw i32 %11, %10
  store i32 %add, ptr %nCurFileSize14, align 8
  %fp = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 12
  %12 = load ptr, ptr %fp, align 8
  %13 = load ptr, ptr %poBlock.addr, align 8
  %nPositionInFile15 = getelementptr inbounds %class.RawBlock, ptr %13, i64 0, i32 3
  %14 = load i32, ptr %nPositionInFile15, align 4
  %conv = sext i32 %14 to i64
  %call = call i32 @fseek(ptr noundef %12, i64 noundef %conv, i32 noundef 0)
  %cmp16.not = icmp eq i32 %call, 0
  br i1 %cmp16.not, label %if.end20, label %if.then17

if.then17:                                        ; preds = %if.end13
  %15 = load ptr, ptr @__stderrp, align 8
  %16 = load ptr, ptr %poBlock.addr, align 8
  %nPositionInFile18 = getelementptr inbounds %class.RawBlock, ptr %16, i64 0, i32 3
  %17 = load i32, ptr %nPositionInFile18, align 4
  %pszFilename = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 14
  %18 = load ptr, ptr %pszFilename, align 8
  %call19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.3, i32 noundef %17, ptr noundef %18)
  call void @exit(i32 noundef 1) #15
  unreachable

if.end20:                                         ; preds = %if.end13
  %19 = load ptr, ptr %poBlock.addr, align 8
  %pabyData21 = getelementptr inbounds %class.RawBlock, ptr %19, i64 0, i32 4
  %20 = load ptr, ptr %pabyData21, align 8
  %nBytesPerBlock22 = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 5
  %21 = load i32, ptr %nBytesPerBlock22, align 4
  %conv23 = sext i32 %21 to i64
  %fp24 = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 12
  %22 = load ptr, ptr %fp24, align 8
  %call25 = call i64 @"\01_fwrite"(ptr noundef %20, i64 noundef 1, i64 noundef %conv23, ptr noundef %22)
  %nBytesPerBlock26 = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 5
  %23 = load i32, ptr %nBytesPerBlock26, align 4
  %conv27 = sext i32 %23 to i64
  %cmp28.not = icmp eq i64 %call25, %conv27
  br i1 %cmp28.not, label %if.end34, label %if.then29

if.then29:                                        ; preds = %if.end20
  %24 = load ptr, ptr @__stderrp, align 8
  %nBytesPerBlock30 = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 5
  %25 = load i32, ptr %nBytesPerBlock30, align 4
  %26 = load ptr, ptr %poBlock.addr, align 8
  %nPositionInFile31 = getelementptr inbounds %class.RawBlock, ptr %26, i64 0, i32 3
  %27 = load i32, ptr %nPositionInFile31, align 4
  %pszFilename32 = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 14
  %28 = load ptr, ptr %pszFilename32, align 8
  %call33 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.4, i32 noundef %25, i32 noundef %27, ptr noundef %28)
  call void @exit(i32 noundef 1) #15
  unreachable

if.end34:                                         ; preds = %if.end20
  %29 = load ptr, ptr %poBlock.addr, align 8
  %nDirty35 = getelementptr inbounds %class.RawBlock, ptr %29, i64 0, i32 2
  store i32 0, ptr %nDirty35, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.end34, %if.end8
  %nBlocksInCache = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 10
  %30 = load i32, ptr %nBlocksInCache, align 8
  %dec = add nsw i32 %30, -1
  store i32 %dec, ptr %nBlocksInCache, align 8
  %31 = load ptr, ptr %poBlock.addr, align 8
  %pabyData37 = getelementptr inbounds %class.RawBlock, ptr %31, i64 0, i32 4
  %32 = load ptr, ptr %pabyData37, align 8
  %cmp38.not = icmp eq ptr %32, null
  br i1 %cmp38.not, label %if.end41, label %if.then39

if.then39:                                        ; preds = %if.end36
  %33 = load ptr, ptr %poBlock.addr, align 8
  %pabyData40 = getelementptr inbounds %class.RawBlock, ptr %33, i64 0, i32 4
  %34 = load ptr, ptr %pabyData40, align 8
  call void @free(ptr noundef %34)
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end36
  %35 = load ptr, ptr %poBlock.addr, align 8
  %pabyData42 = getelementptr inbounds %class.RawBlock, ptr %35, i64 0, i32 4
  store ptr null, ptr %pabyData42, align 8
  br label %return

return:                                           ; preds = %if.end5, %if.then, %if.end41
  ret void
}

declare i32 @fseek(ptr noundef, i64 noundef, i32 noundef) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #8

declare i64 @"\01_fwrite"(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

; Function Attrs: mustprogress ssp uwtable
define noundef ptr @_ZN15RawBlockedImage11GetRawBlockEii(ptr noundef nonnull align 8 dereferenceable(96) %this, i32 noundef %nXOff, i32 noundef %nYOff) #6 align 2 {
entry:
  %nBlock = alloca i32, align 4
  %poBlock = alloca ptr, align 8
  %nBlocksPerRow = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 6
  %0 = load i32, ptr %nBlocksPerRow, align 8
  %mul = mul nsw i32 %0, %nYOff
  %add = add nsw i32 %mul, %nXOff
  store i32 %add, ptr %nBlock, align 4
  %cmp = icmp sgt i32 %add, -1
  %1 = load i32, ptr %nBlock, align 4
  %nBlocks = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 8
  %2 = load i32, ptr %nBlocks, align 8
  %cmp2 = icmp sge i32 %1, %2
  %3 = select i1 %cmp, i1 %cmp2, i1 true
  br i1 %3, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__._ZN15RawBlockedImage11GetRawBlockEii, ptr noundef nonnull @.str.5, i32 noundef 308, ptr noundef nonnull @.str.6) #16
  unreachable

cond.end:                                         ; preds = %entry
  %papoBlocks = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 9
  %4 = load ptr, ptr %papoBlocks, align 8
  %5 = load i32, ptr %nBlock, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %idxprom
  %6 = load ptr, ptr %arrayidx, align 8
  store ptr %6, ptr %poBlock, align 8
  %cmp3 = icmp eq ptr %6, null
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %call = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #17
  %papoBlocks4 = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 9
  %7 = load ptr, ptr %papoBlocks4, align 8
  %8 = load i32, ptr %nBlock, align 4
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds ptr, ptr %7, i64 %idxprom5
  store ptr %call, ptr %arrayidx6, align 8
  store ptr %call, ptr %poBlock, align 8
  %nDirty = getelementptr inbounds %class.RawBlock, ptr %call, i64 0, i32 2
  store i32 0, ptr %nDirty, align 8
  store ptr null, ptr %call, align 8
  %poPrevLRU = getelementptr inbounds %class.RawBlock, ptr %call, i64 0, i32 1
  store ptr null, ptr %poPrevLRU, align 8
  %nPositionInFile = getelementptr inbounds %class.RawBlock, ptr %call, i64 0, i32 3
  store i32 -1, ptr %nPositionInFile, align 4
  %nBytesPerBlock = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 5
  %9 = load i32, ptr %nBytesPerBlock, align 4
  %conv = sext i32 %9 to i64
  %call7 = call ptr @calloc(i64 noundef 1, i64 noundef %conv) #12
  %10 = load ptr, ptr %poBlock, align 8
  %pabyData = getelementptr inbounds %class.RawBlock, ptr %10, i64 0, i32 4
  store ptr %call7, ptr %pabyData, align 8
  %nBlocksInCache = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 10
  %11 = load i32, ptr %nBlocksInCache, align 8
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %nBlocksInCache, align 8
  %12 = load ptr, ptr %poBlock, align 8
  %pabyData8 = getelementptr inbounds %class.RawBlock, ptr %12, i64 0, i32 4
  %13 = load ptr, ptr %pabyData8, align 8
  %cmp9 = icmp eq ptr %13, null
  br i1 %cmp9, label %if.then10, label %if.end46

if.then10:                                        ; preds = %if.then
  %14 = load ptr, ptr @__stderrp, align 8
  %15 = call i64 @fwrite(ptr nonnull @.str.7, i64 47, i64 1, ptr %14)
  call void @exit(i32 noundef 1) #15
  unreachable

if.else:                                          ; preds = %cond.end
  %16 = load ptr, ptr %poBlock, align 8
  %nPositionInFile12 = getelementptr inbounds %class.RawBlock, ptr %16, i64 0, i32 3
  %17 = load i32, ptr %nPositionInFile12, align 4
  %cmp13 = icmp sgt i32 %17, -1
  br i1 %cmp13, label %land.lhs.true, label %if.else31

land.lhs.true:                                    ; preds = %if.else
  %18 = load ptr, ptr %poBlock, align 8
  %pabyData14 = getelementptr inbounds %class.RawBlock, ptr %18, i64 0, i32 4
  %19 = load ptr, ptr %pabyData14, align 8
  %cmp15 = icmp eq ptr %19, null
  br i1 %cmp15, label %if.then16, label %if.else31

if.then16:                                        ; preds = %land.lhs.true
  %nBlocksInCache17 = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 10
  %20 = load i32, ptr %nBlocksInCache17, align 8
  %inc18 = add nsw i32 %20, 1
  store i32 %inc18, ptr %nBlocksInCache17, align 8
  %nBytesPerBlock19 = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 5
  %21 = load i32, ptr %nBytesPerBlock19, align 4
  %conv20 = sext i32 %21 to i64
  %call21 = call ptr @calloc(i64 noundef 1, i64 noundef %conv20) #12
  %22 = load ptr, ptr %poBlock, align 8
  %pabyData22 = getelementptr inbounds %class.RawBlock, ptr %22, i64 0, i32 4
  store ptr %call21, ptr %pabyData22, align 8
  %fp = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 12
  %23 = load ptr, ptr %fp, align 8
  %nPositionInFile23 = getelementptr inbounds %class.RawBlock, ptr %22, i64 0, i32 3
  %24 = load i32, ptr %nPositionInFile23, align 4
  %conv24 = sext i32 %24 to i64
  %call25 = call i32 @fseek(ptr noundef %23, i64 noundef %conv24, i32 noundef 0)
  %25 = load ptr, ptr %poBlock, align 8
  %pabyData26 = getelementptr inbounds %class.RawBlock, ptr %25, i64 0, i32 4
  %26 = load ptr, ptr %pabyData26, align 8
  %nBytesPerBlock27 = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 5
  %27 = load i32, ptr %nBytesPerBlock27, align 4
  %conv28 = sext i32 %27 to i64
  %fp29 = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 12
  %28 = load ptr, ptr %fp29, align 8
  %call30 = call i64 @fread(ptr noundef %26, i64 noundef %conv28, i64 noundef 1, ptr noundef %28)
  br label %if.end46

if.else31:                                        ; preds = %land.lhs.true, %if.else
  %29 = load ptr, ptr %poBlock, align 8
  %pabyData32 = getelementptr inbounds %class.RawBlock, ptr %29, i64 0, i32 4
  %30 = load ptr, ptr %pabyData32, align 8
  %cmp33 = icmp eq ptr %30, null
  br i1 %cmp33, label %if.then34, label %if.end46

if.then34:                                        ; preds = %if.else31
  %nBytesPerBlock35 = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 5
  %31 = load i32, ptr %nBytesPerBlock35, align 4
  %conv36 = sext i32 %31 to i64
  %call37 = call ptr @calloc(i64 noundef 1, i64 noundef %conv36) #12
  %32 = load ptr, ptr %poBlock, align 8
  %pabyData38 = getelementptr inbounds %class.RawBlock, ptr %32, i64 0, i32 4
  store ptr %call37, ptr %pabyData38, align 8
  %cmp40 = icmp eq ptr %call37, null
  br i1 %cmp40, label %if.then41, label %if.end46

if.then41:                                        ; preds = %if.then34
  %33 = load ptr, ptr @__stderrp, align 8
  %34 = call i64 @fwrite(ptr nonnull @.str.7, i64 47, i64 1, ptr %33)
  call void @exit(i32 noundef 1) #15
  unreachable

if.end46:                                         ; preds = %if.then16, %if.then34, %if.else31, %if.then
  %35 = load ptr, ptr %poBlock, align 8
  call void @_ZN15RawBlockedImage15InsertInLRUListEP8RawBlock(ptr noundef nonnull align 8 dereferenceable(96) %this, ptr noundef %35)
  %nBlocksInCache47 = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 10
  %36 = load i32, ptr %nBlocksInCache47, align 8
  %nMaxBlocksInCache = getelementptr inbounds %class.RawBlockedImage, ptr %this, i64 0, i32 11
  %37 = load i32, ptr %nMaxBlocksInCache, align 4
  %cmp48 = icmp sgt i32 %36, %37
  br i1 %cmp48, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end46
  call void @_ZN15RawBlockedImage10FlushBlockEP8RawBlock(ptr noundef nonnull align 8 dereferenceable(96) %this, ptr noundef null)
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end46
  %38 = load ptr, ptr %poBlock, align 8
  ret ptr %38
}

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) #10

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

; Function Attrs: mustprogress ssp uwtable
define noundef ptr @_ZN15RawBlockedImage7GetTileEii(ptr noundef nonnull align 8 dereferenceable(96) %this, i32 noundef %nXOff, i32 noundef %nYOff) #6 align 2 {
entry:
  %poBlock = alloca ptr, align 8
  %call = call noundef ptr @_ZN15RawBlockedImage11GetRawBlockEii(ptr noundef nonnull align 8 dereferenceable(96) %this, i32 noundef %nXOff, i32 noundef %nYOff)
  store ptr %call, ptr %poBlock, align 8
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %poBlock, align 8
  %pabyData = getelementptr inbounds %class.RawBlock, ptr %0, i64 0, i32 4
  %1 = load ptr, ptr %pabyData, align 8
  br label %return

return:                                           ; preds = %entry, %if.then
  %storemerge = phi ptr [ %1, %if.then ], [ null, %entry ]
  ret ptr %storemerge
}

; Function Attrs: mustprogress ssp uwtable
define noundef ptr @_ZN15RawBlockedImage16GetTileForUpdateEii(ptr noundef nonnull align 8 dereferenceable(96) %this, i32 noundef %nXOff, i32 noundef %nYOff) #6 align 2 {
entry:
  %poBlock = alloca ptr, align 8
  %call = call noundef ptr @_ZN15RawBlockedImage11GetRawBlockEii(ptr noundef nonnull align 8 dereferenceable(96) %this, i32 noundef %nXOff, i32 noundef %nYOff)
  store ptr %call, ptr %poBlock, align 8
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %poBlock, align 8
  %nDirty = getelementptr inbounds %class.RawBlock, ptr %0, i64 0, i32 2
  store i32 1, ptr %nDirty, align 8
  %pabyData = getelementptr inbounds %class.RawBlock, ptr %0, i64 0, i32 4
  %1 = load ptr, ptr %pabyData, align 8
  br label %return

return:                                           ; preds = %entry, %if.then
  %storemerge = phi ptr [ %1, %if.then ], [ null, %entry ]
  ret ptr %storemerge
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) #11

attributes #0 = { ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { allocsize(0,1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nobuiltin nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { mustprogress ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { mustprogress nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #8 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #9 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #10 = { nobuiltin allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #11 = { nofree nounwind }
attributes #12 = { allocsize(0,1) }
attributes #13 = { builtin nounwind }
attributes #14 = { nounwind }
attributes #15 = { noreturn }
attributes #16 = { cold noreturn }
attributes #17 = { builtin allocsize(0) }

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
