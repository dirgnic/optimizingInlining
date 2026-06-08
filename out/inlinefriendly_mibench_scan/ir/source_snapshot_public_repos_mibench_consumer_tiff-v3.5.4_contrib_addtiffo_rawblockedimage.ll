; ModuleID = './source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/contrib/addtiffo/rawblockedimage.cpp'
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

; Function Attrs: noinline optnone ssp uwtable
define noundef ptr @_ZN15RawBlockedImageC2Eiiiii(ptr noundef nonnull returned align 8 dereferenceable(96) %this, i32 noundef %nXSizeIn, i32 noundef %nYSizeIn, i32 noundef %nBlockXSizeIn, i32 noundef %nBlockYSizeIn, i32 noundef %nBitsPerPixelIn) unnamed_addr #0 align 2 {
entry:
  %retval = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  %nXSizeIn.addr = alloca i32, align 4
  %nYSizeIn.addr = alloca i32, align 4
  %nBlockXSizeIn.addr = alloca i32, align 4
  %nBlockYSizeIn.addr = alloca i32, align 4
  %nBitsPerPixelIn.addr = alloca i32, align 4
  %szFilename = alloca [128 x i8], align 1
  store ptr %this, ptr %this.addr, align 8
  store i32 %nXSizeIn, ptr %nXSizeIn.addr, align 4
  store i32 %nYSizeIn, ptr %nYSizeIn.addr, align 4
  store i32 %nBlockXSizeIn, ptr %nBlockXSizeIn.addr, align 4
  store i32 %nBlockYSizeIn, ptr %nBlockYSizeIn.addr, align 4
  store i32 %nBitsPerPixelIn, ptr %nBitsPerPixelIn.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  store ptr %this1, ptr %retval, align 8
  %0 = load i32, ptr %nXSizeIn.addr, align 4
  %nXSize = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 0
  store i32 %0, ptr %nXSize, align 8
  %1 = load i32, ptr %nYSizeIn.addr, align 4
  %nYSize = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 1
  store i32 %1, ptr %nYSize, align 4
  %2 = load i32, ptr %nBlockXSizeIn.addr, align 4
  %nBlockXSize = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 2
  store i32 %2, ptr %nBlockXSize, align 8
  %3 = load i32, ptr %nBlockYSizeIn.addr, align 4
  %nBlockYSize = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 3
  store i32 %3, ptr %nBlockYSize, align 4
  %4 = load i32, ptr %nBitsPerPixelIn.addr, align 4
  %nBitsPerPixel = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 4
  store i32 %4, ptr %nBitsPerPixel, align 8
  %fp = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 12
  store ptr null, ptr %fp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %fp2 = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 12
  %5 = load ptr, ptr %fp2, align 8
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay = getelementptr inbounds [128 x i8], ptr %szFilename, i64 0, i64 0
  %6 = load i32, ptr @_ZZN15RawBlockedImageC1EiiiiiE12nTempCounter, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr @_ZZN15RawBlockedImageC1EiiiiiE12nTempCounter, align 4
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay, ptr noundef @.str, i32 noundef %6)
  %arraydecay3 = getelementptr inbounds [128 x i8], ptr %szFilename, i64 0, i64 0
  %call4 = call ptr @"\01_fopen"(ptr noundef %arraydecay3, ptr noundef @.str.1)
  %fp5 = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 12
  store ptr %call4, ptr %fp5, align 8
  %fp6 = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 12
  %7 = load ptr, ptr %fp6, align 8
  %cmp7 = icmp ne ptr %7, null
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %fp8 = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 12
  %8 = load ptr, ptr %fp8, align 8
  %call9 = call i32 @fclose(ptr noundef %8)
  br label %if.end

