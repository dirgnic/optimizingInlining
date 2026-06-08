; ModuleID = './source_snapshot/public_repos/mibench/consumer/lame/lame3.70/VbrTag.c'
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
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr @nVbrFrameBufferSize, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 100, ptr @nVbrFrameBufferSize, align 4
  %2 = load i32, ptr @nVbrFrameBufferSize, align 4
  %conv = sext i32 %2 to i64
  %mul = mul i64 %conv, 4
  %call = call ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr @pVbrFrames, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %3 = load i32, ptr @nVbrNumFrames, align 4
  %4 = load i32, ptr @nVbrFrameBufferSize, align 4
  %cmp2 = icmp eq i32 %3, %4
  br i1 %cmp2, label %if.then4, label %if.end9

if.then4:                                         ; preds = %if.end
  %5 = load i32, ptr @nVbrFrameBufferSize, align 4
  %mul5 = mul nsw i32 %5, 2
  store i32 %mul5, ptr @nVbrFrameBufferSize, align 4
  %6 = load ptr, ptr @pVbrFrames, align 8
  %7 = load i32, ptr @nVbrFrameBufferSize, align 4
  %conv6 = sext i32 %7 to i64
  %mul7 = mul i64 %conv6, 4
  %call8 = call ptr @realloc(ptr noundef %6, i64 noundef %mul7) #9
  store ptr %call8, ptr @pVbrFrames, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.end
  %8 = load i32, ptr %nStreamPos.addr, align 4
  %9 = load ptr, ptr @pVbrFrames, align 8
  %10 = load i32, ptr @nVbrNumFrames, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr @nVbrNumFrames, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds i32, ptr %9, i64 %idxprom
  store i32 %8, ptr %arrayidx, align 4
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
  %0 = load i32, ptr %nValue.addr, align 4
  %shr = ashr i32 %0, 24
  %and = and i32 %shr, 255
  %conv = trunc i32 %and to i8
  %1 = load ptr, ptr %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0
  store i8 %conv, ptr %arrayidx, align 1
  %2 = load i32, ptr %nValue.addr, align 4
  %shr1 = ashr i32 %2, 16
  %and2 = and i32 %shr1, 255
  %conv3 = trunc i32 %and2 to i8
  %3 = load ptr, ptr %buf.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %3, i64 1
  store i8 %conv3, ptr %arrayidx4, align 1
  %4 = load i32, ptr %nValue.addr, align 4
  %shr5 = ashr i32 %4, 8
  %and6 = and i32 %shr5, 255
  %conv7 = trunc i32 %and6 to i8
  %5 = load ptr, ptr %buf.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %5, i64 2
  store i8 %conv7, ptr %arrayidx8, align 1
  %6 = load i32, ptr %nValue.addr, align 4
  %and9 = and i32 %6, 255
  %conv10 = trunc i32 %and9 to i8
  %7 = load ptr, ptr %buf.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %7, i64 3
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
  %h_sr_index = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  %0 = load ptr, ptr %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 1
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %shr = ashr i32 %conv, 3
  %and = and i32 %shr, 1
  store i32 %and, ptr %h_id, align 4
  %2 = load ptr, ptr %buf.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %2, i64 2
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %shr3 = ashr i32 %conv2, 2
  %and4 = and i32 %shr3, 3
  store i32 %and4, ptr %h_sr_index, align 4
  %4 = load ptr, ptr %buf.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %4, i64 3
  %5 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %5 to i32
  %shr7 = ashr i32 %conv6, 6
  %and8 = and i32 %shr7, 3
  store i32 %and8, ptr %h_mode, align 4
  %6 = load i32, ptr %h_id, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.else12

if.then:                                          ; preds = %entry
  %7 = load i32, ptr %h_mode, align 4
  %cmp = icmp ne i32 %7, 3
  br i1 %cmp, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then
  %8 = load ptr, ptr %buf.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %8, i64 36
  store ptr %add.ptr, ptr %buf.addr, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %9 = load ptr, ptr %buf.addr, align 8
  %add.ptr11 = getelementptr inbounds i8, ptr %9, i64 21
  store ptr %add.ptr11, ptr %buf.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then10
  br label %if.end20

if.else12:                                        ; preds = %entry
  %10 = load i32, ptr %h_mode, align 4
  %cmp13 = icmp ne i32 %10, 3
  br i1 %cmp13, label %if.then15, label %if.else17

if.then15:                                        ; preds = %if.else12
  %11 = load ptr, ptr %buf.addr, align 8
  %add.ptr16 = getelementptr inbounds i8, ptr %11, i64 21
  store ptr %add.ptr16, ptr %buf.addr, align 8
  br label %if.end19

