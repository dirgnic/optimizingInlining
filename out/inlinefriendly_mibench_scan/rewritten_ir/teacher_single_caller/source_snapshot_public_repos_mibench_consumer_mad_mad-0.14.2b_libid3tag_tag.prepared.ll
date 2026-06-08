; ModuleID = './source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/libid3tag/tag.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/libid3tag/tag.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.id3_tag = type { i32, i32, i32, i32, i32, i32, i32, ptr, i64 }
%struct.id3_compat = type { ptr, ptr, ptr }
%struct.id3_frame = type { [5 x i8], ptr, i32, i32, i32, i32, ptr, i64, i64, i32, ptr }
%union.id3_field = type { %struct.anon.5 }
%struct.anon.5 = type { i32, ptr, i64 }

@.str = private unnamed_addr constant [4 x i8] c"ID3\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"3DI\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"TIT2\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"TPE1\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"TALB\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"TDRC\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"TRCK\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"TCON\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"COMM\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"XXX\00", align 1
@id3_ucs4_empty = external constant [0 x i64], align 8
@.str.10 = private unnamed_addr constant [4 x i8] c"TAG\00", align 1

; Function Attrs: nounwind ssp uwtable
define ptr @id3_tag_new() #0 {
entry:
  %tag = alloca ptr, align 8
  %call = call ptr @malloc(i64 noundef 48) #8
  store ptr %call, ptr %tag, align 8
  %0 = load ptr, ptr %tag, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %tag, align 8
  %refcount = getelementptr inbounds %struct.id3_tag, ptr %1, i32 0, i32 0
  store i32 0, ptr %refcount, align 8
  %2 = load ptr, ptr %tag, align 8
  %version = getelementptr inbounds %struct.id3_tag, ptr %2, i32 0, i32 1
  store i32 1024, ptr %version, align 4
  %3 = load ptr, ptr %tag, align 8
  %flags = getelementptr inbounds %struct.id3_tag, ptr %3, i32 0, i32 2
  store i32 0, ptr %flags, align 8
  %4 = load ptr, ptr %tag, align 8
  %extendedflags = getelementptr inbounds %struct.id3_tag, ptr %4, i32 0, i32 3
  store i32 0, ptr %extendedflags, align 4
  %5 = load ptr, ptr %tag, align 8
  %restrictions = getelementptr inbounds %struct.id3_tag, ptr %5, i32 0, i32 4
  store i32 0, ptr %restrictions, align 8
  %6 = load ptr, ptr %tag, align 8
  %options = getelementptr inbounds %struct.id3_tag, ptr %6, i32 0, i32 5
  store i32 6, ptr %options, align 4
  %7 = load ptr, ptr %tag, align 8
  %nframes = getelementptr inbounds %struct.id3_tag, ptr %7, i32 0, i32 6
  store i32 0, ptr %nframes, align 8
  %8 = load ptr, ptr %tag, align 8
  %frames = getelementptr inbounds %struct.id3_tag, ptr %8, i32 0, i32 7
  store ptr null, ptr %frames, align 8
  %9 = load ptr, ptr %tag, align 8
  %paddedsize = getelementptr inbounds %struct.id3_tag, ptr %9, i32 0, i32 8
  store i64 0, ptr %paddedsize, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load ptr, ptr %tag, align 8
  ret ptr %10
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @id3_tag_delete(ptr noundef %tag) #0 {
entry:
  %tag.addr = alloca ptr, align 8
  store ptr %tag, ptr %tag.addr, align 8
  %0 = load ptr, ptr %tag.addr, align 8
  %refcount = getelementptr inbounds %struct.id3_tag, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %refcount, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %tag.addr, align 8
  call void @id3_tag_clearframes(ptr noundef %2)
  %3 = load ptr, ptr %tag.addr, align 8
  %frames = getelementptr inbounds %struct.id3_tag, ptr %3, i32 0, i32 7
  %4 = load ptr, ptr %frames, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %5 = load ptr, ptr %tag.addr, align 8
  %frames2 = getelementptr inbounds %struct.id3_tag, ptr %5, i32 0, i32 7
  %6 = load ptr, ptr %frames2, align 8
  call void @free(ptr noundef %6)
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  %7 = load ptr, ptr %tag.addr, align 8
  call void @free(ptr noundef %7)
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @id3_tag_clearframes(ptr noundef %tag) #0 {
entry:
  %tag.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %tag, ptr %tag.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load ptr, ptr %tag.addr, align 8
  %nframes = getelementptr inbounds %struct.id3_tag, ptr %1, i32 0, i32 6
  %2 = load i32, ptr %nframes, align 8
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %tag.addr, align 8
  %frames = getelementptr inbounds %struct.id3_tag, ptr %3, i32 0, i32 7
  %4 = load ptr, ptr %frames, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %idxprom
  %6 = load ptr, ptr %arrayidx, align 8
  call void @id3_frame_delref(ptr noundef %6)
  %7 = load ptr, ptr %tag.addr, align 8
  %frames1 = getelementptr inbounds %struct.id3_tag, ptr %7, i32 0, i32 7
  %8 = load ptr, ptr %frames1, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom2 = zext i32 %9 to i64
  %arrayidx3 = getelementptr inbounds ptr, ptr %8, i64 %idxprom2
  %10 = load ptr, ptr %arrayidx3, align 8
  call void @id3_frame_delete(ptr noundef %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %i, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %12 = load ptr, ptr %tag.addr, align 8
  %nframes4 = getelementptr inbounds %struct.id3_tag, ptr %12, i32 0, i32 6
  store i32 0, ptr %nframes4, align 8
  ret void
}

declare void @free(ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define void @id3_tag_addref(ptr noundef %tag) #0 {
entry:
  %tag.addr = alloca ptr, align 8
  store ptr %tag, ptr %tag.addr, align 8
  %0 = load ptr, ptr %tag.addr, align 8
  %refcount = getelementptr inbounds %struct.id3_tag, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %refcount, align 8
  %inc = add i32 %1, 1
  store i32 %inc, ptr %refcount, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @id3_tag_delref(ptr noundef %tag) #0 {
entry:
  %tag.addr = alloca ptr, align 8
  store ptr %tag, ptr %tag.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %tag.addr, align 8
  %refcount = getelementptr inbounds %struct.id3_tag, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %refcount, align 8
  %cmp = icmp ugt i32 %1, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  call void @abort() #9
  unreachable

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr %tag.addr, align 8
  %refcount1 = getelementptr inbounds %struct.id3_tag, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %refcount1, align 8
  %dec = add i32 %3, -1
  store i32 %dec, ptr %refcount1, align 8
  ret void
}

; Function Attrs: cold noreturn
declare void @abort() #3

declare void @id3_frame_delref(ptr noundef) #2

declare void @id3_frame_delete(ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define i32 @id3_tag_attachframe(ptr noundef %tag, ptr noundef %frame) #0 {
entry:
  %retval = alloca i32, align 4
  %tag.addr = alloca ptr, align 8
  %frame.addr = alloca ptr, align 8
  %frames = alloca ptr, align 8
  store ptr %tag, ptr %tag.addr, align 8
  store ptr %frame, ptr %frame.addr, align 8
  %0 = load ptr, ptr %tag.addr, align 8
  %frames1 = getelementptr inbounds %struct.id3_tag, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %frames1, align 8
  %2 = load ptr, ptr %tag.addr, align 8
  %nframes = getelementptr inbounds %struct.id3_tag, ptr %2, i32 0, i32 6
  %3 = load i32, ptr %nframes, align 8
  %add = add i32 %3, 1
  %conv = zext i32 %add to i64
  %mul = mul i64 %conv, 8
  %call = call ptr @realloc(ptr noundef %1, i64 noundef %mul) #10
  store ptr %call, ptr %frames, align 8
  %4 = load ptr, ptr %frames, align 8
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %frames, align 8
  %6 = load ptr, ptr %tag.addr, align 8
  %frames3 = getelementptr inbounds %struct.id3_tag, ptr %6, i32 0, i32 7
  store ptr %5, ptr %frames3, align 8
  %7 = load ptr, ptr %frame.addr, align 8
  %8 = load ptr, ptr %tag.addr, align 8
  %frames4 = getelementptr inbounds %struct.id3_tag, ptr %8, i32 0, i32 7
  %9 = load ptr, ptr %frames4, align 8
  %10 = load ptr, ptr %tag.addr, align 8
  %nframes5 = getelementptr inbounds %struct.id3_tag, ptr %10, i32 0, i32 6
  %11 = load i32, ptr %nframes5, align 8
  %inc = add i32 %11, 1
  store i32 %inc, ptr %nframes5, align 8
  %idxprom = zext i32 %11 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %9, i64 %idxprom
  store ptr %7, ptr %arrayidx, align 8
  %12 = load ptr, ptr %frame.addr, align 8
  call void @id3_frame_addref(ptr noundef %12)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

; Function Attrs: allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #4

declare void @id3_frame_addref(ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define i32 @id3_tag_detachframe(ptr noundef %tag, ptr noundef %frame) #0 {
entry:
  %retval = alloca i32, align 4
  %tag.addr = alloca ptr, align 8
  %frame.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %tag, ptr %tag.addr, align 8
  store ptr %frame, ptr %frame.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load ptr, ptr %tag.addr, align 8
  %nframes = getelementptr inbounds %struct.id3_tag, ptr %1, i32 0, i32 6
  %2 = load i32, ptr %nframes, align 8
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %tag.addr, align 8
  %frames = getelementptr inbounds %struct.id3_tag, ptr %3, i32 0, i32 7
  %4 = load ptr, ptr %frames, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %idxprom
  %6 = load ptr, ptr %arrayidx, align 8
  %7 = load ptr, ptr %frame.addr, align 8
  %cmp1 = icmp eq ptr %6, %7
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, ptr %i, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %if.then, %for.cond
  %9 = load i32, ptr %i, align 4
  %10 = load ptr, ptr %tag.addr, align 8
  %nframes2 = getelementptr inbounds %struct.id3_tag, ptr %10, i32 0, i32 6
  %11 = load i32, ptr %nframes2, align 8
  %cmp3 = icmp eq i32 %9, %11
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %for.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %for.end
  %12 = load ptr, ptr %tag.addr, align 8
  %nframes6 = getelementptr inbounds %struct.id3_tag, ptr %12, i32 0, i32 6
  %13 = load i32, ptr %nframes6, align 8
  %dec = add i32 %13, -1
  store i32 %dec, ptr %nframes6, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end5
  %14 = load i32, ptr %i, align 4
  %inc7 = add i32 %14, 1
  store i32 %inc7, ptr %i, align 4
  %15 = load ptr, ptr %tag.addr, align 8
  %nframes8 = getelementptr inbounds %struct.id3_tag, ptr %15, i32 0, i32 6
  %16 = load i32, ptr %nframes8, align 8
  %cmp9 = icmp ult i32 %14, %16
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load ptr, ptr %tag.addr, align 8
  %frames10 = getelementptr inbounds %struct.id3_tag, ptr %17, i32 0, i32 7
  %18 = load ptr, ptr %frames10, align 8
  %19 = load i32, ptr %i, align 4
  %idxprom11 = zext i32 %19 to i64
  %arrayidx12 = getelementptr inbounds ptr, ptr %18, i64 %idxprom11
  %20 = load ptr, ptr %arrayidx12, align 8
  %21 = load ptr, ptr %tag.addr, align 8
  %frames13 = getelementptr inbounds %struct.id3_tag, ptr %21, i32 0, i32 7
  %22 = load ptr, ptr %frames13, align 8
  %23 = load i32, ptr %i, align 4
  %sub = sub i32 %23, 1
  %idxprom14 = zext i32 %sub to i64
  %arrayidx15 = getelementptr inbounds ptr, ptr %22, i64 %idxprom14
  store ptr %20, ptr %arrayidx15, align 8
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %24 = load ptr, ptr %frame.addr, align 8
  call void @id3_frame_delref(ptr noundef %24)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then4
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

; Function Attrs: nounwind ssp uwtable
define ptr @id3_tag_findframe(ptr noundef %tag, ptr noundef %id, i32 noundef %index) #0 {
entry:
  %retval = alloca ptr, align 8
  %tag.addr = alloca ptr, align 8
  %id.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  %compat = alloca ptr, align 8
  store ptr %tag, ptr %tag.addr, align 8
  store ptr %id, ptr %id.addr, align 8
  store i32 %index, ptr %index.addr, align 4
  %0 = load ptr, ptr %id.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %id.addr, align 8
  %2 = load i8, ptr %1, align 1
  %conv = sext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load i32, ptr %index.addr, align 4
  %4 = load ptr, ptr %tag.addr, align 8
  %nframes = getelementptr inbounds %struct.id3_tag, ptr %4, i32 0, i32 6
  %5 = load i32, ptr %nframes, align 8
  %cmp3 = icmp ult i32 %3, %5
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %6 = load ptr, ptr %tag.addr, align 8
  %frames = getelementptr inbounds %struct.id3_tag, ptr %6, i32 0, i32 7
  %7 = load ptr, ptr %frames, align 8
  %8 = load i32, ptr %index.addr, align 4
  %idxprom = zext i32 %8 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %7, i64 %idxprom
  %9 = load ptr, ptr %arrayidx, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %9, %cond.true ], [ null, %cond.false ]
  store ptr %cond, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %10 = load ptr, ptr %id.addr, align 8
  %call = call i64 @strlen(ptr noundef %10)
  %conv5 = trunc i64 %call to i32
  store i32 %conv5, ptr %len, align 4
  %11 = load i32, ptr %len, align 4
  %cmp6 = icmp eq i32 %11, 4
  br i1 %cmp6, label %if.then8, label %if.end18

if.then8:                                         ; preds = %if.end
  %12 = load ptr, ptr %id.addr, align 8
  %13 = load i32, ptr %len, align 4
  %call9 = call ptr @id3_compat_lookup(ptr noundef %12, i32 noundef %13)
  store ptr %call9, ptr %compat, align 8
  %14 = load ptr, ptr %compat, align 8
  %tobool = icmp ne ptr %14, null
  br i1 %tobool, label %land.lhs.true, label %if.end17

land.lhs.true:                                    ; preds = %if.then8
  %15 = load ptr, ptr %compat, align 8
  %equiv = getelementptr inbounds %struct.id3_compat, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %equiv, align 8
  %tobool10 = icmp ne ptr %16, null
  br i1 %tobool10, label %land.lhs.true11, label %if.end17

land.lhs.true11:                                  ; preds = %land.lhs.true
  %17 = load ptr, ptr %compat, align 8
  %translate = getelementptr inbounds %struct.id3_compat, ptr %17, i32 0, i32 2
  %18 = load ptr, ptr %translate, align 8
  %tobool12 = icmp ne ptr %18, null
  br i1 %tobool12, label %if.end17, label %if.then13

if.then13:                                        ; preds = %land.lhs.true11
  %19 = load ptr, ptr %compat, align 8
  %equiv14 = getelementptr inbounds %struct.id3_compat, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %equiv14, align 8
  store ptr %20, ptr %id.addr, align 8
  %21 = load ptr, ptr %id.addr, align 8
  %call15 = call i64 @strlen(ptr noundef %21)
  %conv16 = trunc i64 %call15 to i32
  store i32 %conv16, ptr %len, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %land.lhs.true11, %land.lhs.true, %if.then8
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.end
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end18
  %22 = load i32, ptr %i, align 4
  %23 = load ptr, ptr %tag.addr, align 8
  %nframes19 = getelementptr inbounds %struct.id3_tag, ptr %23, i32 0, i32 6
  %24 = load i32, ptr %nframes19, align 8
  %cmp20 = icmp ult i32 %22, %24
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load ptr, ptr %tag.addr, align 8
  %frames22 = getelementptr inbounds %struct.id3_tag, ptr %25, i32 0, i32 7
  %26 = load ptr, ptr %frames22, align 8
  %27 = load i32, ptr %i, align 4
  %idxprom23 = zext i32 %27 to i64
  %arrayidx24 = getelementptr inbounds ptr, ptr %26, i64 %idxprom23
  %28 = load ptr, ptr %arrayidx24, align 8
  %id25 = getelementptr inbounds %struct.id3_frame, ptr %28, i32 0, i32 0
  %arraydecay = getelementptr inbounds [5 x i8], ptr %id25, i64 0, i64 0
  %29 = load ptr, ptr %id.addr, align 8
  %30 = load i32, ptr %len, align 4
  %conv26 = zext i32 %30 to i64
  %call27 = call i32 @strncmp(ptr noundef %arraydecay, ptr noundef %29, i64 noundef %conv26)
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %land.lhs.true30, label %if.end37

land.lhs.true30:                                  ; preds = %for.body
  %31 = load i32, ptr %index.addr, align 4
  %dec = add i32 %31, -1
  store i32 %dec, ptr %index.addr, align 4
  %cmp31 = icmp eq i32 %31, 0
  br i1 %cmp31, label %if.then33, label %if.end37

if.then33:                                        ; preds = %land.lhs.true30
  %32 = load ptr, ptr %tag.addr, align 8
  %frames34 = getelementptr inbounds %struct.id3_tag, ptr %32, i32 0, i32 7
  %33 = load ptr, ptr %frames34, align 8
  %34 = load i32, ptr %i, align 4
  %idxprom35 = zext i32 %34 to i64
  %arrayidx36 = getelementptr inbounds ptr, ptr %33, i64 %idxprom35
  %35 = load ptr, ptr %arrayidx36, align 8
  store ptr %35, ptr %retval, align 8
  br label %return

if.end37:                                         ; preds = %land.lhs.true30, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end37
  %36 = load i32, ptr %i, align 4
  %inc = add i32 %36, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then33, %cond.end
  %37 = load ptr, ptr %retval, align 8
  ret ptr %37
}