if.else:                                          ; preds = %while.body
  %arraydecay10 = getelementptr inbounds [128 x i8], ptr %szFilename, i64 0, i64 0
  %call11 = call ptr @"\01_fopen"(ptr noundef %arraydecay10, ptr noundef @.str.2)
  %fp12 = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 12
  store ptr %call11, ptr %fp12, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %arraydecay13 = getelementptr inbounds [128 x i8], ptr %szFilename, i64 0, i64 0
  %call14 = call ptr @strdup(ptr noundef %arraydecay13)
  %pszFilename = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 14
  store ptr %call14, ptr %pszFilename, align 8
  %nCurFileSize = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 13
  store i32 0, ptr %nCurFileSize, align 8
  %nXSize15 = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 0
  %9 = load i32, ptr %nXSize15, align 8
  %nBlockXSize16 = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 2
  %10 = load i32, ptr %nBlockXSize16, align 8
  %add = add nsw i32 %9, %10
  %sub = sub nsw i32 %add, 1
  %nBlockXSize17 = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 2
  %11 = load i32, ptr %nBlockXSize17, align 8
  %div = sdiv i32 %sub, %11
  %nBlocksPerRow = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 6
  store i32 %div, ptr %nBlocksPerRow, align 8
  %nYSize18 = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 1
  %12 = load i32, ptr %nYSize18, align 4
  %nBlockYSize19 = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 3
  %13 = load i32, ptr %nBlockYSize19, align 4
  %add20 = add nsw i32 %12, %13
  %sub21 = sub nsw i32 %add20, 1
  %nBlockYSize22 = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 3
  %14 = load i32, ptr %nBlockYSize22, align 4
  %div23 = sdiv i32 %sub21, %14
  %nBlocksPerColumn = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 7
  store i32 %div23, ptr %nBlocksPerColumn, align 4
  %nBlockXSize24 = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 2
  %15 = load i32, ptr %nBlockXSize24, align 8
  %nBlockYSize25 = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 3
  %16 = load i32, ptr %nBlockYSize25, align 4
  %mul = mul nsw i32 %15, %16
  %nBitsPerPixel26 = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 4
  %17 = load i32, ptr %nBitsPerPixel26, align 8
  %mul27 = mul nsw i32 %mul, %17
  %add28 = add nsw i32 %mul27, 7
  %div29 = sdiv i32 %add28, 8
  %nBytesPerBlock = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 5
  store i32 %div29, ptr %nBytesPerBlock, align 4
  %nBlocksPerRow30 = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 6
  %18 = load i32, ptr %nBlocksPerRow30, align 8
  %nBlocksPerColumn31 = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 7
  %19 = load i32, ptr %nBlocksPerColumn31, align 4
  %mul32 = mul nsw i32 %18, %19
  %nBlocks = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 8
  store i32 %mul32, ptr %nBlocks, align 8
  %nBlocksInCache = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 10
  store i32 0, ptr %nBlocksInCache, align 8
  %nBlocks33 = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 8
  %20 = load i32, ptr %nBlocks33, align 8
  %nBlocksPerRow34 = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 6
  %21 = load i32, ptr %nBlocksPerRow34, align 8
  %mul35 = mul nsw i32 2, %21
  %cmp36 = icmp slt i32 %20, %mul35
  br i1 %cmp36, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end
  %nBlocks37 = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 8
  %22 = load i32, ptr %nBlocks37, align 8
  br label %cond.end

cond.false:                                       ; preds = %while.end
  %nBlocksPerRow38 = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 6
  %23 = load i32, ptr %nBlocksPerRow38, align 8
  %mul39 = mul nsw i32 2, %23
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %22, %cond.true ], [ %mul39, %cond.false ]
  %nMaxBlocksInCache = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 11
  store i32 %cond, ptr %nMaxBlocksInCache, align 4
  %nBlocks40 = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 8
  %24 = load i32, ptr %nBlocks40, align 8
  %conv = sext i32 %24 to i64
  %call41 = call ptr @calloc(i64 noundef 8, i64 noundef %conv) #11
  %papoBlocks = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 9
  store ptr %call41, ptr %papoBlocks, align 8
  %poLRUHead = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 15
  store ptr null, ptr %poLRUHead, align 8
  %poLRUTail = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 16
  store ptr null, ptr %poLRUTail, align 8
  %25 = load ptr, ptr %retval, align 8
  ret ptr %25
}

declare i32 @sprintf(ptr noundef, ptr noundef, ...) #1

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

declare i32 @fclose(ptr noundef) #1

declare ptr @strdup(ptr noundef) #1