if.else17:                                        ; preds = %if.else12
  %12 = load ptr, ptr %buf.addr, align 8
  %add.ptr18 = getelementptr inbounds i8, ptr %12, i64 13
  store ptr %add.ptr18, ptr %buf.addr, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.else17, %if.then15
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.end
  %13 = load ptr, ptr %buf.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, ptr %13, i64 0
  %14 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %14 to i32
  %15 = load i8, ptr @VBRTag, align 1
  %conv23 = sext i8 %15 to i32
  %cmp24 = icmp ne i32 %conv22, %conv23
  br i1 %cmp24, label %if.then26, label %if.end27

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
  %cmp31 = icmp ne i32 %conv29, %conv30
  br i1 %cmp31, label %if.then33, label %if.end34

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
  %cmp38 = icmp ne i32 %conv36, %conv37
  br i1 %cmp38, label %if.then40, label %if.end41

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
  %cmp45 = icmp ne i32 %conv43, %conv44
  br i1 %cmp45, label %if.then47, label %if.end48

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
  %0 = load ptr, ptr %pTagData.addr, align 8
  %flags = getelementptr inbounds %struct.VBRTAGDATA, ptr %0, i32 0, i32 2
  store i32 0, ptr %flags, align 4
  %1 = load ptr, ptr %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 1
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %shr = ashr i32 %conv, 3
  %and = and i32 %shr, 1
  store i32 %and, ptr %h_id, align 4
  %3 = load ptr, ptr %buf.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %3, i64 2
  %4 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %4 to i32
  %shr3 = ashr i32 %conv2, 2
  %and4 = and i32 %shr3, 3
  store i32 %and4, ptr %h_sr_index, align 4
  %5 = load ptr, ptr %buf.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %5, i64 3
  %6 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %6 to i32
  %shr7 = ashr i32 %conv6, 6
  %and8 = and i32 %shr7, 3
  store i32 %and8, ptr %h_mode, align 4
  %7 = load i32, ptr %h_id, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.else12

if.then:                                          ; preds = %entry
  %8 = load i32, ptr %h_mode, align 4
  %cmp = icmp ne i32 %8, 3
  br i1 %cmp, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then
  %9 = load ptr, ptr %buf.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 36
  store ptr %add.ptr, ptr %buf.addr, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %10 = load ptr, ptr %buf.addr, align 8
  %add.ptr11 = getelementptr inbounds i8, ptr %10, i64 21
  store ptr %add.ptr11, ptr %buf.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then10
  br label %if.end20

if.else12:                                        ; preds = %entry
  %11 = load i32, ptr %h_mode, align 4
  %cmp13 = icmp ne i32 %11, 3
  br i1 %cmp13, label %if.then15, label %if.else17

if.then15:                                        ; preds = %if.else12
  %12 = load ptr, ptr %buf.addr, align 8
  %add.ptr16 = getelementptr inbounds i8, ptr %12, i64 21
  store ptr %add.ptr16, ptr %buf.addr, align 8
  br label %if.end19

if.else17:                                        ; preds = %if.else12
  %13 = load ptr, ptr %buf.addr, align 8
  %add.ptr18 = getelementptr inbounds i8, ptr %13, i64 13
  store ptr %add.ptr18, ptr %buf.addr, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.else17, %if.then15
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.end
  %14 = load ptr, ptr %buf.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, ptr %14, i64 0
  %15 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %15 to i32
  %16 = load i8, ptr @VBRTag, align 1
  %conv23 = sext i8 %16 to i32
  %cmp24 = icmp ne i32 %conv22, %conv23
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end20
  store i32 0, ptr %retval, align 4
  br label %return

if.end27:                                         ; preds = %if.end20
  %17 = load ptr, ptr %buf.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, ptr %17, i64 1
  %18 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %18 to i32
  %19 = load i8, ptr getelementptr inbounds ([5 x i8], ptr @VBRTag, i64 0, i64 1), align 1
  %conv30 = sext i8 %19 to i32
  %cmp31 = icmp ne i32 %conv29, %conv30
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end27
  store i32 0, ptr %retval, align 4
  br label %return

if.end34:                                         ; preds = %if.end27
  %20 = load ptr, ptr %buf.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, ptr %20, i64 2
  %21 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %21 to i32
  %22 = load i8, ptr getelementptr inbounds ([5 x i8], ptr @VBRTag, i64 0, i64 2), align 1
  %conv37 = sext i8 %22 to i32
  %cmp38 = icmp ne i32 %conv36, %conv37
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end34
  store i32 0, ptr %retval, align 4
  br label %return

if.end41:                                         ; preds = %if.end34
  %23 = load ptr, ptr %buf.addr, align 8
  %arrayidx42 = getelementptr inbounds i8, ptr %23, i64 3
  %24 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %24 to i32
  %25 = load i8, ptr getelementptr inbounds ([5 x i8], ptr @VBRTag, i64 0, i64 3), align 1
  %conv44 = sext i8 %25 to i32
  %cmp45 = icmp ne i32 %conv43, %conv44
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end41
  store i32 0, ptr %retval, align 4
  br label %return

