; ModuleID = './out/real_signal_run_all/rewritten_ir/student_knn/source_snapshot_public_repos_lz4_lib_lz4frame.prepared.ll'
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
  %cmp = icmp ugt i64 %code, -24
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind ssp uwtable
define ptr @LZ4F_getErrorName(i64 noundef %code) #0 {
entry:
  %code.addr = alloca i64, align 8
  store i64 %code, ptr %code.addr, align 8
  %call = call i32 @LZ4F_isError(i64 noundef %code)
  %tobool.not = icmp eq i32 %call, 0
  %0 = load i64, ptr %code.addr, align 8
  %.neg = mul i64 %0, -4294967296
  %idxprom = ashr exact i64 %.neg, 32
  %arrayidx = getelementptr inbounds [25 x ptr], ptr @LZ4F_errorStrings, i64 0, i64 %idxprom
  %storemerge.in = select i1 %tobool.not, ptr @LZ4F_getErrorName.codeError, ptr %arrayidx
  %storemerge = load ptr, ptr %storemerge.in, align 8
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define i32 @LZ4F_getErrorCode(i64 noundef %functionResult) #0 {
entry:
  %functionResult.addr = alloca i64, align 8
  store i64 %functionResult, ptr %functionResult.addr, align 8
  %call = call i32 @LZ4F_isError(i64 noundef %functionResult)
  %tobool.not = icmp eq i32 %call, 0
  %0 = load i64, ptr %functionResult.addr, align 8
  %1 = trunc i64 %0 to i32
  %conv = sub i32 0, %1
  %storemerge = select i1 %tobool.not, i32 0, i32 %conv
  ret i32 %storemerge
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
  %blockSizeID.addr = alloca i32, align 4
  %cmp = icmp eq i32 %blockSizeID, 0
  %spec.select = select i1 %cmp, i32 4, i32 %blockSizeID
  store i32 %spec.select, ptr %blockSizeID.addr, align 4
  %cmp1 = icmp ult i32 %spec.select, 4
  %0 = load i32, ptr %blockSizeID.addr, align 4
  %cmp2 = icmp ugt i32 %0, 7
  %or.cond = select i1 %cmp1, i1 true, i1 %cmp2
  br i1 %or.cond, label %return, label %if.end4

if.end4:                                          ; preds = %entry
  %1 = load i32, ptr %blockSizeID.addr, align 4
  %sub = add nsw i32 %1, -4
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [4 x i64], ptr @LZ4F_getBlockSize.blockSizes, i64 0, i64 %idxprom
  %2 = load i64, ptr %arrayidx, align 8
  br label %return

return:                                           ; preds = %entry, %if.end4
  %storemerge = phi i64 [ %2, %if.end4 ], [ -2, %entry ]
  ret i64 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @LZ4F_returnErrorCode(i32 noundef %code) #0 {
entry:
  %conv = zext i32 %code to i64
  %sub = sub nsw i64 0, %conv
  ret i64 %sub
}

; Function Attrs: nounwind ssp uwtable
define i64 @LZ4F_compressFrameBound(i64 noundef %srcSize, ptr noundef %preferencesPtr) #0 {
entry:
  %srcSize.addr = alloca i64, align 8
  %preferencesPtr.addr = alloca ptr, align 8
  %prefs = alloca %struct.LZ4F_preferences_t, align 8
  store i64 %srcSize, ptr %srcSize.addr, align 8
  store ptr %preferencesPtr, ptr %preferencesPtr.addr, align 8
  %cmp.not = icmp eq ptr %preferencesPtr, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %preferencesPtr.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %prefs, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %prefs, i8 0, i64 56, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %autoFlush = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefs, i64 0, i32 2
  store i32 1, ptr %autoFlush, align 4
  %1 = load i64, ptr %srcSize.addr, align 8
  %call = call i64 @LZ4F_compressBound_internal(i64 noundef %1, ptr noundef nonnull %prefs, i64 noundef 0)
  %add = add i64 %call, 19
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
  %blockSize = alloca i64, align 8
  %maxBuffered = alloca i64, align 8
  %nbFullBlocks = alloca i32, align 4
  %partialBlockSize = alloca i64, align 8
  %lastBlockSize = alloca i64, align 8
  %nbBlocks = alloca i32, align 4
  %blockCRCSize = alloca i64, align 8
  %frameEnd = alloca i64, align 8
  store i64 %srcSize, ptr %srcSize.addr, align 8
  store ptr %preferencesPtr, ptr %preferencesPtr.addr, align 8
  store i64 %alreadyBuffered, ptr %alreadyBuffered.addr, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %prefsNull, i8 0, i64 56, i1 false)
  store i32 4, ptr %prefsNull, align 8
  %contentChecksumFlag = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %prefsNull, i64 0, i32 2
  store i32 1, ptr %contentChecksumFlag, align 8
  %blockChecksumFlag = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %prefsNull, i64 0, i32 6
  store i32 1, ptr %blockChecksumFlag, align 4
  %0 = load ptr, ptr %preferencesPtr.addr, align 8
  %cmp = icmp eq ptr %0, null
  %1 = load ptr, ptr %preferencesPtr.addr, align 8
  %cond = select i1 %cmp, ptr %prefsNull, ptr %1
  store ptr %cond, ptr %prefsPtr, align 8
  %autoFlush = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %cond, i64 0, i32 2
  %2 = load i32, ptr %autoFlush, align 4
  %3 = load i64, ptr %srcSize.addr, align 8
  %cmp2 = icmp eq i64 %3, 0
  %conv = zext i1 %cmp2 to i32
  %or = or i32 %2, %conv
  store i32 %or, ptr %flush, align 4
  %4 = load ptr, ptr %prefsPtr, align 8
  %5 = load i32, ptr %4, align 8
  %call = call i64 @LZ4F_getBlockSize(i32 noundef %5)
  store i64 %call, ptr %blockSize, align 8
  %sub = add i64 %call, -1
  store i64 %sub, ptr %maxBuffered, align 8
  %6 = load i64, ptr %alreadyBuffered.addr, align 8
  %cmp4 = icmp ult i64 %6, %sub
  %7 = load i64, ptr %alreadyBuffered.addr, align 8
  %8 = load i64, ptr %maxBuffered, align 8
  %cond9 = select i1 %cmp4, i64 %7, i64 %8
  %9 = load i64, ptr %srcSize.addr, align 8
  %add = add i64 %9, %cond9
  %10 = load i64, ptr %blockSize, align 8
  %div = udiv i64 %add, %10
  %conv10 = trunc i64 %div to i32
  store i32 %conv10, ptr %nbFullBlocks, align 4
  %sub11 = add i64 %10, -1
  %and = and i64 %add, %sub11
  store i64 %and, ptr %partialBlockSize, align 8
  %11 = load i32, ptr %flush, align 4
  %tobool.not = icmp eq i32 %11, 0
  %12 = load i64, ptr %partialBlockSize, align 8
  %cond15 = select i1 %tobool.not, i64 0, i64 %12
  store i64 %cond15, ptr %lastBlockSize, align 8
  %13 = load i32, ptr %nbFullBlocks, align 4
  %cmp16 = icmp ne i64 %cond15, 0
  %conv17 = zext i1 %cmp16 to i32
  %add18 = add i32 %13, %conv17
  store i32 %add18, ptr %nbBlocks, align 4
  %14 = load ptr, ptr %prefsPtr, align 8
  %blockChecksumFlag20 = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %14, i64 0, i32 6
  %15 = load i32, ptr %blockChecksumFlag20, align 4
  %conv21 = zext i32 %15 to i64
  %mul = shl nuw nsw i64 %conv21, 2
  store i64 %mul, ptr %blockCRCSize, align 8
  %contentChecksumFlag23 = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %14, i64 0, i32 2
  %16 = load i32, ptr %contentChecksumFlag23, align 8
  %conv24 = zext i32 %16 to i64
  %mul25 = shl nuw nsw i64 %conv24, 2
  %add26 = add nuw nsw i64 %mul25, 4
  store i64 %add26, ptr %frameEnd, align 8
  %17 = load i64, ptr %blockCRCSize, align 8
  %add27 = add i64 %17, 4
  %18 = load i32, ptr %nbBlocks, align 4
  %conv28 = zext i32 %18 to i64
  %mul29 = mul i64 %add27, %conv28
  %19 = load i64, ptr %blockSize, align 8
  %20 = load i32, ptr %nbFullBlocks, align 4
  %conv30 = zext i32 %20 to i64
  %mul31 = mul i64 %19, %conv30
  %add32 = add i64 %mul29, %mul31
  %21 = load i64, ptr %lastBlockSize, align 8
  %add33 = add i64 %add32, %21
  %22 = load i64, ptr %frameEnd, align 8
  %add34 = add i64 %add33, %22
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
  store ptr %dstBuffer, ptr %dstStart, align 8
  store ptr %dstBuffer, ptr %dstPtr, align 8
  %0 = load i64, ptr %dstCapacity.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %dstBuffer, i64 %0
  store ptr %add.ptr, ptr %dstEnd, align 8
  %cmp.not = icmp eq ptr %preferencesPtr, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %preferencesPtr.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %prefs, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %prefs, i8 0, i64 56, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %contentSize = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %prefs, i64 0, i32 4
  %2 = load i64, ptr %contentSize, align 8
  %cmp1.not = icmp eq i64 %2, 0
  br i1 %cmp1.not, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.end
  %3 = load i64, ptr %srcSize.addr, align 8
  %contentSize4 = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %prefs, i64 0, i32 4
  store i64 %3, ptr %contentSize4, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end
  %4 = load i32, ptr %prefs, align 8
  %5 = load i64, ptr %srcSize.addr, align 8
  %call = call i32 @LZ4F_optimalBSID(i32 noundef %4, i64 noundef %5)
  store i32 %call, ptr %prefs, align 8
  %autoFlush = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %prefs, i64 0, i32 2
  store i32 1, ptr %autoFlush, align 4
  %call11 = call i64 @LZ4F_getBlockSize(i32 noundef %call)
  %cmp12.not = icmp ugt i64 %5, %call11
  br i1 %cmp12.not, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end5
  %blockMode = getelementptr inbounds %struct.LZ4F_frameInfo_t, ptr %prefs, i64 0, i32 1
  store i32 1, ptr %blockMode, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %options, i8 0, i64 16, i1 false)
  store i32 1, ptr %options, align 4
  %6 = load i64, ptr %dstCapacity.addr, align 8
  %7 = load i64, ptr %srcSize.addr, align 8
  %call16 = call i64 @LZ4F_compressFrameBound(i64 noundef %7, ptr noundef nonnull %prefs)
  %cmp17 = icmp ult i64 %6, %call16
  br i1 %cmp17, label %if.then18, label %do.end

if.then18:                                        ; preds = %if.end15
  %call19 = call i64 @LZ4F_returnErrorCode(i32 noundef 11)
  store i64 %call19, ptr %retval, align 8
  br label %return

do.end:                                           ; preds = %if.end15
  %8 = load ptr, ptr %cctx.addr, align 8
  %9 = load ptr, ptr %dstBuffer.addr, align 8
  %10 = load i64, ptr %dstCapacity.addr, align 8
  %11 = load ptr, ptr %cdict.addr, align 8
  %call21 = call i64 @LZ4F_compressBegin_usingCDict(ptr noundef %8, ptr noundef %9, i64 noundef %10, ptr noundef %11, ptr noundef nonnull %prefs)
  store i64 %call21, ptr %headerSize, align 8
  %12 = load i64, ptr %headerSize, align 8
  %call23 = call i32 @LZ4F_isError(i64 noundef %12)
  %tobool.not = icmp eq i32 %call23, 0
  br i1 %tobool.not, label %do.end26, label %if.then24

if.then24:                                        ; preds = %do.end
  %13 = load i64, ptr %headerSize, align 8
  store i64 %13, ptr %retval, align 8
  br label %return

do.end26:                                         ; preds = %do.end
  %14 = load i64, ptr %headerSize, align 8
  %15 = load ptr, ptr %dstPtr, align 8
  %add.ptr27 = getelementptr inbounds i8, ptr %15, i64 %14
  store ptr %add.ptr27, ptr %dstPtr, align 8
  %16 = load ptr, ptr %cctx.addr, align 8
  %17 = load ptr, ptr %dstEnd, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %17 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr27 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %18 = load ptr, ptr %srcBuffer.addr, align 8
  %19 = load i64, ptr %srcSize.addr, align 8
  %call28 = call i64 @LZ4F_compressUpdate(ptr noundef %16, ptr noundef %add.ptr27, i64 noundef %sub.ptr.sub, ptr noundef %18, i64 noundef %19, ptr noundef nonnull %options)
  store i64 %call28, ptr %cSize, align 8
  %20 = load i64, ptr %cSize, align 8
  %call30 = call i32 @LZ4F_isError(i64 noundef %20)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %do.end34, label %if.then32

if.then32:                                        ; preds = %do.end26
  %21 = load i64, ptr %cSize, align 8
  store i64 %21, ptr %retval, align 8
  br label %return

do.end34:                                         ; preds = %do.end26
  %22 = load i64, ptr %cSize, align 8
  %23 = load ptr, ptr %dstPtr, align 8
  %add.ptr35 = getelementptr inbounds i8, ptr %23, i64 %22
  store ptr %add.ptr35, ptr %dstPtr, align 8
  %24 = load ptr, ptr %cctx.addr, align 8
  %25 = load ptr, ptr %dstEnd, align 8
  %sub.ptr.lhs.cast36 = ptrtoint ptr %25 to i64
  %sub.ptr.rhs.cast37 = ptrtoint ptr %add.ptr35 to i64
  %sub.ptr.sub38 = sub i64 %sub.ptr.lhs.cast36, %sub.ptr.rhs.cast37
  %call39 = call i64 @LZ4F_compressEnd(ptr noundef %24, ptr noundef %add.ptr35, i64 noundef %sub.ptr.sub38, ptr noundef nonnull %options)
  store i64 %call39, ptr %tailSize, align 8
  %26 = load i64, ptr %tailSize, align 8
  %call41 = call i32 @LZ4F_isError(i64 noundef %26)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %do.end45, label %if.then43

if.then43:                                        ; preds = %do.end34
  %27 = load i64, ptr %tailSize, align 8
  store i64 %27, ptr %retval, align 8
  br label %return

do.end45:                                         ; preds = %do.end34
  %28 = load i64, ptr %tailSize, align 8
  %29 = load ptr, ptr %dstPtr, align 8
  %add.ptr46 = getelementptr inbounds i8, ptr %29, i64 %28
  store ptr %add.ptr46, ptr %dstPtr, align 8
  %30 = load ptr, ptr %dstStart, align 8
  %sub.ptr.lhs.cast47 = ptrtoint ptr %add.ptr46 to i64
  %sub.ptr.rhs.cast48 = ptrtoint ptr %30 to i64
  %sub.ptr.sub49 = sub i64 %sub.ptr.lhs.cast47, %sub.ptr.rhs.cast48
  store i64 %sub.ptr.sub49, ptr %retval, align 8
  br label %return

return:                                           ; preds = %do.end45, %if.then43, %if.then32, %if.then24, %if.then18
  %31 = load i64, ptr %retval, align 8
  ret i64 %31
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @LZ4F_optimalBSID(i32 noundef %requestedBSID, i64 noundef %srcSize) #0 {
entry:
  %requestedBSID.addr = alloca i32, align 4
  %srcSize.addr = alloca i64, align 8
  %proposedBSID = alloca i32, align 4
  %maxBlockSize = alloca i64, align 8
  store i32 %requestedBSID, ptr %requestedBSID.addr, align 4
  store i64 %srcSize, ptr %srcSize.addr, align 8
  store i32 4, ptr %proposedBSID, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %storemerge = phi i64 [ 65536, %entry ], [ %shl, %if.end ]
  store i64 %storemerge, ptr %maxBlockSize, align 8
  %0 = load i32, ptr %requestedBSID.addr, align 4
  %1 = load i32, ptr %proposedBSID, align 4
  %cmp = icmp ugt i32 %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i64, ptr %srcSize.addr, align 8
  %3 = load i64, ptr %maxBlockSize, align 8
  %cmp1.not = icmp ugt i64 %2, %3
  br i1 %cmp1.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %4 = load i32, ptr %proposedBSID, align 4
  br label %return

if.end:                                           ; preds = %while.body
  %5 = load i32, ptr %proposedBSID, align 4
  %add = add nsw i32 %5, 1
  store i32 %add, ptr %proposedBSID, align 4
  %6 = load i64, ptr %maxBlockSize, align 8
  %shl = shl i64 %6, 2
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %7 = load i32, ptr %requestedBSID.addr, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %storemerge1 = phi i32 [ %7, %while.end ], [ %4, %if.then ]
  ret i32 %storemerge1
}

; Function Attrs: nounwind ssp uwtable
define i64 @LZ4F_compressBegin_usingCDict(ptr noundef %cctx, ptr noundef %dstBuffer, i64 noundef %dstCapacity, ptr noundef %cdict, ptr noundef %preferencesPtr) #0 {
entry:
  %call = call i64 @LZ4F_compressBegin_internal(ptr noundef %cctx, ptr noundef %dstBuffer, i64 noundef %dstCapacity, ptr noundef null, i64 noundef 0, ptr noundef %cdict, ptr noundef %preferencesPtr)
  ret i64 %call
}

; Function Attrs: nounwind ssp uwtable
define i64 @LZ4F_compressUpdate(ptr noundef %cctxPtr, ptr noundef %dstBuffer, i64 noundef %dstCapacity, ptr noundef %srcBuffer, i64 noundef %srcSize, ptr noundef %compressOptionsPtr) #0 {
entry:
  %call = call i64 @LZ4F_compressUpdateImpl(ptr noundef %cctxPtr, ptr noundef %dstBuffer, i64 noundef %dstCapacity, ptr noundef %srcBuffer, i64 noundef %srcSize, ptr noundef %compressOptionsPtr, i32 noundef 0)
  ret i64 %call
}

; Function Attrs: nounwind ssp uwtable
define i64 @LZ4F_compressEnd(ptr noundef %cctxPtr, ptr noundef %dstBuffer, i64 noundef %dstCapacity, ptr noundef %compressOptionsPtr) #0 {
entry:
  %value32.addr.i = alloca i32, align 4
  %dstPtr.i = alloca ptr, align 8
  %retval = alloca i64, align 8
  %cctxPtr.addr = alloca ptr, align 8
  %dstCapacity.addr = alloca i64, align 8
  %dstStart = alloca ptr, align 8
  %dstPtr = alloca ptr, align 8
  %flushSize = alloca i64, align 8
  %xxh = alloca i32, align 4
  store ptr %cctxPtr, ptr %cctxPtr.addr, align 8
  store i64 %dstCapacity, ptr %dstCapacity.addr, align 8
  store ptr %dstBuffer, ptr %dstStart, align 8
  store ptr %dstBuffer, ptr %dstPtr, align 8
  %call = call i64 @LZ4F_flush(ptr noundef %cctxPtr, ptr noundef %dstBuffer, i64 noundef %dstCapacity, ptr noundef %compressOptionsPtr)
  store i64 %call, ptr %flushSize, align 8
  %0 = load i64, ptr %flushSize, align 8
  %call1 = call i32 @LZ4F_isError(i64 noundef %0)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %flushSize, align 8
  store i64 %1, ptr %retval, align 8
  br label %return

do.end:                                           ; preds = %entry
  %2 = load i64, ptr %flushSize, align 8
  %3 = load ptr, ptr %dstPtr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %2
  store ptr %add.ptr, ptr %dstPtr, align 8
  %4 = load i64, ptr %dstCapacity.addr, align 8
  %sub = sub i64 %4, %2
  store i64 %sub, ptr %dstCapacity.addr, align 8
  %5 = load i64, ptr %dstCapacity.addr, align 8
  %cmp = icmp ult i64 %5, 4
  br i1 %cmp, label %if.then3, label %do.end6

if.then3:                                         ; preds = %do.end
  store i64 -11, ptr %retval, align 8
  br label %return

do.end6:                                          ; preds = %do.end
  %6 = load ptr, ptr %dstPtr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value32.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dstPtr.i)
  store i32 0, ptr %value32.addr.i, align 4
  store ptr %6, ptr %dstPtr.i, align 8
  store i8 0, ptr %6, align 1
  %arrayidx2.i = getelementptr inbounds i8, ptr %6, i64 1
  store i8 0, ptr %arrayidx2.i, align 1
  %arrayidx5.i = getelementptr inbounds i8, ptr %6, i64 2
  store i8 0, ptr %arrayidx5.i, align 1
  %7 = load i32, ptr %value32.addr.i, align 4
  %shr6.i = lshr i32 %7, 24
  %conv7.i = trunc i32 %shr6.i to i8
  %8 = load ptr, ptr %dstPtr.i, align 8
  %arrayidx8.i = getelementptr inbounds i8, ptr %8, i64 3
  store i8 %conv7.i, ptr %arrayidx8.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value32.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dstPtr.i)
  %9 = load ptr, ptr %dstPtr, align 8
  %add.ptr7 = getelementptr inbounds i8, ptr %9, i64 4
  store ptr %add.ptr7, ptr %dstPtr, align 8
  %10 = load ptr, ptr %cctxPtr.addr, align 8
  %contentChecksumFlag = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %10, i64 0, i32 1, i32 0, i32 2
  %11 = load i32, ptr %contentChecksumFlag, align 8
  %cmp8 = icmp eq i32 %11, 1
  br i1 %cmp8, label %if.then9, label %if.end19

if.then9:                                         ; preds = %do.end6
  %12 = load ptr, ptr %cctxPtr.addr, align 8
  %xxh10 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %12, i64 0, i32 11
  %call11 = call i32 @XXH32_digest(ptr noundef nonnull %xxh10) #9
  store i32 %call11, ptr %xxh, align 4
  %13 = load i64, ptr %dstCapacity.addr, align 8
  %cmp13 = icmp ult i64 %13, 8
  br i1 %cmp13, label %if.then14, label %do.end17

if.then14:                                        ; preds = %if.then9
  store i64 -11, ptr %retval, align 8
  br label %return

do.end17:                                         ; preds = %if.then9
  %14 = load ptr, ptr %dstPtr, align 8
  %15 = load i32, ptr %xxh, align 4
  call void @LZ4F_writeLE32(ptr noundef %14, i32 noundef %15)
  %add.ptr18 = getelementptr inbounds i8, ptr %14, i64 4
  store ptr %add.ptr18, ptr %dstPtr, align 8
  br label %if.end19

if.end19:                                         ; preds = %do.end17, %do.end6
  %16 = load ptr, ptr %cctxPtr.addr, align 8
  %cStage = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %16, i64 0, i32 3
  store i32 0, ptr %cStage, align 4
  %contentSize = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %16, i64 0, i32 1, i32 0, i32 4
  %17 = load i64, ptr %contentSize, align 8
  %tobool22.not = icmp eq i64 %17, 0
  br i1 %tobool22.not, label %if.end31, label %if.then23

if.then23:                                        ; preds = %if.end19
  %18 = load ptr, ptr %cctxPtr.addr, align 8
  %contentSize26 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %18, i64 0, i32 1, i32 0, i32 4
  %19 = load i64, ptr %contentSize26, align 8
  %totalInSize = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %18, i64 0, i32 10
  %20 = load i64, ptr %totalInSize, align 8
  %cmp27.not = icmp eq i64 %19, %20
  br i1 %cmp27.not, label %if.end31, label %if.then28

if.then28:                                        ; preds = %if.then23
  store i64 -14, ptr %retval, align 8
  br label %return

if.end31:                                         ; preds = %if.then23, %if.end19
  %21 = load ptr, ptr %dstPtr, align 8
  %22 = load ptr, ptr %dstStart, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %21 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %22 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end31, %if.then28, %if.then14, %if.then3, %if.then
  %23 = load i64, ptr %retval, align 8
  ret i64 %23
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
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %cctx, i8 0, i64 216, i1 false)
  %version = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %cctx, i64 0, i32 2
  store i32 100, ptr %version, align 8
  %maxBufferSize = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %cctx, i64 0, i32 6
  store i64 5242880, ptr %maxBufferSize, align 8
  %0 = load ptr, ptr %preferencesPtr.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %preferencesPtr.addr, align 8
  %compressionLevel = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %1, i64 0, i32 1
  %2 = load i32, ptr %compressionLevel, align 8
  %cmp1 = icmp slt i32 %2, 2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call ptr @LZ4_initStream(ptr noundef nonnull %lz4ctx, i64 noundef 16416) #9
  %3 = load ptr, ptr %cctxPtr, align 8
  %lz4CtxPtr = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %3, i64 0, i32 12
  store ptr %lz4ctx, ptr %lz4CtxPtr, align 8
  %lz4CtxAlloc = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %3, i64 0, i32 13
  store i16 1, ptr %lz4CtxAlloc, align 8
  %lz4CtxType = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %3, i64 0, i32 14
  store i16 1, ptr %lz4CtxType, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %4 = load ptr, ptr %cctxPtr, align 8
  %5 = load ptr, ptr %dstBuffer.addr, align 8
  %6 = load i64, ptr %dstCapacity.addr, align 8
  %7 = load ptr, ptr %srcBuffer.addr, align 8
  %8 = load i64, ptr %srcSize.addr, align 8
  %9 = load ptr, ptr %preferencesPtr.addr, align 8
  %call2 = call i64 @LZ4F_compressFrame_usingCDict(ptr noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef null, ptr noundef %9)
  store i64 %call2, ptr %result, align 8
  %cmp3.not = icmp eq ptr %9, null
  br i1 %cmp3.not, label %if.end8, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %10 = load ptr, ptr %preferencesPtr.addr, align 8
  %compressionLevel4 = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %10, i64 0, i32 1
  %11 = load i32, ptr %compressionLevel4, align 8
  %cmp5 = icmp sgt i32 %11, 1
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %land.lhs.true
  %12 = load ptr, ptr %cctxPtr, align 8
  %lz4CtxPtr7 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %12, i64 0, i32 12
  %13 = load ptr, ptr %lz4CtxPtr7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %byval-temp, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 32, i1 false)
  call void @LZ4F_free(ptr noundef %13, ptr noundef nonnull %byval-temp)
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %land.lhs.true, %if.end
  %14 = load i64, ptr %result, align 8
  ret i64 %14
}

declare ptr @LZ4_initStream(ptr noundef, i64 noundef) #3

; Function Attrs: nounwind ssp uwtable
define internal void @LZ4F_free(ptr noundef %p, ptr noundef %cmem) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %cmp = icmp eq ptr %p, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %customFree = getelementptr inbounds %struct.LZ4F_CustomMem, ptr %cmem, i64 0, i32 2
  %0 = load ptr, ptr %customFree, align 8
  %cmp1.not = icmp eq ptr %0, null
  br i1 %cmp1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %customFree3 = getelementptr inbounds %struct.LZ4F_CustomMem, ptr %cmem, i64 0, i32 2
  %1 = load ptr, ptr %customFree3, align 8
  %opaqueState = getelementptr inbounds %struct.LZ4F_CustomMem, ptr %cmem, i64 0, i32 3
  %2 = load ptr, ptr %opaqueState, align 8
  %3 = load ptr, ptr %p.addr, align 8
  call void %1(ptr noundef %2, ptr noundef %3) #9
  br label %return

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %p.addr, align 8
  call void @free(ptr noundef %4) #9
  br label %return

return:                                           ; preds = %entry, %if.end4, %if.then2
  ret void
}

; Function Attrs: nounwind ssp uwtable
define ptr @LZ4F_createCDict_advanced(ptr noundef %cmem, ptr noundef %dictBuffer, i64 noundef %dictSize) #0 {
entry:
  %retval = alloca ptr, align 8
  %dictSize.addr = alloca i64, align 8
  %dictStart = alloca ptr, align 8
  %cdict = alloca ptr, align 8
  %byval-temp = alloca %struct.LZ4F_CustomMem, align 8
  %byval-temp7 = alloca %struct.LZ4F_CustomMem, align 8
  %byval-temp9 = alloca %struct.LZ4F_CustomMem, align 8
  %byval-temp11 = alloca %struct.LZ4F_CustomMem, align 8
  store i64 %dictSize, ptr %dictSize.addr, align 8
  store ptr %dictBuffer, ptr %dictStart, align 8
  store ptr null, ptr %cdict, align 8
  %tobool.not = icmp eq ptr %dictBuffer, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %byval-temp, ptr noundef nonnull align 8 dereferenceable(32) %cmem, i64 32, i1 false)
  %call = call ptr @LZ4F_malloc(i64 noundef 56, ptr noundef nonnull %byval-temp)
  store ptr %call, ptr %cdict, align 8
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %0 = load ptr, ptr %cdict, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %cmem, i64 32, i1 false)
  %1 = load i64, ptr %dictSize.addr, align 8
  %cmp = icmp ugt i64 %1, 65536
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %2 = load i64, ptr %dictSize.addr, align 8
  %sub = add i64 %2, -65536
  %3 = load ptr, ptr %dictStart, align 8
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %sub
  store ptr %add.ptr, ptr %dictStart, align 8
  store i64 65536, ptr %dictSize.addr, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  %4 = load i64, ptr %dictSize.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %byval-temp7, ptr noundef nonnull align 8 dereferenceable(32) %cmem, i64 32, i1 false)
  %call8 = call ptr @LZ4F_malloc(i64 noundef %4, ptr noundef nonnull %byval-temp7)
  %5 = load ptr, ptr %cdict, align 8
  %dictContent = getelementptr inbounds %struct.LZ4F_CDict_s, ptr %5, i64 0, i32 1
  store ptr %call8, ptr %dictContent, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %byval-temp9, ptr noundef nonnull align 8 dereferenceable(32) %cmem, i64 32, i1 false)
  %call10 = call ptr @LZ4F_malloc(i64 noundef 16416, ptr noundef nonnull %byval-temp9)
  %fastCtx = getelementptr inbounds %struct.LZ4F_CDict_s, ptr %5, i64 0, i32 2
  store ptr %call10, ptr %fastCtx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %byval-temp11, ptr noundef nonnull align 8 dereferenceable(32) %cmem, i64 32, i1 false)
  %call12 = call ptr @LZ4F_malloc(i64 noundef 262200, ptr noundef nonnull %byval-temp11)
  %6 = load ptr, ptr %cdict, align 8
  %HCCtx = getelementptr inbounds %struct.LZ4F_CDict_s, ptr %6, i64 0, i32 3
  store ptr %call12, ptr %HCCtx, align 8
  %dictContent13 = getelementptr inbounds %struct.LZ4F_CDict_s, ptr %6, i64 0, i32 1
  %7 = load ptr, ptr %dictContent13, align 8
  %tobool14.not = icmp eq ptr %7, null
  br i1 %tobool14.not, label %if.then20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end6
  %8 = load ptr, ptr %cdict, align 8
  %fastCtx15 = getelementptr inbounds %struct.LZ4F_CDict_s, ptr %8, i64 0, i32 2
  %9 = load ptr, ptr %fastCtx15, align 8
  %tobool16.not = icmp eq ptr %9, null
  br i1 %tobool16.not, label %if.then20, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false
  %10 = load ptr, ptr %cdict, align 8
  %HCCtx18 = getelementptr inbounds %struct.LZ4F_CDict_s, ptr %10, i64 0, i32 3
  %11 = load ptr, ptr %HCCtx18, align 8
  %tobool19.not = icmp eq ptr %11, null
  br i1 %tobool19.not, label %if.then20, label %if.end21

if.then20:                                        ; preds = %lor.lhs.false17, %lor.lhs.false, %if.end6
  %12 = load ptr, ptr %cdict, align 8
  call void @LZ4F_freeCDict(ptr noundef %12)
  store ptr null, ptr %retval, align 8
  br label %return

