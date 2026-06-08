; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_rl_value_proxy/source_snapshot_public_repos_mibench_consumer_lame_lame3.70_VbrTag.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/consumer/lame/lame3.70/VbrTag.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.VBRTAGDATA = type { i32, i32, i32, i32, i32, i32, [100 x i8] }

@SizeOfEmptyFrame = global [2 x [2 x i32]] [[2 x i32] [i32 32, i32 17], [2 x i32] [i32 17, i32 9]], align 4
@pVbrFrames = global ptr null, align 8
@nVbrNumFrames = global i32 0, align 4
@nVbrFrameBufferSize = global i32 0, align 4
@VBRTag = internal global [5 x i8] c"Xing\00", align 1
@GetVbrTag.sr_table = internal global [4 x i32] [i32 44100, i32 48000, i32 32000, i32 99999], align 4
@g_Position = internal global [100 x i64] zeroinitializer, align 8
@pbtStreamBuffer = internal global [216 x i8] zeroinitializer, align 1
@nZeroStreamSize = internal global i32 0, align 4
@InitVbrTag.framesize = internal constant [3 x i32] [i32 208, i32 192, i32 288], align 4
@__stderrp = external global ptr, align 8
@.str = private unnamed_addr constant [34 x i8] c"illegal sampling frequency index\0A\00", align 1
@TotalFrameSize = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Xing VBR header problem...use -t\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"rb+\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"LAME%s\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @AddVbrFrame(i32 noundef %nStreamPos) #0 {
entry:
  %nStreamPos.addr = alloca i32, align 4
  store i32 %nStreamPos, ptr %nStreamPos.addr, align 4
  %0 = load ptr, ptr @pVbrFrames, align 8
  %cmp = icmp eq ptr %0, null
  %1 = load i32, ptr @nVbrFrameBufferSize, align 4
  %cmp1 = icmp eq i32 %1, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 100, ptr @nVbrFrameBufferSize, align 4
  %call = call dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #9
  store ptr %call, ptr @pVbrFrames, align 8
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %2 = load i32, ptr @nVbrNumFrames, align 4
  %3 = load i32, ptr @nVbrFrameBufferSize, align 4
  %cmp2 = icmp eq i32 %2, %3
  br i1 %cmp2, label %if.then4, label %if.end9

if.then4:                                         ; preds = %if.end
  %4 = load i32, ptr @nVbrFrameBufferSize, align 4
  %mul5 = shl nsw i32 %4, 1
  store i32 %mul5, ptr @nVbrFrameBufferSize, align 4
  %5 = load ptr, ptr @pVbrFrames, align 8
  %conv6 = sext i32 %mul5 to i64
  %mul7 = shl nsw i64 %conv6, 2
  %call8 = call ptr @realloc(ptr noundef %5, i64 noundef %mul7) #10
  store ptr %call8, ptr @pVbrFrames, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.end
  %6 = load i32, ptr %nStreamPos.addr, align 4
  %7 = load ptr, ptr @pVbrFrames, align 8
  %8 = load i32, ptr @nVbrNumFrames, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr @nVbrNumFrames, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i32, ptr %7, i64 %idxprom
  store i32 %6, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #2

; Function Attrs: nounwind ssp uwtable
define void @CreateI4(ptr noundef %buf, i32 noundef %nValue) #0 {
entry:
  %buf.addr = alloca ptr, align 8
  %nValue.addr = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %nValue, ptr %nValue.addr, align 4
  %0 = lshr i32 %nValue, 24
  %conv = trunc i32 %0 to i8
  store i8 %conv, ptr %buf, align 1
  %1 = lshr i32 %nValue, 16
  %conv3 = trunc i32 %1 to i8
  %2 = load ptr, ptr %buf.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %2, i64 1
  store i8 %conv3, ptr %arrayidx4, align 1
  %3 = load i32, ptr %nValue.addr, align 4
  %4 = lshr i32 %3, 8
  %conv7 = trunc i32 %4 to i8
  %arrayidx8 = getelementptr inbounds i8, ptr %2, i64 2
  store i8 %conv7, ptr %arrayidx8, align 1
  %conv10 = trunc i32 %3 to i8
  %5 = load ptr, ptr %buf.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %5, i64 3
  store i8 %conv10, ptr %arrayidx11, align 1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @CheckVbrTag(ptr noundef %buf) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %h_id = alloca i32, align 4
  %h_mode = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %buf, i64 1
  %0 = load i8, ptr %arrayidx, align 1
  %1 = lshr i8 %0, 3
  %2 = and i8 %1, 1
  %and = zext i8 %2 to i32
  store i32 %and, ptr %h_id, align 4
  %3 = load ptr, ptr %buf.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %3, i64 3
  %4 = load i8, ptr %arrayidx5, align 1
  %5 = lshr i8 %4, 6
  %6 = zext i8 %5 to i32
  store i32 %6, ptr %h_mode, align 4
  %7 = load i32, ptr %h_id, align 4
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.else12, label %if.then