; Function Attrs: allocsize(0,1)
declare ptr @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: noinline optnone ssp uwtable
define noundef ptr @_ZN15RawBlockedImageC1Eiiiii(ptr noundef nonnull returned align 8 dereferenceable(96) %this, i32 noundef %nXSizeIn, i32 noundef %nYSizeIn, i32 noundef %nBlockXSizeIn, i32 noundef %nBlockYSizeIn, i32 noundef %nBitsPerPixelIn) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %nXSizeIn.addr = alloca i32, align 4
  %nYSizeIn.addr = alloca i32, align 4
  %nBlockXSizeIn.addr = alloca i32, align 4
  %nBlockYSizeIn.addr = alloca i32, align 4
  %nBitsPerPixelIn.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i32 %nXSizeIn, ptr %nXSizeIn.addr, align 4
  store i32 %nYSizeIn, ptr %nYSizeIn.addr, align 4
  store i32 %nBlockXSizeIn, ptr %nBlockXSizeIn.addr, align 4
  store i32 %nBlockYSizeIn, ptr %nBlockYSizeIn.addr, align 4
  store i32 %nBitsPerPixelIn, ptr %nBitsPerPixelIn.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i32, ptr %nXSizeIn.addr, align 4
  %1 = load i32, ptr %nYSizeIn.addr, align 4
  %2 = load i32, ptr %nBlockXSizeIn.addr, align 4
  %3 = load i32, ptr %nBlockYSizeIn.addr, align 4
  %4 = load i32, ptr %nBitsPerPixelIn.addr, align 4
  %call = call noundef ptr @_ZN15RawBlockedImageC2Eiiiii(ptr noundef nonnull align 8 dereferenceable(96) %this1, i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define noundef ptr @_ZN15RawBlockedImageD2Ev(ptr noundef nonnull returned align 8 dereferenceable(96) %this) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  store ptr %this1, ptr %retval, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %nBlocks = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 8
  %1 = load i32, ptr %nBlocks, align 8
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %papoBlocks = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 9
  %2 = load ptr, ptr %papoBlocks, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %idxprom
  %4 = load ptr, ptr %arrayidx, align 8
  %cmp2 = icmp ne ptr %4, null
  br i1 %cmp2, label %if.then, label %if.end15

if.then:                                          ; preds = %for.body
  %papoBlocks3 = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 9
  %5 = load ptr, ptr %papoBlocks3, align 8
  %6 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds ptr, ptr %5, i64 %idxprom4
  %7 = load ptr, ptr %arrayidx5, align 8
  %pabyData = getelementptr inbounds %class.RawBlock, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %pabyData, align 8
  %cmp6 = icmp ne ptr %8, null
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  %papoBlocks8 = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 9
  %9 = load ptr, ptr %papoBlocks8, align 8
  %10 = load i32, ptr %i, align 4
  %idxprom9 = sext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds ptr, ptr %9, i64 %idxprom9
  %11 = load ptr, ptr %arrayidx10, align 8
  %pabyData11 = getelementptr inbounds %class.RawBlock, ptr %11, i32 0, i32 4
  %12 = load ptr, ptr %pabyData11, align 8
  invoke void @free(ptr noundef %12)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %if.then7
  br label %if.end

if.end:                                           ; preds = %invoke.cont, %if.then
  %papoBlocks12 = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 9
  %13 = load ptr, ptr %papoBlocks12, align 8
  %14 = load i32, ptr %i, align 4
  %idxprom13 = sext i32 %14 to i64
  %arrayidx14 = getelementptr inbounds ptr, ptr %13, i64 %idxprom13
  %15 = load ptr, ptr %arrayidx14, align 8
  %isnull = icmp eq ptr %15, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %if.end
  call void @_ZdlPv(ptr noundef %15) #12
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %if.end
  br label %if.end15

if.end15:                                         ; preds = %delete.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end15
  %16 = load i32, ptr %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %papoBlocks16 = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 9
  %17 = load ptr, ptr %papoBlocks16, align 8
  %cmp17 = icmp ne ptr %17, null
  br i1 %cmp17, label %if.then18, label %if.end21

if.then18:                                        ; preds = %for.end
  %papoBlocks19 = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 9
  %18 = load ptr, ptr %papoBlocks19, align 8
  invoke void @free(ptr noundef %18)
          to label %invoke.cont20 unwind label %terminate.lpad

invoke.cont20:                                    ; preds = %if.then18
  br label %if.end21

if.end21:                                         ; preds = %invoke.cont20, %for.end
  %fp = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 12
  %19 = load ptr, ptr %fp, align 8
  %call = invoke i32 @fclose(ptr noundef %19)
          to label %invoke.cont22 unwind label %terminate.lpad

invoke.cont22:                                    ; preds = %if.end21
  %pszFilename = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 14
  %20 = load ptr, ptr %pszFilename, align 8
  %call24 = invoke i32 @unlink(ptr noundef %20)
          to label %invoke.cont23 unwind label %terminate.lpad

invoke.cont23:                                    ; preds = %invoke.cont22
  %pszFilename25 = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 14
  %21 = load ptr, ptr %pszFilename25, align 8
  invoke void @free(ptr noundef %21)
          to label %invoke.cont26 unwind label %terminate.lpad

invoke.cont26:                                    ; preds = %invoke.cont23
  %22 = load ptr, ptr %retval, align 8
  ret ptr %22

terminate.lpad:                                   ; preds = %invoke.cont23, %invoke.cont22, %if.end21, %if.then18, %if.then7
  %23 = landingpad { ptr, i32 }
          catch ptr null
  %24 = extractvalue { ptr, i32 } %23, 0
  call void @__clang_call_terminate(ptr %24) #13
  unreachable
}

declare void @free(ptr noundef) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(ptr %0) #4 {
  %2 = call ptr @__cxa_begin_catch(ptr %0) #14
  call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr)

declare void @_ZSt9terminatev()

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #5