declare i64 @strlen(ptr noundef) #2

declare ptr @id3_compat_lookup(ptr noundef, i32 noundef) #2

declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind ssp uwtable
define i64 @id3_tag_query(ptr noundef %data, i64 noundef %length) #0 {
entry:
  %retval = alloca i64, align 8
  %data.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %version = alloca i32, align 4
  %flags = alloca i32, align 4
  %size = alloca i64, align 8
  store ptr %data, ptr %data.addr, align 8
  store i64 %length, ptr %length.addr, align 8
  %0 = load ptr, ptr %data.addr, align 8
  %1 = load i64, ptr %length.addr, align 8
  %call = call i32 @tagtype(ptr noundef %0, i64 noundef %1)
  switch i32 %call, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb3
    i32 0, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  store i64 128, ptr %retval, align 8
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @parse_header(ptr noundef %data.addr, ptr noundef %version, ptr noundef %flags, ptr noundef %size)
  %2 = load i32, ptr %flags, align 4
  %and = and i32 %2, 16
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb1
  %3 = load i64, ptr %size, align 8
  %add = add i64 %3, 10
  store i64 %add, ptr %size, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb1
  %4 = load i64, ptr %size, align 8
  %add2 = add i64 10, %4
  store i64 %add2, ptr %retval, align 8
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @parse_header(ptr noundef %data.addr, ptr noundef %version, ptr noundef %flags, ptr noundef %size)
  %5 = load i64, ptr %size, align 8
  %sub = sub i64 0, %5
  %sub4 = sub i64 %sub, 10
  store i64 %sub4, ptr %retval, align 8
  br label %return

sw.bb5:                                           ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb5
  store i64 0, ptr %retval, align 8
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb3, %if.end, %sw.bb
  %6 = load i64, ptr %retval, align 8
  ret i64 %6
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @tagtype(ptr noundef %data, i64 noundef %length) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  store ptr %data, ptr %data.addr, align 8
  store i64 %length, ptr %length.addr, align 8
  %0 = load i64, ptr %length.addr, align 8
  %cmp = icmp uge i64 %0, 3
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %data.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 84
  br i1 %cmp1, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %3 = load ptr, ptr %data.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %3, i64 1
  %4 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %4 to i32
  %cmp6 = icmp eq i32 %conv5, 65
  br i1 %cmp6, label %land.lhs.true8, label %if.end

land.lhs.true8:                                   ; preds = %land.lhs.true3
  %5 = load ptr, ptr %data.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %5, i64 2
  %6 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %6 to i32
  %cmp11 = icmp eq i32 %conv10, 71
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true8
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true8, %land.lhs.true3, %land.lhs.true, %entry
  %7 = load i64, ptr %length.addr, align 8
  %cmp13 = icmp uge i64 %7, 10
  br i1 %cmp13, label %land.lhs.true15, label %if.end79

land.lhs.true15:                                  ; preds = %if.end
  %8 = load ptr, ptr %data.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, ptr %8, i64 0
  %9 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %9 to i32
  %cmp18 = icmp eq i32 %conv17, 73
  br i1 %cmp18, label %land.lhs.true20, label %lor.lhs.false

land.lhs.true20:                                  ; preds = %land.lhs.true15
  %10 = load ptr, ptr %data.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, ptr %10, i64 1
  %11 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %11 to i32
  %cmp23 = icmp eq i32 %conv22, 68
  br i1 %cmp23, label %land.lhs.true25, label %lor.lhs.false

land.lhs.true25:                                  ; preds = %land.lhs.true20
  %12 = load ptr, ptr %data.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, ptr %12, i64 2
  %13 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %13 to i32
  %cmp28 = icmp eq i32 %conv27, 51
  br i1 %cmp28, label %land.lhs.true44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true25, %land.lhs.true20, %land.lhs.true15
  %14 = load ptr, ptr %data.addr, align 8
  %arrayidx30 = getelementptr inbounds i8, ptr %14, i64 0
  %15 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %15 to i32
  %cmp32 = icmp eq i32 %conv31, 51
  br i1 %cmp32, label %land.lhs.true34, label %if.end79

land.lhs.true34:                                  ; preds = %lor.lhs.false
  %16 = load ptr, ptr %data.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, ptr %16, i64 1
  %17 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %17 to i32
  %cmp37 = icmp eq i32 %conv36, 68
  br i1 %cmp37, label %land.lhs.true39, label %if.end79

land.lhs.true39:                                  ; preds = %land.lhs.true34
  %18 = load ptr, ptr %data.addr, align 8
  %arrayidx40 = getelementptr inbounds i8, ptr %18, i64 2
  %19 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %19 to i32
  %cmp42 = icmp eq i32 %conv41, 73
  br i1 %cmp42, label %land.lhs.true44, label %if.end79

land.lhs.true44:                                  ; preds = %land.lhs.true39, %land.lhs.true25
  %20 = load ptr, ptr %data.addr, align 8
  %arrayidx45 = getelementptr inbounds i8, ptr %20, i64 3
  %21 = load i8, ptr %arrayidx45, align 1
  %conv46 = zext i8 %21 to i32
  %cmp47 = icmp slt i32 %conv46, 255
  br i1 %cmp47, label %land.lhs.true49, label %if.end79

land.lhs.true49:                                  ; preds = %land.lhs.true44
  %22 = load ptr, ptr %data.addr, align 8
  %arrayidx50 = getelementptr inbounds i8, ptr %22, i64 4
  %23 = load i8, ptr %arrayidx50, align 1
  %conv51 = zext i8 %23 to i32
  %cmp52 = icmp slt i32 %conv51, 255
  br i1 %cmp52, label %land.lhs.true54, label %if.end79

land.lhs.true54:                                  ; preds = %land.lhs.true49
  %24 = load ptr, ptr %data.addr, align 8
  %arrayidx55 = getelementptr inbounds i8, ptr %24, i64 6
  %25 = load i8, ptr %arrayidx55, align 1
  %conv56 = zext i8 %25 to i32
  %cmp57 = icmp slt i32 %conv56, 128
  br i1 %cmp57, label %land.lhs.true59, label %if.end79

land.lhs.true59:                                  ; preds = %land.lhs.true54
  %26 = load ptr, ptr %data.addr, align 8
  %arrayidx60 = getelementptr inbounds i8, ptr %26, i64 7
  %27 = load i8, ptr %arrayidx60, align 1
  %conv61 = zext i8 %27 to i32
  %cmp62 = icmp slt i32 %conv61, 128
  br i1 %cmp62, label %land.lhs.true64, label %if.end79

land.lhs.true64:                                  ; preds = %land.lhs.true59
  %28 = load ptr, ptr %data.addr, align 8
  %arrayidx65 = getelementptr inbounds i8, ptr %28, i64 8
  %29 = load i8, ptr %arrayidx65, align 1
  %conv66 = zext i8 %29 to i32
  %cmp67 = icmp slt i32 %conv66, 128
  br i1 %cmp67, label %land.lhs.true69, label %if.end79

land.lhs.true69:                                  ; preds = %land.lhs.true64
  %30 = load ptr, ptr %data.addr, align 8
  %arrayidx70 = getelementptr inbounds i8, ptr %30, i64 9
  %31 = load i8, ptr %arrayidx70, align 1
  %conv71 = zext i8 %31 to i32
  %cmp72 = icmp slt i32 %conv71, 128
  br i1 %cmp72, label %if.then74, label %if.end79

if.then74:                                        ; preds = %land.lhs.true69
  %32 = load ptr, ptr %data.addr, align 8
  %arrayidx75 = getelementptr inbounds i8, ptr %32, i64 0
  %33 = load i8, ptr %arrayidx75, align 1
  %conv76 = zext i8 %33 to i32
  %cmp77 = icmp eq i32 %conv76, 73
  %34 = zext i1 %cmp77 to i64
  %cond = select i1 %cmp77, i32 2, i32 3
  store i32 %cond, ptr %retval, align 4
  br label %return

if.end79:                                         ; preds = %land.lhs.true69, %land.lhs.true64, %land.lhs.true59, %land.lhs.true54, %land.lhs.true49, %land.lhs.true44, %land.lhs.true39, %land.lhs.true34, %lor.lhs.false, %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end79, %if.then74, %if.then
  %35 = load i32, ptr %retval, align 4
  ret i32 %35
}

; Function Attrs: nounwind ssp uwtable
define internal void @parse_header(ptr noundef %ptr, ptr noundef %version, ptr noundef %flags, ptr noundef %size) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  %version.addr = alloca ptr, align 8
  %flags.addr = alloca ptr, align 8
  %size.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  store ptr %version, ptr %version.addr, align 8
  store ptr %flags, ptr %flags.addr, align 8
  store ptr %size, ptr %size.addr, align 8
  %0 = load ptr, ptr %ptr.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 3
  store ptr %add.ptr, ptr %0, align 8
  %2 = load ptr, ptr %ptr.addr, align 8
  %call = call i64 @id3_parse_uint(ptr noundef %2, i32 noundef 2)
  %conv = trunc i64 %call to i32
  %3 = load ptr, ptr %version.addr, align 8
  store i32 %conv, ptr %3, align 4
  %4 = load ptr, ptr %ptr.addr, align 8
  %call1 = call i64 @id3_parse_uint(ptr noundef %4, i32 noundef 1)
  %conv2 = trunc i64 %call1 to i32
  %5 = load ptr, ptr %flags.addr, align 8
  store i32 %conv2, ptr %5, align 4
  %6 = load ptr, ptr %ptr.addr, align 8
  %call3 = call i64 @id3_parse_syncsafe(ptr noundef %6, i32 noundef 4)
  %7 = load ptr, ptr %size.addr, align 8
  store i64 %call3, ptr %7, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define ptr @id3_tag_parse(ptr noundef %data, i64 noundef %length) #0 {