if.end21:                                         ; preds = %lor.lhs.false17
  %13 = load ptr, ptr %cdict, align 8
  %dictContent22 = getelementptr inbounds %struct.LZ4F_CDict_s, ptr %13, i64 0, i32 1
  %14 = load ptr, ptr %dictContent22, align 8
  %15 = load ptr, ptr %dictStart, align 8
  %16 = load i64, ptr %dictSize.addr, align 8
  %17 = call i64 @llvm.objectsize.i64.p0(ptr %14, i1 false, i1 true, i1 false)
  %call24 = call ptr @__memcpy_chk(ptr noundef %14, ptr noundef %15, i64 noundef %16, i64 noundef %17) #9
  %18 = load ptr, ptr %cdict, align 8
  %fastCtx25 = getelementptr inbounds %struct.LZ4F_CDict_s, ptr %18, i64 0, i32 2
  %19 = load ptr, ptr %fastCtx25, align 8
  %call26 = call ptr @LZ4_initStream(ptr noundef %19, i64 noundef 16416) #9
  %fastCtx27 = getelementptr inbounds %struct.LZ4F_CDict_s, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %fastCtx27, align 8
  %dictContent28 = getelementptr inbounds %struct.LZ4F_CDict_s, ptr %18, i64 0, i32 1
  %21 = load ptr, ptr %dictContent28, align 8
  %22 = load i64, ptr %dictSize.addr, align 8
  %conv = trunc i64 %22 to i32
  %call29 = call i32 @LZ4_loadDictSlow(ptr noundef %20, ptr noundef %21, i32 noundef %conv) #9
  %23 = load ptr, ptr %cdict, align 8
  %HCCtx30 = getelementptr inbounds %struct.LZ4F_CDict_s, ptr %23, i64 0, i32 3
  %24 = load ptr, ptr %HCCtx30, align 8
  %call31 = call ptr @LZ4_initStreamHC(ptr noundef %24, i64 noundef 262200) #9
  %HCCtx32 = getelementptr inbounds %struct.LZ4F_CDict_s, ptr %23, i64 0, i32 3
  %25 = load ptr, ptr %HCCtx32, align 8
  call void @LZ4_setCompressionLevel(ptr noundef %25, i32 noundef 9) #9
  %26 = load ptr, ptr %cdict, align 8
  %HCCtx33 = getelementptr inbounds %struct.LZ4F_CDict_s, ptr %26, i64 0, i32 3
  %27 = load ptr, ptr %HCCtx33, align 8
  %dictContent34 = getelementptr inbounds %struct.LZ4F_CDict_s, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %dictContent34, align 8
  %29 = load i64, ptr %dictSize.addr, align 8
  %conv35 = trunc i64 %29 to i32
  %call36 = call i32 @LZ4_loadDictHC(ptr noundef %27, ptr noundef %28, i32 noundef %conv35) #9
  %30 = load ptr, ptr %cdict, align 8
  store ptr %30, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end21, %if.then20, %if.then2, %if.then
  %31 = load ptr, ptr %retval, align 8
  ret ptr %31
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @LZ4F_malloc(i64 noundef %s, ptr noundef %cmem) #0 {
entry:
  %s.addr = alloca i64, align 8
  store i64 %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %cmem, align 8
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cmem, align 8
  %opaqueState = getelementptr inbounds %struct.LZ4F_CustomMem, ptr %cmem, i64 0, i32 3
  %2 = load ptr, ptr %opaqueState, align 8
  %3 = load i64, ptr %s.addr, align 8
  %call = call ptr %1(ptr noundef %2, i64 noundef %3) #9
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i64, ptr %s.addr, align 8
  %call2 = call ptr @malloc(i64 noundef %4) #10
  br label %return

return:                                           ; preds = %if.end, %if.then
  %storemerge = phi ptr [ %call2, %if.end ], [ %call, %if.then ]
  ret ptr %storemerge
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
  %cmp = icmp eq ptr %cdict, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %cdict.addr, align 8
  %dictContent = getelementptr inbounds %struct.LZ4F_CDict_s, ptr %0, i64 0, i32 1
  %1 = load ptr, ptr %dictContent, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %byval-temp, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @LZ4F_free(ptr noundef %1, ptr noundef nonnull %byval-temp)
  %fastCtx = getelementptr inbounds %struct.LZ4F_CDict_s, ptr %0, i64 0, i32 2
  %2 = load ptr, ptr %fastCtx, align 8
  %3 = load ptr, ptr %cdict.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %byval-temp2, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  call void @LZ4F_free(ptr noundef %2, ptr noundef nonnull %byval-temp2)
  %HCCtx = getelementptr inbounds %struct.LZ4F_CDict_s, ptr %3, i64 0, i32 3
  %4 = load ptr, ptr %HCCtx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %byval-temp4, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  call void @LZ4F_free(ptr noundef %4, ptr noundef nonnull %byval-temp4)
  %5 = load ptr, ptr %cdict.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %byval-temp6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  call void @LZ4F_free(ptr noundef %5, ptr noundef nonnull %byval-temp6)
  br label %return

return:                                           ; preds = %entry, %if.end
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
  %byval-temp = alloca %struct.LZ4F_CustomMem, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %byval-temp, ptr noundef nonnull align 8 dereferenceable(32) @LZ4F_defaultCMem, i64 32, i1 false)
  %call = call ptr @LZ4F_createCDict_advanced(ptr noundef nonnull %byval-temp, ptr noundef %dictBuffer, i64 noundef %dictSize)
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define ptr @LZ4F_createCompressionContext_advanced(ptr noundef %customMem, i32 noundef %version) #0 {
entry:
  %version.addr = alloca i32, align 4
  %cctxPtr = alloca ptr, align 8
  %byval-temp = alloca %struct.LZ4F_CustomMem, align 8
  store i32 %version, ptr %version.addr, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %byval-temp, ptr noundef nonnull align 8 dereferenceable(32) %customMem, i64 32, i1 false)
  %call = call ptr @LZ4F_calloc(i64 noundef 216, ptr noundef nonnull %byval-temp)
  store ptr %call, ptr %cctxPtr, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %cctxPtr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %customMem, i64 32, i1 false)
  %1 = load i32, ptr %version.addr, align 4
  %version1 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %0, i64 0, i32 2
  store i32 %1, ptr %version1, align 8
  %cStage = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %0, i64 0, i32 3
  store i32 0, ptr %cStage, align 4
  %2 = load ptr, ptr %cctxPtr, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi ptr [ %2, %if.end ], [ null, %entry ]
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @LZ4F_calloc(i64 noundef %s, ptr noundef %cmem) #0 {
entry:
  %retval = alloca ptr, align 8
  %s.addr = alloca i64, align 8
  %p = alloca ptr, align 8
  store i64 %s, ptr %s.addr, align 8
  %customCalloc = getelementptr inbounds %struct.LZ4F_CustomMem, ptr %cmem, i64 0, i32 1
  %0 = load ptr, ptr %customCalloc, align 8
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %customCalloc1 = getelementptr inbounds %struct.LZ4F_CustomMem, ptr %cmem, i64 0, i32 1
  %1 = load ptr, ptr %customCalloc1, align 8
  %opaqueState = getelementptr inbounds %struct.LZ4F_CustomMem, ptr %cmem, i64 0, i32 3
  %2 = load ptr, ptr %opaqueState, align 8
  %3 = load i64, ptr %s.addr, align 8
  %call = call ptr %1(ptr noundef %2, i64 noundef %3) #9
  store ptr %call, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %cmem, align 8
  %cmp2 = icmp eq ptr %4, null
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %5 = load i64, ptr %s.addr, align 8
  %call4 = call ptr @calloc(i64 noundef 1, i64 noundef %5) #11
  store ptr %call4, ptr %retval, align 8
  br label %return

if.end5:                                          ; preds = %if.end
  %6 = load ptr, ptr %cmem, align 8
  %opaqueState7 = getelementptr inbounds %struct.LZ4F_CustomMem, ptr %cmem, i64 0, i32 3
  %7 = load ptr, ptr %opaqueState7, align 8
  %8 = load i64, ptr %s.addr, align 8
  %call8 = call ptr %6(ptr noundef %7, i64 noundef %8) #9
  store ptr %call8, ptr %p, align 8
  %cmp9.not = icmp eq ptr %call8, null
  br i1 %cmp9.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end5
  %9 = load ptr, ptr %p, align 8
  %10 = load i64, ptr %s.addr, align 8
  %11 = call i64 @llvm.objectsize.i64.p0(ptr %9, i1 false, i1 true, i1 false)
  %call11 = call ptr @__memset_chk(ptr noundef %9, i32 noundef 0, i64 noundef %10, i64 noundef %11) #9
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end5
  %12 = load ptr, ptr %p, align 8
  store ptr %12, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end12, %if.then3, %if.then
  %13 = load ptr, ptr %retval, align 8
  ret ptr %13
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
  %0 = load ptr, ptr %LZ4F_compressionContextPtr.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  %call = call i64 @LZ4F_returnErrorCode(i32 noundef 21)
  store i64 %call, ptr %retval, align 8
  br label %return

do.end:                                           ; preds = %entry
  %1 = load i32, ptr %version.addr, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %byval-temp, ptr noundef nonnull align 8 dereferenceable(32) @LZ4F_defaultCMem, i64 32, i1 false)
  %call1 = call ptr @LZ4F_createCompressionContext_advanced(ptr noundef nonnull %byval-temp, i32 noundef %1)
  %2 = load ptr, ptr %LZ4F_compressionContextPtr.addr, align 8
  store ptr %call1, ptr %2, align 8
  %3 = load ptr, ptr %LZ4F_compressionContextPtr.addr, align 8
  %4 = load ptr, ptr %3, align 8
  %cmp3 = icmp eq ptr %4, null
  br i1 %cmp3, label %if.then4, label %do.end7

if.then4:                                         ; preds = %do.end
  %call5 = call i64 @LZ4F_returnErrorCode(i32 noundef 9)
  store i64 %call5, ptr %retval, align 8
  br label %return

do.end7:                                          ; preds = %do.end
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
  %cmp.not = icmp eq ptr %cctxPtr, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %cctxPtr.addr, align 8
  %lz4CtxPtr = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %0, i64 0, i32 12
  %1 = load ptr, ptr %lz4CtxPtr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %byval-temp, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @LZ4F_free(ptr noundef %1, ptr noundef nonnull %byval-temp)
  %tmpBuff = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %0, i64 0, i32 7
  %2 = load ptr, ptr %tmpBuff, align 8
  %3 = load ptr, ptr %cctxPtr.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %byval-temp2, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  call void @LZ4F_free(ptr noundef %2, ptr noundef nonnull %byval-temp2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %byval-temp4, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  call void @LZ4F_free(ptr noundef %3, ptr noundef nonnull %byval-temp4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 0
}

; Function Attrs: nounwind ssp uwtable
define i64 @LZ4F_cctx_size(ptr noundef %cctx) #0 {
entry:
  %cctx.addr = alloca ptr, align 8
  store ptr %cctx, ptr %cctx.addr, align 8
  %cmp = icmp eq ptr %cctx, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %cctx.addr, align 8
  %maxBufferSize = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %0, i64 0, i32 6
  %1 = load i64, ptr %maxBufferSize, align 8
  %add = add i64 %1, 216
  %lz4CtxAlloc = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %0, i64 0, i32 13
  %2 = load i16, ptr %lz4CtxAlloc, align 8
  %conv = zext i16 %2 to i32
  %call = call i32 @ctxTypeID_to_size(i32 noundef %conv)
  %conv1 = sext i32 %call to i64
  %add2 = add i64 %add, %conv1
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i64 [ %add2, %if.end ], [ 0, %entry ]
  ret i64 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @ctxTypeID_to_size(i32 noundef %ctxTypeID) #0 {
entry:
  %retval = alloca i32, align 4
  switch i32 %ctxTypeID, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %call = call i32 @LZ4_sizeofState() #9
  store i32 %call, ptr %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  %call2 = call i32 @LZ4_sizeofStateHC() #9
  store i32 %call2, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb1, %sw.bb
  %0 = load i32, ptr %retval, align 4
  ret i32 %0
}

; Function Attrs: nounwind ssp uwtable
define i64 @LZ4F_compressBegin(ptr noundef %cctx, ptr noundef %dstBuffer, i64 noundef %dstCapacity, ptr noundef %preferencesPtr) #0 {
entry:
  %call = call i64 @LZ4F_compressBegin_internal(ptr noundef %cctx, ptr noundef %dstBuffer, i64 noundef %dstCapacity, ptr noundef null, i64 noundef 0, ptr noundef null, ptr noundef %preferencesPtr)
  ret i64 %call
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @LZ4F_compressBegin_internal(ptr noundef %cctx, ptr noundef %dstBuffer, i64 noundef %dstCapacity, ptr noundef %dictBuffer, i64 noundef %dictSize, ptr noundef %cdict, ptr noundef %preferencesPtr) #0 {
entry:
  %value32.addr.i = alloca i32, align 4
  %dstPtr.i = alloca ptr, align 8
  %ctx.addr.i = alloca ptr, align 8
  %cdict.addr.i = alloca ptr, align 8
  %level.addr.i = alloca i32, align 4
  %blockMode.addr.i = alloca i32, align 4
  %s.addr.i2 = alloca i64, align 8
  %s.addr.i = alloca i64, align 8
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
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %prefNull, i8 0, i64 56, i1 false)
  store i32 4, ptr %prefNull, align 8
  %0 = load ptr, ptr %dstBuffer.addr, align 8
  store ptr %0, ptr %dstStart, align 8
  store ptr %0, ptr %dstPtr, align 8
  %1 = load i64, ptr %dstCapacity.addr, align 8
  %cmp = icmp ult i64 %1, 19
  br i1 %cmp, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  store i64 -11, ptr %retval, align 8
  br label %return

do.end:                                           ; preds = %entry
  %2 = load ptr, ptr %preferencesPtr.addr, align 8
  %cmp1 = icmp eq ptr %2, null
  %spec.store.select = select i1 %cmp1, ptr %prefNull, ptr %2
  store ptr %spec.store.select, ptr %preferencesPtr.addr, align 8
  %3 = load ptr, ptr %cctx.addr, align 8
  %prefs = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %3, i64 0, i32 1
  %4 = load ptr, ptr %preferencesPtr.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %prefs, ptr noundef nonnull align 8 dereferenceable(56) %4, i64 56, i1 false)
  %compressionLevel = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %3, i64 0, i32 1, i32 1
  %5 = load i32, ptr %compressionLevel, align 8
  %cmp5 = icmp slt i32 %5, 2
  %conv = select i1 %cmp5, i16 1, i16 2
  store i16 %conv, ptr %ctxTypeID, align 2
  %conv6 = zext i16 %conv to i32
  %call7 = call i32 @ctxTypeID_to_size(i32 noundef %conv6)
  %6 = load ptr, ptr %cctx.addr, align 8
  %lz4CtxAlloc = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %6, i64 0, i32 13
  %7 = load i16, ptr %lz4CtxAlloc, align 8
  %conv8 = zext i16 %7 to i32
  %call9 = call i32 @ctxTypeID_to_size(i32 noundef %conv8)
  %cmp10 = icmp slt i32 %call9, %call7
  br i1 %cmp10, label %if.then12, label %if.else47

if.then12:                                        ; preds = %do.end
  %8 = load ptr, ptr %cctx.addr, align 8
  %lz4CtxPtr = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %8, i64 0, i32 12
  %9 = load ptr, ptr %lz4CtxPtr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %byval-temp, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false)
  call void @LZ4F_free(ptr noundef %9, ptr noundef nonnull %byval-temp)
  %compressionLevel14 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %8, i64 0, i32 1, i32 1
  %10 = load i32, ptr %compressionLevel14, align 8
  %cmp15 = icmp slt i32 %10, 2
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.then12
  %11 = load ptr, ptr %cctx.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %byval-temp19, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %s.addr.i)
  store i64 16416, ptr %s.addr.i, align 8
  %12 = load ptr, ptr %byval-temp19, align 8
  %cmp.i.not = icmp eq ptr %12, null
  br i1 %cmp.i.not, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then17
  %13 = load ptr, ptr %byval-temp19, align 8
  %opaqueState.i = getelementptr inbounds %struct.LZ4F_CustomMem, ptr %byval-temp19, i64 0, i32 3
  %14 = load ptr, ptr %opaqueState.i, align 8
  %15 = load i64, ptr %s.addr.i, align 8
  %call.i = call ptr %13(ptr noundef %14, i64 noundef %15) #9
  br label %pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_6.exit

if.end.i:                                         ; preds = %if.then17
  %16 = load i64, ptr %s.addr.i, align 8
  %call2.i = call ptr @malloc(i64 noundef %16) #10
  br label %pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_6.exit

pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_6.exit: ; preds = %if.then.i, %if.end.i
  %storemerge22 = phi ptr [ %call2.i, %if.end.i ], [ %call.i, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s.addr.i)
  %17 = load ptr, ptr %cctx.addr, align 8
  %lz4CtxPtr21 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %17, i64 0, i32 12
  store ptr %storemerge22, ptr %lz4CtxPtr21, align 8
  %tobool.not = icmp eq ptr %storemerge22, null
  br i1 %tobool.not, label %do.body38, label %if.then23

if.then23:                                        ; preds = %pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_6.exit
  %18 = load ptr, ptr %cctx.addr, align 8
  %lz4CtxPtr24 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %18, i64 0, i32 12
  %19 = load ptr, ptr %lz4CtxPtr24, align 8
  %call25 = call ptr @LZ4_initStream(ptr noundef %19, i64 noundef 16416) #9
  br label %do.body38

if.else:                                          ; preds = %if.then12
  %20 = load ptr, ptr %cctx.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %byval-temp28, ptr noundef nonnull align 8 dereferenceable(32) %20, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %s.addr.i2)
  store i64 262200, ptr %s.addr.i2, align 8
  %21 = load ptr, ptr %byval-temp28, align 8
  %cmp.i3.not = icmp eq ptr %21, null
  br i1 %cmp.i3.not, label %if.end.i8, label %if.then.i6

if.then.i6:                                       ; preds = %if.else
  %22 = load ptr, ptr %byval-temp28, align 8
  %opaqueState.i4 = getelementptr inbounds %struct.LZ4F_CustomMem, ptr %byval-temp28, i64 0, i32 3
  %23 = load ptr, ptr %opaqueState.i4, align 8
  %24 = load i64, ptr %s.addr.i2, align 8
  %call.i5 = call ptr %22(ptr noundef %23, i64 noundef %24) #9
  br label %pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_7.exit

if.end.i8:                                        ; preds = %if.else
  %25 = load i64, ptr %s.addr.i2, align 8
  %call2.i7 = call ptr @malloc(i64 noundef %25) #10
  br label %pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_7.exit

pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_7.exit: ; preds = %if.then.i6, %if.end.i8
  %storemerge = phi ptr [ %call2.i7, %if.end.i8 ], [ %call.i5, %if.then.i6 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s.addr.i2)
  %26 = load ptr, ptr %cctx.addr, align 8
  %lz4CtxPtr30 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %26, i64 0, i32 12
  store ptr %storemerge, ptr %lz4CtxPtr30, align 8
  %tobool32.not = icmp eq ptr %storemerge, null
  br i1 %tobool32.not, label %do.body38, label %if.then33

if.then33:                                        ; preds = %pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_7.exit
  %27 = load ptr, ptr %cctx.addr, align 8
  %lz4CtxPtr34 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %27, i64 0, i32 12
  %28 = load ptr, ptr %lz4CtxPtr34, align 8
  %call35 = call ptr @LZ4_initStreamHC(ptr noundef %28, i64 noundef 262200) #9
  br label %do.body38

do.body38:                                        ; preds = %if.then23, %pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_6.exit, %if.then33, %pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_7.exit
  %29 = load ptr, ptr %cctx.addr, align 8
  %lz4CtxPtr39 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %29, i64 0, i32 12
  %30 = load ptr, ptr %lz4CtxPtr39, align 8
  %cmp40 = icmp eq ptr %30, null
  br i1 %cmp40, label %if.then42, label %do.end45

if.then42:                                        ; preds = %do.body38
  store i64 -9, ptr %retval, align 8
  br label %return

do.end45:                                         ; preds = %do.body38
  %31 = load i16, ptr %ctxTypeID, align 2
  %32 = load ptr, ptr %cctx.addr, align 8
  %lz4CtxAlloc46 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %32, i64 0, i32 13
  store i16 %31, ptr %lz4CtxAlloc46, align 8
  %lz4CtxType = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %32, i64 0, i32 14
  store i16 %31, ptr %lz4CtxType, align 2
  br label %if.end70

if.else47:                                        ; preds = %do.end
  %33 = load ptr, ptr %cctx.addr, align 8
  %lz4CtxType48 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %33, i64 0, i32 14
  %34 = load i16, ptr %lz4CtxType48, align 2
  %35 = load i16, ptr %ctxTypeID, align 2
  %cmp51.not = icmp eq i16 %34, %35
  br i1 %cmp51.not, label %if.end70, label %if.then53

if.then53:                                        ; preds = %if.else47
  %36 = load ptr, ptr %cctx.addr, align 8
  %compressionLevel55 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %36, i64 0, i32 1, i32 1
  %37 = load i32, ptr %compressionLevel55, align 8
  %cmp56 = icmp slt i32 %37, 2
  br i1 %cmp56, label %if.then58, label %if.else61

if.then58:                                        ; preds = %if.then53
  %38 = load ptr, ptr %cctx.addr, align 8
  %lz4CtxPtr59 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %38, i64 0, i32 12
  %39 = load ptr, ptr %lz4CtxPtr59, align 8
  %call60 = call ptr @LZ4_initStream(ptr noundef %39, i64 noundef 16416) #9
  br label %if.end67

if.else61:                                        ; preds = %if.then53
  %40 = load ptr, ptr %cctx.addr, align 8
  %lz4CtxPtr62 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %40, i64 0, i32 12
  %41 = load ptr, ptr %lz4CtxPtr62, align 8
  %call63 = call ptr @LZ4_initStreamHC(ptr noundef %41, i64 noundef 262200) #9
  %lz4CtxPtr64 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %40, i64 0, i32 12
  %42 = load ptr, ptr %lz4CtxPtr64, align 8
  %compressionLevel66 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %40, i64 0, i32 1, i32 1
  %43 = load i32, ptr %compressionLevel66, align 8
  call void @LZ4_setCompressionLevel(ptr noundef %42, i32 noundef %43) #9
  br label %if.end67

if.end67:                                         ; preds = %if.else61, %if.then58
  %44 = load i16, ptr %ctxTypeID, align 2
  %45 = load ptr, ptr %cctx.addr, align 8
  %lz4CtxType68 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %45, i64 0, i32 14
  store i16 %44, ptr %lz4CtxType68, align 2
  br label %if.end70

if.end70:                                         ; preds = %if.else47, %if.end67, %do.end45
  %46 = load ptr, ptr %cctx.addr, align 8
  %prefs71 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %46, i64 0, i32 1
  %47 = load i32, ptr %prefs71, align 8
  %cmp72 = icmp eq i32 %47, 0
  br i1 %cmp72, label %if.then74, label %if.end78

if.then74:                                        ; preds = %if.end70
  %48 = load ptr, ptr %cctx.addr, align 8
  %prefs75 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %48, i64 0, i32 1
  store i32 4, ptr %prefs75, align 8
  br label %if.end78

if.end78:                                         ; preds = %if.then74, %if.end70
  %49 = load ptr, ptr %cctx.addr, align 8
  %prefs79 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %49, i64 0, i32 1
  %50 = load i32, ptr %prefs79, align 8
  %call82 = call i64 @LZ4F_getBlockSize(i32 noundef %50)
  %maxBlockSize = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %49, i64 0, i32 5
  store i64 %call82, ptr %maxBlockSize, align 8
  %51 = load ptr, ptr %preferencesPtr.addr, align 8
  %autoFlush = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %51, i64 0, i32 2
  %52 = load i32, ptr %autoFlush, align 4
  %tobool83.not = icmp eq i32 %52, 0
  br i1 %tobool83.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end78
  %53 = load ptr, ptr %cctx.addr, align 8
  %blockMode = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %53, i64 0, i32 1, i32 0, i32 1
  %54 = load i32, ptr %blockMode, align 4
  %cmp86 = icmp eq i32 %54, 0
  %cond88 = select i1 %cmp86, i64 65536, i64 0
  br label %cond.end

cond.false:                                       ; preds = %if.end78
  %55 = load ptr, ptr %cctx.addr, align 8
  %maxBlockSize90 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %55, i64 0, i32 5
  %56 = load i64, ptr %maxBlockSize90, align 8
  %blockMode93 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %55, i64 0, i32 1, i32 0, i32 1
  %57 = load i32, ptr %blockMode93, align 4
  %cmp94 = icmp eq i32 %57, 0
  %cond96 = select i1 %cmp94, i64 131072, i64 0
  %add = add i64 %56, %cond96
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond98 = phi i64 [ %cond88, %cond.true ], [ %add, %cond.false ]
  store i64 %cond98, ptr %requiredBuffSize, align 8
  %58 = load ptr, ptr %cctx.addr, align 8
  %maxBufferSize = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %58, i64 0, i32 6
  %59 = load i64, ptr %maxBufferSize, align 8
  %cmp99 = icmp ult i64 %59, %cond98
  br i1 %cmp99, label %if.then101, label %if.end118

if.then101:                                       ; preds = %cond.end
  %60 = load ptr, ptr %cctx.addr, align 8
  %maxBufferSize102 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %60, i64 0, i32 6
  store i64 0, ptr %maxBufferSize102, align 8
  %tmpBuff = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %60, i64 0, i32 7
  %61 = load ptr, ptr %tmpBuff, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %byval-temp104, ptr noundef nonnull align 8 dereferenceable(32) %60, i64 32, i1 false)
  call void @LZ4F_free(ptr noundef %61, ptr noundef nonnull %byval-temp104)
  %62 = load i64, ptr %requiredBuffSize, align 8
  %63 = load ptr, ptr %cctx.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %byval-temp106, ptr noundef nonnull align 8 dereferenceable(32) %63, i64 32, i1 false)
  %call107 = call ptr @LZ4F_malloc(i64 noundef %62, ptr noundef nonnull %byval-temp106)
  %tmpBuff108 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %63, i64 0, i32 7
  store ptr %call107, ptr %tmpBuff108, align 8
  %64 = load ptr, ptr %cctx.addr, align 8
  %tmpBuff110 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %64, i64 0, i32 7
  %65 = load ptr, ptr %tmpBuff110, align 8
  %cmp111 = icmp eq ptr %65, null
  br i1 %cmp111, label %if.then113, label %do.end116

if.then113:                                       ; preds = %if.then101
  store i64 -9, ptr %retval, align 8
  br label %return

do.end116:                                        ; preds = %if.then101
  %66 = load i64, ptr %requiredBuffSize, align 8
  %67 = load ptr, ptr %cctx.addr, align 8
  %maxBufferSize117 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %67, i64 0, i32 6
  store i64 %66, ptr %maxBufferSize117, align 8
  br label %if.end118

if.end118:                                        ; preds = %do.end116, %cond.end
  %68 = load ptr, ptr %cctx.addr, align 8
  %tmpBuff119 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %68, i64 0, i32 7
  %69 = load ptr, ptr %tmpBuff119, align 8
  %tmpIn = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %68, i64 0, i32 8
  store ptr %69, ptr %tmpIn, align 8
  %tmpInSize = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %68, i64 0, i32 9
  store i64 0, ptr %tmpInSize, align 8
  %70 = load ptr, ptr %cctx.addr, align 8
  %xxh = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %70, i64 0, i32 11
  %call120 = call i32 @XXH32_reset(ptr noundef nonnull %xxh, i32 noundef 0) #9
  %71 = load ptr, ptr %cdict.addr, align 8
  %cdict121 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %70, i64 0, i32 4
  store ptr %71, ptr %cdict121, align 8
  %blockMode124 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %70, i64 0, i32 1, i32 0, i32 1
  %72 = load i32, ptr %blockMode124, align 4
  %cmp125 = icmp eq i32 %72, 0
  br i1 %cmp125, label %if.then127, label %if.end131

if.then127:                                       ; preds = %if.end118
  %73 = load ptr, ptr %cctx.addr, align 8
  %lz4CtxPtr128 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %73, i64 0, i32 12
  %74 = load ptr, ptr %lz4CtxPtr128, align 8
  %75 = load ptr, ptr %cdict.addr, align 8
  %compressionLevel130 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %73, i64 0, i32 1, i32 1
  %76 = load i32, ptr %compressionLevel130, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ctx.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cdict.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %level.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %blockMode.addr.i)
  store ptr %74, ptr %ctx.addr.i, align 8
  store ptr %75, ptr %cdict.addr.i, align 8
  store i32 %76, ptr %level.addr.i, align 4
  store i32 0, ptr %blockMode.addr.i, align 4
  %cmp.i15 = icmp slt i32 %76, 2
  br i1 %cmp.i15, label %if.then.i16, label %if.else.i

if.then.i16:                                      ; preds = %if.then127
  %77 = load ptr, ptr %cdict.addr.i, align 8
  %tobool.i.not = icmp ne ptr %77, null
  %78 = load i32, ptr %blockMode.addr.i, align 4
  %cmp1.i = icmp eq i32 %78, 0
  %or.cond = select i1 %tobool.i.not, i1 true, i1 %cmp1.i
  br i1 %or.cond, label %if.then2.i, label %pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_10.exit

if.then2.i:                                       ; preds = %if.then.i16
  %79 = load ptr, ptr %ctx.addr.i, align 8
  call void @LZ4_resetStream_fast(ptr noundef %79) #9
  %80 = load ptr, ptr %cdict.addr.i, align 8
  %tobool3.i.not = icmp eq ptr %80, null
  br i1 %tobool3.i.not, label %pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_10.exit, label %if.then4.i

if.then4.i:                                       ; preds = %if.then2.i
  %81 = load ptr, ptr %ctx.addr.i, align 8
  %82 = load ptr, ptr %cdict.addr.i, align 8
  %fastCtx.i = getelementptr inbounds %struct.LZ4F_CDict_s, ptr %82, i64 0, i32 2
  %83 = load ptr, ptr %fastCtx.i, align 8
  call void @LZ4_attach_dictionary(ptr noundef %81, ptr noundef %83) #9
  br label %pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_10.exit

if.else.i:                                        ; preds = %if.then127
  %84 = load ptr, ptr %ctx.addr.i, align 8
  %85 = load i32, ptr %level.addr.i, align 4
  call void @LZ4_resetStreamHC_fast(ptr noundef %84, i32 noundef %85) #9
  %86 = load ptr, ptr %cdict.addr.i, align 8
  %tobool6.i.not = icmp eq ptr %86, null
  br i1 %tobool6.i.not, label %pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_10.exit, label %if.then7.i

if.then7.i:                                       ; preds = %if.else.i
  %87 = load ptr, ptr %ctx.addr.i, align 8
  %88 = load ptr, ptr %cdict.addr.i, align 8
  %HCCtx.i = getelementptr inbounds %struct.LZ4F_CDict_s, ptr %88, i64 0, i32 3
  %89 = load ptr, ptr %HCCtx.i, align 8
  call void @LZ4_attach_HC_dictionary(ptr noundef %87, ptr noundef %89) #9
  br label %pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_10.exit

pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_10.exit: ; preds = %if.else.i, %if.then7.i, %if.then.i16, %if.then4.i, %if.then2.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ctx.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cdict.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %level.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %blockMode.addr.i)
  br label %if.end131

if.end131:                                        ; preds = %pc_inline_source_snapshot_public_repos_lz4_lib_lz4frame_10.exit, %if.end118
  %90 = load ptr, ptr %preferencesPtr.addr, align 8
  %compressionLevel132 = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %90, i64 0, i32 1
  %91 = load i32, ptr %compressionLevel132, align 8
  %cmp133 = icmp sgt i32 %91, 1
  br i1 %cmp133, label %if.then135, label %if.end137

if.then135:                                       ; preds = %if.end131
  %92 = load ptr, ptr %cctx.addr, align 8
  %lz4CtxPtr136 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %92, i64 0, i32 12
  %93 = load ptr, ptr %lz4CtxPtr136, align 8
  %94 = load ptr, ptr %preferencesPtr.addr, align 8
  %favorDecSpeed = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %94, i64 0, i32 3
  %95 = load i32, ptr %favorDecSpeed, align 8
  call void @LZ4_favorDecompressionSpeed(ptr noundef %93, i32 noundef %95) #9
  br label %if.end137

if.end137:                                        ; preds = %if.then135, %if.end131
  %96 = load ptr, ptr %dictBuffer.addr, align 8
  %tobool138.not = icmp eq ptr %96, null
  br i1 %tobool138.not, label %if.end160, label %do.body140

do.body140:                                       ; preds = %if.end137
  %97 = load i64, ptr %dictSize.addr, align 8
  %cmp141 = icmp ugt i64 %97, 2147483647
  br i1 %cmp141, label %if.then143, label %do.end146

if.then143:                                       ; preds = %do.body140
  store i64 -4, ptr %retval, align 8
  br label %return

do.end146:                                        ; preds = %do.body140
  %98 = load ptr, ptr %cctx.addr, align 8
  %lz4CtxType147 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %98, i64 0, i32 14
  %99 = load i16, ptr %lz4CtxType147, align 2
  %cmp149 = icmp eq i16 %99, 1
  br i1 %cmp149, label %if.then151, label %if.else155

if.then151:                                       ; preds = %do.end146
  %100 = load ptr, ptr %cctx.addr, align 8
  %lz4CtxPtr152 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %100, i64 0, i32 12
  %101 = load ptr, ptr %lz4CtxPtr152, align 8
  %102 = load ptr, ptr %dictBuffer.addr, align 8
  %103 = load i64, ptr %dictSize.addr, align 8
  %conv153 = trunc i64 %103 to i32
  %call154 = call i32 @LZ4_loadDict(ptr noundef %101, ptr noundef %102, i32 noundef %conv153) #9
  br label %if.end160

if.else155:                                       ; preds = %do.end146
  %104 = load ptr, ptr %cctx.addr, align 8
  %lz4CtxPtr156 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %104, i64 0, i32 12
  %105 = load ptr, ptr %lz4CtxPtr156, align 8
  %106 = load ptr, ptr %dictBuffer.addr, align 8
  %107 = load i64, ptr %dictSize.addr, align 8
  %conv157 = trunc i64 %107 to i32
  %call158 = call i32 @LZ4_loadDictHC(ptr noundef %105, ptr noundef %106, i32 noundef %conv157) #9
  br label %if.end160