declare i32 @unlink(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define noundef ptr @_ZN15RawBlockedImageD1Ev(ptr noundef nonnull returned align 8 dereferenceable(96) %this) unnamed_addr #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZN15RawBlockedImageD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %this1) #14
  ret ptr %this1
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define void @_ZN15RawBlockedImage15InsertInLRUListEP8RawBlock(ptr noundef nonnull align 8 dereferenceable(96) %this, ptr noundef %poBlock) #6 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %poBlock.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %poBlock, ptr %poBlock.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %poBlock.addr, align 8
  %poPrevLRU = getelementptr inbounds %class.RawBlock, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %poPrevLRU, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %poLRUHead = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 15
  %2 = load ptr, ptr %poLRUHead, align 8
  %3 = load ptr, ptr %poBlock.addr, align 8
  %cmp2 = icmp eq ptr %2, %3
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load ptr, ptr %poBlock.addr, align 8
  call void @_ZN15RawBlockedImage17RemoveFromLRUListEP8RawBlock(ptr noundef nonnull align 8 dereferenceable(96) %this1, ptr noundef %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %poLRUHead3 = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 15
  %5 = load ptr, ptr %poLRUHead3, align 8
  %cmp4 = icmp ne ptr %5, null
  br i1 %cmp4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %poBlock.addr, align 8
  %poLRUHead6 = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 15
  %7 = load ptr, ptr %poLRUHead6, align 8
  %poPrevLRU7 = getelementptr inbounds %class.RawBlock, ptr %7, i32 0, i32 1
  store ptr %6, ptr %poPrevLRU7, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end
  %poLRUHead9 = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 15
  %8 = load ptr, ptr %poLRUHead9, align 8
  %9 = load ptr, ptr %poBlock.addr, align 8
  %poNextLRU = getelementptr inbounds %class.RawBlock, ptr %9, i32 0, i32 0
  store ptr %8, ptr %poNextLRU, align 8
  %10 = load ptr, ptr %poBlock.addr, align 8
  %poLRUHead10 = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 15
  store ptr %10, ptr %poLRUHead10, align 8
  %poLRUTail = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 16
  %11 = load ptr, ptr %poLRUTail, align 8
  %cmp11 = icmp eq ptr %11, null
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end8
  %12 = load ptr, ptr %poBlock.addr, align 8
  %poLRUTail13 = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 16
  store ptr %12, ptr %poLRUTail13, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define void @_ZN15RawBlockedImage17RemoveFromLRUListEP8RawBlock(ptr noundef nonnull align 8 dereferenceable(96) %this, ptr noundef %poBlock) #7 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %poBlock.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %poBlock, ptr %poBlock.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %poBlock.addr, align 8
  %poPrevLRU = getelementptr inbounds %class.RawBlock, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %poPrevLRU, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %poLRUHead = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 15
  %2 = load ptr, ptr %poLRUHead, align 8
  %3 = load ptr, ptr %poBlock.addr, align 8
  %cmp2 = icmp ne ptr %2, %3
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load ptr, ptr %poBlock.addr, align 8
  %poPrevLRU3 = getelementptr inbounds %class.RawBlock, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %poPrevLRU3, align 8
  %cmp4 = icmp eq ptr %5, null
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %poBlock.addr, align 8
  %poNextLRU = getelementptr inbounds %class.RawBlock, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %poNextLRU, align 8
  %poLRUHead6 = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 15
  store ptr %7, ptr %poLRUHead6, align 8
  br label %if.end10

if.else:                                          ; preds = %if.end
  %8 = load ptr, ptr %poBlock.addr, align 8
  %poNextLRU7 = getelementptr inbounds %class.RawBlock, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %poNextLRU7, align 8
  %10 = load ptr, ptr %poBlock.addr, align 8
  %poPrevLRU8 = getelementptr inbounds %class.RawBlock, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %poPrevLRU8, align 8
  %poNextLRU9 = getelementptr inbounds %class.RawBlock, ptr %11, i32 0, i32 0
  store ptr %9, ptr %poNextLRU9, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then5
  %12 = load ptr, ptr %poBlock.addr, align 8
  %poNextLRU11 = getelementptr inbounds %class.RawBlock, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %poNextLRU11, align 8
  %cmp12 = icmp eq ptr %13, null
  br i1 %cmp12, label %if.then13, label %if.else15

if.then13:                                        ; preds = %if.end10
  %14 = load ptr, ptr %poBlock.addr, align 8
  %poPrevLRU14 = getelementptr inbounds %class.RawBlock, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %poPrevLRU14, align 8
  %poLRUTail = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 16
  store ptr %15, ptr %poLRUTail, align 8
  br label %if.end19

if.else15:                                        ; preds = %if.end10
  %16 = load ptr, ptr %poBlock.addr, align 8
  %poPrevLRU16 = getelementptr inbounds %class.RawBlock, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %poPrevLRU16, align 8
  %18 = load ptr, ptr %poBlock.addr, align 8
  %poNextLRU17 = getelementptr inbounds %class.RawBlock, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %poNextLRU17, align 8
  %poPrevLRU18 = getelementptr inbounds %class.RawBlock, ptr %19, i32 0, i32 1
  store ptr %17, ptr %poPrevLRU18, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.else15, %if.then13
  %20 = load ptr, ptr %poBlock.addr, align 8
  %poNextLRU20 = getelementptr inbounds %class.RawBlock, ptr %20, i32 0, i32 0
  store ptr null, ptr %poNextLRU20, align 8
  %21 = load ptr, ptr %poBlock.addr, align 8
  %poPrevLRU21 = getelementptr inbounds %class.RawBlock, ptr %21, i32 0, i32 1
  store ptr null, ptr %poPrevLRU21, align 8
  br label %return

return:                                           ; preds = %if.end19, %if.then
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define void @_ZN15RawBlockedImage10FlushBlockEP8RawBlock(ptr noundef nonnull align 8 dereferenceable(96) %this, ptr noundef %poBlock) #6 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %poBlock.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %poBlock, ptr %poBlock.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %poBlock.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %poLRUTail = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 16
  %1 = load ptr, ptr %poLRUTail, align 8
  %cmp2 = icmp eq ptr %1, null
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  br label %return

if.end:                                           ; preds = %if.then
  %poLRUTail4 = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 16
  %2 = load ptr, ptr %poLRUTail4, align 8
  store ptr %2, ptr %poBlock.addr, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %3 = load ptr, ptr %poBlock.addr, align 8
  call void @_ZN15RawBlockedImage17RemoveFromLRUListEP8RawBlock(ptr noundef nonnull align 8 dereferenceable(96) %this1, ptr noundef %3)
  %4 = load ptr, ptr %poBlock.addr, align 8
  %pabyData = getelementptr inbounds %class.RawBlock, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %pabyData, align 8
  %cmp6 = icmp eq ptr %5, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  br label %return

if.end8:                                          ; preds = %if.end5
  %6 = load ptr, ptr %poBlock.addr, align 8
  %nDirty = getelementptr inbounds %class.RawBlock, ptr %6, i32 0, i32 2
  %7 = load i32, ptr %nDirty, align 8
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then9, label %if.end36

if.then9:                                         ; preds = %if.end8
  %8 = load ptr, ptr %poBlock.addr, align 8
  %nPositionInFile = getelementptr inbounds %class.RawBlock, ptr %8, i32 0, i32 3
  %9 = load i32, ptr %nPositionInFile, align 4
  %cmp10 = icmp eq i32 %9, -1
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.then9
  %nCurFileSize = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 13
  %10 = load i32, ptr %nCurFileSize, align 8
  %11 = load ptr, ptr %poBlock.addr, align 8
  %nPositionInFile12 = getelementptr inbounds %class.RawBlock, ptr %11, i32 0, i32 3
  store i32 %10, ptr %nPositionInFile12, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.then9
  %nBytesPerBlock = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 5
  %12 = load i32, ptr %nBytesPerBlock, align 4
  %nCurFileSize14 = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 13
  %13 = load i32, ptr %nCurFileSize14, align 8
  %add = add nsw i32 %13, %12
  store i32 %add, ptr %nCurFileSize14, align 8
  %fp = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 12
  %14 = load ptr, ptr %fp, align 8
  %15 = load ptr, ptr %poBlock.addr, align 8
  %nPositionInFile15 = getelementptr inbounds %class.RawBlock, ptr %15, i32 0, i32 3
  %16 = load i32, ptr %nPositionInFile15, align 4
  %conv = sext i32 %16 to i64
  %call = call i32 @fseek(ptr noundef %14, i64 noundef %conv, i32 noundef 0)
  %cmp16 = icmp ne i32 %call, 0
  br i1 %cmp16, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end13
  %17 = load ptr, ptr @__stderrp, align 8
  %18 = load ptr, ptr %poBlock.addr, align 8
  %nPositionInFile18 = getelementptr inbounds %class.RawBlock, ptr %18, i32 0, i32 3
  %19 = load i32, ptr %nPositionInFile18, align 4
  %pszFilename = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 14
  %20 = load ptr, ptr %pszFilename, align 8
  %call19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.3, i32 noundef %19, ptr noundef %20)
  call void @exit(i32 noundef 1) #15
  unreachable

if.end20:                                         ; preds = %if.end13
  %21 = load ptr, ptr %poBlock.addr, align 8
  %pabyData21 = getelementptr inbounds %class.RawBlock, ptr %21, i32 0, i32 4
  %22 = load ptr, ptr %pabyData21, align 8
  %nBytesPerBlock22 = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 5
  %23 = load i32, ptr %nBytesPerBlock22, align 4
  %conv23 = sext i32 %23 to i64
  %fp24 = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 12
  %24 = load ptr, ptr %fp24, align 8
  %call25 = call i64 @"\01_fwrite"(ptr noundef %22, i64 noundef 1, i64 noundef %conv23, ptr noundef %24)
  %nBytesPerBlock26 = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 5
  %25 = load i32, ptr %nBytesPerBlock26, align 4
  %conv27 = sext i32 %25 to i64
  %cmp28 = icmp ne i64 %call25, %conv27
  br i1 %cmp28, label %if.then29, label %if.end34

if.then29:                                        ; preds = %if.end20
  %26 = load ptr, ptr @__stderrp, align 8
  %nBytesPerBlock30 = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 5
  %27 = load i32, ptr %nBytesPerBlock30, align 4
  %28 = load ptr, ptr %poBlock.addr, align 8
  %nPositionInFile31 = getelementptr inbounds %class.RawBlock, ptr %28, i32 0, i32 3
  %29 = load i32, ptr %nPositionInFile31, align 4
  %pszFilename32 = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 14
  %30 = load ptr, ptr %pszFilename32, align 8
  %call33 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef @.str.4, i32 noundef %27, i32 noundef %29, ptr noundef %30)
  call void @exit(i32 noundef 1) #15
  unreachable