if.then:                                          ; preds = %entry
  %8 = load i32, ptr %h_mode, align 4
  %cmp.not = icmp eq i32 %8, 3
  %9 = load ptr, ptr %buf.addr, align 8
  %add.ptr11 = getelementptr inbounds i8, ptr %9, i64 21
  %10 = load ptr, ptr %buf.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %10, i64 36
  %storemerge1 = select i1 %cmp.not, ptr %add.ptr11, ptr %add.ptr
  br label %if.end20

if.else12:                                        ; preds = %entry
  %11 = load i32, ptr %h_mode, align 4
  %cmp13.not = icmp eq i32 %11, 3
  %12 = load ptr, ptr %buf.addr, align 8
  %add.ptr18 = getelementptr inbounds i8, ptr %12, i64 13
  %13 = load ptr, ptr %buf.addr, align 8
  %add.ptr16 = getelementptr inbounds i8, ptr %13, i64 21
  %storemerge = select i1 %cmp13.not, ptr %add.ptr18, ptr %add.ptr16
  br label %if.end20

if.end20:                                         ; preds = %if.else12, %if.then
  %storemerge2 = phi ptr [ %storemerge1, %if.then ], [ %storemerge, %if.else12 ]
  store ptr %storemerge2, ptr %buf.addr, align 8
  %14 = load i8, ptr %storemerge2, align 1
  %conv22 = zext i8 %14 to i32
  %15 = load i8, ptr @VBRTag, align 1
  %conv23 = sext i8 %15 to i32
  %cmp24.not = icmp eq i32 %conv22, %conv23
  br i1 %cmp24.not, label %if.end27, label %if.then26

if.then26:                                        ; preds = %if.end20
  store i32 0, ptr %retval, align 4
  br label %return

if.end27:                                         ; preds = %if.end20
  %16 = load ptr, ptr %buf.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, ptr %16, i64 1
  %17 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %17 to i32
  %18 = load i8, ptr getelementptr inbounds ([5 x i8], ptr @VBRTag, i64 0, i64 1), align 1
  %conv30 = sext i8 %18 to i32
  %cmp31.not = icmp eq i32 %conv29, %conv30
  br i1 %cmp31.not, label %if.end34, label %if.then33

if.then33:                                        ; preds = %if.end27
  store i32 0, ptr %retval, align 4
  br label %return

if.end34:                                         ; preds = %if.end27
  %19 = load ptr, ptr %buf.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, ptr %19, i64 2
  %20 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %20 to i32
  %21 = load i8, ptr getelementptr inbounds ([5 x i8], ptr @VBRTag, i64 0, i64 2), align 1
  %conv37 = sext i8 %21 to i32
  %cmp38.not = icmp eq i32 %conv36, %conv37
  br i1 %cmp38.not, label %if.end41, label %if.then40

if.then40:                                        ; preds = %if.end34
  store i32 0, ptr %retval, align 4
  br label %return

if.end41:                                         ; preds = %if.end34
  %22 = load ptr, ptr %buf.addr, align 8
  %arrayidx42 = getelementptr inbounds i8, ptr %22, i64 3
  %23 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %23 to i32
  %24 = load i8, ptr getelementptr inbounds ([5 x i8], ptr @VBRTag, i64 0, i64 3), align 1
  %conv44 = sext i8 %24 to i32
  %cmp45.not = icmp eq i32 %conv43, %conv44
  br i1 %cmp45.not, label %if.end48, label %if.then47

if.then47:                                        ; preds = %if.end41
  store i32 0, ptr %retval, align 4
  br label %return

if.end48:                                         ; preds = %if.end41
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end48, %if.then47, %if.then40, %if.then33, %if.then26
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

; Function Attrs: nounwind ssp uwtable
define i32 @GetVbrTag(ptr noundef %pTagData, ptr noundef %buf) #0 {
entry:
  %retval = alloca i32, align 4
  %pTagData.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %head_flags = alloca i32, align 4
  %h_id = alloca i32, align 4
  %h_mode = alloca i32, align 4
  %h_sr_index = alloca i32, align 4
  store ptr %pTagData, ptr %pTagData.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  %flags = getelementptr inbounds %struct.VBRTAGDATA, ptr %pTagData, i64 0, i32 2
  store i32 0, ptr %flags, align 4
  %arrayidx = getelementptr inbounds i8, ptr %buf, i64 1
  %0 = load i8, ptr %arrayidx, align 1
  %1 = lshr i8 %0, 3
  %2 = and i8 %1, 1
  %and = zext i8 %2 to i32
  store i32 %and, ptr %h_id, align 4
  %3 = load ptr, ptr %buf.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %3, i64 2
  %4 = load i8, ptr %arrayidx1, align 1
  %5 = lshr i8 %4, 2
  %6 = and i8 %5, 3
  %and4 = zext i8 %6 to i32
  store i32 %and4, ptr %h_sr_index, align 4
  %7 = load ptr, ptr %buf.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %7, i64 3
  %8 = load i8, ptr %arrayidx5, align 1
  %9 = lshr i8 %8, 6
  %10 = zext i8 %9 to i32
  store i32 %10, ptr %h_mode, align 4
  %11 = load i32, ptr %h_id, align 4
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.else12, label %if.then