if.end48:                                         ; preds = %if.end41
  %26 = load ptr, ptr %buf.addr, align 8
  %add.ptr49 = getelementptr inbounds i8, ptr %26, i64 4
  store ptr %add.ptr49, ptr %buf.addr, align 8
  %27 = load i32, ptr %h_id, align 4
  %28 = load ptr, ptr %pTagData.addr, align 8
  %h_id50 = getelementptr inbounds %struct.VBRTAGDATA, ptr %28, i32 0, i32 0
  store i32 %27, ptr %h_id50, align 4
  %29 = load i32, ptr %h_sr_index, align 4
  %idxprom = sext i32 %29 to i64
  %arrayidx51 = getelementptr inbounds [4 x i32], ptr @GetVbrTag.sr_table, i64 0, i64 %idxprom
  %30 = load i32, ptr %arrayidx51, align 4
  %31 = load ptr, ptr %pTagData.addr, align 8
  %samprate = getelementptr inbounds %struct.VBRTAGDATA, ptr %31, i32 0, i32 1
  store i32 %30, ptr %samprate, align 4
  %32 = load i32, ptr %h_id, align 4
  %cmp52 = icmp eq i32 %32, 0
  br i1 %cmp52, label %if.then54, label %if.end57

if.then54:                                        ; preds = %if.end48
  %33 = load ptr, ptr %pTagData.addr, align 8
  %samprate55 = getelementptr inbounds %struct.VBRTAGDATA, ptr %33, i32 0, i32 1
  %34 = load i32, ptr %samprate55, align 4
  %shr56 = ashr i32 %34, 1
  store i32 %shr56, ptr %samprate55, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %if.end48
  %35 = load ptr, ptr %buf.addr, align 8
  %call = call i32 @ExtractI4(ptr noundef %35)
  %36 = load ptr, ptr %pTagData.addr, align 8
  %flags58 = getelementptr inbounds %struct.VBRTAGDATA, ptr %36, i32 0, i32 2
  store i32 %call, ptr %flags58, align 4
  store i32 %call, ptr %head_flags, align 4
  %37 = load ptr, ptr %buf.addr, align 8
  %add.ptr59 = getelementptr inbounds i8, ptr %37, i64 4
  store ptr %add.ptr59, ptr %buf.addr, align 8
  %38 = load i32, ptr %head_flags, align 4
  %and60 = and i32 %38, 1
  %tobool61 = icmp ne i32 %and60, 0
  br i1 %tobool61, label %if.then62, label %if.end65

if.then62:                                        ; preds = %if.end57
  %39 = load ptr, ptr %buf.addr, align 8
  %call63 = call i32 @ExtractI4(ptr noundef %39)
  %40 = load ptr, ptr %pTagData.addr, align 8
  %frames = getelementptr inbounds %struct.VBRTAGDATA, ptr %40, i32 0, i32 3
  store i32 %call63, ptr %frames, align 4
  %41 = load ptr, ptr %buf.addr, align 8
  %add.ptr64 = getelementptr inbounds i8, ptr %41, i64 4
  store ptr %add.ptr64, ptr %buf.addr, align 8
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %if.end57
  %42 = load i32, ptr %head_flags, align 4
  %and66 = and i32 %42, 2
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %if.then68, label %if.end71

if.then68:                                        ; preds = %if.end65
  %43 = load ptr, ptr %buf.addr, align 8
  %call69 = call i32 @ExtractI4(ptr noundef %43)
  %44 = load ptr, ptr %pTagData.addr, align 8
  %bytes = getelementptr inbounds %struct.VBRTAGDATA, ptr %44, i32 0, i32 4
  store i32 %call69, ptr %bytes, align 4
  %45 = load ptr, ptr %buf.addr, align 8
  %add.ptr70 = getelementptr inbounds i8, ptr %45, i64 4
  store ptr %add.ptr70, ptr %buf.addr, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.then68, %if.end65
  %46 = load i32, ptr %head_flags, align 4
  %and72 = and i32 %46, 4
  %tobool73 = icmp ne i32 %and72, 0
  br i1 %tobool73, label %if.then74, label %if.end87

if.then74:                                        ; preds = %if.end71
  %47 = load ptr, ptr %pTagData.addr, align 8
  %toc = getelementptr inbounds %struct.VBRTAGDATA, ptr %47, i32 0, i32 6
  %arraydecay = getelementptr inbounds [100 x i8], ptr %toc, i64 0, i64 0
  %cmp75 = icmp ne ptr %arraydecay, null
  br i1 %cmp75, label %if.then77, label %if.end85

if.then77:                                        ; preds = %if.then74
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then77
  %48 = load i32, ptr %i, align 4
  %cmp78 = icmp slt i32 %48, 100
  br i1 %cmp78, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %49 = load ptr, ptr %buf.addr, align 8
  %50 = load i32, ptr %i, align 4
  %idxprom80 = sext i32 %50 to i64
  %arrayidx81 = getelementptr inbounds i8, ptr %49, i64 %idxprom80
  %51 = load i8, ptr %arrayidx81, align 1
  %52 = load ptr, ptr %pTagData.addr, align 8
  %toc82 = getelementptr inbounds %struct.VBRTAGDATA, ptr %52, i32 0, i32 6
  %53 = load i32, ptr %i, align 4
  %idxprom83 = sext i32 %53 to i64
  %arrayidx84 = getelementptr inbounds [100 x i8], ptr %toc82, i64 0, i64 %idxprom83
  store i8 %51, ptr %arrayidx84, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %54 = load i32, ptr %i, align 4
  %inc = add nsw i32 %54, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end85

if.end85:                                         ; preds = %for.end, %if.then74
  %55 = load ptr, ptr %buf.addr, align 8
  %add.ptr86 = getelementptr inbounds i8, ptr %55, i64 100
  store ptr %add.ptr86, ptr %buf.addr, align 8
  br label %if.end87