if.end34:                                         ; preds = %if.end20
  %31 = load ptr, ptr %poBlock.addr, align 8
  %nDirty35 = getelementptr inbounds %class.RawBlock, ptr %31, i32 0, i32 2
  store i32 0, ptr %nDirty35, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.end34, %if.end8
  %nBlocksInCache = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 10
  %32 = load i32, ptr %nBlocksInCache, align 8
  %dec = add nsw i32 %32, -1
  store i32 %dec, ptr %nBlocksInCache, align 8
  %33 = load ptr, ptr %poBlock.addr, align 8
  %pabyData37 = getelementptr inbounds %class.RawBlock, ptr %33, i32 0, i32 4
  %34 = load ptr, ptr %pabyData37, align 8
  %cmp38 = icmp ne ptr %34, null
  br i1 %cmp38, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.end36
  %35 = load ptr, ptr %poBlock.addr, align 8
  %pabyData40 = getelementptr inbounds %class.RawBlock, ptr %35, i32 0, i32 4
  %36 = load ptr, ptr %pabyData40, align 8
  call void @free(ptr noundef %36)
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end36
  %37 = load ptr, ptr %poBlock.addr, align 8
  %pabyData42 = getelementptr inbounds %class.RawBlock, ptr %37, i32 0, i32 4
  store ptr null, ptr %pabyData42, align 8
  br label %return