if.then:                                          ; preds = %entry
  %12 = load i32, ptr %h_mode, align 4
  %cmp.not = icmp eq i32 %12, 3
  %13 = load ptr, ptr %buf.addr, align 8
  %add.ptr11 = getelementptr inbounds i8, ptr %13, i64 21
  %14 = load ptr, ptr %buf.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %14, i64 36
  %storemerge2 = select i1 %cmp.not, ptr %add.ptr11, ptr %add.ptr
  br label %if.end20

if.else12:                                        ; preds = %entry
  %15 = load i32, ptr %h_mode, align 4
  %cmp13.not = icmp eq i32 %15, 3
  %16 = load ptr, ptr %buf.addr, align 8
  %add.ptr18 = getelementptr inbounds i8, ptr %16, i64 13
  %17 = load ptr, ptr %buf.addr, align 8
  %add.ptr16 = getelementptr inbounds i8, ptr %17, i64 21
  %storemerge = select i1 %cmp13.not, ptr %add.ptr18, ptr %add.ptr16
  br label %if.end20

if.end20:                                         ; preds = %if.else12, %if.then
  %storemerge3 = phi ptr [ %storemerge2, %if.then ], [ %storemerge, %if.else12 ]
  store ptr %storemerge3, ptr %buf.addr, align 8
  %18 = load i8, ptr %storemerge3, align 1
  %conv22 = zext i8 %18 to i32
  %19 = load i8, ptr @VBRTag, align 1
  %conv23 = sext i8 %19 to i32
  %cmp24.not = icmp eq i32 %conv22, %conv23
  br i1 %cmp24.not, label %if.end27, label %if.then26

if.then26:                                        ; preds = %if.end20
  store i32 0, ptr %retval, align 4
  br label %return

if.end27:                                         ; preds = %if.end20
  %20 = load ptr, ptr %buf.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, ptr %20, i64 1
  %21 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %21 to i32
  %22 = load i8, ptr getelementptr inbounds ([5 x i8], ptr @VBRTag, i64 0, i64 1), align 1
  %conv30 = sext i8 %22 to i32
  %cmp31.not = icmp eq i32 %conv29, %conv30
  br i1 %cmp31.not, label %if.end34, label %if.then33

if.then33:                                        ; preds = %if.end27
  store i32 0, ptr %retval, align 4
  br label %return

if.end34:                                         ; preds = %if.end27
  %23 = load ptr, ptr %buf.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, ptr %23, i64 2
  %24 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %24 to i32
  %25 = load i8, ptr getelementptr inbounds ([5 x i8], ptr @VBRTag, i64 0, i64 2), align 1
  %conv37 = sext i8 %25 to i32
  %cmp38.not = icmp eq i32 %conv36, %conv37
  br i1 %cmp38.not, label %if.end41, label %if.then40

if.then40:                                        ; preds = %if.end34
  store i32 0, ptr %retval, align 4
  br label %return

if.end41:                                         ; preds = %if.end34
  %26 = load ptr, ptr %buf.addr, align 8
  %arrayidx42 = getelementptr inbounds i8, ptr %26, i64 3
  %27 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %27 to i32
  %28 = load i8, ptr getelementptr inbounds ([5 x i8], ptr @VBRTag, i64 0, i64 3), align 1
  %conv44 = sext i8 %28 to i32
  %cmp45.not = icmp eq i32 %conv43, %conv44
  br i1 %cmp45.not, label %if.end48, label %if.then47

if.then47:                                        ; preds = %if.end41
  store i32 0, ptr %retval, align 4
  br label %return

if.end48:                                         ; preds = %if.end41
  %29 = load ptr, ptr %buf.addr, align 8
  %add.ptr49 = getelementptr inbounds i8, ptr %29, i64 4
  store ptr %add.ptr49, ptr %buf.addr, align 8
  %30 = load i32, ptr %h_id, align 4
  %31 = load ptr, ptr %pTagData.addr, align 8
  store i32 %30, ptr %31, align 4
  %32 = load i32, ptr %h_sr_index, align 4
  %idxprom = sext i32 %32 to i64
  %arrayidx51 = getelementptr inbounds [4 x i32], ptr @GetVbrTag.sr_table, i64 0, i64 %idxprom
  %33 = load i32, ptr %arrayidx51, align 4
  %samprate = getelementptr inbounds %struct.VBRTAGDATA, ptr %31, i64 0, i32 1
  store i32 %33, ptr %samprate, align 4
  %34 = load i32, ptr %h_id, align 4
  %cmp52 = icmp eq i32 %34, 0
  br i1 %cmp52, label %if.then54, label %if.end57

if.then54:                                        ; preds = %if.end48
  %35 = load ptr, ptr %pTagData.addr, align 8
  %samprate55 = getelementptr inbounds %struct.VBRTAGDATA, ptr %35, i64 0, i32 1
  %36 = load i32, ptr %samprate55, align 4
  %shr56 = ashr i32 %36, 1
  store i32 %shr56, ptr %samprate55, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %if.end48
  %37 = load ptr, ptr %buf.addr, align 8
  %call = call i32 @ExtractI4(ptr noundef %37)
  %38 = load ptr, ptr %pTagData.addr, align 8
  %flags58 = getelementptr inbounds %struct.VBRTAGDATA, ptr %38, i64 0, i32 2
  store i32 %call, ptr %flags58, align 4
  store i32 %call, ptr %head_flags, align 4
  %add.ptr59 = getelementptr inbounds i8, ptr %37, i64 4
  store ptr %add.ptr59, ptr %buf.addr, align 8
  %and60 = and i32 %call, 1
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.end65, label %if.then62