if.end87:                                         ; preds = %if.end85, %if.end71
  %56 = load ptr, ptr %pTagData.addr, align 8
  %vbr_scale = getelementptr inbounds %struct.VBRTAGDATA, ptr %56, i32 0, i32 5
  store i32 -1, ptr %vbr_scale, align 4
  %57 = load i32, ptr %head_flags, align 4
  %and88 = and i32 %57, 8
  %tobool89 = icmp ne i32 %and88, 0
  br i1 %tobool89, label %if.then90, label %if.end94

if.then90:                                        ; preds = %if.end87
  %58 = load ptr, ptr %buf.addr, align 8
  %call91 = call i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_VbrTag_0(ptr noundef %58)
  %59 = load ptr, ptr %pTagData.addr, align 8
  %vbr_scale92 = getelementptr inbounds %struct.VBRTAGDATA, ptr %59, i32 0, i32 5
  store i32 %call91, ptr %vbr_scale92, align 4
  %60 = load ptr, ptr %buf.addr, align 8
  %add.ptr93 = getelementptr inbounds i8, ptr %60, i64 4
  store ptr %add.ptr93, ptr %buf.addr, align 8
  br label %if.end94

if.end94:                                         ; preds = %if.then90, %if.end87
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end94, %if.then47, %if.then40, %if.then33, %if.then26
  %61 = load i32, ptr %retval, align 4
  ret i32 %61
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @ExtractI4(ptr noundef %buf) #0 {
entry:
  %buf.addr = alloca ptr, align 8
  %x = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  %0 = load ptr, ptr %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, ptr %x, align 4
  %2 = load i32, ptr %x, align 4
  %shl = shl i32 %2, 8
  store i32 %shl, ptr %x, align 4
  %3 = load ptr, ptr %buf.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %3, i64 1
  %4 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %4 to i32
  %5 = load i32, ptr %x, align 4
  %or = or i32 %5, %conv2
  store i32 %or, ptr %x, align 4
  %6 = load i32, ptr %x, align 4
  %shl3 = shl i32 %6, 8
  store i32 %shl3, ptr %x, align 4
  %7 = load ptr, ptr %buf.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %7, i64 2
  %8 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %8 to i32
  %9 = load i32, ptr %x, align 4
  %or6 = or i32 %9, %conv5
  store i32 %or6, ptr %x, align 4
  %10 = load i32, ptr %x, align 4
  %shl7 = shl i32 %10, 8
  store i32 %shl7, ptr %x, align 4
  %11 = load ptr, ptr %buf.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %11, i64 3
  %12 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %12 to i32
  %13 = load i32, ptr %x, align 4
  %or10 = or i32 %13, %conv9
  store i32 %or10, ptr %x, align 4
  %14 = load i32, ptr %x, align 4
  ret i32 %14
}

; Function Attrs: nounwind ssp uwtable
define i32 @InitVbrTag(ptr noundef %pBs, i32 noundef %nVersion, i32 noundef %nMode, i32 noundef %SampIndex) #0 {
entry:
  %pBs.addr = alloca ptr, align 8
  %nVersion.addr = alloca i32, align 4
  %nMode.addr = alloca i32, align 4
  %SampIndex.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %tot = alloca i32, align 4
  store ptr %pBs, ptr %pBs.addr, align 8
  store i32 %nVersion, ptr %nVersion.addr, align 4
  store i32 %nMode, ptr %nMode.addr, align 4
  store i32 %SampIndex, ptr %SampIndex.addr, align 4
  store ptr null, ptr @pVbrFrames, align 8
  store i32 0, ptr @nVbrNumFrames, align 4
  store i32 0, ptr @nVbrFrameBufferSize, align 4
  call void @llvm.memset.p0.i64(ptr align 8 @g_Position, i8 0, i64 800, i1 false)
  call void @llvm.memset.p0.i64(ptr align 1 @pbtStreamBuffer, i8 0, i64 216, i1 false)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [100 x i64], ptr @g_Position, i64 0, i64 %idxprom
  store i64 -1, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %3 = load i32, ptr %nMode.addr, align 4
  %cmp1 = icmp eq i32 %3, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %4 = load i32, ptr %nVersion.addr, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [2 x [2 x i32]], ptr @SizeOfEmptyFrame, i64 0, i64 %idxprom2
  %arrayidx4 = getelementptr inbounds [2 x i32], ptr %arrayidx3, i64 0, i64 1
  %5 = load i32, ptr %arrayidx4, align 4
  %add = add nsw i32 %5, 4
  store i32 %add, ptr @nZeroStreamSize, align 4
  br label %if.end

if.else:                                          ; preds = %for.end
  %6 = load i32, ptr %nVersion.addr, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [2 x [2 x i32]], ptr @SizeOfEmptyFrame, i64 0, i64 %idxprom5
  %arrayidx7 = getelementptr inbounds [2 x i32], ptr %arrayidx6, i64 0, i64 0
  %7 = load i32, ptr %arrayidx7, align 4
  %add8 = add nsw i32 %7, 4
  store i32 %add8, ptr @nZeroStreamSize, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load i32, ptr %SampIndex.addr, align 4
  %cmp9 = icmp sgt i32 %8, 2
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  %9 = load ptr, ptr @__stderrp, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str)
  call void @exit(i32 noundef -1) #10
  unreachable