return:                                           ; preds = %if.end41, %if.then7, %if.then3
  ret void
}

declare i32 @fseek(ptr noundef, i64 noundef, i32 noundef) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #8

declare i64 @"\01_fwrite"(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

; Function Attrs: mustprogress noinline optnone ssp uwtable
define noundef ptr @_ZN15RawBlockedImage11GetRawBlockEii(ptr noundef nonnull align 8 dereferenceable(96) %this, i32 noundef %nXOff, i32 noundef %nYOff) #6 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %nXOff.addr = alloca i32, align 4
  %nYOff.addr = alloca i32, align 4
  %nBlock = alloca i32, align 4
  %poBlock = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store i32 %nXOff, ptr %nXOff.addr, align 4
  store i32 %nYOff, ptr %nYOff.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i32, ptr %nXOff.addr, align 4
  %1 = load i32, ptr %nYOff.addr, align 4
  %nBlocksPerRow = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 6
  %2 = load i32, ptr %nBlocksPerRow, align 8
  %mul = mul nsw i32 %1, %2
  %add = add nsw i32 %0, %mul
  store i32 %add, ptr %nBlock, align 4
  %3 = load i32, ptr %nBlock, align 4
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %4 = load i32, ptr %nBlock, align 4
  %nBlocks = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 8
  %5 = load i32, ptr %nBlocks, align 8
  %cmp2 = icmp slt i32 %4, %5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ]
  %lnot = xor i1 %6, true
  br i1 %lnot, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.end
  call void @__assert_rtn(ptr noundef @__func__._ZN15RawBlockedImage11GetRawBlockEii, ptr noundef @.str.5, i32 noundef 308, ptr noundef @.str.6) #16
  unreachable

7:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %land.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %7
  %papoBlocks = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 9
  %8 = load ptr, ptr %papoBlocks, align 8
  %9 = load i32, ptr %nBlock, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 %idxprom
  %10 = load ptr, ptr %arrayidx, align 8
  store ptr %10, ptr %poBlock, align 8
  %11 = load ptr, ptr %poBlock, align 8
  %cmp3 = icmp eq ptr %11, null
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %call = call noalias noundef nonnull ptr @_Znwm(i64 noundef 32) #17
  %papoBlocks4 = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 9
  %12 = load ptr, ptr %papoBlocks4, align 8
  %13 = load i32, ptr %nBlock, align 4
  %idxprom5 = sext i32 %13 to i64
  %arrayidx6 = getelementptr inbounds ptr, ptr %12, i64 %idxprom5
  store ptr %call, ptr %arrayidx6, align 8
  store ptr %call, ptr %poBlock, align 8
  %14 = load ptr, ptr %poBlock, align 8
  %nDirty = getelementptr inbounds %class.RawBlock, ptr %14, i32 0, i32 2
  store i32 0, ptr %nDirty, align 8
  %15 = load ptr, ptr %poBlock, align 8
  %poNextLRU = getelementptr inbounds %class.RawBlock, ptr %15, i32 0, i32 0
  store ptr null, ptr %poNextLRU, align 8
  %16 = load ptr, ptr %poBlock, align 8
  %poPrevLRU = getelementptr inbounds %class.RawBlock, ptr %16, i32 0, i32 1
  store ptr null, ptr %poPrevLRU, align 8
  %17 = load ptr, ptr %poBlock, align 8
  %nPositionInFile = getelementptr inbounds %class.RawBlock, ptr %17, i32 0, i32 3
  store i32 -1, ptr %nPositionInFile, align 4
  %nBytesPerBlock = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 5
  %18 = load i32, ptr %nBytesPerBlock, align 4
  %conv = sext i32 %18 to i64
  %call7 = call ptr @calloc(i64 noundef 1, i64 noundef %conv) #11
  %19 = load ptr, ptr %poBlock, align 8
  %pabyData = getelementptr inbounds %class.RawBlock, ptr %19, i32 0, i32 4
  store ptr %call7, ptr %pabyData, align 8
  %nBlocksInCache = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 10
  %20 = load i32, ptr %nBlocksInCache, align 8
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %nBlocksInCache, align 8
  %21 = load ptr, ptr %poBlock, align 8
  %pabyData8 = getelementptr inbounds %class.RawBlock, ptr %21, i32 0, i32 4
  %22 = load ptr, ptr %pabyData8, align 8
  %cmp9 = icmp eq ptr %22, null
  br i1 %cmp9, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.then
  %23 = load ptr, ptr @__stderrp, align 8
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.7)
  call void @exit(i32 noundef 1) #15
  unreachable

if.end:                                           ; preds = %if.then
  br label %if.end46

if.else:                                          ; preds = %cond.end
  %24 = load ptr, ptr %poBlock, align 8
  %nPositionInFile12 = getelementptr inbounds %class.RawBlock, ptr %24, i32 0, i32 3
  %25 = load i32, ptr %nPositionInFile12, align 4
  %cmp13 = icmp sge i32 %25, 0
  br i1 %cmp13, label %land.lhs.true, label %if.else31

land.lhs.true:                                    ; preds = %if.else
  %26 = load ptr, ptr %poBlock, align 8
  %pabyData14 = getelementptr inbounds %class.RawBlock, ptr %26, i32 0, i32 4
  %27 = load ptr, ptr %pabyData14, align 8
  %cmp15 = icmp eq ptr %27, null
  br i1 %cmp15, label %if.then16, label %if.else31

if.then16:                                        ; preds = %land.lhs.true
  %nBlocksInCache17 = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 10
  %28 = load i32, ptr %nBlocksInCache17, align 8
  %inc18 = add nsw i32 %28, 1
  store i32 %inc18, ptr %nBlocksInCache17, align 8
  %nBytesPerBlock19 = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 5
  %29 = load i32, ptr %nBytesPerBlock19, align 4
  %conv20 = sext i32 %29 to i64
  %call21 = call ptr @calloc(i64 noundef 1, i64 noundef %conv20) #11
  %30 = load ptr, ptr %poBlock, align 8
  %pabyData22 = getelementptr inbounds %class.RawBlock, ptr %30, i32 0, i32 4
  store ptr %call21, ptr %pabyData22, align 8
  %fp = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 12
  %31 = load ptr, ptr %fp, align 8
  %32 = load ptr, ptr %poBlock, align 8
  %nPositionInFile23 = getelementptr inbounds %class.RawBlock, ptr %32, i32 0, i32 3
  %33 = load i32, ptr %nPositionInFile23, align 4
  %conv24 = sext i32 %33 to i64
  %call25 = call i32 @fseek(ptr noundef %31, i64 noundef %conv24, i32 noundef 0)
  %34 = load ptr, ptr %poBlock, align 8
  %pabyData26 = getelementptr inbounds %class.RawBlock, ptr %34, i32 0, i32 4
  %35 = load ptr, ptr %pabyData26, align 8
  %nBytesPerBlock27 = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 5
  %36 = load i32, ptr %nBytesPerBlock27, align 4
  %conv28 = sext i32 %36 to i64
  %fp29 = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 12
  %37 = load ptr, ptr %fp29, align 8
  %call30 = call i64 @fread(ptr noundef %35, i64 noundef %conv28, i64 noundef 1, ptr noundef %37)
  br label %if.end45

if.else31:                                        ; preds = %land.lhs.true, %if.else
  %38 = load ptr, ptr %poBlock, align 8
  %pabyData32 = getelementptr inbounds %class.RawBlock, ptr %38, i32 0, i32 4
  %39 = load ptr, ptr %pabyData32, align 8
  %cmp33 = icmp eq ptr %39, null
  br i1 %cmp33, label %if.then34, label %if.end44