if.end160:                                        ; preds = %if.then151, %if.else155, %if.end137
  %108 = load ptr, ptr %dstPtr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value32.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dstPtr.i)
  store i32 407708164, ptr %value32.addr.i, align 4
  store ptr %108, ptr %dstPtr.i, align 8
  store i8 4, ptr %108, align 1
  %arrayidx2.i = getelementptr inbounds i8, ptr %108, i64 1
  store i8 34, ptr %arrayidx2.i, align 1
  %arrayidx5.i = getelementptr inbounds i8, ptr %108, i64 2
  store i8 77, ptr %arrayidx5.i, align 1
  %109 = load i32, ptr %value32.addr.i, align 4
  %shr6.i = lshr i32 %109, 24
  %conv7.i = trunc i32 %shr6.i to i8
  %110 = load ptr, ptr %dstPtr.i, align 8
  %arrayidx8.i = getelementptr inbounds i8, ptr %110, i64 3
  store i8 %conv7.i, ptr %arrayidx8.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value32.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dstPtr.i)
  %111 = load ptr, ptr %dstPtr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %111, i64 4
  store ptr %add.ptr, ptr %dstPtr, align 8
  store ptr %add.ptr, ptr %headerStart, align 8
  %112 = load ptr, ptr %cctx.addr, align 8
  %blockMode163 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %112, i64 0, i32 1, i32 0, i32 1
  %113 = load i32, ptr %blockMode163, align 4
  %and = shl i32 %113, 5
  %shl = and i32 %and, 32
  %blockChecksumFlag = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %112, i64 0, i32 1, i32 0, i32 6
  %114 = load i32, ptr %blockChecksumFlag, align 4
  %and167 = shl i32 %114, 4
  %shl168 = and i32 %and167, 16
  %add164 = or i32 %shl, %shl168
  %115 = load ptr, ptr %cctx.addr, align 8
  %contentSize = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %115, i64 0, i32 1, i32 0, i32 4
  %116 = load i64, ptr %contentSize, align 8
  %cmp172.not = icmp eq i64 %116, 0
  %shl174 = select i1 %cmp172.not, i32 0, i32 8
  %add169 = or i32 %add164, %shl174
  %contentChecksumFlag = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %115, i64 0, i32 1, i32 0, i32 2
  %117 = load i32, ptr %contentChecksumFlag, align 8
  %and178 = shl i32 %117, 2
  %shl179 = and i32 %and178, 4
  %add175 = or i32 %add169, %shl179
  %118 = load ptr, ptr %cctx.addr, align 8
  %dictID = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %118, i64 0, i32 1, i32 0, i32 5
  %119 = load i32, ptr %dictID, align 8
  %cmp183 = icmp ne i32 %119, 0
  %conv184 = zext i1 %cmp183 to i32
  %add180 = or i32 %add175, %conv184
  %120 = trunc i32 %add180 to i8
  %conv186 = or i8 %120, 64
  %121 = load ptr, ptr %dstPtr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %121, i64 1
  store ptr %incdec.ptr, ptr %dstPtr, align 8
  store i8 %conv186, ptr %121, align 1
  %122 = load ptr, ptr %cctx.addr, align 8
  %prefs187 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %122, i64 0, i32 1
  %123 = load i32, ptr %prefs187, align 8
  %.tr = trunc i32 %123 to i8
  %124 = shl i8 %.tr, 4
  %conv192 = and i8 %124, 112
  %125 = load ptr, ptr %dstPtr, align 8
  %incdec.ptr193 = getelementptr inbounds i8, ptr %125, i64 1
  store ptr %incdec.ptr193, ptr %dstPtr, align 8
  store i8 %conv192, ptr %125, align 1
  %126 = load ptr, ptr %cctx.addr, align 8
  %contentSize196 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %126, i64 0, i32 1, i32 0, i32 4
  %127 = load i64, ptr %contentSize196, align 8
  %tobool197.not = icmp eq i64 %127, 0
  br i1 %tobool197.not, label %if.end203, label %if.then198

if.then198:                                       ; preds = %if.end160
  %128 = load ptr, ptr %dstPtr, align 8
  %129 = load ptr, ptr %cctx.addr, align 8
  %contentSize201 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %129, i64 0, i32 1, i32 0, i32 4
  %130 = load i64, ptr %contentSize201, align 8
  call void @LZ4F_writeLE64(ptr noundef %128, i64 noundef %130)
  %add.ptr202 = getelementptr inbounds i8, ptr %128, i64 8
  store ptr %add.ptr202, ptr %dstPtr, align 8
  %totalInSize = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %129, i64 0, i32 10
  store i64 0, ptr %totalInSize, align 8
  br label %if.end203

if.end203:                                        ; preds = %if.then198, %if.end160
  %131 = load ptr, ptr %cctx.addr, align 8
  %dictID206 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %131, i64 0, i32 1, i32 0, i32 5
  %132 = load i32, ptr %dictID206, align 8
  %tobool207.not = icmp eq i32 %132, 0
  br i1 %tobool207.not, label %if.end213, label %if.then208

if.then208:                                       ; preds = %if.end203
  %133 = load ptr, ptr %dstPtr, align 8
  %134 = load ptr, ptr %cctx.addr, align 8
  %dictID211 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %134, i64 0, i32 1, i32 0, i32 5
  %135 = load i32, ptr %dictID211, align 8
  call void @LZ4F_writeLE32(ptr noundef %133, i32 noundef %135)
  %add.ptr212 = getelementptr inbounds i8, ptr %133, i64 4
  store ptr %add.ptr212, ptr %dstPtr, align 8
  br label %if.end213

if.end213:                                        ; preds = %if.then208, %if.end203
  %136 = load ptr, ptr %headerStart, align 8
  %137 = load ptr, ptr %dstPtr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %137 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %136 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call214 = call zeroext i8 @LZ4F_headerChecksum(ptr noundef %136, i64 noundef %sub.ptr.sub)
  store i8 %call214, ptr %137, align 1
  %incdec.ptr215 = getelementptr inbounds i8, ptr %137, i64 1
  store ptr %incdec.ptr215, ptr %dstPtr, align 8
  %138 = load ptr, ptr %cctx.addr, align 8
  %cStage = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %138, i64 0, i32 3
  store i32 1, ptr %cStage, align 4
  %139 = load ptr, ptr %dstStart, align 8
  %sub.ptr.lhs.cast216 = ptrtoint ptr %incdec.ptr215 to i64
  %sub.ptr.rhs.cast217 = ptrtoint ptr %139 to i64
  %sub.ptr.sub218 = sub i64 %sub.ptr.lhs.cast216, %sub.ptr.rhs.cast217
  store i64 %sub.ptr.sub218, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end213, %if.then143, %if.then113, %if.then42, %if.then
  %140 = load i64, ptr %retval, align 8
  ret i64 %140
}

; Function Attrs: nounwind ssp uwtable
define i64 @LZ4F_compressBegin_usingDict(ptr noundef %cctx, ptr noundef %dstBuffer, i64 noundef %dstCapacity, ptr noundef %dict, i64 noundef %dictSize, ptr noundef %preferencesPtr) #0 {
entry:
  %call = call i64 @LZ4F_compressBegin_usingDictOnce(ptr noundef %cctx, ptr noundef %dstBuffer, i64 noundef %dstCapacity, ptr noundef %dict, i64 noundef %dictSize, ptr noundef %preferencesPtr)
  ret i64 %call
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @LZ4F_compressBegin_usingDictOnce(ptr noundef %cctx, ptr noundef %dstBuffer, i64 noundef %dstCapacity, ptr noundef %dict, i64 noundef %dictSize, ptr noundef %preferencesPtr) #0 {
entry:
  %call = call i64 @LZ4F_compressBegin_internal(ptr noundef %cctx, ptr noundef %dstBuffer, i64 noundef %dstCapacity, ptr noundef %dict, i64 noundef %dictSize, ptr noundef null, ptr noundef %preferencesPtr)
  ret i64 %call
}

; Function Attrs: nounwind ssp uwtable
define i64 @LZ4F_compressBound(i64 noundef %srcSize, ptr noundef %preferencesPtr) #0 {
entry:
  %srcSize.addr = alloca i64, align 8
  %preferencesPtr.addr = alloca ptr, align 8
  store i64 %srcSize, ptr %srcSize.addr, align 8
  store ptr %preferencesPtr, ptr %preferencesPtr.addr, align 8
  %tobool.not = icmp eq ptr %preferencesPtr, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load ptr, ptr %preferencesPtr.addr, align 8
  %autoFlush = getelementptr inbounds %struct.LZ4F_preferences_t, ptr %0, i64 0, i32 2
  %1 = load i32, ptr %autoFlush, align 4
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %2 = load i64, ptr %srcSize.addr, align 8
  %3 = load ptr, ptr %preferencesPtr.addr, align 8
  %call = call i64 @LZ4F_compressBound_internal(i64 noundef %2, ptr noundef %3, i64 noundef 0)
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i64, ptr %srcSize.addr, align 8
  %5 = load ptr, ptr %preferencesPtr.addr, align 8
  %call2 = call i64 @LZ4F_compressBound_internal(i64 noundef %4, ptr noundef %5, i64 noundef -1)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %storemerge = phi i64 [ %call2, %if.end ], [ %call, %if.then ]
  ret i64 %storemerge
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
  %maxBlockSize = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %0, i64 0, i32 5
  %1 = load i64, ptr %maxBlockSize, align 8
  store i64 %1, ptr %blockSize, align 8
  %2 = load ptr, ptr %srcBuffer.addr, align 8
  store ptr %2, ptr %srcPtr, align 8
  %3 = load i64, ptr %srcSize.addr, align 8
  %tobool.not = icmp eq i64 %3, 0
  %4 = load ptr, ptr %srcPtr, align 8
  %5 = load i64, ptr %srcSize.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 %5
  %6 = load ptr, ptr %srcPtr, align 8
  %cond = select i1 %tobool.not, ptr %6, ptr %add.ptr
  store ptr %cond, ptr %srcEnd, align 8
  %7 = load ptr, ptr %dstBuffer.addr, align 8
  store ptr %7, ptr %dstStart, align 8
  store ptr %7, ptr %dstPtr, align 8
  store i32 0, ptr %lastBlockCompressed, align 4
  %8 = load ptr, ptr %cctxPtr.addr, align 8
  %blockMode = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %8, i64 0, i32 1, i32 0, i32 1
  %9 = load i32, ptr %blockMode, align 4
  %compressionLevel = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %8, i64 0, i32 1, i32 1
  %10 = load i32, ptr %compressionLevel, align 8
  %11 = load i32, ptr %blockCompression.addr, align 4
  %call = call ptr @LZ4F_selectCompression(i32 noundef %9, i32 noundef %10, i32 noundef %11)
  store ptr %call, ptr %compress, align 8
  %12 = load ptr, ptr %cctxPtr.addr, align 8
  %cStage = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %12, i64 0, i32 3
  %13 = load i32, ptr %cStage, align 4
  %cmp.not = icmp eq i32 %13, 1
  br i1 %cmp.not, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  store i64 -20, ptr %retval, align 8
  br label %return

do.end:                                           ; preds = %entry
  %14 = load i64, ptr %dstCapacity.addr, align 8
  %15 = load i64, ptr %srcSize.addr, align 8
  %16 = load ptr, ptr %cctxPtr.addr, align 8
  %prefs3 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %16, i64 0, i32 1
  %tmpInSize = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %16, i64 0, i32 9
  %17 = load i64, ptr %tmpInSize, align 8
  %call4 = call i64 @LZ4F_compressBound_internal(i64 noundef %15, ptr noundef nonnull %prefs3, i64 noundef %17)
  %cmp5 = icmp ult i64 %14, %call4
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %do.end
  store i64 -11, ptr %retval, align 8
  br label %return

if.end8:                                          ; preds = %do.end
  %18 = load i32, ptr %blockCompression.addr, align 4
  %cmp9 = icmp eq i32 %18, 1
  br i1 %cmp9, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %if.end8
  %19 = load i64, ptr %dstCapacity.addr, align 8
  %20 = load i64, ptr %srcSize.addr, align 8
  %cmp10 = icmp ult i64 %19, %20
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %land.lhs.true
  store i64 -11, ptr %retval, align 8
  br label %return

if.end13:                                         ; preds = %land.lhs.true, %if.end8
  %21 = load ptr, ptr %cctxPtr.addr, align 8
  %blockCompressMode = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %21, i64 0, i32 15
  %22 = load i32, ptr %blockCompressMode, align 4
  %23 = load i32, ptr %blockCompression.addr, align 4
  %cmp14.not = icmp eq i32 %22, %23
  br i1 %cmp14.not, label %if.end19, label %if.then15

if.then15:                                        ; preds = %if.end13
  %24 = load ptr, ptr %cctxPtr.addr, align 8
  %25 = load ptr, ptr %dstBuffer.addr, align 8
  %26 = load i64, ptr %dstCapacity.addr, align 8
  %27 = load ptr, ptr %compressOptionsPtr.addr, align 8
  %call16 = call i64 @LZ4F_flush(ptr noundef %24, ptr noundef %25, i64 noundef %26, ptr noundef %27)
  %28 = load ptr, ptr %dstPtr, align 8
  %add.ptr17 = getelementptr inbounds i8, ptr %28, i64 %call16
  store ptr %add.ptr17, ptr %dstPtr, align 8
  %29 = load i32, ptr %blockCompression.addr, align 4
  %30 = load ptr, ptr %cctxPtr.addr, align 8
  %blockCompressMode18 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %30, i64 0, i32 15
  store i32 %29, ptr %blockCompressMode18, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end13
  %31 = load ptr, ptr %compressOptionsPtr.addr, align 8
  %cmp20 = icmp eq ptr %31, null
  %spec.store.select = select i1 %cmp20, ptr @k_cOptionsNull, ptr %31
  store ptr %spec.store.select, ptr %compressOptionsPtr.addr, align 8
  %32 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpInSize23 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %32, i64 0, i32 9
  %33 = load i64, ptr %tmpInSize23, align 8
  %cmp24.not = icmp eq i64 %33, 0
  br i1 %cmp24.not, label %if.end61, label %if.then25

if.then25:                                        ; preds = %if.end19
  %34 = load i64, ptr %blockSize, align 8
  %35 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpInSize26 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %35, i64 0, i32 9
  %36 = load i64, ptr %tmpInSize26, align 8
  %sub = sub i64 %34, %36
  store i64 %sub, ptr %sizeToCopy, align 8
  %37 = load i64, ptr %srcSize.addr, align 8
  %cmp27 = icmp ugt i64 %sub, %37
  br i1 %cmp27, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.then25
  %38 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpIn = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %38, i64 0, i32 8
  %39 = load ptr, ptr %tmpIn, align 8
  %tmpInSize29 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %38, i64 0, i32 9
  %40 = load i64, ptr %tmpInSize29, align 8
  %add.ptr30 = getelementptr inbounds i8, ptr %39, i64 %40
  %41 = load ptr, ptr %srcBuffer.addr, align 8
  %42 = load i64, ptr %srcSize.addr, align 8
  %43 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpIn31 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %43, i64 0, i32 8
  %44 = load ptr, ptr %tmpIn31, align 8
  %tmpInSize32 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %43, i64 0, i32 9
  %45 = load i64, ptr %tmpInSize32, align 8
  %add.ptr33 = getelementptr inbounds i8, ptr %44, i64 %45
  %46 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr33, i1 false, i1 true, i1 false)
  %call34 = call ptr @__memcpy_chk(ptr noundef %add.ptr30, ptr noundef %41, i64 noundef %42, i64 noundef %46) #9
  %47 = load ptr, ptr %srcEnd, align 8
  store ptr %47, ptr %srcPtr, align 8
  %48 = load i64, ptr %srcSize.addr, align 8
  %49 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpInSize35 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %49, i64 0, i32 9
  %50 = load i64, ptr %tmpInSize35, align 8
  %add = add i64 %50, %48
  store i64 %add, ptr %tmpInSize35, align 8
  br label %if.end61

if.else:                                          ; preds = %if.then25
  store i32 1, ptr %lastBlockCompressed, align 4
  %51 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpIn36 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %51, i64 0, i32 8
  %52 = load ptr, ptr %tmpIn36, align 8
  %tmpInSize37 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %51, i64 0, i32 9
  %53 = load i64, ptr %tmpInSize37, align 8
  %add.ptr38 = getelementptr inbounds i8, ptr %52, i64 %53
  %54 = load ptr, ptr %srcBuffer.addr, align 8
  %55 = load i64, ptr %sizeToCopy, align 8
  %56 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpIn39 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %56, i64 0, i32 8
  %57 = load ptr, ptr %tmpIn39, align 8
  %tmpInSize40 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %56, i64 0, i32 9
  %58 = load i64, ptr %tmpInSize40, align 8
  %add.ptr41 = getelementptr inbounds i8, ptr %57, i64 %58
  %59 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr41, i1 false, i1 true, i1 false)
  %call42 = call ptr @__memcpy_chk(ptr noundef %add.ptr38, ptr noundef %54, i64 noundef %55, i64 noundef %59) #9
  %60 = load i64, ptr %sizeToCopy, align 8
  %61 = load ptr, ptr %srcPtr, align 8
  %add.ptr43 = getelementptr inbounds i8, ptr %61, i64 %60
  store ptr %add.ptr43, ptr %srcPtr, align 8
  %62 = load ptr, ptr %dstPtr, align 8
  %63 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpIn44 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %63, i64 0, i32 8
  %64 = load ptr, ptr %tmpIn44, align 8
  %65 = load i64, ptr %blockSize, align 8
  %66 = load ptr, ptr %compress, align 8
  %lz4CtxPtr = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %63, i64 0, i32 12
  %67 = load ptr, ptr %lz4CtxPtr, align 8
  %68 = load ptr, ptr %cctxPtr.addr, align 8
  %compressionLevel46 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %68, i64 0, i32 1, i32 1
  %69 = load i32, ptr %compressionLevel46, align 8
  %cdict = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %68, i64 0, i32 4
  %70 = load ptr, ptr %cdict, align 8
  %blockChecksumFlag = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %68, i64 0, i32 1, i32 0, i32 6
  %71 = load i32, ptr %blockChecksumFlag, align 4
  %call49 = call i64 @LZ4F_makeBlock(ptr noundef %62, ptr noundef %64, i64 noundef %65, ptr noundef %66, ptr noundef %67, i32 noundef %69, ptr noundef %70, i32 noundef %71)
  %72 = load ptr, ptr %dstPtr, align 8
  %add.ptr50 = getelementptr inbounds i8, ptr %72, i64 %call49
  store ptr %add.ptr50, ptr %dstPtr, align 8
  %73 = load ptr, ptr %cctxPtr.addr, align 8
  %blockMode53 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %73, i64 0, i32 1, i32 0, i32 1
  %74 = load i32, ptr %blockMode53, align 4
  %cmp54 = icmp eq i32 %74, 0
  br i1 %cmp54, label %if.then55, label %if.end58

if.then55:                                        ; preds = %if.else
  %75 = load i64, ptr %blockSize, align 8
  %76 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpIn56 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %76, i64 0, i32 8
  %77 = load ptr, ptr %tmpIn56, align 8
  %add.ptr57 = getelementptr inbounds i8, ptr %77, i64 %75
  store ptr %add.ptr57, ptr %tmpIn56, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %if.else
  %78 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpInSize59 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %78, i64 0, i32 9
  store i64 0, ptr %tmpInSize59, align 8
  br label %if.end61

if.end61:                                         ; preds = %if.then28, %if.end58, %if.end19
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end61
  %79 = load ptr, ptr %srcEnd, align 8
  %80 = load ptr, ptr %srcPtr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %79 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %80 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %81 = load i64, ptr %blockSize, align 8
  %cmp62.not = icmp ult i64 %sub.ptr.sub, %81
  br i1 %cmp62.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  store i32 2, ptr %lastBlockCompressed, align 4
  %82 = load ptr, ptr %dstPtr, align 8
  %83 = load ptr, ptr %srcPtr, align 8
  %84 = load i64, ptr %blockSize, align 8
  %85 = load ptr, ptr %compress, align 8
  %86 = load ptr, ptr %cctxPtr.addr, align 8
  %lz4CtxPtr63 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %86, i64 0, i32 12
  %87 = load ptr, ptr %lz4CtxPtr63, align 8
  %compressionLevel65 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %86, i64 0, i32 1, i32 1
  %88 = load i32, ptr %compressionLevel65, align 8
  %cdict66 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %86, i64 0, i32 4
  %89 = load ptr, ptr %cdict66, align 8
  %90 = load ptr, ptr %cctxPtr.addr, align 8
  %blockChecksumFlag69 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %90, i64 0, i32 1, i32 0, i32 6
  %91 = load i32, ptr %blockChecksumFlag69, align 4
  %call70 = call i64 @LZ4F_makeBlock(ptr noundef %82, ptr noundef %83, i64 noundef %84, ptr noundef %85, ptr noundef %87, i32 noundef %88, ptr noundef %89, i32 noundef %91)
  %92 = load ptr, ptr %dstPtr, align 8
  %add.ptr71 = getelementptr inbounds i8, ptr %92, i64 %call70
  store ptr %add.ptr71, ptr %dstPtr, align 8
  %93 = load i64, ptr %blockSize, align 8
  %94 = load ptr, ptr %srcPtr, align 8
  %add.ptr72 = getelementptr inbounds i8, ptr %94, i64 %93
  store ptr %add.ptr72, ptr %srcPtr, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %95 = load ptr, ptr %cctxPtr.addr, align 8
  %autoFlush = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %95, i64 0, i32 1, i32 2
  %96 = load i32, ptr %autoFlush, align 4
  %tobool74.not = icmp eq i32 %96, 0
  br i1 %tobool74.not, label %if.end90, label %land.lhs.true75

land.lhs.true75:                                  ; preds = %while.end
  %97 = load ptr, ptr %srcPtr, align 8
  %98 = load ptr, ptr %srcEnd, align 8
  %cmp76 = icmp ult ptr %97, %98
  br i1 %cmp76, label %if.then77, label %if.end90

if.then77:                                        ; preds = %land.lhs.true75
  store i32 2, ptr %lastBlockCompressed, align 4
  %99 = load ptr, ptr %dstPtr, align 8
  %100 = load ptr, ptr %srcPtr, align 8
  %101 = load ptr, ptr %srcEnd, align 8
  %sub.ptr.lhs.cast78 = ptrtoint ptr %101 to i64
  %sub.ptr.rhs.cast79 = ptrtoint ptr %100 to i64
  %sub.ptr.sub80 = sub i64 %sub.ptr.lhs.cast78, %sub.ptr.rhs.cast79
  %102 = load ptr, ptr %compress, align 8
  %103 = load ptr, ptr %cctxPtr.addr, align 8
  %lz4CtxPtr81 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %103, i64 0, i32 12
  %104 = load ptr, ptr %lz4CtxPtr81, align 8
  %compressionLevel83 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %103, i64 0, i32 1, i32 1
  %105 = load i32, ptr %compressionLevel83, align 8
  %cdict84 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %103, i64 0, i32 4
  %106 = load ptr, ptr %cdict84, align 8
  %107 = load ptr, ptr %cctxPtr.addr, align 8
  %blockChecksumFlag87 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %107, i64 0, i32 1, i32 0, i32 6
  %108 = load i32, ptr %blockChecksumFlag87, align 4
  %call88 = call i64 @LZ4F_makeBlock(ptr noundef %99, ptr noundef %100, i64 noundef %sub.ptr.sub80, ptr noundef %102, ptr noundef %104, i32 noundef %105, ptr noundef %106, i32 noundef %108)
  %109 = load ptr, ptr %dstPtr, align 8
  %add.ptr89 = getelementptr inbounds i8, ptr %109, i64 %call88
  store ptr %add.ptr89, ptr %dstPtr, align 8
  %110 = load ptr, ptr %srcEnd, align 8
  store ptr %110, ptr %srcPtr, align 8
  br label %if.end90

if.end90:                                         ; preds = %if.then77, %land.lhs.true75, %while.end
  %111 = load ptr, ptr %cctxPtr.addr, align 8
  %blockMode93 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %111, i64 0, i32 1, i32 0, i32 1
  %112 = load i32, ptr %blockMode93, align 4
  %cmp94 = icmp eq i32 %112, 0
  %113 = load i32, ptr %lastBlockCompressed, align 4
  %cmp96 = icmp eq i32 %113, 2
  %or.cond = select i1 %cmp94, i1 %cmp96, i1 false
  br i1 %or.cond, label %if.then97, label %if.end103

if.then97:                                        ; preds = %if.end90
  %114 = load ptr, ptr %compressOptionsPtr.addr, align 8
  %115 = load i32, ptr %114, align 4
  %tobool98.not = icmp eq i32 %115, 0
  br i1 %tobool98.not, label %if.else101, label %if.then99

if.then99:                                        ; preds = %if.then97
  %116 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpBuff = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %116, i64 0, i32 7
  %117 = load ptr, ptr %tmpBuff, align 8
  %tmpIn100 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %116, i64 0, i32 8
  store ptr %117, ptr %tmpIn100, align 8
  br label %if.end103

if.else101:                                       ; preds = %if.then97
  %118 = load ptr, ptr %cctxPtr.addr, align 8
  call void @LZ4F_localSaveDict(ptr noundef %118)
  br label %if.end103

if.end103:                                        ; preds = %if.then99, %if.else101, %if.end90
  %119 = load ptr, ptr %cctxPtr.addr, align 8
  %autoFlush105 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %119, i64 0, i32 1, i32 2
  %120 = load i32, ptr %autoFlush105, align 4
  %tobool106.not = icmp eq i32 %120, 0
  br i1 %tobool106.not, label %land.lhs.true107, label %if.end114

land.lhs.true107:                                 ; preds = %if.end103
  %121 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpIn108 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %121, i64 0, i32 8
  %122 = load ptr, ptr %tmpIn108, align 8
  %123 = load i64, ptr %blockSize, align 8
  %add.ptr109 = getelementptr inbounds i8, ptr %122, i64 %123
  %tmpBuff110 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %121, i64 0, i32 7
  %124 = load ptr, ptr %tmpBuff110, align 8
  %125 = load ptr, ptr %cctxPtr.addr, align 8
  %maxBufferSize = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %125, i64 0, i32 6
  %126 = load i64, ptr %maxBufferSize, align 8
  %add.ptr111 = getelementptr inbounds i8, ptr %124, i64 %126
  %cmp112 = icmp ugt ptr %add.ptr109, %add.ptr111
  br i1 %cmp112, label %if.then113, label %if.end114

if.then113:                                       ; preds = %land.lhs.true107
  %127 = load ptr, ptr %cctxPtr.addr, align 8
  call void @LZ4F_localSaveDict(ptr noundef %127)
  br label %if.end114

if.end114:                                        ; preds = %if.then113, %land.lhs.true107, %if.end103
  %128 = load ptr, ptr %srcPtr, align 8
  %129 = load ptr, ptr %srcEnd, align 8
  %cmp115 = icmp ult ptr %128, %129
  br i1 %cmp115, label %if.then116, label %if.end125

if.then116:                                       ; preds = %if.end114
  %130 = load ptr, ptr %srcEnd, align 8
  %131 = load ptr, ptr %srcPtr, align 8
  %sub.ptr.lhs.cast118 = ptrtoint ptr %130 to i64
  %sub.ptr.rhs.cast119 = ptrtoint ptr %131 to i64
  %sub.ptr.sub120 = sub i64 %sub.ptr.lhs.cast118, %sub.ptr.rhs.cast119
  store i64 %sub.ptr.sub120, ptr %sizeToCopy117, align 8
  %132 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpIn121 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %132, i64 0, i32 8
  %133 = load ptr, ptr %tmpIn121, align 8
  %134 = load ptr, ptr %srcPtr, align 8
  %135 = call i64 @llvm.objectsize.i64.p0(ptr %133, i1 false, i1 true, i1 false)
  %call123 = call ptr @__memcpy_chk(ptr noundef %133, ptr noundef %134, i64 noundef %sub.ptr.sub120, i64 noundef %135) #9
  %136 = load i64, ptr %sizeToCopy117, align 8
  %137 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpInSize124 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %137, i64 0, i32 9
  store i64 %136, ptr %tmpInSize124, align 8
  br label %if.end125

if.end125:                                        ; preds = %if.then116, %if.end114
  %138 = load ptr, ptr %cctxPtr.addr, align 8
  %contentChecksumFlag = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %138, i64 0, i32 1, i32 0, i32 2
  %139 = load i32, ptr %contentChecksumFlag, align 8
  %cmp128 = icmp eq i32 %139, 1
  br i1 %cmp128, label %if.then129, label %if.end131

if.then129:                                       ; preds = %if.end125
  %140 = load ptr, ptr %cctxPtr.addr, align 8
  %xxh = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %140, i64 0, i32 11
  %141 = load ptr, ptr %srcBuffer.addr, align 8
  %142 = load i64, ptr %srcSize.addr, align 8
  %call130 = call i32 @XXH32_update(ptr noundef nonnull %xxh, ptr noundef %141, i64 noundef %142) #9
  br label %if.end131

if.end131:                                        ; preds = %if.then129, %if.end125
  %143 = load i64, ptr %srcSize.addr, align 8
  %144 = load ptr, ptr %cctxPtr.addr, align 8
  %totalInSize = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %144, i64 0, i32 10
  %145 = load i64, ptr %totalInSize, align 8
  %add132 = add i64 %145, %143
  store i64 %add132, ptr %totalInSize, align 8
  %146 = load ptr, ptr %dstPtr, align 8
  %147 = load ptr, ptr %dstStart, align 8
  %sub.ptr.lhs.cast133 = ptrtoint ptr %146 to i64
  %sub.ptr.rhs.cast134 = ptrtoint ptr %147 to i64
  %sub.ptr.sub135 = sub i64 %sub.ptr.lhs.cast133, %sub.ptr.rhs.cast134
  store i64 %sub.ptr.sub135, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end131, %if.then11, %if.then6, %if.then
  %148 = load i64, ptr %retval, align 8
  ret i64 %148
}

; Function Attrs: nounwind ssp uwtable
define i64 @LZ4F_uncompressedUpdate(ptr noundef %cctxPtr, ptr noundef %dstBuffer, i64 noundef %dstCapacity, ptr noundef %srcBuffer, i64 noundef %srcSize, ptr noundef %compressOptionsPtr) #0 {
entry:
  %call = call i64 @LZ4F_compressUpdateImpl(ptr noundef %cctxPtr, ptr noundef %dstBuffer, i64 noundef %dstCapacity, ptr noundef %srcBuffer, i64 noundef %srcSize, ptr noundef %compressOptionsPtr, i32 noundef 1)
  ret i64 %call
}

; Function Attrs: nounwind ssp uwtable
define i64 @LZ4F_flush(ptr noundef %cctxPtr, ptr noundef %dstBuffer, i64 noundef %dstCapacity, ptr noundef %compressOptionsPtr) #0 {
entry:
  %retval = alloca i64, align 8
  %cctxPtr.addr = alloca ptr, align 8
  %dstCapacity.addr = alloca i64, align 8
  %dstStart = alloca ptr, align 8
  %dstPtr = alloca ptr, align 8
  %compress = alloca ptr, align 8
  store ptr %cctxPtr, ptr %cctxPtr.addr, align 8
  store i64 %dstCapacity, ptr %dstCapacity.addr, align 8
  store ptr %dstBuffer, ptr %dstStart, align 8
  store ptr %dstBuffer, ptr %dstPtr, align 8
  %tmpInSize = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %cctxPtr, i64 0, i32 9
  %0 = load i64, ptr %tmpInSize, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8
  br label %return

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %cctxPtr.addr, align 8
  %cStage = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %1, i64 0, i32 3
  %2 = load i32, ptr %cStage, align 4
  %cmp1.not = icmp eq i32 %2, 1
  br i1 %cmp1.not, label %do.body4, label %if.then2

if.then2:                                         ; preds = %do.body
  store i64 -20, ptr %retval, align 8
  br label %return

do.body4:                                         ; preds = %do.body
  %3 = load i64, ptr %dstCapacity.addr, align 8
  %4 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpInSize5 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %4, i64 0, i32 9
  %5 = load i64, ptr %tmpInSize5, align 8
  %add6 = add i64 %5, 8
  %cmp7 = icmp ult i64 %3, %add6
  br i1 %cmp7, label %if.then8, label %do.end11

if.then8:                                         ; preds = %do.body4
  store i64 -11, ptr %retval, align 8
  br label %return