entry:
  %retval = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %ptr = alloca ptr, align 8
  %version = alloca i32, align 4
  %flags = alloca i32, align 4
  %size = alloca i64, align 8
  store ptr %data, ptr %data.addr, align 8
  store i64 %length, ptr %length.addr, align 8
  %0 = load ptr, ptr %data.addr, align 8
  %1 = load i64, ptr %length.addr, align 8
  %call = call i32 @tagtype(ptr noundef %0, i64 noundef %1)
  switch i32 %call, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 0, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  %2 = load i64, ptr %length.addr, align 8
  %cmp = icmp ult i64 %2, 128
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %3 = load ptr, ptr %data.addr, align 8
  %call1 = call ptr @v1_parse(ptr noundef %3)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ null, %cond.true ], [ %call1, %cond.false ]
  store ptr %cond, ptr %retval, align 8
  br label %return

sw.bb2:                                           ; preds = %entry
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry, %entry
  store ptr null, ptr %retval, align 8
  br label %return

sw.epilog:                                        ; preds = %entry, %sw.bb2
  %4 = load ptr, ptr %data.addr, align 8
  store ptr %4, ptr %ptr, align 8
  call void @parse_header(ptr noundef %ptr, ptr noundef %version, ptr noundef %flags, ptr noundef %size)
  %5 = load i32, ptr %version, align 4
  %shr = lshr i32 %5, 8
  %and = and i32 %shr, 255
  switch i32 %and, label %sw.epilog14 [
    i32 4, label %sw.bb4
    i32 2, label %sw.bb6
    i32 3, label %sw.bb6
  ]

sw.bb4:                                           ; preds = %sw.epilog
  %6 = load i32, ptr %flags, align 4
  %and5 = and i32 %6, 16
  %tobool = icmp ne i32 %and5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb4
  %7 = load i64, ptr %size, align 8
  %add = add i64 %7, 10
  store i64 %add, ptr %size, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb4
  br label %sw.bb6

sw.bb6:                                           ; preds = %sw.epilog, %sw.epilog, %if.end
  %8 = load i64, ptr %length.addr, align 8
  %9 = load i64, ptr %size, align 8
  %add7 = add i64 10, %9
  %cmp8 = icmp ult i64 %8, %add7
  br i1 %cmp8, label %cond.true9, label %cond.false10

cond.true9:                                       ; preds = %sw.bb6
  br label %cond.end12

cond.false10:                                     ; preds = %sw.bb6
  %10 = load ptr, ptr %data.addr, align 8
  %call11 = call ptr @v2_parse(ptr noundef %10)
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false10, %cond.true9
  %cond13 = phi ptr [ null, %cond.true9 ], [ %call11, %cond.false10 ]
  store ptr %cond13, ptr %retval, align 8
  br label %return

sw.epilog14:                                      ; preds = %sw.epilog
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %sw.epilog14, %cond.end12, %sw.bb3, %cond.end
  %11 = load ptr, ptr %retval, align 8
  ret ptr %11
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @v1_parse(ptr noundef %data) #0 {
entry:
  %retval = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %tag = alloca ptr, align 8
  %title = alloca [31 x i8], align 1
  %artist = alloca [31 x i8], align 1
  %album = alloca [31 x i8], align 1
  %year = alloca [5 x i8], align 1
  %comment = alloca [31 x i8], align 1
  %genre = alloca i32, align 4
  %track = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8
  %call = call ptr @id3_tag_new()
  store ptr %call, ptr %tag, align 8
  %0 = load ptr, ptr %tag, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end67

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %tag, align 8
  %version = getelementptr inbounds %struct.id3_tag, ptr %1, i32 0, i32 1
  store i32 256, ptr %version, align 4
  %2 = load ptr, ptr %tag, align 8
  %options = getelementptr inbounds %struct.id3_tag, ptr %2, i32 0, i32 5
  %3 = load i32, ptr %options, align 4
  %or = or i32 %3, 256
  store i32 %or, ptr %options, align 4
  %4 = load ptr, ptr %tag, align 8
  %options1 = getelementptr inbounds %struct.id3_tag, ptr %4, i32 0, i32 5
  %5 = load i32, ptr %options1, align 4
  %and = and i32 %5, -3
  store i32 %and, ptr %options1, align 4
  %6 = load ptr, ptr %tag, align 8
  %restrictions = getelementptr inbounds %struct.id3_tag, ptr %6, i32 0, i32 4
  store i32 56, ptr %restrictions, align 8
  %arrayidx = getelementptr inbounds [31 x i8], ptr %comment, i64 0, i64 30
  store i8 0, ptr %arrayidx, align 1
  %arrayidx2 = getelementptr inbounds [5 x i8], ptr %year, i64 0, i64 4
  store i8 0, ptr %arrayidx2, align 1
  %arrayidx3 = getelementptr inbounds [31 x i8], ptr %album, i64 0, i64 30
  store i8 0, ptr %arrayidx3, align 1
  %arrayidx4 = getelementptr inbounds [31 x i8], ptr %artist, i64 0, i64 30
  store i8 0, ptr %arrayidx4, align 1
  %arrayidx5 = getelementptr inbounds [31 x i8], ptr %title, i64 0, i64 30
  store i8 0, ptr %arrayidx5, align 1
  %arraydecay = getelementptr inbounds [31 x i8], ptr %title, i64 0, i64 0
  %7 = load ptr, ptr %data.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %7, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arraydecay, ptr align 1 %arrayidx6, i64 30, i1 false)
  %arraydecay7 = getelementptr inbounds [31 x i8], ptr %artist, i64 0, i64 0
  %8 = load ptr, ptr %data.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %8, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arraydecay7, ptr align 1 %arrayidx8, i64 30, i1 false)
  %arraydecay9 = getelementptr inbounds [31 x i8], ptr %album, i64 0, i64 0
  %9 = load ptr, ptr %data.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %9, i64 63
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arraydecay9, ptr align 1 %arrayidx10, i64 30, i1 false)
  %arraydecay11 = getelementptr inbounds [5 x i8], ptr %year, i64 0, i64 0
  %10 = load ptr, ptr %data.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %10, i64 93
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arraydecay11, ptr align 1 %arrayidx12, i64 4, i1 false)
  %arraydecay13 = getelementptr inbounds [31 x i8], ptr %comment, i64 0, i64 0
  %11 = load ptr, ptr %data.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %11, i64 97
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arraydecay13, ptr align 1 %arrayidx14, i64 30, i1 false)
  %12 = load ptr, ptr %data.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, ptr %12, i64 127
  %13 = load i8, ptr %arrayidx15, align 1
  %conv = zext i8 %13 to i32
  store i32 %conv, ptr %genre, align 4
  store i32 0, ptr %track, align 4
  %arrayidx16 = getelementptr inbounds [31 x i8], ptr %comment, i64 0, i64 28
  %14 = load i8, ptr %arrayidx16, align 1
  %conv17 = sext i8 %14 to i32
  %cmp = icmp eq i32 %conv17, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %arrayidx19 = getelementptr inbounds [31 x i8], ptr %comment, i64 0, i64 29
  %15 = load i8, ptr %arrayidx19, align 1
  %conv20 = sext i8 %15 to i32
  %cmp21 = icmp ne i32 %conv20, 0
  br i1 %cmp21, label %if.then23, label %if.end

if.then23:                                        ; preds = %land.lhs.true
  %arrayidx24 = getelementptr inbounds [31 x i8], ptr %comment, i64 0, i64 29
  %16 = load i8, ptr %arrayidx24, align 1
  %conv25 = sext i8 %16 to i32
  store i32 %conv25, ptr %track, align 4
  %17 = load ptr, ptr %tag, align 8
  %version26 = getelementptr inbounds %struct.id3_tag, ptr %17, i32 0, i32 1
  store i32 257, ptr %version26, align 4
  br label %if.end

if.end:                                           ; preds = %if.then23, %land.lhs.true, %if.then
  %18 = load ptr, ptr %tag, align 8
  %arraydecay27 = getelementptr inbounds [31 x i8], ptr %title, i64 0, i64 0
  %call28 = call i32 @v1_attachstr(ptr noundef %18, ptr noundef @.str.2, ptr noundef %arraydecay27, i64 noundef 0)
  %cmp29 = icmp eq i32 %call28, -1
  br i1 %cmp29, label %if.then65, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %19 = load ptr, ptr %tag, align 8
  %arraydecay31 = getelementptr inbounds [31 x i8], ptr %artist, i64 0, i64 0
  %call32 = call i32 @v1_attachstr(ptr noundef %19, ptr noundef @.str.3, ptr noundef %arraydecay31, i64 noundef 0)
  %cmp33 = icmp eq i32 %call32, -1
  br i1 %cmp33, label %if.then65, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %lor.lhs.false
  %20 = load ptr, ptr %tag, align 8
  %arraydecay36 = getelementptr inbounds [31 x i8], ptr %album, i64 0, i64 0
  %call37 = call i32 @v1_attachstr(ptr noundef %20, ptr noundef @.str.4, ptr noundef %arraydecay36, i64 noundef 0)
  %cmp38 = icmp eq i32 %call37, -1
  br i1 %cmp38, label %if.then65, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %lor.lhs.false35
  %21 = load ptr, ptr %tag, align 8
  %arraydecay41 = getelementptr inbounds [5 x i8], ptr %year, i64 0, i64 0
  %call42 = call i32 @v1_attachstr(ptr noundef %21, ptr noundef @.str.5, ptr noundef %arraydecay41, i64 noundef 0)
  %cmp43 = icmp eq i32 %call42, -1
  br i1 %cmp43, label %if.then65, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %lor.lhs.false40
  %22 = load i32, ptr %track, align 4
  %tobool46 = icmp ne i32 %22, 0
  br i1 %tobool46, label %land.lhs.true47, label %lor.lhs.false52

land.lhs.true47:                                  ; preds = %lor.lhs.false45
  %23 = load ptr, ptr %tag, align 8
  %24 = load i32, ptr %track, align 4
  %conv48 = zext i32 %24 to i64
  %call49 = call i32 @v1_attachstr(ptr noundef %23, ptr noundef @.str.6, ptr noundef null, i64 noundef %conv48)
  %cmp50 = icmp eq i32 %call49, -1
  br i1 %cmp50, label %if.then65, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %land.lhs.true47, %lor.lhs.false45
  %25 = load i32, ptr %genre, align 4
  %cmp53 = icmp ult i32 %25, 255
  br i1 %cmp53, label %land.lhs.true55, label %lor.lhs.false60

land.lhs.true55:                                  ; preds = %lor.lhs.false52
  %26 = load ptr, ptr %tag, align 8
  %27 = load i32, ptr %genre, align 4
  %conv56 = zext i32 %27 to i64
  %call57 = call i32 @v1_attachstr(ptr noundef %26, ptr noundef @.str.7, ptr noundef null, i64 noundef %conv56)
  %cmp58 = icmp eq i32 %call57, -1
  br i1 %cmp58, label %if.then65, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %land.lhs.true55, %lor.lhs.false52
  %28 = load ptr, ptr %tag, align 8
  %arraydecay61 = getelementptr inbounds [31 x i8], ptr %comment, i64 0, i64 0
  %call62 = call i32 @v1_attachstr(ptr noundef %28, ptr noundef @.str.8, ptr noundef %arraydecay61, i64 noundef 0)
  %cmp63 = icmp eq i32 %call62, -1
  br i1 %cmp63, label %if.then65, label %if.end66

if.then65:                                        ; preds = %lor.lhs.false60, %land.lhs.true55, %land.lhs.true47, %lor.lhs.false40, %lor.lhs.false35, %lor.lhs.false, %if.end
  %29 = load ptr, ptr %tag, align 8
  call void @id3_tag_delete(ptr noundef %29)
  store ptr null, ptr %retval, align 8
  br label %return