if.then34:                                        ; preds = %if.else31
  %nBytesPerBlock35 = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 5
  %40 = load i32, ptr %nBytesPerBlock35, align 4
  %conv36 = sext i32 %40 to i64
  %call37 = call ptr @calloc(i64 noundef 1, i64 noundef %conv36) #11
  %41 = load ptr, ptr %poBlock, align 8
  %pabyData38 = getelementptr inbounds %class.RawBlock, ptr %41, i32 0, i32 4
  store ptr %call37, ptr %pabyData38, align 8
  %42 = load ptr, ptr %poBlock, align 8
  %pabyData39 = getelementptr inbounds %class.RawBlock, ptr %42, i32 0, i32 4
  %43 = load ptr, ptr %pabyData39, align 8
  %cmp40 = icmp eq ptr %43, null
  br i1 %cmp40, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.then34
  %44 = load ptr, ptr @__stderrp, align 8
  %call42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef @.str.7)
  call void @exit(i32 noundef 1) #15
  unreachable

if.end43:                                         ; preds = %if.then34
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.else31
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.then16
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.end
  %45 = load ptr, ptr %poBlock, align 8
  call void @_ZN15RawBlockedImage15InsertInLRUListEP8RawBlock(ptr noundef nonnull align 8 dereferenceable(96) %this1, ptr noundef %45)
  %nBlocksInCache47 = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 10
  %46 = load i32, ptr %nBlocksInCache47, align 8
  %nMaxBlocksInCache = getelementptr inbounds %class.RawBlockedImage, ptr %this1, i32 0, i32 11
  %47 = load i32, ptr %nMaxBlocksInCache, align 4
  %cmp48 = icmp sgt i32 %46, %47
  br i1 %cmp48, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end46
  call void @_ZN15RawBlockedImage10FlushBlockEP8RawBlock(ptr noundef nonnull align 8 dereferenceable(96) %this1, ptr noundef null)
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end46
  %48 = load ptr, ptr %poBlock, align 8
  ret ptr %48
}

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) #10

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

; Function Attrs: mustprogress noinline optnone ssp uwtable
define noundef ptr @_ZN15RawBlockedImage7GetTileEii(ptr noundef nonnull align 8 dereferenceable(96) %this, i32 noundef %nXOff, i32 noundef %nYOff) #6 align 2 {
entry:
  %retval = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  %nXOff.addr = alloca i32, align 4
  %nYOff.addr = alloca i32, align 4
  %poBlock = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store i32 %nXOff, ptr %nXOff.addr, align 4
  store i32 %nYOff, ptr %nYOff.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i32, ptr %nXOff.addr, align 4
  %1 = load i32, ptr %nYOff.addr, align 4
  %call = call noundef ptr @_ZN15RawBlockedImage11GetRawBlockEii(ptr noundef nonnull align 8 dereferenceable(96) %this1, i32 noundef %0, i32 noundef %1)
  store ptr %call, ptr %poBlock, align 8
  %2 = load ptr, ptr %poBlock, align 8
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %poBlock, align 8
  %pabyData = getelementptr inbounds %class.RawBlock, ptr %3, i32 0, i32 4
  %4 = load ptr, ptr %pabyData, align 8
  store ptr %4, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load ptr, ptr %retval, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define noundef ptr @_ZN15RawBlockedImage16GetTileForUpdateEii(ptr noundef nonnull align 8 dereferenceable(96) %this, i32 noundef %nXOff, i32 noundef %nYOff) #6 align 2 {
entry:
  %retval = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  %nXOff.addr = alloca i32, align 4
  %nYOff.addr = alloca i32, align 4
  %poBlock = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store i32 %nXOff, ptr %nXOff.addr, align 4
  store i32 %nYOff, ptr %nYOff.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i32, ptr %nXOff.addr, align 4
  %1 = load i32, ptr %nYOff.addr, align 4
  %call = call noundef ptr @_ZN15RawBlockedImage11GetRawBlockEii(ptr noundef nonnull align 8 dereferenceable(96) %this1, i32 noundef %0, i32 noundef %1)
  store ptr %call, ptr %poBlock, align 8
  %2 = load ptr, ptr %poBlock, align 8
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %poBlock, align 8
  %nDirty = getelementptr inbounds %class.RawBlock, ptr %3, i32 0, i32 2
  store i32 1, ptr %nDirty, align 8
  %4 = load ptr, ptr %poBlock, align 8
  %pabyData = getelementptr inbounds %class.RawBlock, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %pabyData, align 8
  store ptr %5, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %6 = load ptr, ptr %retval, align 8
  ret ptr %6
}

attributes #0 = { noinline optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { allocsize(0,1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { noinline noreturn nounwind }
attributes #5 = { nobuiltin nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { mustprogress noinline optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { mustprogress noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #8 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #9 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #10 = { nobuiltin allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #11 = { allocsize(0,1) }
attributes #12 = { builtin nounwind }
attributes #13 = { noreturn nounwind }
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