if.then62:                                        ; preds = %if.end57
  %39 = load ptr, ptr %buf.addr, align 8
  %call63 = call i32 @ExtractI4(ptr noundef %39)
  %40 = load ptr, ptr %pTagData.addr, align 8
  %frames = getelementptr inbounds %struct.VBRTAGDATA, ptr %40, i64 0, i32 3
  store i32 %call63, ptr %frames, align 4
  %add.ptr64 = getelementptr inbounds i8, ptr %39, i64 4
  store ptr %add.ptr64, ptr %buf.addr, align 8
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %if.end57
  %41 = load i32, ptr %head_flags, align 4
  %and66 = and i32 %41, 2
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.end71, label %if.then68

if.then68:                                        ; preds = %if.end65
  %42 = load ptr, ptr %buf.addr, align 8
  %call69 = call i32 @ExtractI4(ptr noundef %42)
  %43 = load ptr, ptr %pTagData.addr, align 8
  %bytes = getelementptr inbounds %struct.VBRTAGDATA, ptr %43, i64 0, i32 4
  store i32 %call69, ptr %bytes, align 4
  %add.ptr70 = getelementptr inbounds i8, ptr %42, i64 4
  store ptr %add.ptr70, ptr %buf.addr, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.then68, %if.end65
  %44 = load i32, ptr %head_flags, align 4
  %and72 = and i32 %44, 4
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.end87, label %for.cond

for.cond:                                         ; preds = %if.end71, %for.body
  %storemerge1 = phi i32 [ %inc, %for.body ], [ 0, %if.end71 ]
  store i32 %storemerge1, ptr %i, align 4
  %cmp78 = icmp slt i32 %storemerge1, 100
  br i1 %cmp78, label %for.body, label %if.end85

for.body:                                         ; preds = %for.cond
  %45 = load ptr, ptr %buf.addr, align 8
  %46 = load i32, ptr %i, align 4
  %idxprom80 = sext i32 %46 to i64
  %arrayidx81 = getelementptr inbounds i8, ptr %45, i64 %idxprom80
  %47 = load i8, ptr %arrayidx81, align 1
  %48 = load ptr, ptr %pTagData.addr, align 8
  %idxprom83 = sext i32 %46 to i64
  %arrayidx84 = getelementptr inbounds %struct.VBRTAGDATA, ptr %48, i64 0, i32 6, i64 %idxprom83
  store i8 %47, ptr %arrayidx84, align 1
  %49 = load i32, ptr %i, align 4
  %inc = add nsw i32 %49, 1
  br label %for.cond, !llvm.loop !6

if.end85:                                         ; preds = %for.cond
  %50 = load ptr, ptr %buf.addr, align 8
  %add.ptr86 = getelementptr inbounds i8, ptr %50, i64 100
  store ptr %add.ptr86, ptr %buf.addr, align 8
  br label %if.end87

if.end87:                                         ; preds = %if.end85, %if.end71
  %51 = load ptr, ptr %pTagData.addr, align 8
  %vbr_scale = getelementptr inbounds %struct.VBRTAGDATA, ptr %51, i64 0, i32 5
  store i32 -1, ptr %vbr_scale, align 4
  %52 = load i32, ptr %head_flags, align 4
  %and88 = and i32 %52, 8
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %if.end94, label %if.then90

if.then90:                                        ; preds = %if.end87
  %53 = load ptr, ptr %buf.addr, align 8
  %call91 = call i32 @ExtractI4(ptr noundef %53)
  %54 = load ptr, ptr %pTagData.addr, align 8
  %vbr_scale92 = getelementptr inbounds %struct.VBRTAGDATA, ptr %54, i64 0, i32 5
  store i32 %call91, ptr %vbr_scale92, align 4
  %add.ptr93 = getelementptr inbounds i8, ptr %53, i64 4
  store ptr %add.ptr93, ptr %buf.addr, align 8
  br label %if.end94

if.end94:                                         ; preds = %if.then90, %if.end87
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end94, %if.then47, %if.then40, %if.then33, %if.then26
  %55 = load i32, ptr %retval, align 4
  ret i32 %55
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @ExtractI4(ptr noundef %buf) #0 {
entry:
  %buf.addr = alloca ptr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  %0 = load i8, ptr %buf, align 1
  %conv = zext i8 %0 to i32
  %arrayidx1 = getelementptr inbounds i8, ptr %buf, i64 1
  %1 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %1 to i32
  %arrayidx4 = getelementptr inbounds i8, ptr %buf, i64 2
  %2 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %2 to i32
  %3 = shl nuw i32 %conv, 24
  %4 = shl nuw nsw i32 %conv2, 16
  %5 = or i32 %3, %4
  %6 = shl nuw nsw i32 %conv5, 8
  %shl7 = or i32 %5, %6
  %7 = load ptr, ptr %buf.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %7, i64 3
  %8 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %8 to i32
  %or10 = or i32 %shl7, %conv9
  ret i32 %or10
}