do.end11:                                         ; preds = %do.body4
  %6 = load ptr, ptr %cctxPtr.addr, align 8
  %blockMode = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %6, i64 0, i32 1, i32 0, i32 1
  %7 = load i32, ptr %blockMode, align 4
  %compressionLevel = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %6, i64 0, i32 1, i32 1
  %8 = load i32, ptr %compressionLevel, align 8
  %blockCompressMode = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %6, i64 0, i32 15
  %9 = load i32, ptr %blockCompressMode, align 4
  %call13 = call ptr @LZ4F_selectCompression(i32 noundef %7, i32 noundef %8, i32 noundef %9)
  store ptr %call13, ptr %compress, align 8
  %10 = load ptr, ptr %dstPtr, align 8
  %11 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpIn = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %11, i64 0, i32 8
  %12 = load ptr, ptr %tmpIn, align 8
  %tmpInSize14 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %11, i64 0, i32 9
  %13 = load i64, ptr %tmpInSize14, align 8
  %14 = load ptr, ptr %compress, align 8
  %lz4CtxPtr = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %11, i64 0, i32 12
  %15 = load ptr, ptr %lz4CtxPtr, align 8
  %16 = load ptr, ptr %cctxPtr.addr, align 8
  %compressionLevel16 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %16, i64 0, i32 1, i32 1
  %17 = load i32, ptr %compressionLevel16, align 8
  %cdict = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %16, i64 0, i32 4
  %18 = load ptr, ptr %cdict, align 8
  %blockChecksumFlag = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %16, i64 0, i32 1, i32 0, i32 6
  %19 = load i32, ptr %blockChecksumFlag, align 4
  %call19 = call i64 @LZ4F_makeBlock(ptr noundef %10, ptr noundef %12, i64 noundef %13, ptr noundef %14, ptr noundef %15, i32 noundef %17, ptr noundef %18, i32 noundef %19)
  %20 = load ptr, ptr %dstPtr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %20, i64 %call19
  store ptr %add.ptr, ptr %dstPtr, align 8
  %21 = load ptr, ptr %cctxPtr.addr, align 8
  %blockMode22 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %21, i64 0, i32 1, i32 0, i32 1
  %22 = load i32, ptr %blockMode22, align 4
  %cmp23 = icmp eq i32 %22, 0
  br i1 %cmp23, label %if.then24, label %if.end28

if.then24:                                        ; preds = %do.end11
  %23 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpInSize25 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %23, i64 0, i32 9
  %24 = load i64, ptr %tmpInSize25, align 8
  %tmpIn26 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %23, i64 0, i32 8
  %25 = load ptr, ptr %tmpIn26, align 8
  %add.ptr27 = getelementptr inbounds i8, ptr %25, i64 %24
  store ptr %add.ptr27, ptr %tmpIn26, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %do.end11
  %26 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpInSize29 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %26, i64 0, i32 9
  store i64 0, ptr %tmpInSize29, align 8
  %tmpIn30 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %26, i64 0, i32 8
  %27 = load ptr, ptr %tmpIn30, align 8
  %maxBlockSize = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %26, i64 0, i32 5
  %28 = load i64, ptr %maxBlockSize, align 8
  %add.ptr31 = getelementptr inbounds i8, ptr %27, i64 %28
  %29 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpBuff = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %29, i64 0, i32 7
  %30 = load ptr, ptr %tmpBuff, align 8
  %maxBufferSize = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %29, i64 0, i32 6
  %31 = load i64, ptr %maxBufferSize, align 8
  %add.ptr32 = getelementptr inbounds i8, ptr %30, i64 %31
  %cmp33 = icmp ugt ptr %add.ptr31, %add.ptr32
  br i1 %cmp33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end28
  %32 = load ptr, ptr %cctxPtr.addr, align 8
  call void @LZ4F_localSaveDict(ptr noundef %32)
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end28
  %33 = load ptr, ptr %dstPtr, align 8
  %34 = load ptr, ptr %dstStart, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %33 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %34 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end35, %if.then8, %if.then2, %if.then
  %35 = load i64, ptr %retval, align 8
  ret i64 %35
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @LZ4F_selectCompression(i32 noundef %blockMode, i32 noundef %level, i32 noundef %compressMode) #0 {
entry:
  %retval = alloca ptr, align 8
  %blockMode.addr = alloca i32, align 4
  %level.addr = alloca i32, align 4
  store i32 %blockMode, ptr %blockMode.addr, align 4
  store i32 %level, ptr %level.addr, align 4
  %cmp = icmp eq i32 %compressMode, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr @LZ4F_doNotCompressBlock, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %level.addr, align 4
  %cmp1 = icmp slt i32 %0, 2
  br i1 %cmp1, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.end
  %1 = load i32, ptr %blockMode.addr, align 4
  %cmp3 = icmp eq i32 %1, 1
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.then2
  store ptr @LZ4F_compressBlock, ptr %retval, align 8
  br label %return

if.end5:                                          ; preds = %if.then2
  store ptr @LZ4F_compressBlock_continue, ptr %retval, align 8
  br label %return

if.end6:                                          ; preds = %if.end
  %2 = load i32, ptr %blockMode.addr, align 4
  %cmp7 = icmp eq i32 %2, 1
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  store ptr @LZ4F_compressBlockHC, ptr %retval, align 8
  br label %return

if.end9:                                          ; preds = %if.end6
  store ptr @LZ4F_compressBlockHC_continue, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end9, %if.then8, %if.end5, %if.then4, %if.then
  %3 = load ptr, ptr %retval, align 8
  ret ptr %3
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
  %2 = load i64, ptr %srcSize.addr, align 8
  %conv = trunc i64 %2 to i32
  %sub = add nsw i32 %conv, -1
  %cond = select i1 %cmp, i32 %sub, i32 1
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
  %call = call i32 %3(ptr noundef %4, ptr noundef %5, ptr noundef nonnull %add.ptr, i32 noundef %conv1, i32 noundef %8, i32 noundef %9, ptr noundef %10) #9
  store i32 %call, ptr %cSize, align 4
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %11 = load i32, ptr %cSize, align 4
  %conv4 = zext i32 %11 to i64
  %12 = load i64, ptr %srcSize.addr, align 8
  %cmp5.not = icmp ugt i64 %12, %conv4
  br i1 %cmp5.not, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %13 = load i64, ptr %srcSize.addr, align 8
  %conv7 = trunc i64 %13 to i32
  store i32 %conv7, ptr %cSize, align 4
  %14 = load ptr, ptr %cSizePtr, align 8
  %or = or i32 %conv7, -2147483648
  call void @LZ4F_writeLE32(ptr noundef %14, i32 noundef %or)
  %add.ptr8 = getelementptr inbounds i8, ptr %14, i64 4
  %15 = load ptr, ptr %src.addr, align 8
  %16 = load i64, ptr %srcSize.addr, align 8
  %add.ptr9 = getelementptr inbounds i8, ptr %14, i64 4
  %17 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr9, i1 false, i1 true, i1 false)
  %call10 = call ptr @__memcpy_chk(ptr noundef nonnull %add.ptr8, ptr noundef %15, i64 noundef %16, i64 noundef %17) #9
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %18 = load ptr, ptr %cSizePtr, align 8
  %19 = load i32, ptr %cSize, align 4
  call void @LZ4F_writeLE32(ptr noundef %18, i32 noundef %19)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %20 = load i32, ptr %crcFlag.addr, align 4
  %tobool.not = icmp eq i32 %20, 0
  br i1 %tobool.not, label %if.end17, label %if.then11

if.then11:                                        ; preds = %if.end
  %21 = load ptr, ptr %cSizePtr, align 8
  %add.ptr12 = getelementptr inbounds i8, ptr %21, i64 4
  %22 = load i32, ptr %cSize, align 4
  %conv13 = zext i32 %22 to i64
  %call14 = call i32 @XXH32(ptr noundef nonnull %add.ptr12, i64 noundef %conv13, i32 noundef 0) #9
  %add.ptr15 = getelementptr inbounds i8, ptr %21, i64 4
  %idx.ext = zext i32 %22 to i64
  %add.ptr16 = getelementptr inbounds i8, ptr %add.ptr15, i64 %idx.ext
  call void @LZ4F_writeLE32(ptr noundef nonnull %add.ptr16, i32 noundef %call14)
  br label %if.end17

if.end17:                                         ; preds = %if.then11, %if.end
  %23 = load i32, ptr %cSize, align 4
  %conv18 = zext i32 %23 to i64
  %add = add nuw nsw i64 %conv18, 4
  %24 = load i32, ptr %crcFlag.addr, align 4
  %conv19 = zext i32 %24 to i64
  %mul = shl nuw nsw i64 %conv19, 2
  %add20 = add nuw nsw i64 %add, %mul
  ret i64 %add20
}

; Function Attrs: nounwind ssp uwtable
define internal void @LZ4F_localSaveDict(ptr noundef %cctxPtr) #0 {
entry:
  %cctxPtr.addr = alloca ptr, align 8
  store ptr %cctxPtr, ptr %cctxPtr.addr, align 8
  %compressionLevel = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %cctxPtr, i64 0, i32 1, i32 1
  %0 = load i32, ptr %compressionLevel, align 8
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %cctxPtr.addr, align 8
  %lz4CtxPtr = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %1, i64 0, i32 12
  %2 = load ptr, ptr %lz4CtxPtr, align 8
  %tmpBuff = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %1, i64 0, i32 7
  %3 = load ptr, ptr %tmpBuff, align 8
  %call = call i32 @LZ4_saveDict(ptr noundef %2, ptr noundef %3, i32 noundef 65536) #9
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr %cctxPtr.addr, align 8
  %lz4CtxPtr1 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %4, i64 0, i32 12
  %5 = load ptr, ptr %lz4CtxPtr1, align 8
  %tmpBuff2 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %4, i64 0, i32 7
  %6 = load ptr, ptr %tmpBuff2, align 8
  %call3 = call i32 @LZ4_saveDictHC(ptr noundef %5, ptr noundef %6, i32 noundef 65536) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call3, %cond.false ]
  %7 = load ptr, ptr %cctxPtr.addr, align 8
  %tmpBuff4 = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %7, i64 0, i32 7
  %8 = load ptr, ptr %tmpBuff4, align 8
  %idx.ext = sext i32 %cond to i64
  %add.ptr = getelementptr inbounds i8, ptr %8, i64 %idx.ext
  %tmpIn = getelementptr inbounds %struct.LZ4F_cctx_s, ptr %7, i64 0, i32 8
  store ptr %add.ptr, ptr %tmpIn, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @LZ4F_writeLE32(ptr noundef %dst, i32 noundef %value32) #0 {
entry:
  %value32.addr = alloca i32, align 4
  %dstPtr = alloca ptr, align 8
  store i32 %value32, ptr %value32.addr, align 4
  store ptr %dst, ptr %dstPtr, align 8
  %conv = trunc i32 %value32 to i8
  store i8 %conv, ptr %dst, align 1
  %shr = lshr i32 %value32, 8
  %conv1 = trunc i32 %shr to i8
  %arrayidx2 = getelementptr inbounds i8, ptr %dst, i64 1
  store i8 %conv1, ptr %arrayidx2, align 1
  %0 = load i32, ptr %value32.addr, align 4
  %shr3 = lshr i32 %0, 16
  %conv4 = trunc i32 %shr3 to i8
  %1 = load ptr, ptr %dstPtr, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %1, i64 2
  store i8 %conv4, ptr %arrayidx5, align 1
  %shr6 = lshr i32 %0, 24
  %conv7 = trunc i32 %shr6 to i8
  %arrayidx8 = getelementptr inbounds i8, ptr %1, i64 3
  store i8 %conv7, ptr %arrayidx8, align 1
  ret void
}

declare i32 @XXH32_digest(ptr noundef) #3

; Function Attrs: nounwind ssp uwtable
define ptr @LZ4F_createDecompressionContext_advanced(ptr noundef %customMem, i32 noundef %version) #0 {
entry:
  %version.addr = alloca i32, align 4
  %dctx = alloca ptr, align 8
  %byval-temp = alloca %struct.LZ4F_CustomMem, align 8
  store i32 %version, ptr %version.addr, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %byval-temp, ptr noundef nonnull align 8 dereferenceable(32) %customMem, i64 32, i1 false)
  %call = call ptr @LZ4F_calloc(i64 noundef 288, ptr noundef nonnull %byval-temp)
  store ptr %call, ptr %dctx, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %dctx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %customMem, i64 32, i1 false)
  %1 = load i32, ptr %version.addr, align 4
  %version1 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %0, i64 0, i32 2
  store i32 %1, ptr %version1, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi ptr [ %0, %if.end ], [ null, %entry ]
  ret ptr %storemerge
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
  %0 = load ptr, ptr %LZ4F_decompressionContextPtr.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  %call = call i64 @LZ4F_returnErrorCode(i32 noundef 21)
  store i64 %call, ptr %retval, align 8
  br label %return

do.end:                                           ; preds = %entry
  %1 = load i32, ptr %versionNumber.addr, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %byval-temp, ptr noundef nonnull align 8 dereferenceable(32) @LZ4F_defaultCMem, i64 32, i1 false)
  %call1 = call ptr @LZ4F_createDecompressionContext_advanced(ptr noundef nonnull %byval-temp, i32 noundef %1)
  %2 = load ptr, ptr %LZ4F_decompressionContextPtr.addr, align 8
  store ptr %call1, ptr %2, align 8
  %cmp2 = icmp eq ptr %call1, null
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %do.end
  %call4 = call i64 @LZ4F_returnErrorCode(i32 noundef 9)
  store i64 %call4, ptr %retval, align 8
  br label %return

if.end5:                                          ; preds = %do.end
  store i64 0, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end5, %if.then3, %if.then
  %3 = load i64, ptr %retval, align 8
  ret i64 %3
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
  %cmp.not = icmp eq ptr %dctx, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %dctx.addr, align 8
  %dStage = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %0, i64 0, i32 3
  %1 = load i32, ptr %dStage, align 4
  %conv = zext i32 %1 to i64
  store i64 %conv, ptr %result, align 8
  %tmpIn = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %0, i64 0, i32 7
  %2 = load ptr, ptr %tmpIn, align 8
  %3 = load ptr, ptr %dctx.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %byval-temp, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  call void @LZ4F_free(ptr noundef %2, ptr noundef nonnull %byval-temp)
  %tmpOutBuffer = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %3, i64 0, i32 10
  %4 = load ptr, ptr %tmpOutBuffer, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %byval-temp2, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  call void @LZ4F_free(ptr noundef %4, ptr noundef nonnull %byval-temp2)
  %5 = load ptr, ptr %dctx.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %byval-temp4, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  call void @LZ4F_free(ptr noundef %5, ptr noundef nonnull %byval-temp4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i64, ptr %result, align 8
  ret i64 %6
}

; Function Attrs: nounwind ssp uwtable
define i64 @LZ4F_dctx_size(ptr noundef %dctx) #0 {
entry:
  %dctx.addr = alloca ptr, align 8
  store ptr %dctx, ptr %dctx.addr, align 8
  %cmp = icmp eq ptr %dctx, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %dctx.addr, align 8
  %tmpIn = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %0, i64 0, i32 7
  %1 = load ptr, ptr %tmpIn, align 8
  %cmp1.not = icmp eq ptr %1, null
  br i1 %cmp1.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end
  %2 = load ptr, ptr %dctx.addr, align 8
  %maxBlockSize = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %2, i64 0, i32 5
  %3 = load i64, ptr %maxBlockSize, align 8
  %phi.bo = add i64 %3, 292
  br label %cond.end

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi i64 [ %phi.bo, %cond.true ], [ 288, %if.end ]
  %4 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %4, i64 0, i32 10
  %5 = load ptr, ptr %tmpOutBuffer, align 8
  %cmp3.not = icmp eq ptr %5, null
  br i1 %cmp3.not, label %cond.end6, label %cond.true4

cond.true4:                                       ; preds = %cond.end
  %6 = load ptr, ptr %dctx.addr, align 8
  %maxBufferSize = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %6, i64 0, i32 6
  %7 = load i64, ptr %maxBufferSize, align 8
  br label %cond.end6

cond.end6:                                        ; preds = %cond.end, %cond.true4
  %cond7 = phi i64 [ %7, %cond.true4 ], [ 0, %cond.end ]
  %add8 = add i64 %cond, %cond7
  br label %return

return:                                           ; preds = %entry, %cond.end6
  %storemerge = phi i64 [ %add8, %cond.end6 ], [ 0, %entry ]
  ret i64 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define void @LZ4F_resetDecompressionContext(ptr noundef %dctx) #0 {
entry:
  %dctx.addr = alloca ptr, align 8
  store ptr %dctx, ptr %dctx.addr, align 8
  %dStage = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %dctx, i64 0, i32 3
  store i32 0, ptr %dStage, align 4
  %dict = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %dctx, i64 0, i32 11
  store ptr null, ptr %dict, align 8
  %dictSize = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %dctx, i64 0, i32 12
  store i64 0, ptr %dictSize, align 8
  %0 = load ptr, ptr %dctx.addr, align 8
  %skipChecksum = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %0, i64 0, i32 18
  store i32 0, ptr %skipChecksum, align 8
  %frameRemainingSize = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %0, i64 0, i32 4
  store i64 0, ptr %frameRemainingSize, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i64 @LZ4F_headerSize(ptr noundef %src, i64 noundef %srcSize) #0 {
entry:
  %retval = alloca i64, align 8
  %src.addr = alloca ptr, align 8
  %srcSize.addr = alloca i64, align 8
  store ptr %src, ptr %src.addr, align 8
  store i64 %srcSize, ptr %srcSize.addr, align 8
  %0 = load ptr, ptr %src.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  %call = call i64 @LZ4F_returnErrorCode(i32 noundef 15)
  store i64 %call, ptr %retval, align 8
  br label %return

do.end:                                           ; preds = %entry
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
  %cmp10.not = icmp eq i32 %call9, 407708164
  br i1 %cmp10.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.end8
  %call12 = call i64 @LZ4F_returnErrorCode(i32 noundef 13)
  store i64 %call12, ptr %retval, align 8
  br label %return

if.end13:                                         ; preds = %if.end8
  %4 = load ptr, ptr %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 4
  %5 = load i8, ptr %arrayidx, align 1
  %6 = and i8 %5, 8
  %7 = or i8 %6, 7
  %8 = shl i8 %5, 2
  %9 = and i8 %8, 4
  %narrow = add nuw nsw i8 %7, %9
  %add21 = zext i8 %narrow to i64
  store i64 %add21, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end13, %if.then11, %if.then7, %if.then2, %if.then
  %10 = load i64, ptr %retval, align 8
  ret i64 %10
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @LZ4F_readLE32(ptr noundef %src) #0 {
entry:
  %srcPtr = alloca ptr, align 8
  store ptr %src, ptr %srcPtr, align 8
  %0 = load i8, ptr %src, align 1
  %conv = zext i8 %0 to i32
  %arrayidx1 = getelementptr inbounds i8, ptr %src, i64 1
  %1 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv2, 8
  %or = or i32 %shl, %conv
  %2 = load ptr, ptr %srcPtr, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %2, i64 2
  %3 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %3 to i32
  %shl5 = shl nuw nsw i32 %conv4, 16
  %or6 = or i32 %or, %shl5
  %arrayidx7 = getelementptr inbounds i8, ptr %2, i64 3
  %4 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %4 to i32
  %shl9 = shl nuw i32 %conv8, 24
  %or10 = or i32 %or6, %shl9
  ret i32 %or10
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
  %0 = load ptr, ptr %frameInfoPtr.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %do.body1

if.then:                                          ; preds = %entry
  %call = call i64 @LZ4F_returnErrorCode(i32 noundef 21)
  store i64 %call, ptr %retval, align 8
  br label %return

do.body1:                                         ; preds = %entry
  %1 = load ptr, ptr %srcSizePtr.addr, align 8
  %cmp2 = icmp eq ptr %1, null
  br i1 %cmp2, label %if.then3, label %do.end6

if.then3:                                         ; preds = %do.body1
  %call4 = call i64 @LZ4F_returnErrorCode(i32 noundef 21)
  store i64 %call4, ptr %retval, align 8
  br label %return

do.end6:                                          ; preds = %do.body1
  %2 = load ptr, ptr %dctx.addr, align 8
  %dStage = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %2, i64 0, i32 3
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
  %frameInfo = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %6, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %frameInfo, i64 32, i1 false)
  %call9 = call i64 @LZ4F_decompress(ptr noundef %6, ptr noundef null, ptr noundef nonnull %o, ptr noundef null, ptr noundef nonnull %i, ptr noundef null)
  store i64 %call9, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %do.end6
  %7 = load ptr, ptr %dctx.addr, align 8
  %dStage10 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %7, i64 0, i32 3
  %8 = load i32, ptr %dStage10, align 4
  %cmp11 = icmp eq i32 %8, 1
  br i1 %cmp11, label %if.then12, label %if.else14

if.then12:                                        ; preds = %if.else
  %9 = load ptr, ptr %srcSizePtr.addr, align 8
  store i64 0, ptr %9, align 8
  %call13 = call i64 @LZ4F_returnErrorCode(i32 noundef 19)
  store i64 %call13, ptr %retval, align 8
  br label %return

if.else14:                                        ; preds = %if.else
  %10 = load ptr, ptr %srcBuffer.addr, align 8
  %11 = load ptr, ptr %srcSizePtr.addr, align 8
  %12 = load i64, ptr %11, align 8
  %call15 = call i64 @LZ4F_headerSize(ptr noundef %10, i64 noundef %12)
  store i64 %call15, ptr %hSize, align 8
  %call16 = call i32 @LZ4F_isError(i64 noundef %call15)
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.else14
  %13 = load ptr, ptr %srcSizePtr.addr, align 8
  store i64 0, ptr %13, align 8
  %14 = load i64, ptr %hSize, align 8
  store i64 %14, ptr %retval, align 8
  br label %return

if.end18:                                         ; preds = %if.else14
  %15 = load ptr, ptr %srcSizePtr.addr, align 8
  %16 = load i64, ptr %15, align 8
  %17 = load i64, ptr %hSize, align 8
  %cmp19 = icmp ult i64 %16, %17
  br i1 %cmp19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end18
  %18 = load ptr, ptr %srcSizePtr.addr, align 8
  store i64 0, ptr %18, align 8
  %call21 = call i64 @LZ4F_returnErrorCode(i32 noundef 12)
  store i64 %call21, ptr %retval, align 8
  br label %return

if.end22:                                         ; preds = %if.end18
  %19 = load ptr, ptr %dctx.addr, align 8
  %20 = load ptr, ptr %srcBuffer.addr, align 8
  %21 = load i64, ptr %hSize, align 8
  %call23 = call i64 @LZ4F_decodeHeader(ptr noundef %19, ptr noundef %20, i64 noundef %21)
  store i64 %call23, ptr %decodeResult, align 8
  %call24 = call i32 @LZ4F_isError(i64 noundef %call23)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.else27, label %if.then26

if.then26:                                        ; preds = %if.end22
  %22 = load ptr, ptr %srcSizePtr.addr, align 8
  store i64 0, ptr %22, align 8
  br label %if.end28

if.else27:                                        ; preds = %if.end22
  %23 = load i64, ptr %decodeResult, align 8
  %24 = load ptr, ptr %srcSizePtr.addr, align 8
  store i64 %23, ptr %24, align 8
  store i64 4, ptr %decodeResult, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.else27, %if.then26
  %25 = load ptr, ptr %frameInfoPtr.addr, align 8
  %26 = load ptr, ptr %dctx.addr, align 8
  %frameInfo29 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %26, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %frameInfo29, i64 32, i1 false)
  %27 = load i64, ptr %decodeResult, align 8
  store i64 %27, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end28, %if.then20, %if.then17, %if.then12, %if.then8, %if.then3, %if.then
  %28 = load i64, ptr %retval, align 8
  ret i64 %28
}

; Function Attrs: nounwind ssp uwtable
define i64 @LZ4F_decompress(ptr noundef %dctx, ptr noundef %dstBuffer, ptr noundef %dstSizePtr, ptr noundef %srcBuffer, ptr noundef %srcSizePtr, ptr noundef %decompressOptionsPtr) #0 {
entry:
  %retval = alloca i64, align 8
  %dctx.addr = alloca ptr, align 8
  %dstBuffer.addr = alloca ptr, align 8
  %dstSizePtr.addr = alloca ptr, align 8
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
  %wantedData375 = alloca i64, align 8
  %inputLeft = alloca i64, align 8
  %sizeToCopy382 = alloca i64, align 8
  %readBlockCrc = alloca i32, align 4
  %calcBlockCrc = alloca i32, align 4
  %dict451 = alloca ptr, align 8
  %dictSize453 = alloca i64, align 8
  %decodedSize = alloca i32, align 4
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
  %preserveSize = alloca i64, align 8
  %copySize = alloca i64, align 8
  %oldDictEnd = alloca ptr, align 8
  %oldDictEnd871 = alloca ptr, align 8
  %newDictSize = alloca i64, align 8
  store ptr %dctx, ptr %dctx.addr, align 8
  store ptr %dstBuffer, ptr %dstBuffer.addr, align 8
  store ptr %dstSizePtr, ptr %dstSizePtr.addr, align 8
  store ptr %srcSizePtr, ptr %srcSizePtr.addr, align 8
  store ptr %decompressOptionsPtr, ptr %decompressOptionsPtr.addr, align 8
  store ptr %srcBuffer, ptr %srcStart, align 8
  %0 = load i64, ptr %srcSizePtr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %srcBuffer, i64 %0
  store ptr %add.ptr, ptr %srcEnd, align 8
  store ptr %srcBuffer, ptr %srcPtr, align 8
  %1 = load ptr, ptr %dstBuffer.addr, align 8
  store ptr %1, ptr %dstStart, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %dstStart, align 8
  %3 = load ptr, ptr %dstSizePtr.addr, align 8
  %4 = load i64, ptr %3, align 8
  %add.ptr1 = getelementptr inbounds i8, ptr %2, i64 %4
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi ptr [ %add.ptr1, %cond.true ], [ null, %entry ]
  store ptr %cond, ptr %dstEnd, align 8
  %5 = load ptr, ptr %dstStart, align 8
  store ptr %5, ptr %dstPtr, align 8
  store ptr null, ptr %selectedIn, align 8
  store i32 1, ptr %doAnotherStage, align 4
  store i64 1, ptr %nextSrcSizeHint, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %optionsNull, i8 0, i64 16, i1 false)
  %6 = load ptr, ptr %decompressOptionsPtr.addr, align 8
  %cmp2 = icmp eq ptr %6, null
  %spec.store.select = select i1 %cmp2, ptr %optionsNull, ptr %6
  store ptr %spec.store.select, ptr %decompressOptionsPtr.addr, align 8
  %7 = load ptr, ptr %srcSizePtr.addr, align 8
  store i64 0, ptr %7, align 8
  %8 = load ptr, ptr %dstSizePtr.addr, align 8
  store i64 0, ptr %8, align 8
  %9 = load ptr, ptr %decompressOptionsPtr.addr, align 8
  %skipChecksums = getelementptr inbounds %struct.LZ4F_decompressOptions_t, ptr %9, i64 0, i32 1
  %10 = load i32, ptr %skipChecksums, align 4
  %cmp5 = icmp ne i32 %10, 0
  %conv = zext i1 %cmp5 to i32
  %11 = load ptr, ptr %dctx.addr, align 8
  %skipChecksum = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %11, i64 0, i32 18
  %12 = load i32, ptr %skipChecksum, align 8
  %or = or i32 %12, %conv
  store i32 %or, ptr %skipChecksum, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %cond.end
  %13 = load i32, ptr %doAnotherStage, align 4
  %tobool6.not = icmp eq i32 %13, 0
  br i1 %tobool6.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %14 = load ptr, ptr %dctx.addr, align 8
  %dStage = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %14, i64 0, i32 3
  %15 = load i32, ptr %dStage, align 4
  switch i32 %15, label %sw.epilog [
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
    i32 10, label %do.body642
    i32 11, label %sw.bb669
    i32 12, label %sw.bb718
    i32 13, label %sw.bb735
    i32 14, label %sw.bb786
  ]

sw.bb:                                            ; preds = %while.body
  %16 = load ptr, ptr %srcEnd, align 8
  %17 = load ptr, ptr %srcPtr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %16 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %17 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp7 = icmp ugt i64 %sub.ptr.sub, 18
  br i1 %cmp7, label %if.then9, label %if.end18

if.then9:                                         ; preds = %sw.bb
  %18 = load ptr, ptr %dctx.addr, align 8
  %19 = load ptr, ptr %srcPtr, align 8
  %20 = load ptr, ptr %srcEnd, align 8
  %sub.ptr.lhs.cast10 = ptrtoint ptr %20 to i64
  %sub.ptr.rhs.cast11 = ptrtoint ptr %19 to i64
  %sub.ptr.sub12 = sub i64 %sub.ptr.lhs.cast10, %sub.ptr.rhs.cast11
  %call = call i64 @LZ4F_decodeHeader(ptr noundef %18, ptr noundef %19, i64 noundef %sub.ptr.sub12)
  store i64 %call, ptr %hSize, align 8
  %21 = load i64, ptr %hSize, align 8
  %call13 = call i32 @LZ4F_isError(i64 noundef %21)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %do.end, label %if.then15

if.then15:                                        ; preds = %if.then9
  %22 = load i64, ptr %hSize, align 8
  store i64 %22, ptr %retval, align 8
  br label %return

do.end:                                           ; preds = %if.then9
  %23 = load i64, ptr %hSize, align 8
  %24 = load ptr, ptr %srcPtr, align 8
  %add.ptr17 = getelementptr inbounds i8, ptr %24, i64 %23
  store ptr %add.ptr17, ptr %srcPtr, align 8
  br label %sw.epilog

if.end18:                                         ; preds = %sw.bb
  %25 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %25, i64 0, i32 8
  store i64 0, ptr %tmpInSize, align 8
  %26 = load ptr, ptr %srcEnd, align 8
  %27 = load ptr, ptr %srcPtr, align 8
  %cmp22 = icmp eq ptr %26, %27
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end18
  store i64 7, ptr %retval, align 8
  br label %return

if.end25:                                         ; preds = %if.end18
  %28 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %28, i64 0, i32 9
  store i64 7, ptr %tmpInTarget, align 8
  %dStage26 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %28, i64 0, i32 3
  store i32 1, ptr %dStage26, align 4
  br label %sw.bb27

sw.bb27:                                          ; preds = %if.end25, %while.body
  %29 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget28 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %29, i64 0, i32 9
  %30 = load i64, ptr %tmpInTarget28, align 8
  %tmpInSize29 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %29, i64 0, i32 8
  %31 = load i64, ptr %tmpInSize29, align 8
  %sub = sub i64 %30, %31
  %32 = load ptr, ptr %srcEnd, align 8
  %33 = load ptr, ptr %srcPtr, align 8
  %sub.ptr.lhs.cast30 = ptrtoint ptr %32 to i64
  %sub.ptr.rhs.cast31 = ptrtoint ptr %33 to i64
  %sub.ptr.sub32 = sub i64 %sub.ptr.lhs.cast30, %sub.ptr.rhs.cast31
  %cmp33 = icmp ult i64 %sub, %sub.ptr.sub32
  br i1 %cmp33, label %cond.true35, label %cond.false39

cond.true35:                                      ; preds = %sw.bb27
  %34 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget36 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %34, i64 0, i32 9
  %35 = load i64, ptr %tmpInTarget36, align 8
  %tmpInSize37 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %34, i64 0, i32 8
  %36 = load i64, ptr %tmpInSize37, align 8
  %sub38 = sub i64 %35, %36
  br label %cond.end43

cond.false39:                                     ; preds = %sw.bb27
  %37 = load ptr, ptr %srcEnd, align 8
  %38 = load ptr, ptr %srcPtr, align 8
  %sub.ptr.lhs.cast40 = ptrtoint ptr %37 to i64
  %sub.ptr.rhs.cast41 = ptrtoint ptr %38 to i64
  %sub.ptr.sub42 = sub i64 %sub.ptr.lhs.cast40, %sub.ptr.rhs.cast41
  br label %cond.end43

cond.end43:                                       ; preds = %cond.false39, %cond.true35
  %cond44 = phi i64 [ %sub38, %cond.true35 ], [ %sub.ptr.sub42, %cond.false39 ]
  store i64 %cond44, ptr %sizeToCopy, align 8
  %39 = load ptr, ptr %dctx.addr, align 8
  %header = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %39, i64 0, i32 19
  %tmpInSize45 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %39, i64 0, i32 8
  %40 = load i64, ptr %tmpInSize45, align 8
  %add.ptr46 = getelementptr inbounds i8, ptr %header, i64 %40
  %41 = load ptr, ptr %srcPtr, align 8
  %42 = load i64, ptr %sizeToCopy, align 8
  %43 = load ptr, ptr %dctx.addr, align 8
  %header47 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %43, i64 0, i32 19
  %tmpInSize49 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %43, i64 0, i32 8
  %44 = load i64, ptr %tmpInSize49, align 8
  %add.ptr50 = getelementptr inbounds i8, ptr %header47, i64 %44
  %45 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr50, i1 false, i1 true, i1 false)
  %call51 = call ptr @__memcpy_chk(ptr noundef nonnull %add.ptr46, ptr noundef %41, i64 noundef %42, i64 noundef %45) #9
  %46 = load i64, ptr %sizeToCopy, align 8
  %47 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize52 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %47, i64 0, i32 8
  %48 = load i64, ptr %tmpInSize52, align 8
  %add = add i64 %48, %46
  store i64 %add, ptr %tmpInSize52, align 8
  %49 = load ptr, ptr %srcPtr, align 8
  %add.ptr53 = getelementptr inbounds i8, ptr %49, i64 %46
  store ptr %add.ptr53, ptr %srcPtr, align 8
  %50 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize54 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %50, i64 0, i32 8
  %51 = load i64, ptr %tmpInSize54, align 8
  %tmpInTarget55 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %50, i64 0, i32 9
  %52 = load i64, ptr %tmpInTarget55, align 8
  %cmp56 = icmp ult i64 %51, %52
  br i1 %cmp56, label %if.then58, label %do.body64