if.end66:                                         ; preds = %lor.lhs.false60
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %entry
  %30 = load ptr, ptr %tag, align 8
  store ptr %30, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end67, %if.then65
  %31 = load ptr, ptr %retval, align 8
  ret ptr %31
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @v2_parse(ptr noundef %ptr) #0 {
entry:
  %retval = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  %tag = alloca ptr, align 8
  %mem = alloca ptr, align 8
  %end = alloca ptr, align 8
  %size = alloca i64, align 8
  %ehptr = alloca ptr, align 8
  %ehend = alloca ptr, align 8
  %ehsize = alloca i64, align 8
  %ehflags = alloca i32, align 4
  %padsize = alloca i64, align 8
  %crc = alloca i64, align 8
  %ehptr68 = alloca ptr, align 8
  %ehend69 = alloca ptr, align 8
  %ehsize70 = alloca i64, align 8
  %bytes = alloca i32, align 4
  %flagsptr = alloca ptr, align 8
  %dataptr = alloca ptr, align 8
  %datalen = alloca i32, align 4
  %ehflags103 = alloca i32, align 4
  %crc148 = alloca i64, align 8
  %frame = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  store ptr null, ptr %mem, align 8
  %call = call ptr @id3_tag_new()
  store ptr %call, ptr %tag, align 8
  %0 = load ptr, ptr %tag, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end218

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %tag, align 8
  %version = getelementptr inbounds %struct.id3_tag, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %tag, align 8
  %flags = getelementptr inbounds %struct.id3_tag, ptr %2, i32 0, i32 2
  call void @parse_header(ptr noundef %ptr.addr, ptr noundef %version, ptr noundef %flags, ptr noundef %size)
  %3 = load i64, ptr %size, align 8
  %add = add i64 10, %3
  %4 = load ptr, ptr %tag, align 8
  %paddedsize = getelementptr inbounds %struct.id3_tag, ptr %4, i32 0, i32 8
  store i64 %add, ptr %paddedsize, align 8
  %5 = load ptr, ptr %tag, align 8
  %flags1 = getelementptr inbounds %struct.id3_tag, ptr %5, i32 0, i32 2
  %6 = load i32, ptr %flags1, align 8
  %and = and i32 %6, 128
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %if.then
  %7 = load ptr, ptr %tag, align 8
  %version3 = getelementptr inbounds %struct.id3_tag, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %version3, align 4
  %shr = lshr i32 %8, 8
  %and4 = and i32 %shr, 255
  %cmp = icmp ult i32 %and4, 4
  br i1 %cmp, label %if.then5, label %if.end11

if.then5:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %size, align 8
  %call6 = call ptr @malloc(i64 noundef %9) #8
  store ptr %call6, ptr %mem, align 8
  %10 = load ptr, ptr %mem, align 8
  %cmp7 = icmp eq ptr %10, null
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then5
  br label %fail

if.end:                                           ; preds = %if.then5
  %11 = load ptr, ptr %mem, align 8
  %12 = load ptr, ptr %ptr.addr, align 8
  %13 = load i64, ptr %size, align 8
  %14 = load ptr, ptr %mem, align 8
  %15 = call i64 @llvm.objectsize.i64.p0(ptr %14, i1 false, i1 true, i1 false)
  %call9 = call ptr @__memcpy_chk(ptr noundef %11, ptr noundef %12, i64 noundef %13, i64 noundef %15) #11
  %16 = load ptr, ptr %mem, align 8
  %17 = load i64, ptr %size, align 8
  %call10 = call i64 @id3_util_deunsynchronise(ptr noundef %16, i64 noundef %17)
  store i64 %call10, ptr %size, align 8
  %18 = load ptr, ptr %mem, align 8
  store ptr %18, ptr %ptr.addr, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.end, %land.lhs.true, %if.then
  %19 = load ptr, ptr %ptr.addr, align 8
  %20 = load i64, ptr %size, align 8
  %add.ptr = getelementptr inbounds i8, ptr %19, i64 %20
  store ptr %add.ptr, ptr %end, align 8
  %21 = load ptr, ptr %tag, align 8
  %flags12 = getelementptr inbounds %struct.id3_tag, ptr %21, i32 0, i32 2
  %22 = load i32, ptr %flags12, align 8
  %and13 = and i32 %22, 64
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %if.then15, label %if.end183

if.then15:                                        ; preds = %if.end11
  %23 = load ptr, ptr %tag, align 8
  %version16 = getelementptr inbounds %struct.id3_tag, ptr %23, i32 0, i32 1
  %24 = load i32, ptr %version16, align 4
  %shr17 = lshr i32 %24, 8
  %and18 = and i32 %shr17, 255
  switch i32 %and18, label %sw.epilog [
    i32 2, label %sw.bb
    i32 3, label %sw.bb19
    i32 4, label %sw.bb67
  ]

sw.bb:                                            ; preds = %if.then15
  br label %fail

sw.bb19:                                          ; preds = %if.then15
  %25 = load ptr, ptr %end, align 8
  %26 = load ptr, ptr %ptr.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %25 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %26 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp20 = icmp slt i64 %sub.ptr.sub, 4
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %sw.bb19
  br label %fail

if.end22:                                         ; preds = %sw.bb19
  %call23 = call i64 @id3_parse_uint(ptr noundef %ptr.addr, i32 noundef 4)
  store i64 %call23, ptr %ehsize, align 8
  %27 = load i64, ptr %ehsize, align 8
  %28 = load ptr, ptr %end, align 8
  %29 = load ptr, ptr %ptr.addr, align 8
  %sub.ptr.lhs.cast24 = ptrtoint ptr %28 to i64
  %sub.ptr.rhs.cast25 = ptrtoint ptr %29 to i64
  %sub.ptr.sub26 = sub i64 %sub.ptr.lhs.cast24, %sub.ptr.rhs.cast25
  %cmp27 = icmp ugt i64 %27, %sub.ptr.sub26
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end22
  br label %fail

if.end29:                                         ; preds = %if.end22
  %30 = load ptr, ptr %ptr.addr, align 8
  store ptr %30, ptr %ehptr, align 8
  %31 = load ptr, ptr %ptr.addr, align 8
  %32 = load i64, ptr %ehsize, align 8
  %add.ptr30 = getelementptr inbounds i8, ptr %31, i64 %32
  store ptr %add.ptr30, ptr %ehend, align 8
  %33 = load ptr, ptr %ehend, align 8
  store ptr %33, ptr %ptr.addr, align 8
  %34 = load ptr, ptr %ehend, align 8
  %35 = load ptr, ptr %ehptr, align 8
  %sub.ptr.lhs.cast31 = ptrtoint ptr %34 to i64
  %sub.ptr.rhs.cast32 = ptrtoint ptr %35 to i64
  %sub.ptr.sub33 = sub i64 %sub.ptr.lhs.cast31, %sub.ptr.rhs.cast32
  %cmp34 = icmp sge i64 %sub.ptr.sub33, 6
  br i1 %cmp34, label %if.then35, label %if.end66

if.then35:                                        ; preds = %if.end29
  %call36 = call i64 @id3_parse_uint(ptr noundef %ehptr, i32 noundef 2)
  %conv = trunc i64 %call36 to i32
  store i32 %conv, ptr %ehflags, align 4
  %call37 = call i64 @id3_parse_uint(ptr noundef %ehptr, i32 noundef 4)
  store i64 %call37, ptr %padsize, align 8
  %36 = load i64, ptr %padsize, align 8
  %37 = load ptr, ptr %end, align 8
  %38 = load ptr, ptr %ptr.addr, align 8
  %sub.ptr.lhs.cast38 = ptrtoint ptr %37 to i64
  %sub.ptr.rhs.cast39 = ptrtoint ptr %38 to i64
  %sub.ptr.sub40 = sub i64 %sub.ptr.lhs.cast38, %sub.ptr.rhs.cast39
  %cmp41 = icmp ugt i64 %36, %sub.ptr.sub40
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.then35
  br label %fail

if.end44:                                         ; preds = %if.then35
  %39 = load i64, ptr %padsize, align 8
  %40 = load ptr, ptr %end, align 8
  %idx.neg = sub i64 0, %39
  %add.ptr45 = getelementptr inbounds i8, ptr %40, i64 %idx.neg
  store ptr %add.ptr45, ptr %end, align 8
  %41 = load i32, ptr %ehflags, align 4
  %and46 = and i32 %41, 32768
  %tobool47 = icmp ne i32 %and46, 0
  br i1 %tobool47, label %if.then48, label %if.end65

if.then48:                                        ; preds = %if.end44
  %42 = load ptr, ptr %ehend, align 8
  %43 = load ptr, ptr %ehptr, align 8
  %sub.ptr.lhs.cast49 = ptrtoint ptr %42 to i64
  %sub.ptr.rhs.cast50 = ptrtoint ptr %43 to i64
  %sub.ptr.sub51 = sub i64 %sub.ptr.lhs.cast49, %sub.ptr.rhs.cast50
  %cmp52 = icmp slt i64 %sub.ptr.sub51, 4
  br i1 %cmp52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.then48
  br label %fail

if.end55:                                         ; preds = %if.then48
  %call56 = call i64 @id3_parse_uint(ptr noundef %ehptr, i32 noundef 4)
  store i64 %call56, ptr %crc, align 8
  %44 = load i64, ptr %crc, align 8
  %45 = load ptr, ptr %ptr.addr, align 8
  %46 = load ptr, ptr %end, align 8
  %47 = load ptr, ptr %ptr.addr, align 8
  %sub.ptr.lhs.cast57 = ptrtoint ptr %46 to i64
  %sub.ptr.rhs.cast58 = ptrtoint ptr %47 to i64
  %sub.ptr.sub59 = sub i64 %sub.ptr.lhs.cast57, %sub.ptr.rhs.cast58
  %call60 = call i64 @id3_crc_calculate(ptr noundef %45, i64 noundef %sub.ptr.sub59)
  %cmp61 = icmp ne i64 %44, %call60
  br i1 %cmp61, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.end55
  br label %fail

if.end64:                                         ; preds = %if.end55
  %48 = load ptr, ptr %tag, align 8
  %extendedflags = getelementptr inbounds %struct.id3_tag, ptr %48, i32 0, i32 3
  %49 = load i32, ptr %extendedflags, align 4
  %or = or i32 %49, 32
  store i32 %or, ptr %extendedflags, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.end44
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.end29
  br label %sw.epilog

sw.bb67:                                          ; preds = %if.then15
  %50 = load ptr, ptr %end, align 8
  %51 = load ptr, ptr %ptr.addr, align 8
  %sub.ptr.lhs.cast71 = ptrtoint ptr %50 to i64
  %sub.ptr.rhs.cast72 = ptrtoint ptr %51 to i64
  %sub.ptr.sub73 = sub i64 %sub.ptr.lhs.cast71, %sub.ptr.rhs.cast72
  %cmp74 = icmp slt i64 %sub.ptr.sub73, 4
  br i1 %cmp74, label %if.then76, label %if.end77

if.then76:                                        ; preds = %sw.bb67
  br label %fail

if.end77:                                         ; preds = %sw.bb67
  %52 = load ptr, ptr %ptr.addr, align 8
  store ptr %52, ptr %ehptr68, align 8
  %call78 = call i64 @id3_parse_syncsafe(ptr noundef %ptr.addr, i32 noundef 4)
  store i64 %call78, ptr %ehsize70, align 8
  %53 = load i64, ptr %ehsize70, align 8
  %cmp79 = icmp ult i64 %53, 6
  br i1 %cmp79, label %if.then86, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end77
  %54 = load i64, ptr %ehsize70, align 8
  %55 = load ptr, ptr %end, align 8
  %56 = load ptr, ptr %ehptr68, align 8
  %sub.ptr.lhs.cast81 = ptrtoint ptr %55 to i64
  %sub.ptr.rhs.cast82 = ptrtoint ptr %56 to i64
  %sub.ptr.sub83 = sub i64 %sub.ptr.lhs.cast81, %sub.ptr.rhs.cast82
  %cmp84 = icmp ugt i64 %54, %sub.ptr.sub83
  br i1 %cmp84, label %if.then86, label %if.end87

if.then86:                                        ; preds = %lor.lhs.false, %if.end77
  br label %fail

if.end87:                                         ; preds = %lor.lhs.false
  %57 = load ptr, ptr %ehptr68, align 8
  %58 = load i64, ptr %ehsize70, align 8
  %add.ptr88 = getelementptr inbounds i8, ptr %57, i64 %58
  store ptr %add.ptr88, ptr %ehend69, align 8
  %call89 = call i64 @id3_parse_uint(ptr noundef %ptr.addr, i32 noundef 1)
  %conv90 = trunc i64 %call89 to i32
  store i32 %conv90, ptr %bytes, align 4
  %59 = load i32, ptr %bytes, align 4
  %cmp91 = icmp ult i32 %59, 1
  br i1 %cmp91, label %if.then100, label %lor.lhs.false93

lor.lhs.false93:                                  ; preds = %if.end87
  %60 = load i32, ptr %bytes, align 4
  %conv94 = zext i32 %60 to i64
  %61 = load ptr, ptr %ehend69, align 8
  %62 = load ptr, ptr %ptr.addr, align 8
  %sub.ptr.lhs.cast95 = ptrtoint ptr %61 to i64
  %sub.ptr.rhs.cast96 = ptrtoint ptr %62 to i64
  %sub.ptr.sub97 = sub i64 %sub.ptr.lhs.cast95, %sub.ptr.rhs.cast96
  %cmp98 = icmp sgt i64 %conv94, %sub.ptr.sub97
  br i1 %cmp98, label %if.then100, label %if.end101

if.then100:                                       ; preds = %lor.lhs.false93, %if.end87
  br label %fail

if.end101:                                        ; preds = %lor.lhs.false93
  %63 = load ptr, ptr %ptr.addr, align 8
  %64 = load i32, ptr %bytes, align 4
  %idx.ext = zext i32 %64 to i64
  %add.ptr102 = getelementptr inbounds i8, ptr %63, i64 %idx.ext
  store ptr %add.ptr102, ptr %ehptr68, align 8
  %65 = load ptr, ptr %ptr.addr, align 8
  store ptr %65, ptr %flagsptr, align 8
  %66 = load ptr, ptr %ehptr68, align 8
  store ptr %66, ptr %dataptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %if.end101
  %67 = load i32, ptr %bytes, align 4
  %dec = add i32 %67, -1
  store i32 %dec, ptr %bytes, align 4
  %tobool104 = icmp ne i32 %67, 0
  br i1 %tobool104, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call105 = call i64 @id3_parse_uint(ptr noundef %flagsptr, i32 noundef 1)
  %conv106 = trunc i64 %call105 to i32
  store i32 %conv106, ptr %ehflags103, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %68 = load i32, ptr %ehflags103, align 4
  %tobool107 = icmp ne i32 %68, 0
  br i1 %tobool107, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %69 = load i32, ptr %ehflags103, align 4
  %and108 = and i32 %69, 128
  %tobool109 = icmp ne i32 %and108, 0
  br i1 %tobool109, label %if.then110, label %if.end130