; Function Attrs: nounwind ssp uwtable
define i32 @InitVbrTag(ptr noundef %pBs, i32 noundef %nVersion, i32 noundef %nMode, i32 noundef %SampIndex) #0 {
entry:
  %pBs.addr = alloca ptr, align 8
  %nVersion.addr = alloca i32, align 4
  %nMode.addr = alloca i32, align 4
  %SampIndex.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %pBs, ptr %pBs.addr, align 8
  store i32 %nVersion, ptr %nVersion.addr, align 4
  store i32 %nMode, ptr %nMode.addr, align 4
  store i32 %SampIndex, ptr %SampIndex.addr, align 4
  store ptr null, ptr @pVbrFrames, align 8
  store i32 0, ptr @nVbrNumFrames, align 4
  store i32 0, ptr @nVbrFrameBufferSize, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(800) @g_Position, i8 0, i64 800, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(216) @pbtStreamBuffer, i8 0, i64 216, i1 false)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %cmp = icmp slt i32 %storemerge, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load i32, ptr %i, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [100 x i64], ptr @g_Position, i64 0, i64 %idxprom
  store i64 -1, ptr %arrayidx, align 8
  %1 = load i32, ptr %i, align 4
  %inc = add nsw i32 %1, 1
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %2 = load i32, ptr %nMode.addr, align 4
  %cmp1 = icmp eq i32 %2, 3
  %3 = load i32, ptr %nVersion.addr, align 4
  %idxprom5 = sext i32 %3 to i64
  %arrayidx6 = getelementptr inbounds [2 x [2 x i32]], ptr @SizeOfEmptyFrame, i64 0, i64 %idxprom5
  %4 = load i32, ptr %nVersion.addr, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [2 x [2 x i32]], ptr @SizeOfEmptyFrame, i64 0, i64 %idxprom2, i64 1
  %storemerge1.in.in = select i1 %cmp1, ptr %arrayidx4, ptr %arrayidx6
  %storemerge1.in = load i32, ptr %storemerge1.in.in, align 4
  %storemerge1 = add nsw i32 %storemerge1.in, 4
  store i32 %storemerge1, ptr @nZeroStreamSize, align 4
  %5 = load i32, ptr %SampIndex.addr, align 4
  %cmp9 = icmp sgt i32 %5, 2
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %for.end
  %6 = load ptr, ptr @__stderrp, align 8
  %7 = call i64 @fwrite(ptr nonnull @.str, i64 33, i64 1, ptr %6)
  call void @exit(i32 noundef -1) #11
  unreachable

if.end11:                                         ; preds = %for.end
  %8 = load i32, ptr %SampIndex.addr, align 4
  %idxprom12 = sext i32 %8 to i64
  %arrayidx13 = getelementptr inbounds [3 x i32], ptr @InitVbrTag.framesize, i64 0, i64 %idxprom12
  %9 = load i32, ptr %arrayidx13, align 4
  store i32 %9, ptr @TotalFrameSize, align 4
  %10 = load i32, ptr @nZeroStreamSize, align 4
  %add15 = add nsw i32 %10, 140
  %cmp16 = icmp slt i32 %9, %add15
  br i1 %cmp16, label %if.then17, label %for.cond20

if.then17:                                        ; preds = %if.end11
  %11 = load ptr, ptr @__stderrp, align 8
  %12 = call i64 @fwrite(ptr nonnull @.str.1, i64 33, i64 1, ptr %11)
  call void @exit(i32 noundef -1) #11
  unreachable

for.cond20:                                       ; preds = %if.end11, %for.body22
  %storemerge2 = phi i32 [ %inc24, %for.body22 ], [ 0, %if.end11 ]
  store i32 %storemerge2, ptr %i, align 4
  %13 = load i32, ptr @TotalFrameSize, align 4
  %cmp21 = icmp slt i32 %storemerge2, %13
  br i1 %cmp21, label %for.body22, label %for.end25

for.body22:                                       ; preds = %for.cond20
  %14 = load ptr, ptr %pBs.addr, align 8
  call void @putbits(ptr noundef %14, i32 noundef 0, i32 noundef 8) #12
  %15 = load i32, ptr %i, align 4
  %inc24 = add nsw i32 %15, 1
  br label %for.cond20, !llvm.loop !9

for.end25:                                        ; preds = %for.cond20
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #4

; Function Attrs: noreturn
declare void @exit(i32 noundef) #5