if.then58:                                        ; preds = %cond.end43
  %53 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget59 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %53, i64 0, i32 9
  %54 = load i64, ptr %tmpInTarget59, align 8
  %tmpInSize60 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %53, i64 0, i32 8
  %55 = load i64, ptr %tmpInSize60, align 8
  %sub61 = sub i64 %54, %55
  %add62 = add i64 %sub61, 4
  store i64 %add62, ptr %nextSrcSizeHint, align 8
  store i32 0, ptr %doAnotherStage, align 4
  br label %sw.epilog

do.body64:                                        ; preds = %cond.end43
  %56 = load ptr, ptr %dctx.addr, align 8
  %header65 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %56, i64 0, i32 19
  %tmpInTarget67 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %56, i64 0, i32 9
  %57 = load i64, ptr %tmpInTarget67, align 8
  %call68 = call i64 @LZ4F_decodeHeader(ptr noundef %56, ptr noundef nonnull %header65, i64 noundef %57)
  %call69 = call i32 @LZ4F_isError(i64 noundef %call68)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %sw.epilog, label %if.then71

if.then71:                                        ; preds = %do.body64
  %58 = load ptr, ptr %dctx.addr, align 8
  %header72 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %58, i64 0, i32 19
  %tmpInTarget74 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %58, i64 0, i32 9
  %59 = load i64, ptr %tmpInTarget74, align 8
  %call75 = call i64 @LZ4F_decodeHeader(ptr noundef %58, ptr noundef nonnull %header72, i64 noundef %59)
  store i64 %call75, ptr %retval, align 8
  br label %return

sw.bb78:                                          ; preds = %while.body
  %60 = load ptr, ptr %dctx.addr, align 8
  %contentChecksumFlag = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %60, i64 0, i32 1, i32 2
  %61 = load i32, ptr %contentChecksumFlag, align 8
  %tobool79.not = icmp eq i32 %61, 0
  br i1 %tobool79.not, label %if.end82, label %if.then80

if.then80:                                        ; preds = %sw.bb78
  %62 = load ptr, ptr %dctx.addr, align 8
  %xxh = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %62, i64 0, i32 16
  %call81 = call i32 @XXH32_reset(ptr noundef nonnull %xxh, i32 noundef 0) #9
  br label %if.end82

if.end82:                                         ; preds = %if.then80, %sw.bb78
  %63 = load ptr, ptr %dctx.addr, align 8
  %maxBlockSize = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %63, i64 0, i32 5
  %64 = load i64, ptr %maxBlockSize, align 8
  %blockMode = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %63, i64 0, i32 1, i32 1
  %65 = load i32, ptr %blockMode, align 4
  %cmp84 = icmp eq i32 %65, 0
  %cond86 = select i1 %cmp84, i64 131072, i64 0
  %add88 = add i64 %64, %cond86
  store i64 %add88, ptr %bufferNeeded, align 8
  %66 = load ptr, ptr %dctx.addr, align 8
  %maxBufferSize = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %66, i64 0, i32 6
  %67 = load i64, ptr %maxBufferSize, align 8
  %cmp89 = icmp ugt i64 %add88, %67
  br i1 %cmp89, label %if.then91, label %if.end122

if.then91:                                        ; preds = %if.end82
  %68 = load ptr, ptr %dctx.addr, align 8
  %maxBufferSize92 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %68, i64 0, i32 6
  store i64 0, ptr %maxBufferSize92, align 8
  %tmpIn = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %68, i64 0, i32 7
  %69 = load ptr, ptr %tmpIn, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %byval-temp, ptr noundef nonnull align 8 dereferenceable(32) %68, i64 32, i1 false)
  call void @LZ4F_free(ptr noundef %69, ptr noundef nonnull %byval-temp)
  %70 = load ptr, ptr %dctx.addr, align 8
  %maxBlockSize93 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %70, i64 0, i32 5
  %71 = load i64, ptr %maxBlockSize93, align 8
  %add94 = add i64 %71, 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %byval-temp96, ptr noundef nonnull align 8 dereferenceable(32) %70, i64 32, i1 false)
  %call97 = call ptr @LZ4F_malloc(i64 noundef %add94, ptr noundef nonnull %byval-temp96)
  %72 = load ptr, ptr %dctx.addr, align 8
  %tmpIn98 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %72, i64 0, i32 7
  store ptr %call97, ptr %tmpIn98, align 8
  %73 = load ptr, ptr %dctx.addr, align 8
  %tmpIn100 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %73, i64 0, i32 7
  %74 = load ptr, ptr %tmpIn100, align 8
  %cmp101 = icmp eq ptr %74, null
  br i1 %cmp101, label %if.then103, label %do.end106

if.then103:                                       ; preds = %if.then91
  %call104 = call i64 @LZ4F_returnErrorCode(i32 noundef 9)
  store i64 %call104, ptr %retval, align 8
  br label %return

do.end106:                                        ; preds = %if.then91
  %75 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %75, i64 0, i32 10
  %76 = load ptr, ptr %tmpOutBuffer, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %byval-temp108, ptr noundef nonnull align 8 dereferenceable(32) %75, i64 32, i1 false)
  call void @LZ4F_free(ptr noundef %76, ptr noundef nonnull %byval-temp108)
  %77 = load i64, ptr %bufferNeeded, align 8
  %78 = load ptr, ptr %dctx.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %byval-temp110, ptr noundef nonnull align 8 dereferenceable(32) %78, i64 32, i1 false)
  %call111 = call ptr @LZ4F_malloc(i64 noundef %77, ptr noundef nonnull %byval-temp110)
  %79 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer112 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %79, i64 0, i32 10
  store ptr %call111, ptr %tmpOutBuffer112, align 8
  %80 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer114 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %80, i64 0, i32 10
  %81 = load ptr, ptr %tmpOutBuffer114, align 8
  %cmp115 = icmp eq ptr %81, null
  br i1 %cmp115, label %if.then117, label %do.end120

if.then117:                                       ; preds = %do.end106
  %call118 = call i64 @LZ4F_returnErrorCode(i32 noundef 9)
  store i64 %call118, ptr %retval, align 8
  br label %return

do.end120:                                        ; preds = %do.end106
  %82 = load i64, ptr %bufferNeeded, align 8
  %83 = load ptr, ptr %dctx.addr, align 8
  %maxBufferSize121 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %83, i64 0, i32 6
  store i64 %82, ptr %maxBufferSize121, align 8
  br label %if.end122

if.end122:                                        ; preds = %do.end120, %if.end82
  %84 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize123 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %84, i64 0, i32 8
  store i64 0, ptr %tmpInSize123, align 8
  %tmpInTarget124 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %84, i64 0, i32 9
  store i64 0, ptr %tmpInTarget124, align 8
  %tmpOutBuffer125 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %84, i64 0, i32 10
  %85 = load ptr, ptr %tmpOutBuffer125, align 8
  %86 = load ptr, ptr %dctx.addr, align 8
  %tmpOut = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %86, i64 0, i32 13
  store ptr %85, ptr %tmpOut, align 8
  %tmpOutStart = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %86, i64 0, i32 15
  store i64 0, ptr %tmpOutStart, align 8
  %tmpOutSize = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %86, i64 0, i32 14
  store i64 0, ptr %tmpOutSize, align 8
  %87 = load ptr, ptr %dctx.addr, align 8
  %dStage126 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %87, i64 0, i32 3
  store i32 3, ptr %dStage126, align 4
  br label %sw.bb127

sw.bb127:                                         ; preds = %if.end122, %while.body
  %88 = load ptr, ptr %srcEnd, align 8
  %89 = load ptr, ptr %srcPtr, align 8
  %sub.ptr.lhs.cast128 = ptrtoint ptr %88 to i64
  %sub.ptr.rhs.cast129 = ptrtoint ptr %89 to i64
  %sub.ptr.sub130 = sub i64 %sub.ptr.lhs.cast128, %sub.ptr.rhs.cast129
  %cmp131 = icmp ugt i64 %sub.ptr.sub130, 3
  br i1 %cmp131, label %if.then133, label %if.else

if.then133:                                       ; preds = %sw.bb127
  %90 = load ptr, ptr %srcPtr, align 8
  store ptr %90, ptr %selectedIn, align 8
  %add.ptr134 = getelementptr inbounds i8, ptr %90, i64 4
  store ptr %add.ptr134, ptr %srcPtr, align 8
  br label %if.end137

if.else:                                          ; preds = %sw.bb127
  %91 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize135 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %91, i64 0, i32 8
  store i64 0, ptr %tmpInSize135, align 8
  %dStage136 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %91, i64 0, i32 3
  store i32 4, ptr %dStage136, align 4
  br label %if.end137

if.end137:                                        ; preds = %if.else, %if.then133
  %92 = load ptr, ptr %dctx.addr, align 8
  %dStage138 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %92, i64 0, i32 3
  %93 = load i32, ptr %dStage138, align 4
  %cmp139 = icmp eq i32 %93, 4
  br i1 %cmp139, label %sw.bb142, label %if.end173

sw.bb142:                                         ; preds = %if.end137, %while.body
  %94 = load ptr, ptr %srcEnd, align 8
  %95 = load ptr, ptr %srcPtr, align 8
  %sub.ptr.lhs.cast143 = ptrtoint ptr %94 to i64
  %sub.ptr.rhs.cast144 = ptrtoint ptr %95 to i64
  %sub.ptr.sub145 = sub i64 %sub.ptr.lhs.cast143, %sub.ptr.rhs.cast144
  store i64 %sub.ptr.sub145, ptr %remainingInput, align 8
  %96 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize146 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %96, i64 0, i32 8
  %97 = load i64, ptr %tmpInSize146, align 8
  %sub147 = sub i64 4, %97
  store i64 %sub147, ptr %wantedData, align 8
  %cmp149 = icmp ult i64 %sub147, %sub.ptr.sub145
  %98 = load i64, ptr %wantedData, align 8
  %99 = load i64, ptr %remainingInput, align 8
  %cond154 = select i1 %cmp149, i64 %98, i64 %99
  store i64 %cond154, ptr %sizeToCopy148, align 8
  %100 = load ptr, ptr %dctx.addr, align 8
  %tmpIn155 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %100, i64 0, i32 7
  %101 = load ptr, ptr %tmpIn155, align 8
  %tmpInSize156 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %100, i64 0, i32 8
  %102 = load i64, ptr %tmpInSize156, align 8
  %add.ptr157 = getelementptr inbounds i8, ptr %101, i64 %102
  %103 = load ptr, ptr %srcPtr, align 8
  %104 = load i64, ptr %sizeToCopy148, align 8
  %105 = load ptr, ptr %dctx.addr, align 8
  %tmpIn158 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %105, i64 0, i32 7
  %106 = load ptr, ptr %tmpIn158, align 8
  %tmpInSize159 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %105, i64 0, i32 8
  %107 = load i64, ptr %tmpInSize159, align 8
  %add.ptr160 = getelementptr inbounds i8, ptr %106, i64 %107
  %108 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr160, i1 false, i1 true, i1 false)
  %call161 = call ptr @__memcpy_chk(ptr noundef %add.ptr157, ptr noundef %103, i64 noundef %104, i64 noundef %108) #9
  %109 = load i64, ptr %sizeToCopy148, align 8
  %110 = load ptr, ptr %srcPtr, align 8
  %add.ptr162 = getelementptr inbounds i8, ptr %110, i64 %109
  store ptr %add.ptr162, ptr %srcPtr, align 8
  %111 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize163 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %111, i64 0, i32 8
  %112 = load i64, ptr %tmpInSize163, align 8
  %add164 = add i64 %112, %109
  store i64 %add164, ptr %tmpInSize163, align 8
  %cmp166 = icmp ult i64 %add164, 4
  br i1 %cmp166, label %if.then168, label %if.end171

if.then168:                                       ; preds = %sw.bb142
  %113 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize169 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %113, i64 0, i32 8
  %114 = load i64, ptr %tmpInSize169, align 8
  %sub170 = sub i64 4, %114
  store i64 %sub170, ptr %nextSrcSizeHint, align 8
  store i32 0, ptr %doAnotherStage, align 4
  br label %sw.epilog

if.end171:                                        ; preds = %sw.bb142
  %115 = load ptr, ptr %dctx.addr, align 8
  %tmpIn172 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %115, i64 0, i32 7
  %116 = load ptr, ptr %tmpIn172, align 8
  store ptr %116, ptr %selectedIn, align 8
  br label %if.end173

if.end173:                                        ; preds = %if.end171, %if.end137
  %117 = load ptr, ptr %selectedIn, align 8
  %call174 = call i32 @LZ4F_readLE32(ptr noundef %117)
  store i32 %call174, ptr %blockHeader, align 4
  %and = and i32 %call174, 2147483647
  %conv175 = zext i32 %and to i64
  store i64 %conv175, ptr %nextCBlockSize, align 8
  %118 = load ptr, ptr %dctx.addr, align 8
  %blockChecksumFlag = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %118, i64 0, i32 1, i32 6
  %119 = load i32, ptr %blockChecksumFlag, align 4
  %conv177 = zext i32 %119 to i64
  %mul = shl nuw nsw i64 %conv177, 2
  store i64 %mul, ptr %crcSize, align 8
  %120 = load i32, ptr %blockHeader, align 4
  %cmp178 = icmp eq i32 %120, 0
  br i1 %cmp178, label %if.then180, label %if.end182

if.then180:                                       ; preds = %if.end173
  %121 = load ptr, ptr %dctx.addr, align 8
  %dStage181 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %121, i64 0, i32 3
  store i32 10, ptr %dStage181, align 4
  br label %sw.epilog

if.end182:                                        ; preds = %if.end173
  %122 = load i64, ptr %nextCBlockSize, align 8
  %123 = load ptr, ptr %dctx.addr, align 8
  %maxBlockSize183 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %123, i64 0, i32 5
  %124 = load i64, ptr %maxBlockSize183, align 8
  %cmp184 = icmp ugt i64 %122, %124
  br i1 %cmp184, label %if.then186, label %if.end188

if.then186:                                       ; preds = %if.end182
  %call187 = call i64 @LZ4F_returnErrorCode(i32 noundef 2)
  store i64 %call187, ptr %retval, align 8
  br label %return

if.end188:                                        ; preds = %if.end182
  %125 = load i32, ptr %blockHeader, align 4
  %tobool190.not = icmp sgt i32 %125, -1
  br i1 %tobool190.not, label %if.end200, label %if.then191

if.then191:                                       ; preds = %if.end188
  %126 = load i64, ptr %nextCBlockSize, align 8
  %127 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget192 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %127, i64 0, i32 9
  store i64 %126, ptr %tmpInTarget192, align 8
  %blockChecksumFlag194 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %127, i64 0, i32 1, i32 6
  %128 = load i32, ptr %blockChecksumFlag194, align 4
  %tobool195.not = icmp eq i32 %128, 0
  br i1 %tobool195.not, label %if.end198, label %if.then196

if.then196:                                       ; preds = %if.then191
  %129 = load ptr, ptr %dctx.addr, align 8
  %blockChecksum = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %129, i64 0, i32 17
  %call197 = call i32 @XXH32_reset(ptr noundef nonnull %blockChecksum, i32 noundef 0) #9
  br label %if.end198

if.end198:                                        ; preds = %if.then196, %if.then191
  %130 = load ptr, ptr %dctx.addr, align 8
  %dStage199 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %130, i64 0, i32 3
  store i32 5, ptr %dStage199, align 4
  br label %sw.epilog

if.end200:                                        ; preds = %if.end188
  %131 = load i64, ptr %nextCBlockSize, align 8
  %132 = load i64, ptr %crcSize, align 8
  %add201 = add i64 %131, %132
  %133 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget202 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %133, i64 0, i32 9
  store i64 %add201, ptr %tmpInTarget202, align 8
  %dStage203 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %133, i64 0, i32 3
  store i32 7, ptr %dStage203, align 4
  %134 = load ptr, ptr %dstPtr, align 8
  %135 = load ptr, ptr %dstEnd, align 8
  %cmp204 = icmp eq ptr %134, %135
  br i1 %cmp204, label %if.then208, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end200
  %136 = load ptr, ptr %srcPtr, align 8
  %137 = load ptr, ptr %srcEnd, align 8
  %cmp206 = icmp eq ptr %136, %137
  br i1 %cmp206, label %if.then208, label %sw.epilog

if.then208:                                       ; preds = %lor.lhs.false, %if.end200
  %138 = load i64, ptr %nextCBlockSize, align 8
  %add209 = add i64 %138, 4
  %139 = load i64, ptr %crcSize, align 8
  %add210 = add i64 %add209, %139
  store i64 %add210, ptr %nextSrcSizeHint, align 8
  store i32 0, ptr %doAnotherStage, align 4
  br label %sw.epilog

sw.bb212:                                         ; preds = %while.body
  %140 = load ptr, ptr %dstPtr, align 8
  %cmp214 = icmp eq ptr %140, null
  br i1 %cmp214, label %if.then216, label %if.else217

if.then216:                                       ; preds = %sw.bb212
  store i64 0, ptr %sizeToCopy213, align 8
  br label %if.end276

if.else217:                                       ; preds = %sw.bb212
  %141 = load ptr, ptr %srcEnd, align 8
  %142 = load ptr, ptr %srcPtr, align 8
  %sub.ptr.lhs.cast218 = ptrtoint ptr %141 to i64
  %sub.ptr.rhs.cast219 = ptrtoint ptr %142 to i64
  %sub.ptr.sub220 = sub i64 %sub.ptr.lhs.cast218, %sub.ptr.rhs.cast219
  %143 = load ptr, ptr %dstEnd, align 8
  %144 = load ptr, ptr %dstPtr, align 8
  %sub.ptr.lhs.cast221 = ptrtoint ptr %143 to i64
  %sub.ptr.rhs.cast222 = ptrtoint ptr %144 to i64
  %sub.ptr.sub223 = sub i64 %sub.ptr.lhs.cast221, %sub.ptr.rhs.cast222
  %cmp224 = icmp ult i64 %sub.ptr.sub220, %sub.ptr.sub223
  br i1 %cmp224, label %cond.true226, label %cond.false230

cond.true226:                                     ; preds = %if.else217
  %145 = load ptr, ptr %srcEnd, align 8
  %146 = load ptr, ptr %srcPtr, align 8
  %sub.ptr.lhs.cast227 = ptrtoint ptr %145 to i64
  %sub.ptr.rhs.cast228 = ptrtoint ptr %146 to i64
  %sub.ptr.sub229 = sub i64 %sub.ptr.lhs.cast227, %sub.ptr.rhs.cast228
  br label %cond.end234

cond.false230:                                    ; preds = %if.else217
  %147 = load ptr, ptr %dstEnd, align 8
  %148 = load ptr, ptr %dstPtr, align 8
  %sub.ptr.lhs.cast231 = ptrtoint ptr %147 to i64
  %sub.ptr.rhs.cast232 = ptrtoint ptr %148 to i64
  %sub.ptr.sub233 = sub i64 %sub.ptr.lhs.cast231, %sub.ptr.rhs.cast232
  br label %cond.end234

cond.end234:                                      ; preds = %cond.false230, %cond.true226
  %cond235 = phi i64 [ %sub.ptr.sub229, %cond.true226 ], [ %sub.ptr.sub233, %cond.false230 ]
  store i64 %cond235, ptr %minBuffSize, align 8
  %149 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget236 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %149, i64 0, i32 9
  %150 = load i64, ptr %tmpInTarget236, align 8
  %cmp237 = icmp ult i64 %150, %cond235
  br i1 %cmp237, label %cond.true239, label %cond.false241

cond.true239:                                     ; preds = %cond.end234
  %151 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget240 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %151, i64 0, i32 9
  %152 = load i64, ptr %tmpInTarget240, align 8
  br label %cond.end242

cond.false241:                                    ; preds = %cond.end234
  %153 = load i64, ptr %minBuffSize, align 8
  br label %cond.end242

cond.end242:                                      ; preds = %cond.false241, %cond.true239
  %cond243 = phi i64 [ %152, %cond.true239 ], [ %153, %cond.false241 ]
  store i64 %cond243, ptr %sizeToCopy213, align 8
  %154 = load ptr, ptr %dstPtr, align 8
  %155 = load ptr, ptr %srcPtr, align 8
  %156 = call i64 @llvm.objectsize.i64.p0(ptr %154, i1 false, i1 true, i1 false)
  %call244 = call ptr @__memcpy_chk(ptr noundef %154, ptr noundef %155, i64 noundef %cond243, i64 noundef %156) #9
  %157 = load ptr, ptr %dctx.addr, align 8
  %skipChecksum245 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %157, i64 0, i32 18
  %158 = load i32, ptr %skipChecksum245, align 8
  %tobool246.not = icmp eq i32 %158, 0
  br i1 %tobool246.not, label %if.then247, label %if.end262

if.then247:                                       ; preds = %cond.end242
  %159 = load ptr, ptr %dctx.addr, align 8
  %blockChecksumFlag249 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %159, i64 0, i32 1, i32 6
  %160 = load i32, ptr %blockChecksumFlag249, align 4
  %tobool250.not = icmp eq i32 %160, 0
  br i1 %tobool250.not, label %if.end254, label %if.then251

if.then251:                                       ; preds = %if.then247
  %161 = load ptr, ptr %dctx.addr, align 8
  %blockChecksum252 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %161, i64 0, i32 17
  %162 = load ptr, ptr %srcPtr, align 8
  %163 = load i64, ptr %sizeToCopy213, align 8
  %call253 = call i32 @XXH32_update(ptr noundef nonnull %blockChecksum252, ptr noundef %162, i64 noundef %163) #9
  br label %if.end254

if.end254:                                        ; preds = %if.then251, %if.then247
  %164 = load ptr, ptr %dctx.addr, align 8
  %contentChecksumFlag256 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %164, i64 0, i32 1, i32 2
  %165 = load i32, ptr %contentChecksumFlag256, align 8
  %tobool257.not = icmp eq i32 %165, 0
  br i1 %tobool257.not, label %if.end262, label %if.then258

if.then258:                                       ; preds = %if.end254
  %166 = load ptr, ptr %dctx.addr, align 8
  %xxh259 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %166, i64 0, i32 16
  %167 = load ptr, ptr %srcPtr, align 8
  %168 = load i64, ptr %sizeToCopy213, align 8
  %call260 = call i32 @XXH32_update(ptr noundef nonnull %xxh259, ptr noundef %167, i64 noundef %168) #9
  br label %if.end262

if.end262:                                        ; preds = %if.end254, %if.then258, %cond.end242
  %169 = load ptr, ptr %dctx.addr, align 8
  %contentSize = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %169, i64 0, i32 1, i32 4
  %170 = load i64, ptr %contentSize, align 8
  %tobool264.not = icmp eq i64 %170, 0
  br i1 %tobool264.not, label %if.end267, label %if.then265

if.then265:                                       ; preds = %if.end262
  %171 = load i64, ptr %sizeToCopy213, align 8
  %172 = load ptr, ptr %dctx.addr, align 8
  %frameRemainingSize = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %172, i64 0, i32 4
  %173 = load i64, ptr %frameRemainingSize, align 8
  %sub266 = sub i64 %173, %171
  store i64 %sub266, ptr %frameRemainingSize, align 8
  br label %if.end267

if.end267:                                        ; preds = %if.then265, %if.end262
  %174 = load ptr, ptr %dctx.addr, align 8
  %blockMode269 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %174, i64 0, i32 1, i32 1
  %175 = load i32, ptr %blockMode269, align 4
  %cmp270 = icmp eq i32 %175, 0
  br i1 %cmp270, label %if.then272, label %if.end273

if.then272:                                       ; preds = %if.end267
  %176 = load ptr, ptr %dctx.addr, align 8
  %177 = load ptr, ptr %dstPtr, align 8
  %178 = load i64, ptr %sizeToCopy213, align 8
  %179 = load ptr, ptr %dstStart, align 8
  call void @LZ4F_updateDict(ptr noundef %176, ptr noundef %177, i64 noundef %178, ptr noundef %179, i32 noundef 0)
  br label %if.end273

if.end273:                                        ; preds = %if.then272, %if.end267
  %180 = load i64, ptr %sizeToCopy213, align 8
  %181 = load ptr, ptr %srcPtr, align 8
  %add.ptr274 = getelementptr inbounds i8, ptr %181, i64 %180
  store ptr %add.ptr274, ptr %srcPtr, align 8
  %182 = load ptr, ptr %dstPtr, align 8
  %add.ptr275 = getelementptr inbounds i8, ptr %182, i64 %180
  store ptr %add.ptr275, ptr %dstPtr, align 8
  br label %if.end276

if.end276:                                        ; preds = %if.end273, %if.then216
  %183 = load i64, ptr %sizeToCopy213, align 8
  %184 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget277 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %184, i64 0, i32 9
  %185 = load i64, ptr %tmpInTarget277, align 8
  %cmp278 = icmp eq i64 %183, %185
  br i1 %cmp278, label %if.then280, label %if.end290

if.then280:                                       ; preds = %if.end276
  %186 = load ptr, ptr %dctx.addr, align 8
  %blockChecksumFlag282 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %186, i64 0, i32 1, i32 6
  %187 = load i32, ptr %blockChecksumFlag282, align 4
  %tobool283.not = icmp eq i32 %187, 0
  br i1 %tobool283.not, label %if.else287, label %if.then284

if.then284:                                       ; preds = %if.then280
  %188 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize285 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %188, i64 0, i32 8
  store i64 0, ptr %tmpInSize285, align 8
  %dStage286 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %188, i64 0, i32 3
  store i32 6, ptr %dStage286, align 4
  br label %sw.epilog

if.else287:                                       ; preds = %if.then280
  %189 = load ptr, ptr %dctx.addr, align 8
  %dStage288 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %189, i64 0, i32 3
  store i32 3, ptr %dStage288, align 4
  br label %sw.epilog

if.end290:                                        ; preds = %if.end276
  %190 = load i64, ptr %sizeToCopy213, align 8
  %191 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget291 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %191, i64 0, i32 9
  %192 = load i64, ptr %tmpInTarget291, align 8
  %sub292 = sub i64 %192, %190
  store i64 %sub292, ptr %tmpInTarget291, align 8
  %blockChecksumFlag295 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %191, i64 0, i32 1, i32 6
  %193 = load i32, ptr %blockChecksumFlag295, align 4
  %tobool296.not = icmp eq i32 %193, 0
  %cond297 = select i1 %tobool296.not, i64 0, i64 4
  %add298 = add i64 %sub292, %cond297
  %add299 = add i64 %add298, 4
  store i64 %add299, ptr %nextSrcSizeHint, align 8
  store i32 0, ptr %doAnotherStage, align 4
  br label %sw.epilog

sw.bb300:                                         ; preds = %while.body
  %194 = load ptr, ptr %srcEnd, align 8
  %195 = load ptr, ptr %srcPtr, align 8
  %sub.ptr.lhs.cast301 = ptrtoint ptr %194 to i64
  %sub.ptr.rhs.cast302 = ptrtoint ptr %195 to i64
  %sub.ptr.sub303 = sub i64 %sub.ptr.lhs.cast301, %sub.ptr.rhs.cast302
  %cmp304 = icmp sgt i64 %sub.ptr.sub303, 3
  br i1 %cmp304, label %land.lhs.true, label %if.else311

land.lhs.true:                                    ; preds = %sw.bb300
  %196 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize306 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %196, i64 0, i32 8
  %197 = load i64, ptr %tmpInSize306, align 8
  %cmp307 = icmp eq i64 %197, 0
  br i1 %cmp307, label %if.then309, label %if.else311

if.then309:                                       ; preds = %land.lhs.true
  %198 = load ptr, ptr %srcPtr, align 8
  store ptr %198, ptr %crcSrc, align 8
  %add.ptr310 = getelementptr inbounds i8, ptr %198, i64 4
  store ptr %add.ptr310, ptr %srcPtr, align 8
  br label %if.end346

if.else311:                                       ; preds = %land.lhs.true, %sw.bb300
  %199 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize312 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %199, i64 0, i32 8
  %200 = load i64, ptr %tmpInSize312, align 8
  %sub313 = sub i64 4, %200
  store i64 %sub313, ptr %stillToCopy, align 8
  %201 = load ptr, ptr %srcEnd, align 8
  %202 = load ptr, ptr %srcPtr, align 8
  %sub.ptr.lhs.cast315 = ptrtoint ptr %201 to i64
  %sub.ptr.rhs.cast316 = ptrtoint ptr %202 to i64
  %sub.ptr.sub317 = sub i64 %sub.ptr.lhs.cast315, %sub.ptr.rhs.cast316
  %cmp318 = icmp ult i64 %sub313, %sub.ptr.sub317
  %203 = load i64, ptr %stillToCopy, align 8
  %204 = load ptr, ptr %srcEnd, align 8
  %205 = load ptr, ptr %srcPtr, align 8
  %sub.ptr.lhs.cast322 = ptrtoint ptr %204 to i64
  %sub.ptr.rhs.cast323 = ptrtoint ptr %205 to i64
  %sub.ptr.sub324 = sub i64 %sub.ptr.lhs.cast322, %sub.ptr.rhs.cast323
  %cond326 = select i1 %cmp318, i64 %203, i64 %sub.ptr.sub324
  store i64 %cond326, ptr %sizeToCopy314, align 8
  %206 = load ptr, ptr %dctx.addr, align 8
  %header327 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %206, i64 0, i32 19
  %tmpInSize329 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %206, i64 0, i32 8
  %207 = load i64, ptr %tmpInSize329, align 8
  %add.ptr330 = getelementptr inbounds i8, ptr %header327, i64 %207
  %208 = load ptr, ptr %srcPtr, align 8
  %209 = load i64, ptr %sizeToCopy314, align 8
  %210 = load ptr, ptr %dctx.addr, align 8
  %header331 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %210, i64 0, i32 19
  %tmpInSize333 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %210, i64 0, i32 8
  %211 = load i64, ptr %tmpInSize333, align 8
  %add.ptr334 = getelementptr inbounds i8, ptr %header331, i64 %211
  %212 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr334, i1 false, i1 true, i1 false)
  %call335 = call ptr @__memcpy_chk(ptr noundef nonnull %add.ptr330, ptr noundef %208, i64 noundef %209, i64 noundef %212) #9
  %213 = load i64, ptr %sizeToCopy314, align 8
  %214 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize336 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %214, i64 0, i32 8
  %215 = load i64, ptr %tmpInSize336, align 8
  %add337 = add i64 %215, %213
  store i64 %add337, ptr %tmpInSize336, align 8
  %216 = load ptr, ptr %srcPtr, align 8
  %add.ptr338 = getelementptr inbounds i8, ptr %216, i64 %213
  store ptr %add.ptr338, ptr %srcPtr, align 8
  %217 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize339 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %217, i64 0, i32 8
  %218 = load i64, ptr %tmpInSize339, align 8
  %cmp340 = icmp ult i64 %218, 4
  br i1 %cmp340, label %if.then342, label %if.end343

if.then342:                                       ; preds = %if.else311
  store i32 0, ptr %doAnotherStage, align 4
  br label %sw.epilog

if.end343:                                        ; preds = %if.else311
  %219 = load ptr, ptr %dctx.addr, align 8
  %header344 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %219, i64 0, i32 19
  store ptr %header344, ptr %crcSrc, align 8
  br label %if.end346

if.end346:                                        ; preds = %if.end343, %if.then309
  %220 = load ptr, ptr %dctx.addr, align 8
  %skipChecksum347 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %220, i64 0, i32 18
  %221 = load i32, ptr %skipChecksum347, align 8
  %tobool348.not = icmp eq i32 %221, 0
  br i1 %tobool348.not, label %if.then349, label %if.end358

if.then349:                                       ; preds = %if.end346
  %222 = load ptr, ptr %crcSrc, align 8
  %call350 = call i32 @LZ4F_readLE32(ptr noundef %222)
  %223 = load ptr, ptr %dctx.addr, align 8
  %blockChecksum351 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %223, i64 0, i32 17
  %call352 = call i32 @XXH32_digest(ptr noundef nonnull %blockChecksum351) #9
  %cmp353.not = icmp eq i32 %call350, %call352
  br i1 %cmp353.not, label %if.end358, label %if.then355

if.then355:                                       ; preds = %if.then349
  %call356 = call i64 @LZ4F_returnErrorCode(i32 noundef 7)
  store i64 %call356, ptr %retval, align 8
  br label %return