if.end11:                                         ; preds = %if.end
  %10 = load i32, ptr %SampIndex.addr, align 4
  %idxprom12 = sext i32 %10 to i64
  %arrayidx13 = getelementptr inbounds [3 x i32], ptr @InitVbrTag.framesize, i64 0, i64 %idxprom12
  %11 = load i32, ptr %arrayidx13, align 4
  store i32 %11, ptr @TotalFrameSize, align 4
  %12 = load i32, ptr @nZeroStreamSize, align 4
  %add14 = add nsw i32 %12, 120
  store i32 %add14, ptr %tot, align 4
  %13 = load i32, ptr %tot, align 4
  %add15 = add nsw i32 %13, 20
  store i32 %add15, ptr %tot, align 4
  %14 = load i32, ptr @TotalFrameSize, align 4
  %15 = load i32, ptr %tot, align 4
  %cmp16 = icmp slt i32 %14, %15
  br i1 %cmp16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end11
  %16 = load ptr, ptr @__stderrp, align 8
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.1)
  call void @exit(i32 noundef -1) #10
  unreachable

if.end19:                                         ; preds = %if.end11
  store i32 0, ptr %i, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc23, %if.end19
  %17 = load i32, ptr %i, align 4
  %18 = load i32, ptr @TotalFrameSize, align 4
  %cmp21 = icmp slt i32 %17, %18
  br i1 %cmp21, label %for.body22, label %for.end25

for.body22:                                       ; preds = %for.cond20
  %19 = load ptr, ptr %pBs.addr, align 8
  call void @putbits(ptr noundef %19, i32 noundef 0, i32 noundef 8)
  br label %for.inc23

for.inc23:                                        ; preds = %for.body22
  %20 = load i32, ptr %i, align 4
  %inc24 = add nsw i32 %20, 1
  store i32 %inc24, ptr %i, align 4
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
  %abyte = alloca i8, align 1
  %btToc = alloca [100 x i8], align 1
  %fpStream = alloca ptr, align 8
  %str1 = alloca [80 x i8], align 1
  %frameNum = alloca i32, align 4
  %fRelStreamPos = alloca float, align 4
  store ptr %lpszFileName, ptr %lpszFileName.addr, align 8
  store i32 %nVbrScale, ptr %nVbrScale.addr, align 4
  store i32 %nVersion, ptr %nVersion.addr, align 4
  %0 = load i32, ptr @nVbrNumFrames, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr @pVbrFrames, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %lpszFileName.addr, align 8
  %call = call ptr @"\01_fopen"(ptr noundef %2, ptr noundef @.str.2)
  store ptr %call, ptr %fpStream, align 8
  %3 = load ptr, ptr %fpStream, align 8
  %cmp2 = icmp eq ptr %3, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  call void @llvm.memset.p0.i64(ptr align 1 @pbtStreamBuffer, i8 0, i64 216, i1 false)
  %4 = load ptr, ptr %fpStream, align 8
  %call5 = call i32 @fseek(ptr noundef %4, i64 noundef 0, i32 noundef 2)
  %5 = load ptr, ptr %fpStream, align 8
  %call6 = call i64 @ftell(ptr noundef %5)
  store i64 %call6, ptr %lFileSize, align 8
  %6 = load i64, ptr %lFileSize, align 8
  %cmp7 = icmp eq i64 %6, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end4
  store i32 -1, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end4
  %7 = load ptr, ptr %fpStream, align 8
  %8 = load i32, ptr @TotalFrameSize, align 4
  %conv = sext i32 %8 to i64
  %call10 = call i32 @fseek(ptr noundef %7, i64 noundef %conv, i32 noundef 0)
  %9 = load ptr, ptr %fpStream, align 8
  %call11 = call i64 @fread(ptr noundef @pbtStreamBuffer, i64 noundef 4, i64 noundef 1, ptr noundef %9)
  store i8 -1, ptr @pbtStreamBuffer, align 1
  %10 = load i32, ptr %nVersion.addr, align 4
  %cmp12 = icmp eq i32 %10, 0
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end9
  store i8 -5, ptr getelementptr inbounds ([216 x i8], ptr @pbtStreamBuffer, i64 0, i64 1), align 1
  %11 = load i8, ptr getelementptr inbounds ([216 x i8], ptr @pbtStreamBuffer, i64 0, i64 2), align 1
  %conv15 = zext i8 %11 to i32
  %and = and i32 %conv15, 12
  %conv16 = trunc i32 %and to i8
  store i8 %conv16, ptr %abyte, align 1
  %12 = load i8, ptr %abyte, align 1
  %conv17 = sext i8 %12 to i32
  %or = or i32 80, %conv17
  %conv18 = trunc i32 %or to i8
  store i8 %conv18, ptr getelementptr inbounds ([216 x i8], ptr @pbtStreamBuffer, i64 0, i64 2), align 1
  br label %if.end25