declare void @putbits(ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: nounwind ssp uwtable
define i32 @PutVbrTag(ptr noundef %lpszFileName, i32 noundef %nVbrScale, i32 noundef %nVersion) #0 {
entry:
  %retval = alloca i32, align 4
  %lpszFileName.addr = alloca ptr, align 8
  %nVbrScale.addr = alloca i32, align 4
  %nVersion.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %lFileSize = alloca i64, align 8
  %nStreamIndex = alloca i32, align 4
  %btToc = alloca [100 x i8], align 1
  %fpStream = alloca ptr, align 8
  %str1 = alloca [80 x i8], align 1
  store ptr %lpszFileName, ptr %lpszFileName.addr, align 8
  store i32 %nVbrScale, ptr %nVbrScale.addr, align 4
  store i32 %nVersion, ptr %nVersion.addr, align 4
  %0 = load i32, ptr @nVbrNumFrames, align 4
  %cmp = icmp eq i32 %0, 0
  %1 = load ptr, ptr @pVbrFrames, align 8
  %cmp1 = icmp eq ptr %1, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %lpszFileName.addr, align 8
  %call = call ptr @"\01_fopen"(ptr noundef %2, ptr noundef nonnull @.str.2) #12
  store ptr %call, ptr %fpStream, align 8
  %cmp2 = icmp eq ptr %call, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(216) @pbtStreamBuffer, i8 0, i64 216, i1 false)
  %3 = load ptr, ptr %fpStream, align 8
  %call5 = call i32 @fseek(ptr noundef %3, i64 noundef 0, i32 noundef 2) #12
  %call6 = call i64 @ftell(ptr noundef %3) #12
  store i64 %call6, ptr %lFileSize, align 8
  %cmp7 = icmp eq i64 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end4
  store i32 -1, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end4
  %4 = load ptr, ptr %fpStream, align 8
  %5 = load i32, ptr @TotalFrameSize, align 4
  %conv = sext i32 %5 to i64
  %call10 = call i32 @fseek(ptr noundef %4, i64 noundef %conv, i32 noundef 0) #12
  %call11 = call i64 @fread(ptr noundef nonnull @pbtStreamBuffer, i64 noundef 4, i64 noundef 1, ptr noundef %4) #12
  store i8 -1, ptr @pbtStreamBuffer, align 1
  %6 = load i32, ptr %nVersion.addr, align 4
  %cmp12 = icmp eq i32 %6, 0
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end9
  store i8 -5, ptr getelementptr inbounds ([216 x i8], ptr @pbtStreamBuffer, i64 0, i64 1), align 1
  %7 = load i8, ptr getelementptr inbounds ([216 x i8], ptr @pbtStreamBuffer, i64 0, i64 2), align 1
  %8 = and i8 %7, 12
  %9 = or i8 %8, 80
  br label %if.end25