if.end358:                                        ; preds = %if.then349, %if.end346
  %224 = load ptr, ptr %dctx.addr, align 8
  %dStage359 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %224, i64 0, i32 3
  store i32 3, ptr %dStage359, align 4
  br label %sw.epilog

sw.bb360:                                         ; preds = %while.body
  %225 = load ptr, ptr %srcEnd, align 8
  %226 = load ptr, ptr %srcPtr, align 8
  %sub.ptr.lhs.cast361 = ptrtoint ptr %225 to i64
  %sub.ptr.rhs.cast362 = ptrtoint ptr %226 to i64
  %sub.ptr.sub363 = sub i64 %sub.ptr.lhs.cast361, %sub.ptr.rhs.cast362
  %227 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget364 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %227, i64 0, i32 9
  %228 = load i64, ptr %tmpInTarget364, align 8
  %cmp365 = icmp ult i64 %sub.ptr.sub363, %228
  br i1 %cmp365, label %if.then367, label %if.end370

if.then367:                                       ; preds = %sw.bb360
  %229 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize368 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %229, i64 0, i32 8
  store i64 0, ptr %tmpInSize368, align 8
  %dStage369 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %229, i64 0, i32 3
  store i32 8, ptr %dStage369, align 4
  br label %sw.epilog

if.end370:                                        ; preds = %sw.bb360
  %230 = load ptr, ptr %srcPtr, align 8
  store ptr %230, ptr %selectedIn, align 8
  %231 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget371 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %231, i64 0, i32 9
  %232 = load i64, ptr %tmpInTarget371, align 8
  %add.ptr372 = getelementptr inbounds i8, ptr %230, i64 %232
  store ptr %add.ptr372, ptr %srcPtr, align 8
  br label %if.end415

sw.bb374:                                         ; preds = %while.body
  %233 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget376 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %233, i64 0, i32 9
  %234 = load i64, ptr %tmpInTarget376, align 8
  %tmpInSize377 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %233, i64 0, i32 8
  %235 = load i64, ptr %tmpInSize377, align 8
  %sub378 = sub i64 %234, %235
  store i64 %sub378, ptr %wantedData375, align 8
  %236 = load ptr, ptr %srcEnd, align 8
  %237 = load ptr, ptr %srcPtr, align 8
  %sub.ptr.lhs.cast379 = ptrtoint ptr %236 to i64
  %sub.ptr.rhs.cast380 = ptrtoint ptr %237 to i64
  %sub.ptr.sub381 = sub i64 %sub.ptr.lhs.cast379, %sub.ptr.rhs.cast380
  store i64 %sub.ptr.sub381, ptr %inputLeft, align 8
  %238 = load i64, ptr %wantedData375, align 8
  %cmp383 = icmp ult i64 %238, %sub.ptr.sub381
  %239 = load i64, ptr %wantedData375, align 8
  %240 = load i64, ptr %inputLeft, align 8
  %cond388 = select i1 %cmp383, i64 %239, i64 %240
  store i64 %cond388, ptr %sizeToCopy382, align 8
  %241 = load ptr, ptr %dctx.addr, align 8
  %tmpIn389 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %241, i64 0, i32 7
  %242 = load ptr, ptr %tmpIn389, align 8
  %tmpInSize390 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %241, i64 0, i32 8
  %243 = load i64, ptr %tmpInSize390, align 8
  %add.ptr391 = getelementptr inbounds i8, ptr %242, i64 %243
  %244 = load ptr, ptr %srcPtr, align 8
  %245 = load i64, ptr %sizeToCopy382, align 8
  %246 = load ptr, ptr %dctx.addr, align 8
  %tmpIn392 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %246, i64 0, i32 7
  %247 = load ptr, ptr %tmpIn392, align 8
  %tmpInSize393 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %246, i64 0, i32 8
  %248 = load i64, ptr %tmpInSize393, align 8
  %add.ptr394 = getelementptr inbounds i8, ptr %247, i64 %248
  %249 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr394, i1 false, i1 true, i1 false)
  %call395 = call ptr @__memcpy_chk(ptr noundef %add.ptr391, ptr noundef %244, i64 noundef %245, i64 noundef %249) #9
  %250 = load i64, ptr %sizeToCopy382, align 8
  %251 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize396 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %251, i64 0, i32 8
  %252 = load i64, ptr %tmpInSize396, align 8
  %add397 = add i64 %252, %250
  store i64 %add397, ptr %tmpInSize396, align 8
  %253 = load ptr, ptr %srcPtr, align 8
  %add.ptr398 = getelementptr inbounds i8, ptr %253, i64 %250
  store ptr %add.ptr398, ptr %srcPtr, align 8
  %254 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize399 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %254, i64 0, i32 8
  %255 = load i64, ptr %tmpInSize399, align 8
  %tmpInTarget400 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %254, i64 0, i32 9
  %256 = load i64, ptr %tmpInTarget400, align 8
  %cmp401 = icmp ult i64 %255, %256
  br i1 %cmp401, label %if.then403, label %if.end413

if.then403:                                       ; preds = %sw.bb374
  %257 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget404 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %257, i64 0, i32 9
  %258 = load i64, ptr %tmpInTarget404, align 8
  %tmpInSize405 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %257, i64 0, i32 8
  %259 = load i64, ptr %tmpInSize405, align 8
  %sub406 = sub i64 %258, %259
  %blockChecksumFlag408 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %257, i64 0, i32 1, i32 6
  %260 = load i32, ptr %blockChecksumFlag408, align 4
  %tobool409.not = icmp eq i32 %260, 0
  %cond410 = select i1 %tobool409.not, i64 0, i64 4
  %add411 = add i64 %sub406, %cond410
  %add412 = add i64 %add411, 4
  store i64 %add412, ptr %nextSrcSizeHint, align 8
  store i32 0, ptr %doAnotherStage, align 4
  br label %sw.epilog

if.end413:                                        ; preds = %sw.bb374
  %261 = load ptr, ptr %dctx.addr, align 8
  %tmpIn414 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %261, i64 0, i32 7
  %262 = load ptr, ptr %tmpIn414, align 8
  store ptr %262, ptr %selectedIn, align 8
  br label %if.end415

if.end415:                                        ; preds = %if.end370, %if.end413
  %263 = load ptr, ptr %dctx.addr, align 8
  %blockChecksumFlag417 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %263, i64 0, i32 1, i32 6
  %264 = load i32, ptr %blockChecksumFlag417, align 4
  %tobool418.not = icmp eq i32 %264, 0
  br i1 %tobool418.not, label %if.end434, label %if.then419

if.then419:                                       ; preds = %if.end415
  %265 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget420 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %265, i64 0, i32 9
  %266 = load i64, ptr %tmpInTarget420, align 8
  %sub421 = add i64 %266, -4
  store i64 %sub421, ptr %tmpInTarget420, align 8
  %267 = load ptr, ptr %selectedIn, align 8
  %add.ptr423 = getelementptr inbounds i8, ptr %267, i64 %sub421
  %call424 = call i32 @LZ4F_readLE32(ptr noundef %add.ptr423)
  store i32 %call424, ptr %readBlockCrc, align 4
  %268 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget425 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %268, i64 0, i32 9
  %269 = load i64, ptr %tmpInTarget425, align 8
  %call426 = call i32 @XXH32(ptr noundef %267, i64 noundef %269, i32 noundef 0) #9
  store i32 %call426, ptr %calcBlockCrc, align 4
  %270 = load i32, ptr %readBlockCrc, align 4
  %271 = load i32, ptr %calcBlockCrc, align 4
  %cmp428.not = icmp eq i32 %270, %271
  br i1 %cmp428.not, label %if.end434, label %if.then430

if.then430:                                       ; preds = %if.then419
  %call431 = call i64 @LZ4F_returnErrorCode(i32 noundef 7)
  store i64 %call431, ptr %retval, align 8
  br label %return

if.end434:                                        ; preds = %if.then419, %if.end415
  %272 = load ptr, ptr %dstEnd, align 8
  %273 = load ptr, ptr %dstPtr, align 8
  %sub.ptr.lhs.cast435 = ptrtoint ptr %272 to i64
  %sub.ptr.rhs.cast436 = ptrtoint ptr %273 to i64
  %sub.ptr.sub437 = sub i64 %sub.ptr.lhs.cast435, %sub.ptr.rhs.cast436
  %274 = load ptr, ptr %dctx.addr, align 8
  %maxBlockSize438 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %274, i64 0, i32 5
  %275 = load i64, ptr %maxBlockSize438, align 8
  %cmp439.not = icmp ult i64 %sub.ptr.sub437, %275
  br i1 %cmp439.not, label %if.end504, label %land.lhs.true441

land.lhs.true441:                                 ; preds = %if.end434
  %276 = load ptr, ptr %dctx.addr, align 8
  %dict = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %276, i64 0, i32 11
  %277 = load ptr, ptr %dict, align 8
  %cmp442.not = icmp eq ptr %277, null
  br i1 %cmp442.not, label %if.then450, label %land.lhs.true444

land.lhs.true444:                                 ; preds = %land.lhs.true441
  %278 = load ptr, ptr %dctx.addr, align 8
  %dict445 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %278, i64 0, i32 11
  %279 = load ptr, ptr %dict445, align 8
  %dictSize = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %278, i64 0, i32 12
  %280 = load i64, ptr %dictSize, align 8
  %add.ptr446 = getelementptr inbounds i8, ptr %279, i64 %280
  %tmpOut447 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %278, i64 0, i32 13
  %281 = load ptr, ptr %tmpOut447, align 8
  %cmp448 = icmp eq ptr %add.ptr446, %281
  br i1 %cmp448, label %if.end504, label %if.then450

if.then450:                                       ; preds = %land.lhs.true444, %land.lhs.true441
  %282 = load ptr, ptr %dctx.addr, align 8
  %dict452 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %282, i64 0, i32 11
  %283 = load ptr, ptr %dict452, align 8
  store ptr %283, ptr %dict451, align 8
  %dictSize454 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %282, i64 0, i32 12
  %284 = load i64, ptr %dictSize454, align 8
  store i64 %284, ptr %dictSize453, align 8
  %tobool455.not = icmp ne ptr %283, null
  %285 = load i64, ptr %dictSize453, align 8
  %cmp457 = icmp ugt i64 %285, 1073741824
  %or.cond = select i1 %tobool455.not, i1 %cmp457, i1 false
  br i1 %or.cond, label %if.then459, label %if.end462

if.then459:                                       ; preds = %if.then450
  %286 = load i64, ptr %dictSize453, align 8
  %sub460 = add i64 %286, -65536
  %287 = load ptr, ptr %dict451, align 8
  %add.ptr461 = getelementptr inbounds i8, ptr %287, i64 %sub460
  store ptr %add.ptr461, ptr %dict451, align 8
  store i64 65536, ptr %dictSize453, align 8
  br label %if.end462

if.end462:                                        ; preds = %if.then459, %if.then450
  %288 = load ptr, ptr %selectedIn, align 8
  %289 = load ptr, ptr %dstPtr, align 8
  %290 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget463 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %290, i64 0, i32 9
  %291 = load i64, ptr %tmpInTarget463, align 8
  %conv464 = trunc i64 %291 to i32
  %maxBlockSize465 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %290, i64 0, i32 5
  %292 = load i64, ptr %maxBlockSize465, align 8
  %conv466 = trunc i64 %292 to i32
  %293 = load ptr, ptr %dict451, align 8
  %294 = load i64, ptr %dictSize453, align 8
  %conv467 = trunc i64 %294 to i32
  %call468 = call i32 @LZ4_decompress_safe_usingDict(ptr noundef %288, ptr noundef %289, i32 noundef %conv464, i32 noundef %conv466, ptr noundef %293, i32 noundef %conv467) #9
  store i32 %call468, ptr %decodedSize, align 4
  %295 = load i32, ptr %decodedSize, align 4
  %cmp470 = icmp slt i32 %295, 0
  br i1 %cmp470, label %if.then472, label %do.end475

if.then472:                                       ; preds = %if.end462
  %call473 = call i64 @LZ4F_returnErrorCode(i32 noundef 16)
  store i64 %call473, ptr %retval, align 8
  br label %return

do.end475:                                        ; preds = %if.end462
  %296 = load ptr, ptr %dctx.addr, align 8
  %contentChecksumFlag477 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %296, i64 0, i32 1, i32 2
  %297 = load i32, ptr %contentChecksumFlag477, align 8
  %tobool478.not = icmp eq i32 %297, 0
  br i1 %tobool478.not, label %if.end486, label %land.lhs.true479

land.lhs.true479:                                 ; preds = %do.end475
  %298 = load ptr, ptr %dctx.addr, align 8
  %skipChecksum480 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %298, i64 0, i32 18
  %299 = load i32, ptr %skipChecksum480, align 8
  %tobool481.not = icmp eq i32 %299, 0
  br i1 %tobool481.not, label %if.then482, label %if.end486

if.then482:                                       ; preds = %land.lhs.true479
  %300 = load ptr, ptr %dctx.addr, align 8
  %xxh483 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %300, i64 0, i32 16
  %301 = load ptr, ptr %dstPtr, align 8
  %302 = load i32, ptr %decodedSize, align 4
  %conv484 = sext i32 %302 to i64
  %call485 = call i32 @XXH32_update(ptr noundef nonnull %xxh483, ptr noundef %301, i64 noundef %conv484) #9
  br label %if.end486

if.end486:                                        ; preds = %if.then482, %land.lhs.true479, %do.end475
  %303 = load ptr, ptr %dctx.addr, align 8
  %contentSize488 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %303, i64 0, i32 1, i32 4
  %304 = load i64, ptr %contentSize488, align 8
  %tobool489.not = icmp eq i64 %304, 0
  br i1 %tobool489.not, label %if.end494, label %if.then490

if.then490:                                       ; preds = %if.end486
  %305 = load i32, ptr %decodedSize, align 4
  %conv491 = sext i32 %305 to i64
  %306 = load ptr, ptr %dctx.addr, align 8
  %frameRemainingSize492 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %306, i64 0, i32 4
  %307 = load i64, ptr %frameRemainingSize492, align 8
  %sub493 = sub i64 %307, %conv491
  store i64 %sub493, ptr %frameRemainingSize492, align 8
  br label %if.end494

if.end494:                                        ; preds = %if.then490, %if.end486
  %308 = load ptr, ptr %dctx.addr, align 8
  %blockMode496 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %308, i64 0, i32 1, i32 1
  %309 = load i32, ptr %blockMode496, align 4
  %cmp497 = icmp eq i32 %309, 0
  br i1 %cmp497, label %if.then499, label %if.end501

if.then499:                                       ; preds = %if.end494
  %310 = load ptr, ptr %dctx.addr, align 8
  %311 = load ptr, ptr %dstPtr, align 8
  %312 = load i32, ptr %decodedSize, align 4
  %conv500 = sext i32 %312 to i64
  %313 = load ptr, ptr %dstStart, align 8
  call void @LZ4F_updateDict(ptr noundef %310, ptr noundef %311, i64 noundef %conv500, ptr noundef %313, i32 noundef 0)
  br label %if.end501

if.end501:                                        ; preds = %if.then499, %if.end494
  %314 = load i32, ptr %decodedSize, align 4
  %315 = load ptr, ptr %dstPtr, align 8
  %idx.ext = sext i32 %314 to i64
  %add.ptr502 = getelementptr inbounds i8, ptr %315, i64 %idx.ext
  store ptr %add.ptr502, ptr %dstPtr, align 8
  %316 = load ptr, ptr %dctx.addr, align 8
  %dStage503 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %316, i64 0, i32 3
  store i32 3, ptr %dStage503, align 4
  br label %sw.epilog

if.end504:                                        ; preds = %land.lhs.true444, %if.end434
  %317 = load ptr, ptr %dctx.addr, align 8
  %blockMode506 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %317, i64 0, i32 1, i32 1
  %318 = load i32, ptr %blockMode506, align 4
  %cmp507 = icmp eq i32 %318, 0
  br i1 %cmp507, label %if.then509, label %if.end545

if.then509:                                       ; preds = %if.end504
  %319 = load ptr, ptr %dctx.addr, align 8
  %dict510 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %319, i64 0, i32 11
  %320 = load ptr, ptr %dict510, align 8
  %tmpOutBuffer511 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %319, i64 0, i32 10
  %321 = load ptr, ptr %tmpOutBuffer511, align 8
  %cmp512 = icmp eq ptr %320, %321
  br i1 %cmp512, label %if.then514, label %if.else532

if.then514:                                       ; preds = %if.then509
  %322 = load ptr, ptr %dctx.addr, align 8
  %dictSize515 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %322, i64 0, i32 12
  %323 = load i64, ptr %dictSize515, align 8
  %cmp516 = icmp ugt i64 %323, 131072
  br i1 %cmp516, label %if.then518, label %if.end527

if.then518:                                       ; preds = %if.then514
  %324 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer519 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %324, i64 0, i32 10
  %325 = load ptr, ptr %tmpOutBuffer519, align 8
  %dict520 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %324, i64 0, i32 11
  %326 = load ptr, ptr %dict520, align 8
  %dictSize521 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %324, i64 0, i32 12
  %327 = load i64, ptr %dictSize521, align 8
  %add.ptr522 = getelementptr inbounds i8, ptr %326, i64 %327
  %add.ptr523 = getelementptr inbounds i8, ptr %add.ptr522, i64 -65536
  %328 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer524 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %328, i64 0, i32 10
  %329 = load ptr, ptr %tmpOutBuffer524, align 8
  %330 = call i64 @llvm.objectsize.i64.p0(ptr %329, i1 false, i1 true, i1 false)
  %call525 = call ptr @__memcpy_chk(ptr noundef %325, ptr noundef nonnull %add.ptr523, i64 noundef 65536, i64 noundef %330) #9
  %331 = load ptr, ptr %dctx.addr, align 8
  %dictSize526 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %331, i64 0, i32 12
  store i64 65536, ptr %dictSize526, align 8
  br label %if.end527

if.end527:                                        ; preds = %if.then518, %if.then514
  %332 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer528 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %332, i64 0, i32 10
  %333 = load ptr, ptr %tmpOutBuffer528, align 8
  %dictSize529 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %332, i64 0, i32 12
  %334 = load i64, ptr %dictSize529, align 8
  %add.ptr530 = getelementptr inbounds i8, ptr %333, i64 %334
  %tmpOut531 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %332, i64 0, i32 13
  store ptr %add.ptr530, ptr %tmpOut531, align 8
  br label %if.end545

if.else532:                                       ; preds = %if.then509
  %335 = load ptr, ptr %dctx.addr, align 8
  %dictSize533 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %335, i64 0, i32 12
  %336 = load i64, ptr %dictSize533, align 8
  %cmp534 = icmp ult i64 %336, 65536
  br i1 %cmp534, label %cond.true536, label %cond.end539

cond.true536:                                     ; preds = %if.else532
  %337 = load ptr, ptr %dctx.addr, align 8
  %dictSize537 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %337, i64 0, i32 12
  %338 = load i64, ptr %dictSize537, align 8
  br label %cond.end539

cond.end539:                                      ; preds = %if.else532, %cond.true536
  %cond540 = phi i64 [ %338, %cond.true536 ], [ 65536, %if.else532 ]
  %339 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer541 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %339, i64 0, i32 10
  %340 = load ptr, ptr %tmpOutBuffer541, align 8
  %add.ptr542 = getelementptr inbounds i8, ptr %340, i64 %cond540
  %tmpOut543 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %339, i64 0, i32 13
  store ptr %add.ptr542, ptr %tmpOut543, align 8
  br label %if.end545

if.end545:                                        ; preds = %if.end527, %cond.end539, %if.end504
  %341 = load ptr, ptr %dctx.addr, align 8
  %dict547 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %341, i64 0, i32 11
  %342 = load ptr, ptr %dict547, align 8
  store ptr %342, ptr %dict546, align 8
  %dictSize549 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %341, i64 0, i32 12
  %343 = load i64, ptr %dictSize549, align 8
  store i64 %343, ptr %dictSize548, align 8
  %tobool551.not = icmp ne ptr %342, null
  %344 = load i64, ptr %dictSize548, align 8
  %cmp553 = icmp ugt i64 %344, 1073741824
  %or.cond1 = select i1 %tobool551.not, i1 %cmp553, i1 false
  br i1 %or.cond1, label %if.then555, label %if.end558

if.then555:                                       ; preds = %if.end545
  %345 = load i64, ptr %dictSize548, align 8
  %sub556 = add i64 %345, -65536
  %346 = load ptr, ptr %dict546, align 8
  %add.ptr557 = getelementptr inbounds i8, ptr %346, i64 %sub556
  store ptr %add.ptr557, ptr %dict546, align 8
  store i64 65536, ptr %dictSize548, align 8
  br label %if.end558

if.end558:                                        ; preds = %if.then555, %if.end545
  %347 = load ptr, ptr %selectedIn, align 8
  %348 = load ptr, ptr %dctx.addr, align 8
  %tmpOut559 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %348, i64 0, i32 13
  %349 = load ptr, ptr %tmpOut559, align 8
  %tmpInTarget560 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %348, i64 0, i32 9
  %350 = load i64, ptr %tmpInTarget560, align 8
  %conv561 = trunc i64 %350 to i32
  %maxBlockSize562 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %348, i64 0, i32 5
  %351 = load i64, ptr %maxBlockSize562, align 8
  %conv563 = trunc i64 %351 to i32
  %352 = load ptr, ptr %dict546, align 8
  %353 = load i64, ptr %dictSize548, align 8
  %conv564 = trunc i64 %353 to i32
  %call565 = call i32 @LZ4_decompress_safe_usingDict(ptr noundef %347, ptr noundef %349, i32 noundef %conv561, i32 noundef %conv563, ptr noundef %352, i32 noundef %conv564) #9
  store i32 %call565, ptr %decodedSize550, align 4
  %354 = load i32, ptr %decodedSize550, align 4
  %cmp567 = icmp slt i32 %354, 0
  br i1 %cmp567, label %if.then569, label %do.end572

if.then569:                                       ; preds = %if.end558
  %call570 = call i64 @LZ4F_returnErrorCode(i32 noundef 16)
  store i64 %call570, ptr %retval, align 8
  br label %return

do.end572:                                        ; preds = %if.end558
  %355 = load ptr, ptr %dctx.addr, align 8
  %contentChecksumFlag574 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %355, i64 0, i32 1, i32 2
  %356 = load i32, ptr %contentChecksumFlag574, align 8
  %tobool575.not = icmp eq i32 %356, 0
  br i1 %tobool575.not, label %if.end584, label %land.lhs.true576

land.lhs.true576:                                 ; preds = %do.end572
  %357 = load ptr, ptr %dctx.addr, align 8
  %skipChecksum577 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %357, i64 0, i32 18
  %358 = load i32, ptr %skipChecksum577, align 8
  %tobool578.not = icmp eq i32 %358, 0
  br i1 %tobool578.not, label %if.then579, label %if.end584

if.then579:                                       ; preds = %land.lhs.true576
  %359 = load ptr, ptr %dctx.addr, align 8
  %xxh580 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %359, i64 0, i32 16
  %tmpOut581 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %359, i64 0, i32 13
  %360 = load ptr, ptr %tmpOut581, align 8
  %361 = load i32, ptr %decodedSize550, align 4
  %conv582 = sext i32 %361 to i64
  %call583 = call i32 @XXH32_update(ptr noundef nonnull %xxh580, ptr noundef %360, i64 noundef %conv582) #9
  br label %if.end584

if.end584:                                        ; preds = %if.then579, %land.lhs.true576, %do.end572
  %362 = load ptr, ptr %dctx.addr, align 8
  %contentSize586 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %362, i64 0, i32 1, i32 4
  %363 = load i64, ptr %contentSize586, align 8
  %tobool587.not = icmp eq i64 %363, 0
  br i1 %tobool587.not, label %if.end592, label %if.then588

if.then588:                                       ; preds = %if.end584
  %364 = load i32, ptr %decodedSize550, align 4
  %conv589 = sext i32 %364 to i64
  %365 = load ptr, ptr %dctx.addr, align 8
  %frameRemainingSize590 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %365, i64 0, i32 4
  %366 = load i64, ptr %frameRemainingSize590, align 8
  %sub591 = sub i64 %366, %conv589
  store i64 %sub591, ptr %frameRemainingSize590, align 8
  br label %if.end592

if.end592:                                        ; preds = %if.then588, %if.end584
  %367 = load i32, ptr %decodedSize550, align 4
  %conv593 = sext i32 %367 to i64
  %368 = load ptr, ptr %dctx.addr, align 8
  %tmpOutSize594 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %368, i64 0, i32 14
  store i64 %conv593, ptr %tmpOutSize594, align 8
  %tmpOutStart595 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %368, i64 0, i32 15
  store i64 0, ptr %tmpOutStart595, align 8
  %dStage596 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %368, i64 0, i32 3
  store i32 9, ptr %dStage596, align 4
  br label %sw.bb597

sw.bb597:                                         ; preds = %if.end592, %while.body
  %369 = load ptr, ptr %dstPtr, align 8
  %cmp598.not = icmp eq ptr %369, null
  br i1 %cmp598.not, label %if.end633, label %if.then600

if.then600:                                       ; preds = %sw.bb597
  %370 = load ptr, ptr %dctx.addr, align 8
  %tmpOutSize602 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %370, i64 0, i32 14
  %371 = load i64, ptr %tmpOutSize602, align 8
  %tmpOutStart603 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %370, i64 0, i32 15
  %372 = load i64, ptr %tmpOutStart603, align 8
  %sub604 = sub i64 %371, %372
  %373 = load ptr, ptr %dstEnd, align 8
  %374 = load ptr, ptr %dstPtr, align 8
  %sub.ptr.lhs.cast605 = ptrtoint ptr %373 to i64
  %sub.ptr.rhs.cast606 = ptrtoint ptr %374 to i64
  %sub.ptr.sub607 = sub i64 %sub.ptr.lhs.cast605, %sub.ptr.rhs.cast606
  %cmp608 = icmp ult i64 %sub604, %sub.ptr.sub607
  br i1 %cmp608, label %cond.true610, label %cond.false614

cond.true610:                                     ; preds = %if.then600
  %375 = load ptr, ptr %dctx.addr, align 8
  %tmpOutSize611 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %375, i64 0, i32 14
  %376 = load i64, ptr %tmpOutSize611, align 8
  %tmpOutStart612 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %375, i64 0, i32 15
  %377 = load i64, ptr %tmpOutStart612, align 8
  %sub613 = sub i64 %376, %377
  br label %cond.end618

cond.false614:                                    ; preds = %if.then600
  %378 = load ptr, ptr %dstEnd, align 8
  %379 = load ptr, ptr %dstPtr, align 8
  %sub.ptr.lhs.cast615 = ptrtoint ptr %378 to i64
  %sub.ptr.rhs.cast616 = ptrtoint ptr %379 to i64
  %sub.ptr.sub617 = sub i64 %sub.ptr.lhs.cast615, %sub.ptr.rhs.cast616
  br label %cond.end618

cond.end618:                                      ; preds = %cond.false614, %cond.true610
  %cond619 = phi i64 [ %sub613, %cond.true610 ], [ %sub.ptr.sub617, %cond.false614 ]
  store i64 %cond619, ptr %sizeToCopy601, align 8
  %380 = load ptr, ptr %dstPtr, align 8
  %381 = load ptr, ptr %dctx.addr, align 8
  %tmpOut620 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %381, i64 0, i32 13
  %382 = load ptr, ptr %tmpOut620, align 8
  %tmpOutStart621 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %381, i64 0, i32 15
  %383 = load i64, ptr %tmpOutStart621, align 8
  %add.ptr622 = getelementptr inbounds i8, ptr %382, i64 %383
  %384 = load i64, ptr %sizeToCopy601, align 8
  %385 = load ptr, ptr %dstPtr, align 8
  %386 = call i64 @llvm.objectsize.i64.p0(ptr %385, i1 false, i1 true, i1 false)
  %call623 = call ptr @__memcpy_chk(ptr noundef %380, ptr noundef %add.ptr622, i64 noundef %384, i64 noundef %386) #9
  %387 = load ptr, ptr %dctx.addr, align 8
  %blockMode625 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %387, i64 0, i32 1, i32 1
  %388 = load i32, ptr %blockMode625, align 4
  %cmp626 = icmp eq i32 %388, 0
  br i1 %cmp626, label %if.then628, label %if.end629

if.then628:                                       ; preds = %cond.end618
  %389 = load ptr, ptr %dctx.addr, align 8
  %390 = load ptr, ptr %dstPtr, align 8
  %391 = load i64, ptr %sizeToCopy601, align 8
  %392 = load ptr, ptr %dstStart, align 8
  call void @LZ4F_updateDict(ptr noundef %389, ptr noundef %390, i64 noundef %391, ptr noundef %392, i32 noundef 1)
  br label %if.end629

if.end629:                                        ; preds = %if.then628, %cond.end618
  %393 = load i64, ptr %sizeToCopy601, align 8
  %394 = load ptr, ptr %dctx.addr, align 8
  %tmpOutStart630 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %394, i64 0, i32 15
  %395 = load i64, ptr %tmpOutStart630, align 8
  %add631 = add i64 %395, %393
  store i64 %add631, ptr %tmpOutStart630, align 8
  %396 = load ptr, ptr %dstPtr, align 8
  %add.ptr632 = getelementptr inbounds i8, ptr %396, i64 %393
  store ptr %add.ptr632, ptr %dstPtr, align 8
  br label %if.end633

if.end633:                                        ; preds = %if.end629, %sw.bb597
  %397 = load ptr, ptr %dctx.addr, align 8
  %tmpOutStart634 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %397, i64 0, i32 15
  %398 = load i64, ptr %tmpOutStart634, align 8
  %tmpOutSize635 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %397, i64 0, i32 14
  %399 = load i64, ptr %tmpOutSize635, align 8
  %cmp636 = icmp eq i64 %398, %399
  br i1 %cmp636, label %if.then638, label %if.end640

if.then638:                                       ; preds = %if.end633
  %400 = load ptr, ptr %dctx.addr, align 8
  %dStage639 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %400, i64 0, i32 3
  store i32 3, ptr %dStage639, align 4
  br label %sw.epilog

if.end640:                                        ; preds = %if.end633
  store i32 0, ptr %doAnotherStage, align 4
  store i64 4, ptr %nextSrcSizeHint, align 8
  br label %sw.epilog

do.body642:                                       ; preds = %while.body
  %401 = load ptr, ptr %dctx.addr, align 8
  %frameRemainingSize643 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %401, i64 0, i32 4
  %402 = load i64, ptr %frameRemainingSize643, align 8
  %tobool644.not = icmp eq i64 %402, 0
  br i1 %tobool644.not, label %do.end648, label %if.then645

if.then645:                                       ; preds = %do.body642
  %call646 = call i64 @LZ4F_returnErrorCode(i32 noundef 14)
  store i64 %call646, ptr %retval, align 8
  br label %return

do.end648:                                        ; preds = %do.body642
  %403 = load ptr, ptr %dctx.addr, align 8
  %contentChecksumFlag650 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %403, i64 0, i32 1, i32 2
  %404 = load i32, ptr %contentChecksumFlag650, align 8
  %tobool651.not = icmp eq i32 %404, 0
  br i1 %tobool651.not, label %if.then652, label %if.end653

if.then652:                                       ; preds = %do.end648
  store i64 0, ptr %nextSrcSizeHint, align 8
  %405 = load ptr, ptr %dctx.addr, align 8
  call void @LZ4F_resetDecompressionContext(ptr noundef %405)
  store i32 0, ptr %doAnotherStage, align 4
  br label %sw.epilog

if.end653:                                        ; preds = %do.end648
  %406 = load ptr, ptr %srcEnd, align 8
  %407 = load ptr, ptr %srcPtr, align 8
  %sub.ptr.lhs.cast654 = ptrtoint ptr %406 to i64
  %sub.ptr.rhs.cast655 = ptrtoint ptr %407 to i64
  %sub.ptr.sub656 = sub i64 %sub.ptr.lhs.cast654, %sub.ptr.rhs.cast655
  %cmp657 = icmp slt i64 %sub.ptr.sub656, 4
  br i1 %cmp657, label %if.then659, label %if.else662

if.then659:                                       ; preds = %if.end653
  %408 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize660 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %408, i64 0, i32 8
  store i64 0, ptr %tmpInSize660, align 8
  %dStage661 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %408, i64 0, i32 3
  store i32 11, ptr %dStage661, align 4
  br label %if.end664

if.else662:                                       ; preds = %if.end653
  %409 = load ptr, ptr %srcPtr, align 8
  store ptr %409, ptr %selectedIn, align 8
  %add.ptr663 = getelementptr inbounds i8, ptr %409, i64 4
  store ptr %add.ptr663, ptr %srcPtr, align 8
  br label %if.end664

if.end664:                                        ; preds = %if.else662, %if.then659
  %410 = load ptr, ptr %dctx.addr, align 8
  %dStage665 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %410, i64 0, i32 3
  %411 = load i32, ptr %dStage665, align 4
  %cmp666 = icmp eq i32 %411, 11
  br i1 %cmp666, label %sw.bb669, label %if.end702