if.else:                                          ; preds = %if.end9
  store i8 -13, ptr getelementptr inbounds ([216 x i8], ptr @pbtStreamBuffer, i64 0, i64 1), align 1
  %13 = load i8, ptr getelementptr inbounds ([216 x i8], ptr @pbtStreamBuffer, i64 0, i64 2), align 1
  %conv19 = zext i8 %13 to i32
  %and20 = and i32 %conv19, 12
  %conv21 = trunc i32 %and20 to i8
  store i8 %conv21, ptr %abyte, align 1
  %14 = load i8, ptr %abyte, align 1
  %conv22 = sext i8 %14 to i32
  %or23 = or i32 -128, %conv22
  %conv24 = trunc i32 %or23 to i8
  store i8 %conv24, ptr getelementptr inbounds ([216 x i8], ptr @pbtStreamBuffer, i64 0, i64 2), align 1
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then14
  %15 = load ptr, ptr %fpStream, align 8
  %call26 = call i32 @fseek(ptr noundef %15, i64 noundef 0, i32 noundef 0)
  %arraydecay = getelementptr inbounds [100 x i8], ptr %btToc, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 1 %arraydecay, i8 0, i64 100, i1 false)
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end25
  %16 = load i32, ptr %i, align 4
  %cmp27 = icmp slt i32 %16, 100
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, ptr %i, align 4
  %conv29 = sitofp i32 %17 to double
  %mul = fmul double 1.000000e-02, %conv29
  %18 = load i32, ptr @nVbrNumFrames, align 4
  %conv30 = sitofp i32 %18 to double
  %mul31 = fmul double %mul, %conv30
  %19 = call double @llvm.floor.f64(double %mul31)
  %conv32 = fptosi double %19 to i32
  store i32 %conv32, ptr %frameNum, align 4
  %20 = load ptr, ptr @pVbrFrames, align 8
  %21 = load i32, ptr %frameNum, align 4
  %idxprom = sext i32 %21 to i64
  %arrayidx = getelementptr inbounds i32, ptr %20, i64 %idxprom
  %22 = load i32, ptr %arrayidx, align 4
  %conv33 = sitofp i32 %22 to float
  %mul34 = fmul float 2.560000e+02, %conv33
  %23 = load i64, ptr %lFileSize, align 8
  %conv35 = sitofp i64 %23 to float
  %div = fdiv float %mul34, %conv35
  store float %div, ptr %fRelStreamPos, align 4
  %24 = load float, ptr %fRelStreamPos, align 4
  %cmp36 = fcmp ogt float %24, 2.550000e+02
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %for.body
  store float 2.550000e+02, ptr %fRelStreamPos, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %for.body
  %25 = load float, ptr %fRelStreamPos, align 4
  %conv40 = fptoui float %25 to i8
  %26 = load i32, ptr %i, align 4
  %idxprom41 = sext i32 %26 to i64
  %arrayidx42 = getelementptr inbounds [100 x i8], ptr %btToc, i64 0, i64 %idxprom41
  store i8 %conv40, ptr %arrayidx42, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end39
  %27 = load i32, ptr %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %28 = load i32, ptr @nZeroStreamSize, align 4
  store i32 %28, ptr %nStreamIndex, align 4
  %29 = load i8, ptr @VBRTag, align 1
  %30 = load i32, ptr %nStreamIndex, align 4
  %inc43 = add nsw i32 %30, 1
  store i32 %inc43, ptr %nStreamIndex, align 4
  %idxprom44 = sext i32 %30 to i64
  %arrayidx45 = getelementptr inbounds [216 x i8], ptr @pbtStreamBuffer, i64 0, i64 %idxprom44
  store i8 %29, ptr %arrayidx45, align 1
  %31 = load i8, ptr getelementptr inbounds ([5 x i8], ptr @VBRTag, i64 0, i64 1), align 1
  %32 = load i32, ptr %nStreamIndex, align 4
  %inc46 = add nsw i32 %32, 1
  store i32 %inc46, ptr %nStreamIndex, align 4
  %idxprom47 = sext i32 %32 to i64
  %arrayidx48 = getelementptr inbounds [216 x i8], ptr @pbtStreamBuffer, i64 0, i64 %idxprom47
  store i8 %31, ptr %arrayidx48, align 1
  %33 = load i8, ptr getelementptr inbounds ([5 x i8], ptr @VBRTag, i64 0, i64 2), align 1
  %34 = load i32, ptr %nStreamIndex, align 4
  %inc49 = add nsw i32 %34, 1
  store i32 %inc49, ptr %nStreamIndex, align 4
  %idxprom50 = sext i32 %34 to i64
  %arrayidx51 = getelementptr inbounds [216 x i8], ptr @pbtStreamBuffer, i64 0, i64 %idxprom50
  store i8 %33, ptr %arrayidx51, align 1
  %35 = load i8, ptr getelementptr inbounds ([5 x i8], ptr @VBRTag, i64 0, i64 3), align 1
  %36 = load i32, ptr %nStreamIndex, align 4
  %inc52 = add nsw i32 %36, 1
  store i32 %inc52, ptr %nStreamIndex, align 4
  %idxprom53 = sext i32 %36 to i64
  %arrayidx54 = getelementptr inbounds [216 x i8], ptr @pbtStreamBuffer, i64 0, i64 %idxprom53
  store i8 %35, ptr %arrayidx54, align 1
  %37 = load i32, ptr %nStreamIndex, align 4
  %idxprom55 = sext i32 %37 to i64
  %arrayidx56 = getelementptr inbounds [216 x i8], ptr @pbtStreamBuffer, i64 0, i64 %idxprom55
  call void @CreateI4(ptr noundef %arrayidx56, i32 noundef 15)
  %38 = load i32, ptr %nStreamIndex, align 4
  %add = add nsw i32 %38, 4
  store i32 %add, ptr %nStreamIndex, align 4
  %39 = load i32, ptr %nStreamIndex, align 4
  %idxprom57 = sext i32 %39 to i64
  %arrayidx58 = getelementptr inbounds [216 x i8], ptr @pbtStreamBuffer, i64 0, i64 %idxprom57
  %40 = load i32, ptr @nVbrNumFrames, align 4
  call void @CreateI4(ptr noundef %arrayidx58, i32 noundef %40)
  %41 = load i32, ptr %nStreamIndex, align 4
  %add59 = add nsw i32 %41, 4
  store i32 %add59, ptr %nStreamIndex, align 4
  %42 = load i32, ptr %nStreamIndex, align 4
  %idxprom60 = sext i32 %42 to i64
  %arrayidx61 = getelementptr inbounds [216 x i8], ptr @pbtStreamBuffer, i64 0, i64 %idxprom60
  %43 = load i64, ptr %lFileSize, align 8
  %conv62 = trunc i64 %43 to i32
  call void @CreateI4(ptr noundef %arrayidx61, i32 noundef %conv62)
  %44 = load i32, ptr %nStreamIndex, align 4
  %add63 = add nsw i32 %44, 4
  store i32 %add63, ptr %nStreamIndex, align 4
  %45 = load i32, ptr %nStreamIndex, align 4
  %idxprom64 = sext i32 %45 to i64
  %arrayidx65 = getelementptr inbounds [216 x i8], ptr @pbtStreamBuffer, i64 0, i64 %idxprom64
  %arraydecay66 = getelementptr inbounds [100 x i8], ptr %btToc, i64 0, i64 0
  %46 = load i32, ptr %nStreamIndex, align 4
  %idxprom67 = sext i32 %46 to i64
  %arrayidx68 = getelementptr inbounds [216 x i8], ptr @pbtStreamBuffer, i64 0, i64 %idxprom67
  %47 = call i64 @llvm.objectsize.i64.p0(ptr %arrayidx68, i1 false, i1 true, i1 false)
  %call69 = call ptr @__memcpy_chk(ptr noundef %arrayidx65, ptr noundef %arraydecay66, i64 noundef 100, i64 noundef %47) #11
  %48 = load i32, ptr %nStreamIndex, align 4
  %conv70 = sext i32 %48 to i64
  %add71 = add i64 %conv70, 100
  %conv72 = trunc i64 %add71 to i32
  store i32 %conv72, ptr %nStreamIndex, align 4
  %49 = load i32, ptr %nStreamIndex, align 4
  %idxprom73 = sext i32 %49 to i64
  %arrayidx74 = getelementptr inbounds [216 x i8], ptr @pbtStreamBuffer, i64 0, i64 %idxprom73
  %50 = load i32, ptr %nVbrScale.addr, align 4
  call void @CreateI4(ptr noundef %arrayidx74, i32 noundef %50)
  %51 = load i32, ptr %nStreamIndex, align 4
  %add75 = add nsw i32 %51, 4
  store i32 %add75, ptr %nStreamIndex, align 4
  %arraydecay76 = getelementptr inbounds [80 x i8], ptr %str1, i64 0, i64 0
  %call77 = call ptr @get_lame_version()
  %call78 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %arraydecay76, i32 noundef 0, i64 noundef 80, ptr noundef @.str.3, ptr noundef %call77)
  %52 = load i32, ptr %nStreamIndex, align 4
  %idxprom79 = sext i32 %52 to i64
  %arrayidx80 = getelementptr inbounds [216 x i8], ptr @pbtStreamBuffer, i64 0, i64 %idxprom79
  %arraydecay81 = getelementptr inbounds [80 x i8], ptr %str1, i64 0, i64 0
  %53 = load i32, ptr %nStreamIndex, align 4
  %idxprom82 = sext i32 %53 to i64
  %arrayidx83 = getelementptr inbounds [216 x i8], ptr @pbtStreamBuffer, i64 0, i64 %idxprom82
  %54 = call i64 @llvm.objectsize.i64.p0(ptr %arrayidx83, i1 false, i1 true, i1 false)
  %call84 = call ptr @__strncpy_chk(ptr noundef %arrayidx80, ptr noundef %arraydecay81, i64 noundef 20, i64 noundef %54) #11
  %55 = load i32, ptr %nStreamIndex, align 4
  %add85 = add nsw i32 %55, 20
  store i32 %add85, ptr %nStreamIndex, align 4
  %56 = load i32, ptr @TotalFrameSize, align 4
  %conv86 = sext i32 %56 to i64
  %57 = load ptr, ptr %fpStream, align 8
  %call87 = call i64 @"\01_fwrite"(ptr noundef @pbtStreamBuffer, i64 noundef %conv86, i64 noundef 1, ptr noundef %57)
  %cmp88 = icmp ne i64 %call87, 1
  br i1 %cmp88, label %if.then90, label %if.end91