if.then110:                                       ; preds = %for.body
  %70 = load ptr, ptr %dataptr, align 8
  %71 = load ptr, ptr %ehend69, align 8
  %cmp111 = icmp eq ptr %70, %71
  br i1 %cmp111, label %if.then113, label %if.end114

if.then113:                                       ; preds = %if.then110
  br label %fail

if.end114:                                        ; preds = %if.then110
  %call115 = call i64 @id3_parse_uint(ptr noundef %dataptr, i32 noundef 1)
  %conv116 = trunc i64 %call115 to i32
  store i32 %conv116, ptr %datalen, align 4
  %72 = load i32, ptr %datalen, align 4
  %cmp117 = icmp ugt i32 %72, 127
  br i1 %cmp117, label %if.then126, label %lor.lhs.false119

lor.lhs.false119:                                 ; preds = %if.end114
  %73 = load i32, ptr %datalen, align 4
  %conv120 = zext i32 %73 to i64
  %74 = load ptr, ptr %ehend69, align 8
  %75 = load ptr, ptr %dataptr, align 8
  %sub.ptr.lhs.cast121 = ptrtoint ptr %74 to i64
  %sub.ptr.rhs.cast122 = ptrtoint ptr %75 to i64
  %sub.ptr.sub123 = sub i64 %sub.ptr.lhs.cast121, %sub.ptr.rhs.cast122
  %cmp124 = icmp sgt i64 %conv120, %sub.ptr.sub123
  br i1 %cmp124, label %if.then126, label %if.end127

if.then126:                                       ; preds = %lor.lhs.false119, %if.end114
  br label %fail

if.end127:                                        ; preds = %lor.lhs.false119
  %76 = load i32, ptr %datalen, align 4
  %77 = load ptr, ptr %dataptr, align 8
  %idx.ext128 = zext i32 %76 to i64
  %add.ptr129 = getelementptr inbounds i8, ptr %77, i64 %idx.ext128
  store ptr %add.ptr129, ptr %dataptr, align 8
  br label %if.end130

if.end130:                                        ; preds = %if.end127, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end130
  %78 = load i32, ptr %ehflags103, align 4
  %shl = shl i32 %78, 1
  %and131 = and i32 %shl, 255
  store i32 %and131, ptr %ehflags103, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  %call132 = call i64 @id3_parse_uint(ptr noundef %ptr.addr, i32 noundef 1)
  %conv133 = trunc i64 %call132 to i32
  %79 = load ptr, ptr %tag, align 8
  %extendedflags134 = getelementptr inbounds %struct.id3_tag, ptr %79, i32 0, i32 3
  store i32 %conv133, ptr %extendedflags134, align 4
  %80 = load ptr, ptr %ehend69, align 8
  store ptr %80, ptr %ptr.addr, align 8
  %81 = load ptr, ptr %tag, align 8
  %extendedflags135 = getelementptr inbounds %struct.id3_tag, ptr %81, i32 0, i32 3
  %82 = load i32, ptr %extendedflags135, align 4
  %and136 = and i32 %82, 64
  %tobool137 = icmp ne i32 %and136, 0
  br i1 %tobool137, label %if.then138, label %if.end143

if.then138:                                       ; preds = %while.end
  %call139 = call i64 @id3_parse_uint(ptr noundef %ehptr68, i32 noundef 1)
  %conv140 = trunc i64 %call139 to i32
  store i32 %conv140, ptr %bytes, align 4
  %83 = load i32, ptr %bytes, align 4
  %84 = load ptr, ptr %ehptr68, align 8
  %idx.ext141 = zext i32 %83 to i64
  %add.ptr142 = getelementptr inbounds i8, ptr %84, i64 %idx.ext141
  store ptr %add.ptr142, ptr %ehptr68, align 8
  br label %if.end143

if.end143:                                        ; preds = %if.then138, %while.end
  %85 = load ptr, ptr %tag, align 8
  %extendedflags144 = getelementptr inbounds %struct.id3_tag, ptr %85, i32 0, i32 3
  %86 = load i32, ptr %extendedflags144, align 4
  %and145 = and i32 %86, 32
  %tobool146 = icmp ne i32 %and145, 0
  br i1 %tobool146, label %if.then147, label %if.end166

if.then147:                                       ; preds = %if.end143
  %call149 = call i64 @id3_parse_uint(ptr noundef %ehptr68, i32 noundef 1)
  %conv150 = trunc i64 %call149 to i32
  store i32 %conv150, ptr %bytes, align 4
  %87 = load i32, ptr %bytes, align 4
  %cmp151 = icmp ult i32 %87, 5
  br i1 %cmp151, label %if.then153, label %if.end154

if.then153:                                       ; preds = %if.then147
  br label %fail

if.end154:                                        ; preds = %if.then147
  %call155 = call i64 @id3_parse_syncsafe(ptr noundef %ehptr68, i32 noundef 5)
  store i64 %call155, ptr %crc148, align 8
  %88 = load i32, ptr %bytes, align 4
  %sub = sub i32 %88, 5
  %89 = load ptr, ptr %ehptr68, align 8
  %idx.ext156 = zext i32 %sub to i64
  %add.ptr157 = getelementptr inbounds i8, ptr %89, i64 %idx.ext156
  store ptr %add.ptr157, ptr %ehptr68, align 8
  %90 = load i64, ptr %crc148, align 8
  %91 = load ptr, ptr %ptr.addr, align 8
  %92 = load ptr, ptr %end, align 8
  %93 = load ptr, ptr %ptr.addr, align 8
  %sub.ptr.lhs.cast158 = ptrtoint ptr %92 to i64
  %sub.ptr.rhs.cast159 = ptrtoint ptr %93 to i64
  %sub.ptr.sub160 = sub i64 %sub.ptr.lhs.cast158, %sub.ptr.rhs.cast159
  %call161 = call i64 @id3_crc_calculate(ptr noundef %91, i64 noundef %sub.ptr.sub160)
  %cmp162 = icmp ne i64 %90, %call161
  br i1 %cmp162, label %if.then164, label %if.end165

if.then164:                                       ; preds = %if.end154
  br label %fail

if.end165:                                        ; preds = %if.end154
  br label %if.end166

if.end166:                                        ; preds = %if.end165, %if.end143
  %94 = load ptr, ptr %tag, align 8
  %extendedflags167 = getelementptr inbounds %struct.id3_tag, ptr %94, i32 0, i32 3
  %95 = load i32, ptr %extendedflags167, align 4
  %and168 = and i32 %95, 16
  %tobool169 = icmp ne i32 %and168, 0
  br i1 %tobool169, label %if.then170, label %if.end182

if.then170:                                       ; preds = %if.end166
  %call171 = call i64 @id3_parse_uint(ptr noundef %ehptr68, i32 noundef 1)
  %conv172 = trunc i64 %call171 to i32
  store i32 %conv172, ptr %bytes, align 4
  %96 = load i32, ptr %bytes, align 4
  %cmp173 = icmp ult i32 %96, 1
  br i1 %cmp173, label %if.then175, label %if.end176

if.then175:                                       ; preds = %if.then170
  br label %fail

if.end176:                                        ; preds = %if.then170
  %call177 = call i64 @id3_parse_uint(ptr noundef %ehptr68, i32 noundef 1)
  %conv178 = trunc i64 %call177 to i32
  %97 = load ptr, ptr %tag, align 8
  %restrictions = getelementptr inbounds %struct.id3_tag, ptr %97, i32 0, i32 4
  store i32 %conv178, ptr %restrictions, align 8
  %98 = load i32, ptr %bytes, align 4
  %sub179 = sub i32 %98, 1
  %99 = load ptr, ptr %ehptr68, align 8
  %idx.ext180 = zext i32 %sub179 to i64
  %add.ptr181 = getelementptr inbounds i8, ptr %99, i64 %idx.ext180
  store ptr %add.ptr181, ptr %ehptr68, align 8
  br label %if.end182

if.end182:                                        ; preds = %if.end176, %if.end166
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then15, %if.end182, %if.end66
  br label %if.end183

if.end183:                                        ; preds = %sw.epilog, %if.end11
  br label %while.cond184

while.cond184:                                    ; preds = %if.end205, %if.end183
  %100 = load ptr, ptr %ptr.addr, align 8
  %101 = load ptr, ptr %end, align 8
  %cmp185 = icmp ult ptr %100, %101
  br i1 %cmp185, label %while.body187, label %while.end206

while.body187:                                    ; preds = %while.cond184
  %102 = load ptr, ptr %ptr.addr, align 8
  %103 = load i8, ptr %102, align 1
  %conv188 = zext i8 %103 to i32
  %cmp189 = icmp eq i32 %conv188, 0
  br i1 %cmp189, label %if.then191, label %if.end192

if.then191:                                       ; preds = %while.body187
  br label %while.end206

if.end192:                                        ; preds = %while.body187
  %104 = load ptr, ptr %end, align 8
  %105 = load ptr, ptr %ptr.addr, align 8
  %sub.ptr.lhs.cast193 = ptrtoint ptr %104 to i64
  %sub.ptr.rhs.cast194 = ptrtoint ptr %105 to i64
  %sub.ptr.sub195 = sub i64 %sub.ptr.lhs.cast193, %sub.ptr.rhs.cast194
  %106 = load ptr, ptr %tag, align 8
  %version196 = getelementptr inbounds %struct.id3_tag, ptr %106, i32 0, i32 1
  %107 = load i32, ptr %version196, align 4
  %call197 = call ptr @id3_frame_parse(ptr noundef %ptr.addr, i64 noundef %sub.ptr.sub195, i32 noundef %107)
  store ptr %call197, ptr %frame, align 8
  %108 = load ptr, ptr %frame, align 8
  %cmp198 = icmp eq ptr %108, null
  br i1 %cmp198, label %if.then204, label %lor.lhs.false200

lor.lhs.false200:                                 ; preds = %if.end192
  %109 = load ptr, ptr %tag, align 8
  %110 = load ptr, ptr %frame, align 8
  %call201 = call i32 @id3_tag_attachframe(ptr noundef %109, ptr noundef %110)
  %cmp202 = icmp eq i32 %call201, -1
  br i1 %cmp202, label %if.then204, label %if.end205

if.then204:                                       ; preds = %lor.lhs.false200, %if.end192
  br label %fail

if.end205:                                        ; preds = %lor.lhs.false200
  br label %while.cond184, !llvm.loop !13

while.end206:                                     ; preds = %if.then191, %while.cond184
  %111 = load ptr, ptr %tag, align 8
  %version207 = getelementptr inbounds %struct.id3_tag, ptr %111, i32 0, i32 1
  %112 = load i32, ptr %version207, align 4
  %shr208 = lshr i32 %112, 8
  %and209 = and i32 %shr208, 255
  %cmp210 = icmp ult i32 %and209, 4
  br i1 %cmp210, label %land.lhs.true212, label %if.end217

land.lhs.true212:                                 ; preds = %while.end206
  %113 = load ptr, ptr %tag, align 8
  %call213 = call i32 @id3_compat_fixup(ptr noundef %113)
  %cmp214 = icmp eq i32 %call213, -1
  br i1 %cmp214, label %if.then216, label %if.end217

if.then216:                                       ; preds = %land.lhs.true212
  br label %fail

if.end217:                                        ; preds = %land.lhs.true212, %while.end206
  br label %if.end218

if.end218:                                        ; preds = %if.end217, %entry
  %114 = load ptr, ptr %mem, align 8
  %tobool219 = icmp ne ptr %114, null
  br i1 %tobool219, label %if.then220, label %if.end221

if.then220:                                       ; preds = %if.end218
  %115 = load ptr, ptr %mem, align 8
  call void @free(ptr noundef %115)
  br label %if.end221

if.end221:                                        ; preds = %if.then220, %if.end218
  %116 = load ptr, ptr %tag, align 8
  store ptr %116, ptr %retval, align 8
  br label %return

fail:                                             ; preds = %if.then216, %if.then204, %if.then175, %if.then164, %if.then153, %if.then126, %if.then113, %if.then100, %if.then86, %if.then76, %if.then63, %if.then54, %if.then43, %if.then28, %if.then21, %sw.bb, %if.then8
  %117 = load ptr, ptr %mem, align 8
  %tobool222 = icmp ne ptr %117, null
  br i1 %tobool222, label %if.then223, label %if.end224

if.then223:                                       ; preds = %fail
  %118 = load ptr, ptr %mem, align 8
  call void @free(ptr noundef %118)
  br label %if.end224

if.end224:                                        ; preds = %if.then223, %fail
  %119 = load ptr, ptr %tag, align 8
  call void @id3_tag_delete(ptr noundef %119)
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end224, %if.end221
  %120 = load ptr, ptr %retval, align 8
  ret ptr %120
}