sw.bb669:                                         ; preds = %if.end664, %while.body
  %412 = load ptr, ptr %srcEnd, align 8
  %413 = load ptr, ptr %srcPtr, align 8
  %sub.ptr.lhs.cast671 = ptrtoint ptr %412 to i64
  %sub.ptr.rhs.cast672 = ptrtoint ptr %413 to i64
  %sub.ptr.sub673 = sub i64 %sub.ptr.lhs.cast671, %sub.ptr.rhs.cast672
  store i64 %sub.ptr.sub673, ptr %remainingInput670, align 8
  %414 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize675 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %414, i64 0, i32 8
  %415 = load i64, ptr %tmpInSize675, align 8
  %sub676 = sub i64 4, %415
  store i64 %sub676, ptr %wantedData674, align 8
  %cmp678 = icmp ult i64 %sub676, %sub.ptr.sub673
  %416 = load i64, ptr %wantedData674, align 8
  %417 = load i64, ptr %remainingInput670, align 8
  %cond683 = select i1 %cmp678, i64 %416, i64 %417
  store i64 %cond683, ptr %sizeToCopy677, align 8
  %418 = load ptr, ptr %dctx.addr, align 8
  %tmpIn684 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %418, i64 0, i32 7
  %419 = load ptr, ptr %tmpIn684, align 8
  %tmpInSize685 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %418, i64 0, i32 8
  %420 = load i64, ptr %tmpInSize685, align 8
  %add.ptr686 = getelementptr inbounds i8, ptr %419, i64 %420
  %421 = load ptr, ptr %srcPtr, align 8
  %422 = load i64, ptr %sizeToCopy677, align 8
  %423 = load ptr, ptr %dctx.addr, align 8
  %tmpIn687 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %423, i64 0, i32 7
  %424 = load ptr, ptr %tmpIn687, align 8
  %tmpInSize688 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %423, i64 0, i32 8
  %425 = load i64, ptr %tmpInSize688, align 8
  %add.ptr689 = getelementptr inbounds i8, ptr %424, i64 %425
  %426 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr689, i1 false, i1 true, i1 false)
  %call690 = call ptr @__memcpy_chk(ptr noundef %add.ptr686, ptr noundef %421, i64 noundef %422, i64 noundef %426) #9
  %427 = load i64, ptr %sizeToCopy677, align 8
  %428 = load ptr, ptr %srcPtr, align 8
  %add.ptr691 = getelementptr inbounds i8, ptr %428, i64 %427
  store ptr %add.ptr691, ptr %srcPtr, align 8
  %429 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize692 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %429, i64 0, i32 8
  %430 = load i64, ptr %tmpInSize692, align 8
  %add693 = add i64 %430, %427
  store i64 %add693, ptr %tmpInSize692, align 8
  %cmp695 = icmp ult i64 %add693, 4
  br i1 %cmp695, label %if.then697, label %if.end700

if.then697:                                       ; preds = %sw.bb669
  %431 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize698 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %431, i64 0, i32 8
  %432 = load i64, ptr %tmpInSize698, align 8
  %sub699 = sub i64 4, %432
  store i64 %sub699, ptr %nextSrcSizeHint, align 8
  store i32 0, ptr %doAnotherStage, align 4
  br label %sw.epilog

if.end700:                                        ; preds = %sw.bb669
  %433 = load ptr, ptr %dctx.addr, align 8
  %tmpIn701 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %433, i64 0, i32 7
  %434 = load ptr, ptr %tmpIn701, align 8
  store ptr %434, ptr %selectedIn, align 8
  br label %if.end702

if.end702:                                        ; preds = %if.end700, %if.end664
  %435 = load ptr, ptr %dctx.addr, align 8
  %skipChecksum703 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %435, i64 0, i32 18
  %436 = load i32, ptr %skipChecksum703, align 8
  %tobool704.not = icmp eq i32 %436, 0
  br i1 %tobool704.not, label %if.then705, label %if.end717

if.then705:                                       ; preds = %if.end702
  %437 = load ptr, ptr %selectedIn, align 8
  %call707 = call i32 @LZ4F_readLE32(ptr noundef %437)
  store i32 %call707, ptr %readCRC706, align 4
  %438 = load ptr, ptr %dctx.addr, align 8
  %xxh708 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %438, i64 0, i32 16
  %call709 = call i32 @XXH32_digest(ptr noundef nonnull %xxh708) #9
  store i32 %call709, ptr %resultCRC, align 4
  %439 = load i32, ptr %readCRC706, align 4
  %440 = load i32, ptr %resultCRC, align 4
  %cmp711.not = icmp eq i32 %439, %440
  br i1 %cmp711.not, label %if.end717, label %if.then713

if.then713:                                       ; preds = %if.then705
  %call714 = call i64 @LZ4F_returnErrorCode(i32 noundef 18)
  store i64 %call714, ptr %retval, align 8
  br label %return

if.end717:                                        ; preds = %if.then705, %if.end702
  store i64 0, ptr %nextSrcSizeHint, align 8
  %441 = load ptr, ptr %dctx.addr, align 8
  call void @LZ4F_resetDecompressionContext(ptr noundef %441)
  store i32 0, ptr %doAnotherStage, align 4
  br label %sw.epilog

sw.bb718:                                         ; preds = %while.body
  %442 = load ptr, ptr %srcEnd, align 8
  %443 = load ptr, ptr %srcPtr, align 8
  %sub.ptr.lhs.cast719 = ptrtoint ptr %442 to i64
  %sub.ptr.rhs.cast720 = ptrtoint ptr %443 to i64
  %sub.ptr.sub721 = sub i64 %sub.ptr.lhs.cast719, %sub.ptr.rhs.cast720
  %cmp722 = icmp sgt i64 %sub.ptr.sub721, 3
  br i1 %cmp722, label %if.then724, label %if.else726

if.then724:                                       ; preds = %sw.bb718
  %444 = load ptr, ptr %srcPtr, align 8
  store ptr %444, ptr %selectedIn, align 8
  %add.ptr725 = getelementptr inbounds i8, ptr %444, i64 4
  store ptr %add.ptr725, ptr %srcPtr, align 8
  br label %if.end730

if.else726:                                       ; preds = %sw.bb718
  %445 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize727 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %445, i64 0, i32 8
  store i64 4, ptr %tmpInSize727, align 8
  %tmpInTarget728 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %445, i64 0, i32 9
  store i64 8, ptr %tmpInTarget728, align 8
  %dStage729 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %445, i64 0, i32 3
  store i32 13, ptr %dStage729, align 4
  br label %if.end730

if.end730:                                        ; preds = %if.else726, %if.then724
  %446 = load ptr, ptr %dctx.addr, align 8
  %dStage731 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %446, i64 0, i32 3
  %447 = load i32, ptr %dStage731, align 4
  %cmp732 = icmp eq i32 %447, 13
  br i1 %cmp732, label %sw.bb735, label %if.end779

sw.bb735:                                         ; preds = %if.end730, %while.body
  %448 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget737 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %448, i64 0, i32 9
  %449 = load i64, ptr %tmpInTarget737, align 8
  %tmpInSize738 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %448, i64 0, i32 8
  %450 = load i64, ptr %tmpInSize738, align 8
  %sub739 = sub i64 %449, %450
  %451 = load ptr, ptr %srcEnd, align 8
  %452 = load ptr, ptr %srcPtr, align 8
  %sub.ptr.lhs.cast740 = ptrtoint ptr %451 to i64
  %sub.ptr.rhs.cast741 = ptrtoint ptr %452 to i64
  %sub.ptr.sub742 = sub i64 %sub.ptr.lhs.cast740, %sub.ptr.rhs.cast741
  %cmp743 = icmp ult i64 %sub739, %sub.ptr.sub742
  br i1 %cmp743, label %cond.true745, label %cond.false749

cond.true745:                                     ; preds = %sw.bb735
  %453 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget746 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %453, i64 0, i32 9
  %454 = load i64, ptr %tmpInTarget746, align 8
  %tmpInSize747 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %453, i64 0, i32 8
  %455 = load i64, ptr %tmpInSize747, align 8
  %sub748 = sub i64 %454, %455
  br label %cond.end753

cond.false749:                                    ; preds = %sw.bb735
  %456 = load ptr, ptr %srcEnd, align 8
  %457 = load ptr, ptr %srcPtr, align 8
  %sub.ptr.lhs.cast750 = ptrtoint ptr %456 to i64
  %sub.ptr.rhs.cast751 = ptrtoint ptr %457 to i64
  %sub.ptr.sub752 = sub i64 %sub.ptr.lhs.cast750, %sub.ptr.rhs.cast751
  br label %cond.end753

cond.end753:                                      ; preds = %cond.false749, %cond.true745
  %cond754 = phi i64 [ %sub748, %cond.true745 ], [ %sub.ptr.sub752, %cond.false749 ]
  store i64 %cond754, ptr %sizeToCopy736, align 8
  %458 = load ptr, ptr %dctx.addr, align 8
  %header755 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %458, i64 0, i32 19
  %tmpInSize757 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %458, i64 0, i32 8
  %459 = load i64, ptr %tmpInSize757, align 8
  %add.ptr758 = getelementptr inbounds i8, ptr %header755, i64 %459
  %460 = load ptr, ptr %srcPtr, align 8
  %461 = load i64, ptr %sizeToCopy736, align 8
  %462 = load ptr, ptr %dctx.addr, align 8
  %header759 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %462, i64 0, i32 19
  %tmpInSize761 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %462, i64 0, i32 8
  %463 = load i64, ptr %tmpInSize761, align 8
  %add.ptr762 = getelementptr inbounds i8, ptr %header759, i64 %463
  %464 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr762, i1 false, i1 true, i1 false)
  %call763 = call ptr @__memcpy_chk(ptr noundef nonnull %add.ptr758, ptr noundef %460, i64 noundef %461, i64 noundef %464) #9
  %465 = load i64, ptr %sizeToCopy736, align 8
  %466 = load ptr, ptr %srcPtr, align 8
  %add.ptr764 = getelementptr inbounds i8, ptr %466, i64 %465
  store ptr %add.ptr764, ptr %srcPtr, align 8
  %467 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize765 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %467, i64 0, i32 8
  %468 = load i64, ptr %tmpInSize765, align 8
  %add766 = add i64 %468, %465
  store i64 %add766, ptr %tmpInSize765, align 8
  %tmpInTarget768 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %467, i64 0, i32 9
  %469 = load i64, ptr %tmpInTarget768, align 8
  %cmp769 = icmp ult i64 %add766, %469
  br i1 %cmp769, label %if.then771, label %if.end775

if.then771:                                       ; preds = %cond.end753
  %470 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget772 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %470, i64 0, i32 9
  %471 = load i64, ptr %tmpInTarget772, align 8
  %tmpInSize773 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %470, i64 0, i32 8
  %472 = load i64, ptr %tmpInSize773, align 8
  %sub774 = sub i64 %471, %472
  store i64 %sub774, ptr %nextSrcSizeHint, align 8
  store i32 0, ptr %doAnotherStage, align 4
  br label %sw.epilog

if.end775:                                        ; preds = %cond.end753
  %473 = load ptr, ptr %dctx.addr, align 8
  %add.ptr778 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %473, i64 0, i32 19, i64 4
  store ptr %add.ptr778, ptr %selectedIn, align 8
  br label %if.end779

if.end779:                                        ; preds = %if.end775, %if.end730
  %474 = load ptr, ptr %selectedIn, align 8
  %call780 = call i32 @LZ4F_readLE32(ptr noundef %474)
  %conv781 = zext i32 %call780 to i64
  %475 = load ptr, ptr %dctx.addr, align 8
  %contentSize783 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %475, i64 0, i32 1, i32 4
  store i64 %conv781, ptr %contentSize783, align 8
  %tmpInTarget784 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %475, i64 0, i32 9
  store i64 %conv781, ptr %tmpInTarget784, align 8
  %dStage785 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %475, i64 0, i32 3
  store i32 14, ptr %dStage785, align 4
  br label %sw.epilog

sw.bb786:                                         ; preds = %while.body
  %476 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget787 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %476, i64 0, i32 9
  %477 = load i64, ptr %tmpInTarget787, align 8
  %478 = load ptr, ptr %srcEnd, align 8
  %479 = load ptr, ptr %srcPtr, align 8
  %sub.ptr.lhs.cast788 = ptrtoint ptr %478 to i64
  %sub.ptr.rhs.cast789 = ptrtoint ptr %479 to i64
  %sub.ptr.sub790 = sub i64 %sub.ptr.lhs.cast788, %sub.ptr.rhs.cast789
  %cmp791 = icmp ult i64 %477, %sub.ptr.sub790
  br i1 %cmp791, label %cond.true793, label %cond.false795

cond.true793:                                     ; preds = %sw.bb786
  %480 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget794 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %480, i64 0, i32 9
  %481 = load i64, ptr %tmpInTarget794, align 8
  br label %cond.end799

cond.false795:                                    ; preds = %sw.bb786
  %482 = load ptr, ptr %srcEnd, align 8
  %483 = load ptr, ptr %srcPtr, align 8
  %sub.ptr.lhs.cast796 = ptrtoint ptr %482 to i64
  %sub.ptr.rhs.cast797 = ptrtoint ptr %483 to i64
  %sub.ptr.sub798 = sub i64 %sub.ptr.lhs.cast796, %sub.ptr.rhs.cast797
  br label %cond.end799

cond.end799:                                      ; preds = %cond.false795, %cond.true793
  %cond800 = phi i64 [ %481, %cond.true793 ], [ %sub.ptr.sub798, %cond.false795 ]
  %484 = load ptr, ptr %srcPtr, align 8
  %add.ptr801 = getelementptr inbounds i8, ptr %484, i64 %cond800
  store ptr %add.ptr801, ptr %srcPtr, align 8
  %485 = load ptr, ptr %dctx.addr, align 8
  %tmpInTarget802 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %485, i64 0, i32 9
  %486 = load i64, ptr %tmpInTarget802, align 8
  %sub803 = sub i64 %486, %cond800
  store i64 %sub803, ptr %tmpInTarget802, align 8
  store i32 0, ptr %doAnotherStage, align 4
  store i64 %sub803, ptr %nextSrcSizeHint, align 8
  %tobool805.not = icmp eq i64 %486, %cond800
  br i1 %tobool805.not, label %if.end807, label %sw.epilog

if.end807:                                        ; preds = %cond.end799
  %487 = load ptr, ptr %dctx.addr, align 8
  call void @LZ4F_resetDecompressionContext(ptr noundef %487)
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end799, %if.then284, %if.else287, %lor.lhs.false, %if.then208, %do.body64, %if.end807, %if.end779, %if.then771, %if.end717, %if.then697, %if.then652, %if.end640, %if.then638, %if.end501, %if.then403, %if.then367, %if.end358, %if.then342, %if.end290, %if.end198, %if.then180, %if.then168, %if.then58, %do.end, %while.body
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %488 = load ptr, ptr %dctx.addr, align 8
  %blockMode809 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %488, i64 0, i32 1, i32 1
  %489 = load i32, ptr %blockMode809, align 4
  %cmp810 = icmp eq i32 %489, 0
  br i1 %cmp810, label %land.lhs.true812, label %if.end895

land.lhs.true812:                                 ; preds = %while.end
  %490 = load ptr, ptr %dctx.addr, align 8
  %dict813 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %490, i64 0, i32 11
  %491 = load ptr, ptr %dict813, align 8
  %tmpOutBuffer814 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %490, i64 0, i32 10
  %492 = load ptr, ptr %tmpOutBuffer814, align 8
  %cmp815.not = icmp eq ptr %491, %492
  br i1 %cmp815.not, label %if.end895, label %land.lhs.true817

land.lhs.true817:                                 ; preds = %land.lhs.true812
  %493 = load ptr, ptr %dctx.addr, align 8
  %dict818 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %493, i64 0, i32 11
  %494 = load ptr, ptr %dict818, align 8
  %cmp819.not = icmp eq ptr %494, null
  br i1 %cmp819.not, label %if.end895, label %land.lhs.true821

land.lhs.true821:                                 ; preds = %land.lhs.true817
  %495 = load ptr, ptr %decompressOptionsPtr.addr, align 8
  %496 = load i32, ptr %495, align 4
  %tobool822.not = icmp eq i32 %496, 0
  br i1 %tobool822.not, label %land.lhs.true823, label %if.end895

land.lhs.true823:                                 ; preds = %land.lhs.true821
  %497 = load ptr, ptr %dctx.addr, align 8
  %dStage824 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %497, i64 0, i32 3
  %498 = load i32, ptr %dStage824, align 4
  %sub825 = add i32 %498, -2
  %cmp826 = icmp ult i32 %sub825, 8
  br i1 %cmp826, label %if.then828, label %if.end895

if.then828:                                       ; preds = %land.lhs.true823
  %499 = load ptr, ptr %dctx.addr, align 8
  %dStage829 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %499, i64 0, i32 3
  %500 = load i32, ptr %dStage829, align 4
  %cmp830 = icmp eq i32 %500, 9
  br i1 %cmp830, label %if.then832, label %if.else870

if.then832:                                       ; preds = %if.then828
  %501 = load ptr, ptr %dctx.addr, align 8
  %tmpOut833 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %501, i64 0, i32 13
  %502 = load ptr, ptr %tmpOut833, align 8
  %tmpOutBuffer834 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %501, i64 0, i32 10
  %503 = load ptr, ptr %tmpOutBuffer834, align 8
  %sub.ptr.lhs.cast835 = ptrtoint ptr %502 to i64
  %sub.ptr.rhs.cast836 = ptrtoint ptr %503 to i64
  %sub.ptr.sub837 = sub i64 %sub.ptr.lhs.cast835, %sub.ptr.rhs.cast836
  store i64 %sub.ptr.sub837, ptr %preserveSize, align 8
  %504 = load ptr, ptr %dctx.addr, align 8
  %tmpOutSize838 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %504, i64 0, i32 14
  %505 = load i64, ptr %tmpOutSize838, align 8
  %sub839 = sub i64 65536, %505
  store i64 %sub839, ptr %copySize, align 8
  %dict840 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %504, i64 0, i32 11
  %506 = load ptr, ptr %dict840, align 8
  %507 = load ptr, ptr %dctx.addr, align 8
  %dictSize841 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %507, i64 0, i32 12
  %508 = load i64, ptr %dictSize841, align 8
  %add.ptr842 = getelementptr inbounds i8, ptr %506, i64 %508
  %tmpOutStart843 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %507, i64 0, i32 15
  %509 = load i64, ptr %tmpOutStart843, align 8
  %idx.neg = sub i64 0, %509
  %add.ptr844 = getelementptr inbounds i8, ptr %add.ptr842, i64 %idx.neg
  store ptr %add.ptr844, ptr %oldDictEnd, align 8
  %510 = load ptr, ptr %dctx.addr, align 8
  %tmpOutSize845 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %510, i64 0, i32 14
  %511 = load i64, ptr %tmpOutSize845, align 8
  %cmp846 = icmp ugt i64 %511, 65536
  br i1 %cmp846, label %if.then848, label %if.end849

if.then848:                                       ; preds = %if.then832
  store i64 0, ptr %copySize, align 8
  br label %if.end849

if.end849:                                        ; preds = %if.then848, %if.then832
  %512 = load i64, ptr %copySize, align 8
  %513 = load i64, ptr %preserveSize, align 8
  %cmp850 = icmp ugt i64 %512, %513
  br i1 %cmp850, label %if.then852, label %if.end853

if.then852:                                       ; preds = %if.end849
  %514 = load i64, ptr %preserveSize, align 8
  store i64 %514, ptr %copySize, align 8
  br label %if.end853

if.end853:                                        ; preds = %if.then852, %if.end849
  %515 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer854 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %515, i64 0, i32 10
  %516 = load ptr, ptr %tmpOutBuffer854, align 8
  %517 = load i64, ptr %preserveSize, align 8
  %add.ptr855 = getelementptr inbounds i8, ptr %516, i64 %517
  %518 = load i64, ptr %copySize, align 8
  %idx.neg856 = sub i64 0, %518
  %add.ptr857 = getelementptr inbounds i8, ptr %add.ptr855, i64 %idx.neg856
  %519 = load ptr, ptr %oldDictEnd, align 8
  %idx.neg858 = sub i64 0, %518
  %add.ptr859 = getelementptr inbounds i8, ptr %519, i64 %idx.neg858
  %520 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer860 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %520, i64 0, i32 10
  %521 = load ptr, ptr %tmpOutBuffer860, align 8
  %522 = load i64, ptr %preserveSize, align 8
  %add.ptr861 = getelementptr inbounds i8, ptr %521, i64 %522
  %523 = load i64, ptr %copySize, align 8
  %idx.neg862 = sub i64 0, %523
  %add.ptr863 = getelementptr inbounds i8, ptr %add.ptr861, i64 %idx.neg862
  %524 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr863, i1 false, i1 true, i1 false)
  %call864 = call ptr @__memcpy_chk(ptr noundef %add.ptr857, ptr noundef %add.ptr859, i64 noundef %518, i64 noundef %524) #9
  %525 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer865 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %525, i64 0, i32 10
  %526 = load ptr, ptr %tmpOutBuffer865, align 8
  %dict866 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %525, i64 0, i32 11
  store ptr %526, ptr %dict866, align 8
  %527 = load i64, ptr %preserveSize, align 8
  %tmpOutStart867 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %525, i64 0, i32 15
  %528 = load i64, ptr %tmpOutStart867, align 8
  %add868 = add i64 %527, %528
  %529 = load ptr, ptr %dctx.addr, align 8
  %dictSize869 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %529, i64 0, i32 12
  store i64 %add868, ptr %dictSize869, align 8
  br label %if.end895

if.else870:                                       ; preds = %if.then828
  %530 = load ptr, ptr %dctx.addr, align 8
  %dict872 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %530, i64 0, i32 11
  %531 = load ptr, ptr %dict872, align 8
  %dictSize873 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %530, i64 0, i32 12
  %532 = load i64, ptr %dictSize873, align 8
  %add.ptr874 = getelementptr inbounds i8, ptr %531, i64 %532
  store ptr %add.ptr874, ptr %oldDictEnd871, align 8
  %533 = load ptr, ptr %dctx.addr, align 8
  %dictSize875 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %533, i64 0, i32 12
  %534 = load i64, ptr %dictSize875, align 8
  %cmp876 = icmp ult i64 %534, 65536
  br i1 %cmp876, label %cond.true878, label %cond.end881

cond.true878:                                     ; preds = %if.else870
  %535 = load ptr, ptr %dctx.addr, align 8
  %dictSize879 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %535, i64 0, i32 12
  %536 = load i64, ptr %dictSize879, align 8
  br label %cond.end881

cond.end881:                                      ; preds = %if.else870, %cond.true878
  %cond882 = phi i64 [ %536, %cond.true878 ], [ 65536, %if.else870 ]
  store i64 %cond882, ptr %newDictSize, align 8
  %537 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer883 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %537, i64 0, i32 10
  %538 = load ptr, ptr %tmpOutBuffer883, align 8
  %539 = load ptr, ptr %oldDictEnd871, align 8
  %idx.neg884 = sub i64 0, %cond882
  %add.ptr885 = getelementptr inbounds i8, ptr %539, i64 %idx.neg884
  %540 = load i64, ptr %newDictSize, align 8
  %541 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer886 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %541, i64 0, i32 10
  %542 = load ptr, ptr %tmpOutBuffer886, align 8
  %543 = call i64 @llvm.objectsize.i64.p0(ptr %542, i1 false, i1 true, i1 false)
  %call887 = call ptr @__memcpy_chk(ptr noundef %538, ptr noundef %add.ptr885, i64 noundef %540, i64 noundef %543) #9
  %544 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer888 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %544, i64 0, i32 10
  %545 = load ptr, ptr %tmpOutBuffer888, align 8
  %dict889 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %544, i64 0, i32 11
  store ptr %545, ptr %dict889, align 8
  %546 = load i64, ptr %newDictSize, align 8
  %dictSize890 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %544, i64 0, i32 12
  store i64 %546, ptr %dictSize890, align 8
  %547 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer891 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %547, i64 0, i32 10
  %548 = load ptr, ptr %tmpOutBuffer891, align 8
  %add.ptr892 = getelementptr inbounds i8, ptr %548, i64 %546
  %tmpOut893 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %547, i64 0, i32 13
  store ptr %add.ptr892, ptr %tmpOut893, align 8
  br label %if.end895

if.end895:                                        ; preds = %if.end853, %cond.end881, %land.lhs.true823, %land.lhs.true821, %land.lhs.true817, %land.lhs.true812, %while.end
  %549 = load ptr, ptr %srcPtr, align 8
  %550 = load ptr, ptr %srcStart, align 8
  %sub.ptr.lhs.cast896 = ptrtoint ptr %549 to i64
  %sub.ptr.rhs.cast897 = ptrtoint ptr %550 to i64
  %sub.ptr.sub898 = sub i64 %sub.ptr.lhs.cast896, %sub.ptr.rhs.cast897
  %551 = load ptr, ptr %srcSizePtr.addr, align 8
  store i64 %sub.ptr.sub898, ptr %551, align 8
  %552 = load ptr, ptr %dstPtr, align 8
  %553 = load ptr, ptr %dstStart, align 8
  %sub.ptr.lhs.cast899 = ptrtoint ptr %552 to i64
  %sub.ptr.rhs.cast900 = ptrtoint ptr %553 to i64
  %sub.ptr.sub901 = sub i64 %sub.ptr.lhs.cast899, %sub.ptr.rhs.cast900
  %554 = load ptr, ptr %dstSizePtr.addr, align 8
  store i64 %sub.ptr.sub901, ptr %554, align 8
  %555 = load i64, ptr %nextSrcSizeHint, align 8
  store i64 %555, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end895, %if.then713, %if.then645, %if.then569, %if.then472, %if.then430, %if.then355, %if.then186, %if.then117, %if.then103, %if.then71, %if.then24, %if.then15
  %556 = load i64, ptr %retval, align 8
  ret i64 %556
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
  store ptr %src, ptr %srcPtr, align 8
  %0 = load i64, ptr %srcSize.addr, align 8
  %cmp = icmp ult i64 %0, 7
  br i1 %cmp, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  %call = call i64 @LZ4F_returnErrorCode(i32 noundef 12)
  store i64 %call, ptr %retval, align 8
  br label %return

do.end:                                           ; preds = %entry
  %1 = load ptr, ptr %dctx.addr, align 8
  %frameInfo = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %1, i64 0, i32 1
  %frameInfo1 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %1, i64 0, i32 1
  %2 = call i64 @llvm.objectsize.i64.p0(ptr %frameInfo1, i1 false, i1 true, i1 false)
  %call2 = call ptr @__memset_chk(ptr noundef nonnull %frameInfo, i32 noundef 0, i64 noundef 32, i64 noundef %2) #9
  %3 = load ptr, ptr %srcPtr, align 8
  %call3 = call i32 @LZ4F_readLE32(ptr noundef %3)
  %and = and i32 %call3, -16
  %cmp4 = icmp eq i32 %and, 407710288
  br i1 %cmp4, label %if.then5, label %if.end10

if.then5:                                         ; preds = %do.end
  %4 = load ptr, ptr %dctx.addr, align 8
  %frameType = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %4, i64 0, i32 1, i32 3
  store i32 1, ptr %frameType, align 4
  %5 = load ptr, ptr %src.addr, align 8
  %header = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %4, i64 0, i32 19
  %cmp7 = icmp eq ptr %5, %header
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then5
  %6 = load i64, ptr %srcSize.addr, align 8
  %7 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %7, i64 0, i32 8
  store i64 %6, ptr %tmpInSize, align 8
  %tmpInTarget = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %7, i64 0, i32 9
  store i64 8, ptr %tmpInTarget, align 8
  %dStage = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %7, i64 0, i32 3
  store i32 13, ptr %dStage, align 4
  %8 = load i64, ptr %srcSize.addr, align 8
  store i64 %8, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %if.then5
  %9 = load ptr, ptr %dctx.addr, align 8
  %dStage9 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %9, i64 0, i32 3
  store i32 12, ptr %dStage9, align 4
  store i64 4, ptr %retval, align 8
  br label %return

if.end10:                                         ; preds = %do.end
  %10 = load ptr, ptr %srcPtr, align 8
  %call11 = call i32 @LZ4F_readLE32(ptr noundef %10)
  %cmp12.not = icmp eq i32 %call11, 407708164
  br i1 %cmp12.not, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end10
  %call14 = call i64 @LZ4F_returnErrorCode(i32 noundef 13)
  store i64 %call14, ptr %retval, align 8
  br label %return

if.end15:                                         ; preds = %if.end10
  %11 = load ptr, ptr %dctx.addr, align 8
  %frameType17 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %11, i64 0, i32 1, i32 3
  store i32 0, ptr %frameType17, align 4
  %12 = load ptr, ptr %srcPtr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %12, i64 4
  %13 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %13 to i32
  store i32 %conv, ptr %FLG, align 4
  %shr = lshr i32 %conv, 6
  store i32 %shr, ptr %version, align 4
  %shr19 = lshr i32 %conv, 4
  %and20 = and i32 %shr19, 1
  store i32 %and20, ptr %blockChecksumFlag, align 4
  %shr21 = lshr i32 %conv, 5
  %and22 = and i32 %shr21, 1
  store i32 %and22, ptr %blockMode, align 4
  %14 = load i32, ptr %FLG, align 4
  %shr23 = lshr i32 %14, 3
  %and24 = and i32 %shr23, 1
  store i32 %and24, ptr %contentSizeFlag, align 4
  %shr25 = lshr i32 %14, 2
  %and26 = and i32 %shr25, 1
  store i32 %and26, ptr %contentChecksumFlag, align 4
  %15 = load i32, ptr %FLG, align 4
  %and27 = and i32 %15, 1
  store i32 %and27, ptr %dictIDFlag, align 4
  %16 = and i32 %15, 2
  %cmp30.not = icmp eq i32 %16, 0
  br i1 %cmp30.not, label %if.end34, label %if.then32

if.then32:                                        ; preds = %if.end15
  %call33 = call i64 @LZ4F_returnErrorCode(i32 noundef 8)
  store i64 %call33, ptr %retval, align 8
  br label %return

if.end34:                                         ; preds = %if.end15
  %17 = load i32, ptr %version, align 4
  %cmp35.not = icmp eq i32 %17, 1
  br i1 %cmp35.not, label %if.end39, label %if.then37

if.then37:                                        ; preds = %if.end34
  %call38 = call i64 @LZ4F_returnErrorCode(i32 noundef 6)
  store i64 %call38, ptr %retval, align 8
  br label %return

if.end39:                                         ; preds = %if.end34
  %18 = load i32, ptr %contentSizeFlag, align 4
  %tobool.not = icmp eq i32 %18, 0
  %add = select i1 %tobool.not, i64 7, i64 15
  %19 = load i32, ptr %dictIDFlag, align 4
  %tobool41.not = icmp eq i32 %19, 0
  %cond42 = select i1 %tobool41.not, i64 0, i64 4
  %add44 = add nuw nsw i64 %add, %cond42
  store i64 %add44, ptr %frameHeaderSize, align 8
  %20 = load i64, ptr %srcSize.addr, align 8
  %cmp45 = icmp ult i64 %20, %add44
  br i1 %cmp45, label %if.then47, label %if.end62

if.then47:                                        ; preds = %if.end39
  %21 = load ptr, ptr %srcPtr, align 8
  %22 = load ptr, ptr %dctx.addr, align 8
  %header48 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %22, i64 0, i32 19
  %cmp50.not = icmp eq ptr %21, %header48
  br i1 %cmp50.not, label %if.end58, label %if.then52

if.then52:                                        ; preds = %if.then47
  %23 = load ptr, ptr %dctx.addr, align 8
  %header53 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %23, i64 0, i32 19
  %24 = load ptr, ptr %srcPtr, align 8
  %25 = load i64, ptr %srcSize.addr, align 8
  %header55 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %23, i64 0, i32 19
  %26 = call i64 @llvm.objectsize.i64.p0(ptr %header55, i1 false, i1 true, i1 false)
  %call57 = call ptr @__memcpy_chk(ptr noundef nonnull %header53, ptr noundef %24, i64 noundef %25, i64 noundef %26) #9
  br label %if.end58

if.end58:                                         ; preds = %if.then52, %if.then47
  %27 = load i64, ptr %srcSize.addr, align 8
  %28 = load ptr, ptr %dctx.addr, align 8
  %tmpInSize59 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %28, i64 0, i32 8
  store i64 %27, ptr %tmpInSize59, align 8
  %29 = load i64, ptr %frameHeaderSize, align 8
  %tmpInTarget60 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %28, i64 0, i32 9
  store i64 %29, ptr %tmpInTarget60, align 8
  %dStage61 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %28, i64 0, i32 3
  store i32 1, ptr %dStage61, align 4
  %30 = load i64, ptr %srcSize.addr, align 8
  store i64 %30, ptr %retval, align 8
  br label %return