if.else:                                          ; preds = %if.end9
  store i8 -13, ptr getelementptr inbounds ([216 x i8], ptr @pbtStreamBuffer, i64 0, i64 1), align 1
  %10 = load i8, ptr getelementptr inbounds ([216 x i8], ptr @pbtStreamBuffer, i64 0, i64 2), align 1
  %11 = and i8 %10, 12
  %or23 = or i8 %11, -128
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then14
  %storemerge = phi i8 [ %or23, %if.else ], [ %9, %if.then14 ]
  store i8 %storemerge, ptr getelementptr inbounds ([216 x i8], ptr @pbtStreamBuffer, i64 0, i64 2), align 1
  %12 = load ptr, ptr %fpStream, align 8
  %call26 = call i32 @fseek(ptr noundef %12, i64 noundef 0, i32 noundef 0) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(100) %btToc, i8 0, i64 100, i1 false)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end25
  %storemerge1 = phi i32 [ 1, %if.end25 ], [ %inc, %for.body ]
  store i32 %storemerge1, ptr %i, align 4
  %cmp27 = icmp slt i32 %storemerge1, 100
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, ptr %i, align 4
  %conv29 = sitofp i32 %13 to double
  %mul = fmul double %conv29, 1.000000e-02
  %14 = load i32, ptr @nVbrNumFrames, align 4
  %conv30 = sitofp i32 %14 to double
  %mul31 = fmul double %mul, %conv30
  %15 = call double @llvm.floor.f64(double %mul31)
  %conv32 = fptosi double %15 to i32
  %16 = load ptr, ptr @pVbrFrames, align 8
  %idxprom = sext i32 %conv32 to i64
  %arrayidx = getelementptr inbounds i32, ptr %16, i64 %idxprom
  %17 = load i32, ptr %arrayidx, align 4
  %conv33 = sitofp i32 %17 to float
  %mul34 = fmul float %conv33, 2.560000e+02
  %18 = load i64, ptr %lFileSize, align 8
  %conv35 = sitofp i64 %18 to float
  %div = fdiv float %mul34, %conv35
  %cmp36 = fcmp ogt float %div, 2.550000e+02
  %storemerge2 = select i1 %cmp36, float 2.550000e+02, float %div
  %conv40 = fptoui float %storemerge2 to i8
  %19 = load i32, ptr %i, align 4
  %idxprom41 = sext i32 %19 to i64
  %arrayidx42 = getelementptr inbounds [100 x i8], ptr %btToc, i64 0, i64 %idxprom41
  store i8 %conv40, ptr %arrayidx42, align 1
  %20 = load i32, ptr %i, align 4
  %inc = add nsw i32 %20, 1
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %21 = load i32, ptr @nZeroStreamSize, align 4
  store i32 %21, ptr %nStreamIndex, align 4
  %22 = load i8, ptr @VBRTag, align 1
  %inc43 = add nsw i32 %21, 1
  store i32 %inc43, ptr %nStreamIndex, align 4
  %idxprom44 = sext i32 %21 to i64
  %arrayidx45 = getelementptr inbounds [216 x i8], ptr @pbtStreamBuffer, i64 0, i64 %idxprom44
  store i8 %22, ptr %arrayidx45, align 1
  %23 = load i8, ptr getelementptr inbounds ([5 x i8], ptr @VBRTag, i64 0, i64 1), align 1
  %inc46 = add nsw i32 %21, 2
  store i32 %inc46, ptr %nStreamIndex, align 4
  %idxprom47 = sext i32 %inc43 to i64
  %arrayidx48 = getelementptr inbounds [216 x i8], ptr @pbtStreamBuffer, i64 0, i64 %idxprom47
  store i8 %23, ptr %arrayidx48, align 1
  %24 = load i8, ptr getelementptr inbounds ([5 x i8], ptr @VBRTag, i64 0, i64 2), align 1
  %inc49 = add nsw i32 %21, 3
  store i32 %inc49, ptr %nStreamIndex, align 4
  %idxprom50 = sext i32 %inc46 to i64
  %arrayidx51 = getelementptr inbounds [216 x i8], ptr @pbtStreamBuffer, i64 0, i64 %idxprom50
  store i8 %24, ptr %arrayidx51, align 1
  %25 = load i8, ptr getelementptr inbounds ([5 x i8], ptr @VBRTag, i64 0, i64 3), align 1
  %inc52 = add nsw i32 %21, 4
  store i32 %inc52, ptr %nStreamIndex, align 4
  %idxprom53 = sext i32 %inc49 to i64
  %arrayidx54 = getelementptr inbounds [216 x i8], ptr @pbtStreamBuffer, i64 0, i64 %idxprom53
  store i8 %25, ptr %arrayidx54, align 1
  %idxprom55 = sext i32 %inc52 to i64
  %arrayidx56 = getelementptr inbounds [216 x i8], ptr @pbtStreamBuffer, i64 0, i64 %idxprom55
  call void @CreateI4(ptr noundef nonnull %arrayidx56, i32 noundef 15)
  %26 = load i32, ptr %nStreamIndex, align 4
  %add = add nsw i32 %26, 4
  store i32 %add, ptr %nStreamIndex, align 4
  %idxprom57 = sext i32 %add to i64
  %arrayidx58 = getelementptr inbounds [216 x i8], ptr @pbtStreamBuffer, i64 0, i64 %idxprom57
  %27 = load i32, ptr @nVbrNumFrames, align 4
  call void @CreateI4(ptr noundef nonnull %arrayidx58, i32 noundef %27)
  %add59 = add nsw i32 %26, 8
  store i32 %add59, ptr %nStreamIndex, align 4
  %idxprom60 = sext i32 %add59 to i64
  %arrayidx61 = getelementptr inbounds [216 x i8], ptr @pbtStreamBuffer, i64 0, i64 %idxprom60
  %28 = load i64, ptr %lFileSize, align 8
  %conv62 = trunc i64 %28 to i32
  call void @CreateI4(ptr noundef nonnull %arrayidx61, i32 noundef %conv62)
  %add63 = add nsw i32 %26, 12
  store i32 %add63, ptr %nStreamIndex, align 4
  %idxprom64 = sext i32 %add63 to i64
  %arrayidx65 = getelementptr inbounds [216 x i8], ptr @pbtStreamBuffer, i64 0, i64 %idxprom64
  %idxprom67 = sext i32 %add63 to i64
  %arrayidx68 = getelementptr inbounds [216 x i8], ptr @pbtStreamBuffer, i64 0, i64 %idxprom67
  %29 = call i64 @llvm.objectsize.i64.p0(ptr %arrayidx68, i1 false, i1 true, i1 false)
  %call69 = call ptr @__memcpy_chk(ptr noundef nonnull %arrayidx65, ptr noundef nonnull %btToc, i64 noundef 100, i64 noundef %29) #12
  %30 = load i32, ptr %nStreamIndex, align 4
  %add71 = add i32 %30, 100
  store i32 %add71, ptr %nStreamIndex, align 4
  %idxprom73 = sext i32 %add71 to i64
  %arrayidx74 = getelementptr inbounds [216 x i8], ptr @pbtStreamBuffer, i64 0, i64 %idxprom73
  %31 = load i32, ptr %nVbrScale.addr, align 4
  call void @CreateI4(ptr noundef nonnull %arrayidx74, i32 noundef %31)
  %add75 = add i32 %30, 104
  store i32 %add75, ptr %nStreamIndex, align 4
  %call77 = call ptr @get_lame_version() #12
  %call78 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef nonnull %str1, i32 noundef 0, i64 noundef 80, ptr noundef nonnull @.str.3, ptr noundef %call77) #12
  %idxprom79 = sext i32 %add75 to i64
  %arrayidx80 = getelementptr inbounds [216 x i8], ptr @pbtStreamBuffer, i64 0, i64 %idxprom79
  %idxprom82 = sext i32 %add75 to i64
  %arrayidx83 = getelementptr inbounds [216 x i8], ptr @pbtStreamBuffer, i64 0, i64 %idxprom82
  %32 = call i64 @llvm.objectsize.i64.p0(ptr %arrayidx83, i1 false, i1 true, i1 false)
  %call84 = call ptr @__strncpy_chk(ptr noundef nonnull %arrayidx80, ptr noundef nonnull %str1, i64 noundef 20, i64 noundef %32) #12
  %33 = load i32, ptr %nStreamIndex, align 4
  %add85 = add nsw i32 %33, 20
  store i32 %add85, ptr %nStreamIndex, align 4
  %34 = load i32, ptr @TotalFrameSize, align 4
  %conv86 = sext i32 %34 to i64
  %35 = load ptr, ptr %fpStream, align 8
  %call87 = call i64 @"\01_fwrite"(ptr noundef nonnull @pbtStreamBuffer, i64 noundef %conv86, i64 noundef 1, ptr noundef %35) #12
  %cmp88.not = icmp eq i64 %call87, 1
  br i1 %cmp88.not, label %if.end91, label %if.then90