; Function Attrs: nounwind ssp uwtable
define i64 @id3_tag_render(ptr noundef %tag, ptr noundef %buffer) #0 {
entry:
  %retval = alloca i64, align 8
  %tag.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %size = alloca i64, align 8
  %ptr = alloca ptr, align 8
  %header_ptr = alloca ptr, align 8
  %tagsize_ptr = alloca ptr, align 8
  %crc_ptr = alloca ptr, align 8
  %frames_ptr = alloca ptr, align 8
  %flags = alloca i32, align 4
  %extendedflags = alloca i32, align 4
  %i = alloca i32, align 4
  %ehsize = alloca i64, align 8
  %ehsize_ptr = alloca ptr, align 8
  store ptr %tag, ptr %tag.addr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  store i64 0, ptr %size, align 8
  store ptr null, ptr %header_ptr, align 8
  store ptr null, ptr %tagsize_ptr, align 8
  store ptr null, ptr %crc_ptr, align 8
  store ptr null, ptr %frames_ptr, align 8
  %0 = load ptr, ptr %tag.addr, align 8
  %options = getelementptr inbounds %struct.id3_tag, ptr %0, i32 0, i32 5
  %1 = load i32, ptr %options, align 4
  %and = and i32 %1, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %tag.addr, align 8
  %3 = load ptr, ptr %buffer.addr, align 8
  %call = call i64 @v1_render(ptr noundef %2, ptr noundef %3)
  store i64 %call, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, ptr %i, align 4
  %5 = load ptr, ptr %tag.addr, align 8
  %nframes = getelementptr inbounds %struct.id3_tag, ptr %5, i32 0, i32 6
  %6 = load i32, ptr %nframes, align 8
  %cmp = icmp ult i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %tag.addr, align 8
  %frames = getelementptr inbounds %struct.id3_tag, ptr %7, i32 0, i32 7
  %8 = load ptr, ptr %frames, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom = zext i32 %9 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 %idxprom
  %10 = load ptr, ptr %arrayidx, align 8
  %call1 = call i64 @id3_frame_render(ptr noundef %10, ptr noundef null, i32 noundef 0)
  %cmp2 = icmp ugt i64 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %for.body
  br label %for.end

if.end4:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end4
  %11 = load i32, ptr %i, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %if.then3, %for.cond
  %12 = load i32, ptr %i, align 4
  %13 = load ptr, ptr %tag.addr, align 8
  %nframes5 = getelementptr inbounds %struct.id3_tag, ptr %13, i32 0, i32 6
  %14 = load i32, ptr %nframes5, align 8
  %cmp6 = icmp eq i32 %12, %14
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %for.end
  store i64 0, ptr %retval, align 8
  br label %return

if.end8:                                          ; preds = %for.end
  %15 = load ptr, ptr %buffer.addr, align 8
  %tobool9 = icmp ne ptr %15, null
  br i1 %tobool9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end8
  br label %cond.end

cond.false:                                       ; preds = %if.end8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %buffer.addr, %cond.true ], [ null, %cond.false ]
  store ptr %cond, ptr %ptr, align 8
  %16 = load ptr, ptr %tag.addr, align 8
  %flags10 = getelementptr inbounds %struct.id3_tag, ptr %16, i32 0, i32 2
  %17 = load i32, ptr %flags10, align 8
  %and11 = and i32 %17, 240
  store i32 %and11, ptr %flags, align 4
  %18 = load ptr, ptr %tag.addr, align 8
  %extendedflags12 = getelementptr inbounds %struct.id3_tag, ptr %18, i32 0, i32 3
  %19 = load i32, ptr %extendedflags12, align 4
  %and13 = and i32 %19, 112
  store i32 %and13, ptr %extendedflags, align 4
  %20 = load i32, ptr %extendedflags, align 4
  %and14 = and i32 %20, -33
  store i32 %and14, ptr %extendedflags, align 4
  %21 = load ptr, ptr %tag.addr, align 8
  %options15 = getelementptr inbounds %struct.id3_tag, ptr %21, i32 0, i32 5
  %22 = load i32, ptr %options15, align 4
  %and16 = and i32 %22, 4
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %cond.end
  %23 = load i32, ptr %extendedflags, align 4
  %or = or i32 %23, 32
  store i32 %or, ptr %extendedflags, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %cond.end
  %24 = load i32, ptr %extendedflags, align 4
  %and20 = and i32 %24, -17
  store i32 %and20, ptr %extendedflags, align 4
  %25 = load ptr, ptr %tag.addr, align 8
  %restrictions = getelementptr inbounds %struct.id3_tag, ptr %25, i32 0, i32 4
  %26 = load i32, ptr %restrictions, align 8
  %tobool21 = icmp ne i32 %26, 0
  br i1 %tobool21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end19
  %27 = load i32, ptr %extendedflags, align 4
  %or23 = or i32 %27, 16
  store i32 %or23, ptr %extendedflags, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end19
  %28 = load i32, ptr %flags, align 4
  %and25 = and i32 %28, -129
  store i32 %and25, ptr %flags, align 4
  %29 = load ptr, ptr %tag.addr, align 8
  %options26 = getelementptr inbounds %struct.id3_tag, ptr %29, i32 0, i32 5
  %30 = load i32, ptr %options26, align 4
  %and27 = and i32 %30, 1
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end24
  %31 = load i32, ptr %flags, align 4
  %or30 = or i32 %31, 128
  store i32 %or30, ptr %flags, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end24
  %32 = load i32, ptr %flags, align 4
  %and32 = and i32 %32, -65
  store i32 %and32, ptr %flags, align 4
  %33 = load i32, ptr %extendedflags, align 4
  %tobool33 = icmp ne i32 %33, 0
  br i1 %tobool33, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.end31
  %34 = load i32, ptr %flags, align 4
  %or35 = or i32 %34, 64
  store i32 %or35, ptr %flags, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end31
  %35 = load i32, ptr %flags, align 4
  %and37 = and i32 %35, -17
  store i32 %and37, ptr %flags, align 4
  %36 = load ptr, ptr %tag.addr, align 8
  %options38 = getelementptr inbounds %struct.id3_tag, ptr %36, i32 0, i32 5
  %37 = load i32, ptr %options38, align 4
  %and39 = and i32 %37, 16
  %tobool40 = icmp ne i32 %and39, 0
  br i1 %tobool40, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.end36
  %38 = load i32, ptr %flags, align 4
  %or42 = or i32 %38, 16
  store i32 %or42, ptr %flags, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end36
  %39 = load ptr, ptr %ptr, align 8
  %tobool44 = icmp ne ptr %39, null
  br i1 %tobool44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end43
  %40 = load ptr, ptr %ptr, align 8
  %41 = load ptr, ptr %40, align 8
  store ptr %41, ptr %header_ptr, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end43
  %42 = load ptr, ptr %ptr, align 8
  %call47 = call i64 @id3_render_immediate(ptr noundef %42, ptr noundef @.str, i32 noundef 3)
  %43 = load i64, ptr %size, align 8
  %add = add i64 %43, %call47
  store i64 %add, ptr %size, align 8
  %44 = load ptr, ptr %ptr, align 8
  %call48 = call i64 @id3_render_int(ptr noundef %44, i64 noundef 1024, i32 noundef 2)
  %45 = load i64, ptr %size, align 8
  %add49 = add i64 %45, %call48
  store i64 %add49, ptr %size, align 8
  %46 = load ptr, ptr %ptr, align 8
  %47 = load i32, ptr %flags, align 4
  %conv = sext i32 %47 to i64
  %call50 = call i64 @id3_render_int(ptr noundef %46, i64 noundef %conv, i32 noundef 1)
  %48 = load i64, ptr %size, align 8
  %add51 = add i64 %48, %call50
  store i64 %add51, ptr %size, align 8
  %49 = load ptr, ptr %ptr, align 8
  %tobool52 = icmp ne ptr %49, null
  br i1 %tobool52, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.end46
  %50 = load ptr, ptr %ptr, align 8
  %51 = load ptr, ptr %50, align 8
  store ptr %51, ptr %tagsize_ptr, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end46
  %52 = load ptr, ptr %ptr, align 8
  %call55 = call i64 @id3_render_syncsafe(ptr noundef %52, i64 noundef 0, i32 noundef 4)
  %53 = load i64, ptr %size, align 8
  %add56 = add i64 %53, %call55
  store i64 %add56, ptr %size, align 8
  %54 = load i32, ptr %flags, align 4
  %and57 = and i32 %54, 64
  %tobool58 = icmp ne i32 %and57, 0
  br i1 %tobool58, label %if.then59, label %if.end102

if.then59:                                        ; preds = %if.end54
  store i64 0, ptr %ehsize, align 8
  store ptr null, ptr %ehsize_ptr, align 8
  %55 = load ptr, ptr %ptr, align 8
  %tobool60 = icmp ne ptr %55, null
  br i1 %tobool60, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.then59
  %56 = load ptr, ptr %ptr, align 8
  %57 = load ptr, ptr %56, align 8
  store ptr %57, ptr %ehsize_ptr, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.then59
  %58 = load ptr, ptr %ptr, align 8
  %call63 = call i64 @id3_render_syncsafe(ptr noundef %58, i64 noundef 0, i32 noundef 4)
  %59 = load i64, ptr %ehsize, align 8
  %add64 = add i64 %59, %call63
  store i64 %add64, ptr %ehsize, align 8
  %60 = load ptr, ptr %ptr, align 8
  %call65 = call i64 @id3_render_int(ptr noundef %60, i64 noundef 1, i32 noundef 1)
  %61 = load i64, ptr %ehsize, align 8
  %add66 = add i64 %61, %call65
  store i64 %add66, ptr %ehsize, align 8
  %62 = load ptr, ptr %ptr, align 8
  %63 = load i32, ptr %extendedflags, align 4
  %conv67 = sext i32 %63 to i64
  %call68 = call i64 @id3_render_int(ptr noundef %62, i64 noundef %conv67, i32 noundef 1)
  %64 = load i64, ptr %ehsize, align 8
  %add69 = add i64 %64, %call68
  store i64 %add69, ptr %ehsize, align 8
  %65 = load i32, ptr %extendedflags, align 4
  %and70 = and i32 %65, 64
  %tobool71 = icmp ne i32 %and70, 0
  br i1 %tobool71, label %if.then72, label %if.end75

if.then72:                                        ; preds = %if.end62
  %66 = load ptr, ptr %ptr, align 8
  %call73 = call i64 @id3_render_int(ptr noundef %66, i64 noundef 0, i32 noundef 1)
  %67 = load i64, ptr %ehsize, align 8
  %add74 = add i64 %67, %call73
  store i64 %add74, ptr %ehsize, align 8
  br label %if.end75

if.end75:                                         ; preds = %if.then72, %if.end62
  %68 = load i32, ptr %extendedflags, align 4
  %and76 = and i32 %68, 32
  %tobool77 = icmp ne i32 %and76, 0
  br i1 %tobool77, label %if.then78, label %if.end86

if.then78:                                        ; preds = %if.end75
  %69 = load ptr, ptr %ptr, align 8
  %call79 = call i64 @id3_render_int(ptr noundef %69, i64 noundef 5, i32 noundef 1)
  %70 = load i64, ptr %ehsize, align 8
  %add80 = add i64 %70, %call79
  store i64 %add80, ptr %ehsize, align 8
  %71 = load ptr, ptr %ptr, align 8
  %tobool81 = icmp ne ptr %71, null
  br i1 %tobool81, label %if.then82, label %if.end83

if.then82:                                        ; preds = %if.then78
  %72 = load ptr, ptr %ptr, align 8
  %73 = load ptr, ptr %72, align 8
  store ptr %73, ptr %crc_ptr, align 8
  br label %if.end83

if.end83:                                         ; preds = %if.then82, %if.then78
  %74 = load ptr, ptr %ptr, align 8
  %call84 = call i64 @id3_render_syncsafe(ptr noundef %74, i64 noundef 0, i32 noundef 5)
  %75 = load i64, ptr %ehsize, align 8
  %add85 = add i64 %75, %call84
  store i64 %add85, ptr %ehsize, align 8
  br label %if.end86

if.end86:                                         ; preds = %if.end83, %if.end75
  %76 = load i32, ptr %extendedflags, align 4
  %and87 = and i32 %76, 16
  %tobool88 = icmp ne i32 %and87, 0
  br i1 %tobool88, label %if.then89, label %if.end96

if.then89:                                        ; preds = %if.end86
  %77 = load ptr, ptr %ptr, align 8
  %call90 = call i64 @id3_render_int(ptr noundef %77, i64 noundef 1, i32 noundef 1)
  %78 = load i64, ptr %ehsize, align 8
  %add91 = add i64 %78, %call90
  store i64 %add91, ptr %ehsize, align 8
  %79 = load ptr, ptr %ptr, align 8
  %80 = load ptr, ptr %tag.addr, align 8
  %restrictions92 = getelementptr inbounds %struct.id3_tag, ptr %80, i32 0, i32 4
  %81 = load i32, ptr %restrictions92, align 8
  %conv93 = sext i32 %81 to i64
  %call94 = call i64 @id3_render_int(ptr noundef %79, i64 noundef %conv93, i32 noundef 1)
  %82 = load i64, ptr %ehsize, align 8
  %add95 = add i64 %82, %call94
  store i64 %add95, ptr %ehsize, align 8
  br label %if.end96

if.end96:                                         ; preds = %if.then89, %if.end86
  %83 = load ptr, ptr %ehsize_ptr, align 8
  %tobool97 = icmp ne ptr %83, null
  br i1 %tobool97, label %if.then98, label %if.end100

if.then98:                                        ; preds = %if.end96
  %84 = load i64, ptr %ehsize, align 8
  %call99 = call i64 @id3_render_syncsafe(ptr noundef %ehsize_ptr, i64 noundef %84, i32 noundef 4)
  br label %if.end100