if.end62:                                         ; preds = %if.end39
  %31 = load ptr, ptr %srcPtr, align 8
  %arrayidx63 = getelementptr inbounds i8, ptr %31, i64 5
  %32 = load i8, ptr %arrayidx63, align 1
  %conv64 = zext i8 %32 to i32
  store i32 %conv64, ptr %BD, align 4
  %shr65 = lshr i32 %conv64, 4
  %and66 = and i32 %shr65, 7
  store i32 %and66, ptr %blockSizeID, align 4
  %cmp69.not = icmp sgt i8 %32, -1
  br i1 %cmp69.not, label %if.end73, label %if.then71

if.then71:                                        ; preds = %if.end62
  %call72 = call i64 @LZ4F_returnErrorCode(i32 noundef 8)
  store i64 %call72, ptr %retval, align 8
  br label %return

if.end73:                                         ; preds = %if.end62
  %33 = load i32, ptr %blockSizeID, align 4
  %cmp74 = icmp ult i32 %33, 4
  br i1 %cmp74, label %if.then76, label %if.end78

if.then76:                                        ; preds = %if.end73
  %call77 = call i64 @LZ4F_returnErrorCode(i32 noundef 2)
  store i64 %call77, ptr %retval, align 8
  br label %return

if.end78:                                         ; preds = %if.end73
  %34 = load i32, ptr %BD, align 4
  %and80 = and i32 %34, 15
  %cmp81.not = icmp eq i32 %and80, 0
  br i1 %cmp81.not, label %if.end85, label %if.then83

if.then83:                                        ; preds = %if.end78
  %call84 = call i64 @LZ4F_returnErrorCode(i32 noundef 8)
  store i64 %call84, ptr %retval, align 8
  br label %return

if.end85:                                         ; preds = %if.end78
  %35 = load ptr, ptr %srcPtr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %35, i64 4
  %36 = load i64, ptr %frameHeaderSize, align 8
  %sub = add i64 %36, -5
  %call86 = call zeroext i8 @LZ4F_headerChecksum(ptr noundef nonnull %add.ptr, i64 noundef %sub)
  store i8 %call86, ptr %HC, align 1
  %37 = load i8, ptr %HC, align 1
  %38 = load ptr, ptr %srcPtr, align 8
  %39 = load i64, ptr %frameHeaderSize, align 8
  %sub89 = add i64 %39, -1
  %arrayidx90 = getelementptr inbounds i8, ptr %38, i64 %sub89
  %40 = load i8, ptr %arrayidx90, align 1
  %cmp92.not = icmp eq i8 %37, %40
  br i1 %cmp92.not, label %do.end97, label %if.then94

if.then94:                                        ; preds = %if.end85
  %call95 = call i64 @LZ4F_returnErrorCode(i32 noundef 17)
  store i64 %call95, ptr %retval, align 8
  br label %return

do.end97:                                         ; preds = %if.end85
  %41 = load i32, ptr %blockMode, align 4
  %42 = load ptr, ptr %dctx.addr, align 8
  %blockMode99 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %42, i64 0, i32 1, i32 1
  store i32 %41, ptr %blockMode99, align 4
  %43 = load i32, ptr %blockChecksumFlag, align 4
  %blockChecksumFlag101 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %42, i64 0, i32 1, i32 6
  store i32 %43, ptr %blockChecksumFlag101, align 4
  %44 = load i32, ptr %contentChecksumFlag, align 4
  %45 = load ptr, ptr %dctx.addr, align 8
  %contentChecksumFlag103 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %45, i64 0, i32 1, i32 2
  store i32 %44, ptr %contentChecksumFlag103, align 8
  %46 = load i32, ptr %blockSizeID, align 4
  %frameInfo104 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %45, i64 0, i32 1
  store i32 %46, ptr %frameInfo104, align 8
  %call106 = call i64 @LZ4F_getBlockSize(i32 noundef %46)
  %47 = load ptr, ptr %dctx.addr, align 8
  %maxBlockSize = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %47, i64 0, i32 5
  store i64 %call106, ptr %maxBlockSize, align 8
  %48 = load i32, ptr %contentSizeFlag, align 4
  %tobool107.not = icmp eq i32 %48, 0
  br i1 %tobool107.not, label %if.end112, label %if.then108

if.then108:                                       ; preds = %do.end97
  %49 = load ptr, ptr %srcPtr, align 8
  %add.ptr109 = getelementptr inbounds i8, ptr %49, i64 6
  %call110 = call i64 @LZ4F_readLE64(ptr noundef nonnull %add.ptr109)
  %50 = load ptr, ptr %dctx.addr, align 8
  %contentSize = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %50, i64 0, i32 1, i32 4
  store i64 %call110, ptr %contentSize, align 8
  %frameRemainingSize = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %50, i64 0, i32 4
  store i64 %call110, ptr %frameRemainingSize, align 8
  br label %if.end112

if.end112:                                        ; preds = %if.then108, %do.end97
  %51 = load i32, ptr %dictIDFlag, align 4
  %tobool113.not = icmp eq i32 %51, 0
  br i1 %tobool113.not, label %if.end119, label %if.then114

if.then114:                                       ; preds = %if.end112
  %52 = load ptr, ptr %srcPtr, align 8
  %53 = load i64, ptr %frameHeaderSize, align 8
  %add.ptr115 = getelementptr inbounds i8, ptr %52, i64 %53
  %add.ptr116 = getelementptr inbounds i8, ptr %add.ptr115, i64 -5
  %call117 = call i32 @LZ4F_readLE32(ptr noundef nonnull %add.ptr116)
  %54 = load ptr, ptr %dctx.addr, align 8
  %dictID = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %54, i64 0, i32 1, i32 5
  store i32 %call117, ptr %dictID, align 8
  br label %if.end119

if.end119:                                        ; preds = %if.then114, %if.end112
  %55 = load ptr, ptr %dctx.addr, align 8
  %dStage120 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %55, i64 0, i32 3
  store i32 2, ptr %dStage120, align 4
  %56 = load i64, ptr %frameHeaderSize, align 8
  store i64 %56, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end119, %if.then94, %if.then83, %if.then76, %if.then71, %if.end58, %if.then37, %if.then32, %if.then13, %if.else, %if.then8, %if.then
  %57 = load i64, ptr %retval, align 8
  ret i64 %57
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
  %dictSize = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %dctx, i64 0, i32 12
  %0 = load i64, ptr %dictSize, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %dstPtr.addr, align 8
  %2 = load ptr, ptr %dctx.addr, align 8
  %dict = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %2, i64 0, i32 11
  store ptr %1, ptr %dict, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %dctx.addr, align 8
  %dict1 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %3, i64 0, i32 11
  %4 = load ptr, ptr %dict1, align 8
  %dictSize2 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %3, i64 0, i32 12
  %5 = load i64, ptr %dictSize2, align 8
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 %5
  %6 = load ptr, ptr %dstPtr.addr, align 8
  %cmp3 = icmp eq ptr %add.ptr, %6
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %7 = load i64, ptr %dstSize.addr, align 8
  %8 = load ptr, ptr %dctx.addr, align 8
  %dictSize5 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %8, i64 0, i32 12
  %9 = load i64, ptr %dictSize5, align 8
  %add = add i64 %9, %7
  store i64 %add, ptr %dictSize5, align 8
  br label %return

if.end6:                                          ; preds = %if.end
  %10 = load ptr, ptr %dstPtr.addr, align 8
  %11 = load ptr, ptr %dstBufferStart.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %10 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %11 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %12 = load i64, ptr %dstSize.addr, align 8
  %add7 = add i64 %sub.ptr.sub, %12
  %cmp8 = icmp ugt i64 %add7, 65535
  br i1 %cmp8, label %if.then9, label %if.end16

if.then9:                                         ; preds = %if.end6
  %13 = load ptr, ptr %dstBufferStart.addr, align 8
  %14 = load ptr, ptr %dctx.addr, align 8
  %dict10 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %14, i64 0, i32 11
  store ptr %13, ptr %dict10, align 8
  %15 = load ptr, ptr %dstPtr.addr, align 8
  %sub.ptr.lhs.cast11 = ptrtoint ptr %15 to i64
  %sub.ptr.rhs.cast12 = ptrtoint ptr %13 to i64
  %sub.ptr.sub13 = sub i64 %sub.ptr.lhs.cast11, %sub.ptr.rhs.cast12
  %16 = load i64, ptr %dstSize.addr, align 8
  %add14 = add i64 %sub.ptr.sub13, %16
  %17 = load ptr, ptr %dctx.addr, align 8
  %dictSize15 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %17, i64 0, i32 12
  store i64 %add14, ptr %dictSize15, align 8
  br label %return

if.end16:                                         ; preds = %if.end6
  %18 = load i32, ptr %withinTmp.addr, align 4
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %if.end22, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end16
  %19 = load ptr, ptr %dctx.addr, align 8
  %dict17 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %19, i64 0, i32 11
  %20 = load ptr, ptr %dict17, align 8
  %tmpOutBuffer = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %19, i64 0, i32 10
  %21 = load ptr, ptr %tmpOutBuffer, align 8
  %cmp18 = icmp eq ptr %20, %21
  br i1 %cmp18, label %if.then19, label %if.end22

if.then19:                                        ; preds = %land.lhs.true
  %22 = load i64, ptr %dstSize.addr, align 8
  %23 = load ptr, ptr %dctx.addr, align 8
  %dictSize20 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %23, i64 0, i32 12
  %24 = load i64, ptr %dictSize20, align 8
  %add21 = add i64 %24, %22
  store i64 %add21, ptr %dictSize20, align 8
  br label %return

if.end22:                                         ; preds = %land.lhs.true, %if.end16
  %25 = load i32, ptr %withinTmp.addr, align 4
  %tobool23.not = icmp eq i32 %25, 0
  br i1 %tobool23.not, label %if.end56, label %if.then24

if.then24:                                        ; preds = %if.end22
  %26 = load ptr, ptr %dctx.addr, align 8
  %tmpOut = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %26, i64 0, i32 13
  %27 = load ptr, ptr %tmpOut, align 8
  %tmpOutBuffer25 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %26, i64 0, i32 10
  %28 = load ptr, ptr %tmpOutBuffer25, align 8
  %sub.ptr.lhs.cast26 = ptrtoint ptr %27 to i64
  %sub.ptr.rhs.cast27 = ptrtoint ptr %28 to i64
  %sub.ptr.sub28 = sub i64 %sub.ptr.lhs.cast26, %sub.ptr.rhs.cast27
  store i64 %sub.ptr.sub28, ptr %preserveSize, align 8
  %29 = load ptr, ptr %dctx.addr, align 8
  %tmpOutSize = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %29, i64 0, i32 14
  %30 = load i64, ptr %tmpOutSize, align 8
  %sub = sub i64 65536, %30
  store i64 %sub, ptr %copySize, align 8
  %dict29 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %29, i64 0, i32 11
  %31 = load ptr, ptr %dict29, align 8
  %32 = load ptr, ptr %dctx.addr, align 8
  %dictSize30 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %32, i64 0, i32 12
  %33 = load i64, ptr %dictSize30, align 8
  %add.ptr31 = getelementptr inbounds i8, ptr %31, i64 %33
  %tmpOutStart = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %32, i64 0, i32 15
  %34 = load i64, ptr %tmpOutStart, align 8
  %idx.neg = sub i64 0, %34
  %add.ptr32 = getelementptr inbounds i8, ptr %add.ptr31, i64 %idx.neg
  store ptr %add.ptr32, ptr %oldDictEnd, align 8
  %35 = load ptr, ptr %dctx.addr, align 8
  %tmpOutSize33 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %35, i64 0, i32 14
  %36 = load i64, ptr %tmpOutSize33, align 8
  %cmp34 = icmp ugt i64 %36, 65536
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.then24
  store i64 0, ptr %copySize, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.then24
  %37 = load i64, ptr %copySize, align 8
  %38 = load i64, ptr %preserveSize, align 8
  %cmp37 = icmp ugt i64 %37, %38
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end36
  %39 = load i64, ptr %preserveSize, align 8
  store i64 %39, ptr %copySize, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end36
  %40 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer40 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %40, i64 0, i32 10
  %41 = load ptr, ptr %tmpOutBuffer40, align 8
  %42 = load i64, ptr %preserveSize, align 8
  %add.ptr41 = getelementptr inbounds i8, ptr %41, i64 %42
  %43 = load i64, ptr %copySize, align 8
  %idx.neg42 = sub i64 0, %43
  %add.ptr43 = getelementptr inbounds i8, ptr %add.ptr41, i64 %idx.neg42
  %44 = load ptr, ptr %oldDictEnd, align 8
  %idx.neg44 = sub i64 0, %43
  %add.ptr45 = getelementptr inbounds i8, ptr %44, i64 %idx.neg44
  %45 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer46 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %45, i64 0, i32 10
  %46 = load ptr, ptr %tmpOutBuffer46, align 8
  %47 = load i64, ptr %preserveSize, align 8
  %add.ptr47 = getelementptr inbounds i8, ptr %46, i64 %47
  %48 = load i64, ptr %copySize, align 8
  %idx.neg48 = sub i64 0, %48
  %add.ptr49 = getelementptr inbounds i8, ptr %add.ptr47, i64 %idx.neg48
  %49 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr49, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %add.ptr43, ptr noundef %add.ptr45, i64 noundef %43, i64 noundef %49) #9
  %50 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer50 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %50, i64 0, i32 10
  %51 = load ptr, ptr %tmpOutBuffer50, align 8
  %dict51 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %50, i64 0, i32 11
  store ptr %51, ptr %dict51, align 8
  %52 = load i64, ptr %preserveSize, align 8
  %tmpOutStart52 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %50, i64 0, i32 15
  %53 = load i64, ptr %tmpOutStart52, align 8
  %add53 = add i64 %52, %53
  %54 = load i64, ptr %dstSize.addr, align 8
  %add54 = add i64 %add53, %54
  %55 = load ptr, ptr %dctx.addr, align 8
  %dictSize55 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %55, i64 0, i32 12
  store i64 %add54, ptr %dictSize55, align 8
  br label %return

if.end56:                                         ; preds = %if.end22
  %56 = load ptr, ptr %dctx.addr, align 8
  %dict57 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %56, i64 0, i32 11
  %57 = load ptr, ptr %dict57, align 8
  %tmpOutBuffer58 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %56, i64 0, i32 10
  %58 = load ptr, ptr %tmpOutBuffer58, align 8
  %cmp59 = icmp eq ptr %57, %58
  br i1 %cmp59, label %if.then60, label %if.end86

if.then60:                                        ; preds = %if.end56
  %59 = load ptr, ptr %dctx.addr, align 8
  %dictSize61 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %59, i64 0, i32 12
  %60 = load i64, ptr %dictSize61, align 8
  %61 = load i64, ptr %dstSize.addr, align 8
  %add62 = add i64 %60, %61
  %maxBufferSize = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %59, i64 0, i32 6
  %62 = load i64, ptr %maxBufferSize, align 8
  %cmp63 = icmp ugt i64 %add62, %62
  br i1 %cmp63, label %if.then64, label %if.end76

if.then64:                                        ; preds = %if.then60
  %63 = load i64, ptr %dstSize.addr, align 8
  %sub66 = sub i64 65536, %63
  store i64 %sub66, ptr %preserveSize65, align 8
  %64 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer67 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %64, i64 0, i32 10
  %65 = load ptr, ptr %tmpOutBuffer67, align 8
  %dict68 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %64, i64 0, i32 11
  %66 = load ptr, ptr %dict68, align 8
  %dictSize69 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %64, i64 0, i32 12
  %67 = load i64, ptr %dictSize69, align 8
  %add.ptr70 = getelementptr inbounds i8, ptr %66, i64 %67
  %68 = load i64, ptr %preserveSize65, align 8
  %idx.neg71 = sub i64 0, %68
  %add.ptr72 = getelementptr inbounds i8, ptr %add.ptr70, i64 %idx.neg71
  %69 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer73 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %69, i64 0, i32 10
  %70 = load ptr, ptr %tmpOutBuffer73, align 8
  %71 = call i64 @llvm.objectsize.i64.p0(ptr %70, i1 false, i1 true, i1 false)
  %call74 = call ptr @__memcpy_chk(ptr noundef %65, ptr noundef %add.ptr72, i64 noundef %68, i64 noundef %71) #9
  %72 = load i64, ptr %preserveSize65, align 8
  %dictSize75 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %69, i64 0, i32 12
  store i64 %72, ptr %dictSize75, align 8
  br label %if.end76

if.end76:                                         ; preds = %if.then64, %if.then60
  %73 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer77 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %73, i64 0, i32 10
  %74 = load ptr, ptr %tmpOutBuffer77, align 8
  %dictSize78 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %73, i64 0, i32 12
  %75 = load i64, ptr %dictSize78, align 8
  %add.ptr79 = getelementptr inbounds i8, ptr %74, i64 %75
  %76 = load ptr, ptr %dstPtr.addr, align 8
  %77 = load i64, ptr %dstSize.addr, align 8
  %78 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer80 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %78, i64 0, i32 10
  %79 = load ptr, ptr %tmpOutBuffer80, align 8
  %dictSize81 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %78, i64 0, i32 12
  %80 = load i64, ptr %dictSize81, align 8
  %add.ptr82 = getelementptr inbounds i8, ptr %79, i64 %80
  %81 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr82, i1 false, i1 true, i1 false)
  %call83 = call ptr @__memcpy_chk(ptr noundef %add.ptr79, ptr noundef %76, i64 noundef %77, i64 noundef %81) #9
  %82 = load i64, ptr %dstSize.addr, align 8
  %83 = load ptr, ptr %dctx.addr, align 8
  %dictSize84 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %83, i64 0, i32 12
  %84 = load i64, ptr %dictSize84, align 8
  %add85 = add i64 %84, %82
  store i64 %add85, ptr %dictSize84, align 8
  br label %return

if.end86:                                         ; preds = %if.end56
  %85 = load i64, ptr %dstSize.addr, align 8
  %sub88 = sub i64 65536, %85
  store i64 %sub88, ptr %preserveSize87, align 8
  %86 = load ptr, ptr %dctx.addr, align 8
  %dictSize89 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %86, i64 0, i32 12
  %87 = load i64, ptr %dictSize89, align 8
  %cmp90 = icmp ugt i64 %sub88, %87
  br i1 %cmp90, label %if.then91, label %if.end93

if.then91:                                        ; preds = %if.end86
  %88 = load ptr, ptr %dctx.addr, align 8
  %dictSize92 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %88, i64 0, i32 12
  %89 = load i64, ptr %dictSize92, align 8
  store i64 %89, ptr %preserveSize87, align 8
  br label %if.end93

if.end93:                                         ; preds = %if.then91, %if.end86
  %90 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer94 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %90, i64 0, i32 10
  %91 = load ptr, ptr %tmpOutBuffer94, align 8
  %dict95 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %90, i64 0, i32 11
  %92 = load ptr, ptr %dict95, align 8
  %dictSize96 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %90, i64 0, i32 12
  %93 = load i64, ptr %dictSize96, align 8
  %add.ptr97 = getelementptr inbounds i8, ptr %92, i64 %93
  %94 = load i64, ptr %preserveSize87, align 8
  %idx.neg98 = sub i64 0, %94
  %add.ptr99 = getelementptr inbounds i8, ptr %add.ptr97, i64 %idx.neg98
  %95 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer100 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %95, i64 0, i32 10
  %96 = load ptr, ptr %tmpOutBuffer100, align 8
  %97 = call i64 @llvm.objectsize.i64.p0(ptr %96, i1 false, i1 true, i1 false)
  %call101 = call ptr @__memcpy_chk(ptr noundef %91, ptr noundef %add.ptr99, i64 noundef %94, i64 noundef %97) #9
  %tmpOutBuffer102 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %95, i64 0, i32 10
  %98 = load ptr, ptr %tmpOutBuffer102, align 8
  %99 = load i64, ptr %preserveSize87, align 8
  %add.ptr103 = getelementptr inbounds i8, ptr %98, i64 %99
  %100 = load ptr, ptr %dstPtr.addr, align 8
  %101 = load i64, ptr %dstSize.addr, align 8
  %102 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer104 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %102, i64 0, i32 10
  %103 = load ptr, ptr %tmpOutBuffer104, align 8
  %104 = load i64, ptr %preserveSize87, align 8
  %add.ptr105 = getelementptr inbounds i8, ptr %103, i64 %104
  %105 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr105, i1 false, i1 true, i1 false)
  %call106 = call ptr @__memcpy_chk(ptr noundef %add.ptr103, ptr noundef %100, i64 noundef %101, i64 noundef %105) #9
  %106 = load ptr, ptr %dctx.addr, align 8
  %tmpOutBuffer107 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %106, i64 0, i32 10
  %107 = load ptr, ptr %tmpOutBuffer107, align 8
  %dict108 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %106, i64 0, i32 11
  store ptr %107, ptr %dict108, align 8
  %108 = load i64, ptr %preserveSize87, align 8
  %109 = load i64, ptr %dstSize.addr, align 8
  %add109 = add i64 %108, %109
  %110 = load ptr, ptr %dctx.addr, align 8
  %dictSize110 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %110, i64 0, i32 12
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
  %dStage = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %0, i64 0, i32 3
  %1 = load i32, ptr %dStage, align 4
  %cmp = icmp ult i32 %1, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dict.addr, align 8
  %3 = load ptr, ptr %dctx.addr, align 8
  %dict1 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %3, i64 0, i32 11
  store ptr %2, ptr %dict1, align 8
  %4 = load i64, ptr %dictSize.addr, align 8
  %dictSize2 = getelementptr inbounds %struct.LZ4F_dctx_s, ptr %3, i64 0, i32 12
  store i64 %4, ptr %dictSize2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %dctx.addr, align 8
  %6 = load ptr, ptr %dstBuffer.addr, align 8
  %7 = load ptr, ptr %dstSizePtr.addr, align 8
  %8 = load ptr, ptr %srcBuffer.addr, align 8
  %9 = load ptr, ptr %srcSizePtr.addr, align 8
  %10 = load ptr, ptr %decompressOptionsPtr.addr, align 8
  %call = call i64 @LZ4F_decompress(ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10)
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
  %cmp = icmp slt i32 %level, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %cdict.addr, align 8
  %tobool.not = icmp ne ptr %0, null
  %1 = load i32, ptr %blockMode.addr, align 4
  %cmp1 = icmp eq i32 %1, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp1
  br i1 %or.cond, label %if.then2, label %if.end9

if.then2:                                         ; preds = %if.then
  %2 = load ptr, ptr %ctx.addr, align 8
  call void @LZ4_resetStream_fast(ptr noundef %2) #9
  %3 = load ptr, ptr %cdict.addr, align 8
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end9, label %if.then4

if.then4:                                         ; preds = %if.then2
  %4 = load ptr, ptr %ctx.addr, align 8
  %5 = load ptr, ptr %cdict.addr, align 8
  %fastCtx = getelementptr inbounds %struct.LZ4F_CDict_s, ptr %5, i64 0, i32 2
  %6 = load ptr, ptr %fastCtx, align 8
  call void @LZ4_attach_dictionary(ptr noundef %4, ptr noundef %6) #9
  br label %if.end9

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %ctx.addr, align 8
  %8 = load i32, ptr %level.addr, align 4
  call void @LZ4_resetStreamHC_fast(ptr noundef %7, i32 noundef %8) #9
  %9 = load ptr, ptr %cdict.addr, align 8
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.else
  %10 = load ptr, ptr %ctx.addr, align 8
  %11 = load ptr, ptr %cdict.addr, align 8
  %HCCtx = getelementptr inbounds %struct.LZ4F_CDict_s, ptr %11, i64 0, i32 3
  %12 = load ptr, ptr %HCCtx, align 8
  call void @LZ4_attach_HC_dictionary(ptr noundef %10, ptr noundef %12) #9
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then7, %if.then, %if.then4, %if.then2
  ret void
}

declare void @LZ4_favorDecompressionSpeed(ptr noundef, i32 noundef) #3

declare i32 @LZ4_loadDict(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind ssp uwtable
define internal void @LZ4F_writeLE64(ptr noundef %dst, i64 noundef %value64) #0 {
entry:
  %value64.addr = alloca i64, align 8
  %dstPtr = alloca ptr, align 8
  store i64 %value64, ptr %value64.addr, align 8
  store ptr %dst, ptr %dstPtr, align 8
  %conv = trunc i64 %value64 to i8
  store i8 %conv, ptr %dst, align 1
  %shr = lshr i64 %value64, 8
  %conv1 = trunc i64 %shr to i8
  %arrayidx2 = getelementptr inbounds i8, ptr %dst, i64 1
  store i8 %conv1, ptr %arrayidx2, align 1
  %0 = load i64, ptr %value64.addr, align 8
  %shr3 = lshr i64 %0, 16
  %conv4 = trunc i64 %shr3 to i8
  %1 = load ptr, ptr %dstPtr, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %1, i64 2
  store i8 %conv4, ptr %arrayidx5, align 1
  %shr6 = lshr i64 %0, 24
  %conv7 = trunc i64 %shr6 to i8
  %arrayidx8 = getelementptr inbounds i8, ptr %1, i64 3
  store i8 %conv7, ptr %arrayidx8, align 1
  %2 = load i64, ptr %value64.addr, align 8
  %shr9 = lshr i64 %2, 32
  %conv10 = trunc i64 %shr9 to i8
  %3 = load ptr, ptr %dstPtr, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %3, i64 4
  store i8 %conv10, ptr %arrayidx11, align 1
  %shr12 = lshr i64 %2, 40
  %conv13 = trunc i64 %shr12 to i8
  %arrayidx14 = getelementptr inbounds i8, ptr %3, i64 5
  store i8 %conv13, ptr %arrayidx14, align 1
  %4 = load i64, ptr %value64.addr, align 8
  %shr15 = lshr i64 %4, 48
  %conv16 = trunc i64 %shr15 to i8
  %5 = load ptr, ptr %dstPtr, align 8
  %arrayidx17 = getelementptr inbounds i8, ptr %5, i64 6
  store i8 %conv16, ptr %arrayidx17, align 1
  %shr18 = lshr i64 %4, 56
  %conv19 = trunc i64 %shr18 to i8
  %arrayidx20 = getelementptr inbounds i8, ptr %5, i64 7
  store i8 %conv19, ptr %arrayidx20, align 1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @LZ4F_headerChecksum(ptr noundef %header, i64 noundef %length) #0 {
entry:
  %call = call i32 @XXH32(ptr noundef %header, i64 noundef %length, i32 noundef 0) #9
  %shr = lshr i32 %call, 8
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
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @LZ4F_compressBlock(ptr noundef %ctx, ptr noundef %src, ptr noundef %dst, i32 noundef %srcSize, i32 noundef %dstCapacity, i32 noundef %level, ptr noundef %cdict) #0 {
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
  %cmp = icmp slt i32 %level, 0
  %0 = load i32, ptr %level.addr, align 4
  %add = sub i32 1, %0
  %cond = select i1 %cmp, i32 %add, i32 1
  store i32 %cond, ptr %acceleration, align 4
  %1 = load ptr, ptr %ctx.addr, align 8
  %2 = load ptr, ptr %cdict.addr, align 8
  %3 = load i32, ptr %level.addr, align 4
  call void @LZ4F_initStream(ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef 1)
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %ctx.addr, align 8
  %5 = load ptr, ptr %src.addr, align 8
  %6 = load ptr, ptr %dst.addr, align 8
  %7 = load i32, ptr %srcSize.addr, align 4
  %8 = load i32, ptr %dstCapacity.addr, align 4
  %9 = load i32, ptr %acceleration, align 4
  %call = call i32 @LZ4_compress_fast_continue(ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) #9
  br label %return

if.else:                                          ; preds = %entry
  %10 = load ptr, ptr %ctx.addr, align 8
  %11 = load ptr, ptr %src.addr, align 8
  %12 = load ptr, ptr %dst.addr, align 8
  %13 = load i32, ptr %srcSize.addr, align 4
  %14 = load i32, ptr %dstCapacity.addr, align 4
  %15 = load i32, ptr %acceleration, align 4
  %call1 = call i32 @LZ4_compress_fast_extState_fastReset(ptr noundef %10, ptr noundef %11, ptr noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15) #9
  br label %return

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %call1, %if.else ], [ %call, %if.then ]
  ret i32 %storemerge
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
  store ptr %ctx, ptr %ctx.addr, align 8
  store ptr %src, ptr %src.addr, align 8
  store ptr %dst, ptr %dst.addr, align 8
  store i32 %srcSize, ptr %srcSize.addr, align 4
  store i32 %dstCapacity, ptr %dstCapacity.addr, align 4
  store i32 %level, ptr %level.addr, align 4
  %cmp = icmp slt i32 %level, 0
  %0 = load i32, ptr %level.addr, align 4
  %add = sub i32 1, %0
  %cond = select i1 %cmp, i32 %add, i32 1
  %1 = load ptr, ptr %ctx.addr, align 8
  %2 = load ptr, ptr %src.addr, align 8
  %3 = load ptr, ptr %dst.addr, align 8
  %4 = load i32, ptr %srcSize.addr, align 4
  %5 = load i32, ptr %dstCapacity.addr, align 4
  %call = call i32 @LZ4_compress_fast_continue(ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %cond) #9
  ret i32 %call
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @LZ4F_compressBlockHC(ptr noundef %ctx, ptr noundef %src, ptr noundef %dst, i32 noundef %srcSize, i32 noundef %dstCapacity, i32 noundef %level, ptr noundef %cdict) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %srcSize.addr = alloca i32, align 4
  %dstCapacity.addr = alloca i32, align 4
  %level.addr = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8
  store ptr %src, ptr %src.addr, align 8
  store ptr %dst, ptr %dst.addr, align 8
  store i32 %srcSize, ptr %srcSize.addr, align 4
  store i32 %dstCapacity, ptr %dstCapacity.addr, align 4
  store i32 %level, ptr %level.addr, align 4
  call void @LZ4F_initStream(ptr noundef %ctx, ptr noundef %cdict, i32 noundef %level, i32 noundef 1)
  %tobool.not = icmp eq ptr %cdict, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %ctx.addr, align 8
  %1 = load ptr, ptr %src.addr, align 8
  %2 = load ptr, ptr %dst.addr, align 8
  %3 = load i32, ptr %srcSize.addr, align 4
  %4 = load i32, ptr %dstCapacity.addr, align 4
  %call = call i32 @LZ4_compress_HC_continue(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #9
  br label %return

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %ctx.addr, align 8
  %6 = load ptr, ptr %src.addr, align 8
  %7 = load ptr, ptr %dst.addr, align 8
  %8 = load i32, ptr %srcSize.addr, align 4
  %9 = load i32, ptr %dstCapacity.addr, align 4
  %10 = load i32, ptr %level.addr, align 4
  %call1 = call i32 @LZ4_compress_HC_extStateHC_fastReset(ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) #9
  br label %return

return:                                           ; preds = %if.end, %if.then
  %storemerge = phi i32 [ %call1, %if.end ], [ %call, %if.then ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @LZ4F_compressBlockHC_continue(ptr noundef %ctx, ptr noundef %src, ptr noundef %dst, i32 noundef %srcSize, i32 noundef %dstCapacity, i32 noundef %level, ptr noundef %cdict) #0 {
entry:
  %call = call i32 @LZ4_compress_HC_continue(ptr noundef %ctx, ptr noundef %src, ptr noundef %dst, i32 noundef %srcSize, i32 noundef %dstCapacity) #9
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
  %srcPtr = alloca ptr, align 8
  store ptr %src, ptr %srcPtr, align 8
  %0 = load i8, ptr %src, align 1
  %conv = zext i8 %0 to i64
  %arrayidx1 = getelementptr inbounds i8, ptr %src, i64 1
  %1 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %1 to i64
  %shl = shl nuw nsw i64 %conv2, 8
  %or = or i64 %shl, %conv
  %2 = load ptr, ptr %srcPtr, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %2, i64 2
  %3 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %3 to i64
  %shl5 = shl nuw nsw i64 %conv4, 16
  %or6 = or i64 %or, %shl5
  %arrayidx7 = getelementptr inbounds i8, ptr %2, i64 3
  %4 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %4 to i64
  %shl9 = shl nuw nsw i64 %conv8, 24
  %or10 = or i64 %or6, %shl9
  %5 = load ptr, ptr %srcPtr, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %5, i64 4
  %6 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %6 to i64
  %shl13 = shl nuw nsw i64 %conv12, 32
  %or14 = or i64 %or10, %shl13
  %arrayidx15 = getelementptr inbounds i8, ptr %5, i64 5
  %7 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %7 to i64
  %shl17 = shl nuw nsw i64 %conv16, 40
  %or18 = or i64 %or14, %shl17
  %8 = load ptr, ptr %srcPtr, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %8, i64 6
  %9 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %9 to i64
  %shl21 = shl nuw nsw i64 %conv20, 48
  %or22 = or i64 %or18, %shl21
  %arrayidx23 = getelementptr inbounds i8, ptr %8, i64 7
  %10 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %10 to i64
  %shl25 = shl nuw i64 %conv24, 56
  %or26 = or i64 %or22, %shl25
  ret i64 %or26
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly nocallback nofree nounwind willreturn }
attributes #2 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { allocsize(0,1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #8 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind allocsize(0,1) }

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