if.then90:                                        ; preds = %for.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end91:                                         ; preds = %for.end
  %58 = load ptr, ptr %fpStream, align 8
  %call92 = call i32 @fclose(ptr noundef %58)
  %59 = load ptr, ptr @pVbrFrames, align 8
  call void @free(ptr noundef %59)
  store ptr null, ptr @pVbrFrames, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end91, %if.then90, %if.then8, %if.then3, %if.then
  %60 = load i32, ptr %retval, align 4
  ret i32 %60
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
  %seekpoint = alloca i32, align 4
  %fa = alloca float, align 4
  %fb = alloca float, align 4
  %fx = alloca float, align 4
  store ptr %TOC, ptr %TOC.addr, align 8
  store i32 %file_bytes, ptr %file_bytes.addr, align 4
  store float %percent, ptr %percent.addr, align 4
  %0 = load float, ptr %percent.addr, align 4
  %cmp = fcmp olt float %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store float 0.000000e+00, ptr %percent.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load float, ptr %percent.addr, align 4
  %cmp1 = fcmp ogt float %1, 1.000000e+02
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store float 1.000000e+02, ptr %percent.addr, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %2 = load float, ptr %percent.addr, align 4
  %conv = fptosi float %2 to i32
  store i32 %conv, ptr %a, align 4
  %3 = load i32, ptr %a, align 4
  %cmp4 = icmp sgt i32 %3, 99
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  store i32 99, ptr %a, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end3
  %4 = load ptr, ptr %TOC.addr, align 8
  %5 = load i32, ptr %a, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %idxprom
  %6 = load i8, ptr %arrayidx, align 1
  %conv8 = uitofp i8 %6 to float
  store float %conv8, ptr %fa, align 4
  %7 = load i32, ptr %a, align 4
  %cmp9 = icmp slt i32 %7, 99
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end7
  %8 = load ptr, ptr %TOC.addr, align 8
  %9 = load i32, ptr %a, align 4
  %add = add nsw i32 %9, 1
  %idxprom12 = sext i32 %add to i64
  %arrayidx13 = getelementptr inbounds i8, ptr %8, i64 %idxprom12
  %10 = load i8, ptr %arrayidx13, align 1
  %conv14 = uitofp i8 %10 to float
  store float %conv14, ptr %fb, align 4
  br label %if.end15