if.end100:                                        ; preds = %if.then98, %if.end96
  %85 = load i64, ptr %ehsize, align 8
  %86 = load i64, ptr %size, align 8
  %add101 = add i64 %86, %85
  store i64 %add101, ptr %size, align 8
  br label %if.end102

if.end102:                                        ; preds = %if.end100, %if.end54
  %87 = load ptr, ptr %ptr, align 8
  %tobool103 = icmp ne ptr %87, null
  br i1 %tobool103, label %if.then104, label %if.end105

if.then104:                                       ; preds = %if.end102
  %88 = load ptr, ptr %ptr, align 8
  %89 = load ptr, ptr %88, align 8
  store ptr %89, ptr %frames_ptr, align 8
  br label %if.end105

if.end105:                                        ; preds = %if.then104, %if.end102
  store i32 0, ptr %i, align 4
  br label %for.cond106

for.cond106:                                      ; preds = %for.inc117, %if.end105
  %90 = load i32, ptr %i, align 4
  %91 = load ptr, ptr %tag.addr, align 8
  %nframes107 = getelementptr inbounds %struct.id3_tag, ptr %91, i32 0, i32 6
  %92 = load i32, ptr %nframes107, align 8
  %cmp108 = icmp ult i32 %90, %92
  br i1 %cmp108, label %for.body110, label %for.end119

for.body110:                                      ; preds = %for.cond106
  %93 = load ptr, ptr %tag.addr, align 8
  %frames111 = getelementptr inbounds %struct.id3_tag, ptr %93, i32 0, i32 7
  %94 = load ptr, ptr %frames111, align 8
  %95 = load i32, ptr %i, align 4
  %idxprom112 = zext i32 %95 to i64
  %arrayidx113 = getelementptr inbounds ptr, ptr %94, i64 %idxprom112
  %96 = load ptr, ptr %arrayidx113, align 8
  %97 = load ptr, ptr %ptr, align 8
  %98 = load ptr, ptr %tag.addr, align 8
  %options114 = getelementptr inbounds %struct.id3_tag, ptr %98, i32 0, i32 5
  %99 = load i32, ptr %options114, align 4
  %call115 = call i64 @id3_frame_render(ptr noundef %96, ptr noundef %97, i32 noundef %99)
  %100 = load i64, ptr %size, align 8
  %add116 = add i64 %100, %call115
  store i64 %add116, ptr %size, align 8
  br label %for.inc117

for.inc117:                                       ; preds = %for.body110
  %101 = load i32, ptr %i, align 4
  %inc118 = add i32 %101, 1
  store i32 %inc118, ptr %i, align 4
  br label %for.cond106, !llvm.loop !15

for.end119:                                       ; preds = %for.cond106
  %102 = load i32, ptr %flags, align 4
  %and120 = and i32 %102, 16
  %tobool121 = icmp ne i32 %and120, 0
  br i1 %tobool121, label %if.end149, label %if.then122

if.then122:                                       ; preds = %for.end119
  %103 = load i64, ptr %size, align 8
  %104 = load ptr, ptr %tag.addr, align 8
  %paddedsize = getelementptr inbounds %struct.id3_tag, ptr %104, i32 0, i32 8
  %105 = load i64, ptr %paddedsize, align 8
  %cmp123 = icmp ult i64 %103, %105
  br i1 %cmp123, label %if.then125, label %if.else

if.then125:                                       ; preds = %if.then122
  %106 = load ptr, ptr %ptr, align 8
  %107 = load ptr, ptr %tag.addr, align 8
  %paddedsize126 = getelementptr inbounds %struct.id3_tag, ptr %107, i32 0, i32 8
  %108 = load i64, ptr %paddedsize126, align 8
  %109 = load i64, ptr %size, align 8
  %sub = sub i64 %108, %109
  %call127 = call i64 @id3_render_padding(ptr noundef %106, i8 noundef zeroext 0, i64 noundef %sub)
  %110 = load i64, ptr %size, align 8
  %add128 = add i64 %110, %call127
  store i64 %add128, ptr %size, align 8
  br label %if.end148

if.else:                                          ; preds = %if.then122
  %111 = load ptr, ptr %tag.addr, align 8
  %options129 = getelementptr inbounds %struct.id3_tag, ptr %111, i32 0, i32 5
  %112 = load i32, ptr %options129, align 4
  %and130 = and i32 %112, 1
  %tobool131 = icmp ne i32 %and130, 0
  br i1 %tobool131, label %if.then132, label %if.end147

if.then132:                                       ; preds = %if.else
  %113 = load ptr, ptr %ptr, align 8
  %cmp133 = icmp eq ptr %113, null
  br i1 %cmp133, label %if.then135, label %if.else137

if.then135:                                       ; preds = %if.then132
  %114 = load i64, ptr %size, align 8
  %add136 = add i64 %114, 1
  store i64 %add136, ptr %size, align 8
  br label %if.end146

if.else137:                                       ; preds = %if.then132
  %115 = load ptr, ptr %ptr, align 8
  %116 = load ptr, ptr %115, align 8
  %arrayidx138 = getelementptr inbounds i8, ptr %116, i64 -1
  %117 = load i8, ptr %arrayidx138, align 1
  %conv139 = zext i8 %117 to i32
  %cmp140 = icmp eq i32 %conv139, 255
  br i1 %cmp140, label %if.then142, label %if.end145

if.then142:                                       ; preds = %if.else137
  %118 = load ptr, ptr %ptr, align 8
  %call143 = call i64 @id3_render_padding(ptr noundef %118, i8 noundef zeroext 0, i64 noundef 1)
  %119 = load i64, ptr %size, align 8
  %add144 = add i64 %119, %call143
  store i64 %add144, ptr %size, align 8
  br label %if.end145

if.end145:                                        ; preds = %if.then142, %if.else137
  br label %if.end146

if.end146:                                        ; preds = %if.end145, %if.then135
  br label %if.end147

if.end147:                                        ; preds = %if.end146, %if.else
  br label %if.end148

if.end148:                                        ; preds = %if.end147, %if.then125
  br label %if.end149

if.end149:                                        ; preds = %if.end148, %for.end119
  %120 = load ptr, ptr %tagsize_ptr, align 8
  %tobool150 = icmp ne ptr %120, null
  br i1 %tobool150, label %if.then151, label %if.end154

if.then151:                                       ; preds = %if.end149
  %121 = load i64, ptr %size, align 8
  %sub152 = sub i64 %121, 10
  %call153 = call i64 @id3_render_syncsafe(ptr noundef %tagsize_ptr, i64 noundef %sub152, i32 noundef 4)
  br label %if.end154

if.end154:                                        ; preds = %if.then151, %if.end149
  %122 = load ptr, ptr %crc_ptr, align 8
  %tobool155 = icmp ne ptr %122, null
  br i1 %tobool155, label %if.then156, label %if.end159

if.then156:                                       ; preds = %if.end154
  %123 = load ptr, ptr %frames_ptr, align 8
  %124 = load ptr, ptr %ptr, align 8
  %125 = load ptr, ptr %124, align 8
  %126 = load ptr, ptr %frames_ptr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %125 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %126 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call157 = call i64 @id3_crc_calculate(ptr noundef %123, i64 noundef %sub.ptr.sub)
  %call158 = call i64 @id3_render_syncsafe(ptr noundef %crc_ptr, i64 noundef %call157, i32 noundef 5)
  br label %if.end159

if.end159:                                        ; preds = %if.then156, %if.end154
  %127 = load i32, ptr %flags, align 4
  %and160 = and i32 %127, 16
  %tobool161 = icmp ne i32 %and160, 0
  br i1 %tobool161, label %if.then162, label %if.end167

if.then162:                                       ; preds = %if.end159
  %128 = load ptr, ptr %ptr, align 8
  %call163 = call i64 @id3_render_immediate(ptr noundef %128, ptr noundef @.str.1, i32 noundef 3)
  %129 = load i64, ptr %size, align 8
  %add164 = add i64 %129, %call163
  store i64 %add164, ptr %size, align 8
  %130 = load ptr, ptr %ptr, align 8
  %131 = load ptr, ptr %header_ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %131, i64 3
  %call165 = call i64 @id3_render_binary(ptr noundef %130, ptr noundef %add.ptr, i64 noundef 7)
  %132 = load i64, ptr %size, align 8
  %add166 = add i64 %132, %call165
  store i64 %add166, ptr %size, align 8
  br label %if.end167

if.end167:                                        ; preds = %if.then162, %if.end159
  %133 = load i64, ptr %size, align 8
  store i64 %133, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end167, %if.then7, %if.then
  %134 = load i64, ptr %retval, align 8
  ret i64 %134
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @v1_render(ptr noundef %tag, ptr noundef %buffer) #0 {
entry:
  %retval = alloca i64, align 8
  %tag.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %frame = alloca ptr, align 8
  %number = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %tag, ptr %tag.addr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  %0 = load ptr, ptr %buffer.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 128, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %call = call i64 @id3_render_immediate(ptr noundef %buffer.addr, ptr noundef @.str.10, i32 noundef 3)
  %1 = load ptr, ptr %tag.addr, align 8
  call void @v1_renderstr(ptr noundef %1, ptr noundef @.str.2, ptr noundef %buffer.addr, i64 noundef 30)
  %2 = load ptr, ptr %tag.addr, align 8
  call void @v1_renderstr(ptr noundef %2, ptr noundef @.str.3, ptr noundef %buffer.addr, i64 noundef 30)
  %3 = load ptr, ptr %tag.addr, align 8
  call void @v1_renderstr(ptr noundef %3, ptr noundef @.str.4, ptr noundef %buffer.addr, i64 noundef 30)
  %4 = load ptr, ptr %tag.addr, align 8
  call void @v1_renderstr(ptr noundef %4, ptr noundef @.str.5, ptr noundef %buffer.addr, i64 noundef 4)
  %5 = load ptr, ptr %tag.addr, align 8
  call void @v1_renderstr(ptr noundef %5, ptr noundef @.str.8, ptr noundef %buffer.addr, i64 noundef 30)
  %6 = load ptr, ptr %tag.addr, align 8
  %call1 = call ptr @id3_tag_findframe(ptr noundef %6, ptr noundef @.str.6, i32 noundef 0)
  store ptr %call1, ptr %frame, align 8
  %7 = load ptr, ptr %frame, align 8
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %if.then2, label %if.end11

if.then2:                                         ; preds = %if.end
  %8 = load ptr, ptr %frame, align 8
  %fields = getelementptr inbounds %struct.id3_frame, ptr %8, i32 0, i32 10
  %9 = load ptr, ptr %fields, align 8
  %arrayidx = getelementptr inbounds %union.id3_field, ptr %9, i64 1
  %call3 = call ptr @id3_field_getstrings(ptr noundef %arrayidx, i32 noundef 0)
  %call4 = call i64 @id3_ucs4_getnumber(ptr noundef %call3)
  %conv = trunc i64 %call4 to i32
  store i32 %conv, ptr %number, align 4
  %10 = load i32, ptr %number, align 4
  %and = and i32 %10, 255
  %tobool5 = icmp ne i32 %and, 0
  br i1 %tobool5, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.then2
  %11 = load ptr, ptr %buffer.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %11, i64 -2
  store i8 0, ptr %arrayidx7, align 1
  %12 = load i32, ptr %number, align 4
  %conv8 = trunc i32 %12 to i8
  %13 = load ptr, ptr %buffer.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %13, i64 -1
  store i8 %conv8, ptr %arrayidx9, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.then2
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.end
  %14 = load ptr, ptr %tag.addr, align 8
  %call12 = call ptr @id3_tag_findframe(ptr noundef %14, ptr noundef @.str.7, i32 noundef 0)
  store ptr %call12, ptr %frame, align 8
  %15 = load ptr, ptr %frame, align 8
  %tobool13 = icmp ne ptr %15, null
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end11
  %16 = load ptr, ptr %frame, align 8
  %fields14 = getelementptr inbounds %struct.id3_frame, ptr %16, i32 0, i32 10
  %17 = load ptr, ptr %fields14, align 8
  %arrayidx15 = getelementptr inbounds %union.id3_field, ptr %17, i64 1
  %call16 = call ptr @id3_field_getstrings(ptr noundef %arrayidx15, i32 noundef 0)
  %call17 = call i64 @id3_ucs4_getnumber(ptr noundef %call16)
  br label %cond.end

cond.false:                                       ; preds = %if.end11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call17, %cond.true ], [ 255, %cond.false ]
  %conv18 = trunc i64 %cond to i32
  store i32 %conv18, ptr %number, align 4
  %18 = load i32, ptr %number, align 4
  %conv19 = zext i32 %18 to i64
  %call20 = call i64 @id3_render_int(ptr noundef %buffer.addr, i64 noundef %conv19, i32 noundef 1)
  %19 = load ptr, ptr %buffer.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %19, i64 -128
  store ptr %add.ptr, ptr %buffer.addr, align 8
  store i32 3, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %20 = load i32, ptr %i, align 4
  %cmp21 = icmp ult i32 %20, 127
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load ptr, ptr %buffer.addr, align 8
  %22 = load i32, ptr %i, align 4
  %idxprom = zext i32 %22 to i64
  %arrayidx23 = getelementptr inbounds i8, ptr %21, i64 %idxprom
  %23 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %23 to i32
  %cmp25 = icmp ne i32 %conv24, 32
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %for.body
  br label %for.end