if.then90:                                        ; preds = %for.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end91:                                         ; preds = %for.end
  %36 = load ptr, ptr %fpStream, align 8
  %call92 = call i32 @fclose(ptr noundef %36) #12
  %37 = load ptr, ptr @pVbrFrames, align 8
  call void @free(ptr noundef %37) #12
  store ptr null, ptr @pVbrFrames, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end91, %if.then90, %if.then8, %if.then3, %if.then
  %38 = load i32, ptr %retval, align 4
  ret i32 %38
}

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #4

declare i32 @fseek(ptr noundef, i64 noundef, i32 noundef) #4

declare i64 @ftell(ptr noundef) #4

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #6

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #6

declare i32 @__sprintf_chk(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ...) #4

declare ptr @get_lame_version() #4

; Function Attrs: nounwind
declare ptr @__strncpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #7

declare i64 @"\01_fwrite"(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #4

declare i32 @fclose(ptr noundef) #4

declare void @free(ptr noundef) #4

; Function Attrs: nounwind ssp uwtable
define i32 @SeekPoint(ptr noundef %TOC, i32 noundef %file_bytes, float noundef %percent) #0 {
entry:
  %TOC.addr = alloca ptr, align 8
  %file_bytes.addr = alloca i32, align 4
  %percent.addr = alloca float, align 4
  %a = alloca i32, align 4
  %fa = alloca float, align 4
  store ptr %TOC, ptr %TOC.addr, align 8
  store i32 %file_bytes, ptr %file_bytes.addr, align 4
  %cmp = fcmp olt float %percent, 0.000000e+00
  %storemerge2 = select i1 %cmp, float 0.000000e+00, float %percent
  %cmp1 = fcmp ogt float %storemerge2, 1.000000e+02
  %storemerge3 = select i1 %cmp1, float 1.000000e+02, float %storemerge2
  store float %storemerge3, ptr %percent.addr, align 4
  %conv = fptosi float %storemerge3 to i32
  %cmp4 = icmp sgt i32 %conv, 99
  %storemerge1 = select i1 %cmp4, i32 99, i32 %conv
  store i32 %storemerge1, ptr %a, align 4
  %0 = load ptr, ptr %TOC.addr, align 8
  %idxprom = sext i32 %storemerge1 to i64
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1
  %conv8 = uitofp i8 %1 to float
  store float %conv8, ptr %fa, align 4
  %cmp9 = icmp slt i32 %storemerge1, 99
  br i1 %cmp9, label %if.then11, label %if.end15

if.then11:                                        ; preds = %entry
  %2 = load ptr, ptr %TOC.addr, align 8
  %3 = load i32, ptr %a, align 4
  %add = add nsw i32 %3, 1
  %idxprom12 = sext i32 %add to i64
  %arrayidx13 = getelementptr inbounds i8, ptr %2, i64 %idxprom12
  %4 = load i8, ptr %arrayidx13, align 1
  %conv14 = uitofp i8 %4 to float
  br label %if.end15

if.end15:                                         ; preds = %entry, %if.then11
  %storemerge = phi float [ %conv14, %if.then11 ], [ 2.560000e+02, %entry ]
  %5 = load float, ptr %fa, align 4
  %sub = fsub float %storemerge, %5
  %6 = load float, ptr %percent.addr, align 4
  %7 = load i32, ptr %a, align 4
  %conv16 = sitofp i32 %7 to float
  %sub17 = fsub float %6, %conv16
  %8 = call float @llvm.fmuladd.f32(float %sub, float %sub17, float %5)
  %mul = fmul float %8, 3.906250e-03
  %9 = load i32, ptr %file_bytes.addr, align 4
  %conv18 = sitofp i32 %9 to float
  %mul19 = fmul float %mul, %conv18
  %conv20 = fptosi float %mul19 to i32
  ret i32 %conv20
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) #8

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { allocsize(1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind allocsize(1) }
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