if.else:                                          ; preds = %if.end7
  store float 2.560000e+02, ptr %fb, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then11
  %11 = load float, ptr %fa, align 4
  %12 = load float, ptr %fb, align 4
  %13 = load float, ptr %fa, align 4
  %sub = fsub float %12, %13
  %14 = load float, ptr %percent.addr, align 4
  %15 = load i32, ptr %a, align 4
  %conv16 = sitofp i32 %15 to float
  %sub17 = fsub float %14, %conv16
  %16 = call float @llvm.fmuladd.f32(float %sub, float %sub17, float %11)
  store float %16, ptr %fx, align 4
  %17 = load float, ptr %fx, align 4
  %mul = fmul float 3.906250e-03, %17
  %18 = load i32, ptr %file_bytes.addr, align 4
  %conv18 = sitofp i32 %18 to float
  %mul19 = fmul float %mul, %conv18
  %conv20 = fptosi float %mul19 to i32
  store i32 %conv20, ptr %seekpoint, align 4
  %19 = load i32, ptr %seekpoint, align 4
  ret i32 %19
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #6

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { allocsize(1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #8 = { allocsize(0) }
attributes #9 = { allocsize(1) }
attributes #10 = { noreturn }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define internal i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_VbrTag_0(ptr noundef %buf)  alwaysinline#0 {
entry:
  %buf.addr = alloca ptr, align 8
  %x = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  %0 = load ptr, ptr %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, ptr %x, align 4
  %2 = load i32, ptr %x, align 4
  %shl = shl i32 %2, 8
  store i32 %shl, ptr %x, align 4
  %3 = load ptr, ptr %buf.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %3, i64 1
  %4 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %4 to i32
  %5 = load i32, ptr %x, align 4
  %or = or i32 %5, %conv2
  store i32 %or, ptr %x, align 4
  %6 = load i32, ptr %x, align 4
  %shl3 = shl i32 %6, 8
  store i32 %shl3, ptr %x, align 4
  %7 = load ptr, ptr %buf.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %7, i64 2
  %8 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %8 to i32
  %9 = load i32, ptr %x, align 4
  %or6 = or i32 %9, %conv5
  store i32 %or6, ptr %x, align 4
  %10 = load i32, ptr %x, align 4
  %shl7 = shl i32 %10, 8
  store i32 %shl7, ptr %x, align 4
  %11 = load ptr, ptr %buf.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %11, i64 3
  %12 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %12 to i32
  %13 = load i32, ptr %x, align 4
  %or10 = or i32 %13, %conv9
  store i32 %or10, ptr %x, align 4
  %14 = load i32, ptr %x, align 4
  ret i32 %14
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