if.end28:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end28
  %24 = load i32, ptr %i, align 4
  %inc = add i32 %24, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %if.then27, %for.cond
  %25 = load i32, ptr %i, align 4
  %cmp29 = icmp eq i32 %25, 127
  br i1 %cmp29, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.end
  %26 = load ptr, ptr %buffer.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, ptr %26, i64 127
  %27 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %27 to i32
  %cmp33 = icmp eq i32 %conv32, 255
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.end
  %28 = phi i1 [ false, %for.end ], [ %cmp33, %land.rhs ]
  %29 = zext i1 %28 to i64
  %cond35 = select i1 %28, i32 0, i32 128
  %conv36 = sext i32 %cond35 to i64
  store i64 %conv36, ptr %retval, align 8
  br label %return

return:                                           ; preds = %land.end, %if.then
  %30 = load i64, ptr %retval, align 8
  ret i64 %30
}

declare i64 @id3_frame_render(ptr noundef, ptr noundef, i32 noundef) #2

declare i64 @id3_render_immediate(ptr noundef, ptr noundef, i32 noundef) #2

declare i64 @id3_render_int(ptr noundef, i64 noundef, i32 noundef) #2

declare i64 @id3_render_syncsafe(ptr noundef, i64 noundef, i32 noundef) #2

declare i64 @id3_render_padding(ptr noundef, i8 noundef zeroext, i64 noundef) #2

declare i64 @id3_crc_calculate(ptr noundef, i64 noundef) #2

declare i64 @id3_render_binary(ptr noundef, ptr noundef, i64 noundef) #2

declare i64 @id3_parse_uint(ptr noundef, i32 noundef) #2

declare i64 @id3_parse_syncsafe(ptr noundef, i32 noundef) #2

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind ssp uwtable
define internal i32 @v1_attachstr(ptr noundef %tag, ptr noundef %id, ptr noundef %text, i64 noundef %number) #0 {
entry:
  %retval = alloca i32, align 4
  %tag.addr = alloca ptr, align 8
  %id.addr = alloca ptr, align 8
  %text.addr = alloca ptr, align 8
  %number.addr = alloca i64, align 8
  %frame = alloca ptr, align 8
  %ucs4 = alloca [31 x i64], align 8
  %ptr = alloca ptr, align 8
  store ptr %tag, ptr %tag.addr, align 8
  store ptr %id, ptr %id.addr, align 8
  store ptr %text, ptr %text.addr, align 8
  store i64 %number, ptr %number.addr, align 8
  %0 = load ptr, ptr %text.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %text.addr, align 8
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_mad_mad_0_14_2b_libid3tag_tag_0(ptr noundef %1)
  %2 = load ptr, ptr %text.addr, align 8
  %3 = load i8, ptr %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  %4 = load ptr, ptr %id.addr, align 8
  %call = call ptr @id3_frame_new(ptr noundef %4)
  store ptr %call, ptr %frame, align 8
  %5 = load ptr, ptr %frame, align 8
  %cmp4 = icmp eq ptr %5, null
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  store i32 -1, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end3
  %6 = load ptr, ptr %frame, align 8
  %fields = getelementptr inbounds %struct.id3_frame, ptr %6, i32 0, i32 10
  %7 = load ptr, ptr %fields, align 8
  %arrayidx = getelementptr inbounds %union.id3_field, ptr %7, i64 0
  %call8 = call i32 @id3_field_settextencoding(ptr noundef %arrayidx, i32 noundef 0)
  %cmp9 = icmp eq i32 %call8, -1
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end7
  br label %fail

if.end12:                                         ; preds = %if.end7
  %8 = load ptr, ptr %text.addr, align 8
  %tobool13 = icmp ne ptr %8, null
  br i1 %tobool13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end12
  %9 = load ptr, ptr %text.addr, align 8
  %arraydecay = getelementptr inbounds [31 x i64], ptr %ucs4, i64 0, i64 0
  call void @id3_latin1_decode(ptr noundef %9, ptr noundef %arraydecay)
  br label %if.end16

if.else:                                          ; preds = %if.end12
  %arraydecay15 = getelementptr inbounds [31 x i64], ptr %ucs4, i64 0, i64 0
  %10 = load i64, ptr %number.addr, align 8
  call void @id3_ucs4_putnumber(ptr noundef %arraydecay15, i64 noundef %10)
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then14
  %11 = load ptr, ptr %id.addr, align 8
  %call17 = call i32 @strcmp(ptr noundef %11, ptr noundef @.str.8)
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then20, label %if.else40

if.then20:                                        ; preds = %if.end16
  %12 = load ptr, ptr %frame, align 8
  %fields21 = getelementptr inbounds %struct.id3_frame, ptr %12, i32 0, i32 10
  %13 = load ptr, ptr %fields21, align 8
  %arrayidx22 = getelementptr inbounds %union.id3_field, ptr %13, i64 1
  %call23 = call i32 @id3_field_setlanguage(ptr noundef %arrayidx22, ptr noundef @.str.9)
  %cmp24 = icmp eq i32 %call23, -1
  br i1 %cmp24, label %if.then38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then20
  %14 = load ptr, ptr %frame, align 8
  %fields26 = getelementptr inbounds %struct.id3_frame, ptr %14, i32 0, i32 10
  %15 = load ptr, ptr %fields26, align 8
  %arrayidx27 = getelementptr inbounds %union.id3_field, ptr %15, i64 2
  %call28 = call i32 @id3_field_setstring(ptr noundef %arrayidx27, ptr noundef @id3_ucs4_empty)
  %cmp29 = icmp eq i32 %call28, -1
  br i1 %cmp29, label %if.then38, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %lor.lhs.false
  %16 = load ptr, ptr %frame, align 8
  %fields32 = getelementptr inbounds %struct.id3_frame, ptr %16, i32 0, i32 10
  %17 = load ptr, ptr %fields32, align 8
  %arrayidx33 = getelementptr inbounds %union.id3_field, ptr %17, i64 3
  %arraydecay34 = getelementptr inbounds [31 x i64], ptr %ucs4, i64 0, i64 0
  %call35 = call i32 @id3_field_setfullstring(ptr noundef %arrayidx33, ptr noundef %arraydecay34)
  %cmp36 = icmp eq i32 %call35, -1
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %lor.lhs.false31, %lor.lhs.false, %if.then20
  br label %fail

if.end39:                                         ; preds = %lor.lhs.false31
  br label %if.end49

if.else40:                                        ; preds = %if.end16
  %arraydecay41 = getelementptr inbounds [31 x i64], ptr %ucs4, i64 0, i64 0
  store ptr %arraydecay41, ptr %ptr, align 8
  %18 = load ptr, ptr %frame, align 8
  %fields42 = getelementptr inbounds %struct.id3_frame, ptr %18, i32 0, i32 10
  %19 = load ptr, ptr %fields42, align 8
  %arrayidx43 = getelementptr inbounds %union.id3_field, ptr %19, i64 1
  %call44 = call i32 @id3_field_setstrings(ptr noundef %arrayidx43, i32 noundef 1, ptr noundef %ptr)
  %cmp45 = icmp eq i32 %call44, -1
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.else40
  br label %fail

if.end48:                                         ; preds = %if.else40
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.end39
  %20 = load ptr, ptr %tag.addr, align 8
  %21 = load ptr, ptr %frame, align 8
  %call50 = call i32 @id3_tag_attachframe(ptr noundef %20, ptr noundef %21)
  %cmp51 = icmp eq i32 %call50, -1
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.end49
  br label %fail

if.end54:                                         ; preds = %if.end49
  store i32 0, ptr %retval, align 4
  br label %return

fail:                                             ; preds = %if.then53, %if.then47, %if.then38, %if.then11
  %22 = load ptr, ptr %frame, align 8
  call void @id3_frame_delete(ptr noundef %22)
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %fail, %if.end54, %if.then6, %if.then2
  %23 = load i32, ptr %retval, align 4
  ret i32 %23
}

; Function Attrs: nounwind ssp uwtable
define internal void @trim(ptr noundef %str) #0 {
entry:
  %str.addr = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  %0 = load ptr, ptr %str.addr, align 8
  %1 = load ptr, ptr %str.addr, align 8
  %call = call i64 @strlen(ptr noundef %1)
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %call
  store ptr %add.ptr, ptr %ptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load ptr, ptr %ptr, align 8
  %3 = load ptr, ptr %str.addr, align 8
  %cmp = icmp ugt ptr %2, %3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load ptr, ptr %ptr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 -1
  %5 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %cmp1 = icmp eq i32 %conv, 32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load ptr, ptr %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %7, i32 -1
  store ptr %incdec.ptr, ptr %ptr, align 8
  br label %while.cond, !llvm.loop !17

while.end:                                        ; preds = %land.end
  %8 = load ptr, ptr %ptr, align 8
  store i8 0, ptr %8, align 1
  ret void
}

declare ptr @id3_frame_new(ptr noundef) #2

declare i32 @id3_field_settextencoding(ptr noundef, i32 noundef) #2

declare void @id3_latin1_decode(ptr noundef, ptr noundef) #2

declare void @id3_ucs4_putnumber(ptr noundef, i64 noundef) #2

declare i32 @strcmp(ptr noundef, ptr noundef) #2

declare i32 @id3_field_setlanguage(ptr noundef, ptr noundef) #2

declare i32 @id3_field_setstring(ptr noundef, ptr noundef) #2

declare i32 @id3_field_setfullstring(ptr noundef, ptr noundef) #2

declare i32 @id3_field_setstrings(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #7

declare i64 @id3_util_deunsynchronise(ptr noundef, i64 noundef) #2

declare ptr @id3_frame_parse(ptr noundef, i64 noundef, i32 noundef) #2

declare i32 @id3_compat_fixup(ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal void @v1_renderstr(ptr noundef %tag, ptr noundef %frameid, ptr noundef %buffer, i64 noundef %length) #0 {
entry:
  %tag.addr = alloca ptr, align 8
  %frameid.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %frame = alloca ptr, align 8
  %string = alloca ptr, align 8
  store ptr %tag, ptr %tag.addr, align 8
  store ptr %frameid, ptr %frameid.addr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  store i64 %length, ptr %length.addr, align 8
  %0 = load ptr, ptr %tag.addr, align 8
  %1 = load ptr, ptr %frameid.addr, align 8
  %call = call ptr @id3_tag_findframe(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  store ptr %call, ptr %frame, align 8
  %2 = load ptr, ptr %frame, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store ptr @id3_ucs4_empty, ptr %string, align 8
  br label %if.end9

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %frameid.addr, align 8
  %call1 = call i32 @strcmp(ptr noundef %3, ptr noundef @.str.8)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.else5

if.then3:                                         ; preds = %if.else
  %4 = load ptr, ptr %frame, align 8
  %fields = getelementptr inbounds %struct.id3_frame, ptr %4, i32 0, i32 10
  %5 = load ptr, ptr %fields, align 8
  %arrayidx = getelementptr inbounds %union.id3_field, ptr %5, i64 3
  %call4 = call ptr @id3_field_getfullstring(ptr noundef %arrayidx)
  store ptr %call4, ptr %string, align 8
  br label %if.end

if.else5:                                         ; preds = %if.else
  %6 = load ptr, ptr %frame, align 8
  %fields6 = getelementptr inbounds %struct.id3_frame, ptr %6, i32 0, i32 10
  %7 = load ptr, ptr %fields6, align 8
  %arrayidx7 = getelementptr inbounds %union.id3_field, ptr %7, i64 1
  %call8 = call ptr @id3_field_getstrings(ptr noundef %arrayidx7, i32 noundef 0)
  store ptr %call8, ptr %string, align 8
  br label %if.end

if.end:                                           ; preds = %if.else5, %if.then3
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then
  %8 = load ptr, ptr %buffer.addr, align 8
  %9 = load ptr, ptr %string, align 8
  %10 = load i64, ptr %length.addr, align 8
  %call10 = call i64 @id3_render_paddedstring(ptr noundef %8, ptr noundef %9, i64 noundef %10)
  ret void
}

declare i64 @id3_ucs4_getnumber(ptr noundef) #2

declare ptr @id3_field_getstrings(ptr noundef, i32 noundef) #2

declare ptr @id3_field_getfullstring(ptr noundef) #2

declare i64 @id3_render_paddedstring(ptr noundef, ptr noundef, i64 noundef) #2

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { cold noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { allocsize(1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { argmemonly nocallback nofree nounwind willreturn }
attributes #6 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { allocsize(0) }
attributes #9 = { cold noreturn }
attributes #10 = { allocsize(1) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define internal void @pc_inline_source_snapshot_public_repos_mibench_consumer_mad_mad_0_14_2b_libid3tag_tag_0(ptr noundef %str)  alwaysinline#0 {
entry:
  %str.addr = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  %0 = load ptr, ptr %str.addr, align 8
  %1 = load ptr, ptr %str.addr, align 8
  %call = call i64 @strlen(ptr noundef %1)
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %call
  store ptr %add.ptr, ptr %ptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load ptr, ptr %ptr, align 8
  %3 = load ptr, ptr %str.addr, align 8
  %cmp = icmp ugt ptr %2, %3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load ptr, ptr %ptr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 -1
  %5 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %cmp1 = icmp eq i32 %conv, 32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load ptr, ptr %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %7, i32 -1
  store ptr %incdec.ptr, ptr %ptr, align 8
  br label %while.cond, !llvm.loop !17

while.end:                                        ; preds = %land.end
  %8 = load ptr, ptr %ptr, align 8
  store i8 0, ptr %8, align 1
  ret void
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
