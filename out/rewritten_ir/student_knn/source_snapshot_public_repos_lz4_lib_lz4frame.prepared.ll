; ModuleID = './source_snapshot/public_repos/lz4/lib/lz4frame.c'
source_filename = "./source_snapshot/public_repos/lz4/lib/lz4frame.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.LZ4F_CustomMem = type { ptr, ptr, ptr, ptr }
%struct.LZ4F_compressOptions_t = type { i32, [3 x i32] }
%struct.LZ4F_preferences_t = type { %struct.LZ4F_frameInfo_t, i32, i32, i32, [3 x i32] }
%struct.LZ4F_frameInfo_t = type { i32, i32, i32, i32, i64, i32, i32 }
%struct.LZ4F_cctx_s = type { %struct.LZ4F_CustomMem, %struct.LZ4F_preferences_t, i32, i32, ptr, i64, i64, ptr, ptr, i64, i64, %struct.XXH32_state_s, ptr, i16, i16, i32 }
%struct.XXH32_state_s = type { i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32 }
%union.LZ4_stream_u = type { %struct.LZ4_stream_t_internal }
%struct.LZ4_stream_t_internal = type { [4096 x i32], ptr, ptr, i32, i32, i32 }
%struct.LZ4F_CDict_s = type { %struct.LZ4F_CustomMem, ptr, ptr, ptr }
%struct.LZ4F_dctx_s = type { %struct.LZ4F_CustomMem, %struct.LZ4F_frameInfo_t, i32, i32, i64, i64, i64, ptr, i64, i64, ptr, ptr, i64, ptr, i64, i64, %struct.XXH32_state_s, %struct.XXH32_state_s, i32, [19 x i8] }
%struct.LZ4F_decompressOptions_t = type { i32, i32, i32, i32 }

@LZ4F_getErrorName.codeError = internal global ptr @.str, align 8
@.str = private unnamed_addr constant [23 x i8] c"Unspecified error code\00", align 1
@LZ4F_errorStrings = internal global [25 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], align 8
@LZ4F_getBlockSize.blockSizes = internal constant [4 x i64] [i64 65536, i64 262144, i64 1048576, i64 4194304], align 8
@LZ4F_defaultCMem = internal constant %struct.LZ4F_CustomMem zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"OK_NoError\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"ERROR_GENERIC\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"ERROR_maxBlockSize_invalid\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"ERROR_blockMode_invalid\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"ERROR_parameter_invalid\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"ERROR_compressionLevel_invalid\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"ERROR_headerVersion_wrong\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"ERROR_blockChecksum_invalid\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"ERROR_reservedFlag_set\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"ERROR_allocation_failed\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"ERROR_srcSize_tooLarge\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"ERROR_dstMaxSize_tooSmall\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"ERROR_frameHeader_incomplete\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"ERROR_frameType_unknown\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"ERROR_frameSize_wrong\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"ERROR_srcPtr_wrong\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"ERROR_decompressionFailed\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"ERROR_headerChecksum_invalid\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"ERROR_contentChecksum_invalid\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"ERROR_frameDecoding_alreadyStarted\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"ERROR_compressionState_uninitialized\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"ERROR_parameter_null\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"ERROR_io_write\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"ERROR_io_read\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"ERROR_maxCode\00", align 1
@k_cOptionsNull = internal constant %struct.LZ4F_compressOptions_t zeroinitializer, align 4

; Function Attrs: nounwind ssp uwtable
define i32 @LZ4F_isError(i64 noundef %code) #0 {
entry:
  %code.addr = alloca i64, align 8
  store i64 %code, ptr %code.addr, align 8
  %0 = load i64, ptr %code.addr, align 8
  %cmp = icmp ugt i64 %0, -24
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind ssp uwtable
define ptr @LZ4F_getErrorName(i64 noundef %code) #0 {
entry:
  %retval = alloca ptr, align 8
  %code.addr = alloca i64, align 8
  store i64 %code, ptr %code.addr, align 8
  %0 = load i64, ptr %code.addr, align 8
  %call = call i32 @LZ4F_isError(i64 noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %code.addr, align 8
  %conv = trunc i64 %1 to i32
  %sub = sub nsw i32 0, %conv
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [25 x ptr], ptr @LZ4F_errorStrings, i64 0, i64 %idxprom
  %2 = load ptr, ptr %arrayidx, align 8
  store ptr %2, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr @LZ4F_getErrorName.codeError, align 8
  store ptr %3, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load ptr, ptr %retval, align 8
  ret ptr %4
}

; Function Attrs: nounwind ssp uwtable
define i32 @LZ4F_getErrorCode(i64 noundef %functionResult) #0 {
entry:
  %retval = alloca i32, align 4
  %functionResult.addr = alloca i64, align 8
  store i64 %functionResult, ptr %functionResult.addr, align 8
  %0 = load i64, ptr %functionResult.addr, align 8
  %call = call i32 @LZ4F_isError(i64 noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %functionResult.addr, align 8
  %sub = sub nsw i64 0, %1
  %conv = trunc i64 %sub to i32
  store i32 %conv, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4
  ret i32 %2
}

; Function Attrs: nounwind ssp uwtable
define i32 @LZ4F_getVersion() #0 {
entry:
  ret i32 100
}

; Function Attrs: nounwind ssp uwtable
define i32 @LZ4F_compressionLevel_max() #0 {
entry:
  ret i32 12
}

; Function Attrs: nounwind ssp uwtable
define i64 @LZ4F_getBlockSize(i32 noundef %blockSizeID) #0 {
entry:
  %retval = alloca i64, align 8
  %blockSizeID.addr = alloca i32, align 4
  %blockSizeIdx = alloca i32, align 4
  store i32 %blockSizeID, ptr %blockSizeID.addr, align 4
  %0 = load i32, ptr %blockSizeID.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 4, ptr %blockSizeID.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %blockSizeID.addr, align 4
  %cmp1 = icmp ult i32 %1, 4
  br i1 %cmp1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i32, ptr %blockSizeID.addr, align 4
  %cmp2 = icmp ugt i32 %2, 7
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  %call = call i64 @pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_0(i32 noundef 2)
  store i64 %call, ptr %retval, align 8
  br label %return

if.end4:                                          ; preds = %lor.lhs.false
  %3 = load i32, ptr %blockSizeID.addr, align 4
  %sub = sub nsw i32 %3, 4
  store i32 %sub, ptr %blockSizeIdx, align 4
  %4 = load i32, ptr %blockSizeIdx, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [4 x i64], ptr @LZ4F_getBlockSize.blockSizes, i64 0, i64 %idxprom
  %5 = load i64, ptr %arrayidx, align 8
  store i64 %5, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end4, %if.then3
  %6 = load i64, ptr %retval, align 8
  ret i64 %6
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @LZ4F_returnErrorCode(i32 noundef %code) #0 {
entry:
  %code.addr = alloca i32, align 4
  store i32 %code, ptr %code.addr, align 4
  %0 = load i32, ptr %code.addr, align 4
  %conv = zext i32 %0 to i64
  %sub = sub nsw i64 0, %conv
  ret i64 %sub
}

; Function Attrs: nounwind ssp uwtable
define i64 @LZ4F_compressFrameBound(i64 noundef %srcSize, ptr noundef %preferencesPtr) #0 {
entry:
  %srcSize.addr = alloca i64, align 8
  %preferencesPtr.addr = alloca ptr, align 8
  %prefs = alloca %struct.LZ4F_preferences_t, align 8
  %headerSize = alloca i64, align 8
  store i64 %srcSize, ptr %srcSize.addr, align 8
  store ptr %preferencesPtr, ptr %preferencesPtr.addr, align 8
  store i64 19, ptr %headerSize, align 8
  %0 = load ptr, ptr %preferencesPtr.addr, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %preferencesPtr.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %prefs, ptr align 8 %1, i64 56, i1 false)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.memset.p0.i64(ptr align 8 %prefs, i8 0, i64 56, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %autoFlush = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefs, i32 0, i32 2
  store i32 1, ptr %autoFlush, align 4
  %2 = load i64, ptr %srcSize.addr, align 8
  %call = call i64 @LZ4F_compressBound_internal(i64 noundef %2, ptr noundef %prefs, i64 noundef 0)
  %add = add i64 19, %call
  ret i64 %add
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind ssp uwtable
define internal i64 @LZ4F_compressBound_internal(i64 noundef %srcSize, ptr noundef %preferencesPtr, i64 noundef %alreadyBuffered) #0 {
entry:
  %srcSize.addr = alloca i64, align 8
  %preferencesPtr.addr = alloca ptr, align 8
  %alreadyBuffered.addr = alloca i64, align 8
  %prefsNull = alloca %struct.LZ4F_preferences_t, align 8
  %prefsPtr = alloca ptr, align 8
  %flush = alloca i32, align 4
  %blockID = alloca i32, align 4
  %blockSize = alloca i64, align 8
  %maxBuffered = alloca i64, align 8
  %bufferedSize = alloca i64, align 8
  %maxSrcSize = alloca i64, align 8
  %nbFullBlocks = alloca i32, align 4
  %partialBlockSize = alloca i64, align 8
  %lastBlockSize = alloca i64, align 8
  %nbBlocks = alloca i32, align 4
  %blockCRCSize = alloca i64, align 8
  %frameEnd = alloca i64, align 8
  store i64 %srcSize, ptr %srcSize.addr, align 8
  store ptr %preferencesPtr, ptr %preferencesPtr.addr, align 8
  store i64 %alreadyBuffered, ptr %alreadyBuffered.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %prefsNull, i8 0, i64 56, i1 false)
  %0 = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefsNull, i32 0, i32 0
  %1 = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %0, i32 0, i32 0
  store i32 4, ptr %1, align 8
  %frameInfo = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefsNull, i32 0, i32 0
  %contentChecksumFlag = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo, i32 0, i32 2
  store i32 1, ptr %contentChecksumFlag, align 8
  %frameInfo1 = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefsNull, i32 0, i32 0
  %blockChecksumFlag = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo1, i32 0, i32 6
  store i32 1, ptr %blockChecksumFlag, align 4
  %2 = load ptr, ptr %preferencesPtr.addr, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load ptr, ptr %preferencesPtr.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %prefsNull, %cond.true ], [ %3, %cond.false ]
  store ptr %cond, ptr %prefsPtr, align 8
  %4 = load ptr, ptr %prefsPtr, align 8
  %autoFlush = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %4, i32 0, i32 2
  %5 = load i32, ptr %autoFlush, align 4
  %6 = load i64, ptr %srcSize.addr, align 8
  %cmp2 = icmp eq i64 %6, 0
  %conv = zext i1 %cmp2 to i32
  %or = or i32 %5, %conv
  store i32 %or, ptr %flush, align 4
  %7 = load ptr, ptr %prefsPtr, align 8
  %frameInfo3 = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %7, i32 0, i32 0
  %blockSizeID = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo3, i32 0, i32 0
  %8 = load i32, ptr %blockSizeID, align 8
  store i32 %8, ptr %blockID, align 4
  %9 = load i32, ptr %blockID, align 4
  %call = call i64 @LZ4F_getBlockSize(i32 noundef %9)
  store i64 %call, ptr %blockSize, align 8
  %10 = load i64, ptr %blockSize, align 8
  %sub = sub i64 %10, 1
  store i64 %sub, ptr %maxBuffered, align 8
  %11 = load i64, ptr %alreadyBuffered.addr, align 8
  %12 = load i64, ptr %maxBuffered, align 8
  %cmp4 = icmp ult i64 %11, %12
  br i1 %cmp4, label %cond.true6, label %cond.false7

cond.true6:                                       ; preds = %cond.end
  %13 = load i64, ptr %alreadyBuffered.addr, align 8
  br label %cond.end8

cond.false7:                                      ; preds = %cond.end
  %14 = load i64, ptr %maxBuffered, align 8
  br label %cond.end8

cond.end8:                                        ; preds = %cond.false7, %cond.true6
  %cond9 = phi i64 [ %13, %cond.true6 ], [ %14, %cond.false7 ]
  store i64 %cond9, ptr %bufferedSize, align 8
  %15 = load i64, ptr %srcSize.addr, align 8
  %16 = load i64, ptr %bufferedSize, align 8
  %add = add i64 %15, %16
  store i64 %add, ptr %maxSrcSize, align 8
  %17 = load i64, ptr %maxSrcSize, align 8
  %18 = load i64, ptr %blockSize, align 8
  %div = udiv i64 %17, %18
  %conv10 = trunc i64 %div to i32
  store i32 %conv10, ptr %nbFullBlocks, align 4
  %19 = load i64, ptr %maxSrcSize, align 8
  %20 = load i64, ptr %blockSize, align 8
  %sub11 = sub i64 %20, 1
  %and = and i64 %19, %sub11
  store i64 %and, ptr %partialBlockSize, align 8
  %21 = load i32, ptr %flush, align 4
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %cond.true12, label %cond.false13

cond.true12:                                      ; preds = %cond.end8
  %22 = load i64, ptr %partialBlockSize, align 8
  br label %cond.end14

cond.false13:                                     ; preds = %cond.end8
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false13, %cond.true12
  %cond15 = phi i64 [ %22, %cond.true12 ], [ 0, %cond.false13 ]
  store i64 %cond15, ptr %lastBlockSize, align 8
  %23 = load i32, ptr %nbFullBlocks, align 4
  %24 = load i64, ptr %lastBlockSize, align 8
  %cmp16 = icmp ugt i64 %24, 0
  %conv17 = zext i1 %cmp16 to i32
  %add18 = add i32 %23, %conv17
  store i32 %add18, ptr %nbBlocks, align 4
  %25 = load ptr, ptr %prefsPtr, align 8
  %frameInfo19 = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %25, i32 0, i32 0
  %blockChecksumFlag20 = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo19, i32 0, i32 6
  %26 = load i32, ptr %blockChecksumFlag20, align 4
  %conv21 = zext i32 %26 to i64
  %mul = mul i64 4, %conv21
  store i64 %mul, ptr %blockCRCSize, align 8
  %27 = load ptr, ptr %prefsPtr, align 8
  %frameInfo22 = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %27, i32 0, i32 0
  %contentChecksumFlag23 = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo22, i32 0, i32 2
  %28 = load i32, ptr %contentChecksumFlag23, align 8
  %conv24 = zext i32 %28 to i64
  %mul25 = mul i64 %conv24, 4
  %add26 = add i64 4, %mul25
  store i64 %add26, ptr %frameEnd, align 8
  %29 = load i64, ptr %blockCRCSize, align 8
  %add27 = add i64 4, %29
  %30 = load i32, ptr %nbBlocks, align 4
  %conv28 = zext i32 %30 to i64
  %mul29 = mul i64 %add27, %conv28
  %31 = load i64, ptr %blockSize, align 8
  %32 = load i32, ptr %nbFullBlocks, align 4
  %conv30 = zext i32 %32 to i64
  %mul31 = mul i64 %31, %conv30
  %add32 = add i64 %mul29, %mul31
  %33 = load i64, ptr %lastBlockSize, align 8
  %add33 = add i64 %add32, %33
  %34 = load i64, ptr %frameEnd, align 8
  %add34 = add i64 %add33, %34
  ret i64 %add34
}

; Function Attrs: nounwind ssp uwtable
define i64 @LZ4F_compressFrame_usingCDict(ptr noundef %cctx, ptr noundef %dstBuffer, i64 noundef %dstCapacity, ptr noundef %srcBuffer, i64 noundef %srcSize, ptr noundef %cdict, ptr noundef %preferencesPtr) #0 {
entry:
  %retval = alloca i64, align 8
  %cctx.addr = alloca ptr, align 8
  %dstBuffer.addr = alloca ptr, align 8
  %dstCapacity.addr = alloca i64, align 8
  %srcBuffer.addr = alloca ptr, align 8
  %srcSize.addr = alloca i64, align 8
  %cdict.addr = alloca ptr, align 8
  %preferencesPtr.addr = alloca ptr, align 8
  %prefs = alloca %struct.LZ4F_preferences_t, align 8
  %options = alloca %struct.LZ4F_compressOptions_t, align 4
  %dstStart = alloca ptr, align 8
  %dstPtr = alloca ptr, align 8
  %dstEnd = alloca ptr, align 8
  %headerSize = alloca i64, align 8
  %cSize = alloca i64, align 8
  %tailSize = alloca i64, align 8
  store ptr %cctx, ptr %cctx.addr, align 8
  store ptr %dstBuffer, ptr %dstBuffer.addr, align 8
  store i64 %dstCapacity, ptr %dstCapacity.addr, align 8
  store ptr %srcBuffer, ptr %srcBuffer.addr, align 8
  store i64 %srcSize, ptr %srcSize.addr, align 8
  store ptr %cdict, ptr %cdict.addr, align 8
  store ptr %preferencesPtr, ptr %preferencesPtr.addr, align 8
  %0 = load ptr, ptr %dstBuffer.addr, align 8
  store ptr %0, ptr %dstStart, align 8
  %1 = load ptr, ptr %dstStart, align 8
  store ptr %1, ptr %dstPtr, align 8
  %2 = load ptr, ptr %dstStart, align 8
  %3 = load i64, ptr %dstCapacity.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 %3
  store ptr %add.ptr, ptr %dstEnd, align 8
  %4 = load ptr, ptr %preferencesPtr.addr, align 8
  %cmp = icmp ne ptr %4, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %preferencesPtr.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %prefs, ptr align 8 %5, i64 56, i1 false)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.memset.p0.i64(ptr align 8 %prefs, i8 0, i64 56, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %frameInfo = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefs, i32 0, i32 0
  %contentSize = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo, i32 0, i32 4
  %6 = load i64, ptr %contentSize, align 8
  %cmp1 = icmp ne i64 %6, 0
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  %7 = load i64, ptr %srcSize.addr, align 8
  %frameInfo3 = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefs, i32 0, i32 0
  %contentSize4 = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo3, i32 0, i32 4
  store i64 %7, ptr %contentSize4, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end
  %frameInfo6 = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefs, i32 0, i32 0
  %blockSizeID = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo6, i32 0, i32 0
  %8 = load i32, ptr %blockSizeID, align 8
  %9 = load i64, ptr %srcSize.addr, align 8
  %call = call i32 @LZ4F_optimalBSID(i32 noundef %8, i64 noundef %9)
  %frameInfo7 = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefs, i32 0, i32 0
  %blockSizeID8 = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo7, i32 0, i32 0
  store i32 %call, ptr %blockSizeID8, align 8
  %autoFlush = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefs, i32 0, i32 2
  store i32 1, ptr %autoFlush, align 4
  %10 = load i64, ptr %srcSize.addr, align 8
  %frameInfo9 = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefs, i32 0, i32 0
  %blockSizeID10 = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo9, i32 0, i32 0
  %11 = load i32, ptr %blockSizeID10, align 8
  %call11 = call i64 @LZ4F_getBlockSize(i32 noundef %11)
  %cmp12 = icmp ule i64 %10, %call11
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end5
  %frameInfo14 = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefs, i32 0, i32 0
  %blockMode = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo14, i32 0, i32 1
  store i32 1, ptr %blockMode, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end5
  call void @llvm.memset.p0.i64(ptr align 4 %options, i8 0, i64 16, i1 false)
  %stableSrc = getelementptr inbounds %struct.LZ4F_compressOptions_t, ptr %options, i32 0, i32 0
  store i32 1, ptr %stableSrc, align 4
  br label %do.body

do.body:                                          ; preds = %if.end15
  %12 = load i64, ptr %dstCapacity.addr, align 8
  %13 = load i64, ptr %srcSize.addr, align 8
  %call16 = call i64 @LZ4F_compressFrameBound(i64 noundef %13, ptr noundef %prefs)
  %cmp17 = icmp ult i64 %12, %call16
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %do.body
  %call19 = call i64 @LZ4F_returnErrorCode(i32 noundef 11)
  store i64 %call19, ptr %retval, align 8
  br label %return

if.end20:                                         ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end20
  %14 = load ptr, ptr %cctx.addr, align 8
  %15 = load ptr, ptr %dstBuffer.addr, align 8
  %16 = load i64, ptr %dstCapacity.addr, align 8
  %17 = load ptr, ptr %cdict.addr, align 8
  %call21 = call i64 @LZ4F_compressBegin_usingCDict(ptr noundef %14, ptr noundef %15, i64 noundef %16, ptr noundef %17, ptr noundef %prefs)
  store i64 %call21, ptr %headerSize, align 8
  br label %do.body22

do.body22:                                        ; preds = %do.end
  %18 = load i64, ptr %headerSize, align 8
  %call23 = call i32 @LZ4F_isError(i64 noundef %18)
  %tobool = icmp ne i32 %call23, 0
  br i1 %tobool, label %if.then24, label %if.end25

if.then24:                                        ; preds = %do.body22
  %19 = load i64, ptr %headerSize, align 8
  store i64 %19, ptr %retval, align 8
  br label %return

if.end25:                                         ; preds = %do.body22
  br label %do.end26

do.end26:                                         ; preds = %if.end25
  %20 = load i64, ptr %headerSize, align 8
  %21 = load ptr, ptr %dstPtr, align 8
  %add.ptr27 = getelementptr inbounds i8, ptr %21, i64 %20
  store ptr %add.ptr27, ptr %dstPtr, align 8
  %22 = load ptr, ptr %cctx.addr, align 8
  %23 = load ptr, ptr %dstPtr, align 8
  %24 = load ptr, ptr %dstEnd, align 8
  %25 = load ptr, ptr %dstPtr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %24 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %25 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %26 = load ptr, ptr %srcBuffer.addr, align 8
  %27 = load i64, ptr %srcSize.addr, align 8
  %call28 = call i64 @LZ4F_compressUpdate(ptr noundef %22, ptr noundef %23, i64 noundef %sub.ptr.sub, ptr noundef %26, i64 noundef %27, ptr noundef %options)
  store i64 %call28, ptr %cSize, align 8
  br label %do.body29

do.body29:                                        ; preds = %do.end26
  %28 = load i64, ptr %cSize, align 8
  %call30 = call i32 @LZ4F_isError(i64 noundef %28)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %do.body29
  %29 = load i64, ptr %cSize, align 8
  store i64 %29, ptr %retval, align 8
  br label %return

if.end33:                                         ; preds = %do.body29
  br label %do.end34

do.end34:                                         ; preds = %if.end33
  %30 = load i64, ptr %cSize, align 8
  %31 = load ptr, ptr %dstPtr, align 8
  %add.ptr35 = getelementptr inbounds i8, ptr %31, i64 %30
  store ptr %add.ptr35, ptr %dstPtr, align 8
  %32 = load ptr, ptr %cctx.addr, align 8
  %33 = load ptr, ptr %dstPtr, align 8
  %34 = load ptr, ptr %dstEnd, align 8
  %35 = load ptr, ptr %dstPtr, align 8
  %sub.ptr.lhs.cast36 = ptrtoint ptr %34 to i64
  %sub.ptr.rhs.cast37 = ptrtoint ptr %35 to i64
  %sub.ptr.sub38 = sub i64 %sub.ptr.lhs.cast36, %sub.ptr.rhs.cast37
  %call39 = call i64 @LZ4F_compressEnd(ptr noundef %32, ptr noundef %33, i64 noundef %sub.ptr.sub38, ptr noundef %options)
  store i64 %call39, ptr %tailSize, align 8
  br label %do.body40

do.body40:                                        ; preds = %do.end34
  %36 = load i64, ptr %tailSize, align 8
  %call41 = call i32 @LZ4F_isError(i64 noundef %36)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %do.body40
  %37 = load i64, ptr %tailSize, align 8
  store i64 %37, ptr %retval, align 8
  br label %return

if.end44:                                         ; preds = %do.body40
  br label %do.end45

do.end45:                                         ; preds = %if.end44
  %38 = load i64, ptr %tailSize, align 8
  %39 = load ptr, ptr %dstPtr, align 8
  %add.ptr46 = getelementptr inbounds i8, ptr %39, i64 %38
  store ptr %add.ptr46, ptr %dstPtr, align 8
  %40 = load ptr, ptr %dstPtr, align 8
  %41 = load ptr, ptr %dstStart, align 8
  %sub.ptr.lhs.cast47 = ptrtoint ptr %40 to i64
  %sub.ptr.rhs.cast48 = ptrtoint ptr %41 to i64
  %sub.ptr.sub49 = sub i64 %sub.ptr.lhs.cast47, %sub.ptr.rhs.cast48
  store i64 %sub.ptr.sub49, ptr %retval, align 8
  br label %return

return:                                           ; preds = %do.end45, %if.then43, %if.then32, %if.then24, %if.then18
  %42 = load i64, ptr %retval, align 8
  ret i64 %42
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @LZ4F_optimalBSID(i32 noundef %requestedBSID, i64 noundef %srcSize) #0 {
entry:
  %retval = alloca i32, align 4
  %requestedBSID.addr = alloca i32, align 4
  %srcSize.addr = alloca i64, align 8
  %proposedBSID = alloca i32, align 4
  %maxBlockSize = alloca i64, align 8
  store i32 %requestedBSID, ptr %requestedBSID.addr, align 4
  store i64 %srcSize, ptr %srcSize.addr, align 8
  store i32 4, ptr %proposedBSID, align 4
  store i64 65536, ptr %maxBlockSize, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, ptr %requestedBSID.addr, align 4
  %1 = load i32, ptr %proposedBSID, align 4
  %cmp = icmp ugt i32 %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i64, ptr %srcSize.addr, align 8
  %3 = load i64, ptr %maxBlockSize, align 8
  %cmp1 = icmp ule i64 %2, %3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %4 = load i32, ptr %proposedBSID, align 4
  store i32 %4, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  %5 = load i32, ptr %proposedBSID, align 4
  %add = add nsw i32 %5, 1
  store i32 %add, ptr %proposedBSID, align 4
  %6 = load i64, ptr %maxBlockSize, align 8
  %shl = shl i64 %6, 2
  store i64 %shl, ptr %maxBlockSize, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %7 = load i32, ptr %requestedBSID.addr, align 4
  store i32 %7, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nounwind ssp uwtable
define i64 @LZ4F_compressBegin_usingCDict(ptr noundef %cctx, ptr noundef %dstBuffer, i64 noundef %dstCapacity, ptr noundef %cdict, ptr noundef %preferencesPtr) #0 {
entry:
  %cctx.addr = alloca ptr, align 8
  %dstBuffer.addr = alloca ptr, align 8
  %dstCapacity.addr = alloca i64, align 8
  %cdict.addr = alloca ptr, align 8
  %preferencesPtr.addr = alloca ptr, align 8
  store ptr %cctx, ptr %cctx.addr, align 8
  store ptr %dstBuffer, ptr %dstBuffer.addr, align 8
  store i64 %dstCapacity, ptr %dstCapacity.addr, align 8
  store ptr %cdict, ptr %cdict.addr, align 8
  store ptr %preferencesPtr, ptr %preferencesPtr.addr, align 8
  %0 = load ptr, ptr %cctx.addr, align 8
  %1 = load ptr, ptr %dstBuffer.addr, align 8
  %2 = load i64, ptr %dstCapacity.addr, align 8
  %3 = load ptr, ptr %cdict.addr, align 8
  %4 = load ptr, ptr %preferencesPtr.addr, align 8
  %call = call i64 @LZ4F_compressBegin_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef null, i64 noundef 0, ptr noundef %3, ptr noundef %4)
  ret i64 %call
}

; Function Attrs: nounwind ssp uwtable
define i64 @LZ4F_compressUpdate(ptr noundef %cctxPtr, ptr noundef %dstBuffer, i64 noundef %dstCapacity, ptr noundef %srcBuffer, i64 noundef %srcSize, ptr noundef %compressOptionsPtr) #0 {
entry:
  %cctxPtr.addr = alloca ptr, align 8
  %dstBuffer.addr = alloca ptr, align 8
  %dstCapacity.addr = alloca i64, align 8
  %srcBuffer.addr = alloca ptr, align 8
  %srcSize.addr = alloca i64, align 8
  %compressOptionsPtr.addr = alloca ptr, align 8
  store ptr %cctxPtr, ptr %cctxPtr.addr, align 8
  store ptr %dstBuffer, ptr %dstBuffer.addr, align 8
  store i64 %dstCapacity, ptr %dstCapacity.addr, align 8
  store ptr %srcBuffer, ptr %srcBuffer.addr, align 8
  store i64 %srcSize, ptr %srcSize.addr, align 8
  store ptr %compressOptionsPtr, ptr %compressOptionsPtr.addr, align 8
  %0 = load ptr, ptr %cctxPtr.addr, align 8
  %1 = load ptr, ptr %dstBuffer.addr, align 8
  %2 = load i64, ptr %dstCapacity.addr, align 8
  %3 = load ptr, ptr %srcBuffer.addr, align 8
  %4 = load i64, ptr %srcSize.addr, align 8
  %5 = load ptr, ptr %compressOptionsPtr.addr, align 8
  %call = call i64 @LZ4F_compressUpdateImpl(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i32 noundef 0)
  ret i64 %call
}

; Function Attrs: nounwind ssp uwtable
define i64 @LZ4F_compressEnd(ptr noundef %cctxPtr, ptr noundef %dstBuffer, i64 noundef %dstCapacity, ptr noundef %compressOptionsPtr) #0 {
entry:
  %retval = alloca i64, align 8
  %cctxPtr.addr = alloca ptr, align 8
  %dstBuffer.addr = alloca ptr, align 8
  %dstCapacity.addr = alloca i64, align 8
  %compressOptionsPtr.addr = alloca ptr, align 8
  %dstStart = alloca ptr, align 8
  %dstPtr = alloca ptr, align 8
  %flushSize = alloca i64, align 8
  %xxh = alloca i32, align 4
  store ptr %cctxPtr, ptr %cctxPtr.addr, align 8
  store ptr %dstBuffer, ptr %dstBuffer.addr, align 8
  store i64 %dstCapacity, ptr %dstCapacity.addr, align 8
  store ptr %compressOptionsPtr, ptr %compressOptionsPtr.addr, align 8
  %0 = load ptr, ptr %dstBuffer.addr, align 8
  store ptr %0, ptr %dstStart, align 8
  %1 = load ptr, ptr %dstStart, align 8
  store ptr %1, ptr %dstPtr, align 8
  %2 = load ptr, ptr %cctxPtr.addr, align 8
  %3 = load ptr, ptr %dstBuffer.addr, align 8
  %4 = load i64, ptr %dstCapacity.addr, align 8
  %5 = load ptr, ptr %compressOptionsPtr.addr, align 8
  %call = call i64 @LZ4F_flush(ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5)
  store i64 %call, ptr %flushSize, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = load i64, ptr %flushSize, align 8
  %call1 = call i32 @LZ4F_isError(i64 noundef %6)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %7 = load i64, ptr %flushSize, align 8
  store i64 %7, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %8 = load i64, ptr %flushSize, align 8
  %9 = load ptr, ptr %dstPtr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %8
  store ptr %add.ptr, ptr %dstPtr, align 8
  %10 = load i64, ptr %flushSize, align 8
  %11 = load i64, ptr %dstCapacity.addr, align 8
  %sub = sub i64 %11, %10
  store i64 %sub, ptr %dstCapacity.addr, align 8
  br label %do.body2

do.body2:                                         ; preds = %do.end
  %12 = load i64, ptr %dstCapacity.addr, align 8
  %cmp = icmp ult i64 %12, 4
  br i1 %cmp, label %if.then3, label %if.end5

if.then3:                                         ; preds = %do.body2
  %call4 = call i64 @pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_1(i32 noundef 11)
  store i64 %call4, ptr %retval, align 8
  br label %return

if.end5:                                          ; preds = %do.body2
  br label %do.end6

do.end6:                                          ; preds = %if.end5
  %13 = load ptr, ptr %dstPtr, align 8
  call void @pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_2(ptr noundef %13, i32 noundef 0)
  %14 = load ptr, ptr %dstPtr, align 8
  %add.ptr7 = getelementptr inbounds i8, ptr %14, i64 4
  store ptr %add.ptr7, ptr %dstPtr, align 8
  %15 = load ptr, ptr %cctxPtr.addr, align 8
  %prefs = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %15, i32 0, i32 1
  %frameInfo = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefs, i32 0, i32 0
  %contentChecksumFlag = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo, i32 0, i32 2
  %16 = load i32, ptr %contentChecksumFlag, align 8
  %cmp8 = icmp eq i32 %16, 1
  br i1 %cmp8, label %if.then9, label %if.end19

if.then9:                                         ; preds = %do.end6
  %17 = load ptr, ptr %cctxPtr.addr, align 8
  %xxh10 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %17, i32 0, i32 11
  %call11 = call i32 @XXH32_digest(ptr noundef %xxh10)
  store i32 %call11, ptr %xxh, align 4
  br label %do.body12

do.body12:                                        ; preds = %if.then9
  %18 = load i64, ptr %dstCapacity.addr, align 8
  %cmp13 = icmp ult i64 %18, 8
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %do.body12
  %call15 = call i64 @pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_3(i32 noundef 11)
  store i64 %call15, ptr %retval, align 8
  br label %return

if.end16:                                         ; preds = %do.body12
  br label %do.end17

do.end17:                                         ; preds = %if.end16
  %19 = load ptr, ptr %dstPtr, align 8
  %20 = load i32, ptr %xxh, align 4
  call void @LZ4F_writeLE32(ptr noundef %19, i32 noundef %20)
  %21 = load ptr, ptr %dstPtr, align 8
  %add.ptr18 = getelementptr inbounds i8, ptr %21, i64 4
  store ptr %add.ptr18, ptr %dstPtr, align 8
  br label %if.end19

if.end19:                                         ; preds = %do.end17, %do.end6
  %22 = load ptr, ptr %cctxPtr.addr, align 8
  %cStage = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %22, i32 0, i32 3
  store i32 0, ptr %cStage, align 4
  %23 = load ptr, ptr %cctxPtr.addr, align 8
  %prefs20 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %23, i32 0, i32 1
  %frameInfo21 = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefs20, i32 0, i32 0
  %contentSize = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo21, i32 0, i32 4
  %24 = load i64, ptr %contentSize, align 8
  %tobool22 = icmp ne i64 %24, 0
  br i1 %tobool22, label %if.then23, label %if.end31

if.then23:                                        ; preds = %if.end19
  %25 = load ptr, ptr %cctxPtr.addr, align 8
  %prefs24 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %25, i32 0, i32 1
  %frameInfo25 = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefs24, i32 0, i32 0
  %contentSize26 = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo25, i32 0, i32 4
  %26 = load i64, ptr %contentSize26, align 8
  %27 = load ptr, ptr %cctxPtr.addr, align 8
  %totalInSize = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %27, i32 0, i32 10
  %28 = load i64, ptr %totalInSize, align 8
  %cmp27 = icmp ne i64 %26, %28
  br i1 %cmp27, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.then23
  %call29 = call i64 @pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_4(i32 noundef 14)
  store i64 %call29, ptr %retval, align 8
  br label %return

if.end30:                                         ; preds = %if.then23
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.end19
  %29 = load ptr, ptr %dstPtr, align 8
  %30 = load ptr, ptr %dstStart, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %29 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %30 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end31, %if.then28, %if.then14, %if.then3, %if.then
  %31 = load i64, ptr %retval, align 8
  ret i64 %31
}

; Function Attrs: nounwind ssp uwtable
define i64 @LZ4F_compressFrame(ptr noundef %dstBuffer, i64 noundef %dstCapacity, ptr noundef %srcBuffer, i64 noundef %srcSize, ptr noundef %preferencesPtr) #0 {
entry:
  %dstBuffer.addr = alloca ptr, align 8
  %dstCapacity.addr = alloca i64, align 8
  %srcBuffer.addr = alloca ptr, align 8
  %srcSize.addr = alloca i64, align 8
  %preferencesPtr.addr = alloca ptr, align 8
  %result = alloca i64, align 8
  %cctx = alloca %struct.LZ4F_cctx_s, align 8
  %lz4ctx = alloca %union.LZ4_stream_u, align 8
  %cctxPtr = alloca ptr, align 8
  %byval-temp = alloca %struct.LZ4F_CustomMem, align 8
  store ptr %dstBuffer, ptr %dstBuffer.addr, align 8
  store i64 %dstCapacity, ptr %dstCapacity.addr, align 8
  store ptr %srcBuffer, ptr %srcBuffer.addr, align 8
  store i64 %srcSize, ptr %srcSize.addr, align 8
  store ptr %preferencesPtr, ptr %preferencesPtr.addr, align 8
  store ptr %cctx, ptr %cctxPtr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %cctx, i8 0, i64 216, i1 false)
  %version = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %cctx, i32 0, i32 2
  store i32 100, ptr %version, align 8
  %maxBufferSize = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %cctx, i32 0, i32 6
  store i64 5242880, ptr %maxBufferSize, align 8
  %0 = load ptr, ptr %preferencesPtr.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %preferencesPtr.addr, align 8
  %compressionLevel = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %1, i32 0, i32 1
  %2 = load i32, ptr %compressionLevel, align 8
  %cmp1 = icmp slt i32 %2, 2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call ptr @LZ4_initStream(ptr noundef %lz4ctx, i64 noundef 16416)
  %3 = load ptr, ptr %cctxPtr, align 8
  %lz4CtxPtr = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %3, i32 0, i32 12
  store ptr %lz4ctx, ptr %lz4CtxPtr, align 8
  %4 = load ptr, ptr %cctxPtr, align 8
  %lz4CtxAlloc = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %4, i32 0, i32 13
  store i16 1, ptr %lz4CtxAlloc, align 8
  %5 = load ptr, ptr %cctxPtr, align 8
  %lz4CtxType = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %5, i32 0, i32 14
  store i16 1, ptr %lz4CtxType, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %6 = load ptr, ptr %cctxPtr, align 8
  %7 = load ptr, ptr %dstBuffer.addr, align 8
  %8 = load i64, ptr %dstCapacity.addr, align 8
  %9 = load ptr, ptr %srcBuffer.addr, align 8
  %10 = load i64, ptr %srcSize.addr, align 8
  %11 = load ptr, ptr %preferencesPtr.addr, align 8
  %call2 = call i64 @LZ4F_compressFrame_usingCDict(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %9, i64 noundef %10, ptr noundef null, ptr noundef %11)
  store i64 %call2, ptr %result, align 8
  %12 = load ptr, ptr %preferencesPtr.addr, align 8
  %cmp3 = icmp ne ptr %12, null
  br i1 %cmp3, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %13 = load ptr, ptr %preferencesPtr.addr, align 8
  %compressionLevel4 = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %13, i32 0, i32 1
  %14 = load i32, ptr %compressionLevel4, align 8
  %cmp5 = icmp sge i32 %14, 2
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %land.lhs.true
  %15 = load ptr, ptr %cctxPtr, align 8
  %lz4CtxPtr7 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %15, i32 0, i32 12
  %16 = load ptr, ptr %lz4CtxPtr7, align 8
  %17 = load ptr, ptr %cctxPtr, align 8
  %cmem = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %17, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %byval-temp, ptr align 8 %cmem, i64 32, i1 false)
  call void @LZ4F_free(ptr noundef %16, ptr noundef %byval-temp)
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %land.lhs.true, %if.end
  %18 = load i64, ptr %result, align 8
  ret i64 %18
}

declare ptr @LZ4_initStream(ptr noundef, i64 noundef) #3

; Function Attrs: nounwind ssp uwtable
define internal void @LZ4F_free(ptr noundef %p, ptr noundef %cmem) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %customFree = getelementptr inbounds %struct.LZ4F_CustomMem, ptr %cmem, i32 0, i32 2
  %1 = load ptr, ptr %customFree, align 8
  %cmp1 = icmp ne ptr %1, null
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %customFree3 = getelementptr inbounds %struct.LZ4F_CustomMem, ptr %cmem, i32 0, i32 2
  %2 = load ptr, ptr %customFree3, align 8
  %opaqueState = getelementptr inbounds %struct.LZ4F_CustomMem, ptr %cmem, i32 0, i32 3
  %3 = load ptr, ptr %opaqueState, align 8
  %4 = load ptr, ptr %p.addr, align 8
  call void %2(ptr noundef %3, ptr noundef %4)
  br label %return

if.end4:                                          ; preds = %if.end
  %5 = load ptr, ptr %p.addr, align 8
  call void @free(ptr noundef %5)
  br label %return

return:                                           ; preds = %if.end4, %if.then2, %if.then
  ret void
}

; Function Attrs: nounwind ssp uwtable
define ptr @LZ4F_createCDict_advanced(ptr noundef %cmem, ptr noundef %dictBuffer, i64 noundef %dictSize) #0 {
entry:
  %retval = alloca ptr, align 8
  %dictBuffer.addr = alloca ptr, align 8
  %dictSize.addr = alloca i64, align 8
  %dictStart = alloca ptr, align 8
  %cdict = alloca ptr, align 8
  %byval-temp = alloca %struct.LZ4F_CustomMem, align 8
  %byval-temp7 = alloca %struct.LZ4F_CustomMem, align 8
  %byval-temp9 = alloca %struct.LZ4F_CustomMem, align 8
  %byval-temp11 = alloca %struct.LZ4F_CustomMem, align 8
  store ptr %dictBuffer, ptr %dictBuffer.addr, align 8
  store i64 %dictSize, ptr %dictSize.addr, align 8
  %0 = load ptr, ptr %dictBuffer.addr, align 8
  store ptr %0, ptr %dictStart, align 8
  store ptr null, ptr %cdict, align 8
  %1 = load ptr, ptr %dictStart, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %byval-temp, ptr align 8 %cmem, i64 32, i1 false)
  %call = call ptr @LZ4F_malloc(i64 noundef 56, ptr noundef %byval-temp)
  store ptr %call, ptr %cdict, align 8
  %2 = load ptr, ptr %cdict, align 8
  %tobool1 = icmp ne ptr %2, null
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %cdict, align 8
  %cmem4 = getelementptr inbounds %struct.LZ4F_CDict_s, ptr %3, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %cmem4, ptr align 8 %cmem, i64 32, i1 false)
  %4 = load i64, ptr %dictSize.addr, align 8
  %cmp = icmp ugt i64 %4, 65536
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %5 = load i64, ptr %dictSize.addr, align 8
  %sub = sub i64 %5, 65536
  %6 = load ptr, ptr %dictStart, align 8
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 %sub
  store ptr %add.ptr, ptr %dictStart, align 8
  store i64 65536, ptr %dictSize.addr, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  %7 = load i64, ptr %dictSize.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %byval-temp7, ptr align 8 %cmem, i64 32, i1 false)
  %call8 = call ptr @LZ4F_malloc(i64 noundef %7, ptr noundef %byval-temp7)
  %8 = load ptr, ptr %cdict, align 8
  %dictContent = getelementptr inbounds %struct.LZ4F_CDict_s, ptr %8, i32 0, i32 1
  store ptr %call8, ptr %dictContent, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %byval-temp9, ptr align 8 %cmem, i64 32, i1 false)
  %call10 = call ptr @LZ4F_malloc(i64 noundef 16416, ptr noundef %byval-temp9)
  %9 = load ptr, ptr %cdict, align 8
  %fastCtx = getelementptr inbounds %struct.LZ4F_CDict_s, ptr %9, i32 0, i32 2
  store ptr %call10, ptr %fastCtx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %byval-temp11, ptr align 8 %cmem, i64 32, i1 false)
  %call12 = call ptr @LZ4F_malloc(i64 noundef 262200, ptr noundef %byval-temp11)
  %10 = load ptr, ptr %cdict, align 8
  %HCCtx = getelementptr inbounds %struct.LZ4F_CDict_s, ptr %10, i32 0, i32 3
  store ptr %call12, ptr %HCCtx, align 8
  %11 = load ptr, ptr %cdict, align 8
  %dictContent13 = getelementptr inbounds %struct.LZ4F_CDict_s, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %dictContent13, align 8
  %tobool14 = icmp ne ptr %12, null
  br i1 %tobool14, label %lor.lhs.false, label %if.then20

lor.lhs.false:                                    ; preds = %if.end6
  %13 = load ptr, ptr %cdict, align 8
  %fastCtx15 = getelementptr inbounds %struct.LZ4F_CDict_s, ptr %13, i32 0, i32 2
  %14 = load ptr, ptr %fastCtx15, align 8
  %tobool16 = icmp ne ptr %14, null
  br i1 %tobool16, label %lor.lhs.false17, label %if.then20

lor.lhs.false17:                                  ; preds = %lor.lhs.false
  %15 = load ptr, ptr %cdict, align 8
  %HCCtx18 = getelementptr inbounds %struct.LZ4F_CDict_s, ptr %15, i32 0, i32 3
  %16 = load ptr, ptr %HCCtx18, align 8
  %tobool19 = icmp ne ptr %16, null
  br i1 %tobool19, label %if.end21, label %if.then20

if.then20:                                        ; preds = %lor.lhs.false17, %lor.lhs.false, %if.end6
  %17 = load ptr, ptr %cdict, align 8
  call void @LZ4F_freeCDict(ptr noundef %17)
  store ptr null, ptr %retval, align 8
  br label %return

if.end21:                                         ; preds = %lor.lhs.false17
  %18 = load ptr, ptr %cdict, align 8
  %dictContent22 = getelementptr inbounds %struct.LZ4F_CDict_s, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %dictContent22, align 8
  %20 = load ptr, ptr %dictStart, align 8
  %21 = load i64, ptr %dictSize.addr, align 8
  %22 = load ptr, ptr %cdict, align 8
  %dictContent23 = getelementptr inbounds %struct.LZ4F_CDict_s, ptr %22, i32 0, i32 1
  %23 = load ptr, ptr %dictContent23, align 8
  %24 = call i64 @llvm.objectsize.i64.p0(ptr %23, i1 false, i1 true, i1 false)
  %call24 = call ptr @__memcpy_chk(ptr noundef %19, ptr noundef %20, i64 noundef %21, i64 noundef %24) #8
  %25 = load ptr, ptr %cdict, align 8
  %fastCtx25 = getelementptr inbounds %struct.LZ4F_CDict_s, ptr %25, i32 0, i32 2
  %26 = load ptr, ptr %fastCtx25, align 8
  %call26 = call ptr @LZ4_initStream(ptr noundef %26, i64 noundef 16416)
  %27 = load ptr, ptr %cdict, align 8
  %fastCtx27 = getelementptr inbounds %struct.LZ4F_CDict_s, ptr %27, i32 0, i32 2
  %28 = load ptr, ptr %fastCtx27, align 8
  %29 = load ptr, ptr %cdict, align 8
  %dictContent28 = getelementptr inbounds %struct.LZ4F_CDict_s, ptr %29, i32 0, i32 1
  %30 = load ptr, ptr %dictContent28, align 8
  %31 = load i64, ptr %dictSize.addr, align 8
  %conv = trunc i64 %31 to i32
  %call29 = call i32 @LZ4_loadDictSlow(ptr noundef %28, ptr noundef %30, i32 noundef %conv)
  %32 = load ptr, ptr %cdict, align 8
  %HCCtx30 = getelementptr inbounds %struct.LZ4F_CDict_s, ptr %32, i32 0, i32 3
  %33 = load ptr, ptr %HCCtx30, align 8
  %call31 = call ptr @LZ4_initStreamHC(ptr noundef %33, i64 noundef 262200)
  %34 = load ptr, ptr %cdict, align 8
  %HCCtx32 = getelementptr inbounds %struct.LZ4F_CDict_s, ptr %34, i32 0, i32 3
  %35 = load ptr, ptr %HCCtx32, align 8
  call void @LZ4_setCompressionLevel(ptr noundef %35, i32 noundef 9)
  %36 = load ptr, ptr %cdict, align 8
  %HCCtx33 = getelementptr inbounds %struct.LZ4F_CDict_s, ptr %36, i32 0, i32 3
  %37 = load ptr, ptr %HCCtx33, align 8
  %38 = load ptr, ptr %cdict, align 8
  %dictContent34 = getelementptr inbounds %struct.LZ4F_CDict_s, ptr %38, i32 0, i32 1
  %39 = load ptr, ptr %dictContent34, align 8
  %40 = load i64, ptr %dictSize.addr, align 8
  %conv35 = trunc i64 %40 to i32
  %call36 = call i32 @LZ4_loadDictHC(ptr noundef %37, ptr noundef %39, i32 noundef %conv35)
  %41 = load ptr, ptr %cdict, align 8
  store ptr %41, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end21, %if.then20, %if.then2, %if.then
  %42 = load ptr, ptr %retval, align 8
  ret ptr %42
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @LZ4F_malloc(i64 noundef %s, ptr noundef %cmem) #0 {
entry:
  %retval = alloca ptr, align 8
  %s.addr = alloca i64, align 8
  store i64 %s, ptr %s.addr, align 8
  %customAlloc = getelementptr inbounds %struct.LZ4F_CustomMem, ptr %cmem, i32 0, i32 0
  %0 = load ptr, ptr %customAlloc, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %customAlloc1 = getelementptr inbounds %struct.LZ4F_CustomMem, ptr %cmem, i32 0, i32 0
  %1 = load ptr, ptr %customAlloc1, align 8
  %opaqueState = getelementptr inbounds %struct.LZ4F_CustomMem, ptr %cmem, i32 0, i32 3
  %2 = load ptr, ptr %opaqueState, align 8
  %3 = load i64, ptr %s.addr, align 8
  %call = call ptr %1(ptr noundef %2, i64 noundef %3)
  store ptr %call, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i64, ptr %s.addr, align 8
  %call2 = call ptr @malloc(i64 noundef %4) #9
  store ptr %call2, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8
  ret ptr %5
}

; Function Attrs: nounwind ssp uwtable
define void @LZ4F_freeCDict(ptr noundef %cdict) #0 {
entry:
  %cdict.addr = alloca ptr, align 8
  %byval-temp = alloca %struct.LZ4F_CustomMem, align 8
  %byval-temp2 = alloca %struct.LZ4F_CustomMem, align 8
  %byval-temp4 = alloca %struct.LZ4F_CustomMem, align 8
  %byval-temp6 = alloca %struct.LZ4F_CustomMem, align 8
  store ptr %cdict, ptr %cdict.addr, align 8
  %0 = load ptr, ptr %cdict.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %cdict.addr, align 8
  %dictContent = getelementptr inbounds %struct.LZ4F_CDict_s, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %dictContent, align 8
  %3 = load ptr, ptr %cdict.addr, align 8
  %cmem = getelementptr inbounds %struct.LZ4F_CDict_s, ptr %3, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %byval-temp, ptr align 8 %cmem, i64 32, i1 false)
  call void @LZ4F_free(ptr noundef %2, ptr noundef %byval-temp)
  %4 = load ptr, ptr %cdict.addr, align 8
  %fastCtx = getelementptr inbounds %struct.LZ4F_CDict_s, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %fastCtx, align 8
  %6 = load ptr, ptr %cdict.addr, align 8
  %cmem1 = getelementptr inbounds %struct.LZ4F_CDict_s, ptr %6, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %byval-temp2, ptr align 8 %cmem1, i64 32, i1 false)
  call void @LZ4F_free(ptr noundef %5, ptr noundef %byval-temp2)
  %7 = load ptr, ptr %cdict.addr, align 8
  %HCCtx = getelementptr inbounds %struct.LZ4F_CDict_s, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %HCCtx, align 8
  %9 = load ptr, ptr %cdict.addr, align 8
  %cmem3 = getelementptr inbounds %struct.LZ4F_CDict_s, ptr %9, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %byval-temp4, ptr align 8 %cmem3, i64 32, i1 false)
  call void @LZ4F_free(ptr noundef %8, ptr noundef %byval-temp4)
  %10 = load ptr, ptr %cdict.addr, align 8
  %11 = load ptr, ptr %cdict.addr, align 8
  %cmem5 = getelementptr inbounds %struct.LZ4F_CDict_s, ptr %11, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %byval-temp6, ptr align 8 %cmem5, i64 32, i1 false)
  call void @LZ4F_free(ptr noundef %10, ptr noundef %byval-temp6)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #5

declare i32 @LZ4_loadDictSlow(ptr noundef, ptr noundef, i32 noundef) #3

declare ptr @LZ4_initStreamHC(ptr noundef, i64 noundef) #3

declare void @LZ4_setCompressionLevel(ptr noundef, i32 noundef) #3

declare i32 @LZ4_loadDictHC(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind ssp uwtable
define ptr @LZ4F_createCDict(ptr noundef %dictBuffer, i64 noundef %dictSize) #0 {
entry:
  %dictBuffer.addr = alloca ptr, align 8
  %dictSize.addr = alloca i64, align 8
  %byval-temp = alloca %struct.LZ4F_CustomMem, align 8
  store ptr %dictBuffer, ptr %dictBuffer.addr, align 8
  store i64 %dictSize, ptr %dictSize.addr, align 8
  %0 = load ptr, ptr %dictBuffer.addr, align 8
  %1 = load i64, ptr %dictSize.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %byval-temp, ptr align 8 @LZ4F_defaultCMem, i64 32, i1 false)
  %call = call ptr @LZ4F_createCDict_advanced(ptr noundef %byval-temp, ptr noundef %0, i64 noundef %1)
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define ptr @LZ4F_createCompressionContext_advanced(ptr noundef %customMem, i32 noundef %version) #0 {
entry:
  %retval = alloca ptr, align 8
  %version.addr = alloca i32, align 4
  %cctxPtr = alloca ptr, align 8
  %byval-temp = alloca %struct.LZ4F_CustomMem, align 8
  store i32 %version, ptr %version.addr, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %byval-temp, ptr align 8 %customMem, i64 32, i1 false)
  %call = call ptr @LZ4F_calloc(i64 noundef 216, ptr noundef %byval-temp)
  store ptr %call, ptr %cctxPtr, align 8
  %0 = load ptr, ptr %cctxPtr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %cctxPtr, align 8
  %cmem = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %1, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %cmem, ptr align 8 %customMem, i64 32, i1 false)
  %2 = load i32, ptr %version.addr, align 4
  %3 = load ptr, ptr %cctxPtr, align 8
  %version1 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %3, i32 0, i32 2
  store i32 %2, ptr %version1, align 8
  %4 = load ptr, ptr %cctxPtr, align 8
  %cStage = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %4, i32 0, i32 3
  store i32 0, ptr %cStage, align 4
  %5 = load ptr, ptr %cctxPtr, align 8
  store ptr %5, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load ptr, ptr %retval, align 8
  ret ptr %6
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @LZ4F_calloc(i64 noundef %s, ptr noundef %cmem) #0 {
entry:
  %retval = alloca ptr, align 8
  %s.addr = alloca i64, align 8
  %p = alloca ptr, align 8
  store i64 %s, ptr %s.addr, align 8
  %customCalloc = getelementptr inbounds %struct.LZ4F_CustomMem, ptr %cmem, i32 0, i32 1
  %0 = load ptr, ptr %customCalloc, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %customCalloc1 = getelementptr inbounds %struct.LZ4F_CustomMem, ptr %cmem, i32 0, i32 1
  %1 = load ptr, ptr %customCalloc1, align 8
  %opaqueState = getelementptr inbounds %struct.LZ4F_CustomMem, ptr %cmem, i32 0, i32 3
  %2 = load ptr, ptr %opaqueState, align 8
  %3 = load i64, ptr %s.addr, align 8
  %call = call ptr %1(ptr noundef %2, i64 noundef %3)
  store ptr %call, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %customAlloc = getelementptr inbounds %struct.LZ4F_CustomMem, ptr %cmem, i32 0, i32 0
  %4 = load ptr, ptr %customAlloc, align 8
  %cmp2 = icmp eq ptr %4, null
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %5 = load i64, ptr %s.addr, align 8
  %call4 = call ptr @calloc(i64 noundef 1, i64 noundef %5) #10
  store ptr %call4, ptr %retval, align 8
  br label %return

if.end5:                                          ; preds = %if.end
  %customAlloc6 = getelementptr inbounds %struct.LZ4F_CustomMem, ptr %cmem, i32 0, i32 0
  %6 = load ptr, ptr %customAlloc6, align 8
  %opaqueState7 = getelementptr inbounds %struct.LZ4F_CustomMem, ptr %cmem, i32 0, i32 3
  %7 = load ptr, ptr %opaqueState7, align 8
  %8 = load i64, ptr %s.addr, align 8
  %call8 = call ptr %6(ptr noundef %7, i64 noundef %8)
  store ptr %call8, ptr %p, align 8
  %9 = load ptr, ptr %p, align 8
  %cmp9 = icmp ne ptr %9, null
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end5
  %10 = load ptr, ptr %p, align 8
  %11 = load i64, ptr %s.addr, align 8
  %12 = load ptr, ptr %p, align 8
  %13 = call i64 @llvm.objectsize.i64.p0(ptr %12, i1 false, i1 true, i1 false)
  %call11 = call ptr @__memset_chk(ptr noundef %10, i32 noundef 0, i64 noundef %11, i64 noundef %13) #8
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end5
  %14 = load ptr, ptr %p, align 8
  store ptr %14, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end12, %if.then3, %if.then
  %15 = load ptr, ptr %retval, align 8
  ret ptr %15
}

; Function Attrs: nounwind ssp uwtable
define i64 @LZ4F_createCompressionContext(ptr noundef %LZ4F_compressionContextPtr, i32 noundef %version) #0 {
entry:
  %retval = alloca i64, align 8
  %LZ4F_compressionContextPtr.addr = alloca ptr, align 8
  %version.addr = alloca i32, align 4
  %byval-temp = alloca %struct.LZ4F_CustomMem, align 8
  store ptr %LZ4F_compressionContextPtr, ptr %LZ4F_compressionContextPtr.addr, align 8
  store i32 %version, ptr %version.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %LZ4F_compressionContextPtr.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %call = call i64 @pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_5(i32 noundef 21)
  store i64 %call, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i32, ptr %version.addr, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %byval-temp, ptr align 8 @LZ4F_defaultCMem, i64 32, i1 false)
  %call1 = call ptr @LZ4F_createCompressionContext_advanced(ptr noundef %byval-temp, i32 noundef %1)
  %2 = load ptr, ptr %LZ4F_compressionContextPtr.addr, align 8
  store ptr %call1, ptr %2, align 8
  br label %do.body2

do.body2:                                         ; preds = %do.end
  %3 = load ptr, ptr %LZ4F_compressionContextPtr.addr, align 8
  %4 = load ptr, ptr %3, align 8
  %cmp3 = icmp eq ptr %4, null
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %do.body2
  %call5 = call i64 @pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_6(i32 noundef 9)
  store i64 %call5, ptr %retval, align 8
  br label %return

if.end6:                                          ; preds = %do.body2
  br label %do.end7

do.end7:                                          ; preds = %if.end6
  store i64 0, ptr %retval, align 8
  br label %return

return:                                           ; preds = %do.end7, %if.then4, %if.then
  %5 = load i64, ptr %retval, align 8
  ret i64 %5
}

; Function Attrs: nounwind ssp uwtable
define i64 @LZ4F_freeCompressionContext(ptr noundef %cctxPtr) #0 {
entry:
  %cctxPtr.addr = alloca ptr, align 8
  %byval-temp = alloca %struct.LZ4F_CustomMem, align 8
  %byval-temp2 = alloca %struct.LZ4F_CustomMem, align 8
  %byval-temp4 = alloca %struct.LZ4F_CustomMem, align 8
  store ptr %cctxPtr, ptr %cctxPtr.addr, align 8
  %0 = load ptr, ptr %cctxPtr.addr, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cctxPtr.addr, align 8
  %lz4CtxPtr = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %1, i32 0, i32 12
  %2 = load ptr, ptr %lz4CtxPtr, align 8
  %3 = load ptr, ptr %cctxPtr.addr, align 8
  %cmem = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %3, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %byval-temp, ptr align 8 %cmem, i64 32, i1 false)
  call void @LZ4F_free(ptr noundef %2, ptr noundef %byval-temp)
  %4 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpBuff = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %4, i32 0, i32 7
  %5 = load ptr, ptr %tmpBuff, align 8
  %6 = load ptr, ptr %cctxPtr.addr, align 8
  %cmem1 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %6, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %byval-temp2, ptr align 8 %cmem1, i64 32, i1 false)
  call void @LZ4F_free(ptr noundef %5, ptr noundef %byval-temp2)
  %7 = load ptr, ptr %cctxPtr.addr, align 8
  %8 = load ptr, ptr %cctxPtr.addr, align 8
  %cmem3 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %8, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %byval-temp4, ptr align 8 %cmem3, i64 32, i1 false)
  call void @LZ4F_free(ptr noundef %7, ptr noundef %byval-temp4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 0
}

; Function Attrs: nounwind ssp uwtable
define i64 @LZ4F_cctx_size(ptr noundef %cctx) #0 {
entry:
  %retval = alloca i64, align 8
  %cctx.addr = alloca ptr, align 8
  store ptr %cctx, ptr %cctx.addr, align 8
  %0 = load ptr, ptr %cctx.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %cctx.addr, align 8
  %maxBufferSize = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %1, i32 0, i32 6
  %2 = load i64, ptr %maxBufferSize, align 8
  %add = add i64 216, %2
  %3 = load ptr, ptr %cctx.addr, align 8
  %lz4CtxAlloc = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %3, i32 0, i32 13
  %4 = load i16, ptr %lz4CtxAlloc, align 8
  %conv = zext i16 %4 to i32
  %call = call i32 @ctxTypeID_to_size(i32 noundef %conv)
  %conv1 = sext i32 %call to i64
  %add2 = add i64 %add, %conv1
  store i64 %add2, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i64, ptr %retval, align 8
  ret i64 %5
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @ctxTypeID_to_size(i32 noundef %ctxTypeID) #0 {
entry:
  %retval = alloca i32, align 4
  %ctxTypeID.addr = alloca i32, align 4
  store i32 %ctxTypeID, ptr %ctxTypeID.addr, align 4
  %0 = load i32, ptr %ctxTypeID.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %call = call i32 @LZ4_sizeofState()
  store i32 %call, ptr %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  %call2 = call i32 @LZ4_sizeofStateHC()
  store i32 %call2, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb1, %sw.bb
  %1 = load i32, ptr %retval, align 4
  ret i32 %1
}

; Function Attrs: nounwind ssp uwtable
define i64 @LZ4F_compressBegin(ptr noundef %cctx, ptr noundef %dstBuffer, i64 noundef %dstCapacity, ptr noundef %preferencesPtr) #0 {
entry:
  %cctx.addr = alloca ptr, align 8
  %dstBuffer.addr = alloca ptr, align 8
  %dstCapacity.addr = alloca i64, align 8
  %preferencesPtr.addr = alloca ptr, align 8
  store ptr %cctx, ptr %cctx.addr, align 8
  store ptr %dstBuffer, ptr %dstBuffer.addr, align 8
  store i64 %dstCapacity, ptr %dstCapacity.addr, align 8
  store ptr %preferencesPtr, ptr %preferencesPtr.addr, align 8
  %0 = load ptr, ptr %cctx.addr, align 8
  %1 = load ptr, ptr %dstBuffer.addr, align 8
  %2 = load i64, ptr %dstCapacity.addr, align 8
  %3 = load ptr, ptr %preferencesPtr.addr, align 8
  %call = call i64 @LZ4F_compressBegin_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef null, i64 noundef 0, ptr noundef null, ptr noundef %3)
  ret i64 %call
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @LZ4F_compressBegin_internal(ptr noundef %cctx, ptr noundef %dstBuffer, i64 noundef %dstCapacity, ptr noundef %dictBuffer, i64 noundef %dictSize, ptr noundef %cdict, ptr noundef %preferencesPtr) #0 {
entry:
  %retval = alloca i64, align 8
  %cctx.addr = alloca ptr, align 8
  %dstBuffer.addr = alloca ptr, align 8
  %dstCapacity.addr = alloca i64, align 8
  %dictBuffer.addr = alloca ptr, align 8
  %dictSize.addr = alloca i64, align 8
  %cdict.addr = alloca ptr, align 8
  %preferencesPtr.addr = alloca ptr, align 8
  %prefNull = alloca %struct.LZ4F_preferences_t, align 8
  %dstStart = alloca ptr, align 8
  %dstPtr = alloca ptr, align 8
  %ctxTypeID = alloca i16, align 2
  %requiredSize = alloca i32, align 4
  %allocatedSize = alloca i32, align 4
  %byval-temp = alloca %struct.LZ4F_CustomMem, align 8
  %byval-temp19 = alloca %struct.LZ4F_CustomMem, align 8
  %byval-temp28 = alloca %struct.LZ4F_CustomMem, align 8
  %requiredBuffSize = alloca i64, align 8
  %byval-temp104 = alloca %struct.LZ4F_CustomMem, align 8
  %byval-temp106 = alloca %struct.LZ4F_CustomMem, align 8
  %headerStart = alloca ptr, align 8
  store ptr %cctx, ptr %cctx.addr, align 8
  store ptr %dstBuffer, ptr %dstBuffer.addr, align 8
  store i64 %dstCapacity, ptr %dstCapacity.addr, align 8
  store ptr %dictBuffer, ptr %dictBuffer.addr, align 8
  store i64 %dictSize, ptr %dictSize.addr, align 8
  store ptr %cdict, ptr %cdict.addr, align 8
  store ptr %preferencesPtr, ptr %preferencesPtr.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %prefNull, i8 0, i64 56, i1 false)
  %0 = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefNull, i32 0, i32 0
  %1 = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %0, i32 0, i32 0
  store i32 4, ptr %1, align 8
  %2 = load ptr, ptr %dstBuffer.addr, align 8
  store ptr %2, ptr %dstStart, align 8
  %3 = load ptr, ptr %dstStart, align 8
  store ptr %3, ptr %dstPtr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load i64, ptr %dstCapacity.addr, align 8
  %cmp = icmp ult i64 %4, 19
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %call = call i64 @pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_7(i32 noundef 11)
  store i64 %call, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %5 = load ptr, ptr %preferencesPtr.addr, align 8
  %cmp1 = icmp eq ptr %5, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %do.end
  store ptr %prefNull, ptr %preferencesPtr.addr, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %do.end
  %6 = load ptr, ptr %cctx.addr, align 8
  %prefs = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %preferencesPtr.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %prefs, ptr align 8 %7, i64 56, i1 false)
  %8 = load ptr, ptr %cctx.addr, align 8
  %prefs4 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %8, i32 0, i32 1
  %compressionLevel = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefs4, i32 0, i32 1
  %9 = load i32, ptr %compressionLevel, align 8
  %cmp5 = icmp slt i32 %9, 2
  %10 = zext i1 %cmp5 to i64
  %cond = select i1 %cmp5, i32 1, i32 2
  %conv = trunc i32 %cond to i16
  store i16 %conv, ptr %ctxTypeID, align 2
  %11 = load i16, ptr %ctxTypeID, align 2
  %conv6 = zext i16 %11 to i32
  %call7 = call i32 @ctxTypeID_to_size(i32 noundef %conv6)
  store i32 %call7, ptr %requiredSize, align 4
  %12 = load ptr, ptr %cctx.addr, align 8
  %lz4CtxAlloc = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %12, i32 0, i32 13
  %13 = load i16, ptr %lz4CtxAlloc, align 8
  %conv8 = zext i16 %13 to i32
  %call9 = call i32 @ctxTypeID_to_size(i32 noundef %conv8)
  store i32 %call9, ptr %allocatedSize, align 4
  %14 = load i32, ptr %allocatedSize, align 4
  %15 = load i32, ptr %requiredSize, align 4
  %cmp10 = icmp slt i32 %14, %15
  br i1 %cmp10, label %if.then12, label %if.else47

if.then12:                                        ; preds = %if.end3
  %16 = load ptr, ptr %cctx.addr, align 8
  %lz4CtxPtr = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %16, i32 0, i32 12
  %17 = load ptr, ptr %lz4CtxPtr, align 8
  %18 = load ptr, ptr %cctx.addr, align 8
  %cmem = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %18, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %byval-temp, ptr align 8 %cmem, i64 32, i1 false)
  call void @LZ4F_free(ptr noundef %17, ptr noundef %byval-temp)
  %19 = load ptr, ptr %cctx.addr, align 8
  %prefs13 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %19, i32 0, i32 1
  %compressionLevel14 = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefs13, i32 0, i32 1
  %20 = load i32, ptr %compressionLevel14, align 8
  %cmp15 = icmp slt i32 %20, 2
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.then12
  %21 = load ptr, ptr %cctx.addr, align 8
  %cmem18 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %21, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %byval-temp19, ptr align 8 %cmem18, i64 32, i1 false)
  %call20 = call ptr @pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_8(i64 noundef 16416, ptr noundef %byval-temp19)
  %22 = load ptr, ptr %cctx.addr, align 8
  %lz4CtxPtr21 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %22, i32 0, i32 12
  store ptr %call20, ptr %lz4CtxPtr21, align 8
  %23 = load ptr, ptr %cctx.addr, align 8
  %lz4CtxPtr22 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %23, i32 0, i32 12
  %24 = load ptr, ptr %lz4CtxPtr22, align 8
  %tobool = icmp ne ptr %24, null
  br i1 %tobool, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.then17
  %25 = load ptr, ptr %cctx.addr, align 8
  %lz4CtxPtr24 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %25, i32 0, i32 12
  %26 = load ptr, ptr %lz4CtxPtr24, align 8
  %call25 = call ptr @LZ4_initStream(ptr noundef %26, i64 noundef 16416)
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.then17
  br label %if.end37

if.else:                                          ; preds = %if.then12
  %27 = load ptr, ptr %cctx.addr, align 8
  %cmem27 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %27, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %byval-temp28, ptr align 8 %cmem27, i64 32, i1 false)
  %call29 = call ptr @pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_9(i64 noundef 262200, ptr noundef %byval-temp28)
  %28 = load ptr, ptr %cctx.addr, align 8
  %lz4CtxPtr30 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %28, i32 0, i32 12
  store ptr %call29, ptr %lz4CtxPtr30, align 8
  %29 = load ptr, ptr %cctx.addr, align 8
  %lz4CtxPtr31 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %29, i32 0, i32 12
  %30 = load ptr, ptr %lz4CtxPtr31, align 8
  %tobool32 = icmp ne ptr %30, null
  br i1 %tobool32, label %if.then33, label %if.end36

if.then33:                                        ; preds = %if.else
  %31 = load ptr, ptr %cctx.addr, align 8
  %lz4CtxPtr34 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %31, i32 0, i32 12
  %32 = load ptr, ptr %lz4CtxPtr34, align 8
  %call35 = call ptr @LZ4_initStreamHC(ptr noundef %32, i64 noundef 262200)
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.else
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end26
  br label %do.body38

do.body38:                                        ; preds = %if.end37
  %33 = load ptr, ptr %cctx.addr, align 8
  %lz4CtxPtr39 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %33, i32 0, i32 12
  %34 = load ptr, ptr %lz4CtxPtr39, align 8
  %cmp40 = icmp eq ptr %34, null
  br i1 %cmp40, label %if.then42, label %if.end44

if.then42:                                        ; preds = %do.body38
  %call43 = call i64 @pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_10(i32 noundef 9)
  store i64 %call43, ptr %retval, align 8
  br label %return

if.end44:                                         ; preds = %do.body38
  br label %do.end45

do.end45:                                         ; preds = %if.end44
  %35 = load i16, ptr %ctxTypeID, align 2
  %36 = load ptr, ptr %cctx.addr, align 8
  %lz4CtxAlloc46 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %36, i32 0, i32 13
  store i16 %35, ptr %lz4CtxAlloc46, align 8
  %37 = load i16, ptr %ctxTypeID, align 2
  %38 = load ptr, ptr %cctx.addr, align 8
  %lz4CtxType = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %38, i32 0, i32 14
  store i16 %37, ptr %lz4CtxType, align 2
  br label %if.end70

if.else47:                                        ; preds = %if.end3
  %39 = load ptr, ptr %cctx.addr, align 8
  %lz4CtxType48 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %39, i32 0, i32 14
  %40 = load i16, ptr %lz4CtxType48, align 2
  %conv49 = zext i16 %40 to i32
  %41 = load i16, ptr %ctxTypeID, align 2
  %conv50 = zext i16 %41 to i32
  %cmp51 = icmp ne i32 %conv49, %conv50
  br i1 %cmp51, label %if.then53, label %if.end69

if.then53:                                        ; preds = %if.else47
  %42 = load ptr, ptr %cctx.addr, align 8
  %prefs54 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %42, i32 0, i32 1
  %compressionLevel55 = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefs54, i32 0, i32 1
  %43 = load i32, ptr %compressionLevel55, align 8
  %cmp56 = icmp slt i32 %43, 2
  br i1 %cmp56, label %if.then58, label %if.else61

if.then58:                                        ; preds = %if.then53
  %44 = load ptr, ptr %cctx.addr, align 8
  %lz4CtxPtr59 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %44, i32 0, i32 12
  %45 = load ptr, ptr %lz4CtxPtr59, align 8
  %call60 = call ptr @LZ4_initStream(ptr noundef %45, i64 noundef 16416)
  br label %if.end67

if.else61:                                        ; preds = %if.then53
  %46 = load ptr, ptr %cctx.addr, align 8
  %lz4CtxPtr62 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %46, i32 0, i32 12
  %47 = load ptr, ptr %lz4CtxPtr62, align 8
  %call63 = call ptr @LZ4_initStreamHC(ptr noundef %47, i64 noundef 262200)
  %48 = load ptr, ptr %cctx.addr, align 8
  %lz4CtxPtr64 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %48, i32 0, i32 12
  %49 = load ptr, ptr %lz4CtxPtr64, align 8
  %50 = load ptr, ptr %cctx.addr, align 8
  %prefs65 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %50, i32 0, i32 1
  %compressionLevel66 = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefs65, i32 0, i32 1
  %51 = load i32, ptr %compressionLevel66, align 8
  call void @LZ4_setCompressionLevel(ptr noundef %49, i32 noundef %51)
  br label %if.end67

if.end67:                                         ; preds = %if.else61, %if.then58
  %52 = load i16, ptr %ctxTypeID, align 2
  %53 = load ptr, ptr %cctx.addr, align 8
  %lz4CtxType68 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %53, i32 0, i32 14
  store i16 %52, ptr %lz4CtxType68, align 2
  br label %if.end69

if.end69:                                         ; preds = %if.end67, %if.else47
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %do.end45
  %54 = load ptr, ptr %cctx.addr, align 8
  %prefs71 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %54, i32 0, i32 1
  %frameInfo = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefs71, i32 0, i32 0
  %blockSizeID = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo, i32 0, i32 0
  %55 = load i32, ptr %blockSizeID, align 8
  %cmp72 = icmp eq i32 %55, 0
  br i1 %cmp72, label %if.then74, label %if.end78

if.then74:                                        ; preds = %if.end70
  %56 = load ptr, ptr %cctx.addr, align 8
  %prefs75 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %56, i32 0, i32 1
  %frameInfo76 = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefs75, i32 0, i32 0
  %blockSizeID77 = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo76, i32 0, i32 0
  store i32 4, ptr %blockSizeID77, align 8
  br label %if.end78

if.end78:                                         ; preds = %if.then74, %if.end70
  %57 = load ptr, ptr %cctx.addr, align 8
  %prefs79 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %57, i32 0, i32 1
  %frameInfo80 = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefs79, i32 0, i32 0
  %blockSizeID81 = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo80, i32 0, i32 0
  %58 = load i32, ptr %blockSizeID81, align 8
  %call82 = call i64 @LZ4F_getBlockSize(i32 noundef %58)
  %59 = load ptr, ptr %cctx.addr, align 8
  %maxBlockSize = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %59, i32 0, i32 5
  store i64 %call82, ptr %maxBlockSize, align 8
  %60 = load ptr, ptr %preferencesPtr.addr, align 8
  %autoFlush = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %60, i32 0, i32 2
  %61 = load i32, ptr %autoFlush, align 4
  %tobool83 = icmp ne i32 %61, 0
  br i1 %tobool83, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end78
  %62 = load ptr, ptr %cctx.addr, align 8
  %prefs84 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %62, i32 0, i32 1
  %frameInfo85 = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefs84, i32 0, i32 0
  %blockMode = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo85, i32 0, i32 1
  %63 = load i32, ptr %blockMode, align 4
  %cmp86 = icmp eq i32 %63, 0
  %64 = zext i1 %cmp86 to i64
  %cond88 = select i1 %cmp86, i32 65536, i32 0
  %conv89 = sext i32 %cond88 to i64
  br label %cond.end

cond.false:                                       ; preds = %if.end78
  %65 = load ptr, ptr %cctx.addr, align 8
  %maxBlockSize90 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %65, i32 0, i32 5
  %66 = load i64, ptr %maxBlockSize90, align 8
  %67 = load ptr, ptr %cctx.addr, align 8
  %prefs91 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %67, i32 0, i32 1
  %frameInfo92 = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefs91, i32 0, i32 0
  %blockMode93 = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo92, i32 0, i32 1
  %68 = load i32, ptr %blockMode93, align 4
  %cmp94 = icmp eq i32 %68, 0
  %69 = zext i1 %cmp94 to i64
  %cond96 = select i1 %cmp94, i32 131072, i32 0
  %conv97 = sext i32 %cond96 to i64
  %add = add i64 %66, %conv97
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond98 = phi i64 [ %conv89, %cond.true ], [ %add, %cond.false ]
  store i64 %cond98, ptr %requiredBuffSize, align 8
  %70 = load ptr, ptr %cctx.addr, align 8
  %maxBufferSize = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %70, i32 0, i32 6
  %71 = load i64, ptr %maxBufferSize, align 8
  %72 = load i64, ptr %requiredBuffSize, align 8
  %cmp99 = icmp ult i64 %71, %72
  br i1 %cmp99, label %if.then101, label %if.end118

if.then101:                                       ; preds = %cond.end
  %73 = load ptr, ptr %cctx.addr, align 8
  %maxBufferSize102 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %73, i32 0, i32 6
  store i64 0, ptr %maxBufferSize102, align 8
  %74 = load ptr, ptr %cctx.addr, align 8
  %tmpBuff = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %74, i32 0, i32 7
  %75 = load ptr, ptr %tmpBuff, align 8
  %76 = load ptr, ptr %cctx.addr, align 8
  %cmem103 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %76, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %byval-temp104, ptr align 8 %cmem103, i64 32, i1 false)
  call void @LZ4F_free(ptr noundef %75, ptr noundef %byval-temp104)
  %77 = load i64, ptr %requiredBuffSize, align 8
  %78 = load ptr, ptr %cctx.addr, align 8
  %cmem105 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %78, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %byval-temp106, ptr align 8 %cmem105, i64 32, i1 false)
  %call107 = call ptr @LZ4F_malloc(i64 noundef %77, ptr noundef %byval-temp106)
  %79 = load ptr, ptr %cctx.addr, align 8
  %tmpBuff108 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %79, i32 0, i32 7
  store ptr %call107, ptr %tmpBuff108, align 8
  br label %do.body109

do.body109:                                       ; preds = %if.then101
  %80 = load ptr, ptr %cctx.addr, align 8
  %tmpBuff110 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %80, i32 0, i32 7
  %81 = load ptr, ptr %tmpBuff110, align 8
  %cmp111 = icmp eq ptr %81, null
  br i1 %cmp111, label %if.then113, label %if.end115

if.then113:                                       ; preds = %do.body109
  %call114 = call i64 @pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_11(i32 noundef 9)
  store i64 %call114, ptr %retval, align 8
  br label %return

if.end115:                                        ; preds = %do.body109
  br label %do.end116

do.end116:                                        ; preds = %if.end115
  %82 = load i64, ptr %requiredBuffSize, align 8
  %83 = load ptr, ptr %cctx.addr, align 8
  %maxBufferSize117 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %83, i32 0, i32 6
  store i64 %82, ptr %maxBufferSize117, align 8
  br label %if.end118

if.end118:                                        ; preds = %do.end116, %cond.end
  %84 = load ptr, ptr %cctx.addr, align 8
  %tmpBuff119 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %84, i32 0, i32 7
  %85 = load ptr, ptr %tmpBuff119, align 8
  %86 = load ptr, ptr %cctx.addr, align 8
  %tmpIn = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %86, i32 0, i32 8
  store ptr %85, ptr %tmpIn, align 8
  %87 = load ptr, ptr %cctx.addr, align 8
  %tmpInSize = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %87, i32 0, i32 9
  store i64 0, ptr %tmpInSize, align 8
  %88 = load ptr, ptr %cctx.addr, align 8
  %xxh = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %88, i32 0, i32 11
  %call120 = call i32 @XXH32_reset(ptr noundef %xxh, i32 noundef 0)
  %89 = load ptr, ptr %cdict.addr, align 8
  %90 = load ptr, ptr %cctx.addr, align 8
  %cdict121 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %90, i32 0, i32 4
  store ptr %89, ptr %cdict121, align 8
  %91 = load ptr, ptr %cctx.addr, align 8
  %prefs122 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %91, i32 0, i32 1
  %frameInfo123 = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefs122, i32 0, i32 0
  %blockMode124 = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo123, i32 0, i32 1
  %92 = load i32, ptr %blockMode124, align 4
  %cmp125 = icmp eq i32 %92, 0
  br i1 %cmp125, label %if.then127, label %if.end131

if.then127:                                       ; preds = %if.end118
  %93 = load ptr, ptr %cctx.addr, align 8
  %lz4CtxPtr128 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %93, i32 0, i32 12
  %94 = load ptr, ptr %lz4CtxPtr128, align 8
  %95 = load ptr, ptr %cdict.addr, align 8
  %96 = load ptr, ptr %cctx.addr, align 8
  %prefs129 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %96, i32 0, i32 1
  %compressionLevel130 = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefs129, i32 0, i32 1
  %97 = load i32, ptr %compressionLevel130, align 8
  call void @pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_12(ptr noundef %94, ptr noundef %95, i32 noundef %97, i32 noundef 0)
  br label %if.end131

if.end131:                                        ; preds = %if.then127, %if.end118
  %98 = load ptr, ptr %preferencesPtr.addr, align 8
  %compressionLevel132 = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %98, i32 0, i32 1
  %99 = load i32, ptr %compressionLevel132, align 8
  %cmp133 = icmp sge i32 %99, 2
  br i1 %cmp133, label %if.then135, label %if.end137

if.then135:                                       ; preds = %if.end131
  %100 = load ptr, ptr %cctx.addr, align 8
  %lz4CtxPtr136 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %100, i32 0, i32 12
  %101 = load ptr, ptr %lz4CtxPtr136, align 8
  %102 = load ptr, ptr %preferencesPtr.addr, align 8
  %favorDecSpeed = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %102, i32 0, i32 3
  %103 = load i32, ptr %favorDecSpeed, align 8
  call void @LZ4_favorDecompressionSpeed(ptr noundef %101, i32 noundef %103)
  br label %if.end137

if.end137:                                        ; preds = %if.then135, %if.end131
  %104 = load ptr, ptr %dictBuffer.addr, align 8
  %tobool138 = icmp ne ptr %104, null
  br i1 %tobool138, label %if.then139, label %if.end160

if.then139:                                       ; preds = %if.end137
  br label %do.body140

do.body140:                                       ; preds = %if.then139
  %105 = load i64, ptr %dictSize.addr, align 8
  %cmp141 = icmp ugt i64 %105, 2147483647
  br i1 %cmp141, label %if.then143, label %if.end145

if.then143:                                       ; preds = %do.body140
  %call144 = call i64 @pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_13(i32 noundef 4)
  store i64 %call144, ptr %retval, align 8
  br label %return

if.end145:                                        ; preds = %do.body140
  br label %do.end146

do.end146:                                        ; preds = %if.end145
  %106 = load ptr, ptr %cctx.addr, align 8
  %lz4CtxType147 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %106, i32 0, i32 14
  %107 = load i16, ptr %lz4CtxType147, align 2
  %conv148 = zext i16 %107 to i32
  %cmp149 = icmp eq i32 %conv148, 1
  br i1 %cmp149, label %if.then151, label %if.else155

if.then151:                                       ; preds = %do.end146
  %108 = load ptr, ptr %cctx.addr, align 8
  %lz4CtxPtr152 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %108, i32 0, i32 12
  %109 = load ptr, ptr %lz4CtxPtr152, align 8
  %110 = load ptr, ptr %dictBuffer.addr, align 8
  %111 = load i64, ptr %dictSize.addr, align 8
  %conv153 = trunc i64 %111 to i32
  %call154 = call i32 @LZ4_loadDict(ptr noundef %109, ptr noundef %110, i32 noundef %conv153)
  br label %if.end159

if.else155:                                       ; preds = %do.end146
  %112 = load ptr, ptr %cctx.addr, align 8
  %lz4CtxPtr156 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %112, i32 0, i32 12
  %113 = load ptr, ptr %lz4CtxPtr156, align 8
  %114 = load ptr, ptr %dictBuffer.addr, align 8
  %115 = load i64, ptr %dictSize.addr, align 8
  %conv157 = trunc i64 %115 to i32
  %call158 = call i32 @LZ4_loadDictHC(ptr noundef %113, ptr noundef %114, i32 noundef %conv157)
  br label %if.end159

if.end159:                                        ; preds = %if.else155, %if.then151
  br label %if.end160

if.end160:                                        ; preds = %if.end159, %if.end137
  %116 = load ptr, ptr %dstPtr, align 8
  call void @pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_14(ptr noundef %116, i32 noundef 407708164)
  %117 = load ptr, ptr %dstPtr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %117, i64 4
  store ptr %add.ptr, ptr %dstPtr, align 8
  %118 = load ptr, ptr %dstPtr, align 8
  store ptr %118, ptr %headerStart, align 8
  %119 = load ptr, ptr %cctx.addr, align 8
  %prefs161 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %119, i32 0, i32 1
  %frameInfo162 = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefs161, i32 0, i32 0
  %blockMode163 = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo162, i32 0, i32 1
  %120 = load i32, ptr %blockMode163, align 4
  %and = and i32 %120, 1
  %shl = shl i32 %and, 5
  %add164 = add i32 64, %shl
  %121 = load ptr, ptr %cctx.addr, align 8
  %prefs165 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %121, i32 0, i32 1
  %frameInfo166 = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefs165, i32 0, i32 0
  %blockChecksumFlag = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo166, i32 0, i32 6
  %122 = load i32, ptr %blockChecksumFlag, align 4
  %and167 = and i32 %122, 1
  %shl168 = shl i32 %and167, 4
  %add169 = add i32 %add164, %shl168
  %123 = load ptr, ptr %cctx.addr, align 8
  %prefs170 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %123, i32 0, i32 1
  %frameInfo171 = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefs170, i32 0, i32 0
  %contentSize = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo171, i32 0, i32 4
  %124 = load i64, ptr %contentSize, align 8
  %cmp172 = icmp ugt i64 %124, 0
  %conv173 = zext i1 %cmp172 to i32
  %shl174 = shl i32 %conv173, 3
  %add175 = add i32 %add169, %shl174
  %125 = load ptr, ptr %cctx.addr, align 8
  %prefs176 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %125, i32 0, i32 1
  %frameInfo177 = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefs176, i32 0, i32 0
  %contentChecksumFlag = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo177, i32 0, i32 2
  %126 = load i32, ptr %contentChecksumFlag, align 8
  %and178 = and i32 %126, 1
  %shl179 = shl i32 %and178, 2
  %add180 = add i32 %add175, %shl179
  %127 = load ptr, ptr %cctx.addr, align 8
  %prefs181 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %127, i32 0, i32 1
  %frameInfo182 = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefs181, i32 0, i32 0
  %dictID = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo182, i32 0, i32 5
  %128 = load i32, ptr %dictID, align 8
  %cmp183 = icmp ugt i32 %128, 0
  %conv184 = zext i1 %cmp183 to i32
  %add185 = add i32 %add180, %conv184
  %conv186 = trunc i32 %add185 to i8
  %129 = load ptr, ptr %dstPtr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %129, i32 1
  store ptr %incdec.ptr, ptr %dstPtr, align 8
  store i8 %conv186, ptr %129, align 1
  %130 = load ptr, ptr %cctx.addr, align 8
  %prefs187 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %130, i32 0, i32 1
  %frameInfo188 = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefs187, i32 0, i32 0
  %blockSizeID189 = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo188, i32 0, i32 0
  %131 = load i32, ptr %blockSizeID189, align 8
  %and190 = and i32 %131, 7
  %shl191 = shl i32 %and190, 4
  %conv192 = trunc i32 %shl191 to i8
  %132 = load ptr, ptr %dstPtr, align 8
  %incdec.ptr193 = getelementptr inbounds i8, ptr %132, i32 1
  store ptr %incdec.ptr193, ptr %dstPtr, align 8
  store i8 %conv192, ptr %132, align 1
  %133 = load ptr, ptr %cctx.addr, align 8
  %prefs194 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %133, i32 0, i32 1
  %frameInfo195 = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefs194, i32 0, i32 0
  %contentSize196 = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo195, i32 0, i32 4
  %134 = load i64, ptr %contentSize196, align 8
  %tobool197 = icmp ne i64 %134, 0
  br i1 %tobool197, label %if.then198, label %if.end203

if.then198:                                       ; preds = %if.end160
  %135 = load ptr, ptr %dstPtr, align 8
  %136 = load ptr, ptr %cctx.addr, align 8
  %prefs199 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %136, i32 0, i32 1
  %frameInfo200 = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefs199, i32 0, i32 0
  %contentSize201 = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo200, i32 0, i32 4
  %137 = load i64, ptr %contentSize201, align 8
  call void @LZ4F_writeLE64(ptr noundef %135, i64 noundef %137)
  %138 = load ptr, ptr %dstPtr, align 8
  %add.ptr202 = getelementptr inbounds i8, ptr %138, i64 8
  store ptr %add.ptr202, ptr %dstPtr, align 8
  %139 = load ptr, ptr %cctx.addr, align 8
  %totalInSize = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %139, i32 0, i32 10
  store i64 0, ptr %totalInSize, align 8
  br label %if.end203

if.end203:                                        ; preds = %if.then198, %if.end160
  %140 = load ptr, ptr %cctx.addr, align 8
  %prefs204 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %140, i32 0, i32 1
  %frameInfo205 = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefs204, i32 0, i32 0
  %dictID206 = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo205, i32 0, i32 5
  %141 = load i32, ptr %dictID206, align 8
  %tobool207 = icmp ne i32 %141, 0
  br i1 %tobool207, label %if.then208, label %if.end213

if.then208:                                       ; preds = %if.end203
  %142 = load ptr, ptr %dstPtr, align 8
  %143 = load ptr, ptr %cctx.addr, align 8
  %prefs209 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %143, i32 0, i32 1
  %frameInfo210 = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefs209, i32 0, i32 0
  %dictID211 = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo210, i32 0, i32 5
  %144 = load i32, ptr %dictID211, align 8
  call void @LZ4F_writeLE32(ptr noundef %142, i32 noundef %144)
  %145 = load ptr, ptr %dstPtr, align 8
  %add.ptr212 = getelementptr inbounds i8, ptr %145, i64 4
  store ptr %add.ptr212, ptr %dstPtr, align 8
  br label %if.end213

if.end213:                                        ; preds = %if.then208, %if.end203
  %146 = load ptr, ptr %headerStart, align 8
  %147 = load ptr, ptr %dstPtr, align 8
  %148 = load ptr, ptr %headerStart, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %147 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %148 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call214 = call zeroext i8 @LZ4F_headerChecksum(ptr noundef %146, i64 noundef %sub.ptr.sub)
  %149 = load ptr, ptr %dstPtr, align 8
  store i8 %call214, ptr %149, align 1
  %150 = load ptr, ptr %dstPtr, align 8
  %incdec.ptr215 = getelementptr inbounds i8, ptr %150, i32 1
  store ptr %incdec.ptr215, ptr %dstPtr, align 8
  %151 = load ptr, ptr %cctx.addr, align 8
  %cStage = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %151, i32 0, i32 3
  store i32 1, ptr %cStage, align 4
  %152 = load ptr, ptr %dstPtr, align 8
  %153 = load ptr, ptr %dstStart, align 8
  %sub.ptr.lhs.cast216 = ptrtoint ptr %152 to i64
  %sub.ptr.rhs.cast217 = ptrtoint ptr %153 to i64
  %sub.ptr.sub218 = sub i64 %sub.ptr.lhs.cast216, %sub.ptr.rhs.cast217
  store i64 %sub.ptr.sub218, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end213, %if.then143, %if.then113, %if.then42, %if.then
  %154 = load i64, ptr %retval, align 8
  ret i64 %154
}

; Function Attrs: nounwind ssp uwtable
define i64 @LZ4F_compressBegin_usingDict(ptr noundef %cctx, ptr noundef %dstBuffer, i64 noundef %dstCapacity, ptr noundef %dict, i64 noundef %dictSize, ptr noundef %preferencesPtr) #0 {
entry:
  %cctx.addr = alloca ptr, align 8
  %dstBuffer.addr = alloca ptr, align 8
  %dstCapacity.addr = alloca i64, align 8
  %dict.addr = alloca ptr, align 8
  %dictSize.addr = alloca i64, align 8
  %preferencesPtr.addr = alloca ptr, align 8
  store ptr %cctx, ptr %cctx.addr, align 8
  store ptr %dstBuffer, ptr %dstBuffer.addr, align 8
  store i64 %dstCapacity, ptr %dstCapacity.addr, align 8
  store ptr %dict, ptr %dict.addr, align 8
  store i64 %dictSize, ptr %dictSize.addr, align 8
  store ptr %preferencesPtr, ptr %preferencesPtr.addr, align 8
  %0 = load ptr, ptr %cctx.addr, align 8
  %1 = load ptr, ptr %dstBuffer.addr, align 8
  %2 = load i64, ptr %dstCapacity.addr, align 8
  %3 = load ptr, ptr %dict.addr, align 8
  %4 = load i64, ptr %dictSize.addr, align 8
  %5 = load ptr, ptr %preferencesPtr.addr, align 8
  %call = call i64 @LZ4F_compressBegin_usingDictOnce(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5)
  ret i64 %call
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @LZ4F_compressBegin_usingDictOnce(ptr noundef %cctx, ptr noundef %dstBuffer, i64 noundef %dstCapacity, ptr noundef %dict, i64 noundef %dictSize, ptr noundef %preferencesPtr) #0 {
entry:
  %cctx.addr = alloca ptr, align 8
  %dstBuffer.addr = alloca ptr, align 8
  %dstCapacity.addr = alloca i64, align 8
  %dict.addr = alloca ptr, align 8
  %dictSize.addr = alloca i64, align 8
  %preferencesPtr.addr = alloca ptr, align 8
  store ptr %cctx, ptr %cctx.addr, align 8
  store ptr %dstBuffer, ptr %dstBuffer.addr, align 8
  store i64 %dstCapacity, ptr %dstCapacity.addr, align 8
  store ptr %dict, ptr %dict.addr, align 8
  store i64 %dictSize, ptr %dictSize.addr, align 8
  store ptr %preferencesPtr, ptr %preferencesPtr.addr, align 8
  %0 = load ptr, ptr %cctx.addr, align 8
  %1 = load ptr, ptr %dstBuffer.addr, align 8
  %2 = load i64, ptr %dstCapacity.addr, align 8
  %3 = load ptr, ptr %dict.addr, align 8
  %4 = load i64, ptr %dictSize.addr, align 8
  %5 = load ptr, ptr %preferencesPtr.addr, align 8
  %call = call i64 @LZ4F_compressBegin_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef null, ptr noundef %5)
  ret i64 %call
}

; Function Attrs: nounwind ssp uwtable
define i64 @LZ4F_compressBound(i64 noundef %srcSize, ptr noundef %preferencesPtr) #0 {
entry:
  %retval = alloca i64, align 8
  %srcSize.addr = alloca i64, align 8
  %preferencesPtr.addr = alloca ptr, align 8
  store i64 %srcSize, ptr %srcSize.addr, align 8
  store ptr %preferencesPtr, ptr %preferencesPtr.addr, align 8
  %0 = load ptr, ptr %preferencesPtr.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %preferencesPtr.addr, align 8
  %autoFlush = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %autoFlush, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load i64, ptr %srcSize.addr, align 8
  %4 = load ptr, ptr %preferencesPtr.addr, align 8
  %call = call i64 @LZ4F_compressBound_internal(i64 noundef %3, ptr noundef %4, i64 noundef 0)
  store i64 %call, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load i64, ptr %srcSize.addr, align 8
  %6 = load ptr, ptr %preferencesPtr.addr, align 8
  %call2 = call i64 @LZ4F_compressBound_internal(i64 noundef %5, ptr noundef %6, i64 noundef -1)
  store i64 %call2, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i64, ptr %retval, align 8
  ret i64 %7
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @LZ4F_compressUpdateImpl(ptr noundef %cctxPtr, ptr noundef %dstBuffer, i64 noundef %dstCapacity, ptr noundef %srcBuffer, i64 noundef %srcSize, ptr noundef %compressOptionsPtr, i32 noundef %blockCompression) #0 {
entry:
  %retval = alloca i64, align 8
  %cctxPtr.addr = alloca ptr, align 8
  %dstBuffer.addr = alloca ptr, align 8
  %dstCapacity.addr = alloca i64, align 8
  %srcBuffer.addr = alloca ptr, align 8
  %srcSize.addr = alloca i64, align 8
  %compressOptionsPtr.addr = alloca ptr, align 8
  %blockCompression.addr = alloca i32, align 4
  %blockSize = alloca i64, align 8
  %srcPtr = alloca ptr, align 8
  %srcEnd = alloca ptr, align 8
  %dstStart = alloca ptr, align 8
  %dstPtr = alloca ptr, align 8
  %lastBlockCompressed = alloca i32, align 4
  %compress = alloca ptr, align 8
  %bytesWritten = alloca i64, align 8
  %sizeToCopy = alloca i64, align 8
  %sizeToCopy117 = alloca i64, align 8
  store ptr %cctxPtr, ptr %cctxPtr.addr, align 8
  store ptr %dstBuffer, ptr %dstBuffer.addr, align 8
  store i64 %dstCapacity, ptr %dstCapacity.addr, align 8
  store ptr %srcBuffer, ptr %srcBuffer.addr, align 8
  store i64 %srcSize, ptr %srcSize.addr, align 8
  store ptr %compressOptionsPtr, ptr %compressOptionsPtr.addr, align 8
  store i32 %blockCompression, ptr %blockCompression.addr, align 4
  %0 = load ptr, ptr %cctxPtr.addr, align 8
  %maxBlockSize = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %0, i32 0, i32 5
  %1 = load i64, ptr %maxBlockSize, align 8
  store i64 %1, ptr %blockSize, align 8
  %2 = load ptr, ptr %srcBuffer.addr, align 8
  store ptr %2, ptr %srcPtr, align 8
  %3 = load i64, ptr %srcSize.addr, align 8
  %tobool = icmp ne i64 %3, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load ptr, ptr %srcPtr, align 8
  %5 = load i64, ptr %srcSize.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 %5
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load ptr, ptr %srcPtr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %6, %cond.false ]
  store ptr %cond, ptr %srcEnd, align 8
  %7 = load ptr, ptr %dstBuffer.addr, align 8
  store ptr %7, ptr %dstStart, align 8
  %8 = load ptr, ptr %dstStart, align 8
  store ptr %8, ptr %dstPtr, align 8
  store i32 0, ptr %lastBlockCompressed, align 4
  %9 = load ptr, ptr %cctxPtr.addr, align 8
  %prefs = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %9, i32 0, i32 1
  %frameInfo = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefs, i32 0, i32 0
  %blockMode = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo, i32 0, i32 1
  %10 = load i32, ptr %blockMode, align 4
  %11 = load ptr, ptr %cctxPtr.addr, align 8
  %prefs1 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %11, i32 0, i32 1
  %compressionLevel = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefs1, i32 0, i32 1
  %12 = load i32, ptr %compressionLevel, align 8
  %13 = load i32, ptr %blockCompression.addr, align 4
  %call = call ptr @LZ4F_selectCompression(i32 noundef %10, i32 noundef %12, i32 noundef %13)
  store ptr %call, ptr %compress, align 8
  br label %do.body

do.body:                                          ; preds = %cond.end
  %14 = load ptr, ptr %cctxPtr.addr, align 8
  %cStage = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %14, i32 0, i32 3
  %15 = load i32, ptr %cStage, align 4
  %cmp = icmp ne i32 %15, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %call2 = call i64 @pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_15(i32 noundef 20)
  store i64 %call2, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %16 = load i64, ptr %dstCapacity.addr, align 8
  %17 = load i64, ptr %srcSize.addr, align 8
  %18 = load ptr, ptr %cctxPtr.addr, align 8
  %prefs3 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpInSize = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %19, i32 0, i32 9
  %20 = load i64, ptr %tmpInSize, align 8
  %call4 = call i64 @LZ4F_compressBound_internal(i64 noundef %17, ptr noundef %prefs3, i64 noundef %20)
  %cmp5 = icmp ult i64 %16, %call4
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %do.end
  %call7 = call i64 @pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_16(i32 noundef 11)
  store i64 %call7, ptr %retval, align 8
  br label %return

if.end8:                                          ; preds = %do.end
  %21 = load i32, ptr %blockCompression.addr, align 4
  %cmp9 = icmp eq i32 %21, 1
  br i1 %cmp9, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %if.end8
  %22 = load i64, ptr %dstCapacity.addr, align 8
  %23 = load i64, ptr %srcSize.addr, align 8
  %cmp10 = icmp ult i64 %22, %23
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %land.lhs.true
  %call12 = call i64 @pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_17(i32 noundef 11)
  store i64 %call12, ptr %retval, align 8
  br label %return

if.end13:                                         ; preds = %land.lhs.true, %if.end8
  %24 = load ptr, ptr %cctxPtr.addr, align 8
  %blockCompressMode = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %24, i32 0, i32 15
  %25 = load i32, ptr %blockCompressMode, align 4
  %26 = load i32, ptr %blockCompression.addr, align 4
  %cmp14 = icmp ne i32 %25, %26
  br i1 %cmp14, label %if.then15, label %if.end19

if.then15:                                        ; preds = %if.end13
  %27 = load ptr, ptr %cctxPtr.addr, align 8
  %28 = load ptr, ptr %dstBuffer.addr, align 8
  %29 = load i64, ptr %dstCapacity.addr, align 8
  %30 = load ptr, ptr %compressOptionsPtr.addr, align 8
  %call16 = call i64 @LZ4F_flush(ptr noundef %27, ptr noundef %28, i64 noundef %29, ptr noundef %30)
  store i64 %call16, ptr %bytesWritten, align 8
  %31 = load i64, ptr %bytesWritten, align 8
  %32 = load ptr, ptr %dstPtr, align 8
  %add.ptr17 = getelementptr inbounds i8, ptr %32, i64 %31
  store ptr %add.ptr17, ptr %dstPtr, align 8
  %33 = load i32, ptr %blockCompression.addr, align 4
  %34 = load ptr, ptr %cctxPtr.addr, align 8
  %blockCompressMode18 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %34, i32 0, i32 15
  store i32 %33, ptr %blockCompressMode18, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end13
  %35 = load ptr, ptr %compressOptionsPtr.addr, align 8
  %cmp20 = icmp eq ptr %35, null
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end19
  store ptr @k_cOptionsNull, ptr %compressOptionsPtr.addr, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end19
  %36 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpInSize23 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %36, i32 0, i32 9
  %37 = load i64, ptr %tmpInSize23, align 8
  %cmp24 = icmp ugt i64 %37, 0
  br i1 %cmp24, label %if.then25, label %if.end61

if.then25:                                        ; preds = %if.end22
  %38 = load i64, ptr %blockSize, align 8
  %39 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpInSize26 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %39, i32 0, i32 9
  %40 = load i64, ptr %tmpInSize26, align 8
  %sub = sub i64 %38, %40
  store i64 %sub, ptr %sizeToCopy, align 8
  %41 = load i64, ptr %sizeToCopy, align 8
  %42 = load i64, ptr %srcSize.addr, align 8
  %cmp27 = icmp ugt i64 %41, %42
  br i1 %cmp27, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.then25
  %43 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpIn = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %43, i32 0, i32 8
  %44 = load ptr, ptr %tmpIn, align 8
  %45 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpInSize29 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %45, i32 0, i32 9
  %46 = load i64, ptr %tmpInSize29, align 8
  %add.ptr30 = getelementptr inbounds i8, ptr %44, i64 %46
  %47 = load ptr, ptr %srcBuffer.addr, align 8
  %48 = load i64, ptr %srcSize.addr, align 8
  %49 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpIn31 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %49, i32 0, i32 8
  %50 = load ptr, ptr %tmpIn31, align 8
  %51 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpInSize32 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %51, i32 0, i32 9
  %52 = load i64, ptr %tmpInSize32, align 8
  %add.ptr33 = getelementptr inbounds i8, ptr %50, i64 %52
  %53 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr33, i1 false, i1 true, i1 false)
  %call34 = call ptr @__memcpy_chk(ptr noundef %add.ptr30, ptr noundef %47, i64 noundef %48, i64 noundef %53) #8
  %54 = load ptr, ptr %srcEnd, align 8
  store ptr %54, ptr %srcPtr, align 8
  %55 = load i64, ptr %srcSize.addr, align 8
  %56 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpInSize35 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %56, i32 0, i32 9
  %57 = load i64, ptr %tmpInSize35, align 8
  %add = add i64 %57, %55
  store i64 %add, ptr %tmpInSize35, align 8
  br label %if.end60

if.else:                                          ; preds = %if.then25
  store i32 1, ptr %lastBlockCompressed, align 4
  %58 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpIn36 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %58, i32 0, i32 8
  %59 = load ptr, ptr %tmpIn36, align 8
  %60 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpInSize37 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %60, i32 0, i32 9
  %61 = load i64, ptr %tmpInSize37, align 8
  %add.ptr38 = getelementptr inbounds i8, ptr %59, i64 %61
  %62 = load ptr, ptr %srcBuffer.addr, align 8
  %63 = load i64, ptr %sizeToCopy, align 8
  %64 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpIn39 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %64, i32 0, i32 8
  %65 = load ptr, ptr %tmpIn39, align 8
  %66 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpInSize40 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %66, i32 0, i32 9
  %67 = load i64, ptr %tmpInSize40, align 8
  %add.ptr41 = getelementptr inbounds i8, ptr %65, i64 %67
  %68 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr41, i1 false, i1 true, i1 false)
  %call42 = call ptr @__memcpy_chk(ptr noundef %add.ptr38, ptr noundef %62, i64 noundef %63, i64 noundef %68) #8
  %69 = load i64, ptr %sizeToCopy, align 8
  %70 = load ptr, ptr %srcPtr, align 8
  %add.ptr43 = getelementptr inbounds i8, ptr %70, i64 %69
  store ptr %add.ptr43, ptr %srcPtr, align 8
  %71 = load ptr, ptr %dstPtr, align 8
  %72 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpIn44 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %72, i32 0, i32 8
  %73 = load ptr, ptr %tmpIn44, align 8
  %74 = load i64, ptr %blockSize, align 8
  %75 = load ptr, ptr %compress, align 8
  %76 = load ptr, ptr %cctxPtr.addr, align 8
  %lz4CtxPtr = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %76, i32 0, i32 12
  %77 = load ptr, ptr %lz4CtxPtr, align 8
  %78 = load ptr, ptr %cctxPtr.addr, align 8
  %prefs45 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %78, i32 0, i32 1
  %compressionLevel46 = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefs45, i32 0, i32 1
  %79 = load i32, ptr %compressionLevel46, align 8
  %80 = load ptr, ptr %cctxPtr.addr, align 8
  %cdict = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %80, i32 0, i32 4
  %81 = load ptr, ptr %cdict, align 8
  %82 = load ptr, ptr %cctxPtr.addr, align 8
  %prefs47 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %82, i32 0, i32 1
  %frameInfo48 = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefs47, i32 0, i32 0
  %blockChecksumFlag = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo48, i32 0, i32 6
  %83 = load i32, ptr %blockChecksumFlag, align 4
  %call49 = call i64 @LZ4F_makeBlock(ptr noundef %71, ptr noundef %73, i64 noundef %74, ptr noundef %75, ptr noundef %77, i32 noundef %79, ptr noundef %81, i32 noundef %83)
  %84 = load ptr, ptr %dstPtr, align 8
  %add.ptr50 = getelementptr inbounds i8, ptr %84, i64 %call49
  store ptr %add.ptr50, ptr %dstPtr, align 8
  %85 = load ptr, ptr %cctxPtr.addr, align 8
  %prefs51 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %85, i32 0, i32 1
  %frameInfo52 = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefs51, i32 0, i32 0
  %blockMode53 = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo52, i32 0, i32 1
  %86 = load i32, ptr %blockMode53, align 4
  %cmp54 = icmp eq i32 %86, 0
  br i1 %cmp54, label %if.then55, label %if.end58

if.then55:                                        ; preds = %if.else
  %87 = load i64, ptr %blockSize, align 8
  %88 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpIn56 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %88, i32 0, i32 8
  %89 = load ptr, ptr %tmpIn56, align 8
  %add.ptr57 = getelementptr inbounds i8, ptr %89, i64 %87
  store ptr %add.ptr57, ptr %tmpIn56, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %if.else
  %90 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpInSize59 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %90, i32 0, i32 9
  store i64 0, ptr %tmpInSize59, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.end58, %if.then28
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.end22
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end61
  %91 = load ptr, ptr %srcEnd, align 8
  %92 = load ptr, ptr %srcPtr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %91 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %92 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %93 = load i64, ptr %blockSize, align 8
  %cmp62 = icmp uge i64 %sub.ptr.sub, %93
  br i1 %cmp62, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 2, ptr %lastBlockCompressed, align 4
  %94 = load ptr, ptr %dstPtr, align 8
  %95 = load ptr, ptr %srcPtr, align 8
  %96 = load i64, ptr %blockSize, align 8
  %97 = load ptr, ptr %compress, align 8
  %98 = load ptr, ptr %cctxPtr.addr, align 8
  %lz4CtxPtr63 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %98, i32 0, i32 12
  %99 = load ptr, ptr %lz4CtxPtr63, align 8
  %100 = load ptr, ptr %cctxPtr.addr, align 8
  %prefs64 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %100, i32 0, i32 1
  %compressionLevel65 = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefs64, i32 0, i32 1
  %101 = load i32, ptr %compressionLevel65, align 8
  %102 = load ptr, ptr %cctxPtr.addr, align 8
  %cdict66 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %102, i32 0, i32 4
  %103 = load ptr, ptr %cdict66, align 8
  %104 = load ptr, ptr %cctxPtr.addr, align 8
  %prefs67 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %104, i32 0, i32 1
  %frameInfo68 = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefs67, i32 0, i32 0
  %blockChecksumFlag69 = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo68, i32 0, i32 6
  %105 = load i32, ptr %blockChecksumFlag69, align 4
  %call70 = call i64 @LZ4F_makeBlock(ptr noundef %94, ptr noundef %95, i64 noundef %96, ptr noundef %97, ptr noundef %99, i32 noundef %101, ptr noundef %103, i32 noundef %105)
  %106 = load ptr, ptr %dstPtr, align 8
  %add.ptr71 = getelementptr inbounds i8, ptr %106, i64 %call70
  store ptr %add.ptr71, ptr %dstPtr, align 8
  %107 = load i64, ptr %blockSize, align 8
  %108 = load ptr, ptr %srcPtr, align 8
  %add.ptr72 = getelementptr inbounds i8, ptr %108, i64 %107
  store ptr %add.ptr72, ptr %srcPtr, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %109 = load ptr, ptr %cctxPtr.addr, align 8
  %prefs73 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %109, i32 0, i32 1
  %autoFlush = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefs73, i32 0, i32 2
  %110 = load i32, ptr %autoFlush, align 4
  %tobool74 = icmp ne i32 %110, 0
  br i1 %tobool74, label %land.lhs.true75, label %if.end90

land.lhs.true75:                                  ; preds = %while.end
  %111 = load ptr, ptr %srcPtr, align 8
  %112 = load ptr, ptr %srcEnd, align 8
  %cmp76 = icmp ult ptr %111, %112
  br i1 %cmp76, label %if.then77, label %if.end90

if.then77:                                        ; preds = %land.lhs.true75
  store i32 2, ptr %lastBlockCompressed, align 4
  %113 = load ptr, ptr %dstPtr, align 8
  %114 = load ptr, ptr %srcPtr, align 8
  %115 = load ptr, ptr %srcEnd, align 8
  %116 = load ptr, ptr %srcPtr, align 8
  %sub.ptr.lhs.cast78 = ptrtoint ptr %115 to i64
  %sub.ptr.rhs.cast79 = ptrtoint ptr %116 to i64
  %sub.ptr.sub80 = sub i64 %sub.ptr.lhs.cast78, %sub.ptr.rhs.cast79
  %117 = load ptr, ptr %compress, align 8
  %118 = load ptr, ptr %cctxPtr.addr, align 8
  %lz4CtxPtr81 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %118, i32 0, i32 12
  %119 = load ptr, ptr %lz4CtxPtr81, align 8
  %120 = load ptr, ptr %cctxPtr.addr, align 8
  %prefs82 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %120, i32 0, i32 1
  %compressionLevel83 = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefs82, i32 0, i32 1
  %121 = load i32, ptr %compressionLevel83, align 8
  %122 = load ptr, ptr %cctxPtr.addr, align 8
  %cdict84 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %122, i32 0, i32 4
  %123 = load ptr, ptr %cdict84, align 8
  %124 = load ptr, ptr %cctxPtr.addr, align 8
  %prefs85 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %124, i32 0, i32 1
  %frameInfo86 = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefs85, i32 0, i32 0
  %blockChecksumFlag87 = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo86, i32 0, i32 6
  %125 = load i32, ptr %blockChecksumFlag87, align 4
  %call88 = call i64 @LZ4F_makeBlock(ptr noundef %113, ptr noundef %114, i64 noundef %sub.ptr.sub80, ptr noundef %117, ptr noundef %119, i32 noundef %121, ptr noundef %123, i32 noundef %125)
  %126 = load ptr, ptr %dstPtr, align 8
  %add.ptr89 = getelementptr inbounds i8, ptr %126, i64 %call88
  store ptr %add.ptr89, ptr %dstPtr, align 8
  %127 = load ptr, ptr %srcEnd, align 8
  store ptr %127, ptr %srcPtr, align 8
  br label %if.end90

if.end90:                                         ; preds = %if.then77, %land.lhs.true75, %while.end
  %128 = load ptr, ptr %cctxPtr.addr, align 8
  %prefs91 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %128, i32 0, i32 1
  %frameInfo92 = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefs91, i32 0, i32 0
  %blockMode93 = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo92, i32 0, i32 1
  %129 = load i32, ptr %blockMode93, align 4
  %cmp94 = icmp eq i32 %129, 0
  br i1 %cmp94, label %land.lhs.true95, label %if.end103

land.lhs.true95:                                  ; preds = %if.end90
  %130 = load i32, ptr %lastBlockCompressed, align 4
  %cmp96 = icmp eq i32 %130, 2
  br i1 %cmp96, label %if.then97, label %if.end103

if.then97:                                        ; preds = %land.lhs.true95
  %131 = load ptr, ptr %compressOptionsPtr.addr, align 8
  %stableSrc = getelementptr inbounds %struct.LZ4F_compressOptions_t, ptr %131, i32 0, i32 0
  %132 = load i32, ptr %stableSrc, align 4
  %tobool98 = icmp ne i32 %132, 0
  br i1 %tobool98, label %if.then99, label %if.else101

if.then99:                                        ; preds = %if.then97
  %133 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpBuff = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %133, i32 0, i32 7
  %134 = load ptr, ptr %tmpBuff, align 8
  %135 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpIn100 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %135, i32 0, i32 8
  store ptr %134, ptr %tmpIn100, align 8
  br label %if.end102

if.else101:                                       ; preds = %if.then97
  %136 = load ptr, ptr %cctxPtr.addr, align 8
  call void @LZ4F_localSaveDict(ptr noundef %136)
  br label %if.end102

if.end102:                                        ; preds = %if.else101, %if.then99
  br label %if.end103

if.end103:                                        ; preds = %if.end102, %land.lhs.true95, %if.end90
  %137 = load ptr, ptr %cctxPtr.addr, align 8
  %prefs104 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %137, i32 0, i32 1
  %autoFlush105 = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefs104, i32 0, i32 2
  %138 = load i32, ptr %autoFlush105, align 4
  %tobool106 = icmp ne i32 %138, 0
  br i1 %tobool106, label %if.end114, label %land.lhs.true107

land.lhs.true107:                                 ; preds = %if.end103
  %139 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpIn108 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %139, i32 0, i32 8
  %140 = load ptr, ptr %tmpIn108, align 8
  %141 = load i64, ptr %blockSize, align 8
  %add.ptr109 = getelementptr inbounds i8, ptr %140, i64 %141
  %142 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpBuff110 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %142, i32 0, i32 7
  %143 = load ptr, ptr %tmpBuff110, align 8
  %144 = load ptr, ptr %cctxPtr.addr, align 8
  %maxBufferSize = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %144, i32 0, i32 6
  %145 = load i64, ptr %maxBufferSize, align 8
  %add.ptr111 = getelementptr inbounds i8, ptr %143, i64 %145
  %cmp112 = icmp ugt ptr %add.ptr109, %add.ptr111
  br i1 %cmp112, label %if.then113, label %if.end114

if.then113:                                       ; preds = %land.lhs.true107
  %146 = load ptr, ptr %cctxPtr.addr, align 8
  call void @LZ4F_localSaveDict(ptr noundef %146)
  br label %if.end114

if.end114:                                        ; preds = %if.then113, %land.lhs.true107, %if.end103
  %147 = load ptr, ptr %srcPtr, align 8
  %148 = load ptr, ptr %srcEnd, align 8
  %cmp115 = icmp ult ptr %147, %148
  br i1 %cmp115, label %if.then116, label %if.end125

if.then116:                                       ; preds = %if.end114
  %149 = load ptr, ptr %srcEnd, align 8
  %150 = load ptr, ptr %srcPtr, align 8
  %sub.ptr.lhs.cast118 = ptrtoint ptr %149 to i64
  %sub.ptr.rhs.cast119 = ptrtoint ptr %150 to i64
  %sub.ptr.sub120 = sub i64 %sub.ptr.lhs.cast118, %sub.ptr.rhs.cast119
  store i64 %sub.ptr.sub120, ptr %sizeToCopy117, align 8
  %151 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpIn121 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %151, i32 0, i32 8
  %152 = load ptr, ptr %tmpIn121, align 8
  %153 = load ptr, ptr %srcPtr, align 8
  %154 = load i64, ptr %sizeToCopy117, align 8
  %155 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpIn122 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %155, i32 0, i32 8
  %156 = load ptr, ptr %tmpIn122, align 8
  %157 = call i64 @llvm.objectsize.i64.p0(ptr %156, i1 false, i1 true, i1 false)
  %call123 = call ptr @__memcpy_chk(ptr noundef %152, ptr noundef %153, i64 noundef %154, i64 noundef %157) #8
  %158 = load i64, ptr %sizeToCopy117, align 8
  %159 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpInSize124 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %159, i32 0, i32 9
  store i64 %158, ptr %tmpInSize124, align 8
  br label %if.end125

if.end125:                                        ; preds = %if.then116, %if.end114
  %160 = load ptr, ptr %cctxPtr.addr, align 8
  %prefs126 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %160, i32 0, i32 1
  %frameInfo127 = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefs126, i32 0, i32 0
  %contentChecksumFlag = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo127, i32 0, i32 2
  %161 = load i32, ptr %contentChecksumFlag, align 8
  %cmp128 = icmp eq i32 %161, 1
  br i1 %cmp128, label %if.then129, label %if.end131

if.then129:                                       ; preds = %if.end125
  %162 = load ptr, ptr %cctxPtr.addr, align 8
  %xxh = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %162, i32 0, i32 11
  %163 = load ptr, ptr %srcBuffer.addr, align 8
  %164 = load i64, ptr %srcSize.addr, align 8
  %call130 = call i32 @XXH32_update(ptr noundef %xxh, ptr noundef %163, i64 noundef %164)
  br label %if.end131

if.end131:                                        ; preds = %if.then129, %if.end125
  %165 = load i64, ptr %srcSize.addr, align 8
  %166 = load ptr, ptr %cctxPtr.addr, align 8
  %totalInSize = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %166, i32 0, i32 10
  %167 = load i64, ptr %totalInSize, align 8
  %add132 = add i64 %167, %165
  store i64 %add132, ptr %totalInSize, align 8
  %168 = load ptr, ptr %dstPtr, align 8
  %169 = load ptr, ptr %dstStart, align 8
  %sub.ptr.lhs.cast133 = ptrtoint ptr %168 to i64
  %sub.ptr.rhs.cast134 = ptrtoint ptr %169 to i64
  %sub.ptr.sub135 = sub i64 %sub.ptr.lhs.cast133, %sub.ptr.rhs.cast134
  store i64 %sub.ptr.sub135, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end131, %if.then11, %if.then6, %if.then
  %170 = load i64, ptr %retval, align 8
  ret i64 %170
}

; Function Attrs: nounwind ssp uwtable
define i64 @LZ4F_uncompressedUpdate(ptr noundef %cctxPtr, ptr noundef %dstBuffer, i64 noundef %dstCapacity, ptr noundef %srcBuffer, i64 noundef %srcSize, ptr noundef %compressOptionsPtr) #0 {
entry:
  %cctxPtr.addr = alloca ptr, align 8
  %dstBuffer.addr = alloca ptr, align 8
  %dstCapacity.addr = alloca i64, align 8
  %srcBuffer.addr = alloca ptr, align 8
  %srcSize.addr = alloca i64, align 8
  %compressOptionsPtr.addr = alloca ptr, align 8
  store ptr %cctxPtr, ptr %cctxPtr.addr, align 8
  store ptr %dstBuffer, ptr %dstBuffer.addr, align 8
  store i64 %dstCapacity, ptr %dstCapacity.addr, align 8
  store ptr %srcBuffer, ptr %srcBuffer.addr, align 8
  store i64 %srcSize, ptr %srcSize.addr, align 8
  store ptr %compressOptionsPtr, ptr %compressOptionsPtr.addr, align 8
  %0 = load ptr, ptr %cctxPtr.addr, align 8
  %1 = load ptr, ptr %dstBuffer.addr, align 8
  %2 = load i64, ptr %dstCapacity.addr, align 8
  %3 = load ptr, ptr %srcBuffer.addr, align 8
  %4 = load i64, ptr %srcSize.addr, align 8
  %5 = load ptr, ptr %compressOptionsPtr.addr, align 8
  %call = call i64 @LZ4F_compressUpdateImpl(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i32 noundef 1)
  ret i64 %call
}

; Function Attrs: nounwind ssp uwtable
define i64 @LZ4F_flush(ptr noundef %cctxPtr, ptr noundef %dstBuffer, i64 noundef %dstCapacity, ptr noundef %compressOptionsPtr) #0 {
entry:
  %retval = alloca i64, align 8
  %cctxPtr.addr = alloca ptr, align 8
  %dstBuffer.addr = alloca ptr, align 8
  %dstCapacity.addr = alloca i64, align 8
  %compressOptionsPtr.addr = alloca ptr, align 8
  %dstStart = alloca ptr, align 8
  %dstPtr = alloca ptr, align 8
  %compress = alloca ptr, align 8
  store ptr %cctxPtr, ptr %cctxPtr.addr, align 8
  store ptr %dstBuffer, ptr %dstBuffer.addr, align 8
  store i64 %dstCapacity, ptr %dstCapacity.addr, align 8
  store ptr %compressOptionsPtr, ptr %compressOptionsPtr.addr, align 8
  %0 = load ptr, ptr %dstBuffer.addr, align 8
  store ptr %0, ptr %dstStart, align 8
  %1 = load ptr, ptr %dstStart, align 8
  store ptr %1, ptr %dstPtr, align 8
  %2 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpInSize = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %2, i32 0, i32 9
  %3 = load i64, ptr %tmpInSize, align 8
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %4 = load ptr, ptr %cctxPtr.addr, align 8
  %cStage = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %4, i32 0, i32 3
  %5 = load i32, ptr %cStage, align 4
  %cmp1 = icmp ne i32 %5, 1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %do.body
  %call = call i64 @pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_18(i32 noundef 20)
  store i64 %call, ptr %retval, align 8
  br label %return

if.end3:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end3
  br label %do.body4

do.body4:                                         ; preds = %do.end
  %6 = load i64, ptr %dstCapacity.addr, align 8
  %7 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpInSize5 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %7, i32 0, i32 9
  %8 = load i64, ptr %tmpInSize5, align 8
  %add = add i64 %8, 4
  %add6 = add i64 %add, 4
  %cmp7 = icmp ult i64 %6, %add6
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %do.body4
  %call9 = call i64 @pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_19(i32 noundef 11)
  store i64 %call9, ptr %retval, align 8
  br label %return

if.end10:                                         ; preds = %do.body4
  br label %do.end11

do.end11:                                         ; preds = %if.end10
  %9 = load ptr, ptr %compressOptionsPtr.addr, align 8
  %10 = load ptr, ptr %cctxPtr.addr, align 8
  %prefs = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %10, i32 0, i32 1
  %frameInfo = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefs, i32 0, i32 0
  %blockMode = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo, i32 0, i32 1
  %11 = load i32, ptr %blockMode, align 4
  %12 = load ptr, ptr %cctxPtr.addr, align 8
  %prefs12 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %12, i32 0, i32 1
  %compressionLevel = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefs12, i32 0, i32 1
  %13 = load i32, ptr %compressionLevel, align 8
  %14 = load ptr, ptr %cctxPtr.addr, align 8
  %blockCompressMode = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %14, i32 0, i32 15
  %15 = load i32, ptr %blockCompressMode, align 4
  %call13 = call ptr @LZ4F_selectCompression(i32 noundef %11, i32 noundef %13, i32 noundef %15)
  store ptr %call13, ptr %compress, align 8
  %16 = load ptr, ptr %dstPtr, align 8
  %17 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpIn = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %17, i32 0, i32 8
  %18 = load ptr, ptr %tmpIn, align 8
  %19 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpInSize14 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %19, i32 0, i32 9
  %20 = load i64, ptr %tmpInSize14, align 8
  %21 = load ptr, ptr %compress, align 8
  %22 = load ptr, ptr %cctxPtr.addr, align 8
  %lz4CtxPtr = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %22, i32 0, i32 12
  %23 = load ptr, ptr %lz4CtxPtr, align 8
  %24 = load ptr, ptr %cctxPtr.addr, align 8
  %prefs15 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %24, i32 0, i32 1
  %compressionLevel16 = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefs15, i32 0, i32 1
  %25 = load i32, ptr %compressionLevel16, align 8
  %26 = load ptr, ptr %cctxPtr.addr, align 8
  %cdict = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %26, i32 0, i32 4
  %27 = load ptr, ptr %cdict, align 8
  %28 = load ptr, ptr %cctxPtr.addr, align 8
  %prefs17 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %28, i32 0, i32 1
  %frameInfo18 = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefs17, i32 0, i32 0
  %blockChecksumFlag = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo18, i32 0, i32 6
  %29 = load i32, ptr %blockChecksumFlag, align 4
  %call19 = call i64 @LZ4F_makeBlock(ptr noundef %16, ptr noundef %18, i64 noundef %20, ptr noundef %21, ptr noundef %23, i32 noundef %25, ptr noundef %27, i32 noundef %29)
  %30 = load ptr, ptr %dstPtr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %30, i64 %call19
  store ptr %add.ptr, ptr %dstPtr, align 8
  %31 = load ptr, ptr %cctxPtr.addr, align 8
  %prefs20 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %31, i32 0, i32 1
  %frameInfo21 = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefs20, i32 0, i32 0
  %blockMode22 = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo21, i32 0, i32 1
  %32 = load i32, ptr %blockMode22, align 4
  %cmp23 = icmp eq i32 %32, 0
  br i1 %cmp23, label %if.then24, label %if.end28

if.then24:                                        ; preds = %do.end11
  %33 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpInSize25 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %33, i32 0, i32 9
  %34 = load i64, ptr %tmpInSize25, align 8
  %35 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpIn26 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %35, i32 0, i32 8
  %36 = load ptr, ptr %tmpIn26, align 8
  %add.ptr27 = getelementptr inbounds i8, ptr %36, i64 %34
  store ptr %add.ptr27, ptr %tmpIn26, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %do.end11
  %37 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpInSize29 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %37, i32 0, i32 9
  store i64 0, ptr %tmpInSize29, align 8
  %38 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpIn30 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %38, i32 0, i32 8
  %39 = load ptr, ptr %tmpIn30, align 8
  %40 = load ptr, ptr %cctxPtr.addr, align 8
  %maxBlockSize = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %40, i32 0, i32 5
  %41 = load i64, ptr %maxBlockSize, align 8
  %add.ptr31 = getelementptr inbounds i8, ptr %39, i64 %41
  %42 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpBuff = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %42, i32 0, i32 7
  %43 = load ptr, ptr %tmpBuff, align 8
  %44 = load ptr, ptr %cctxPtr.addr, align 8
  %maxBufferSize = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %44, i32 0, i32 6
  %45 = load i64, ptr %maxBufferSize, align 8
  %add.ptr32 = getelementptr inbounds i8, ptr %43, i64 %45
  %cmp33 = icmp ugt ptr %add.ptr31, %add.ptr32
  br i1 %cmp33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end28
  %46 = load ptr, ptr %cctxPtr.addr, align 8
  call void @LZ4F_localSaveDict(ptr noundef %46)
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end28
  %47 = load ptr, ptr %dstPtr, align 8
  %48 = load ptr, ptr %dstStart, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %47 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %48 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end35, %if.then8, %if.then2, %if.then
  %49 = load i64, ptr %retval, align 8
  ret i64 %49
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @LZ4F_selectCompression(i32 noundef %blockMode, i32 noundef %level, i32 noundef %compressMode) #0 {
entry:
  %retval = alloca ptr, align 8
  %blockMode.addr = alloca i32, align 4
  %level.addr = alloca i32, align 4
  %compressMode.addr = alloca i32, align 4
  store i32 %blockMode, ptr %blockMode.addr, align 4
  store i32 %level, ptr %level.addr, align 4
  store i32 %compressMode, ptr %compressMode.addr, align 4
  %0 = load i32, ptr %compressMode.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr @LZ4F_doNotCompressBlock, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %level.addr, align 4
  %cmp1 = icmp slt i32 %1, 2
  br i1 %cmp1, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.end
  %2 = load i32, ptr %blockMode.addr, align 4
  %cmp3 = icmp eq i32 %2, 1
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.then2
  store ptr @LZ4F_compressBlock, ptr %retval, align 8
  br label %return

if.end5:                                          ; preds = %if.then2
  store ptr @LZ4F_compressBlock_continue, ptr %retval, align 8
  br label %return

if.end6:                                          ; preds = %if.end
  %3 = load i32, ptr %blockMode.addr, align 4
  %cmp7 = icmp eq i32 %3, 1
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  store ptr @LZ4F_compressBlockHC, ptr %retval, align 8
  br label %return

if.end9:                                          ; preds = %if.end6
  store ptr @LZ4F_compressBlockHC_continue, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end9, %if.then8, %if.end5, %if.then4, %if.then
  %4 = load ptr, ptr %retval, align 8
  ret ptr %4
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @LZ4F_makeBlock(ptr noundef %dst, ptr noundef %src, i64 noundef %srcSize, ptr noundef %compress, ptr noundef %lz4ctx, i32 noundef %level, ptr noundef %cdict, i32 noundef %crcFlag) #0 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %srcSize.addr = alloca i64, align 8
  %compress.addr = alloca ptr, align 8
  %lz4ctx.addr = alloca ptr, align 8
  %level.addr = alloca i32, align 4
  %cdict.addr = alloca ptr, align 8
  %crcFlag.addr = alloca i32, align 4
  %cSizePtr = alloca ptr, align 8
  %dstCapacity = alloca i32, align 4
  %cSize = alloca i32, align 4
  %crc32 = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  store ptr %src, ptr %src.addr, align 8
  store i64 %srcSize, ptr %srcSize.addr, align 8
  store ptr %compress, ptr %compress.addr, align 8
  store ptr %lz4ctx, ptr %lz4ctx.addr, align 8
  store i32 %level, ptr %level.addr, align 4
  store ptr %cdict, ptr %cdict.addr, align 8
  store i32 %crcFlag, ptr %crcFlag.addr, align 4
  %0 = load ptr, ptr %dst.addr, align 8
  store ptr %0, ptr %cSizePtr, align 8
  %1 = load i64, ptr %srcSize.addr, align 8
  %cmp = icmp ugt i64 %1, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %srcSize.addr, align 8
  %conv = trunc i64 %2 to i32
  %sub = sub nsw i32 %conv, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 1, %cond.false ]
  store i32 %cond, ptr %dstCapacity, align 4
  %3 = load ptr, ptr %compress.addr, align 8
  %4 = load ptr, ptr %lz4ctx.addr, align 8
  %5 = load ptr, ptr %src.addr, align 8
  %6 = load ptr, ptr %cSizePtr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 4
  %7 = load i64, ptr %srcSize.addr, align 8
  %conv1 = trunc i64 %7 to i32
  %8 = load i32, ptr %dstCapacity, align 4
  %9 = load i32, ptr %level.addr, align 4
  %10 = load ptr, ptr %cdict.addr, align 8
  %call = call i32 %3(ptr noundef %4, ptr noundef %5, ptr noundef %add.ptr, i32 noundef %conv1, i32 noundef %8, i32 noundef %9, ptr noundef %10)
  store i32 %call, ptr %cSize, align 4
  %11 = load i32, ptr %cSize, align 4
  %cmp2 = icmp eq i32 %11, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %12 = load i32, ptr %cSize, align 4
  %conv4 = zext i32 %12 to i64
  %13 = load i64, ptr %srcSize.addr, align 8
  %cmp5 = icmp uge i64 %conv4, %13
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  %14 = load i64, ptr %srcSize.addr, align 8
  %conv7 = trunc i64 %14 to i32
  store i32 %conv7, ptr %cSize, align 4
  %15 = load ptr, ptr %cSizePtr, align 8
  %16 = load i32, ptr %cSize, align 4
  %or = or i32 %16, -2147483648
  call void @LZ4F_writeLE32(ptr noundef %15, i32 noundef %or)
  %17 = load ptr, ptr %cSizePtr, align 8
  %add.ptr8 = getelementptr inbounds i8, ptr %17, i64 4
  %18 = load ptr, ptr %src.addr, align 8
  %19 = load i64, ptr %srcSize.addr, align 8
  %20 = load ptr, ptr %cSizePtr, align 8
  %add.ptr9 = getelementptr inbounds i8, ptr %20, i64 4
  %21 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr9, i1 false, i1 true, i1 false)
  %call10 = call ptr @__memcpy_chk(ptr noundef %add.ptr8, ptr noundef %18, i64 noundef %19, i64 noundef %21) #8
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %22 = load ptr, ptr %cSizePtr, align 8
  %23 = load i32, ptr %cSize, align 4
  call void @LZ4F_writeLE32(ptr noundef %22, i32 noundef %23)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %24 = load i32, ptr %crcFlag.addr, align 4
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %if.then11, label %if.end17

if.then11:                                        ; preds = %if.end
  %25 = load ptr, ptr %cSizePtr, align 8
  %add.ptr12 = getelementptr inbounds i8, ptr %25, i64 4
  %26 = load i32, ptr %cSize, align 4
  %conv13 = zext i32 %26 to i64
  %call14 = call i32 @XXH32(ptr noundef %add.ptr12, i64 noundef %conv13, i32 noundef 0)
  store i32 %call14, ptr %crc32, align 4
  %27 = load ptr, ptr %cSizePtr, align 8
  %add.ptr15 = getelementptr inbounds i8, ptr %27, i64 4
  %28 = load i32, ptr %cSize, align 4
  %idx.ext = zext i32 %28 to i64
  %add.ptr16 = getelementptr inbounds i8, ptr %add.ptr15, i64 %idx.ext
  %29 = load i32, ptr %crc32, align 4
  call void @LZ4F_writeLE32(ptr noundef %add.ptr16, i32 noundef %29)
  br label %if.end17

if.end17:                                         ; preds = %if.then11, %if.end
  %30 = load i32, ptr %cSize, align 4
  %conv18 = zext i32 %30 to i64
  %add = add i64 4, %conv18
  %31 = load i32, ptr %crcFlag.addr, align 4
  %conv19 = zext i32 %31 to i64
  %mul = mul i64 %conv19, 4
  %add20 = add i64 %add, %mul
  ret i64 %add20
}

; Function Attrs: nounwind ssp uwtable
define internal void @LZ4F_localSaveDict(ptr noundef %cctxPtr) #0 {
entry:
  %cctxPtr.addr = alloca ptr, align 8
  %dictSize = alloca i32, align 4
  store ptr %cctxPtr, ptr %cctxPtr.addr, align 8
  %0 = load ptr, ptr %cctxPtr.addr, align 8
  %prefs = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %0, i32 0, i32 1
  %compressionLevel = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefs, i32 0, i32 1
  %1 = load i32, ptr %compressionLevel, align 8
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %cctxPtr.addr, align 8
  %lz4CtxPtr = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %2, i32 0, i32 12
  %3 = load ptr, ptr %lz4CtxPtr, align 8
  %4 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpBuff = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %4, i32 0, i32 7
  %5 = load ptr, ptr %tmpBuff, align 8
  %call = call i32 @LZ4_saveDict(ptr noundef %3, ptr noundef %5, i32 noundef 65536)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load ptr, ptr %cctxPtr.addr, align 8
  %lz4CtxPtr1 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %6, i32 0, i32 12
  %7 = load ptr, ptr %lz4CtxPtr1, align 8
  %8 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpBuff2 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %8, i32 0, i32 7
  %9 = load ptr, ptr %tmpBuff2, align 8
  %call3 = call i32 @LZ4_saveDictHC(ptr noundef %7, ptr noundef %9, i32 noundef 65536)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call3, %cond.false ]
  store i32 %cond, ptr %dictSize, align 4
  %10 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpBuff4 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %10, i32 0, i32 7
  %11 = load ptr, ptr %tmpBuff4, align 8
  %12 = load i32, ptr %dictSize, align 4
  %idx.ext = sext i32 %12 to i64
  %add.ptr = getelementptr inbounds i8, ptr %11, i64 %idx.ext
  %13 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpIn = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %13, i32 0, i32 8
  store ptr %add.ptr, ptr %tmpIn, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @LZ4F_writeLE32(ptr noundef %dst, i32 noundef %value32) #0 {
entry:
  %dst.addr = alloca ptr, align 8
  %value32.addr = alloca i32, align 4
  %dstPtr = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8
  store i32 %value32, ptr %value32.addr, align 4
  %0 = load ptr, ptr %dst.addr, align 8
  store ptr %0, ptr %dstPtr, align 8
  %1 = load i32, ptr %value32.addr, align 4
  %conv = trunc i32 %1 to i8
  %2 = load ptr, ptr %dstPtr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 0
  store i8 %conv, ptr %arrayidx, align 1
  %3 = load i32, ptr %value32.addr, align 4
  %shr = lshr i32 %3, 8
  %conv1 = trunc i32 %shr to i8
  %4 = load ptr, ptr %dstPtr, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %4, i64 1
  store i8 %conv1, ptr %arrayidx2, align 1
  %5 = load i32, ptr %value32.addr, align 4
  %shr3 = lshr i32 %5, 16
  %conv4 = trunc i32 %shr3 to i8
  %6 = load ptr, ptr %dstPtr, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %6, i64 2
  store i8 %conv4, ptr %arrayidx5, align 1
  %7 = load i32, ptr %value32.addr, align 4
  %shr6 = lshr i32 %7, 24
  %conv7 = trunc i32 %shr6 to i8
  %8 = load ptr, ptr %dstPtr, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %8, i64 3
  store i8 %conv7, ptr %arrayidx8, align 1
  ret void
}

declare i32 @XXH32_digest(ptr noundef) #3

; Function Attrs: nounwind ssp uwtable
define ptr @LZ4F_createDecompressionContext_advanced(ptr noundef %customMem, i32 noundef %version) #0 {
entry:
  %retval = alloca ptr, align 8
  %version.addr = alloca i32, align 4
  %dctx = alloca ptr, align 8
  %byval-temp = alloca %struct.LZ4F_CustomMem, align 8
  store i32 %version, ptr %version.addr, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %byval-temp, ptr align 8 %customMem, i64 32, i1 false)
  %call = call ptr @LZ4F_calloc(i64 noundef 288, ptr noundef %byval-temp)
  store ptr %call, ptr %dctx, align 8
  %0 = load ptr, ptr %dctx, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %dctx, align 8
  %cmem = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %1, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %cmem, ptr align 8 %customMem, i64 32, i1 false)
  %2 = load i32, ptr %version.addr, align 4
  %3 = load ptr, ptr %dctx, align 8
  %version1 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %3, i32 0, i32 2
  store i32 %2, ptr %version1, align 8
  %4 = load ptr, ptr %dctx, align 8
  store ptr %4, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8
  ret ptr %5
}

; Function Attrs: nounwind ssp uwtable
define i64 @LZ4F_createDecompressionContext(ptr noundef %LZ4F_decompressionContextPtr, i32 noundef %versionNumber) #0 {
entry:
  %retval = alloca i64, align 8
  %LZ4F_decompressionContextPtr.addr = alloca ptr, align 8
  %versionNumber.addr = alloca i32, align 4
  %byval-temp = alloca %struct.LZ4F_CustomMem, align 8
  store ptr %LZ4F_decompressionContextPtr, ptr %LZ4F_decompressionContextPtr.addr, align 8
  store i32 %versionNumber, ptr %versionNumber.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %LZ4F_decompressionContextPtr.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %call = call i64 @pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_20(i32 noundef 21)
  store i64 %call, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i32, ptr %versionNumber.addr, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %byval-temp, ptr align 8 @LZ4F_defaultCMem, i64 32, i1 false)
  %call1 = call ptr @LZ4F_createDecompressionContext_advanced(ptr noundef %byval-temp, i32 noundef %1)
  %2 = load ptr, ptr %LZ4F_decompressionContextPtr.addr, align 8
  store ptr %call1, ptr %2, align 8
  %3 = load ptr, ptr %LZ4F_decompressionContextPtr.addr, align 8
  %4 = load ptr, ptr %3, align 8
  %cmp2 = icmp eq ptr %4, null
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %do.end
  %call4 = call i64 @pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_21(i32 noundef 9)
  store i64 %call4, ptr %retval, align 8
  br label %return

if.end5:                                          ; preds = %do.end
  store i64 0, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end5, %if.then3, %if.then
  %5 = load i64, ptr %retval, align 8
  ret i64 %5
}

; Function Attrs: nounwind ssp uwtable
define i64 @LZ4F_freeDecompressionContext(ptr noundef %dctx) #0 {
entry:
  %dctx.addr = alloca ptr, align 8
  %result = alloca i64, align 8
  %byval-temp = alloca %struct.LZ4F_CustomMem, align 8
  %byval-temp2 = alloca %struct.LZ4F_CustomMem, align 8
  %byval-temp4 = alloca %struct.LZ4F_CustomMem, align 8
  store ptr %dctx, ptr %dctx.addr, align 8
  store i64 0, ptr %result, align 8
  %0 = load ptr, ptr %dctx.addr, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %dctx.addr, align 8
  %dStage = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %dStage, align 4
  %conv = zext i32 %2 to i64
  store i64 %conv, ptr %result, align 8
  %3 = load ptr, ptr %dctx.addr, align 8
  %tmpIn = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %3, i32 0, i32 7
  %4 = load ptr, ptr %tmpIn, align 8
  %5 = load ptr, ptr %dctx.addr, align 8
  %cmem = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %5, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %byval-temp, ptr align 8 %cmem, i64 32, i1 false)
  call void @LZ4F_free(ptr noundef %4, ptr noundef %byval-temp)
  %6 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %6, i32 0, i32 10
  %7 = load ptr, ptr %tmpOutBuffer, align 8
  %8 = load ptr, ptr %dctx.addr, align 8
  %cmem1 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %8, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %byval-temp2, ptr align 8 %cmem1, i64 32, i1 false)
  call void @LZ4F_free(ptr noundef %7, ptr noundef %byval-temp2)
  %9 = load ptr, ptr %dctx.addr, align 8
  %10 = load ptr, ptr %dctx.addr, align 8
  %cmem3 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %10, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %byval-temp4, ptr align 8 %cmem3, i64 32, i1 false)
  call void @LZ4F_free(ptr noundef %9, ptr noundef %byval-temp4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i64, ptr %result, align 8
  ret i64 %11
}

; Function Attrs: nounwind ssp uwtable
define i64 @LZ4F_dctx_size(ptr noundef %dctx) #0 {
entry:
  %retval = alloca i64, align 8
  %dctx.addr = alloca ptr, align 8
  store ptr %dctx, ptr %dctx.addr, align 8
  %0 = load ptr, ptr %dctx.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %dctx.addr, align 8
  %tmpIn = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %tmpIn, align 8
  %cmp1 = icmp ne ptr %2, null
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %3 = load ptr, ptr %dctx.addr, align 8
  %maxBlockSize = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %3, i32 0, i32 5
  %4 = load i64, ptr %maxBlockSize, align 8
  %add = add i64 %4, 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add, %cond.true ], [ 0, %cond.false ]
  %add2 = add i64 288, %cond
  %5 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %5, i32 0, i32 10
  %6 = load ptr, ptr %tmpOutBuffer, align 8
  %cmp3 = icmp ne ptr %6, null
  br i1 %cmp3, label %cond.true4, label %cond.false5

cond.true4:                                       ; preds = %cond.end
  %7 = load ptr, ptr %dctx.addr, align 8
  %maxBufferSize = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %7, i32 0, i32 6
  %8 = load i64, ptr %maxBufferSize, align 8
  br label %cond.end6

cond.false5:                                      ; preds = %cond.end
  br label %cond.end6

cond.end6:                                        ; preds = %cond.false5, %cond.true4
  %cond7 = phi i64 [ %8, %cond.true4 ], [ 0, %cond.false5 ]
  %add8 = add i64 %add2, %cond7
  store i64 %add8, ptr %retval, align 8
  br label %return

return:                                           ; preds = %cond.end6, %if.then
  %9 = load i64, ptr %retval, align 8
  ret i64 %9
}

; Function Attrs: nounwind ssp uwtable
define void @LZ4F_resetDecompressionContext(ptr noundef %dctx) #0 {
entry:
  %dctx.addr = alloca ptr, align 8
  store ptr %dctx, ptr %dctx.addr, align 8
  %0 = load ptr, ptr %dctx.addr, align 8
  %dStage = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %0, i32 0, i32 3
  store i32 0, ptr %dStage, align 4
  %1 = load ptr, ptr %dctx.addr, align 8
  %dict = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %1, i32 0, i32 11
  store ptr null, ptr %dict, align 8
  %2 = load ptr, ptr %dctx.addr, align 8
  %dictSize = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %2, i32 0, i32 12
  store i64 0, ptr %dictSize, align 8
  %3 = load ptr, ptr %dctx.addr, align 8
  %skipChecksum = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %3, i32 0, i32 18
  store i32 0, ptr %skipChecksum, align 8
  %4 = load ptr, ptr %dctx.addr, align 8
  %frameRemainingSize = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %4, i32 0, i32 4
  store i64 0, ptr %frameRemainingSize, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i64 @LZ4F_headerSize(ptr noundef %src, i64 noundef %srcSize) #0 {
entry:
  %retval = alloca i64, align 8
  %src.addr = alloca ptr, align 8
  %srcSize.addr = alloca i64, align 8
  %FLG = alloca i8, align 1
  %contentSizeFlag = alloca i32, align 4
  %dictIDFlag = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  store i64 %srcSize, ptr %srcSize.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %src.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %call = call i64 @LZ4F_returnErrorCode(i32 noundef 15)
  store i64 %call, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i64, ptr %srcSize.addr, align 8
  %cmp1 = icmp ult i64 %1, 5
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %do.end
  %call3 = call i64 @LZ4F_returnErrorCode(i32 noundef 12)
  store i64 %call3, ptr %retval, align 8
  br label %return

if.end4:                                          ; preds = %do.end
  %2 = load ptr, ptr %src.addr, align 8
  %call5 = call i32 @LZ4F_readLE32(ptr noundef %2)
  %and = and i32 %call5, -16
  %cmp6 = icmp eq i32 %and, 407710288
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  store i64 8, ptr %retval, align 8
  br label %return

if.end8:                                          ; preds = %if.end4
  %3 = load ptr, ptr %src.addr, align 8
  %call9 = call i32 @LZ4F_readLE32(ptr noundef %3)
  %cmp10 = icmp ne i32 %call9, 407708164
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end8
  %call12 = call i64 @LZ4F_returnErrorCode(i32 noundef 13)
  store i64 %call12, ptr %retval, align 8
  br label %return

if.end13:                                         ; preds = %if.end8
  %4 = load ptr, ptr %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 4
  %5 = load i8, ptr %arrayidx, align 1
  store i8 %5, ptr %FLG, align 1
  %6 = load i8, ptr %FLG, align 1
  %conv = zext i8 %6 to i32
  %shr = ashr i32 %conv, 3
  %and14 = and i32 %shr, 1
  store i32 %and14, ptr %contentSizeFlag, align 4
  %7 = load i8, ptr %FLG, align 1
  %conv15 = zext i8 %7 to i32
  %and16 = and i32 %conv15, 1
  store i32 %and16, ptr %dictIDFlag, align 4
  %8 = load i32, ptr %contentSizeFlag, align 4
  %tobool = icmp ne i32 %8, 0
  %9 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 8, i32 0
  %conv17 = sext i32 %cond to i64
  %add = add i64 7, %conv17
  %10 = load i32, ptr %dictIDFlag, align 4
  %tobool18 = icmp ne i32 %10, 0
  %11 = zext i1 %tobool18 to i64
  %cond19 = select i1 %tobool18, i32 4, i32 0
  %conv20 = sext i32 %cond19 to i64
  %add21 = add i64 %add, %conv20
  store i64 %add21, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end13, %if.then11, %if.then7, %if.then2, %if.then
  %12 = load i64, ptr %retval, align 8
  ret i64 %12
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @LZ4F_readLE32(ptr noundef %src) #0 {
entry:
  %src.addr = alloca ptr, align 8
  %srcPtr = alloca ptr, align 8
  %value32 = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  %0 = load ptr, ptr %src.addr, align 8
  store ptr %0, ptr %srcPtr, align 8
  %1 = load ptr, ptr %srcPtr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  store i32 %conv, ptr %value32, align 4
  %3 = load ptr, ptr %srcPtr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %3, i64 1
  %4 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %4 to i32
  %shl = shl i32 %conv2, 8
  %5 = load i32, ptr %value32, align 4
  %or = or i32 %5, %shl
  store i32 %or, ptr %value32, align 4
  %6 = load ptr, ptr %srcPtr, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %6, i64 2
  %7 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %7 to i32
  %shl5 = shl i32 %conv4, 16
  %8 = load i32, ptr %value32, align 4
  %or6 = or i32 %8, %shl5
  store i32 %or6, ptr %value32, align 4
  %9 = load ptr, ptr %srcPtr, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %9, i64 3
  %10 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %10 to i32
  %shl9 = shl i32 %conv8, 24
  %11 = load i32, ptr %value32, align 4
  %or10 = or i32 %11, %shl9
  store i32 %or10, ptr %value32, align 4
  %12 = load i32, ptr %value32, align 4
  ret i32 %12
}

; Function Attrs: nounwind ssp uwtable
define i64 @LZ4F_getFrameInfo(ptr noundef %dctx, ptr noundef %frameInfoPtr, ptr noundef %srcBuffer, ptr noundef %srcSizePtr) #0 {
entry:
  %retval = alloca i64, align 8
  %dctx.addr = alloca ptr, align 8
  %frameInfoPtr.addr = alloca ptr, align 8
  %srcBuffer.addr = alloca ptr, align 8
  %srcSizePtr.addr = alloca ptr, align 8
  %o = alloca i64, align 8
  %i = alloca i64, align 8
  %hSize = alloca i64, align 8
  %decodeResult = alloca i64, align 8
  store ptr %dctx, ptr %dctx.addr, align 8
  store ptr %frameInfoPtr, ptr %frameInfoPtr.addr, align 8
  store ptr %srcBuffer, ptr %srcBuffer.addr, align 8
  store ptr %srcSizePtr, ptr %srcSizePtr.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %frameInfoPtr.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %call = call i64 @pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_22(i32 noundef 21)
  store i64 %call, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body1

do.body1:                                         ; preds = %do.end
  %1 = load ptr, ptr %srcSizePtr.addr, align 8
  %cmp2 = icmp eq ptr %1, null
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %do.body1
  %call4 = call i64 @pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_23(i32 noundef 21)
  store i64 %call4, ptr %retval, align 8
  br label %return

if.end5:                                          ; preds = %do.body1
  br label %do.end6

do.end6:                                          ; preds = %if.end5
  %2 = load ptr, ptr %dctx.addr, align 8
  %dStage = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %2, i32 0, i32 3
  %3 = load i32, ptr %dStage, align 4
  %cmp7 = icmp ugt i32 %3, 1
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %do.end6
  store i64 0, ptr %o, align 8
  store i64 0, ptr %i, align 8
  %4 = load ptr, ptr %srcSizePtr.addr, align 8
  store i64 0, ptr %4, align 8
  %5 = load ptr, ptr %frameInfoPtr.addr, align 8
  %6 = load ptr, ptr %dctx.addr, align 8
  %frameInfo = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %6, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %5, ptr align 8 %frameInfo, i64 32, i1 false)
  %7 = load ptr, ptr %dctx.addr, align 8
  %call9 = call i64 @LZ4F_decompress(ptr noundef %7, ptr noundef null, ptr noundef %o, ptr noundef null, ptr noundef %i, ptr noundef null)
  store i64 %call9, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %do.end6
  %8 = load ptr, ptr %dctx.addr, align 8
  %dStage10 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %8, i32 0, i32 3
  %9 = load i32, ptr %dStage10, align 4
  %cmp11 = icmp eq i32 %9, 1
  br i1 %cmp11, label %if.then12, label %if.else14

if.then12:                                        ; preds = %if.else
  %10 = load ptr, ptr %srcSizePtr.addr, align 8
  store i64 0, ptr %10, align 8
  %call13 = call i64 @pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_24(i32 noundef 19)
  store i64 %call13, ptr %retval, align 8
  br label %return

if.else14:                                        ; preds = %if.else
  %11 = load ptr, ptr %srcBuffer.addr, align 8
  %12 = load ptr, ptr %srcSizePtr.addr, align 8
  %13 = load i64, ptr %12, align 8
  %call15 = call i64 @LZ4F_headerSize(ptr noundef %11, i64 noundef %13)
  store i64 %call15, ptr %hSize, align 8
  %14 = load i64, ptr %hSize, align 8
  %call16 = call i32 @LZ4F_isError(i64 noundef %14)
  %tobool = icmp ne i32 %call16, 0
  br i1 %tobool, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.else14
  %15 = load ptr, ptr %srcSizePtr.addr, align 8
  store i64 0, ptr %15, align 8
  %16 = load i64, ptr %hSize, align 8
  store i64 %16, ptr %retval, align 8
  br label %return

if.end18:                                         ; preds = %if.else14
  %17 = load ptr, ptr %srcSizePtr.addr, align 8
  %18 = load i64, ptr %17, align 8
  %19 = load i64, ptr %hSize, align 8
  %cmp19 = icmp ult i64 %18, %19
  br i1 %cmp19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end18
  %20 = load ptr, ptr %srcSizePtr.addr, align 8
  store i64 0, ptr %20, align 8
  %call21 = call i64 @pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_25(i32 noundef 12)
  store i64 %call21, ptr %retval, align 8
  br label %return

if.end22:                                         ; preds = %if.end18
  %21 = load ptr, ptr %dctx.addr, align 8
  %22 = load ptr, ptr %srcBuffer.addr, align 8
  %23 = load i64, ptr %hSize, align 8
  %call23 = call i64 @LZ4F_decodeHeader(ptr noundef %21, ptr noundef %22, i64 noundef %23)
  store i64 %call23, ptr %decodeResult, align 8
  %24 = load i64, ptr %decodeResult, align 8
  %call24 = call i32 @LZ4F_isError(i64 noundef %24)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then26, label %if.else27

if.then26:                                        ; preds = %if.end22
  %25 = load ptr, ptr %srcSizePtr.addr, align 8
  store i64 0, ptr %25, align 8
  br label %if.end28

if.else27:                                        ; preds = %if.end22
  %26 = load i64, ptr %decodeResult, align 8
  %27 = load ptr, ptr %srcSizePtr.addr, align 8
  store i64 %26, ptr %27, align 8
  store i64 4, ptr %decodeResult, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.else27, %if.then26
  %28 = load ptr, ptr %frameInfoPtr.addr, align 8
  %29 = load ptr, ptr %dctx.addr, align 8
  %frameInfo29 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %29, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %28, ptr align 8 %frameInfo29, i64 32, i1 false)
  %30 = load i64, ptr %decodeResult, align 8
  store i64 %30, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end28, %if.then20, %if.then17, %if.then12, %if.then8, %if.then3, %if.then
  %31 = load i64, ptr %retval, align 8
  ret i64 %31
}

; Function Attrs: nounwind ssp uwtable
define i64 @LZ4F_decompress(ptr noundef %dctx, ptr noundef %dstBuffer, ptr noundef %dstSizePtr, ptr noundef %srcBuffer, ptr noundef %srcSizePtr, ptr noundef %decompressOptionsPtr) #0 {
entry:
  %retval = alloca i64, align 8
  %dctx.addr = alloca ptr, align 8
  %dstBuffer.addr = alloca ptr, align 8
  %dstSizePtr.addr = alloca ptr, align 8
  %srcBuffer.addr = alloca ptr, align 8
  %srcSizePtr.addr = alloca ptr, align 8
  %decompressOptionsPtr.addr = alloca ptr, align 8
  %optionsNull = alloca %struct.LZ4F_decompressOptions_t, align 4
  %srcStart = alloca ptr, align 8
  %srcEnd = alloca ptr, align 8
  %srcPtr = alloca ptr, align 8
  %dstStart = alloca ptr, align 8
  %dstEnd = alloca ptr, align 8
  %dstPtr = alloca ptr, align 8
  %selectedIn = alloca ptr, align 8
  %doAnotherStage = alloca i32, align 4
  %nextSrcSizeHint = alloca i64, align 8
  %hSize = alloca i64, align 8
  %sizeToCopy = alloca i64, align 8
  %bufferNeeded = alloca i64, align 8
  %byval-temp = alloca %struct.LZ4F_CustomMem, align 8
  %byval-temp96 = alloca %struct.LZ4F_CustomMem, align 8
  %byval-temp108 = alloca %struct.LZ4F_CustomMem, align 8
  %byval-temp110 = alloca %struct.LZ4F_CustomMem, align 8
  %remainingInput = alloca i64, align 8
  %wantedData = alloca i64, align 8
  %sizeToCopy148 = alloca i64, align 8
  %blockHeader = alloca i32, align 4
  %nextCBlockSize = alloca i64, align 8
  %crcSize = alloca i64, align 8
  %sizeToCopy213 = alloca i64, align 8
  %minBuffSize = alloca i64, align 8
  %crcSrc = alloca ptr, align 8
  %stillToCopy = alloca i64, align 8
  %sizeToCopy314 = alloca i64, align 8
  %readCRC = alloca i32, align 4
  %calcCRC = alloca i32, align 4
  %wantedData375 = alloca i64, align 8
  %inputLeft = alloca i64, align 8
  %sizeToCopy382 = alloca i64, align 8
  %readBlockCrc = alloca i32, align 4
  %calcBlockCrc = alloca i32, align 4
  %dict451 = alloca ptr, align 8
  %dictSize453 = alloca i64, align 8
  %decodedSize = alloca i32, align 4
  %reservedDictSpace = alloca i64, align 8
  %dict546 = alloca ptr, align 8
  %dictSize548 = alloca i64, align 8
  %decodedSize550 = alloca i32, align 4
  %sizeToCopy601 = alloca i64, align 8
  %remainingInput670 = alloca i64, align 8
  %wantedData674 = alloca i64, align 8
  %sizeToCopy677 = alloca i64, align 8
  %readCRC706 = alloca i32, align 4
  %resultCRC = alloca i32, align 4
  %sizeToCopy736 = alloca i64, align 8
  %SFrameSize = alloca i64, align 8
  %skipSize = alloca i64, align 8
  %preserveSize = alloca i64, align 8
  %copySize = alloca i64, align 8
  %oldDictEnd = alloca ptr, align 8
  %oldDictEnd871 = alloca ptr, align 8
  %newDictSize = alloca i64, align 8
  store ptr %dctx, ptr %dctx.addr, align 8
  store ptr %dstBuffer, ptr %dstBuffer.addr, align 8
  store ptr %dstSizePtr, ptr %dstSizePtr.addr, align 8
  store ptr %srcBuffer, ptr %srcBuffer.addr, align 8
  store ptr %srcSizePtr, ptr %srcSizePtr.addr, align 8
  store ptr %decompressOptionsPtr, ptr %decompressOptionsPtr.addr, align 8
  %0 = load ptr, ptr %srcBuffer.addr, align 8
  store ptr %0, ptr %srcStart, align 8
  %1 = load ptr, ptr %srcStart, align 8
  %2 = load ptr, ptr %srcSizePtr.addr, align 8
  %3 = load i64, ptr %2, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %3
  store ptr %add.ptr, ptr %srcEnd, align 8
  %4 = load ptr, ptr %srcStart, align 8
  store ptr %4, ptr %srcPtr, align 8
  %5 = load ptr, ptr %dstBuffer.addr, align 8
  store ptr %5, ptr %dstStart, align 8
  %6 = load ptr, ptr %dstStart, align 8
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load ptr, ptr %dstStart, align 8
  %8 = load ptr, ptr %dstSizePtr.addr, align 8
  %9 = load i64, ptr %8, align 8
  %add.ptr1 = getelementptr inbounds i8, ptr %7, i64 %9
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr1, %cond.true ], [ null, %cond.false ]
  store ptr %cond, ptr %dstEnd, align 8
  %10 = load ptr, ptr %dstStart, align 8
  store ptr %10, ptr %dstPtr, align 8
  store ptr null, ptr %selectedIn, align 8
  store i32 1, ptr %doAnotherStage, align 4
  store i64 1, ptr %nextSrcSizeHint, align 8
  %11 = load ptr, ptr %dstBuffer.addr, align 8
  %cmp = icmp eq ptr %11, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  call void @llvm.memset.p0.i64(ptr align 4 %optionsNull, i8 0, i64 16, i1 false)
  %12 = load ptr, ptr %decompressOptionsPtr.addr, align 8
  %cmp2 = icmp eq ptr %12, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store ptr %optionsNull, ptr %decompressOptionsPtr.addr, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %13 = load ptr, ptr %srcSizePtr.addr, align 8
  store i64 0, ptr %13, align 8
  %14 = load ptr, ptr %dstSizePtr.addr, align 8
  store i64 0, ptr %14, align 8
  %15 = load ptr, ptr %decompressOptionsPtr.addr, align 8
  %skipChecksums = getelementptr inbounds %struct.LZ4F_decompressOptions_t, ptr %15, i32 0, i32 1
  %16 = load i32, ptr %skipChecksums, align 4
  %cmp5 = icmp ne i32 %16, 0
  %conv = zext i1 %cmp5 to i32
  %17 = load ptr, ptr %dctx.addr, align 8
  %skipChecksum = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %17, i32 0, i32 18
  %18 = load i32, ptr %skipChecksum, align 8
  %or = or i32 %18, %conv
  store i32 %or, ptr %skipChecksum, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end4
  %19 = load i32, ptr %doAnotherStage, align 4
  %tobool6 = icmp ne i32 %19, 0
  br i1 %tobool6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load ptr, ptr %dctx.addr, align 8
  %dStage = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %20, i32 0, i32 3
  %21 = load i32, ptr %dStage, align 4
  switch i32 %21, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb27
    i32 2, label %sw.bb78
    i32 3, label %sw.bb127
    i32 4, label %sw.bb142
    i32 5, label %sw.bb212
    i32 6, label %sw.bb300
    i32 7, label %sw.bb360
    i32 8, label %sw.bb374
    i32 9, label %sw.bb597
    i32 10, label %sw.bb641
    i32 11, label %sw.bb669
    i32 12, label %sw.bb718
    i32 13, label %sw.bb735
    i32 14, label %sw.bb786
  ]

sw.bb:                                            ; preds = %while.body
  %22 = load ptr, ptr %srcEnd, align 8
  %23 = load ptr, ptr %srcPtr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %22 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %23 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp7 = icmp uge i64 %sub.ptr.sub, 19
  br i1 %cmp7, label %if.then9, label %if.end18

if.then9:                                         ; preds = %sw.bb
  %24 = load ptr, ptr %dctx.addr, align 8
  %25 = load ptr, ptr %srcPtr, align 8
  %26 = load ptr, ptr %srcEnd, align 8
  %27 = load ptr, ptr %srcPtr, align 8
  %sub.ptr.lhs.cast10 = ptrtoint ptr %26 to i64
  %sub.ptr.rhs.cast11 = ptrtoint ptr %27 to i64
  %sub.ptr.sub12 = sub i64 %sub.ptr.lhs.cast10, %sub.ptr.rhs.cast11
  %call = call i64 @LZ4F_decodeHeader(ptr noundef %24, ptr noundef %25, i64 noundef %sub.ptr.sub12)
  store i64 %call, ptr %hSize, align 8
  br label %do.body

do.body:                                          ; preds = %if.then9
  %28 = load i64, ptr %hSize, align 8
  %call13 = call i32 @LZ4F_isError(i64 noundef %28)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %do.body
  %29 = load i64, ptr %hSize, align 8
  store i64 %29, ptr %retval, align 8
  br label %return

if.end16:                                         ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end16
  %30 = load i64, ptr %hSize, align 8
  %31 = load ptr, ptr %srcPtr, align 8
  %add.ptr17 = getelementptr inbounds i8, ptr %31, i64 %30
  store ptr %add.ptr17, ptr %srcPtr, align 8
  br label %sw.epilog

if.end18:                                         ; preds = %sw.bb
  %32 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %32, i32 0, i32 8
  store i64 0, ptr %tmpInSize, align 8
  %33 = load ptr, ptr %srcEnd, align 8
  %34 = load ptr, ptr %srcPtr, align 8
  %sub.ptr.lhs.cast19 = ptrtoint ptr %33 to i64
  %sub.ptr.rhs.cast20 = ptrtoint ptr %34 to i64
  %sub.ptr.sub21 = sub i64 %sub.ptr.lhs.cast19, %sub.ptr.rhs.cast20
  %cmp22 = icmp eq i64 %sub.ptr.sub21, 0
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end18
  store i64 7, ptr %retval, align 8
  br label %return

if.end25:                                         ; preds = %if.end18
  %35 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %35, i32 0, i32 9
  store i64 7, ptr %tmpInTarget, align 8
  %36 = load ptr, ptr %dctx.addr, align 8
  %dStage26 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %36, i32 0, i32 3
  store i32 1, ptr %dStage26, align 4
  br label %sw.bb27

sw.bb27:                                          ; preds = %while.body, %if.end25
  %37 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget28 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %37, i32 0, i32 9
  %38 = load i64, ptr %tmpInTarget28, align 8
  %39 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize29 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %39, i32 0, i32 8
  %40 = load i64, ptr %tmpInSize29, align 8
  %sub = sub i64 %38, %40
  %41 = load ptr, ptr %srcEnd, align 8
  %42 = load ptr, ptr %srcPtr, align 8
  %sub.ptr.lhs.cast30 = ptrtoint ptr %41 to i64
  %sub.ptr.rhs.cast31 = ptrtoint ptr %42 to i64
  %sub.ptr.sub32 = sub i64 %sub.ptr.lhs.cast30, %sub.ptr.rhs.cast31
  %cmp33 = icmp ult i64 %sub, %sub.ptr.sub32
  br i1 %cmp33, label %cond.true35, label %cond.false39

cond.true35:                                      ; preds = %sw.bb27
  %43 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget36 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %43, i32 0, i32 9
  %44 = load i64, ptr %tmpInTarget36, align 8
  %45 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize37 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %45, i32 0, i32 8
  %46 = load i64, ptr %tmpInSize37, align 8
  %sub38 = sub i64 %44, %46
  br label %cond.end43

cond.false39:                                     ; preds = %sw.bb27
  %47 = load ptr, ptr %srcEnd, align 8
  %48 = load ptr, ptr %srcPtr, align 8
  %sub.ptr.lhs.cast40 = ptrtoint ptr %47 to i64
  %sub.ptr.rhs.cast41 = ptrtoint ptr %48 to i64
  %sub.ptr.sub42 = sub i64 %sub.ptr.lhs.cast40, %sub.ptr.rhs.cast41
  br label %cond.end43

cond.end43:                                       ; preds = %cond.false39, %cond.true35
  %cond44 = phi i64 [ %sub38, %cond.true35 ], [ %sub.ptr.sub42, %cond.false39 ]
  store i64 %cond44, ptr %sizeToCopy, align 8
  %49 = load ptr, ptr %dctx.addr, align 8
  %header = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %49, i32 0, i32 19
  %arraydecay = getelementptr inbounds [19 x i8], ptr %header, i64 0, i64 0
  %50 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize45 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %50, i32 0, i32 8
  %51 = load i64, ptr %tmpInSize45, align 8
  %add.ptr46 = getelementptr inbounds i8, ptr %arraydecay, i64 %51
  %52 = load ptr, ptr %srcPtr, align 8
  %53 = load i64, ptr %sizeToCopy, align 8
  %54 = load ptr, ptr %dctx.addr, align 8
  %header47 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %54, i32 0, i32 19
  %arraydecay48 = getelementptr inbounds [19 x i8], ptr %header47, i64 0, i64 0
  %55 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize49 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %55, i32 0, i32 8
  %56 = load i64, ptr %tmpInSize49, align 8
  %add.ptr50 = getelementptr inbounds i8, ptr %arraydecay48, i64 %56
  %57 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr50, i1 false, i1 true, i1 false)
  %call51 = call ptr @__memcpy_chk(ptr noundef %add.ptr46, ptr noundef %52, i64 noundef %53, i64 noundef %57) #8
  %58 = load i64, ptr %sizeToCopy, align 8
  %59 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize52 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %59, i32 0, i32 8
  %60 = load i64, ptr %tmpInSize52, align 8
  %add = add i64 %60, %58
  store i64 %add, ptr %tmpInSize52, align 8
  %61 = load i64, ptr %sizeToCopy, align 8
  %62 = load ptr, ptr %srcPtr, align 8
  %add.ptr53 = getelementptr inbounds i8, ptr %62, i64 %61
  store ptr %add.ptr53, ptr %srcPtr, align 8
  %63 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize54 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %63, i32 0, i32 8
  %64 = load i64, ptr %tmpInSize54, align 8
  %65 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget55 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %65, i32 0, i32 9
  %66 = load i64, ptr %tmpInTarget55, align 8
  %cmp56 = icmp ult i64 %64, %66
  br i1 %cmp56, label %if.then58, label %if.end63

if.then58:                                        ; preds = %cond.end43
  %67 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget59 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %67, i32 0, i32 9
  %68 = load i64, ptr %tmpInTarget59, align 8
  %69 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize60 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %69, i32 0, i32 8
  %70 = load i64, ptr %tmpInSize60, align 8
  %sub61 = sub i64 %68, %70
  %add62 = add i64 %sub61, 4
  store i64 %add62, ptr %nextSrcSizeHint, align 8
  store i32 0, ptr %doAnotherStage, align 4
  br label %sw.epilog

if.end63:                                         ; preds = %cond.end43
  br label %do.body64

do.body64:                                        ; preds = %if.end63
  %71 = load ptr, ptr %dctx.addr, align 8
  %72 = load ptr, ptr %dctx.addr, align 8
  %header65 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %72, i32 0, i32 19
  %arraydecay66 = getelementptr inbounds [19 x i8], ptr %header65, i64 0, i64 0
  %73 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget67 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %73, i32 0, i32 9
  %74 = load i64, ptr %tmpInTarget67, align 8
  %call68 = call i64 @LZ4F_decodeHeader(ptr noundef %71, ptr noundef %arraydecay66, i64 noundef %74)
  %call69 = call i32 @LZ4F_isError(i64 noundef %call68)
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.then71, label %if.end76

if.then71:                                        ; preds = %do.body64
  %75 = load ptr, ptr %dctx.addr, align 8
  %76 = load ptr, ptr %dctx.addr, align 8
  %header72 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %76, i32 0, i32 19
  %arraydecay73 = getelementptr inbounds [19 x i8], ptr %header72, i64 0, i64 0
  %77 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget74 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %77, i32 0, i32 9
  %78 = load i64, ptr %tmpInTarget74, align 8
  %call75 = call i64 @LZ4F_decodeHeader(ptr noundef %75, ptr noundef %arraydecay73, i64 noundef %78)
  store i64 %call75, ptr %retval, align 8
  br label %return

if.end76:                                         ; preds = %do.body64
  br label %do.end77

do.end77:                                         ; preds = %if.end76
  br label %sw.epilog

sw.bb78:                                          ; preds = %while.body
  %79 = load ptr, ptr %dctx.addr, align 8
  %frameInfo = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %79, i32 0, i32 1
  %contentChecksumFlag = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo, i32 0, i32 2
  %80 = load i32, ptr %contentChecksumFlag, align 8
  %tobool79 = icmp ne i32 %80, 0
  br i1 %tobool79, label %if.then80, label %if.end82

if.then80:                                        ; preds = %sw.bb78
  %81 = load ptr, ptr %dctx.addr, align 8
  %xxh = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %81, i32 0, i32 16
  %call81 = call i32 @XXH32_reset(ptr noundef %xxh, i32 noundef 0)
  br label %if.end82

if.end82:                                         ; preds = %if.then80, %sw.bb78
  %82 = load ptr, ptr %dctx.addr, align 8
  %maxBlockSize = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %82, i32 0, i32 5
  %83 = load i64, ptr %maxBlockSize, align 8
  %84 = load ptr, ptr %dctx.addr, align 8
  %frameInfo83 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %84, i32 0, i32 1
  %blockMode = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo83, i32 0, i32 1
  %85 = load i32, ptr %blockMode, align 4
  %cmp84 = icmp eq i32 %85, 0
  %86 = zext i1 %cmp84 to i64
  %cond86 = select i1 %cmp84, i32 131072, i32 0
  %conv87 = sext i32 %cond86 to i64
  %add88 = add i64 %83, %conv87
  store i64 %add88, ptr %bufferNeeded, align 8
  %87 = load i64, ptr %bufferNeeded, align 8
  %88 = load ptr, ptr %dctx.addr, align 8
  %maxBufferSize = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %88, i32 0, i32 6
  %89 = load i64, ptr %maxBufferSize, align 8
  %cmp89 = icmp ugt i64 %87, %89
  br i1 %cmp89, label %if.then91, label %if.end122

if.then91:                                        ; preds = %if.end82
  %90 = load ptr, ptr %dctx.addr, align 8
  %maxBufferSize92 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %90, i32 0, i32 6
  store i64 0, ptr %maxBufferSize92, align 8
  %91 = load ptr, ptr %dctx.addr, align 8
  %tmpIn = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %91, i32 0, i32 7
  %92 = load ptr, ptr %tmpIn, align 8
  %93 = load ptr, ptr %dctx.addr, align 8
  %cmem = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %93, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %byval-temp, ptr align 8 %cmem, i64 32, i1 false)
  call void @LZ4F_free(ptr noundef %92, ptr noundef %byval-temp)
  %94 = load ptr, ptr %dctx.addr, align 8
  %maxBlockSize93 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %94, i32 0, i32 5
  %95 = load i64, ptr %maxBlockSize93, align 8
  %add94 = add i64 %95, 4
  %96 = load ptr, ptr %dctx.addr, align 8
  %cmem95 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %96, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %byval-temp96, ptr align 8 %cmem95, i64 32, i1 false)
  %call97 = call ptr @LZ4F_malloc(i64 noundef %add94, ptr noundef %byval-temp96)
  %97 = load ptr, ptr %dctx.addr, align 8
  %tmpIn98 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %97, i32 0, i32 7
  store ptr %call97, ptr %tmpIn98, align 8
  br label %do.body99

do.body99:                                        ; preds = %if.then91
  %98 = load ptr, ptr %dctx.addr, align 8
  %tmpIn100 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %98, i32 0, i32 7
  %99 = load ptr, ptr %tmpIn100, align 8
  %cmp101 = icmp eq ptr %99, null
  br i1 %cmp101, label %if.then103, label %if.end105

if.then103:                                       ; preds = %do.body99
  %call104 = call i64 @LZ4F_returnErrorCode(i32 noundef 9)
  store i64 %call104, ptr %retval, align 8
  br label %return

if.end105:                                        ; preds = %do.body99
  br label %do.end106

do.end106:                                        ; preds = %if.end105
  %100 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %100, i32 0, i32 10
  %101 = load ptr, ptr %tmpOutBuffer, align 8
  %102 = load ptr, ptr %dctx.addr, align 8
  %cmem107 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %102, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %byval-temp108, ptr align 8 %cmem107, i64 32, i1 false)
  call void @LZ4F_free(ptr noundef %101, ptr noundef %byval-temp108)
  %103 = load i64, ptr %bufferNeeded, align 8
  %104 = load ptr, ptr %dctx.addr, align 8
  %cmem109 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %104, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %byval-temp110, ptr align 8 %cmem109, i64 32, i1 false)
  %call111 = call ptr @LZ4F_malloc(i64 noundef %103, ptr noundef %byval-temp110)
  %105 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer112 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %105, i32 0, i32 10
  store ptr %call111, ptr %tmpOutBuffer112, align 8
  br label %do.body113

do.body113:                                       ; preds = %do.end106
  %106 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer114 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %106, i32 0, i32 10
  %107 = load ptr, ptr %tmpOutBuffer114, align 8
  %cmp115 = icmp eq ptr %107, null
  br i1 %cmp115, label %if.then117, label %if.end119

if.then117:                                       ; preds = %do.body113
  %call118 = call i64 @LZ4F_returnErrorCode(i32 noundef 9)
  store i64 %call118, ptr %retval, align 8
  br label %return

if.end119:                                        ; preds = %do.body113
  br label %do.end120

do.end120:                                        ; preds = %if.end119
  %108 = load i64, ptr %bufferNeeded, align 8
  %109 = load ptr, ptr %dctx.addr, align 8
  %maxBufferSize121 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %109, i32 0, i32 6
  store i64 %108, ptr %maxBufferSize121, align 8
  br label %if.end122

if.end122:                                        ; preds = %do.end120, %if.end82
  %110 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize123 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %110, i32 0, i32 8
  store i64 0, ptr %tmpInSize123, align 8
  %111 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget124 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %111, i32 0, i32 9
  store i64 0, ptr %tmpInTarget124, align 8
  %112 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer125 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %112, i32 0, i32 10
  %113 = load ptr, ptr %tmpOutBuffer125, align 8
  %114 = load ptr, ptr %dctx.addr, align 8
  %tmpOut = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %114, i32 0, i32 13
  store ptr %113, ptr %tmpOut, align 8
  %115 = load ptr, ptr %dctx.addr, align 8
  %tmpOutStart = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %115, i32 0, i32 15
  store i64 0, ptr %tmpOutStart, align 8
  %116 = load ptr, ptr %dctx.addr, align 8
  %tmpOutSize = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %116, i32 0, i32 14
  store i64 0, ptr %tmpOutSize, align 8
  %117 = load ptr, ptr %dctx.addr, align 8
  %dStage126 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %117, i32 0, i32 3
  store i32 3, ptr %dStage126, align 4
  br label %sw.bb127

sw.bb127:                                         ; preds = %while.body, %if.end122
  %118 = load ptr, ptr %srcEnd, align 8
  %119 = load ptr, ptr %srcPtr, align 8
  %sub.ptr.lhs.cast128 = ptrtoint ptr %118 to i64
  %sub.ptr.rhs.cast129 = ptrtoint ptr %119 to i64
  %sub.ptr.sub130 = sub i64 %sub.ptr.lhs.cast128, %sub.ptr.rhs.cast129
  %cmp131 = icmp uge i64 %sub.ptr.sub130, 4
  br i1 %cmp131, label %if.then133, label %if.else

if.then133:                                       ; preds = %sw.bb127
  %120 = load ptr, ptr %srcPtr, align 8
  store ptr %120, ptr %selectedIn, align 8
  %121 = load ptr, ptr %srcPtr, align 8
  %add.ptr134 = getelementptr inbounds i8, ptr %121, i64 4
  store ptr %add.ptr134, ptr %srcPtr, align 8
  br label %if.end137

if.else:                                          ; preds = %sw.bb127
  %122 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize135 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %122, i32 0, i32 8
  store i64 0, ptr %tmpInSize135, align 8
  %123 = load ptr, ptr %dctx.addr, align 8
  %dStage136 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %123, i32 0, i32 3
  store i32 4, ptr %dStage136, align 4
  br label %if.end137

if.end137:                                        ; preds = %if.else, %if.then133
  %124 = load ptr, ptr %dctx.addr, align 8
  %dStage138 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %124, i32 0, i32 3
  %125 = load i32, ptr %dStage138, align 4
  %cmp139 = icmp eq i32 %125, 4
  br i1 %cmp139, label %if.then141, label %if.end173

if.then141:                                       ; preds = %if.end137
  br label %sw.bb142

sw.bb142:                                         ; preds = %while.body, %if.then141
  %126 = load ptr, ptr %srcEnd, align 8
  %127 = load ptr, ptr %srcPtr, align 8
  %sub.ptr.lhs.cast143 = ptrtoint ptr %126 to i64
  %sub.ptr.rhs.cast144 = ptrtoint ptr %127 to i64
  %sub.ptr.sub145 = sub i64 %sub.ptr.lhs.cast143, %sub.ptr.rhs.cast144
  store i64 %sub.ptr.sub145, ptr %remainingInput, align 8
  %128 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize146 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %128, i32 0, i32 8
  %129 = load i64, ptr %tmpInSize146, align 8
  %sub147 = sub i64 4, %129
  store i64 %sub147, ptr %wantedData, align 8
  %130 = load i64, ptr %wantedData, align 8
  %131 = load i64, ptr %remainingInput, align 8
  %cmp149 = icmp ult i64 %130, %131
  br i1 %cmp149, label %cond.true151, label %cond.false152

cond.true151:                                     ; preds = %sw.bb142
  %132 = load i64, ptr %wantedData, align 8
  br label %cond.end153

cond.false152:                                    ; preds = %sw.bb142
  %133 = load i64, ptr %remainingInput, align 8
  br label %cond.end153

cond.end153:                                      ; preds = %cond.false152, %cond.true151
  %cond154 = phi i64 [ %132, %cond.true151 ], [ %133, %cond.false152 ]
  store i64 %cond154, ptr %sizeToCopy148, align 8
  %134 = load ptr, ptr %dctx.addr, align 8
  %tmpIn155 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %134, i32 0, i32 7
  %135 = load ptr, ptr %tmpIn155, align 8
  %136 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize156 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %136, i32 0, i32 8
  %137 = load i64, ptr %tmpInSize156, align 8
  %add.ptr157 = getelementptr inbounds i8, ptr %135, i64 %137
  %138 = load ptr, ptr %srcPtr, align 8
  %139 = load i64, ptr %sizeToCopy148, align 8
  %140 = load ptr, ptr %dctx.addr, align 8
  %tmpIn158 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %140, i32 0, i32 7
  %141 = load ptr, ptr %tmpIn158, align 8
  %142 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize159 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %142, i32 0, i32 8
  %143 = load i64, ptr %tmpInSize159, align 8
  %add.ptr160 = getelementptr inbounds i8, ptr %141, i64 %143
  %144 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr160, i1 false, i1 true, i1 false)
  %call161 = call ptr @__memcpy_chk(ptr noundef %add.ptr157, ptr noundef %138, i64 noundef %139, i64 noundef %144) #8
  %145 = load i64, ptr %sizeToCopy148, align 8
  %146 = load ptr, ptr %srcPtr, align 8
  %add.ptr162 = getelementptr inbounds i8, ptr %146, i64 %145
  store ptr %add.ptr162, ptr %srcPtr, align 8
  %147 = load i64, ptr %sizeToCopy148, align 8
  %148 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize163 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %148, i32 0, i32 8
  %149 = load i64, ptr %tmpInSize163, align 8
  %add164 = add i64 %149, %147
  store i64 %add164, ptr %tmpInSize163, align 8
  %150 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize165 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %150, i32 0, i32 8
  %151 = load i64, ptr %tmpInSize165, align 8
  %cmp166 = icmp ult i64 %151, 4
  br i1 %cmp166, label %if.then168, label %if.end171

if.then168:                                       ; preds = %cond.end153
  %152 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize169 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %152, i32 0, i32 8
  %153 = load i64, ptr %tmpInSize169, align 8
  %sub170 = sub i64 4, %153
  store i64 %sub170, ptr %nextSrcSizeHint, align 8
  store i32 0, ptr %doAnotherStage, align 4
  br label %sw.epilog

if.end171:                                        ; preds = %cond.end153
  %154 = load ptr, ptr %dctx.addr, align 8
  %tmpIn172 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %154, i32 0, i32 7
  %155 = load ptr, ptr %tmpIn172, align 8
  store ptr %155, ptr %selectedIn, align 8
  br label %if.end173

if.end173:                                        ; preds = %if.end171, %if.end137
  %156 = load ptr, ptr %selectedIn, align 8
  %call174 = call i32 @LZ4F_readLE32(ptr noundef %156)
  store i32 %call174, ptr %blockHeader, align 4
  %157 = load i32, ptr %blockHeader, align 4
  %and = and i32 %157, 2147483647
  %conv175 = zext i32 %and to i64
  store i64 %conv175, ptr %nextCBlockSize, align 8
  %158 = load ptr, ptr %dctx.addr, align 8
  %frameInfo176 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %158, i32 0, i32 1
  %blockChecksumFlag = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo176, i32 0, i32 6
  %159 = load i32, ptr %blockChecksumFlag, align 4
  %conv177 = zext i32 %159 to i64
  %mul = mul i64 %conv177, 4
  store i64 %mul, ptr %crcSize, align 8
  %160 = load i32, ptr %blockHeader, align 4
  %cmp178 = icmp eq i32 %160, 0
  br i1 %cmp178, label %if.then180, label %if.end182

if.then180:                                       ; preds = %if.end173
  %161 = load ptr, ptr %dctx.addr, align 8
  %dStage181 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %161, i32 0, i32 3
  store i32 10, ptr %dStage181, align 4
  br label %sw.epilog

if.end182:                                        ; preds = %if.end173
  %162 = load i64, ptr %nextCBlockSize, align 8
  %163 = load ptr, ptr %dctx.addr, align 8
  %maxBlockSize183 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %163, i32 0, i32 5
  %164 = load i64, ptr %maxBlockSize183, align 8
  %cmp184 = icmp ugt i64 %162, %164
  br i1 %cmp184, label %if.then186, label %if.end188

if.then186:                                       ; preds = %if.end182
  %call187 = call i64 @LZ4F_returnErrorCode(i32 noundef 2)
  store i64 %call187, ptr %retval, align 8
  br label %return

if.end188:                                        ; preds = %if.end182
  %165 = load i32, ptr %blockHeader, align 4
  %and189 = and i32 %165, -2147483648
  %tobool190 = icmp ne i32 %and189, 0
  br i1 %tobool190, label %if.then191, label %if.end200

if.then191:                                       ; preds = %if.end188
  %166 = load i64, ptr %nextCBlockSize, align 8
  %167 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget192 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %167, i32 0, i32 9
  store i64 %166, ptr %tmpInTarget192, align 8
  %168 = load ptr, ptr %dctx.addr, align 8
  %frameInfo193 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %168, i32 0, i32 1
  %blockChecksumFlag194 = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo193, i32 0, i32 6
  %169 = load i32, ptr %blockChecksumFlag194, align 4
  %tobool195 = icmp ne i32 %169, 0
  br i1 %tobool195, label %if.then196, label %if.end198

if.then196:                                       ; preds = %if.then191
  %170 = load ptr, ptr %dctx.addr, align 8
  %blockChecksum = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %170, i32 0, i32 17
  %call197 = call i32 @XXH32_reset(ptr noundef %blockChecksum, i32 noundef 0)
  br label %if.end198

if.end198:                                        ; preds = %if.then196, %if.then191
  %171 = load ptr, ptr %dctx.addr, align 8
  %dStage199 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %171, i32 0, i32 3
  store i32 5, ptr %dStage199, align 4
  br label %sw.epilog

if.end200:                                        ; preds = %if.end188
  %172 = load i64, ptr %nextCBlockSize, align 8
  %173 = load i64, ptr %crcSize, align 8
  %add201 = add i64 %172, %173
  %174 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget202 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %174, i32 0, i32 9
  store i64 %add201, ptr %tmpInTarget202, align 8
  %175 = load ptr, ptr %dctx.addr, align 8
  %dStage203 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %175, i32 0, i32 3
  store i32 7, ptr %dStage203, align 4
  %176 = load ptr, ptr %dstPtr, align 8
  %177 = load ptr, ptr %dstEnd, align 8
  %cmp204 = icmp eq ptr %176, %177
  br i1 %cmp204, label %if.then208, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end200
  %178 = load ptr, ptr %srcPtr, align 8
  %179 = load ptr, ptr %srcEnd, align 8
  %cmp206 = icmp eq ptr %178, %179
  br i1 %cmp206, label %if.then208, label %if.end211

if.then208:                                       ; preds = %lor.lhs.false, %if.end200
  %180 = load i64, ptr %nextCBlockSize, align 8
  %add209 = add i64 4, %180
  %181 = load i64, ptr %crcSize, align 8
  %add210 = add i64 %add209, %181
  store i64 %add210, ptr %nextSrcSizeHint, align 8
  store i32 0, ptr %doAnotherStage, align 4
  br label %if.end211

if.end211:                                        ; preds = %if.then208, %lor.lhs.false
  br label %sw.epilog

sw.bb212:                                         ; preds = %while.body
  %182 = load ptr, ptr %dstPtr, align 8
  %cmp214 = icmp eq ptr %182, null
  br i1 %cmp214, label %if.then216, label %if.else217

if.then216:                                       ; preds = %sw.bb212
  store i64 0, ptr %sizeToCopy213, align 8
  br label %if.end276

if.else217:                                       ; preds = %sw.bb212
  %183 = load ptr, ptr %srcEnd, align 8
  %184 = load ptr, ptr %srcPtr, align 8
  %sub.ptr.lhs.cast218 = ptrtoint ptr %183 to i64
  %sub.ptr.rhs.cast219 = ptrtoint ptr %184 to i64
  %sub.ptr.sub220 = sub i64 %sub.ptr.lhs.cast218, %sub.ptr.rhs.cast219
  %185 = load ptr, ptr %dstEnd, align 8
  %186 = load ptr, ptr %dstPtr, align 8
  %sub.ptr.lhs.cast221 = ptrtoint ptr %185 to i64
  %sub.ptr.rhs.cast222 = ptrtoint ptr %186 to i64
  %sub.ptr.sub223 = sub i64 %sub.ptr.lhs.cast221, %sub.ptr.rhs.cast222
  %cmp224 = icmp ult i64 %sub.ptr.sub220, %sub.ptr.sub223
  br i1 %cmp224, label %cond.true226, label %cond.false230

cond.true226:                                     ; preds = %if.else217
  %187 = load ptr, ptr %srcEnd, align 8
  %188 = load ptr, ptr %srcPtr, align 8
  %sub.ptr.lhs.cast227 = ptrtoint ptr %187 to i64
  %sub.ptr.rhs.cast228 = ptrtoint ptr %188 to i64
  %sub.ptr.sub229 = sub i64 %sub.ptr.lhs.cast227, %sub.ptr.rhs.cast228
  br label %cond.end234

cond.false230:                                    ; preds = %if.else217
  %189 = load ptr, ptr %dstEnd, align 8
  %190 = load ptr, ptr %dstPtr, align 8
  %sub.ptr.lhs.cast231 = ptrtoint ptr %189 to i64
  %sub.ptr.rhs.cast232 = ptrtoint ptr %190 to i64
  %sub.ptr.sub233 = sub i64 %sub.ptr.lhs.cast231, %sub.ptr.rhs.cast232
  br label %cond.end234

cond.end234:                                      ; preds = %cond.false230, %cond.true226
  %cond235 = phi i64 [ %sub.ptr.sub229, %cond.true226 ], [ %sub.ptr.sub233, %cond.false230 ]
  store i64 %cond235, ptr %minBuffSize, align 8
  %191 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget236 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %191, i32 0, i32 9
  %192 = load i64, ptr %tmpInTarget236, align 8
  %193 = load i64, ptr %minBuffSize, align 8
  %cmp237 = icmp ult i64 %192, %193
  br i1 %cmp237, label %cond.true239, label %cond.false241

cond.true239:                                     ; preds = %cond.end234
  %194 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget240 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %194, i32 0, i32 9
  %195 = load i64, ptr %tmpInTarget240, align 8
  br label %cond.end242

cond.false241:                                    ; preds = %cond.end234
  %196 = load i64, ptr %minBuffSize, align 8
  br label %cond.end242

cond.end242:                                      ; preds = %cond.false241, %cond.true239
  %cond243 = phi i64 [ %195, %cond.true239 ], [ %196, %cond.false241 ]
  store i64 %cond243, ptr %sizeToCopy213, align 8
  %197 = load ptr, ptr %dstPtr, align 8
  %198 = load ptr, ptr %srcPtr, align 8
  %199 = load i64, ptr %sizeToCopy213, align 8
  %200 = load ptr, ptr %dstPtr, align 8
  %201 = call i64 @llvm.objectsize.i64.p0(ptr %200, i1 false, i1 true, i1 false)
  %call244 = call ptr @__memcpy_chk(ptr noundef %197, ptr noundef %198, i64 noundef %199, i64 noundef %201) #8
  %202 = load ptr, ptr %dctx.addr, align 8
  %skipChecksum245 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %202, i32 0, i32 18
  %203 = load i32, ptr %skipChecksum245, align 8
  %tobool246 = icmp ne i32 %203, 0
  br i1 %tobool246, label %if.end262, label %if.then247

if.then247:                                       ; preds = %cond.end242
  %204 = load ptr, ptr %dctx.addr, align 8
  %frameInfo248 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %204, i32 0, i32 1
  %blockChecksumFlag249 = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo248, i32 0, i32 6
  %205 = load i32, ptr %blockChecksumFlag249, align 4
  %tobool250 = icmp ne i32 %205, 0
  br i1 %tobool250, label %if.then251, label %if.end254

if.then251:                                       ; preds = %if.then247
  %206 = load ptr, ptr %dctx.addr, align 8
  %blockChecksum252 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %206, i32 0, i32 17
  %207 = load ptr, ptr %srcPtr, align 8
  %208 = load i64, ptr %sizeToCopy213, align 8
  %call253 = call i32 @XXH32_update(ptr noundef %blockChecksum252, ptr noundef %207, i64 noundef %208)
  br label %if.end254

if.end254:                                        ; preds = %if.then251, %if.then247
  %209 = load ptr, ptr %dctx.addr, align 8
  %frameInfo255 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %209, i32 0, i32 1
  %contentChecksumFlag256 = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo255, i32 0, i32 2
  %210 = load i32, ptr %contentChecksumFlag256, align 8
  %tobool257 = icmp ne i32 %210, 0
  br i1 %tobool257, label %if.then258, label %if.end261

if.then258:                                       ; preds = %if.end254
  %211 = load ptr, ptr %dctx.addr, align 8
  %xxh259 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %211, i32 0, i32 16
  %212 = load ptr, ptr %srcPtr, align 8
  %213 = load i64, ptr %sizeToCopy213, align 8
  %call260 = call i32 @XXH32_update(ptr noundef %xxh259, ptr noundef %212, i64 noundef %213)
  br label %if.end261

if.end261:                                        ; preds = %if.then258, %if.end254
  br label %if.end262

if.end262:                                        ; preds = %if.end261, %cond.end242
  %214 = load ptr, ptr %dctx.addr, align 8
  %frameInfo263 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %214, i32 0, i32 1
  %contentSize = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo263, i32 0, i32 4
  %215 = load i64, ptr %contentSize, align 8
  %tobool264 = icmp ne i64 %215, 0
  br i1 %tobool264, label %if.then265, label %if.end267

if.then265:                                       ; preds = %if.end262
  %216 = load i64, ptr %sizeToCopy213, align 8
  %217 = load ptr, ptr %dctx.addr, align 8
  %frameRemainingSize = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %217, i32 0, i32 4
  %218 = load i64, ptr %frameRemainingSize, align 8
  %sub266 = sub i64 %218, %216
  store i64 %sub266, ptr %frameRemainingSize, align 8
  br label %if.end267

if.end267:                                        ; preds = %if.then265, %if.end262
  %219 = load ptr, ptr %dctx.addr, align 8
  %frameInfo268 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %219, i32 0, i32 1
  %blockMode269 = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo268, i32 0, i32 1
  %220 = load i32, ptr %blockMode269, align 4
  %cmp270 = icmp eq i32 %220, 0
  br i1 %cmp270, label %if.then272, label %if.end273

if.then272:                                       ; preds = %if.end267
  %221 = load ptr, ptr %dctx.addr, align 8
  %222 = load ptr, ptr %dstPtr, align 8
  %223 = load i64, ptr %sizeToCopy213, align 8
  %224 = load ptr, ptr %dstStart, align 8
  call void @LZ4F_updateDict(ptr noundef %221, ptr noundef %222, i64 noundef %223, ptr noundef %224, i32 noundef 0)
  br label %if.end273

if.end273:                                        ; preds = %if.then272, %if.end267
  %225 = load i64, ptr %sizeToCopy213, align 8
  %226 = load ptr, ptr %srcPtr, align 8
  %add.ptr274 = getelementptr inbounds i8, ptr %226, i64 %225
  store ptr %add.ptr274, ptr %srcPtr, align 8
  %227 = load i64, ptr %sizeToCopy213, align 8
  %228 = load ptr, ptr %dstPtr, align 8
  %add.ptr275 = getelementptr inbounds i8, ptr %228, i64 %227
  store ptr %add.ptr275, ptr %dstPtr, align 8
  br label %if.end276

if.end276:                                        ; preds = %if.end273, %if.then216
  %229 = load i64, ptr %sizeToCopy213, align 8
  %230 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget277 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %230, i32 0, i32 9
  %231 = load i64, ptr %tmpInTarget277, align 8
  %cmp278 = icmp eq i64 %229, %231
  br i1 %cmp278, label %if.then280, label %if.end290

if.then280:                                       ; preds = %if.end276
  %232 = load ptr, ptr %dctx.addr, align 8
  %frameInfo281 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %232, i32 0, i32 1
  %blockChecksumFlag282 = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo281, i32 0, i32 6
  %233 = load i32, ptr %blockChecksumFlag282, align 4
  %tobool283 = icmp ne i32 %233, 0
  br i1 %tobool283, label %if.then284, label %if.else287

if.then284:                                       ; preds = %if.then280
  %234 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize285 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %234, i32 0, i32 8
  store i64 0, ptr %tmpInSize285, align 8
  %235 = load ptr, ptr %dctx.addr, align 8
  %dStage286 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %235, i32 0, i32 3
  store i32 6, ptr %dStage286, align 4
  br label %if.end289

if.else287:                                       ; preds = %if.then280
  %236 = load ptr, ptr %dctx.addr, align 8
  %dStage288 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %236, i32 0, i32 3
  store i32 3, ptr %dStage288, align 4
  br label %if.end289

if.end289:                                        ; preds = %if.else287, %if.then284
  br label %sw.epilog

if.end290:                                        ; preds = %if.end276
  %237 = load i64, ptr %sizeToCopy213, align 8
  %238 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget291 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %238, i32 0, i32 9
  %239 = load i64, ptr %tmpInTarget291, align 8
  %sub292 = sub i64 %239, %237
  store i64 %sub292, ptr %tmpInTarget291, align 8
  %240 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget293 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %240, i32 0, i32 9
  %241 = load i64, ptr %tmpInTarget293, align 8
  %242 = load ptr, ptr %dctx.addr, align 8
  %frameInfo294 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %242, i32 0, i32 1
  %blockChecksumFlag295 = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo294, i32 0, i32 6
  %243 = load i32, ptr %blockChecksumFlag295, align 4
  %tobool296 = icmp ne i32 %243, 0
  %244 = zext i1 %tobool296 to i64
  %cond297 = select i1 %tobool296, i64 4, i64 0
  %add298 = add i64 %241, %cond297
  %add299 = add i64 %add298, 4
  store i64 %add299, ptr %nextSrcSizeHint, align 8
  store i32 0, ptr %doAnotherStage, align 4
  br label %sw.epilog

sw.bb300:                                         ; preds = %while.body
  %245 = load ptr, ptr %srcEnd, align 8
  %246 = load ptr, ptr %srcPtr, align 8
  %sub.ptr.lhs.cast301 = ptrtoint ptr %245 to i64
  %sub.ptr.rhs.cast302 = ptrtoint ptr %246 to i64
  %sub.ptr.sub303 = sub i64 %sub.ptr.lhs.cast301, %sub.ptr.rhs.cast302
  %cmp304 = icmp sge i64 %sub.ptr.sub303, 4
  br i1 %cmp304, label %land.lhs.true, label %if.else311

land.lhs.true:                                    ; preds = %sw.bb300
  %247 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize306 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %247, i32 0, i32 8
  %248 = load i64, ptr %tmpInSize306, align 8
  %cmp307 = icmp eq i64 %248, 0
  br i1 %cmp307, label %if.then309, label %if.else311

if.then309:                                       ; preds = %land.lhs.true
  %249 = load ptr, ptr %srcPtr, align 8
  store ptr %249, ptr %crcSrc, align 8
  %250 = load ptr, ptr %srcPtr, align 8
  %add.ptr310 = getelementptr inbounds i8, ptr %250, i64 4
  store ptr %add.ptr310, ptr %srcPtr, align 8
  br label %if.end346

if.else311:                                       ; preds = %land.lhs.true, %sw.bb300
  %251 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize312 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %251, i32 0, i32 8
  %252 = load i64, ptr %tmpInSize312, align 8
  %sub313 = sub i64 4, %252
  store i64 %sub313, ptr %stillToCopy, align 8
  %253 = load i64, ptr %stillToCopy, align 8
  %254 = load ptr, ptr %srcEnd, align 8
  %255 = load ptr, ptr %srcPtr, align 8
  %sub.ptr.lhs.cast315 = ptrtoint ptr %254 to i64
  %sub.ptr.rhs.cast316 = ptrtoint ptr %255 to i64
  %sub.ptr.sub317 = sub i64 %sub.ptr.lhs.cast315, %sub.ptr.rhs.cast316
  %cmp318 = icmp ult i64 %253, %sub.ptr.sub317
  br i1 %cmp318, label %cond.true320, label %cond.false321

cond.true320:                                     ; preds = %if.else311
  %256 = load i64, ptr %stillToCopy, align 8
  br label %cond.end325

cond.false321:                                    ; preds = %if.else311
  %257 = load ptr, ptr %srcEnd, align 8
  %258 = load ptr, ptr %srcPtr, align 8
  %sub.ptr.lhs.cast322 = ptrtoint ptr %257 to i64
  %sub.ptr.rhs.cast323 = ptrtoint ptr %258 to i64
  %sub.ptr.sub324 = sub i64 %sub.ptr.lhs.cast322, %sub.ptr.rhs.cast323
  br label %cond.end325

cond.end325:                                      ; preds = %cond.false321, %cond.true320
  %cond326 = phi i64 [ %256, %cond.true320 ], [ %sub.ptr.sub324, %cond.false321 ]
  store i64 %cond326, ptr %sizeToCopy314, align 8
  %259 = load ptr, ptr %dctx.addr, align 8
  %header327 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %259, i32 0, i32 19
  %arraydecay328 = getelementptr inbounds [19 x i8], ptr %header327, i64 0, i64 0
  %260 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize329 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %260, i32 0, i32 8
  %261 = load i64, ptr %tmpInSize329, align 8
  %add.ptr330 = getelementptr inbounds i8, ptr %arraydecay328, i64 %261
  %262 = load ptr, ptr %srcPtr, align 8
  %263 = load i64, ptr %sizeToCopy314, align 8
  %264 = load ptr, ptr %dctx.addr, align 8
  %header331 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %264, i32 0, i32 19
  %arraydecay332 = getelementptr inbounds [19 x i8], ptr %header331, i64 0, i64 0
  %265 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize333 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %265, i32 0, i32 8
  %266 = load i64, ptr %tmpInSize333, align 8
  %add.ptr334 = getelementptr inbounds i8, ptr %arraydecay332, i64 %266
  %267 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr334, i1 false, i1 true, i1 false)
  %call335 = call ptr @__memcpy_chk(ptr noundef %add.ptr330, ptr noundef %262, i64 noundef %263, i64 noundef %267) #8
  %268 = load i64, ptr %sizeToCopy314, align 8
  %269 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize336 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %269, i32 0, i32 8
  %270 = load i64, ptr %tmpInSize336, align 8
  %add337 = add i64 %270, %268
  store i64 %add337, ptr %tmpInSize336, align 8
  %271 = load i64, ptr %sizeToCopy314, align 8
  %272 = load ptr, ptr %srcPtr, align 8
  %add.ptr338 = getelementptr inbounds i8, ptr %272, i64 %271
  store ptr %add.ptr338, ptr %srcPtr, align 8
  %273 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize339 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %273, i32 0, i32 8
  %274 = load i64, ptr %tmpInSize339, align 8
  %cmp340 = icmp ult i64 %274, 4
  br i1 %cmp340, label %if.then342, label %if.end343

if.then342:                                       ; preds = %cond.end325
  store i32 0, ptr %doAnotherStage, align 4
  br label %sw.epilog

if.end343:                                        ; preds = %cond.end325
  %275 = load ptr, ptr %dctx.addr, align 8
  %header344 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %275, i32 0, i32 19
  %arraydecay345 = getelementptr inbounds [19 x i8], ptr %header344, i64 0, i64 0
  store ptr %arraydecay345, ptr %crcSrc, align 8
  br label %if.end346

if.end346:                                        ; preds = %if.end343, %if.then309
  %276 = load ptr, ptr %dctx.addr, align 8
  %skipChecksum347 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %276, i32 0, i32 18
  %277 = load i32, ptr %skipChecksum347, align 8
  %tobool348 = icmp ne i32 %277, 0
  br i1 %tobool348, label %if.end358, label %if.then349

if.then349:                                       ; preds = %if.end346
  %278 = load ptr, ptr %crcSrc, align 8
  %call350 = call i32 @LZ4F_readLE32(ptr noundef %278)
  store i32 %call350, ptr %readCRC, align 4
  %279 = load ptr, ptr %dctx.addr, align 8
  %blockChecksum351 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %279, i32 0, i32 17
  %call352 = call i32 @XXH32_digest(ptr noundef %blockChecksum351)
  store i32 %call352, ptr %calcCRC, align 4
  %280 = load i32, ptr %readCRC, align 4
  %281 = load i32, ptr %calcCRC, align 4
  %cmp353 = icmp ne i32 %280, %281
  br i1 %cmp353, label %if.then355, label %if.end357

if.then355:                                       ; preds = %if.then349
  %call356 = call i64 @LZ4F_returnErrorCode(i32 noundef 7)
  store i64 %call356, ptr %retval, align 8
  br label %return

if.end357:                                        ; preds = %if.then349
  br label %if.end358

if.end358:                                        ; preds = %if.end357, %if.end346
  %282 = load ptr, ptr %dctx.addr, align 8
  %dStage359 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %282, i32 0, i32 3
  store i32 3, ptr %dStage359, align 4
  br label %sw.epilog

sw.bb360:                                         ; preds = %while.body
  %283 = load ptr, ptr %srcEnd, align 8
  %284 = load ptr, ptr %srcPtr, align 8
  %sub.ptr.lhs.cast361 = ptrtoint ptr %283 to i64
  %sub.ptr.rhs.cast362 = ptrtoint ptr %284 to i64
  %sub.ptr.sub363 = sub i64 %sub.ptr.lhs.cast361, %sub.ptr.rhs.cast362
  %285 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget364 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %285, i32 0, i32 9
  %286 = load i64, ptr %tmpInTarget364, align 8
  %cmp365 = icmp ult i64 %sub.ptr.sub363, %286
  br i1 %cmp365, label %if.then367, label %if.end370

if.then367:                                       ; preds = %sw.bb360
  %287 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize368 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %287, i32 0, i32 8
  store i64 0, ptr %tmpInSize368, align 8
  %288 = load ptr, ptr %dctx.addr, align 8
  %dStage369 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %288, i32 0, i32 3
  store i32 8, ptr %dStage369, align 4
  br label %sw.epilog

if.end370:                                        ; preds = %sw.bb360
  %289 = load ptr, ptr %srcPtr, align 8
  store ptr %289, ptr %selectedIn, align 8
  %290 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget371 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %290, i32 0, i32 9
  %291 = load i64, ptr %tmpInTarget371, align 8
  %292 = load ptr, ptr %srcPtr, align 8
  %add.ptr372 = getelementptr inbounds i8, ptr %292, i64 %291
  store ptr %add.ptr372, ptr %srcPtr, align 8
  br i1 false, label %if.then373, label %if.end415

if.then373:                                       ; preds = %if.end370
  br label %sw.bb374

sw.bb374:                                         ; preds = %while.body, %if.then373
  %293 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget376 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %293, i32 0, i32 9
  %294 = load i64, ptr %tmpInTarget376, align 8
  %295 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize377 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %295, i32 0, i32 8
  %296 = load i64, ptr %tmpInSize377, align 8
  %sub378 = sub i64 %294, %296
  store i64 %sub378, ptr %wantedData375, align 8
  %297 = load ptr, ptr %srcEnd, align 8
  %298 = load ptr, ptr %srcPtr, align 8
  %sub.ptr.lhs.cast379 = ptrtoint ptr %297 to i64
  %sub.ptr.rhs.cast380 = ptrtoint ptr %298 to i64
  %sub.ptr.sub381 = sub i64 %sub.ptr.lhs.cast379, %sub.ptr.rhs.cast380
  store i64 %sub.ptr.sub381, ptr %inputLeft, align 8
  %299 = load i64, ptr %wantedData375, align 8
  %300 = load i64, ptr %inputLeft, align 8
  %cmp383 = icmp ult i64 %299, %300
  br i1 %cmp383, label %cond.true385, label %cond.false386

cond.true385:                                     ; preds = %sw.bb374
  %301 = load i64, ptr %wantedData375, align 8
  br label %cond.end387

cond.false386:                                    ; preds = %sw.bb374
  %302 = load i64, ptr %inputLeft, align 8
  br label %cond.end387

cond.end387:                                      ; preds = %cond.false386, %cond.true385
  %cond388 = phi i64 [ %301, %cond.true385 ], [ %302, %cond.false386 ]
  store i64 %cond388, ptr %sizeToCopy382, align 8
  %303 = load ptr, ptr %dctx.addr, align 8
  %tmpIn389 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %303, i32 0, i32 7
  %304 = load ptr, ptr %tmpIn389, align 8
  %305 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize390 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %305, i32 0, i32 8
  %306 = load i64, ptr %tmpInSize390, align 8
  %add.ptr391 = getelementptr inbounds i8, ptr %304, i64 %306
  %307 = load ptr, ptr %srcPtr, align 8
  %308 = load i64, ptr %sizeToCopy382, align 8
  %309 = load ptr, ptr %dctx.addr, align 8
  %tmpIn392 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %309, i32 0, i32 7
  %310 = load ptr, ptr %tmpIn392, align 8
  %311 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize393 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %311, i32 0, i32 8
  %312 = load i64, ptr %tmpInSize393, align 8
  %add.ptr394 = getelementptr inbounds i8, ptr %310, i64 %312
  %313 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr394, i1 false, i1 true, i1 false)
  %call395 = call ptr @__memcpy_chk(ptr noundef %add.ptr391, ptr noundef %307, i64 noundef %308, i64 noundef %313) #8
  %314 = load i64, ptr %sizeToCopy382, align 8
  %315 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize396 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %315, i32 0, i32 8
  %316 = load i64, ptr %tmpInSize396, align 8
  %add397 = add i64 %316, %314
  store i64 %add397, ptr %tmpInSize396, align 8
  %317 = load i64, ptr %sizeToCopy382, align 8
  %318 = load ptr, ptr %srcPtr, align 8
  %add.ptr398 = getelementptr inbounds i8, ptr %318, i64 %317
  store ptr %add.ptr398, ptr %srcPtr, align 8
  %319 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize399 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %319, i32 0, i32 8
  %320 = load i64, ptr %tmpInSize399, align 8
  %321 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget400 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %321, i32 0, i32 9
  %322 = load i64, ptr %tmpInTarget400, align 8
  %cmp401 = icmp ult i64 %320, %322
  br i1 %cmp401, label %if.then403, label %if.end413

if.then403:                                       ; preds = %cond.end387
  %323 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget404 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %323, i32 0, i32 9
  %324 = load i64, ptr %tmpInTarget404, align 8
  %325 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize405 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %325, i32 0, i32 8
  %326 = load i64, ptr %tmpInSize405, align 8
  %sub406 = sub i64 %324, %326
  %327 = load ptr, ptr %dctx.addr, align 8
  %frameInfo407 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %327, i32 0, i32 1
  %blockChecksumFlag408 = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo407, i32 0, i32 6
  %328 = load i32, ptr %blockChecksumFlag408, align 4
  %tobool409 = icmp ne i32 %328, 0
  %329 = zext i1 %tobool409 to i64
  %cond410 = select i1 %tobool409, i64 4, i64 0
  %add411 = add i64 %sub406, %cond410
  %add412 = add i64 %add411, 4
  store i64 %add412, ptr %nextSrcSizeHint, align 8
  store i32 0, ptr %doAnotherStage, align 4
  br label %sw.epilog

if.end413:                                        ; preds = %cond.end387
  %330 = load ptr, ptr %dctx.addr, align 8
  %tmpIn414 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %330, i32 0, i32 7
  %331 = load ptr, ptr %tmpIn414, align 8
  store ptr %331, ptr %selectedIn, align 8
  br label %if.end415

if.end415:                                        ; preds = %if.end413, %if.end370
  %332 = load ptr, ptr %dctx.addr, align 8
  %frameInfo416 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %332, i32 0, i32 1
  %blockChecksumFlag417 = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo416, i32 0, i32 6
  %333 = load i32, ptr %blockChecksumFlag417, align 4
  %tobool418 = icmp ne i32 %333, 0
  br i1 %tobool418, label %if.then419, label %if.end434

if.then419:                                       ; preds = %if.end415
  %334 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget420 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %334, i32 0, i32 9
  %335 = load i64, ptr %tmpInTarget420, align 8
  %sub421 = sub i64 %335, 4
  store i64 %sub421, ptr %tmpInTarget420, align 8
  %336 = load ptr, ptr %selectedIn, align 8
  %337 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget422 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %337, i32 0, i32 9
  %338 = load i64, ptr %tmpInTarget422, align 8
  %add.ptr423 = getelementptr inbounds i8, ptr %336, i64 %338
  %call424 = call i32 @LZ4F_readLE32(ptr noundef %add.ptr423)
  store i32 %call424, ptr %readBlockCrc, align 4
  %339 = load ptr, ptr %selectedIn, align 8
  %340 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget425 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %340, i32 0, i32 9
  %341 = load i64, ptr %tmpInTarget425, align 8
  %call426 = call i32 @XXH32(ptr noundef %339, i64 noundef %341, i32 noundef 0)
  store i32 %call426, ptr %calcBlockCrc, align 4
  br label %do.body427

do.body427:                                       ; preds = %if.then419
  %342 = load i32, ptr %readBlockCrc, align 4
  %343 = load i32, ptr %calcBlockCrc, align 4
  %cmp428 = icmp ne i32 %342, %343
  br i1 %cmp428, label %if.then430, label %if.end432

if.then430:                                       ; preds = %do.body427
  %call431 = call i64 @LZ4F_returnErrorCode(i32 noundef 7)
  store i64 %call431, ptr %retval, align 8
  br label %return

if.end432:                                        ; preds = %do.body427
  br label %do.end433

do.end433:                                        ; preds = %if.end432
  br label %if.end434

if.end434:                                        ; preds = %do.end433, %if.end415
  %344 = load ptr, ptr %dstEnd, align 8
  %345 = load ptr, ptr %dstPtr, align 8
  %sub.ptr.lhs.cast435 = ptrtoint ptr %344 to i64
  %sub.ptr.rhs.cast436 = ptrtoint ptr %345 to i64
  %sub.ptr.sub437 = sub i64 %sub.ptr.lhs.cast435, %sub.ptr.rhs.cast436
  %346 = load ptr, ptr %dctx.addr, align 8
  %maxBlockSize438 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %346, i32 0, i32 5
  %347 = load i64, ptr %maxBlockSize438, align 8
  %cmp439 = icmp uge i64 %sub.ptr.sub437, %347
  br i1 %cmp439, label %land.lhs.true441, label %if.end504

land.lhs.true441:                                 ; preds = %if.end434
  %348 = load ptr, ptr %dctx.addr, align 8
  %dict = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %348, i32 0, i32 11
  %349 = load ptr, ptr %dict, align 8
  %cmp442 = icmp ne ptr %349, null
  br i1 %cmp442, label %land.lhs.true444, label %if.then450

land.lhs.true444:                                 ; preds = %land.lhs.true441
  %350 = load ptr, ptr %dctx.addr, align 8
  %dict445 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %350, i32 0, i32 11
  %351 = load ptr, ptr %dict445, align 8
  %352 = load ptr, ptr %dctx.addr, align 8
  %dictSize = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %352, i32 0, i32 12
  %353 = load i64, ptr %dictSize, align 8
  %add.ptr446 = getelementptr inbounds i8, ptr %351, i64 %353
  %354 = load ptr, ptr %dctx.addr, align 8
  %tmpOut447 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %354, i32 0, i32 13
  %355 = load ptr, ptr %tmpOut447, align 8
  %cmp448 = icmp eq ptr %add.ptr446, %355
  br i1 %cmp448, label %if.end504, label %if.then450

if.then450:                                       ; preds = %land.lhs.true444, %land.lhs.true441
  %356 = load ptr, ptr %dctx.addr, align 8
  %dict452 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %356, i32 0, i32 11
  %357 = load ptr, ptr %dict452, align 8
  store ptr %357, ptr %dict451, align 8
  %358 = load ptr, ptr %dctx.addr, align 8
  %dictSize454 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %358, i32 0, i32 12
  %359 = load i64, ptr %dictSize454, align 8
  store i64 %359, ptr %dictSize453, align 8
  %360 = load ptr, ptr %dict451, align 8
  %tobool455 = icmp ne ptr %360, null
  br i1 %tobool455, label %land.lhs.true456, label %if.end462

land.lhs.true456:                                 ; preds = %if.then450
  %361 = load i64, ptr %dictSize453, align 8
  %cmp457 = icmp ugt i64 %361, 1073741824
  br i1 %cmp457, label %if.then459, label %if.end462

if.then459:                                       ; preds = %land.lhs.true456
  %362 = load i64, ptr %dictSize453, align 8
  %sub460 = sub i64 %362, 65536
  %363 = load ptr, ptr %dict451, align 8
  %add.ptr461 = getelementptr inbounds i8, ptr %363, i64 %sub460
  store ptr %add.ptr461, ptr %dict451, align 8
  store i64 65536, ptr %dictSize453, align 8
  br label %if.end462

if.end462:                                        ; preds = %if.then459, %land.lhs.true456, %if.then450
  %364 = load ptr, ptr %selectedIn, align 8
  %365 = load ptr, ptr %dstPtr, align 8
  %366 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget463 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %366, i32 0, i32 9
  %367 = load i64, ptr %tmpInTarget463, align 8
  %conv464 = trunc i64 %367 to i32
  %368 = load ptr, ptr %dctx.addr, align 8
  %maxBlockSize465 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %368, i32 0, i32 5
  %369 = load i64, ptr %maxBlockSize465, align 8
  %conv466 = trunc i64 %369 to i32
  %370 = load ptr, ptr %dict451, align 8
  %371 = load i64, ptr %dictSize453, align 8
  %conv467 = trunc i64 %371 to i32
  %call468 = call i32 @LZ4_decompress_safe_usingDict(ptr noundef %364, ptr noundef %365, i32 noundef %conv464, i32 noundef %conv466, ptr noundef %370, i32 noundef %conv467)
  store i32 %call468, ptr %decodedSize, align 4
  br label %do.body469

do.body469:                                       ; preds = %if.end462
  %372 = load i32, ptr %decodedSize, align 4
  %cmp470 = icmp slt i32 %372, 0
  br i1 %cmp470, label %if.then472, label %if.end474

if.then472:                                       ; preds = %do.body469
  %call473 = call i64 @LZ4F_returnErrorCode(i32 noundef 16)
  store i64 %call473, ptr %retval, align 8
  br label %return

if.end474:                                        ; preds = %do.body469
  br label %do.end475

do.end475:                                        ; preds = %if.end474
  %373 = load ptr, ptr %dctx.addr, align 8
  %frameInfo476 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %373, i32 0, i32 1
  %contentChecksumFlag477 = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo476, i32 0, i32 2
  %374 = load i32, ptr %contentChecksumFlag477, align 8
  %tobool478 = icmp ne i32 %374, 0
  br i1 %tobool478, label %land.lhs.true479, label %if.end486

land.lhs.true479:                                 ; preds = %do.end475
  %375 = load ptr, ptr %dctx.addr, align 8
  %skipChecksum480 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %375, i32 0, i32 18
  %376 = load i32, ptr %skipChecksum480, align 8
  %tobool481 = icmp ne i32 %376, 0
  br i1 %tobool481, label %if.end486, label %if.then482

if.then482:                                       ; preds = %land.lhs.true479
  %377 = load ptr, ptr %dctx.addr, align 8
  %xxh483 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %377, i32 0, i32 16
  %378 = load ptr, ptr %dstPtr, align 8
  %379 = load i32, ptr %decodedSize, align 4
  %conv484 = sext i32 %379 to i64
  %call485 = call i32 @XXH32_update(ptr noundef %xxh483, ptr noundef %378, i64 noundef %conv484)
  br label %if.end486

if.end486:                                        ; preds = %if.then482, %land.lhs.true479, %do.end475
  %380 = load ptr, ptr %dctx.addr, align 8
  %frameInfo487 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %380, i32 0, i32 1
  %contentSize488 = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo487, i32 0, i32 4
  %381 = load i64, ptr %contentSize488, align 8
  %tobool489 = icmp ne i64 %381, 0
  br i1 %tobool489, label %if.then490, label %if.end494

if.then490:                                       ; preds = %if.end486
  %382 = load i32, ptr %decodedSize, align 4
  %conv491 = sext i32 %382 to i64
  %383 = load ptr, ptr %dctx.addr, align 8
  %frameRemainingSize492 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %383, i32 0, i32 4
  %384 = load i64, ptr %frameRemainingSize492, align 8
  %sub493 = sub i64 %384, %conv491
  store i64 %sub493, ptr %frameRemainingSize492, align 8
  br label %if.end494

if.end494:                                        ; preds = %if.then490, %if.end486
  %385 = load ptr, ptr %dctx.addr, align 8
  %frameInfo495 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %385, i32 0, i32 1
  %blockMode496 = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo495, i32 0, i32 1
  %386 = load i32, ptr %blockMode496, align 4
  %cmp497 = icmp eq i32 %386, 0
  br i1 %cmp497, label %if.then499, label %if.end501

if.then499:                                       ; preds = %if.end494
  %387 = load ptr, ptr %dctx.addr, align 8
  %388 = load ptr, ptr %dstPtr, align 8
  %389 = load i32, ptr %decodedSize, align 4
  %conv500 = sext i32 %389 to i64
  %390 = load ptr, ptr %dstStart, align 8
  call void @LZ4F_updateDict(ptr noundef %387, ptr noundef %388, i64 noundef %conv500, ptr noundef %390, i32 noundef 0)
  br label %if.end501

if.end501:                                        ; preds = %if.then499, %if.end494
  %391 = load i32, ptr %decodedSize, align 4
  %392 = load ptr, ptr %dstPtr, align 8
  %idx.ext = sext i32 %391 to i64
  %add.ptr502 = getelementptr inbounds i8, ptr %392, i64 %idx.ext
  store ptr %add.ptr502, ptr %dstPtr, align 8
  %393 = load ptr, ptr %dctx.addr, align 8
  %dStage503 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %393, i32 0, i32 3
  store i32 3, ptr %dStage503, align 4
  br label %sw.epilog

if.end504:                                        ; preds = %land.lhs.true444, %if.end434
  %394 = load ptr, ptr %dctx.addr, align 8
  %frameInfo505 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %394, i32 0, i32 1
  %blockMode506 = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo505, i32 0, i32 1
  %395 = load i32, ptr %blockMode506, align 4
  %cmp507 = icmp eq i32 %395, 0
  br i1 %cmp507, label %if.then509, label %if.end545

if.then509:                                       ; preds = %if.end504
  %396 = load ptr, ptr %dctx.addr, align 8
  %dict510 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %396, i32 0, i32 11
  %397 = load ptr, ptr %dict510, align 8
  %398 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer511 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %398, i32 0, i32 10
  %399 = load ptr, ptr %tmpOutBuffer511, align 8
  %cmp512 = icmp eq ptr %397, %399
  br i1 %cmp512, label %if.then514, label %if.else532

if.then514:                                       ; preds = %if.then509
  %400 = load ptr, ptr %dctx.addr, align 8
  %dictSize515 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %400, i32 0, i32 12
  %401 = load i64, ptr %dictSize515, align 8
  %cmp516 = icmp ugt i64 %401, 131072
  br i1 %cmp516, label %if.then518, label %if.end527

if.then518:                                       ; preds = %if.then514
  %402 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer519 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %402, i32 0, i32 10
  %403 = load ptr, ptr %tmpOutBuffer519, align 8
  %404 = load ptr, ptr %dctx.addr, align 8
  %dict520 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %404, i32 0, i32 11
  %405 = load ptr, ptr %dict520, align 8
  %406 = load ptr, ptr %dctx.addr, align 8
  %dictSize521 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %406, i32 0, i32 12
  %407 = load i64, ptr %dictSize521, align 8
  %add.ptr522 = getelementptr inbounds i8, ptr %405, i64 %407
  %add.ptr523 = getelementptr inbounds i8, ptr %add.ptr522, i64 -65536
  %408 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer524 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %408, i32 0, i32 10
  %409 = load ptr, ptr %tmpOutBuffer524, align 8
  %410 = call i64 @llvm.objectsize.i64.p0(ptr %409, i1 false, i1 true, i1 false)
  %call525 = call ptr @__memcpy_chk(ptr noundef %403, ptr noundef %add.ptr523, i64 noundef 65536, i64 noundef %410) #8
  %411 = load ptr, ptr %dctx.addr, align 8
  %dictSize526 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %411, i32 0, i32 12
  store i64 65536, ptr %dictSize526, align 8
  br label %if.end527

if.end527:                                        ; preds = %if.then518, %if.then514
  %412 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer528 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %412, i32 0, i32 10
  %413 = load ptr, ptr %tmpOutBuffer528, align 8
  %414 = load ptr, ptr %dctx.addr, align 8
  %dictSize529 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %414, i32 0, i32 12
  %415 = load i64, ptr %dictSize529, align 8
  %add.ptr530 = getelementptr inbounds i8, ptr %413, i64 %415
  %416 = load ptr, ptr %dctx.addr, align 8
  %tmpOut531 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %416, i32 0, i32 13
  store ptr %add.ptr530, ptr %tmpOut531, align 8
  br label %if.end544

if.else532:                                       ; preds = %if.then509
  %417 = load ptr, ptr %dctx.addr, align 8
  %dictSize533 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %417, i32 0, i32 12
  %418 = load i64, ptr %dictSize533, align 8
  %cmp534 = icmp ult i64 %418, 65536
  br i1 %cmp534, label %cond.true536, label %cond.false538

cond.true536:                                     ; preds = %if.else532
  %419 = load ptr, ptr %dctx.addr, align 8
  %dictSize537 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %419, i32 0, i32 12
  %420 = load i64, ptr %dictSize537, align 8
  br label %cond.end539

cond.false538:                                    ; preds = %if.else532
  br label %cond.end539

cond.end539:                                      ; preds = %cond.false538, %cond.true536
  %cond540 = phi i64 [ %420, %cond.true536 ], [ 65536, %cond.false538 ]
  store i64 %cond540, ptr %reservedDictSpace, align 8
  %421 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer541 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %421, i32 0, i32 10
  %422 = load ptr, ptr %tmpOutBuffer541, align 8
  %423 = load i64, ptr %reservedDictSpace, align 8
  %add.ptr542 = getelementptr inbounds i8, ptr %422, i64 %423
  %424 = load ptr, ptr %dctx.addr, align 8
  %tmpOut543 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %424, i32 0, i32 13
  store ptr %add.ptr542, ptr %tmpOut543, align 8
  br label %if.end544

if.end544:                                        ; preds = %cond.end539, %if.end527
  br label %if.end545

if.end545:                                        ; preds = %if.end544, %if.end504
  %425 = load ptr, ptr %dctx.addr, align 8
  %dict547 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %425, i32 0, i32 11
  %426 = load ptr, ptr %dict547, align 8
  store ptr %426, ptr %dict546, align 8
  %427 = load ptr, ptr %dctx.addr, align 8
  %dictSize549 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %427, i32 0, i32 12
  %428 = load i64, ptr %dictSize549, align 8
  store i64 %428, ptr %dictSize548, align 8
  %429 = load ptr, ptr %dict546, align 8
  %tobool551 = icmp ne ptr %429, null
  br i1 %tobool551, label %land.lhs.true552, label %if.end558

land.lhs.true552:                                 ; preds = %if.end545
  %430 = load i64, ptr %dictSize548, align 8
  %cmp553 = icmp ugt i64 %430, 1073741824
  br i1 %cmp553, label %if.then555, label %if.end558

if.then555:                                       ; preds = %land.lhs.true552
  %431 = load i64, ptr %dictSize548, align 8
  %sub556 = sub i64 %431, 65536
  %432 = load ptr, ptr %dict546, align 8
  %add.ptr557 = getelementptr inbounds i8, ptr %432, i64 %sub556
  store ptr %add.ptr557, ptr %dict546, align 8
  store i64 65536, ptr %dictSize548, align 8
  br label %if.end558

if.end558:                                        ; preds = %if.then555, %land.lhs.true552, %if.end545
  %433 = load ptr, ptr %selectedIn, align 8
  %434 = load ptr, ptr %dctx.addr, align 8
  %tmpOut559 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %434, i32 0, i32 13
  %435 = load ptr, ptr %tmpOut559, align 8
  %436 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget560 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %436, i32 0, i32 9
  %437 = load i64, ptr %tmpInTarget560, align 8
  %conv561 = trunc i64 %437 to i32
  %438 = load ptr, ptr %dctx.addr, align 8
  %maxBlockSize562 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %438, i32 0, i32 5
  %439 = load i64, ptr %maxBlockSize562, align 8
  %conv563 = trunc i64 %439 to i32
  %440 = load ptr, ptr %dict546, align 8
  %441 = load i64, ptr %dictSize548, align 8
  %conv564 = trunc i64 %441 to i32
  %call565 = call i32 @LZ4_decompress_safe_usingDict(ptr noundef %433, ptr noundef %435, i32 noundef %conv561, i32 noundef %conv563, ptr noundef %440, i32 noundef %conv564)
  store i32 %call565, ptr %decodedSize550, align 4
  br label %do.body566

do.body566:                                       ; preds = %if.end558
  %442 = load i32, ptr %decodedSize550, align 4
  %cmp567 = icmp slt i32 %442, 0
  br i1 %cmp567, label %if.then569, label %if.end571

if.then569:                                       ; preds = %do.body566
  %call570 = call i64 @LZ4F_returnErrorCode(i32 noundef 16)
  store i64 %call570, ptr %retval, align 8
  br label %return

if.end571:                                        ; preds = %do.body566
  br label %do.end572

do.end572:                                        ; preds = %if.end571
  %443 = load ptr, ptr %dctx.addr, align 8
  %frameInfo573 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %443, i32 0, i32 1
  %contentChecksumFlag574 = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo573, i32 0, i32 2
  %444 = load i32, ptr %contentChecksumFlag574, align 8
  %tobool575 = icmp ne i32 %444, 0
  br i1 %tobool575, label %land.lhs.true576, label %if.end584

land.lhs.true576:                                 ; preds = %do.end572
  %445 = load ptr, ptr %dctx.addr, align 8
  %skipChecksum577 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %445, i32 0, i32 18
  %446 = load i32, ptr %skipChecksum577, align 8
  %tobool578 = icmp ne i32 %446, 0
  br i1 %tobool578, label %if.end584, label %if.then579

if.then579:                                       ; preds = %land.lhs.true576
  %447 = load ptr, ptr %dctx.addr, align 8
  %xxh580 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %447, i32 0, i32 16
  %448 = load ptr, ptr %dctx.addr, align 8
  %tmpOut581 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %448, i32 0, i32 13
  %449 = load ptr, ptr %tmpOut581, align 8
  %450 = load i32, ptr %decodedSize550, align 4
  %conv582 = sext i32 %450 to i64
  %call583 = call i32 @XXH32_update(ptr noundef %xxh580, ptr noundef %449, i64 noundef %conv582)
  br label %if.end584

if.end584:                                        ; preds = %if.then579, %land.lhs.true576, %do.end572
  %451 = load ptr, ptr %dctx.addr, align 8
  %frameInfo585 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %451, i32 0, i32 1
  %contentSize586 = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo585, i32 0, i32 4
  %452 = load i64, ptr %contentSize586, align 8
  %tobool587 = icmp ne i64 %452, 0
  br i1 %tobool587, label %if.then588, label %if.end592

if.then588:                                       ; preds = %if.end584
  %453 = load i32, ptr %decodedSize550, align 4
  %conv589 = sext i32 %453 to i64
  %454 = load ptr, ptr %dctx.addr, align 8
  %frameRemainingSize590 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %454, i32 0, i32 4
  %455 = load i64, ptr %frameRemainingSize590, align 8
  %sub591 = sub i64 %455, %conv589
  store i64 %sub591, ptr %frameRemainingSize590, align 8
  br label %if.end592

if.end592:                                        ; preds = %if.then588, %if.end584
  %456 = load i32, ptr %decodedSize550, align 4
  %conv593 = sext i32 %456 to i64
  %457 = load ptr, ptr %dctx.addr, align 8
  %tmpOutSize594 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %457, i32 0, i32 14
  store i64 %conv593, ptr %tmpOutSize594, align 8
  %458 = load ptr, ptr %dctx.addr, align 8
  %tmpOutStart595 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %458, i32 0, i32 15
  store i64 0, ptr %tmpOutStart595, align 8
  %459 = load ptr, ptr %dctx.addr, align 8
  %dStage596 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %459, i32 0, i32 3
  store i32 9, ptr %dStage596, align 4
  br label %sw.bb597

sw.bb597:                                         ; preds = %while.body, %if.end592
  %460 = load ptr, ptr %dstPtr, align 8
  %cmp598 = icmp ne ptr %460, null
  br i1 %cmp598, label %if.then600, label %if.end633

if.then600:                                       ; preds = %sw.bb597
  %461 = load ptr, ptr %dctx.addr, align 8
  %tmpOutSize602 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %461, i32 0, i32 14
  %462 = load i64, ptr %tmpOutSize602, align 8
  %463 = load ptr, ptr %dctx.addr, align 8
  %tmpOutStart603 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %463, i32 0, i32 15
  %464 = load i64, ptr %tmpOutStart603, align 8
  %sub604 = sub i64 %462, %464
  %465 = load ptr, ptr %dstEnd, align 8
  %466 = load ptr, ptr %dstPtr, align 8
  %sub.ptr.lhs.cast605 = ptrtoint ptr %465 to i64
  %sub.ptr.rhs.cast606 = ptrtoint ptr %466 to i64
  %sub.ptr.sub607 = sub i64 %sub.ptr.lhs.cast605, %sub.ptr.rhs.cast606
  %cmp608 = icmp ult i64 %sub604, %sub.ptr.sub607
  br i1 %cmp608, label %cond.true610, label %cond.false614

cond.true610:                                     ; preds = %if.then600
  %467 = load ptr, ptr %dctx.addr, align 8
  %tmpOutSize611 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %467, i32 0, i32 14
  %468 = load i64, ptr %tmpOutSize611, align 8
  %469 = load ptr, ptr %dctx.addr, align 8
  %tmpOutStart612 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %469, i32 0, i32 15
  %470 = load i64, ptr %tmpOutStart612, align 8
  %sub613 = sub i64 %468, %470
  br label %cond.end618

cond.false614:                                    ; preds = %if.then600
  %471 = load ptr, ptr %dstEnd, align 8
  %472 = load ptr, ptr %dstPtr, align 8
  %sub.ptr.lhs.cast615 = ptrtoint ptr %471 to i64
  %sub.ptr.rhs.cast616 = ptrtoint ptr %472 to i64
  %sub.ptr.sub617 = sub i64 %sub.ptr.lhs.cast615, %sub.ptr.rhs.cast616
  br label %cond.end618

cond.end618:                                      ; preds = %cond.false614, %cond.true610
  %cond619 = phi i64 [ %sub613, %cond.true610 ], [ %sub.ptr.sub617, %cond.false614 ]
  store i64 %cond619, ptr %sizeToCopy601, align 8
  %473 = load ptr, ptr %dstPtr, align 8
  %474 = load ptr, ptr %dctx.addr, align 8
  %tmpOut620 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %474, i32 0, i32 13
  %475 = load ptr, ptr %tmpOut620, align 8
  %476 = load ptr, ptr %dctx.addr, align 8
  %tmpOutStart621 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %476, i32 0, i32 15
  %477 = load i64, ptr %tmpOutStart621, align 8
  %add.ptr622 = getelementptr inbounds i8, ptr %475, i64 %477
  %478 = load i64, ptr %sizeToCopy601, align 8
  %479 = load ptr, ptr %dstPtr, align 8
  %480 = call i64 @llvm.objectsize.i64.p0(ptr %479, i1 false, i1 true, i1 false)
  %call623 = call ptr @__memcpy_chk(ptr noundef %473, ptr noundef %add.ptr622, i64 noundef %478, i64 noundef %480) #8
  %481 = load ptr, ptr %dctx.addr, align 8
  %frameInfo624 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %481, i32 0, i32 1
  %blockMode625 = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo624, i32 0, i32 1
  %482 = load i32, ptr %blockMode625, align 4
  %cmp626 = icmp eq i32 %482, 0
  br i1 %cmp626, label %if.then628, label %if.end629

if.then628:                                       ; preds = %cond.end618
  %483 = load ptr, ptr %dctx.addr, align 8
  %484 = load ptr, ptr %dstPtr, align 8
  %485 = load i64, ptr %sizeToCopy601, align 8
  %486 = load ptr, ptr %dstStart, align 8
  call void @LZ4F_updateDict(ptr noundef %483, ptr noundef %484, i64 noundef %485, ptr noundef %486, i32 noundef 1)
  br label %if.end629

if.end629:                                        ; preds = %if.then628, %cond.end618
  %487 = load i64, ptr %sizeToCopy601, align 8
  %488 = load ptr, ptr %dctx.addr, align 8
  %tmpOutStart630 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %488, i32 0, i32 15
  %489 = load i64, ptr %tmpOutStart630, align 8
  %add631 = add i64 %489, %487
  store i64 %add631, ptr %tmpOutStart630, align 8
  %490 = load i64, ptr %sizeToCopy601, align 8
  %491 = load ptr, ptr %dstPtr, align 8
  %add.ptr632 = getelementptr inbounds i8, ptr %491, i64 %490
  store ptr %add.ptr632, ptr %dstPtr, align 8
  br label %if.end633

if.end633:                                        ; preds = %if.end629, %sw.bb597
  %492 = load ptr, ptr %dctx.addr, align 8
  %tmpOutStart634 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %492, i32 0, i32 15
  %493 = load i64, ptr %tmpOutStart634, align 8
  %494 = load ptr, ptr %dctx.addr, align 8
  %tmpOutSize635 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %494, i32 0, i32 14
  %495 = load i64, ptr %tmpOutSize635, align 8
  %cmp636 = icmp eq i64 %493, %495
  br i1 %cmp636, label %if.then638, label %if.end640

if.then638:                                       ; preds = %if.end633
  %496 = load ptr, ptr %dctx.addr, align 8
  %dStage639 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %496, i32 0, i32 3
  store i32 3, ptr %dStage639, align 4
  br label %sw.epilog

if.end640:                                        ; preds = %if.end633
  store i32 0, ptr %doAnotherStage, align 4
  store i64 4, ptr %nextSrcSizeHint, align 8
  br label %sw.epilog

sw.bb641:                                         ; preds = %while.body
  br label %do.body642

do.body642:                                       ; preds = %sw.bb641
  %497 = load ptr, ptr %dctx.addr, align 8
  %frameRemainingSize643 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %497, i32 0, i32 4
  %498 = load i64, ptr %frameRemainingSize643, align 8
  %tobool644 = icmp ne i64 %498, 0
  br i1 %tobool644, label %if.then645, label %if.end647

if.then645:                                       ; preds = %do.body642
  %call646 = call i64 @LZ4F_returnErrorCode(i32 noundef 14)
  store i64 %call646, ptr %retval, align 8
  br label %return

if.end647:                                        ; preds = %do.body642
  br label %do.end648

do.end648:                                        ; preds = %if.end647
  %499 = load ptr, ptr %dctx.addr, align 8
  %frameInfo649 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %499, i32 0, i32 1
  %contentChecksumFlag650 = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo649, i32 0, i32 2
  %500 = load i32, ptr %contentChecksumFlag650, align 8
  %tobool651 = icmp ne i32 %500, 0
  br i1 %tobool651, label %if.end653, label %if.then652

if.then652:                                       ; preds = %do.end648
  store i64 0, ptr %nextSrcSizeHint, align 8
  %501 = load ptr, ptr %dctx.addr, align 8
  call void @LZ4F_resetDecompressionContext(ptr noundef %501)
  store i32 0, ptr %doAnotherStage, align 4
  br label %sw.epilog

if.end653:                                        ; preds = %do.end648
  %502 = load ptr, ptr %srcEnd, align 8
  %503 = load ptr, ptr %srcPtr, align 8
  %sub.ptr.lhs.cast654 = ptrtoint ptr %502 to i64
  %sub.ptr.rhs.cast655 = ptrtoint ptr %503 to i64
  %sub.ptr.sub656 = sub i64 %sub.ptr.lhs.cast654, %sub.ptr.rhs.cast655
  %cmp657 = icmp slt i64 %sub.ptr.sub656, 4
  br i1 %cmp657, label %if.then659, label %if.else662

if.then659:                                       ; preds = %if.end653
  %504 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize660 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %504, i32 0, i32 8
  store i64 0, ptr %tmpInSize660, align 8
  %505 = load ptr, ptr %dctx.addr, align 8
  %dStage661 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %505, i32 0, i32 3
  store i32 11, ptr %dStage661, align 4
  br label %if.end664

if.else662:                                       ; preds = %if.end653
  %506 = load ptr, ptr %srcPtr, align 8
  store ptr %506, ptr %selectedIn, align 8
  %507 = load ptr, ptr %srcPtr, align 8
  %add.ptr663 = getelementptr inbounds i8, ptr %507, i64 4
  store ptr %add.ptr663, ptr %srcPtr, align 8
  br label %if.end664

if.end664:                                        ; preds = %if.else662, %if.then659
  %508 = load ptr, ptr %dctx.addr, align 8
  %dStage665 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %508, i32 0, i32 3
  %509 = load i32, ptr %dStage665, align 4
  %cmp666 = icmp eq i32 %509, 11
  br i1 %cmp666, label %if.then668, label %if.end702

if.then668:                                       ; preds = %if.end664
  br label %sw.bb669

sw.bb669:                                         ; preds = %while.body, %if.then668
  %510 = load ptr, ptr %srcEnd, align 8
  %511 = load ptr, ptr %srcPtr, align 8
  %sub.ptr.lhs.cast671 = ptrtoint ptr %510 to i64
  %sub.ptr.rhs.cast672 = ptrtoint ptr %511 to i64
  %sub.ptr.sub673 = sub i64 %sub.ptr.lhs.cast671, %sub.ptr.rhs.cast672
  store i64 %sub.ptr.sub673, ptr %remainingInput670, align 8
  %512 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize675 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %512, i32 0, i32 8
  %513 = load i64, ptr %tmpInSize675, align 8
  %sub676 = sub i64 4, %513
  store i64 %sub676, ptr %wantedData674, align 8
  %514 = load i64, ptr %wantedData674, align 8
  %515 = load i64, ptr %remainingInput670, align 8
  %cmp678 = icmp ult i64 %514, %515
  br i1 %cmp678, label %cond.true680, label %cond.false681

cond.true680:                                     ; preds = %sw.bb669
  %516 = load i64, ptr %wantedData674, align 8
  br label %cond.end682

cond.false681:                                    ; preds = %sw.bb669
  %517 = load i64, ptr %remainingInput670, align 8
  br label %cond.end682

cond.end682:                                      ; preds = %cond.false681, %cond.true680
  %cond683 = phi i64 [ %516, %cond.true680 ], [ %517, %cond.false681 ]
  store i64 %cond683, ptr %sizeToCopy677, align 8
  %518 = load ptr, ptr %dctx.addr, align 8
  %tmpIn684 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %518, i32 0, i32 7
  %519 = load ptr, ptr %tmpIn684, align 8
  %520 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize685 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %520, i32 0, i32 8
  %521 = load i64, ptr %tmpInSize685, align 8
  %add.ptr686 = getelementptr inbounds i8, ptr %519, i64 %521
  %522 = load ptr, ptr %srcPtr, align 8
  %523 = load i64, ptr %sizeToCopy677, align 8
  %524 = load ptr, ptr %dctx.addr, align 8
  %tmpIn687 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %524, i32 0, i32 7
  %525 = load ptr, ptr %tmpIn687, align 8
  %526 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize688 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %526, i32 0, i32 8
  %527 = load i64, ptr %tmpInSize688, align 8
  %add.ptr689 = getelementptr inbounds i8, ptr %525, i64 %527
  %528 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr689, i1 false, i1 true, i1 false)
  %call690 = call ptr @__memcpy_chk(ptr noundef %add.ptr686, ptr noundef %522, i64 noundef %523, i64 noundef %528) #8
  %529 = load i64, ptr %sizeToCopy677, align 8
  %530 = load ptr, ptr %srcPtr, align 8
  %add.ptr691 = getelementptr inbounds i8, ptr %530, i64 %529
  store ptr %add.ptr691, ptr %srcPtr, align 8
  %531 = load i64, ptr %sizeToCopy677, align 8
  %532 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize692 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %532, i32 0, i32 8
  %533 = load i64, ptr %tmpInSize692, align 8
  %add693 = add i64 %533, %531
  store i64 %add693, ptr %tmpInSize692, align 8
  %534 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize694 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %534, i32 0, i32 8
  %535 = load i64, ptr %tmpInSize694, align 8
  %cmp695 = icmp ult i64 %535, 4
  br i1 %cmp695, label %if.then697, label %if.end700

if.then697:                                       ; preds = %cond.end682
  %536 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize698 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %536, i32 0, i32 8
  %537 = load i64, ptr %tmpInSize698, align 8
  %sub699 = sub i64 4, %537
  store i64 %sub699, ptr %nextSrcSizeHint, align 8
  store i32 0, ptr %doAnotherStage, align 4
  br label %sw.epilog

if.end700:                                        ; preds = %cond.end682
  %538 = load ptr, ptr %dctx.addr, align 8
  %tmpIn701 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %538, i32 0, i32 7
  %539 = load ptr, ptr %tmpIn701, align 8
  store ptr %539, ptr %selectedIn, align 8
  br label %if.end702

if.end702:                                        ; preds = %if.end700, %if.end664
  %540 = load ptr, ptr %dctx.addr, align 8
  %skipChecksum703 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %540, i32 0, i32 18
  %541 = load i32, ptr %skipChecksum703, align 8
  %tobool704 = icmp ne i32 %541, 0
  br i1 %tobool704, label %if.end717, label %if.then705

if.then705:                                       ; preds = %if.end702
  %542 = load ptr, ptr %selectedIn, align 8
  %call707 = call i32 @LZ4F_readLE32(ptr noundef %542)
  store i32 %call707, ptr %readCRC706, align 4
  %543 = load ptr, ptr %dctx.addr, align 8
  %xxh708 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %543, i32 0, i32 16
  %call709 = call i32 @XXH32_digest(ptr noundef %xxh708)
  store i32 %call709, ptr %resultCRC, align 4
  br label %do.body710

do.body710:                                       ; preds = %if.then705
  %544 = load i32, ptr %readCRC706, align 4
  %545 = load i32, ptr %resultCRC, align 4
  %cmp711 = icmp ne i32 %544, %545
  br i1 %cmp711, label %if.then713, label %if.end715

if.then713:                                       ; preds = %do.body710
  %call714 = call i64 @LZ4F_returnErrorCode(i32 noundef 18)
  store i64 %call714, ptr %retval, align 8
  br label %return

if.end715:                                        ; preds = %do.body710
  br label %do.end716

do.end716:                                        ; preds = %if.end715
  br label %if.end717

if.end717:                                        ; preds = %do.end716, %if.end702
  store i64 0, ptr %nextSrcSizeHint, align 8
  %546 = load ptr, ptr %dctx.addr, align 8
  call void @LZ4F_resetDecompressionContext(ptr noundef %546)
  store i32 0, ptr %doAnotherStage, align 4
  br label %sw.epilog

sw.bb718:                                         ; preds = %while.body
  %547 = load ptr, ptr %srcEnd, align 8
  %548 = load ptr, ptr %srcPtr, align 8
  %sub.ptr.lhs.cast719 = ptrtoint ptr %547 to i64
  %sub.ptr.rhs.cast720 = ptrtoint ptr %548 to i64
  %sub.ptr.sub721 = sub i64 %sub.ptr.lhs.cast719, %sub.ptr.rhs.cast720
  %cmp722 = icmp sge i64 %sub.ptr.sub721, 4
  br i1 %cmp722, label %if.then724, label %if.else726

if.then724:                                       ; preds = %sw.bb718
  %549 = load ptr, ptr %srcPtr, align 8
  store ptr %549, ptr %selectedIn, align 8
  %550 = load ptr, ptr %srcPtr, align 8
  %add.ptr725 = getelementptr inbounds i8, ptr %550, i64 4
  store ptr %add.ptr725, ptr %srcPtr, align 8
  br label %if.end730

if.else726:                                       ; preds = %sw.bb718
  %551 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize727 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %551, i32 0, i32 8
  store i64 4, ptr %tmpInSize727, align 8
  %552 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget728 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %552, i32 0, i32 9
  store i64 8, ptr %tmpInTarget728, align 8
  %553 = load ptr, ptr %dctx.addr, align 8
  %dStage729 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %553, i32 0, i32 3
  store i32 13, ptr %dStage729, align 4
  br label %if.end730

if.end730:                                        ; preds = %if.else726, %if.then724
  %554 = load ptr, ptr %dctx.addr, align 8
  %dStage731 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %554, i32 0, i32 3
  %555 = load i32, ptr %dStage731, align 4
  %cmp732 = icmp eq i32 %555, 13
  br i1 %cmp732, label %if.then734, label %if.end779

if.then734:                                       ; preds = %if.end730
  br label %sw.bb735

sw.bb735:                                         ; preds = %while.body, %if.then734
  %556 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget737 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %556, i32 0, i32 9
  %557 = load i64, ptr %tmpInTarget737, align 8
  %558 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize738 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %558, i32 0, i32 8
  %559 = load i64, ptr %tmpInSize738, align 8
  %sub739 = sub i64 %557, %559
  %560 = load ptr, ptr %srcEnd, align 8
  %561 = load ptr, ptr %srcPtr, align 8
  %sub.ptr.lhs.cast740 = ptrtoint ptr %560 to i64
  %sub.ptr.rhs.cast741 = ptrtoint ptr %561 to i64
  %sub.ptr.sub742 = sub i64 %sub.ptr.lhs.cast740, %sub.ptr.rhs.cast741
  %cmp743 = icmp ult i64 %sub739, %sub.ptr.sub742
  br i1 %cmp743, label %cond.true745, label %cond.false749

cond.true745:                                     ; preds = %sw.bb735
  %562 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget746 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %562, i32 0, i32 9
  %563 = load i64, ptr %tmpInTarget746, align 8
  %564 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize747 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %564, i32 0, i32 8
  %565 = load i64, ptr %tmpInSize747, align 8
  %sub748 = sub i64 %563, %565
  br label %cond.end753

cond.false749:                                    ; preds = %sw.bb735
  %566 = load ptr, ptr %srcEnd, align 8
  %567 = load ptr, ptr %srcPtr, align 8
  %sub.ptr.lhs.cast750 = ptrtoint ptr %566 to i64
  %sub.ptr.rhs.cast751 = ptrtoint ptr %567 to i64
  %sub.ptr.sub752 = sub i64 %sub.ptr.lhs.cast750, %sub.ptr.rhs.cast751
  br label %cond.end753

cond.end753:                                      ; preds = %cond.false749, %cond.true745
  %cond754 = phi i64 [ %sub748, %cond.true745 ], [ %sub.ptr.sub752, %cond.false749 ]
  store i64 %cond754, ptr %sizeToCopy736, align 8
  %568 = load ptr, ptr %dctx.addr, align 8
  %header755 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %568, i32 0, i32 19
  %arraydecay756 = getelementptr inbounds [19 x i8], ptr %header755, i64 0, i64 0
  %569 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize757 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %569, i32 0, i32 8
  %570 = load i64, ptr %tmpInSize757, align 8
  %add.ptr758 = getelementptr inbounds i8, ptr %arraydecay756, i64 %570
  %571 = load ptr, ptr %srcPtr, align 8
  %572 = load i64, ptr %sizeToCopy736, align 8
  %573 = load ptr, ptr %dctx.addr, align 8
  %header759 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %573, i32 0, i32 19
  %arraydecay760 = getelementptr inbounds [19 x i8], ptr %header759, i64 0, i64 0
  %574 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize761 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %574, i32 0, i32 8
  %575 = load i64, ptr %tmpInSize761, align 8
  %add.ptr762 = getelementptr inbounds i8, ptr %arraydecay760, i64 %575
  %576 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr762, i1 false, i1 true, i1 false)
  %call763 = call ptr @__memcpy_chk(ptr noundef %add.ptr758, ptr noundef %571, i64 noundef %572, i64 noundef %576) #8
  %577 = load i64, ptr %sizeToCopy736, align 8
  %578 = load ptr, ptr %srcPtr, align 8
  %add.ptr764 = getelementptr inbounds i8, ptr %578, i64 %577
  store ptr %add.ptr764, ptr %srcPtr, align 8
  %579 = load i64, ptr %sizeToCopy736, align 8
  %580 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize765 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %580, i32 0, i32 8
  %581 = load i64, ptr %tmpInSize765, align 8
  %add766 = add i64 %581, %579
  store i64 %add766, ptr %tmpInSize765, align 8
  %582 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize767 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %582, i32 0, i32 8
  %583 = load i64, ptr %tmpInSize767, align 8
  %584 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget768 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %584, i32 0, i32 9
  %585 = load i64, ptr %tmpInTarget768, align 8
  %cmp769 = icmp ult i64 %583, %585
  br i1 %cmp769, label %if.then771, label %if.end775

if.then771:                                       ; preds = %cond.end753
  %586 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget772 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %586, i32 0, i32 9
  %587 = load i64, ptr %tmpInTarget772, align 8
  %588 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize773 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %588, i32 0, i32 8
  %589 = load i64, ptr %tmpInSize773, align 8
  %sub774 = sub i64 %587, %589
  store i64 %sub774, ptr %nextSrcSizeHint, align 8
  store i32 0, ptr %doAnotherStage, align 4
  br label %sw.epilog

if.end775:                                        ; preds = %cond.end753
  %590 = load ptr, ptr %dctx.addr, align 8
  %header776 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %590, i32 0, i32 19
  %arraydecay777 = getelementptr inbounds [19 x i8], ptr %header776, i64 0, i64 0
  %add.ptr778 = getelementptr inbounds i8, ptr %arraydecay777, i64 4
  store ptr %add.ptr778, ptr %selectedIn, align 8
  br label %if.end779

if.end779:                                        ; preds = %if.end775, %if.end730
  %591 = load ptr, ptr %selectedIn, align 8
  %call780 = call i32 @LZ4F_readLE32(ptr noundef %591)
  %conv781 = zext i32 %call780 to i64
  store i64 %conv781, ptr %SFrameSize, align 8
  %592 = load i64, ptr %SFrameSize, align 8
  %593 = load ptr, ptr %dctx.addr, align 8
  %frameInfo782 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %593, i32 0, i32 1
  %contentSize783 = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo782, i32 0, i32 4
  store i64 %592, ptr %contentSize783, align 8
  %594 = load i64, ptr %SFrameSize, align 8
  %595 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget784 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %595, i32 0, i32 9
  store i64 %594, ptr %tmpInTarget784, align 8
  %596 = load ptr, ptr %dctx.addr, align 8
  %dStage785 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %596, i32 0, i32 3
  store i32 14, ptr %dStage785, align 4
  br label %sw.epilog

sw.bb786:                                         ; preds = %while.body
  %597 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget787 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %597, i32 0, i32 9
  %598 = load i64, ptr %tmpInTarget787, align 8
  %599 = load ptr, ptr %srcEnd, align 8
  %600 = load ptr, ptr %srcPtr, align 8
  %sub.ptr.lhs.cast788 = ptrtoint ptr %599 to i64
  %sub.ptr.rhs.cast789 = ptrtoint ptr %600 to i64
  %sub.ptr.sub790 = sub i64 %sub.ptr.lhs.cast788, %sub.ptr.rhs.cast789
  %cmp791 = icmp ult i64 %598, %sub.ptr.sub790
  br i1 %cmp791, label %cond.true793, label %cond.false795

cond.true793:                                     ; preds = %sw.bb786
  %601 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget794 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %601, i32 0, i32 9
  %602 = load i64, ptr %tmpInTarget794, align 8
  br label %cond.end799

cond.false795:                                    ; preds = %sw.bb786
  %603 = load ptr, ptr %srcEnd, align 8
  %604 = load ptr, ptr %srcPtr, align 8
  %sub.ptr.lhs.cast796 = ptrtoint ptr %603 to i64
  %sub.ptr.rhs.cast797 = ptrtoint ptr %604 to i64
  %sub.ptr.sub798 = sub i64 %sub.ptr.lhs.cast796, %sub.ptr.rhs.cast797
  br label %cond.end799

cond.end799:                                      ; preds = %cond.false795, %cond.true793
  %cond800 = phi i64 [ %602, %cond.true793 ], [ %sub.ptr.sub798, %cond.false795 ]
  store i64 %cond800, ptr %skipSize, align 8
  %605 = load i64, ptr %skipSize, align 8
  %606 = load ptr, ptr %srcPtr, align 8
  %add.ptr801 = getelementptr inbounds i8, ptr %606, i64 %605
  store ptr %add.ptr801, ptr %srcPtr, align 8
  %607 = load i64, ptr %skipSize, align 8
  %608 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget802 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %608, i32 0, i32 9
  %609 = load i64, ptr %tmpInTarget802, align 8
  %sub803 = sub i64 %609, %607
  store i64 %sub803, ptr %tmpInTarget802, align 8
  store i32 0, ptr %doAnotherStage, align 4
  %610 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget804 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %610, i32 0, i32 9
  %611 = load i64, ptr %tmpInTarget804, align 8
  store i64 %611, ptr %nextSrcSizeHint, align 8
  %612 = load i64, ptr %nextSrcSizeHint, align 8
  %tobool805 = icmp ne i64 %612, 0
  br i1 %tobool805, label %if.then806, label %if.end807

if.then806:                                       ; preds = %cond.end799
  br label %sw.epilog

if.end807:                                        ; preds = %cond.end799
  %613 = load ptr, ptr %dctx.addr, align 8
  call void @LZ4F_resetDecompressionContext(ptr noundef %613)
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.body, %if.end807, %if.then806, %if.end779, %if.then771, %if.end717, %if.then697, %if.then652, %if.end640, %if.then638, %if.end501, %if.then403, %if.then367, %if.end358, %if.then342, %if.end290, %if.end289, %if.end211, %if.end198, %if.then180, %if.then168, %do.end77, %if.then58, %do.end
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %614 = load ptr, ptr %dctx.addr, align 8
  %frameInfo808 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %614, i32 0, i32 1
  %blockMode809 = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo808, i32 0, i32 1
  %615 = load i32, ptr %blockMode809, align 4
  %cmp810 = icmp eq i32 %615, 0
  br i1 %cmp810, label %land.lhs.true812, label %if.end895

land.lhs.true812:                                 ; preds = %while.end
  %616 = load ptr, ptr %dctx.addr, align 8
  %dict813 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %616, i32 0, i32 11
  %617 = load ptr, ptr %dict813, align 8
  %618 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer814 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %618, i32 0, i32 10
  %619 = load ptr, ptr %tmpOutBuffer814, align 8
  %cmp815 = icmp ne ptr %617, %619
  br i1 %cmp815, label %land.lhs.true817, label %if.end895

land.lhs.true817:                                 ; preds = %land.lhs.true812
  %620 = load ptr, ptr %dctx.addr, align 8
  %dict818 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %620, i32 0, i32 11
  %621 = load ptr, ptr %dict818, align 8
  %cmp819 = icmp ne ptr %621, null
  br i1 %cmp819, label %land.lhs.true821, label %if.end895

land.lhs.true821:                                 ; preds = %land.lhs.true817
  %622 = load ptr, ptr %decompressOptionsPtr.addr, align 8
  %stableDst = getelementptr inbounds %struct.LZ4F_decompressOptions_t, ptr %622, i32 0, i32 0
  %623 = load i32, ptr %stableDst, align 4
  %tobool822 = icmp ne i32 %623, 0
  br i1 %tobool822, label %if.end895, label %land.lhs.true823

land.lhs.true823:                                 ; preds = %land.lhs.true821
  %624 = load ptr, ptr %dctx.addr, align 8
  %dStage824 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %624, i32 0, i32 3
  %625 = load i32, ptr %dStage824, align 4
  %sub825 = sub i32 %625, 2
  %cmp826 = icmp ult i32 %sub825, 8
  br i1 %cmp826, label %if.then828, label %if.end895

if.then828:                                       ; preds = %land.lhs.true823
  %626 = load ptr, ptr %dctx.addr, align 8
  %dStage829 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %626, i32 0, i32 3
  %627 = load i32, ptr %dStage829, align 4
  %cmp830 = icmp eq i32 %627, 9
  br i1 %cmp830, label %if.then832, label %if.else870

if.then832:                                       ; preds = %if.then828
  %628 = load ptr, ptr %dctx.addr, align 8
  %tmpOut833 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %628, i32 0, i32 13
  %629 = load ptr, ptr %tmpOut833, align 8
  %630 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer834 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %630, i32 0, i32 10
  %631 = load ptr, ptr %tmpOutBuffer834, align 8
  %sub.ptr.lhs.cast835 = ptrtoint ptr %629 to i64
  %sub.ptr.rhs.cast836 = ptrtoint ptr %631 to i64
  %sub.ptr.sub837 = sub i64 %sub.ptr.lhs.cast835, %sub.ptr.rhs.cast836
  store i64 %sub.ptr.sub837, ptr %preserveSize, align 8
  %632 = load ptr, ptr %dctx.addr, align 8
  %tmpOutSize838 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %632, i32 0, i32 14
  %633 = load i64, ptr %tmpOutSize838, align 8
  %sub839 = sub i64 65536, %633
  store i64 %sub839, ptr %copySize, align 8
  %634 = load ptr, ptr %dctx.addr, align 8
  %dict840 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %634, i32 0, i32 11
  %635 = load ptr, ptr %dict840, align 8
  %636 = load ptr, ptr %dctx.addr, align 8
  %dictSize841 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %636, i32 0, i32 12
  %637 = load i64, ptr %dictSize841, align 8
  %add.ptr842 = getelementptr inbounds i8, ptr %635, i64 %637
  %638 = load ptr, ptr %dctx.addr, align 8
  %tmpOutStart843 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %638, i32 0, i32 15
  %639 = load i64, ptr %tmpOutStart843, align 8
  %idx.neg = sub i64 0, %639
  %add.ptr844 = getelementptr inbounds i8, ptr %add.ptr842, i64 %idx.neg
  store ptr %add.ptr844, ptr %oldDictEnd, align 8
  %640 = load ptr, ptr %dctx.addr, align 8
  %tmpOutSize845 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %640, i32 0, i32 14
  %641 = load i64, ptr %tmpOutSize845, align 8
  %cmp846 = icmp ugt i64 %641, 65536
  br i1 %cmp846, label %if.then848, label %if.end849

if.then848:                                       ; preds = %if.then832
  store i64 0, ptr %copySize, align 8
  br label %if.end849

if.end849:                                        ; preds = %if.then848, %if.then832
  %642 = load i64, ptr %copySize, align 8
  %643 = load i64, ptr %preserveSize, align 8
  %cmp850 = icmp ugt i64 %642, %643
  br i1 %cmp850, label %if.then852, label %if.end853

if.then852:                                       ; preds = %if.end849
  %644 = load i64, ptr %preserveSize, align 8
  store i64 %644, ptr %copySize, align 8
  br label %if.end853

if.end853:                                        ; preds = %if.then852, %if.end849
  %645 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer854 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %645, i32 0, i32 10
  %646 = load ptr, ptr %tmpOutBuffer854, align 8
  %647 = load i64, ptr %preserveSize, align 8
  %add.ptr855 = getelementptr inbounds i8, ptr %646, i64 %647
  %648 = load i64, ptr %copySize, align 8
  %idx.neg856 = sub i64 0, %648
  %add.ptr857 = getelementptr inbounds i8, ptr %add.ptr855, i64 %idx.neg856
  %649 = load ptr, ptr %oldDictEnd, align 8
  %650 = load i64, ptr %copySize, align 8
  %idx.neg858 = sub i64 0, %650
  %add.ptr859 = getelementptr inbounds i8, ptr %649, i64 %idx.neg858
  %651 = load i64, ptr %copySize, align 8
  %652 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer860 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %652, i32 0, i32 10
  %653 = load ptr, ptr %tmpOutBuffer860, align 8
  %654 = load i64, ptr %preserveSize, align 8
  %add.ptr861 = getelementptr inbounds i8, ptr %653, i64 %654
  %655 = load i64, ptr %copySize, align 8
  %idx.neg862 = sub i64 0, %655
  %add.ptr863 = getelementptr inbounds i8, ptr %add.ptr861, i64 %idx.neg862
  %656 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr863, i1 false, i1 true, i1 false)
  %call864 = call ptr @__memcpy_chk(ptr noundef %add.ptr857, ptr noundef %add.ptr859, i64 noundef %651, i64 noundef %656) #8
  %657 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer865 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %657, i32 0, i32 10
  %658 = load ptr, ptr %tmpOutBuffer865, align 8
  %659 = load ptr, ptr %dctx.addr, align 8
  %dict866 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %659, i32 0, i32 11
  store ptr %658, ptr %dict866, align 8
  %660 = load i64, ptr %preserveSize, align 8
  %661 = load ptr, ptr %dctx.addr, align 8
  %tmpOutStart867 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %661, i32 0, i32 15
  %662 = load i64, ptr %tmpOutStart867, align 8
  %add868 = add i64 %660, %662
  %663 = load ptr, ptr %dctx.addr, align 8
  %dictSize869 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %663, i32 0, i32 12
  store i64 %add868, ptr %dictSize869, align 8
  br label %if.end894

if.else870:                                       ; preds = %if.then828
  %664 = load ptr, ptr %dctx.addr, align 8
  %dict872 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %664, i32 0, i32 11
  %665 = load ptr, ptr %dict872, align 8
  %666 = load ptr, ptr %dctx.addr, align 8
  %dictSize873 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %666, i32 0, i32 12
  %667 = load i64, ptr %dictSize873, align 8
  %add.ptr874 = getelementptr inbounds i8, ptr %665, i64 %667
  store ptr %add.ptr874, ptr %oldDictEnd871, align 8
  %668 = load ptr, ptr %dctx.addr, align 8
  %dictSize875 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %668, i32 0, i32 12
  %669 = load i64, ptr %dictSize875, align 8
  %cmp876 = icmp ult i64 %669, 65536
  br i1 %cmp876, label %cond.true878, label %cond.false880

cond.true878:                                     ; preds = %if.else870
  %670 = load ptr, ptr %dctx.addr, align 8
  %dictSize879 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %670, i32 0, i32 12
  %671 = load i64, ptr %dictSize879, align 8
  br label %cond.end881

cond.false880:                                    ; preds = %if.else870
  br label %cond.end881

cond.end881:                                      ; preds = %cond.false880, %cond.true878
  %cond882 = phi i64 [ %671, %cond.true878 ], [ 65536, %cond.false880 ]
  store i64 %cond882, ptr %newDictSize, align 8
  %672 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer883 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %672, i32 0, i32 10
  %673 = load ptr, ptr %tmpOutBuffer883, align 8
  %674 = load ptr, ptr %oldDictEnd871, align 8
  %675 = load i64, ptr %newDictSize, align 8
  %idx.neg884 = sub i64 0, %675
  %add.ptr885 = getelementptr inbounds i8, ptr %674, i64 %idx.neg884
  %676 = load i64, ptr %newDictSize, align 8
  %677 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer886 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %677, i32 0, i32 10
  %678 = load ptr, ptr %tmpOutBuffer886, align 8
  %679 = call i64 @llvm.objectsize.i64.p0(ptr %678, i1 false, i1 true, i1 false)
  %call887 = call ptr @__memcpy_chk(ptr noundef %673, ptr noundef %add.ptr885, i64 noundef %676, i64 noundef %679) #8
  %680 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer888 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %680, i32 0, i32 10
  %681 = load ptr, ptr %tmpOutBuffer888, align 8
  %682 = load ptr, ptr %dctx.addr, align 8
  %dict889 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %682, i32 0, i32 11
  store ptr %681, ptr %dict889, align 8
  %683 = load i64, ptr %newDictSize, align 8
  %684 = load ptr, ptr %dctx.addr, align 8
  %dictSize890 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %684, i32 0, i32 12
  store i64 %683, ptr %dictSize890, align 8
  %685 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer891 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %685, i32 0, i32 10
  %686 = load ptr, ptr %tmpOutBuffer891, align 8
  %687 = load i64, ptr %newDictSize, align 8
  %add.ptr892 = getelementptr inbounds i8, ptr %686, i64 %687
  %688 = load ptr, ptr %dctx.addr, align 8
  %tmpOut893 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %688, i32 0, i32 13
  store ptr %add.ptr892, ptr %tmpOut893, align 8
  br label %if.end894

if.end894:                                        ; preds = %cond.end881, %if.end853
  br label %if.end895

if.end895:                                        ; preds = %if.end894, %land.lhs.true823, %land.lhs.true821, %land.lhs.true817, %land.lhs.true812, %while.end
  %689 = load ptr, ptr %srcPtr, align 8
  %690 = load ptr, ptr %srcStart, align 8
  %sub.ptr.lhs.cast896 = ptrtoint ptr %689 to i64
  %sub.ptr.rhs.cast897 = ptrtoint ptr %690 to i64
  %sub.ptr.sub898 = sub i64 %sub.ptr.lhs.cast896, %sub.ptr.rhs.cast897
  %691 = load ptr, ptr %srcSizePtr.addr, align 8
  store i64 %sub.ptr.sub898, ptr %691, align 8
  %692 = load ptr, ptr %dstPtr, align 8
  %693 = load ptr, ptr %dstStart, align 8
  %sub.ptr.lhs.cast899 = ptrtoint ptr %692 to i64
  %sub.ptr.rhs.cast900 = ptrtoint ptr %693 to i64
  %sub.ptr.sub901 = sub i64 %sub.ptr.lhs.cast899, %sub.ptr.rhs.cast900
  %694 = load ptr, ptr %dstSizePtr.addr, align 8
  store i64 %sub.ptr.sub901, ptr %694, align 8
  %695 = load i64, ptr %nextSrcSizeHint, align 8
  store i64 %695, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end895, %if.then713, %if.then645, %if.then569, %if.then472, %if.then430, %if.then355, %if.then186, %if.then117, %if.then103, %if.then71, %if.then24, %if.then15
  %696 = load i64, ptr %retval, align 8
  ret i64 %696
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @LZ4F_decodeHeader(ptr noundef %dctx, ptr noundef %src, i64 noundef %srcSize) #0 {
entry:
  %retval = alloca i64, align 8
  %dctx.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %srcSize.addr = alloca i64, align 8
  %blockMode = alloca i32, align 4
  %blockChecksumFlag = alloca i32, align 4
  %contentSizeFlag = alloca i32, align 4
  %contentChecksumFlag = alloca i32, align 4
  %dictIDFlag = alloca i32, align 4
  %blockSizeID = alloca i32, align 4
  %frameHeaderSize = alloca i64, align 8
  %srcPtr = alloca ptr, align 8
  %FLG = alloca i32, align 4
  %version = alloca i32, align 4
  %BD = alloca i32, align 4
  %HC = alloca i8, align 1
  store ptr %dctx, ptr %dctx.addr, align 8
  store ptr %src, ptr %src.addr, align 8
  store i64 %srcSize, ptr %srcSize.addr, align 8
  %0 = load ptr, ptr %src.addr, align 8
  store ptr %0, ptr %srcPtr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load i64, ptr %srcSize.addr, align 8
  %cmp = icmp ult i64 %1, 7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %call = call i64 @LZ4F_returnErrorCode(i32 noundef 12)
  store i64 %call, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr %dctx.addr, align 8
  %frameInfo = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %dctx.addr, align 8
  %frameInfo1 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %3, i32 0, i32 1
  %4 = call i64 @llvm.objectsize.i64.p0(ptr %frameInfo1, i1 false, i1 true, i1 false)
  %call2 = call ptr @__memset_chk(ptr noundef %frameInfo, i32 noundef 0, i64 noundef 32, i64 noundef %4) #8
  %5 = load ptr, ptr %srcPtr, align 8
  %call3 = call i32 @LZ4F_readLE32(ptr noundef %5)
  %and = and i32 %call3, -16
  %cmp4 = icmp eq i32 %and, 407710288
  br i1 %cmp4, label %if.then5, label %if.end10

if.then5:                                         ; preds = %do.end
  %6 = load ptr, ptr %dctx.addr, align 8
  %frameInfo6 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %6, i32 0, i32 1
  %frameType = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo6, i32 0, i32 3
  store i32 1, ptr %frameType, align 4
  %7 = load ptr, ptr %src.addr, align 8
  %8 = load ptr, ptr %dctx.addr, align 8
  %header = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %8, i32 0, i32 19
  %arraydecay = getelementptr inbounds [19 x i8], ptr %header, i64 0, i64 0
  %cmp7 = icmp eq ptr %7, %arraydecay
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then5
  %9 = load i64, ptr %srcSize.addr, align 8
  %10 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %10, i32 0, i32 8
  store i64 %9, ptr %tmpInSize, align 8
  %11 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %11, i32 0, i32 9
  store i64 8, ptr %tmpInTarget, align 8
  %12 = load ptr, ptr %dctx.addr, align 8
  %dStage = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %12, i32 0, i32 3
  store i32 13, ptr %dStage, align 4
  %13 = load i64, ptr %srcSize.addr, align 8
  store i64 %13, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %if.then5
  %14 = load ptr, ptr %dctx.addr, align 8
  %dStage9 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %14, i32 0, i32 3
  store i32 12, ptr %dStage9, align 4
  store i64 4, ptr %retval, align 8
  br label %return

if.end10:                                         ; preds = %do.end
  %15 = load ptr, ptr %srcPtr, align 8
  %call11 = call i32 @LZ4F_readLE32(ptr noundef %15)
  %cmp12 = icmp ne i32 %call11, 407708164
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end10
  %call14 = call i64 @LZ4F_returnErrorCode(i32 noundef 13)
  store i64 %call14, ptr %retval, align 8
  br label %return

if.end15:                                         ; preds = %if.end10
  %16 = load ptr, ptr %dctx.addr, align 8
  %frameInfo16 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %16, i32 0, i32 1
  %frameType17 = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo16, i32 0, i32 3
  store i32 0, ptr %frameType17, align 4
  %17 = load ptr, ptr %srcPtr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %17, i64 4
  %18 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %18 to i32
  store i32 %conv, ptr %FLG, align 4
  %19 = load i32, ptr %FLG, align 4
  %shr = lshr i32 %19, 6
  %and18 = and i32 %shr, 3
  store i32 %and18, ptr %version, align 4
  %20 = load i32, ptr %FLG, align 4
  %shr19 = lshr i32 %20, 4
  %and20 = and i32 %shr19, 1
  store i32 %and20, ptr %blockChecksumFlag, align 4
  %21 = load i32, ptr %FLG, align 4
  %shr21 = lshr i32 %21, 5
  %and22 = and i32 %shr21, 1
  store i32 %and22, ptr %blockMode, align 4
  %22 = load i32, ptr %FLG, align 4
  %shr23 = lshr i32 %22, 3
  %and24 = and i32 %shr23, 1
  store i32 %and24, ptr %contentSizeFlag, align 4
  %23 = load i32, ptr %FLG, align 4
  %shr25 = lshr i32 %23, 2
  %and26 = and i32 %shr25, 1
  store i32 %and26, ptr %contentChecksumFlag, align 4
  %24 = load i32, ptr %FLG, align 4
  %and27 = and i32 %24, 1
  store i32 %and27, ptr %dictIDFlag, align 4
  %25 = load i32, ptr %FLG, align 4
  %shr28 = lshr i32 %25, 1
  %and29 = and i32 %shr28, 1
  %cmp30 = icmp ne i32 %and29, 0
  br i1 %cmp30, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end15
  %call33 = call i64 @LZ4F_returnErrorCode(i32 noundef 8)
  store i64 %call33, ptr %retval, align 8
  br label %return

if.end34:                                         ; preds = %if.end15
  %26 = load i32, ptr %version, align 4
  %cmp35 = icmp ne i32 %26, 1
  br i1 %cmp35, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end34
  %call38 = call i64 @LZ4F_returnErrorCode(i32 noundef 6)
  store i64 %call38, ptr %retval, align 8
  br label %return

if.end39:                                         ; preds = %if.end34
  %27 = load i32, ptr %contentSizeFlag, align 4
  %tobool = icmp ne i32 %27, 0
  %28 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 8, i32 0
  %conv40 = sext i32 %cond to i64
  %add = add i64 7, %conv40
  %29 = load i32, ptr %dictIDFlag, align 4
  %tobool41 = icmp ne i32 %29, 0
  %30 = zext i1 %tobool41 to i64
  %cond42 = select i1 %tobool41, i32 4, i32 0
  %conv43 = sext i32 %cond42 to i64
  %add44 = add i64 %add, %conv43
  store i64 %add44, ptr %frameHeaderSize, align 8
  %31 = load i64, ptr %srcSize.addr, align 8
  %32 = load i64, ptr %frameHeaderSize, align 8
  %cmp45 = icmp ult i64 %31, %32
  br i1 %cmp45, label %if.then47, label %if.end62

if.then47:                                        ; preds = %if.end39
  %33 = load ptr, ptr %srcPtr, align 8
  %34 = load ptr, ptr %dctx.addr, align 8
  %header48 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %34, i32 0, i32 19
  %arraydecay49 = getelementptr inbounds [19 x i8], ptr %header48, i64 0, i64 0
  %cmp50 = icmp ne ptr %33, %arraydecay49
  br i1 %cmp50, label %if.then52, label %if.end58

if.then52:                                        ; preds = %if.then47
  %35 = load ptr, ptr %dctx.addr, align 8
  %header53 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %35, i32 0, i32 19
  %arraydecay54 = getelementptr inbounds [19 x i8], ptr %header53, i64 0, i64 0
  %36 = load ptr, ptr %srcPtr, align 8
  %37 = load i64, ptr %srcSize.addr, align 8
  %38 = load ptr, ptr %dctx.addr, align 8
  %header55 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %38, i32 0, i32 19
  %arraydecay56 = getelementptr inbounds [19 x i8], ptr %header55, i64 0, i64 0
  %39 = call i64 @llvm.objectsize.i64.p0(ptr %arraydecay56, i1 false, i1 true, i1 false)
  %call57 = call ptr @__memcpy_chk(ptr noundef %arraydecay54, ptr noundef %36, i64 noundef %37, i64 noundef %39) #8
  br label %if.end58

if.end58:                                         ; preds = %if.then52, %if.then47
  %40 = load i64, ptr %srcSize.addr, align 8
  %41 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize59 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %41, i32 0, i32 8
  store i64 %40, ptr %tmpInSize59, align 8
  %42 = load i64, ptr %frameHeaderSize, align 8
  %43 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget60 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %43, i32 0, i32 9
  store i64 %42, ptr %tmpInTarget60, align 8
  %44 = load ptr, ptr %dctx.addr, align 8
  %dStage61 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %44, i32 0, i32 3
  store i32 1, ptr %dStage61, align 4
  %45 = load i64, ptr %srcSize.addr, align 8
  store i64 %45, ptr %retval, align 8
  br label %return

if.end62:                                         ; preds = %if.end39
  %46 = load ptr, ptr %srcPtr, align 8
  %arrayidx63 = getelementptr inbounds i8, ptr %46, i64 5
  %47 = load i8, ptr %arrayidx63, align 1
  %conv64 = zext i8 %47 to i32
  store i32 %conv64, ptr %BD, align 4
  %48 = load i32, ptr %BD, align 4
  %shr65 = lshr i32 %48, 4
  %and66 = and i32 %shr65, 7
  store i32 %and66, ptr %blockSizeID, align 4
  %49 = load i32, ptr %BD, align 4
  %shr67 = lshr i32 %49, 7
  %and68 = and i32 %shr67, 1
  %cmp69 = icmp ne i32 %and68, 0
  br i1 %cmp69, label %if.then71, label %if.end73

if.then71:                                        ; preds = %if.end62
  %call72 = call i64 @LZ4F_returnErrorCode(i32 noundef 8)
  store i64 %call72, ptr %retval, align 8
  br label %return

if.end73:                                         ; preds = %if.end62
  %50 = load i32, ptr %blockSizeID, align 4
  %cmp74 = icmp ult i32 %50, 4
  br i1 %cmp74, label %if.then76, label %if.end78

if.then76:                                        ; preds = %if.end73
  %call77 = call i64 @LZ4F_returnErrorCode(i32 noundef 2)
  store i64 %call77, ptr %retval, align 8
  br label %return

if.end78:                                         ; preds = %if.end73
  %51 = load i32, ptr %BD, align 4
  %shr79 = lshr i32 %51, 0
  %and80 = and i32 %shr79, 15
  %cmp81 = icmp ne i32 %and80, 0
  br i1 %cmp81, label %if.then83, label %if.end85

if.then83:                                        ; preds = %if.end78
  %call84 = call i64 @LZ4F_returnErrorCode(i32 noundef 8)
  store i64 %call84, ptr %retval, align 8
  br label %return

if.end85:                                         ; preds = %if.end78
  %52 = load ptr, ptr %srcPtr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %52, i64 4
  %53 = load i64, ptr %frameHeaderSize, align 8
  %sub = sub i64 %53, 5
  %call86 = call zeroext i8 @LZ4F_headerChecksum(ptr noundef %add.ptr, i64 noundef %sub)
  store i8 %call86, ptr %HC, align 1
  br label %do.body87

do.body87:                                        ; preds = %if.end85
  %54 = load i8, ptr %HC, align 1
  %conv88 = zext i8 %54 to i32
  %55 = load ptr, ptr %srcPtr, align 8
  %56 = load i64, ptr %frameHeaderSize, align 8
  %sub89 = sub i64 %56, 1
  %arrayidx90 = getelementptr inbounds i8, ptr %55, i64 %sub89
  %57 = load i8, ptr %arrayidx90, align 1
  %conv91 = zext i8 %57 to i32
  %cmp92 = icmp ne i32 %conv88, %conv91
  br i1 %cmp92, label %if.then94, label %if.end96

if.then94:                                        ; preds = %do.body87
  %call95 = call i64 @LZ4F_returnErrorCode(i32 noundef 17)
  store i64 %call95, ptr %retval, align 8
  br label %return

if.end96:                                         ; preds = %do.body87
  br label %do.end97

do.end97:                                         ; preds = %if.end96
  %58 = load i32, ptr %blockMode, align 4
  %59 = load ptr, ptr %dctx.addr, align 8
  %frameInfo98 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %59, i32 0, i32 1
  %blockMode99 = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo98, i32 0, i32 1
  store i32 %58, ptr %blockMode99, align 4
  %60 = load i32, ptr %blockChecksumFlag, align 4
  %61 = load ptr, ptr %dctx.addr, align 8
  %frameInfo100 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %61, i32 0, i32 1
  %blockChecksumFlag101 = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo100, i32 0, i32 6
  store i32 %60, ptr %blockChecksumFlag101, align 4
  %62 = load i32, ptr %contentChecksumFlag, align 4
  %63 = load ptr, ptr %dctx.addr, align 8
  %frameInfo102 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %63, i32 0, i32 1
  %contentChecksumFlag103 = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo102, i32 0, i32 2
  store i32 %62, ptr %contentChecksumFlag103, align 8
  %64 = load i32, ptr %blockSizeID, align 4
  %65 = load ptr, ptr %dctx.addr, align 8
  %frameInfo104 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %65, i32 0, i32 1
  %blockSizeID105 = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo104, i32 0, i32 0
  store i32 %64, ptr %blockSizeID105, align 8
  %66 = load i32, ptr %blockSizeID, align 4
  %call106 = call i64 @LZ4F_getBlockSize(i32 noundef %66)
  %67 = load ptr, ptr %dctx.addr, align 8
  %maxBlockSize = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %67, i32 0, i32 5
  store i64 %call106, ptr %maxBlockSize, align 8
  %68 = load i32, ptr %contentSizeFlag, align 4
  %tobool107 = icmp ne i32 %68, 0
  br i1 %tobool107, label %if.then108, label %if.end112

if.then108:                                       ; preds = %do.end97
  %69 = load ptr, ptr %srcPtr, align 8
  %add.ptr109 = getelementptr inbounds i8, ptr %69, i64 6
  %call110 = call i64 @LZ4F_readLE64(ptr noundef %add.ptr109)
  %70 = load ptr, ptr %dctx.addr, align 8
  %frameInfo111 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %70, i32 0, i32 1
  %contentSize = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo111, i32 0, i32 4
  store i64 %call110, ptr %contentSize, align 8
  %71 = load ptr, ptr %dctx.addr, align 8
  %frameRemainingSize = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %71, i32 0, i32 4
  store i64 %call110, ptr %frameRemainingSize, align 8
  br label %if.end112

if.end112:                                        ; preds = %if.then108, %do.end97
  %72 = load i32, ptr %dictIDFlag, align 4
  %tobool113 = icmp ne i32 %72, 0
  br i1 %tobool113, label %if.then114, label %if.end119

if.then114:                                       ; preds = %if.end112
  %73 = load ptr, ptr %srcPtr, align 8
  %74 = load i64, ptr %frameHeaderSize, align 8
  %add.ptr115 = getelementptr inbounds i8, ptr %73, i64 %74
  %add.ptr116 = getelementptr inbounds i8, ptr %add.ptr115, i64 -5
  %call117 = call i32 @LZ4F_readLE32(ptr noundef %add.ptr116)
  %75 = load ptr, ptr %dctx.addr, align 8
  %frameInfo118 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %75, i32 0, i32 1
  %dictID = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %frameInfo118, i32 0, i32 5
  store i32 %call117, ptr %dictID, align 8
  br label %if.end119

if.end119:                                        ; preds = %if.then114, %if.end112
  %76 = load ptr, ptr %dctx.addr, align 8
  %dStage120 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %76, i32 0, i32 3
  store i32 2, ptr %dStage120, align 4
  %77 = load i64, ptr %frameHeaderSize, align 8
  store i64 %77, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end119, %if.then94, %if.then83, %if.then76, %if.then71, %if.end58, %if.then37, %if.then32, %if.then13, %if.else, %if.then8, %if.then
  %78 = load i64, ptr %retval, align 8
  ret i64 %78
}

declare i32 @XXH32_reset(ptr noundef, i32 noundef) #3

declare i32 @XXH32_update(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nounwind ssp uwtable
define internal void @LZ4F_updateDict(ptr noundef %dctx, ptr noundef %dstPtr, i64 noundef %dstSize, ptr noundef %dstBufferStart, i32 noundef %withinTmp) #0 {
entry:
  %dctx.addr = alloca ptr, align 8
  %dstPtr.addr = alloca ptr, align 8
  %dstSize.addr = alloca i64, align 8
  %dstBufferStart.addr = alloca ptr, align 8
  %withinTmp.addr = alloca i32, align 4
  %preserveSize = alloca i64, align 8
  %copySize = alloca i64, align 8
  %oldDictEnd = alloca ptr, align 8
  %preserveSize65 = alloca i64, align 8
  %preserveSize87 = alloca i64, align 8
  store ptr %dctx, ptr %dctx.addr, align 8
  store ptr %dstPtr, ptr %dstPtr.addr, align 8
  store i64 %dstSize, ptr %dstSize.addr, align 8
  store ptr %dstBufferStart, ptr %dstBufferStart.addr, align 8
  store i32 %withinTmp, ptr %withinTmp.addr, align 4
  %0 = load ptr, ptr %dctx.addr, align 8
  %dictSize = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %0, i32 0, i32 12
  %1 = load i64, ptr %dictSize, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dstPtr.addr, align 8
  %3 = load ptr, ptr %dctx.addr, align 8
  %dict = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %3, i32 0, i32 11
  store ptr %2, ptr %dict, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %dctx.addr, align 8
  %dict1 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %4, i32 0, i32 11
  %5 = load ptr, ptr %dict1, align 8
  %6 = load ptr, ptr %dctx.addr, align 8
  %dictSize2 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %6, i32 0, i32 12
  %7 = load i64, ptr %dictSize2, align 8
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 %7
  %8 = load ptr, ptr %dstPtr.addr, align 8
  %cmp3 = icmp eq ptr %add.ptr, %8
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %9 = load i64, ptr %dstSize.addr, align 8
  %10 = load ptr, ptr %dctx.addr, align 8
  %dictSize5 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %10, i32 0, i32 12
  %11 = load i64, ptr %dictSize5, align 8
  %add = add i64 %11, %9
  store i64 %add, ptr %dictSize5, align 8
  br label %return

if.end6:                                          ; preds = %if.end
  %12 = load ptr, ptr %dstPtr.addr, align 8
  %13 = load ptr, ptr %dstBufferStart.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %12 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %13 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %14 = load i64, ptr %dstSize.addr, align 8
  %add7 = add i64 %sub.ptr.sub, %14
  %cmp8 = icmp uge i64 %add7, 65536
  br i1 %cmp8, label %if.then9, label %if.end16

if.then9:                                         ; preds = %if.end6
  %15 = load ptr, ptr %dstBufferStart.addr, align 8
  %16 = load ptr, ptr %dctx.addr, align 8
  %dict10 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %16, i32 0, i32 11
  store ptr %15, ptr %dict10, align 8
  %17 = load ptr, ptr %dstPtr.addr, align 8
  %18 = load ptr, ptr %dstBufferStart.addr, align 8
  %sub.ptr.lhs.cast11 = ptrtoint ptr %17 to i64
  %sub.ptr.rhs.cast12 = ptrtoint ptr %18 to i64
  %sub.ptr.sub13 = sub i64 %sub.ptr.lhs.cast11, %sub.ptr.rhs.cast12
  %19 = load i64, ptr %dstSize.addr, align 8
  %add14 = add i64 %sub.ptr.sub13, %19
  %20 = load ptr, ptr %dctx.addr, align 8
  %dictSize15 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %20, i32 0, i32 12
  store i64 %add14, ptr %dictSize15, align 8
  br label %return

if.end16:                                         ; preds = %if.end6
  %21 = load i32, ptr %withinTmp.addr, align 4
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %land.lhs.true, label %if.end22

land.lhs.true:                                    ; preds = %if.end16
  %22 = load ptr, ptr %dctx.addr, align 8
  %dict17 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %22, i32 0, i32 11
  %23 = load ptr, ptr %dict17, align 8
  %24 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %24, i32 0, i32 10
  %25 = load ptr, ptr %tmpOutBuffer, align 8
  %cmp18 = icmp eq ptr %23, %25
  br i1 %cmp18, label %if.then19, label %if.end22

if.then19:                                        ; preds = %land.lhs.true
  %26 = load i64, ptr %dstSize.addr, align 8
  %27 = load ptr, ptr %dctx.addr, align 8
  %dictSize20 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %27, i32 0, i32 12
  %28 = load i64, ptr %dictSize20, align 8
  %add21 = add i64 %28, %26
  store i64 %add21, ptr %dictSize20, align 8
  br label %return

if.end22:                                         ; preds = %land.lhs.true, %if.end16
  %29 = load i32, ptr %withinTmp.addr, align 4
  %tobool23 = icmp ne i32 %29, 0
  br i1 %tobool23, label %if.then24, label %if.end56

if.then24:                                        ; preds = %if.end22
  %30 = load ptr, ptr %dctx.addr, align 8
  %tmpOut = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %30, i32 0, i32 13
  %31 = load ptr, ptr %tmpOut, align 8
  %32 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer25 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %32, i32 0, i32 10
  %33 = load ptr, ptr %tmpOutBuffer25, align 8
  %sub.ptr.lhs.cast26 = ptrtoint ptr %31 to i64
  %sub.ptr.rhs.cast27 = ptrtoint ptr %33 to i64
  %sub.ptr.sub28 = sub i64 %sub.ptr.lhs.cast26, %sub.ptr.rhs.cast27
  store i64 %sub.ptr.sub28, ptr %preserveSize, align 8
  %34 = load ptr, ptr %dctx.addr, align 8
  %tmpOutSize = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %34, i32 0, i32 14
  %35 = load i64, ptr %tmpOutSize, align 8
  %sub = sub i64 65536, %35
  store i64 %sub, ptr %copySize, align 8
  %36 = load ptr, ptr %dctx.addr, align 8
  %dict29 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %36, i32 0, i32 11
  %37 = load ptr, ptr %dict29, align 8
  %38 = load ptr, ptr %dctx.addr, align 8
  %dictSize30 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %38, i32 0, i32 12
  %39 = load i64, ptr %dictSize30, align 8
  %add.ptr31 = getelementptr inbounds i8, ptr %37, i64 %39
  %40 = load ptr, ptr %dctx.addr, align 8
  %tmpOutStart = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %40, i32 0, i32 15
  %41 = load i64, ptr %tmpOutStart, align 8
  %idx.neg = sub i64 0, %41
  %add.ptr32 = getelementptr inbounds i8, ptr %add.ptr31, i64 %idx.neg
  store ptr %add.ptr32, ptr %oldDictEnd, align 8
  %42 = load ptr, ptr %dctx.addr, align 8
  %tmpOutSize33 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %42, i32 0, i32 14
  %43 = load i64, ptr %tmpOutSize33, align 8
  %cmp34 = icmp ugt i64 %43, 65536
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.then24
  store i64 0, ptr %copySize, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.then24
  %44 = load i64, ptr %copySize, align 8
  %45 = load i64, ptr %preserveSize, align 8
  %cmp37 = icmp ugt i64 %44, %45
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end36
  %46 = load i64, ptr %preserveSize, align 8
  store i64 %46, ptr %copySize, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end36
  %47 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer40 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %47, i32 0, i32 10
  %48 = load ptr, ptr %tmpOutBuffer40, align 8
  %49 = load i64, ptr %preserveSize, align 8
  %add.ptr41 = getelementptr inbounds i8, ptr %48, i64 %49
  %50 = load i64, ptr %copySize, align 8
  %idx.neg42 = sub i64 0, %50
  %add.ptr43 = getelementptr inbounds i8, ptr %add.ptr41, i64 %idx.neg42
  %51 = load ptr, ptr %oldDictEnd, align 8
  %52 = load i64, ptr %copySize, align 8
  %idx.neg44 = sub i64 0, %52
  %add.ptr45 = getelementptr inbounds i8, ptr %51, i64 %idx.neg44
  %53 = load i64, ptr %copySize, align 8
  %54 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer46 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %54, i32 0, i32 10
  %55 = load ptr, ptr %tmpOutBuffer46, align 8
  %56 = load i64, ptr %preserveSize, align 8
  %add.ptr47 = getelementptr inbounds i8, ptr %55, i64 %56
  %57 = load i64, ptr %copySize, align 8
  %idx.neg48 = sub i64 0, %57
  %add.ptr49 = getelementptr inbounds i8, ptr %add.ptr47, i64 %idx.neg48
  %58 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr49, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %add.ptr43, ptr noundef %add.ptr45, i64 noundef %53, i64 noundef %58) #8
  %59 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer50 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %59, i32 0, i32 10
  %60 = load ptr, ptr %tmpOutBuffer50, align 8
  %61 = load ptr, ptr %dctx.addr, align 8
  %dict51 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %61, i32 0, i32 11
  store ptr %60, ptr %dict51, align 8
  %62 = load i64, ptr %preserveSize, align 8
  %63 = load ptr, ptr %dctx.addr, align 8
  %tmpOutStart52 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %63, i32 0, i32 15
  %64 = load i64, ptr %tmpOutStart52, align 8
  %add53 = add i64 %62, %64
  %65 = load i64, ptr %dstSize.addr, align 8
  %add54 = add i64 %add53, %65
  %66 = load ptr, ptr %dctx.addr, align 8
  %dictSize55 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %66, i32 0, i32 12
  store i64 %add54, ptr %dictSize55, align 8
  br label %return

if.end56:                                         ; preds = %if.end22
  %67 = load ptr, ptr %dctx.addr, align 8
  %dict57 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %67, i32 0, i32 11
  %68 = load ptr, ptr %dict57, align 8
  %69 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer58 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %69, i32 0, i32 10
  %70 = load ptr, ptr %tmpOutBuffer58, align 8
  %cmp59 = icmp eq ptr %68, %70
  br i1 %cmp59, label %if.then60, label %if.end86

if.then60:                                        ; preds = %if.end56
  %71 = load ptr, ptr %dctx.addr, align 8
  %dictSize61 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %71, i32 0, i32 12
  %72 = load i64, ptr %dictSize61, align 8
  %73 = load i64, ptr %dstSize.addr, align 8
  %add62 = add i64 %72, %73
  %74 = load ptr, ptr %dctx.addr, align 8
  %maxBufferSize = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %74, i32 0, i32 6
  %75 = load i64, ptr %maxBufferSize, align 8
  %cmp63 = icmp ugt i64 %add62, %75
  br i1 %cmp63, label %if.then64, label %if.end76

if.then64:                                        ; preds = %if.then60
  %76 = load i64, ptr %dstSize.addr, align 8
  %sub66 = sub i64 65536, %76
  store i64 %sub66, ptr %preserveSize65, align 8
  %77 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer67 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %77, i32 0, i32 10
  %78 = load ptr, ptr %tmpOutBuffer67, align 8
  %79 = load ptr, ptr %dctx.addr, align 8
  %dict68 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %79, i32 0, i32 11
  %80 = load ptr, ptr %dict68, align 8
  %81 = load ptr, ptr %dctx.addr, align 8
  %dictSize69 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %81, i32 0, i32 12
  %82 = load i64, ptr %dictSize69, align 8
  %add.ptr70 = getelementptr inbounds i8, ptr %80, i64 %82
  %83 = load i64, ptr %preserveSize65, align 8
  %idx.neg71 = sub i64 0, %83
  %add.ptr72 = getelementptr inbounds i8, ptr %add.ptr70, i64 %idx.neg71
  %84 = load i64, ptr %preserveSize65, align 8
  %85 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer73 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %85, i32 0, i32 10
  %86 = load ptr, ptr %tmpOutBuffer73, align 8
  %87 = call i64 @llvm.objectsize.i64.p0(ptr %86, i1 false, i1 true, i1 false)
  %call74 = call ptr @__memcpy_chk(ptr noundef %78, ptr noundef %add.ptr72, i64 noundef %84, i64 noundef %87) #8
  %88 = load i64, ptr %preserveSize65, align 8
  %89 = load ptr, ptr %dctx.addr, align 8
  %dictSize75 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %89, i32 0, i32 12
  store i64 %88, ptr %dictSize75, align 8
  br label %if.end76

if.end76:                                         ; preds = %if.then64, %if.then60
  %90 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer77 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %90, i32 0, i32 10
  %91 = load ptr, ptr %tmpOutBuffer77, align 8
  %92 = load ptr, ptr %dctx.addr, align 8
  %dictSize78 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %92, i32 0, i32 12
  %93 = load i64, ptr %dictSize78, align 8
  %add.ptr79 = getelementptr inbounds i8, ptr %91, i64 %93
  %94 = load ptr, ptr %dstPtr.addr, align 8
  %95 = load i64, ptr %dstSize.addr, align 8
  %96 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer80 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %96, i32 0, i32 10
  %97 = load ptr, ptr %tmpOutBuffer80, align 8
  %98 = load ptr, ptr %dctx.addr, align 8
  %dictSize81 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %98, i32 0, i32 12
  %99 = load i64, ptr %dictSize81, align 8
  %add.ptr82 = getelementptr inbounds i8, ptr %97, i64 %99
  %100 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr82, i1 false, i1 true, i1 false)
  %call83 = call ptr @__memcpy_chk(ptr noundef %add.ptr79, ptr noundef %94, i64 noundef %95, i64 noundef %100) #8
  %101 = load i64, ptr %dstSize.addr, align 8
  %102 = load ptr, ptr %dctx.addr, align 8
  %dictSize84 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %102, i32 0, i32 12
  %103 = load i64, ptr %dictSize84, align 8
  %add85 = add i64 %103, %101
  store i64 %add85, ptr %dictSize84, align 8
  br label %return

if.end86:                                         ; preds = %if.end56
  %104 = load i64, ptr %dstSize.addr, align 8
  %sub88 = sub i64 65536, %104
  store i64 %sub88, ptr %preserveSize87, align 8
  %105 = load i64, ptr %preserveSize87, align 8
  %106 = load ptr, ptr %dctx.addr, align 8
  %dictSize89 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %106, i32 0, i32 12
  %107 = load i64, ptr %dictSize89, align 8
  %cmp90 = icmp ugt i64 %105, %107
  br i1 %cmp90, label %if.then91, label %if.end93

if.then91:                                        ; preds = %if.end86
  %108 = load ptr, ptr %dctx.addr, align 8
  %dictSize92 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %108, i32 0, i32 12
  %109 = load i64, ptr %dictSize92, align 8
  store i64 %109, ptr %preserveSize87, align 8
  br label %if.end93

if.end93:                                         ; preds = %if.then91, %if.end86
  %110 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer94 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %110, i32 0, i32 10
  %111 = load ptr, ptr %tmpOutBuffer94, align 8
  %112 = load ptr, ptr %dctx.addr, align 8
  %dict95 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %112, i32 0, i32 11
  %113 = load ptr, ptr %dict95, align 8
  %114 = load ptr, ptr %dctx.addr, align 8
  %dictSize96 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %114, i32 0, i32 12
  %115 = load i64, ptr %dictSize96, align 8
  %add.ptr97 = getelementptr inbounds i8, ptr %113, i64 %115
  %116 = load i64, ptr %preserveSize87, align 8
  %idx.neg98 = sub i64 0, %116
  %add.ptr99 = getelementptr inbounds i8, ptr %add.ptr97, i64 %idx.neg98
  %117 = load i64, ptr %preserveSize87, align 8
  %118 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer100 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %118, i32 0, i32 10
  %119 = load ptr, ptr %tmpOutBuffer100, align 8
  %120 = call i64 @llvm.objectsize.i64.p0(ptr %119, i1 false, i1 true, i1 false)
  %call101 = call ptr @__memcpy_chk(ptr noundef %111, ptr noundef %add.ptr99, i64 noundef %117, i64 noundef %120) #8
  %121 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer102 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %121, i32 0, i32 10
  %122 = load ptr, ptr %tmpOutBuffer102, align 8
  %123 = load i64, ptr %preserveSize87, align 8
  %add.ptr103 = getelementptr inbounds i8, ptr %122, i64 %123
  %124 = load ptr, ptr %dstPtr.addr, align 8
  %125 = load i64, ptr %dstSize.addr, align 8
  %126 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer104 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %126, i32 0, i32 10
  %127 = load ptr, ptr %tmpOutBuffer104, align 8
  %128 = load i64, ptr %preserveSize87, align 8
  %add.ptr105 = getelementptr inbounds i8, ptr %127, i64 %128
  %129 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr105, i1 false, i1 true, i1 false)
  %call106 = call ptr @__memcpy_chk(ptr noundef %add.ptr103, ptr noundef %124, i64 noundef %125, i64 noundef %129) #8
  %130 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer107 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %130, i32 0, i32 10
  %131 = load ptr, ptr %tmpOutBuffer107, align 8
  %132 = load ptr, ptr %dctx.addr, align 8
  %dict108 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %132, i32 0, i32 11
  store ptr %131, ptr %dict108, align 8
  %133 = load i64, ptr %preserveSize87, align 8
  %134 = load i64, ptr %dstSize.addr, align 8
  %add109 = add i64 %133, %134
  %135 = load ptr, ptr %dctx.addr, align 8
  %dictSize110 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %135, i32 0, i32 12
  store i64 %add109, ptr %dictSize110, align 8
  br label %return

return:                                           ; preds = %if.end93, %if.end76, %if.end39, %if.then19, %if.then9, %if.then4
  ret void
}

declare i32 @XXH32(ptr noundef, i64 noundef, i32 noundef) #3

declare i32 @LZ4_decompress_safe_usingDict(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind ssp uwtable
define i64 @LZ4F_decompress_usingDict(ptr noundef %dctx, ptr noundef %dstBuffer, ptr noundef %dstSizePtr, ptr noundef %srcBuffer, ptr noundef %srcSizePtr, ptr noundef %dict, i64 noundef %dictSize, ptr noundef %decompressOptionsPtr) #0 {
entry:
  %dctx.addr = alloca ptr, align 8
  %dstBuffer.addr = alloca ptr, align 8
  %dstSizePtr.addr = alloca ptr, align 8
  %srcBuffer.addr = alloca ptr, align 8
  %srcSizePtr.addr = alloca ptr, align 8
  %dict.addr = alloca ptr, align 8
  %dictSize.addr = alloca i64, align 8
  %decompressOptionsPtr.addr = alloca ptr, align 8
  store ptr %dctx, ptr %dctx.addr, align 8
  store ptr %dstBuffer, ptr %dstBuffer.addr, align 8
  store ptr %dstSizePtr, ptr %dstSizePtr.addr, align 8
  store ptr %srcBuffer, ptr %srcBuffer.addr, align 8
  store ptr %srcSizePtr, ptr %srcSizePtr.addr, align 8
  store ptr %dict, ptr %dict.addr, align 8
  store i64 %dictSize, ptr %dictSize.addr, align 8
  store ptr %decompressOptionsPtr, ptr %decompressOptionsPtr.addr, align 8
  %0 = load ptr, ptr %dctx.addr, align 8
  %dStage = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %0, i32 0, i32 3
  %1 = load i32, ptr %dStage, align 4
  %cmp = icmp ule i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dict.addr, align 8
  %3 = load ptr, ptr %dctx.addr, align 8
  %dict1 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %3, i32 0, i32 11
  store ptr %2, ptr %dict1, align 8
  %4 = load i64, ptr %dictSize.addr, align 8
  %5 = load ptr, ptr %dctx.addr, align 8
  %dictSize2 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %5, i32 0, i32 12
  store i64 %4, ptr %dictSize2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %dctx.addr, align 8
  %7 = load ptr, ptr %dstBuffer.addr, align 8
  %8 = load ptr, ptr %dstSizePtr.addr, align 8
  %9 = load ptr, ptr %srcBuffer.addr, align 8
  %10 = load ptr, ptr %srcSizePtr.addr, align 8
  %11 = load ptr, ptr %decompressOptionsPtr.addr, align 8
  %call = call i64 @LZ4F_decompress(ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11)
  ret i64 %call
}

declare void @free(ptr noundef) #3

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #6

; Function Attrs: allocsize(0,1)
declare ptr @calloc(i64 noundef, i64 noundef) #7

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #4

declare i32 @LZ4_sizeofState() #3

declare i32 @LZ4_sizeofStateHC() #3

; Function Attrs: nounwind ssp uwtable
define internal void @LZ4F_initStream(ptr noundef %ctx, ptr noundef %cdict, i32 noundef %level, i32 noundef %blockMode) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %cdict.addr = alloca ptr, align 8
  %level.addr = alloca i32, align 4
  %blockMode.addr = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8
  store ptr %cdict, ptr %cdict.addr, align 8
  store i32 %level, ptr %level.addr, align 4
  store i32 %blockMode, ptr %blockMode.addr, align 4
  %0 = load i32, ptr %level.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cdict.addr, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %2 = load i32, ptr %blockMode.addr, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %lor.lhs.false, %if.then
  %3 = load ptr, ptr %ctx.addr, align 8
  call void @LZ4_resetStream_fast(ptr noundef %3)
  %4 = load ptr, ptr %cdict.addr, align 8
  %tobool3 = icmp ne ptr %4, null
  br i1 %tobool3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then2
  %5 = load ptr, ptr %ctx.addr, align 8
  %6 = load ptr, ptr %cdict.addr, align 8
  %fastCtx = getelementptr inbounds %struct.LZ4F_CDict_s, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %fastCtx, align 8
  call void @LZ4_attach_dictionary(ptr noundef %5, ptr noundef %7)
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then2
  br label %if.end5

if.end5:                                          ; preds = %if.end, %lor.lhs.false
  br label %if.end9

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %ctx.addr, align 8
  %9 = load i32, ptr %level.addr, align 4
  call void @LZ4_resetStreamHC_fast(ptr noundef %8, i32 noundef %9)
  %10 = load ptr, ptr %cdict.addr, align 8
  %tobool6 = icmp ne ptr %10, null
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.else
  %11 = load ptr, ptr %ctx.addr, align 8
  %12 = load ptr, ptr %cdict.addr, align 8
  %HCCtx = getelementptr inbounds %struct.LZ4F_CDict_s, ptr %12, i32 0, i32 3
  %13 = load ptr, ptr %HCCtx, align 8
  call void @LZ4_attach_HC_dictionary(ptr noundef %11, ptr noundef %13)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.else
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.end5
  ret void
}

declare void @LZ4_favorDecompressionSpeed(ptr noundef, i32 noundef) #3

declare i32 @LZ4_loadDict(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind ssp uwtable
define internal void @LZ4F_writeLE64(ptr noundef %dst, i64 noundef %value64) #0 {
entry:
  %dst.addr = alloca ptr, align 8
  %value64.addr = alloca i64, align 8
  %dstPtr = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8
  store i64 %value64, ptr %value64.addr, align 8
  %0 = load ptr, ptr %dst.addr, align 8
  store ptr %0, ptr %dstPtr, align 8
  %1 = load i64, ptr %value64.addr, align 8
  %conv = trunc i64 %1 to i8
  %2 = load ptr, ptr %dstPtr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 0
  store i8 %conv, ptr %arrayidx, align 1
  %3 = load i64, ptr %value64.addr, align 8
  %shr = lshr i64 %3, 8
  %conv1 = trunc i64 %shr to i8
  %4 = load ptr, ptr %dstPtr, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %4, i64 1
  store i8 %conv1, ptr %arrayidx2, align 1
  %5 = load i64, ptr %value64.addr, align 8
  %shr3 = lshr i64 %5, 16
  %conv4 = trunc i64 %shr3 to i8
  %6 = load ptr, ptr %dstPtr, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %6, i64 2
  store i8 %conv4, ptr %arrayidx5, align 1
  %7 = load i64, ptr %value64.addr, align 8
  %shr6 = lshr i64 %7, 24
  %conv7 = trunc i64 %shr6 to i8
  %8 = load ptr, ptr %dstPtr, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %8, i64 3
  store i8 %conv7, ptr %arrayidx8, align 1
  %9 = load i64, ptr %value64.addr, align 8
  %shr9 = lshr i64 %9, 32
  %conv10 = trunc i64 %shr9 to i8
  %10 = load ptr, ptr %dstPtr, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %10, i64 4
  store i8 %conv10, ptr %arrayidx11, align 1
  %11 = load i64, ptr %value64.addr, align 8
  %shr12 = lshr i64 %11, 40
  %conv13 = trunc i64 %shr12 to i8
  %12 = load ptr, ptr %dstPtr, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %12, i64 5
  store i8 %conv13, ptr %arrayidx14, align 1
  %13 = load i64, ptr %value64.addr, align 8
  %shr15 = lshr i64 %13, 48
  %conv16 = trunc i64 %shr15 to i8
  %14 = load ptr, ptr %dstPtr, align 8
  %arrayidx17 = getelementptr inbounds i8, ptr %14, i64 6
  store i8 %conv16, ptr %arrayidx17, align 1
  %15 = load i64, ptr %value64.addr, align 8
  %shr18 = lshr i64 %15, 56
  %conv19 = trunc i64 %shr18 to i8
  %16 = load ptr, ptr %dstPtr, align 8
  %arrayidx20 = getelementptr inbounds i8, ptr %16, i64 7
  store i8 %conv19, ptr %arrayidx20, align 1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @LZ4F_headerChecksum(ptr noundef %header, i64 noundef %length) #0 {
entry:
  %header.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %xxh = alloca i32, align 4
  store ptr %header, ptr %header.addr, align 8
  store i64 %length, ptr %length.addr, align 8
  %0 = load ptr, ptr %header.addr, align 8
  %1 = load i64, ptr %length.addr, align 8
  %call = call i32 @XXH32(ptr noundef %0, i64 noundef %1, i32 noundef 0)
  store i32 %call, ptr %xxh, align 4
  %2 = load i32, ptr %xxh, align 4
  %shr = lshr i32 %2, 8
  %conv = trunc i32 %shr to i8
  ret i8 %conv
}

declare void @LZ4_resetStream_fast(ptr noundef) #3

declare void @LZ4_attach_dictionary(ptr noundef, ptr noundef) #3

declare void @LZ4_resetStreamHC_fast(ptr noundef, i32 noundef) #3

declare void @LZ4_attach_HC_dictionary(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind ssp uwtable
define internal i32 @LZ4F_doNotCompressBlock(ptr noundef %ctx, ptr noundef %src, ptr noundef %dst, i32 noundef %srcSize, i32 noundef %dstCapacity, i32 noundef %level, ptr noundef %cdict) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %srcSize.addr = alloca i32, align 4
  %dstCapacity.addr = alloca i32, align 4
  %level.addr = alloca i32, align 4
  %cdict.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  store ptr %src, ptr %src.addr, align 8
  store ptr %dst, ptr %dst.addr, align 8
  store i32 %srcSize, ptr %srcSize.addr, align 4
  store i32 %dstCapacity, ptr %dstCapacity.addr, align 4
  store i32 %level, ptr %level.addr, align 4
  store ptr %cdict, ptr %cdict.addr, align 8
  %0 = load ptr, ptr %ctx.addr, align 8
  %1 = load ptr, ptr %src.addr, align 8
  %2 = load ptr, ptr %dst.addr, align 8
  %3 = load i32, ptr %srcSize.addr, align 4
  %4 = load i32, ptr %dstCapacity.addr, align 4
  %5 = load i32, ptr %level.addr, align 4
  %6 = load ptr, ptr %cdict.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @LZ4F_compressBlock(ptr noundef %ctx, ptr noundef %src, ptr noundef %dst, i32 noundef %srcSize, i32 noundef %dstCapacity, i32 noundef %level, ptr noundef %cdict) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %srcSize.addr = alloca i32, align 4
  %dstCapacity.addr = alloca i32, align 4
  %level.addr = alloca i32, align 4
  %cdict.addr = alloca ptr, align 8
  %acceleration = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8
  store ptr %src, ptr %src.addr, align 8
  store ptr %dst, ptr %dst.addr, align 8
  store i32 %srcSize, ptr %srcSize.addr, align 4
  store i32 %dstCapacity, ptr %dstCapacity.addr, align 4
  store i32 %level, ptr %level.addr, align 4
  store ptr %cdict, ptr %cdict.addr, align 8
  %0 = load i32, ptr %level.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, ptr %level.addr, align 4
  %sub = sub nsw i32 0, %1
  %add = add nsw i32 %sub, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ 1, %cond.false ]
  store i32 %cond, ptr %acceleration, align 4
  %2 = load ptr, ptr %ctx.addr, align 8
  %3 = load ptr, ptr %cdict.addr, align 8
  %4 = load i32, ptr %level.addr, align 4
  call void @LZ4F_initStream(ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 1)
  %5 = load ptr, ptr %cdict.addr, align 8
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %6 = load ptr, ptr %ctx.addr, align 8
  %7 = load ptr, ptr %src.addr, align 8
  %8 = load ptr, ptr %dst.addr, align 8
  %9 = load i32, ptr %srcSize.addr, align 4
  %10 = load i32, ptr %dstCapacity.addr, align 4
  %11 = load i32, ptr %acceleration, align 4
  %call = call i32 @LZ4_compress_fast_continue(ptr noundef %6, ptr noundef %7, ptr noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11)
  store i32 %call, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %cond.end
  %12 = load ptr, ptr %ctx.addr, align 8
  %13 = load ptr, ptr %src.addr, align 8
  %14 = load ptr, ptr %dst.addr, align 8
  %15 = load i32, ptr %srcSize.addr, align 4
  %16 = load i32, ptr %dstCapacity.addr, align 4
  %17 = load i32, ptr %acceleration, align 4
  %call1 = call i32 @LZ4_compress_fast_extState_fastReset(ptr noundef %12, ptr noundef %13, ptr noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %17)
  store i32 %call1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %18 = load i32, ptr %retval, align 4
  ret i32 %18
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @LZ4F_compressBlock_continue(ptr noundef %ctx, ptr noundef %src, ptr noundef %dst, i32 noundef %srcSize, i32 noundef %dstCapacity, i32 noundef %level, ptr noundef %cdict) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %srcSize.addr = alloca i32, align 4
  %dstCapacity.addr = alloca i32, align 4
  %level.addr = alloca i32, align 4
  %cdict.addr = alloca ptr, align 8
  %acceleration = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8
  store ptr %src, ptr %src.addr, align 8
  store ptr %dst, ptr %dst.addr, align 8
  store i32 %srcSize, ptr %srcSize.addr, align 4
  store i32 %dstCapacity, ptr %dstCapacity.addr, align 4
  store i32 %level, ptr %level.addr, align 4
  store ptr %cdict, ptr %cdict.addr, align 8
  %0 = load i32, ptr %level.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, ptr %level.addr, align 4
  %sub = sub nsw i32 0, %1
  %add = add nsw i32 %sub, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ 1, %cond.false ]
  store i32 %cond, ptr %acceleration, align 4
  %2 = load ptr, ptr %cdict.addr, align 8
  %3 = load ptr, ptr %ctx.addr, align 8
  %4 = load ptr, ptr %src.addr, align 8
  %5 = load ptr, ptr %dst.addr, align 8
  %6 = load i32, ptr %srcSize.addr, align 4
  %7 = load i32, ptr %dstCapacity.addr, align 4
  %8 = load i32, ptr %acceleration, align 4
  %call = call i32 @LZ4_compress_fast_continue(ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8)
  ret i32 %call
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @LZ4F_compressBlockHC(ptr noundef %ctx, ptr noundef %src, ptr noundef %dst, i32 noundef %srcSize, i32 noundef %dstCapacity, i32 noundef %level, ptr noundef %cdict) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %srcSize.addr = alloca i32, align 4
  %dstCapacity.addr = alloca i32, align 4
  %level.addr = alloca i32, align 4
  %cdict.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  store ptr %src, ptr %src.addr, align 8
  store ptr %dst, ptr %dst.addr, align 8
  store i32 %srcSize, ptr %srcSize.addr, align 4
  store i32 %dstCapacity, ptr %dstCapacity.addr, align 4
  store i32 %level, ptr %level.addr, align 4
  store ptr %cdict, ptr %cdict.addr, align 8
  %0 = load ptr, ptr %ctx.addr, align 8
  %1 = load ptr, ptr %cdict.addr, align 8
  %2 = load i32, ptr %level.addr, align 4
  call void @LZ4F_initStream(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 1)
  %3 = load ptr, ptr %cdict.addr, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %ctx.addr, align 8
  %5 = load ptr, ptr %src.addr, align 8
  %6 = load ptr, ptr %dst.addr, align 8
  %7 = load i32, ptr %srcSize.addr, align 4
  %8 = load i32, ptr %dstCapacity.addr, align 4
  %call = call i32 @LZ4_compress_HC_continue(ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr %ctx.addr, align 8
  %10 = load ptr, ptr %src.addr, align 8
  %11 = load ptr, ptr %dst.addr, align 8
  %12 = load i32, ptr %srcSize.addr, align 4
  %13 = load i32, ptr %dstCapacity.addr, align 4
  %14 = load i32, ptr %level.addr, align 4
  %call1 = call i32 @LZ4_compress_HC_extStateHC_fastReset(ptr noundef %9, ptr noundef %10, ptr noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14)
  store i32 %call1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @LZ4F_compressBlockHC_continue(ptr noundef %ctx, ptr noundef %src, ptr noundef %dst, i32 noundef %srcSize, i32 noundef %dstCapacity, i32 noundef %level, ptr noundef %cdict) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %srcSize.addr = alloca i32, align 4
  %dstCapacity.addr = alloca i32, align 4
  %level.addr = alloca i32, align 4
  %cdict.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  store ptr %src, ptr %src.addr, align 8
  store ptr %dst, ptr %dst.addr, align 8
  store i32 %srcSize, ptr %srcSize.addr, align 4
  store i32 %dstCapacity, ptr %dstCapacity.addr, align 4
  store i32 %level, ptr %level.addr, align 4
  store ptr %cdict, ptr %cdict.addr, align 8
  %0 = load i32, ptr %level.addr, align 4
  %1 = load ptr, ptr %cdict.addr, align 8
  %2 = load ptr, ptr %ctx.addr, align 8
  %3 = load ptr, ptr %src.addr, align 8
  %4 = load ptr, ptr %dst.addr, align 8
  %5 = load i32, ptr %srcSize.addr, align 4
  %6 = load i32, ptr %dstCapacity.addr, align 4
  %call = call i32 @LZ4_compress_HC_continue(ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6)
  ret i32 %call
}

declare i32 @LZ4_compress_fast_continue(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

declare i32 @LZ4_compress_fast_extState_fastReset(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

declare i32 @LZ4_compress_HC_continue(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

declare i32 @LZ4_compress_HC_extStateHC_fastReset(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

declare i32 @LZ4_saveDict(ptr noundef, ptr noundef, i32 noundef) #3

declare i32 @LZ4_saveDictHC(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind ssp uwtable
define internal i64 @LZ4F_readLE64(ptr noundef %src) #0 {
entry:
  %src.addr = alloca ptr, align 8
  %srcPtr = alloca ptr, align 8
  %value64 = alloca i64, align 8
  store ptr %src, ptr %src.addr, align 8
  %0 = load ptr, ptr %src.addr, align 8
  store ptr %0, ptr %srcPtr, align 8
  %1 = load ptr, ptr %srcPtr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i64
  store i64 %conv, ptr %value64, align 8
  %3 = load ptr, ptr %srcPtr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %3, i64 1
  %4 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %4 to i64
  %shl = shl i64 %conv2, 8
  %5 = load i64, ptr %value64, align 8
  %or = or i64 %5, %shl
  store i64 %or, ptr %value64, align 8
  %6 = load ptr, ptr %srcPtr, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %6, i64 2
  %7 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %7 to i64
  %shl5 = shl i64 %conv4, 16
  %8 = load i64, ptr %value64, align 8
  %or6 = or i64 %8, %shl5
  store i64 %or6, ptr %value64, align 8
  %9 = load ptr, ptr %srcPtr, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %9, i64 3
  %10 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %10 to i64
  %shl9 = shl i64 %conv8, 24
  %11 = load i64, ptr %value64, align 8
  %or10 = or i64 %11, %shl9
  store i64 %or10, ptr %value64, align 8
  %12 = load ptr, ptr %srcPtr, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %12, i64 4
  %13 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %13 to i64
  %shl13 = shl i64 %conv12, 32
  %14 = load i64, ptr %value64, align 8
  %or14 = or i64 %14, %shl13
  store i64 %or14, ptr %value64, align 8
  %15 = load ptr, ptr %srcPtr, align 8
  %arrayidx15 = getelementptr inbounds i8, ptr %15, i64 5
  %16 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %16 to i64
  %shl17 = shl i64 %conv16, 40
  %17 = load i64, ptr %value64, align 8
  %or18 = or i64 %17, %shl17
  store i64 %or18, ptr %value64, align 8
  %18 = load ptr, ptr %srcPtr, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %18, i64 6
  %19 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %19 to i64
  %shl21 = shl i64 %conv20, 48
  %20 = load i64, ptr %value64, align 8
  %or22 = or i64 %20, %shl21
  store i64 %or22, ptr %value64, align 8
  %21 = load ptr, ptr %srcPtr, align 8
  %arrayidx23 = getelementptr inbounds i8, ptr %21, i64 7
  %22 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %22 to i64
  %shl25 = shl i64 %conv24, 56
  %23 = load i64, ptr %value64, align 8
  %or26 = or i64 %23, %shl25
  store i64 %or26, ptr %value64, align 8
  %24 = load i64, ptr %value64, align 8
  ret i64 %24
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly nocallback nofree nounwind willreturn }
attributes #2 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { allocsize(0,1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #8 = { nounwind }
attributes #9 = { allocsize(0) }
attributes #10 = { allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define internal i64 @pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_0(i32 noundef %code)  alwaysinline#0 {
entry:
  %code.addr = alloca i32, align 4
  store i32 %code, ptr %code.addr, align 4
  %0 = load i32, ptr %code.addr, align 4
  %conv = zext i32 %0 to i64
  %sub = sub nsw i64 0, %conv
  ret i64 %sub
}

define internal i64 @pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_1(i32 noundef %code)  alwaysinline#0 {
entry:
  %code.addr = alloca i32, align 4
  store i32 %code, ptr %code.addr, align 4
  %0 = load i32, ptr %code.addr, align 4
  %conv = zext i32 %0 to i64
  %sub = sub nsw i64 0, %conv
  ret i64 %sub
}

define internal void @pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_2(ptr noundef %dst, i32 noundef %value32)  alwaysinline#0 {
entry:
  %dst.addr = alloca ptr, align 8
  %value32.addr = alloca i32, align 4
  %dstPtr = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8
  store i32 %value32, ptr %value32.addr, align 4
  %0 = load ptr, ptr %dst.addr, align 8
  store ptr %0, ptr %dstPtr, align 8
  %1 = load i32, ptr %value32.addr, align 4
  %conv = trunc i32 %1 to i8
  %2 = load ptr, ptr %dstPtr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 0
  store i8 %conv, ptr %arrayidx, align 1
  %3 = load i32, ptr %value32.addr, align 4
  %shr = lshr i32 %3, 8
  %conv1 = trunc i32 %shr to i8
  %4 = load ptr, ptr %dstPtr, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %4, i64 1
  store i8 %conv1, ptr %arrayidx2, align 1
  %5 = load i32, ptr %value32.addr, align 4
  %shr3 = lshr i32 %5, 16
  %conv4 = trunc i32 %shr3 to i8
  %6 = load ptr, ptr %dstPtr, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %6, i64 2
  store i8 %conv4, ptr %arrayidx5, align 1
  %7 = load i32, ptr %value32.addr, align 4
  %shr6 = lshr i32 %7, 24
  %conv7 = trunc i32 %shr6 to i8
  %8 = load ptr, ptr %dstPtr, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %8, i64 3
  store i8 %conv7, ptr %arrayidx8, align 1
  ret void
}

define internal i64 @pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_3(i32 noundef %code)  alwaysinline#0 {
entry:
  %code.addr = alloca i32, align 4
  store i32 %code, ptr %code.addr, align 4
  %0 = load i32, ptr %code.addr, align 4
  %conv = zext i32 %0 to i64
  %sub = sub nsw i64 0, %conv
  ret i64 %sub
}

define internal i64 @pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_4(i32 noundef %code)  alwaysinline#0 {
entry:
  %code.addr = alloca i32, align 4
  store i32 %code, ptr %code.addr, align 4
  %0 = load i32, ptr %code.addr, align 4
  %conv = zext i32 %0 to i64
  %sub = sub nsw i64 0, %conv
  ret i64 %sub
}

define internal i64 @pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_5(i32 noundef %code)  alwaysinline#0 {
entry:
  %code.addr = alloca i32, align 4
  store i32 %code, ptr %code.addr, align 4
  %0 = load i32, ptr %code.addr, align 4
  %conv = zext i32 %0 to i64
  %sub = sub nsw i64 0, %conv
  ret i64 %sub
}

define internal i64 @pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_6(i32 noundef %code)  alwaysinline#0 {
entry:
  %code.addr = alloca i32, align 4
  store i32 %code, ptr %code.addr, align 4
  %0 = load i32, ptr %code.addr, align 4
  %conv = zext i32 %0 to i64
  %sub = sub nsw i64 0, %conv
  ret i64 %sub
}

define internal i64 @pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_7(i32 noundef %code)  alwaysinline#0 {
entry:
  %code.addr = alloca i32, align 4
  store i32 %code, ptr %code.addr, align 4
  %0 = load i32, ptr %code.addr, align 4
  %conv = zext i32 %0 to i64
  %sub = sub nsw i64 0, %conv
  ret i64 %sub
}

define internal ptr @pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_8(i64 noundef %s, ptr noundef %cmem)  alwaysinline#0 {
entry:
  %retval = alloca ptr, align 8
  %s.addr = alloca i64, align 8
  store i64 %s, ptr %s.addr, align 8
  %customAlloc = getelementptr inbounds %struct.LZ4F_CustomMem, ptr %cmem, i32 0, i32 0
  %0 = load ptr, ptr %customAlloc, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %customAlloc1 = getelementptr inbounds %struct.LZ4F_CustomMem, ptr %cmem, i32 0, i32 0
  %1 = load ptr, ptr %customAlloc1, align 8
  %opaqueState = getelementptr inbounds %struct.LZ4F_CustomMem, ptr %cmem, i32 0, i32 3
  %2 = load ptr, ptr %opaqueState, align 8
  %3 = load i64, ptr %s.addr, align 8
  %call = call ptr %1(ptr noundef %2, i64 noundef %3)
  store ptr %call, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i64, ptr %s.addr, align 8
  %call2 = call ptr @malloc(i64 noundef %4) #9
  store ptr %call2, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8
  ret ptr %5
}

define internal ptr @pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_9(i64 noundef %s, ptr noundef %cmem)  alwaysinline#0 {
entry:
  %retval = alloca ptr, align 8
  %s.addr = alloca i64, align 8
  store i64 %s, ptr %s.addr, align 8
  %customAlloc = getelementptr inbounds %struct.LZ4F_CustomMem, ptr %cmem, i32 0, i32 0
  %0 = load ptr, ptr %customAlloc, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %customAlloc1 = getelementptr inbounds %struct.LZ4F_CustomMem, ptr %cmem, i32 0, i32 0
  %1 = load ptr, ptr %customAlloc1, align 8
  %opaqueState = getelementptr inbounds %struct.LZ4F_CustomMem, ptr %cmem, i32 0, i32 3
  %2 = load ptr, ptr %opaqueState, align 8
  %3 = load i64, ptr %s.addr, align 8
  %call = call ptr %1(ptr noundef %2, i64 noundef %3)
  store ptr %call, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i64, ptr %s.addr, align 8
  %call2 = call ptr @malloc(i64 noundef %4) #9
  store ptr %call2, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8
  ret ptr %5
}

define internal i64 @pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_10(i32 noundef %code)  alwaysinline#0 {
entry:
  %code.addr = alloca i32, align 4
  store i32 %code, ptr %code.addr, align 4
  %0 = load i32, ptr %code.addr, align 4
  %conv = zext i32 %0 to i64
  %sub = sub nsw i64 0, %conv
  ret i64 %sub
}

define internal i64 @pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_11(i32 noundef %code)  alwaysinline#0 {
entry:
  %code.addr = alloca i32, align 4
  store i32 %code, ptr %code.addr, align 4
  %0 = load i32, ptr %code.addr, align 4
  %conv = zext i32 %0 to i64
  %sub = sub nsw i64 0, %conv
  ret i64 %sub
}

define internal void @pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_12(ptr noundef %ctx, ptr noundef %cdict, i32 noundef %level, i32 noundef %blockMode)  alwaysinline#0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %cdict.addr = alloca ptr, align 8
  %level.addr = alloca i32, align 4
  %blockMode.addr = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8
  store ptr %cdict, ptr %cdict.addr, align 8
  store i32 %level, ptr %level.addr, align 4
  store i32 %blockMode, ptr %blockMode.addr, align 4
  %0 = load i32, ptr %level.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cdict.addr, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %2 = load i32, ptr %blockMode.addr, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %lor.lhs.false, %if.then
  %3 = load ptr, ptr %ctx.addr, align 8
  call void @LZ4_resetStream_fast(ptr noundef %3)
  %4 = load ptr, ptr %cdict.addr, align 8
  %tobool3 = icmp ne ptr %4, null
  br i1 %tobool3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then2
  %5 = load ptr, ptr %ctx.addr, align 8
  %6 = load ptr, ptr %cdict.addr, align 8
  %fastCtx = getelementptr inbounds %struct.LZ4F_CDict_s, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %fastCtx, align 8
  call void @LZ4_attach_dictionary(ptr noundef %5, ptr noundef %7)
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then2
  br label %if.end5

if.end5:                                          ; preds = %if.end, %lor.lhs.false
  br label %if.end9

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %ctx.addr, align 8
  %9 = load i32, ptr %level.addr, align 4
  call void @LZ4_resetStreamHC_fast(ptr noundef %8, i32 noundef %9)
  %10 = load ptr, ptr %cdict.addr, align 8
  %tobool6 = icmp ne ptr %10, null
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.else
  %11 = load ptr, ptr %ctx.addr, align 8
  %12 = load ptr, ptr %cdict.addr, align 8
  %HCCtx = getelementptr inbounds %struct.LZ4F_CDict_s, ptr %12, i32 0, i32 3
  %13 = load ptr, ptr %HCCtx, align 8
  call void @LZ4_attach_HC_dictionary(ptr noundef %11, ptr noundef %13)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.else
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.end5
  ret void
}

define internal i64 @pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_13(i32 noundef %code)  alwaysinline#0 {
entry:
  %code.addr = alloca i32, align 4
  store i32 %code, ptr %code.addr, align 4
  %0 = load i32, ptr %code.addr, align 4
  %conv = zext i32 %0 to i64
  %sub = sub nsw i64 0, %conv
  ret i64 %sub
}

define internal void @pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_14(ptr noundef %dst, i32 noundef %value32)  alwaysinline#0 {
entry:
  %dst.addr = alloca ptr, align 8
  %value32.addr = alloca i32, align 4
  %dstPtr = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8
  store i32 %value32, ptr %value32.addr, align 4
  %0 = load ptr, ptr %dst.addr, align 8
  store ptr %0, ptr %dstPtr, align 8
  %1 = load i32, ptr %value32.addr, align 4
  %conv = trunc i32 %1 to i8
  %2 = load ptr, ptr %dstPtr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 0
  store i8 %conv, ptr %arrayidx, align 1
  %3 = load i32, ptr %value32.addr, align 4
  %shr = lshr i32 %3, 8
  %conv1 = trunc i32 %shr to i8
  %4 = load ptr, ptr %dstPtr, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %4, i64 1
  store i8 %conv1, ptr %arrayidx2, align 1
  %5 = load i32, ptr %value32.addr, align 4
  %shr3 = lshr i32 %5, 16
  %conv4 = trunc i32 %shr3 to i8
  %6 = load ptr, ptr %dstPtr, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %6, i64 2
  store i8 %conv4, ptr %arrayidx5, align 1
  %7 = load i32, ptr %value32.addr, align 4
  %shr6 = lshr i32 %7, 24
  %conv7 = trunc i32 %shr6 to i8
  %8 = load ptr, ptr %dstPtr, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %8, i64 3
  store i8 %conv7, ptr %arrayidx8, align 1
  ret void
}

define internal i64 @pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_15(i32 noundef %code)  alwaysinline#0 {
entry:
  %code.addr = alloca i32, align 4
  store i32 %code, ptr %code.addr, align 4
  %0 = load i32, ptr %code.addr, align 4
  %conv = zext i32 %0 to i64
  %sub = sub nsw i64 0, %conv
  ret i64 %sub
}

define internal i64 @pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_16(i32 noundef %code)  alwaysinline#0 {
entry:
  %code.addr = alloca i32, align 4
  store i32 %code, ptr %code.addr, align 4
  %0 = load i32, ptr %code.addr, align 4
  %conv = zext i32 %0 to i64
  %sub = sub nsw i64 0, %conv
  ret i64 %sub
}

define internal i64 @pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_17(i32 noundef %code)  alwaysinline#0 {
entry:
  %code.addr = alloca i32, align 4
  store i32 %code, ptr %code.addr, align 4
  %0 = load i32, ptr %code.addr, align 4
  %conv = zext i32 %0 to i64
  %sub = sub nsw i64 0, %conv
  ret i64 %sub
}

define internal i64 @pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_18(i32 noundef %code)  alwaysinline#0 {
entry:
  %code.addr = alloca i32, align 4
  store i32 %code, ptr %code.addr, align 4
  %0 = load i32, ptr %code.addr, align 4
  %conv = zext i32 %0 to i64
  %sub = sub nsw i64 0, %conv
  ret i64 %sub
}

define internal i64 @pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_19(i32 noundef %code)  alwaysinline#0 {
entry:
  %code.addr = alloca i32, align 4
  store i32 %code, ptr %code.addr, align 4
  %0 = load i32, ptr %code.addr, align 4
  %conv = zext i32 %0 to i64
  %sub = sub nsw i64 0, %conv
  ret i64 %sub
}

define internal i64 @pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_20(i32 noundef %code)  alwaysinline#0 {
entry:
  %code.addr = alloca i32, align 4
  store i32 %code, ptr %code.addr, align 4
  %0 = load i32, ptr %code.addr, align 4
  %conv = zext i32 %0 to i64
  %sub = sub nsw i64 0, %conv
  ret i64 %sub
}

define internal i64 @pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_21(i32 noundef %code)  alwaysinline#0 {
entry:
  %code.addr = alloca i32, align 4
  store i32 %code, ptr %code.addr, align 4
  %0 = load i32, ptr %code.addr, align 4
  %conv = zext i32 %0 to i64
  %sub = sub nsw i64 0, %conv
  ret i64 %sub
}

define internal i64 @pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_22(i32 noundef %code)  alwaysinline#0 {
entry:
  %code.addr = alloca i32, align 4
  store i32 %code, ptr %code.addr, align 4
  %0 = load i32, ptr %code.addr, align 4
  %conv = zext i32 %0 to i64
  %sub = sub nsw i64 0, %conv
  ret i64 %sub
}

define internal i64 @pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_23(i32 noundef %code)  alwaysinline#0 {
entry:
  %code.addr = alloca i32, align 4
  store i32 %code, ptr %code.addr, align 4
  %0 = load i32, ptr %code.addr, align 4
  %conv = zext i32 %0 to i64
  %sub = sub nsw i64 0, %conv
  ret i64 %sub
}

define internal i64 @pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_24(i32 noundef %code)  alwaysinline#0 {
entry:
  %code.addr = alloca i32, align 4
  store i32 %code, ptr %code.addr, align 4
  %0 = load i32, ptr %code.addr, align 4
  %conv = zext i32 %0 to i64
  %sub = sub nsw i64 0, %conv
  ret i64 %sub
}

define internal i64 @pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_25(i32 noundef %code)  alwaysinline#0 {
entry:
  %code.addr = alloca i32, align 4
  store i32 %code, ptr %code.addr, align 4
  %0 = load i32, ptr %code.addr, align 4
  %conv = zext i32 %0 to i64
  %sub = sub nsw i64 0, %conv
  ret i64 %sub
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
