; ModuleID = './out/inlinefriendly_scan/rewritten_ir/teacher_small_callee/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-mad_tag.prepared.ll'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-mad/tag.c"
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
  %call = call dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #8
  store ptr %call, ptr %tag, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %tag, align 8
  store i32 0, ptr %0, align 8
  %version = getelementptr inbounds %struct.id3_tag, ptr %0, i64 0, i32 1
  store i32 1024, ptr %version, align 4
  %flags = getelementptr inbounds %struct.id3_tag, ptr %0, i64 0, i32 2
  store i32 0, ptr %flags, align 8
  %extendedflags = getelementptr inbounds %struct.id3_tag, ptr %0, i64 0, i32 3
  store i32 0, ptr %extendedflags, align 4
  %1 = load ptr, ptr %tag, align 8
  %restrictions = getelementptr inbounds %struct.id3_tag, ptr %1, i64 0, i32 4
  store i32 0, ptr %restrictions, align 8
  %options = getelementptr inbounds %struct.id3_tag, ptr %1, i64 0, i32 5
  store i32 6, ptr %options, align 4
  %nframes = getelementptr inbounds %struct.id3_tag, ptr %1, i64 0, i32 6
  store i32 0, ptr %nframes, align 8
  %2 = load ptr, ptr %tag, align 8
  %frames = getelementptr inbounds %struct.id3_tag, ptr %2, i64 0, i32 7
  store ptr null, ptr %frames, align 8
  %paddedsize = getelementptr inbounds %struct.id3_tag, ptr %2, i64 0, i32 8
  store i64 0, ptr %paddedsize, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %tag, align 8
  ret ptr %3
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @id3_tag_delete(ptr noundef %tag) #0 {
entry:
  %tag.addr = alloca ptr, align 8
  store ptr %tag, ptr %tag.addr, align 8
  %0 = load i32, ptr %tag, align 8
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %tag.addr, align 8
  call void @id3_tag_clearframes(ptr noundef %1)
  %frames = getelementptr inbounds %struct.id3_tag, ptr %1, i64 0, i32 7
  %2 = load ptr, ptr %frames, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end, label %if.then1

if.then1:                                         ; preds = %if.then
  %3 = load ptr, ptr %tag.addr, align 8
  %frames2 = getelementptr inbounds %struct.id3_tag, ptr %3, i64 0, i32 7
  %4 = load ptr, ptr %frames2, align 8
  call void @free(ptr noundef %4) #9
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  %5 = load ptr, ptr %tag.addr, align 8
  call void @free(ptr noundef %5) #9
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
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %0 = load ptr, ptr %tag.addr, align 8
  %nframes = getelementptr inbounds %struct.id3_tag, ptr %0, i64 0, i32 6
  %1 = load i32, ptr %nframes, align 8
  %cmp = icmp ult i32 %storemerge, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %tag.addr, align 8
  %frames = getelementptr inbounds %struct.id3_tag, ptr %2, i64 0, i32 7
  %3 = load ptr, ptr %frames, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %idxprom
  %5 = load ptr, ptr %arrayidx, align 8
  call void @id3_frame_delref(ptr noundef %5) #9
  %6 = load ptr, ptr %tag.addr, align 8
  %frames1 = getelementptr inbounds %struct.id3_tag, ptr %6, i64 0, i32 7
  %7 = load ptr, ptr %frames1, align 8
  %8 = load i32, ptr %i, align 4
  %idxprom2 = zext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds ptr, ptr %7, i64 %idxprom2
  %9 = load ptr, ptr %arrayidx3, align 8
  call void @id3_frame_delete(ptr noundef %9) #9
  %10 = load i32, ptr %i, align 4
  %inc = add i32 %10, 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %11 = load ptr, ptr %tag.addr, align 8
  %nframes4 = getelementptr inbounds %struct.id3_tag, ptr %11, i64 0, i32 6
  store i32 0, ptr %nframes4, align 8
  ret void
}

declare void @free(ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define void @id3_tag_addref(ptr noundef %tag) #0 {
entry:
  %0 = load i32, ptr %tag, align 8
  %inc = add i32 %0, 1
  store i32 %inc, ptr %tag, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @id3_tag_delref(ptr noundef %tag) #0 {
entry:
  %tag.addr = alloca ptr, align 8
  store ptr %tag, ptr %tag.addr, align 8
  %0 = load ptr, ptr %tag.addr, align 8
  %1 = load i32, ptr %0, align 8
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  call void @abort() #10
  unreachable

do.end:                                           ; preds = %entry
  %2 = load ptr, ptr %tag.addr, align 8
  %3 = load i32, ptr %2, align 8
  %dec = add i32 %3, -1
  store i32 %dec, ptr %2, align 8
  ret void
}

; Function Attrs: cold noreturn
declare void @abort() #3

declare void @id3_frame_delref(ptr noundef) #2

declare void @id3_frame_delete(ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define i32 @id3_tag_attachframe(ptr noundef %tag, ptr noundef %frame) #0 {
entry:
  %tag.addr = alloca ptr, align 8
  %frame.addr = alloca ptr, align 8
  %frames = alloca ptr, align 8
  store ptr %tag, ptr %tag.addr, align 8
  store ptr %frame, ptr %frame.addr, align 8
  %frames1 = getelementptr inbounds %struct.id3_tag, ptr %tag, i64 0, i32 7
  %0 = load ptr, ptr %frames1, align 8
  %nframes = getelementptr inbounds %struct.id3_tag, ptr %tag, i64 0, i32 6
  %1 = load i32, ptr %nframes, align 8
  %add = add i32 %1, 1
  %conv = zext i32 %add to i64
  %mul = shl nuw nsw i64 %conv, 3
  %call = call ptr @realloc(ptr noundef %0, i64 noundef %mul) #11
  store ptr %call, ptr %frames, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %frames, align 8
  %3 = load ptr, ptr %tag.addr, align 8
  %frames3 = getelementptr inbounds %struct.id3_tag, ptr %3, i64 0, i32 7
  store ptr %2, ptr %frames3, align 8
  %4 = load ptr, ptr %frame.addr, align 8
  %nframes5 = getelementptr inbounds %struct.id3_tag, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %nframes5, align 8
  %inc = add i32 %5, 1
  store i32 %inc, ptr %nframes5, align 8
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %idxprom
  store ptr %4, ptr %arrayidx, align 8
  %6 = load ptr, ptr %frame.addr, align 8
  call void @id3_frame_addref(ptr noundef %6) #9
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i32 [ 0, %if.end ], [ -1, %entry ]
  ret i32 %storemerge
}

; Function Attrs: allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #4

declare void @id3_frame_addref(ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define i32 @id3_tag_detachframe(ptr noundef %tag, ptr noundef %frame) #0 {
entry:
  %tag.addr = alloca ptr, align 8
  %frame.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %tag, ptr %tag.addr, align 8
  store ptr %frame, ptr %frame.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr %i, align 4
  %0 = load ptr, ptr %tag.addr, align 8
  %nframes = getelementptr inbounds %struct.id3_tag, ptr %0, i64 0, i32 6
  %1 = load i32, ptr %nframes, align 8
  %cmp = icmp ult i32 %storemerge, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %tag.addr, align 8
  %frames = getelementptr inbounds %struct.id3_tag, ptr %2, i64 0, i32 7
  %3 = load ptr, ptr %frames, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %idxprom
  %5 = load ptr, ptr %arrayidx, align 8
  %6 = load ptr, ptr %frame.addr, align 8
  %cmp1 = icmp eq ptr %5, %6
  br i1 %cmp1, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add i32 %7, 1
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.body, %for.cond
  %8 = load i32, ptr %i, align 4
  %9 = load ptr, ptr %tag.addr, align 8
  %nframes2 = getelementptr inbounds %struct.id3_tag, ptr %9, i64 0, i32 6
  %10 = load i32, ptr %nframes2, align 8
  %cmp3 = icmp eq i32 %8, %10
  br i1 %cmp3, label %return, label %if.end5

if.end5:                                          ; preds = %for.end
  %11 = load ptr, ptr %tag.addr, align 8
  %nframes6 = getelementptr inbounds %struct.id3_tag, ptr %11, i64 0, i32 6
  %12 = load i32, ptr %nframes6, align 8
  %dec = add i32 %12, -1
  store i32 %dec, ptr %nframes6, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end5
  %13 = load i32, ptr %i, align 4
  %inc7 = add i32 %13, 1
  store i32 %inc7, ptr %i, align 4
  %14 = load ptr, ptr %tag.addr, align 8
  %nframes8 = getelementptr inbounds %struct.id3_tag, ptr %14, i64 0, i32 6
  %15 = load i32, ptr %nframes8, align 8
  %cmp9 = icmp ult i32 %13, %15
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load ptr, ptr %tag.addr, align 8
  %frames10 = getelementptr inbounds %struct.id3_tag, ptr %16, i64 0, i32 7
  %17 = load ptr, ptr %frames10, align 8
  %18 = load i32, ptr %i, align 4
  %idxprom11 = zext i32 %18 to i64
  %arrayidx12 = getelementptr inbounds ptr, ptr %17, i64 %idxprom11
  %19 = load ptr, ptr %arrayidx12, align 8
  %20 = load ptr, ptr %tag.addr, align 8
  %frames13 = getelementptr inbounds %struct.id3_tag, ptr %20, i64 0, i32 7
  %21 = load ptr, ptr %frames13, align 8
  %22 = load i32, ptr %i, align 4
  %sub = add i32 %22, -1
  %idxprom14 = zext i32 %sub to i64
  %arrayidx15 = getelementptr inbounds ptr, ptr %21, i64 %idxprom14
  store ptr %19, ptr %arrayidx15, align 8
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %23 = load ptr, ptr %frame.addr, align 8
  call void @id3_frame_delref(ptr noundef %23) #9
  br label %return

return:                                           ; preds = %for.end, %while.end
  %storemerge1 = phi i32 [ 0, %while.end ], [ -1, %for.end ]
  ret i32 %storemerge1
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
  %cmp = icmp eq ptr %id, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %id.addr, align 8
  %1 = load i8, ptr %0, align 1
  %cmp1 = icmp eq i8 %1, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load i32, ptr %index.addr, align 4
  %3 = load ptr, ptr %tag.addr, align 8
  %nframes = getelementptr inbounds %struct.id3_tag, ptr %3, i64 0, i32 6
  %4 = load i32, ptr %nframes, align 8
  %cmp3 = icmp ult i32 %2, %4
  br i1 %cmp3, label %cond.true, label %cond.end

cond.true:                                        ; preds = %if.then
  %5 = load ptr, ptr %tag.addr, align 8
  %frames = getelementptr inbounds %struct.id3_tag, ptr %5, i64 0, i32 7
  %6 = load ptr, ptr %frames, align 8
  %7 = load i32, ptr %index.addr, align 4
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %idxprom
  %8 = load ptr, ptr %arrayidx, align 8
  br label %cond.end

cond.end:                                         ; preds = %if.then, %cond.true
  %cond = phi ptr [ %8, %cond.true ], [ null, %if.then ]
  store ptr %cond, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %9 = load ptr, ptr %id.addr, align 8
  %call = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %9) #9
  %conv5 = trunc i64 %call to i32
  store i32 %conv5, ptr %len, align 4
  %cmp6 = icmp eq i32 %conv5, 4
  br i1 %cmp6, label %if.then8, label %if.end18

if.then8:                                         ; preds = %if.end
  %10 = load ptr, ptr %id.addr, align 8
  %11 = load i32, ptr %len, align 4
  %call9 = call ptr @id3_compat_lookup(ptr noundef %10, i32 noundef %11) #9
  store ptr %call9, ptr %compat, align 8
  %tobool.not = icmp eq ptr %call9, null
  br i1 %tobool.not, label %if.end18, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then8
  %12 = load ptr, ptr %compat, align 8
  %equiv = getelementptr inbounds %struct.id3_compat, ptr %12, i64 0, i32 1
  %13 = load ptr, ptr %equiv, align 8
  %tobool10.not = icmp eq ptr %13, null
  br i1 %tobool10.not, label %if.end18, label %land.lhs.true11

land.lhs.true11:                                  ; preds = %land.lhs.true
  %14 = load ptr, ptr %compat, align 8
  %translate = getelementptr inbounds %struct.id3_compat, ptr %14, i64 0, i32 2
  %15 = load ptr, ptr %translate, align 8
  %tobool12.not = icmp eq ptr %15, null
  br i1 %tobool12.not, label %if.then13, label %if.end18

if.then13:                                        ; preds = %land.lhs.true11
  %16 = load ptr, ptr %compat, align 8
  %equiv14 = getelementptr inbounds %struct.id3_compat, ptr %16, i64 0, i32 1
  %17 = load ptr, ptr %equiv14, align 8
  store ptr %17, ptr %id.addr, align 8
  %call15 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %17) #9
  %conv16 = trunc i64 %call15 to i32
  store i32 %conv16, ptr %len, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then8, %land.lhs.true, %land.lhs.true11, %if.then13, %if.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end18
  %storemerge = phi i32 [ 0, %if.end18 ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr %i, align 4
  %18 = load ptr, ptr %tag.addr, align 8
  %nframes19 = getelementptr inbounds %struct.id3_tag, ptr %18, i64 0, i32 6
  %19 = load i32, ptr %nframes19, align 8
  %cmp20 = icmp ult i32 %storemerge, %19
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load ptr, ptr %tag.addr, align 8
  %frames22 = getelementptr inbounds %struct.id3_tag, ptr %20, i64 0, i32 7
  %21 = load ptr, ptr %frames22, align 8
  %22 = load i32, ptr %i, align 4
  %idxprom23 = zext i32 %22 to i64
  %arrayidx24 = getelementptr inbounds ptr, ptr %21, i64 %idxprom23
  %23 = load ptr, ptr %arrayidx24, align 8
  %24 = load ptr, ptr %id.addr, align 8
  %25 = load i32, ptr %len, align 4
  %conv26 = zext i32 %25 to i64
  %call27 = call i32 @strncmp(ptr noundef %23, ptr noundef %24, i64 noundef %conv26) #9
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %land.lhs.true30, label %for.inc

land.lhs.true30:                                  ; preds = %for.body
  %26 = load i32, ptr %index.addr, align 4
  %dec = add i32 %26, -1
  store i32 %dec, ptr %index.addr, align 4
  %cmp31 = icmp eq i32 %26, 0
  br i1 %cmp31, label %if.then33, label %for.inc

if.then33:                                        ; preds = %land.lhs.true30
  %27 = load ptr, ptr %tag.addr, align 8
  %frames34 = getelementptr inbounds %struct.id3_tag, ptr %27, i64 0, i32 7
  %28 = load ptr, ptr %frames34, align 8
  %29 = load i32, ptr %i, align 4
  %idxprom35 = zext i32 %29 to i64
  %arrayidx36 = getelementptr inbounds ptr, ptr %28, i64 %idxprom35
  %30 = load ptr, ptr %arrayidx36, align 8
  store ptr %30, ptr %retval, align 8
  br label %return

for.inc:                                          ; preds = %for.body, %land.lhs.true30
  %31 = load i32, ptr %i, align 4
  %inc = add i32 %31, 1
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then33, %cond.end
  %32 = load ptr, ptr %retval, align 8
  ret ptr %32
}

declare i64 @strlen(ptr noundef) #2

declare ptr @id3_compat_lookup(ptr noundef, i32 noundef) #2

declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind ssp uwtable
define i64 @id3_tag_query(ptr noundef %data, i64 noundef %length) #0 {
entry:
  %retval = alloca i64, align 8
  %data.addr = alloca ptr, align 8
  %version = alloca i32, align 4
  %flags = alloca i32, align 4
  %size = alloca i64, align 8
  store ptr %data, ptr %data.addr, align 8
  %call = call i32 @tagtype(ptr noundef %data, i64 noundef %length)
  switch i32 %call, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  store i64 128, ptr %retval, align 8
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @parse_header(ptr noundef nonnull %data.addr, ptr noundef nonnull %version, ptr noundef nonnull %flags, ptr noundef nonnull %size)
  %0 = load i32, ptr %flags, align 4
  %and = and i32 %0, 16
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb1
  %1 = load i64, ptr %size, align 8
  %add = add i64 %1, 10
  store i64 %add, ptr %size, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb1
  %2 = load i64, ptr %size, align 8
  %add2 = add i64 %2, 10
  store i64 %add2, ptr %retval, align 8
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @parse_header(ptr noundef nonnull %data.addr, ptr noundef nonnull %version, ptr noundef nonnull %flags, ptr noundef nonnull %size)
  %3 = load i64, ptr %size, align 8
  %sub4 = sub i64 -10, %3
  store i64 %sub4, ptr %retval, align 8
  br label %return

sw.epilog:                                        ; preds = %entry
  store i64 0, ptr %retval, align 8
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb3, %if.end, %sw.bb
  %4 = load i64, ptr %retval, align 8
  ret i64 %4
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @tagtype(ptr noundef %data, i64 noundef %length) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  store ptr %data, ptr %data.addr, align 8
  store i64 %length, ptr %length.addr, align 8
  %cmp = icmp ugt i64 %length, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %0 = load ptr, ptr %data.addr, align 8
  %1 = load i8, ptr %0, align 1
  %cmp1 = icmp eq i8 %1, 84
  br i1 %cmp1, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %2 = load ptr, ptr %data.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %2, i64 1
  %3 = load i8, ptr %arrayidx4, align 1
  %cmp6 = icmp eq i8 %3, 65
  br i1 %cmp6, label %land.lhs.true8, label %if.end

land.lhs.true8:                                   ; preds = %land.lhs.true3
  %4 = load ptr, ptr %data.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %4, i64 2
  %5 = load i8, ptr %arrayidx9, align 1
  %cmp11 = icmp eq i8 %5, 71
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true8
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true8, %land.lhs.true3, %land.lhs.true, %entry
  %6 = load i64, ptr %length.addr, align 8
  %cmp13 = icmp ugt i64 %6, 9
  br i1 %cmp13, label %land.lhs.true15, label %if.end79

land.lhs.true15:                                  ; preds = %if.end
  %7 = load ptr, ptr %data.addr, align 8
  %8 = load i8, ptr %7, align 1
  %cmp18 = icmp eq i8 %8, 73
  br i1 %cmp18, label %land.lhs.true20, label %lor.lhs.false

land.lhs.true20:                                  ; preds = %land.lhs.true15
  %9 = load ptr, ptr %data.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, ptr %9, i64 1
  %10 = load i8, ptr %arrayidx21, align 1
  %cmp23 = icmp eq i8 %10, 68
  br i1 %cmp23, label %land.lhs.true25, label %lor.lhs.false

land.lhs.true25:                                  ; preds = %land.lhs.true20
  %11 = load ptr, ptr %data.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, ptr %11, i64 2
  %12 = load i8, ptr %arrayidx26, align 1
  %cmp28 = icmp eq i8 %12, 51
  br i1 %cmp28, label %land.lhs.true44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true25, %land.lhs.true20, %land.lhs.true15
  %13 = load ptr, ptr %data.addr, align 8
  %14 = load i8, ptr %13, align 1
  %cmp32 = icmp eq i8 %14, 51
  br i1 %cmp32, label %land.lhs.true34, label %if.end79

land.lhs.true34:                                  ; preds = %lor.lhs.false
  %15 = load ptr, ptr %data.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, ptr %15, i64 1
  %16 = load i8, ptr %arrayidx35, align 1
  %cmp37 = icmp eq i8 %16, 68
  br i1 %cmp37, label %land.lhs.true39, label %if.end79

land.lhs.true39:                                  ; preds = %land.lhs.true34
  %17 = load ptr, ptr %data.addr, align 8
  %arrayidx40 = getelementptr inbounds i8, ptr %17, i64 2
  %18 = load i8, ptr %arrayidx40, align 1
  %cmp42 = icmp eq i8 %18, 73
  br i1 %cmp42, label %land.lhs.true44, label %if.end79

land.lhs.true44:                                  ; preds = %land.lhs.true39, %land.lhs.true25
  %19 = load ptr, ptr %data.addr, align 8
  %arrayidx45 = getelementptr inbounds i8, ptr %19, i64 3
  %20 = load i8, ptr %arrayidx45, align 1
  %cmp47.not = icmp eq i8 %20, -1
  br i1 %cmp47.not, label %if.end79, label %land.lhs.true49

land.lhs.true49:                                  ; preds = %land.lhs.true44
  %21 = load ptr, ptr %data.addr, align 8
  %arrayidx50 = getelementptr inbounds i8, ptr %21, i64 4
  %22 = load i8, ptr %arrayidx50, align 1
  %cmp52.not = icmp eq i8 %22, -1
  br i1 %cmp52.not, label %if.end79, label %land.lhs.true54

land.lhs.true54:                                  ; preds = %land.lhs.true49
  %23 = load ptr, ptr %data.addr, align 8
  %arrayidx55 = getelementptr inbounds i8, ptr %23, i64 6
  %24 = load i8, ptr %arrayidx55, align 1
  %cmp57 = icmp sgt i8 %24, -1
  br i1 %cmp57, label %land.lhs.true59, label %if.end79

land.lhs.true59:                                  ; preds = %land.lhs.true54
  %25 = load ptr, ptr %data.addr, align 8
  %arrayidx60 = getelementptr inbounds i8, ptr %25, i64 7
  %26 = load i8, ptr %arrayidx60, align 1
  %cmp62 = icmp sgt i8 %26, -1
  br i1 %cmp62, label %land.lhs.true64, label %if.end79

land.lhs.true64:                                  ; preds = %land.lhs.true59
  %27 = load ptr, ptr %data.addr, align 8
  %arrayidx65 = getelementptr inbounds i8, ptr %27, i64 8
  %28 = load i8, ptr %arrayidx65, align 1
  %cmp67 = icmp sgt i8 %28, -1
  br i1 %cmp67, label %land.lhs.true69, label %if.end79

land.lhs.true69:                                  ; preds = %land.lhs.true64
  %29 = load ptr, ptr %data.addr, align 8
  %arrayidx70 = getelementptr inbounds i8, ptr %29, i64 9
  %30 = load i8, ptr %arrayidx70, align 1
  %cmp72 = icmp sgt i8 %30, -1
  br i1 %cmp72, label %if.then74, label %if.end79

if.then74:                                        ; preds = %land.lhs.true69
  %31 = load ptr, ptr %data.addr, align 8
  %32 = load i8, ptr %31, align 1
  %cmp77 = icmp eq i8 %32, 73
  %cond = select i1 %cmp77, i32 2, i32 3
  store i32 %cond, ptr %retval, align 4
  br label %return

if.end79:                                         ; preds = %land.lhs.true69, %land.lhs.true64, %land.lhs.true59, %land.lhs.true54, %land.lhs.true49, %land.lhs.true44, %land.lhs.true39, %land.lhs.true34, %lor.lhs.false, %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end79, %if.then74, %if.then
  %33 = load i32, ptr %retval, align 4
  ret i32 %33
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
  %0 = load ptr, ptr %ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 3
  store ptr %add.ptr, ptr %ptr, align 8
  %1 = load ptr, ptr %ptr.addr, align 8
  %call = call i64 @id3_parse_uint(ptr noundef %1, i32 noundef 2) #9
  %conv = trunc i64 %call to i32
  %2 = load ptr, ptr %version.addr, align 8
  store i32 %conv, ptr %2, align 4
  %call1 = call i64 @id3_parse_uint(ptr noundef %1, i32 noundef 1) #9
  %conv2 = trunc i64 %call1 to i32
  %3 = load ptr, ptr %flags.addr, align 8
  store i32 %conv2, ptr %3, align 4
  %4 = load ptr, ptr %ptr.addr, align 8
  %call3 = call i64 @id3_parse_syncsafe(ptr noundef %4, i32 noundef 4) #9
  %5 = load ptr, ptr %size.addr, align 8
  store i64 %call3, ptr %5, align 8
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
  %call = call i32 @tagtype(ptr noundef %data, i64 noundef %length)
  switch i32 %call, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %sw.bb3
    i32 3, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  %0 = load i64, ptr %length.addr, align 8
  %cmp = icmp ult i64 %0, 128
  br i1 %cmp, label %cond.end, label %cond.false

cond.false:                                       ; preds = %sw.bb
  %1 = load ptr, ptr %data.addr, align 8
  %call1 = call ptr @v1_parse(ptr noundef %1)
  br label %cond.end

cond.end:                                         ; preds = %sw.bb, %cond.false
  %cond = phi ptr [ %call1, %cond.false ], [ null, %sw.bb ]
  store ptr %cond, ptr %retval, align 8
  br label %return

sw.bb3:                                           ; preds = %entry, %entry
  store ptr null, ptr %retval, align 8
  br label %return

sw.epilog:                                        ; preds = %entry
  %2 = load ptr, ptr %data.addr, align 8
  store ptr %2, ptr %ptr, align 8
  call void @parse_header(ptr noundef nonnull %ptr, ptr noundef nonnull %version, ptr noundef nonnull %flags, ptr noundef nonnull %size)
  %3 = load i32, ptr %version, align 4
  %shr = lshr i32 %3, 8
  %trunc = trunc i32 %shr to i8
  switch i8 %trunc, label %sw.epilog14 [
    i8 4, label %sw.bb4
    i8 2, label %sw.bb6
    i8 3, label %sw.bb6
  ]

sw.bb4:                                           ; preds = %sw.epilog
  %4 = load i32, ptr %flags, align 4
  %and5 = and i32 %4, 16
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %sw.bb6, label %if.then

if.then:                                          ; preds = %sw.bb4
  %5 = load i64, ptr %size, align 8
  %add = add i64 %5, 10
  store i64 %add, ptr %size, align 8
  br label %sw.bb6

sw.bb6:                                           ; preds = %sw.bb4, %if.then, %sw.epilog, %sw.epilog
  %6 = load i64, ptr %length.addr, align 8
  %7 = load i64, ptr %size, align 8
  %add7 = add i64 %7, 10
  %cmp8 = icmp ult i64 %6, %add7
  br i1 %cmp8, label %cond.end12, label %cond.false10

cond.false10:                                     ; preds = %sw.bb6
  %8 = load ptr, ptr %data.addr, align 8
  %call11 = call ptr @v2_parse(ptr noundef %8)
  br label %cond.end12

cond.end12:                                       ; preds = %sw.bb6, %cond.false10
  %cond13 = phi ptr [ %call11, %cond.false10 ], [ null, %sw.bb6 ]
  store ptr %cond13, ptr %retval, align 8
  br label %return

sw.epilog14:                                      ; preds = %sw.epilog
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %sw.epilog14, %cond.end12, %sw.bb3, %cond.end
  %9 = load ptr, ptr %retval, align 8
  ret ptr %9
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @v1_parse(ptr noundef %data) #0 {
entry:
  %data.addr = alloca ptr, align 8
  %tag = alloca ptr, align 8
  %title = alloca [31 x i8], align 1
  %artist = alloca [31 x i8], align 1
  %album = alloca [31 x i8], align 1
  %year = alloca [5 x i8], align 4
  %comment = alloca [31 x i8], align 1
  %genre = alloca i32, align 4
  %track = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8
  %call = call ptr @id3_tag_new()
  store ptr %call, ptr %tag, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end67, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %tag, align 8
  %version = getelementptr inbounds %struct.id3_tag, ptr %0, i64 0, i32 1
  store i32 256, ptr %version, align 4
  %options = getelementptr inbounds %struct.id3_tag, ptr %0, i64 0, i32 5
  %1 = load i32, ptr %options, align 4
  %or = or i32 %1, 256
  store i32 %or, ptr %options, align 4
  %2 = load ptr, ptr %tag, align 8
  %options1 = getelementptr inbounds %struct.id3_tag, ptr %2, i64 0, i32 5
  %3 = load i32, ptr %options1, align 4
  %and = and i32 %3, -3
  store i32 %and, ptr %options1, align 4
  %restrictions = getelementptr inbounds %struct.id3_tag, ptr %2, i64 0, i32 4
  store i32 56, ptr %restrictions, align 8
  %arrayidx = getelementptr inbounds [31 x i8], ptr %comment, i64 0, i64 30
  store i8 0, ptr %arrayidx, align 1
  %arrayidx2 = getelementptr inbounds [5 x i8], ptr %year, i64 0, i64 4
  store i8 0, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr inbounds [31 x i8], ptr %album, i64 0, i64 30
  store i8 0, ptr %arrayidx3, align 1
  %arrayidx4 = getelementptr inbounds [31 x i8], ptr %artist, i64 0, i64 30
  store i8 0, ptr %arrayidx4, align 1
  %arrayidx5 = getelementptr inbounds [31 x i8], ptr %title, i64 0, i64 30
  store i8 0, ptr %arrayidx5, align 1
  %4 = load ptr, ptr %data.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %4, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %title, ptr noundef nonnull align 1 dereferenceable(30) %arrayidx6, i64 30, i1 false)
  %arrayidx8 = getelementptr inbounds i8, ptr %4, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %artist, ptr noundef nonnull align 1 dereferenceable(30) %arrayidx8, i64 30, i1 false)
  %arrayidx10 = getelementptr inbounds i8, ptr %4, i64 63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %album, ptr noundef nonnull align 1 dereferenceable(30) %arrayidx10, i64 30, i1 false)
  %5 = load ptr, ptr %data.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %5, i64 93
  %6 = load i32, ptr %arrayidx12, align 1
  store i32 %6, ptr %year, align 4
  %arrayidx14 = getelementptr inbounds i8, ptr %5, i64 97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %comment, ptr noundef nonnull align 1 dereferenceable(30) %arrayidx14, i64 30, i1 false)
  %arrayidx15 = getelementptr inbounds i8, ptr %5, i64 127
  %7 = load i8, ptr %arrayidx15, align 1
  %conv = zext i8 %7 to i32
  store i32 %conv, ptr %genre, align 4
  store i32 0, ptr %track, align 4
  %arrayidx16 = getelementptr inbounds [31 x i8], ptr %comment, i64 0, i64 28
  %8 = load i8, ptr %arrayidx16, align 1
  %cmp = icmp ne i8 %8, 0
  %arrayidx19 = getelementptr inbounds [31 x i8], ptr %comment, i64 0, i64 29
  %9 = load i8, ptr %arrayidx19, align 1
  %cmp21.not = icmp eq i8 %9, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp21.not
  br i1 %or.cond, label %if.end, label %if.then23

if.then23:                                        ; preds = %if.then
  %arrayidx24 = getelementptr inbounds [31 x i8], ptr %comment, i64 0, i64 29
  %10 = load i8, ptr %arrayidx24, align 1
  %conv25 = sext i8 %10 to i32
  store i32 %conv25, ptr %track, align 4
  %11 = load ptr, ptr %tag, align 8
  %version26 = getelementptr inbounds %struct.id3_tag, ptr %11, i64 0, i32 1
  store i32 257, ptr %version26, align 4
  br label %if.end

if.end:                                           ; preds = %if.then23, %if.then
  %12 = load ptr, ptr %tag, align 8
  %call28 = call i32 @v1_attachstr(ptr noundef %12, ptr noundef nonnull @.str.2, ptr noundef nonnull %title, i64 noundef 0)
  %cmp29 = icmp eq i32 %call28, -1
  br i1 %cmp29, label %if.then65, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %13 = load ptr, ptr %tag, align 8
  %call32 = call i32 @v1_attachstr(ptr noundef %13, ptr noundef nonnull @.str.3, ptr noundef nonnull %artist, i64 noundef 0)
  %cmp33 = icmp eq i32 %call32, -1
  br i1 %cmp33, label %if.then65, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %lor.lhs.false
  %14 = load ptr, ptr %tag, align 8
  %call37 = call i32 @v1_attachstr(ptr noundef %14, ptr noundef nonnull @.str.4, ptr noundef nonnull %album, i64 noundef 0)
  %cmp38 = icmp eq i32 %call37, -1
  br i1 %cmp38, label %if.then65, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %lor.lhs.false35
  %15 = load ptr, ptr %tag, align 8
  %call42 = call i32 @v1_attachstr(ptr noundef %15, ptr noundef nonnull @.str.5, ptr noundef nonnull %year, i64 noundef 0)
  %cmp43 = icmp eq i32 %call42, -1
  br i1 %cmp43, label %if.then65, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %lor.lhs.false40
  %16 = load i32, ptr %track, align 4
  %tobool46.not = icmp eq i32 %16, 0
  br i1 %tobool46.not, label %lor.lhs.false52, label %land.lhs.true47

land.lhs.true47:                                  ; preds = %lor.lhs.false45
  %17 = load ptr, ptr %tag, align 8
  %18 = load i32, ptr %track, align 4
  %conv48 = zext i32 %18 to i64
  %call49 = call i32 @v1_attachstr(ptr noundef %17, ptr noundef nonnull @.str.6, ptr noundef null, i64 noundef %conv48)
  %cmp50 = icmp eq i32 %call49, -1
  br i1 %cmp50, label %if.then65, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %land.lhs.true47, %lor.lhs.false45
  %19 = load i32, ptr %genre, align 4
  %cmp53 = icmp ult i32 %19, 255
  br i1 %cmp53, label %land.lhs.true55, label %lor.lhs.false60

land.lhs.true55:                                  ; preds = %lor.lhs.false52
  %20 = load ptr, ptr %tag, align 8
  %21 = load i32, ptr %genre, align 4
  %conv56 = zext i32 %21 to i64
  %call57 = call i32 @v1_attachstr(ptr noundef %20, ptr noundef nonnull @.str.7, ptr noundef null, i64 noundef %conv56)
  %cmp58 = icmp eq i32 %call57, -1
  br i1 %cmp58, label %if.then65, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %land.lhs.true55, %lor.lhs.false52
  %22 = load ptr, ptr %tag, align 8
  %call62 = call i32 @v1_attachstr(ptr noundef %22, ptr noundef nonnull @.str.8, ptr noundef nonnull %comment, i64 noundef 0)
  %cmp63 = icmp eq i32 %call62, -1
  br i1 %cmp63, label %if.then65, label %if.end67

if.then65:                                        ; preds = %lor.lhs.false60, %land.lhs.true55, %land.lhs.true47, %lor.lhs.false40, %lor.lhs.false35, %lor.lhs.false, %if.end
  %23 = load ptr, ptr %tag, align 8
  call void @id3_tag_delete(ptr noundef %23)
  br label %return

if.end67:                                         ; preds = %lor.lhs.false60, %entry
  %24 = load ptr, ptr %tag, align 8
  br label %return

return:                                           ; preds = %if.end67, %if.then65
  %storemerge = phi ptr [ %24, %if.end67 ], [ null, %if.then65 ]
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @v2_parse(ptr noundef %ptr) #0 {
entry:
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
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end218, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %tag, align 8
  %version = getelementptr inbounds %struct.id3_tag, ptr %0, i64 0, i32 1
  %flags = getelementptr inbounds %struct.id3_tag, ptr %0, i64 0, i32 2
  call void @parse_header(ptr noundef nonnull %ptr.addr, ptr noundef nonnull %version, ptr noundef nonnull %flags, ptr noundef nonnull %size)
  %1 = load i64, ptr %size, align 8
  %add = add i64 %1, 10
  %paddedsize = getelementptr inbounds %struct.id3_tag, ptr %0, i64 0, i32 8
  store i64 %add, ptr %paddedsize, align 8
  %2 = load ptr, ptr %tag, align 8
  %flags1 = getelementptr inbounds %struct.id3_tag, ptr %2, i64 0, i32 2
  %3 = load i32, ptr %flags1, align 8
  %and = and i32 %3, 128
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end11, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %4 = load ptr, ptr %tag, align 8
  %version3 = getelementptr inbounds %struct.id3_tag, ptr %4, i64 0, i32 1
  %5 = load i32, ptr %version3, align 4
  %6 = and i32 %5, 64512
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then5, label %if.end11

if.then5:                                         ; preds = %land.lhs.true
  %7 = load i64, ptr %size, align 8
  %call6 = call ptr @malloc(i64 noundef %7) #8
  store ptr %call6, ptr %mem, align 8
  %cmp7 = icmp eq ptr %call6, null
  br i1 %cmp7, label %fail, label %if.end

if.end:                                           ; preds = %if.then5
  %8 = load ptr, ptr %mem, align 8
  %9 = load ptr, ptr %ptr.addr, align 8
  %10 = load i64, ptr %size, align 8
  %11 = call i64 @llvm.objectsize.i64.p0(ptr %8, i1 false, i1 true, i1 false)
  %call9 = call ptr @__memcpy_chk(ptr noundef %8, ptr noundef %9, i64 noundef %10, i64 noundef %11) #9
  %12 = load i64, ptr %size, align 8
  %call10 = call i64 @id3_util_deunsynchronise(ptr noundef %8, i64 noundef %12) #9
  store i64 %call10, ptr %size, align 8
  %13 = load ptr, ptr %mem, align 8
  store ptr %13, ptr %ptr.addr, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.end, %land.lhs.true, %if.then
  %14 = load ptr, ptr %ptr.addr, align 8
  %15 = load i64, ptr %size, align 8
  %add.ptr = getelementptr inbounds i8, ptr %14, i64 %15
  store ptr %add.ptr, ptr %end, align 8
  %16 = load ptr, ptr %tag, align 8
  %flags12 = getelementptr inbounds %struct.id3_tag, ptr %16, i64 0, i32 2
  %17 = load i32, ptr %flags12, align 8
  %and13 = and i32 %17, 64
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end183, label %if.then15

if.then15:                                        ; preds = %if.end11
  %18 = load ptr, ptr %tag, align 8
  %version16 = getelementptr inbounds %struct.id3_tag, ptr %18, i64 0, i32 1
  %19 = load i32, ptr %version16, align 4
  %shr17 = lshr i32 %19, 8
  %trunc = trunc i32 %shr17 to i8
  switch i8 %trunc, label %if.end183 [
    i8 2, label %fail
    i8 3, label %sw.bb19
    i8 4, label %sw.bb67
  ]

sw.bb19:                                          ; preds = %if.then15
  %20 = load ptr, ptr %end, align 8
  %21 = load ptr, ptr %ptr.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %20 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %21 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp20 = icmp slt i64 %sub.ptr.sub, 4
  br i1 %cmp20, label %fail, label %if.end22

if.end22:                                         ; preds = %sw.bb19
  %call23 = call i64 @id3_parse_uint(ptr noundef nonnull %ptr.addr, i32 noundef 4) #9
  store i64 %call23, ptr %ehsize, align 8
  %22 = load ptr, ptr %end, align 8
  %23 = load ptr, ptr %ptr.addr, align 8
  %sub.ptr.lhs.cast24 = ptrtoint ptr %22 to i64
  %sub.ptr.rhs.cast25 = ptrtoint ptr %23 to i64
  %sub.ptr.sub26 = sub i64 %sub.ptr.lhs.cast24, %sub.ptr.rhs.cast25
  %cmp27 = icmp ugt i64 %call23, %sub.ptr.sub26
  br i1 %cmp27, label %fail, label %if.end29

if.end29:                                         ; preds = %if.end22
  %24 = load ptr, ptr %ptr.addr, align 8
  store ptr %24, ptr %ehptr, align 8
  %25 = load i64, ptr %ehsize, align 8
  %add.ptr30 = getelementptr inbounds i8, ptr %24, i64 %25
  store ptr %add.ptr30, ptr %ehend, align 8
  store ptr %add.ptr30, ptr %ptr.addr, align 8
  %cmp34 = icmp sgt i64 %25, 5
  br i1 %cmp34, label %if.then35, label %if.end183

if.then35:                                        ; preds = %if.end29
  %call36 = call i64 @id3_parse_uint(ptr noundef nonnull %ehptr, i32 noundef 2) #9
  %conv = trunc i64 %call36 to i32
  store i32 %conv, ptr %ehflags, align 4
  %call37 = call i64 @id3_parse_uint(ptr noundef nonnull %ehptr, i32 noundef 4) #9
  store i64 %call37, ptr %padsize, align 8
  %26 = load ptr, ptr %end, align 8
  %27 = load ptr, ptr %ptr.addr, align 8
  %sub.ptr.lhs.cast38 = ptrtoint ptr %26 to i64
  %sub.ptr.rhs.cast39 = ptrtoint ptr %27 to i64
  %sub.ptr.sub40 = sub i64 %sub.ptr.lhs.cast38, %sub.ptr.rhs.cast39
  %cmp41 = icmp ugt i64 %call37, %sub.ptr.sub40
  br i1 %cmp41, label %fail, label %if.end44

if.end44:                                         ; preds = %if.then35
  %28 = load i64, ptr %padsize, align 8
  %29 = load ptr, ptr %end, align 8
  %idx.neg = sub i64 0, %28
  %add.ptr45 = getelementptr inbounds i8, ptr %29, i64 %idx.neg
  store ptr %add.ptr45, ptr %end, align 8
  %30 = load i32, ptr %ehflags, align 4
  %and46 = and i32 %30, 32768
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end183, label %if.then48

if.then48:                                        ; preds = %if.end44
  %31 = load ptr, ptr %ehend, align 8
  %32 = load ptr, ptr %ehptr, align 8
  %sub.ptr.lhs.cast49 = ptrtoint ptr %31 to i64
  %sub.ptr.rhs.cast50 = ptrtoint ptr %32 to i64
  %sub.ptr.sub51 = sub i64 %sub.ptr.lhs.cast49, %sub.ptr.rhs.cast50
  %cmp52 = icmp slt i64 %sub.ptr.sub51, 4
  br i1 %cmp52, label %fail, label %if.end55

if.end55:                                         ; preds = %if.then48
  %call56 = call i64 @id3_parse_uint(ptr noundef nonnull %ehptr, i32 noundef 4) #9
  %33 = load ptr, ptr %ptr.addr, align 8
  %34 = load ptr, ptr %end, align 8
  %sub.ptr.lhs.cast57 = ptrtoint ptr %34 to i64
  %sub.ptr.rhs.cast58 = ptrtoint ptr %33 to i64
  %sub.ptr.sub59 = sub i64 %sub.ptr.lhs.cast57, %sub.ptr.rhs.cast58
  %call60 = call i64 @id3_crc_calculate(ptr noundef %33, i64 noundef %sub.ptr.sub59) #9
  %cmp61.not = icmp eq i64 %call56, %call60
  br i1 %cmp61.not, label %if.end64, label %fail

if.end64:                                         ; preds = %if.end55
  %35 = load ptr, ptr %tag, align 8
  %extendedflags = getelementptr inbounds %struct.id3_tag, ptr %35, i64 0, i32 3
  %36 = load i32, ptr %extendedflags, align 4
  %or = or i32 %36, 32
  store i32 %or, ptr %extendedflags, align 4
  br label %if.end183

sw.bb67:                                          ; preds = %if.then15
  %37 = load ptr, ptr %end, align 8
  %38 = load ptr, ptr %ptr.addr, align 8
  %sub.ptr.lhs.cast71 = ptrtoint ptr %37 to i64
  %sub.ptr.rhs.cast72 = ptrtoint ptr %38 to i64
  %sub.ptr.sub73 = sub i64 %sub.ptr.lhs.cast71, %sub.ptr.rhs.cast72
  %cmp74 = icmp slt i64 %sub.ptr.sub73, 4
  br i1 %cmp74, label %fail, label %if.end77

if.end77:                                         ; preds = %sw.bb67
  %39 = load ptr, ptr %ptr.addr, align 8
  store ptr %39, ptr %ehptr68, align 8
  %call78 = call i64 @id3_parse_syncsafe(ptr noundef nonnull %ptr.addr, i32 noundef 4) #9
  store i64 %call78, ptr %ehsize70, align 8
  %cmp79 = icmp ult i64 %call78, 6
  br i1 %cmp79, label %fail, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end77
  %40 = load i64, ptr %ehsize70, align 8
  %41 = load ptr, ptr %end, align 8
  %42 = load ptr, ptr %ehptr68, align 8
  %sub.ptr.lhs.cast81 = ptrtoint ptr %41 to i64
  %sub.ptr.rhs.cast82 = ptrtoint ptr %42 to i64
  %sub.ptr.sub83 = sub i64 %sub.ptr.lhs.cast81, %sub.ptr.rhs.cast82
  %cmp84 = icmp ugt i64 %40, %sub.ptr.sub83
  br i1 %cmp84, label %fail, label %if.end87

if.end87:                                         ; preds = %lor.lhs.false
  %43 = load ptr, ptr %ehptr68, align 8
  %44 = load i64, ptr %ehsize70, align 8
  %add.ptr88 = getelementptr inbounds i8, ptr %43, i64 %44
  store ptr %add.ptr88, ptr %ehend69, align 8
  %call89 = call i64 @id3_parse_uint(ptr noundef nonnull %ptr.addr, i32 noundef 1) #9
  %conv90 = trunc i64 %call89 to i32
  store i32 %conv90, ptr %bytes, align 4
  %cmp91 = icmp eq i32 %conv90, 0
  br i1 %cmp91, label %fail, label %lor.lhs.false93

lor.lhs.false93:                                  ; preds = %if.end87
  %45 = load i32, ptr %bytes, align 4
  %conv94 = zext i32 %45 to i64
  %46 = load ptr, ptr %ehend69, align 8
  %47 = load ptr, ptr %ptr.addr, align 8
  %sub.ptr.lhs.cast95 = ptrtoint ptr %46 to i64
  %sub.ptr.rhs.cast96 = ptrtoint ptr %47 to i64
  %sub.ptr.sub97 = sub i64 %sub.ptr.lhs.cast95, %sub.ptr.rhs.cast96
  %cmp98 = icmp slt i64 %sub.ptr.sub97, %conv94
  br i1 %cmp98, label %fail, label %if.end101

if.end101:                                        ; preds = %lor.lhs.false93
  %48 = load ptr, ptr %ptr.addr, align 8
  %49 = load i32, ptr %bytes, align 4
  %idx.ext = zext i32 %49 to i64
  %add.ptr102 = getelementptr inbounds i8, ptr %48, i64 %idx.ext
  store ptr %add.ptr102, ptr %ehptr68, align 8
  store ptr %48, ptr %flagsptr, align 8
  store ptr %add.ptr102, ptr %dataptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.cond, %if.end101
  %50 = load i32, ptr %bytes, align 4
  %dec = add i32 %50, -1
  store i32 %dec, ptr %bytes, align 4
  %tobool104.not = icmp eq i32 %50, 0
  br i1 %tobool104.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %call105 = call i64 @id3_parse_uint(ptr noundef nonnull %flagsptr, i32 noundef 1) #9
  %conv106 = trunc i64 %call105 to i32
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %storemerge1 = phi i32 [ %conv106, %while.body ], [ %and131, %for.inc ]
  store i32 %storemerge1, ptr %ehflags103, align 4
  %tobool107.not = icmp eq i32 %storemerge1, 0
  br i1 %tobool107.not, label %while.cond, label %for.body, !llvm.loop !11

for.body:                                         ; preds = %for.cond
  %51 = load i32, ptr %ehflags103, align 4
  %and108 = and i32 %51, 128
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %for.inc, label %if.then110

if.then110:                                       ; preds = %for.body
  %52 = load ptr, ptr %dataptr, align 8
  %53 = load ptr, ptr %ehend69, align 8
  %cmp111 = icmp eq ptr %52, %53
  br i1 %cmp111, label %fail, label %if.end114

if.end114:                                        ; preds = %if.then110
  %call115 = call i64 @id3_parse_uint(ptr noundef nonnull %dataptr, i32 noundef 1) #9
  %conv116 = trunc i64 %call115 to i32
  store i32 %conv116, ptr %datalen, align 4
  %cmp117 = icmp ugt i32 %conv116, 127
  br i1 %cmp117, label %fail, label %lor.lhs.false119

lor.lhs.false119:                                 ; preds = %if.end114
  %54 = load i32, ptr %datalen, align 4
  %conv120 = zext i32 %54 to i64
  %55 = load ptr, ptr %ehend69, align 8
  %56 = load ptr, ptr %dataptr, align 8
  %sub.ptr.lhs.cast121 = ptrtoint ptr %55 to i64
  %sub.ptr.rhs.cast122 = ptrtoint ptr %56 to i64
  %sub.ptr.sub123 = sub i64 %sub.ptr.lhs.cast121, %sub.ptr.rhs.cast122
  %cmp124 = icmp slt i64 %sub.ptr.sub123, %conv120
  br i1 %cmp124, label %fail, label %if.end127

if.end127:                                        ; preds = %lor.lhs.false119
  %57 = load i32, ptr %datalen, align 4
  %58 = load ptr, ptr %dataptr, align 8
  %idx.ext128 = zext i32 %57 to i64
  %add.ptr129 = getelementptr inbounds i8, ptr %58, i64 %idx.ext128
  store ptr %add.ptr129, ptr %dataptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.end127
  %59 = load i32, ptr %ehflags103, align 4
  %shl = shl i32 %59, 1
  %and131 = and i32 %shl, 254
  br label %for.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  %call132 = call i64 @id3_parse_uint(ptr noundef nonnull %ptr.addr, i32 noundef 1) #9
  %conv133 = trunc i64 %call132 to i32
  %60 = load ptr, ptr %tag, align 8
  %extendedflags134 = getelementptr inbounds %struct.id3_tag, ptr %60, i64 0, i32 3
  store i32 %conv133, ptr %extendedflags134, align 4
  %61 = load ptr, ptr %ehend69, align 8
  store ptr %61, ptr %ptr.addr, align 8
  %and136 = and i32 %conv133, 64
  %tobool137.not = icmp eq i32 %and136, 0
  br i1 %tobool137.not, label %if.end143, label %if.then138

if.then138:                                       ; preds = %while.end
  %call139 = call i64 @id3_parse_uint(ptr noundef nonnull %ehptr68, i32 noundef 1) #9
  %conv140 = trunc i64 %call139 to i32
  store i32 %conv140, ptr %bytes, align 4
  %62 = load ptr, ptr %ehptr68, align 8
  %idx.ext141 = and i64 %call139, 4294967295
  %add.ptr142 = getelementptr inbounds i8, ptr %62, i64 %idx.ext141
  store ptr %add.ptr142, ptr %ehptr68, align 8
  br label %if.end143

if.end143:                                        ; preds = %if.then138, %while.end
  %63 = load ptr, ptr %tag, align 8
  %extendedflags144 = getelementptr inbounds %struct.id3_tag, ptr %63, i64 0, i32 3
  %64 = load i32, ptr %extendedflags144, align 4
  %and145 = and i32 %64, 32
  %tobool146.not = icmp eq i32 %and145, 0
  br i1 %tobool146.not, label %if.end166, label %if.then147

if.then147:                                       ; preds = %if.end143
  %call149 = call i64 @id3_parse_uint(ptr noundef nonnull %ehptr68, i32 noundef 1) #9
  %conv150 = trunc i64 %call149 to i32
  store i32 %conv150, ptr %bytes, align 4
  %cmp151 = icmp ult i32 %conv150, 5
  br i1 %cmp151, label %fail, label %if.end154

if.end154:                                        ; preds = %if.then147
  %call155 = call i64 @id3_parse_syncsafe(ptr noundef nonnull %ehptr68, i32 noundef 5) #9
  store i64 %call155, ptr %crc148, align 8
  %65 = load i32, ptr %bytes, align 4
  %sub = add i32 %65, -5
  %66 = load ptr, ptr %ehptr68, align 8
  %idx.ext156 = zext i32 %sub to i64
  %add.ptr157 = getelementptr inbounds i8, ptr %66, i64 %idx.ext156
  store ptr %add.ptr157, ptr %ehptr68, align 8
  %67 = load i64, ptr %crc148, align 8
  %68 = load ptr, ptr %ptr.addr, align 8
  %69 = load ptr, ptr %end, align 8
  %sub.ptr.lhs.cast158 = ptrtoint ptr %69 to i64
  %sub.ptr.rhs.cast159 = ptrtoint ptr %68 to i64
  %sub.ptr.sub160 = sub i64 %sub.ptr.lhs.cast158, %sub.ptr.rhs.cast159
  %call161 = call i64 @id3_crc_calculate(ptr noundef %68, i64 noundef %sub.ptr.sub160) #9
  %cmp162.not = icmp eq i64 %67, %call161
  br i1 %cmp162.not, label %if.end166, label %fail

if.end166:                                        ; preds = %if.end154, %if.end143
  %70 = load ptr, ptr %tag, align 8
  %extendedflags167 = getelementptr inbounds %struct.id3_tag, ptr %70, i64 0, i32 3
  %71 = load i32, ptr %extendedflags167, align 4
  %and168 = and i32 %71, 16
  %tobool169.not = icmp eq i32 %and168, 0
  br i1 %tobool169.not, label %if.end183, label %if.then170

if.then170:                                       ; preds = %if.end166
  %call171 = call i64 @id3_parse_uint(ptr noundef nonnull %ehptr68, i32 noundef 1) #9
  %conv172 = trunc i64 %call171 to i32
  store i32 %conv172, ptr %bytes, align 4
  %cmp173 = icmp eq i32 %conv172, 0
  br i1 %cmp173, label %fail, label %if.end176

if.end176:                                        ; preds = %if.then170
  %call177 = call i64 @id3_parse_uint(ptr noundef nonnull %ehptr68, i32 noundef 1) #9
  %conv178 = trunc i64 %call177 to i32
  %72 = load ptr, ptr %tag, align 8
  %restrictions = getelementptr inbounds %struct.id3_tag, ptr %72, i64 0, i32 4
  store i32 %conv178, ptr %restrictions, align 8
  %73 = load i32, ptr %bytes, align 4
  %sub179 = add i32 %73, -1
  %74 = load ptr, ptr %ehptr68, align 8
  %idx.ext180 = zext i32 %sub179 to i64
  %add.ptr181 = getelementptr inbounds i8, ptr %74, i64 %idx.ext180
  store ptr %add.ptr181, ptr %ehptr68, align 8
  br label %if.end183

if.end183:                                        ; preds = %if.then15, %if.end44, %if.end64, %if.end29, %if.end176, %if.end166, %if.end11
  br label %while.cond184

while.cond184:                                    ; preds = %lor.lhs.false200, %if.end183
  %75 = load ptr, ptr %ptr.addr, align 8
  %76 = load ptr, ptr %end, align 8
  %cmp185 = icmp ult ptr %75, %76
  br i1 %cmp185, label %while.body187, label %while.end206

while.body187:                                    ; preds = %while.cond184
  %77 = load ptr, ptr %ptr.addr, align 8
  %78 = load i8, ptr %77, align 1
  %cmp189 = icmp eq i8 %78, 0
  br i1 %cmp189, label %while.end206, label %if.end192

if.end192:                                        ; preds = %while.body187
  %79 = load ptr, ptr %end, align 8
  %80 = load ptr, ptr %ptr.addr, align 8
  %sub.ptr.lhs.cast193 = ptrtoint ptr %79 to i64
  %sub.ptr.rhs.cast194 = ptrtoint ptr %80 to i64
  %sub.ptr.sub195 = sub i64 %sub.ptr.lhs.cast193, %sub.ptr.rhs.cast194
  %81 = load ptr, ptr %tag, align 8
  %version196 = getelementptr inbounds %struct.id3_tag, ptr %81, i64 0, i32 1
  %82 = load i32, ptr %version196, align 4
  %call197 = call ptr @id3_frame_parse(ptr noundef nonnull %ptr.addr, i64 noundef %sub.ptr.sub195, i32 noundef %82) #9
  store ptr %call197, ptr %frame, align 8
  %cmp198 = icmp eq ptr %call197, null
  br i1 %cmp198, label %fail, label %lor.lhs.false200

lor.lhs.false200:                                 ; preds = %if.end192
  %83 = load ptr, ptr %tag, align 8
  %84 = load ptr, ptr %frame, align 8
  %call201 = call i32 @id3_tag_attachframe(ptr noundef %83, ptr noundef %84)
  %cmp202 = icmp eq i32 %call201, -1
  br i1 %cmp202, label %fail, label %while.cond184, !llvm.loop !13

while.end206:                                     ; preds = %while.body187, %while.cond184
  %85 = load ptr, ptr %tag, align 8
  %version207 = getelementptr inbounds %struct.id3_tag, ptr %85, i64 0, i32 1
  %86 = load i32, ptr %version207, align 4
  %87 = and i32 %86, 64512
  %cmp210 = icmp eq i32 %87, 0
  br i1 %cmp210, label %land.lhs.true212, label %if.end218

land.lhs.true212:                                 ; preds = %while.end206
  %88 = load ptr, ptr %tag, align 8
  %call213 = call i32 @id3_compat_fixup(ptr noundef %88) #9
  %cmp214 = icmp eq i32 %call213, -1
  br i1 %cmp214, label %fail, label %if.end218

if.end218:                                        ; preds = %while.end206, %land.lhs.true212, %entry
  %89 = load ptr, ptr %mem, align 8
  %tobool219.not = icmp eq ptr %89, null
  br i1 %tobool219.not, label %if.end221, label %if.then220

if.then220:                                       ; preds = %if.end218
  %90 = load ptr, ptr %mem, align 8
  call void @free(ptr noundef %90) #9
  br label %if.end221

if.end221:                                        ; preds = %if.then220, %if.end218
  %91 = load ptr, ptr %tag, align 8
  br label %return

fail:                                             ; preds = %land.lhs.true212, %if.end192, %lor.lhs.false200, %if.then170, %if.end154, %if.then147, %if.end114, %lor.lhs.false119, %if.then110, %if.end87, %lor.lhs.false93, %if.end77, %lor.lhs.false, %sw.bb67, %if.end55, %if.then48, %if.then35, %if.end22, %sw.bb19, %if.then15, %if.then5
  %92 = load ptr, ptr %mem, align 8
  %tobool222.not = icmp eq ptr %92, null
  br i1 %tobool222.not, label %if.end224, label %if.then223

if.then223:                                       ; preds = %fail
  %93 = load ptr, ptr %mem, align 8
  call void @free(ptr noundef %93) #9
  br label %if.end224

if.end224:                                        ; preds = %if.then223, %fail
  %94 = load ptr, ptr %tag, align 8
  call void @id3_tag_delete(ptr noundef %94)
  br label %return

return:                                           ; preds = %if.end224, %if.end221
  %storemerge = phi ptr [ %91, %if.end221 ], [ null, %if.end224 ]
  ret ptr %storemerge
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
  %options = getelementptr inbounds %struct.id3_tag, ptr %0, i64 0, i32 5
  %1 = load i32, ptr %options, align 4
  %and = and i32 %1, 256
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.cond, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %tag.addr, align 8
  %3 = load ptr, ptr %buffer.addr, align 8
  %call = call i64 @v1_render(ptr noundef %2, ptr noundef %3)
  store i64 %call, ptr %retval, align 8
  br label %return

for.cond:                                         ; preds = %entry, %for.inc
  %storemerge = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  store i32 %storemerge, ptr %i, align 4
  %4 = load ptr, ptr %tag.addr, align 8
  %nframes = getelementptr inbounds %struct.id3_tag, ptr %4, i64 0, i32 6
  %5 = load i32, ptr %nframes, align 8
  %cmp = icmp ult i32 %storemerge, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %tag.addr, align 8
  %frames = getelementptr inbounds %struct.id3_tag, ptr %6, i64 0, i32 7
  %7 = load ptr, ptr %frames, align 8
  %8 = load i32, ptr %i, align 4
  %idxprom = zext i32 %8 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %7, i64 %idxprom
  %9 = load ptr, ptr %arrayidx, align 8
  %call1 = call i64 @id3_frame_render(ptr noundef %9, ptr noundef null, i32 noundef 0) #9
  %cmp2.not = icmp eq i64 %call1, 0
  br i1 %cmp2.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4
  %inc = add i32 %10, 1
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.body, %for.cond
  %11 = load i32, ptr %i, align 4
  %12 = load ptr, ptr %tag.addr, align 8
  %nframes5 = getelementptr inbounds %struct.id3_tag, ptr %12, i64 0, i32 6
  %13 = load i32, ptr %nframes5, align 8
  %cmp6 = icmp eq i32 %11, %13
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %for.end
  store i64 0, ptr %retval, align 8
  br label %return

if.end8:                                          ; preds = %for.end
  %14 = load ptr, ptr %buffer.addr, align 8
  %tobool9.not = icmp eq ptr %14, null
  %.buffer.addr = select i1 %tobool9.not, ptr null, ptr %buffer.addr
  store ptr %.buffer.addr, ptr %ptr, align 8
  %15 = load ptr, ptr %tag.addr, align 8
  %flags10 = getelementptr inbounds %struct.id3_tag, ptr %15, i64 0, i32 2
  %16 = load i32, ptr %flags10, align 8
  %and11 = and i32 %16, 240
  store i32 %and11, ptr %flags, align 4
  %extendedflags12 = getelementptr inbounds %struct.id3_tag, ptr %15, i64 0, i32 3
  %17 = load i32, ptr %extendedflags12, align 4
  %and14 = and i32 %17, 80
  store i32 %and14, ptr %extendedflags, align 4
  %18 = load ptr, ptr %tag.addr, align 8
  %options15 = getelementptr inbounds %struct.id3_tag, ptr %18, i64 0, i32 5
  %19 = load i32, ptr %options15, align 4
  %and16 = and i32 %19, 4
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end8
  %20 = load i32, ptr %extendedflags, align 4
  %or = or i32 %20, 32
  store i32 %or, ptr %extendedflags, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end8
  %21 = load i32, ptr %extendedflags, align 4
  %and20 = and i32 %21, -17
  store i32 %and20, ptr %extendedflags, align 4
  %22 = load ptr, ptr %tag.addr, align 8
  %restrictions = getelementptr inbounds %struct.id3_tag, ptr %22, i64 0, i32 4
  %23 = load i32, ptr %restrictions, align 8
  %tobool21.not = icmp eq i32 %23, 0
  br i1 %tobool21.not, label %if.end24, label %if.then22

if.then22:                                        ; preds = %if.end19
  %24 = load i32, ptr %extendedflags, align 4
  %or23 = or i32 %24, 16
  store i32 %or23, ptr %extendedflags, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end19
  %25 = load i32, ptr %flags, align 4
  %and25 = and i32 %25, -129
  store i32 %and25, ptr %flags, align 4
  %26 = load ptr, ptr %tag.addr, align 8
  %options26 = getelementptr inbounds %struct.id3_tag, ptr %26, i64 0, i32 5
  %27 = load i32, ptr %options26, align 4
  %and27 = and i32 %27, 1
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end31, label %if.then29

if.then29:                                        ; preds = %if.end24
  %28 = load i32, ptr %flags, align 4
  %or30 = or i32 %28, 128
  store i32 %or30, ptr %flags, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end24
  %29 = load i32, ptr %flags, align 4
  %and32 = and i32 %29, -65
  store i32 %and32, ptr %flags, align 4
  %30 = load i32, ptr %extendedflags, align 4
  %tobool33.not = icmp eq i32 %30, 0
  br i1 %tobool33.not, label %if.end36, label %if.then34

if.then34:                                        ; preds = %if.end31
  %31 = load i32, ptr %flags, align 4
  %or35 = or i32 %31, 64
  store i32 %or35, ptr %flags, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end31
  %32 = load i32, ptr %flags, align 4
  %and37 = and i32 %32, -17
  store i32 %and37, ptr %flags, align 4
  %33 = load ptr, ptr %tag.addr, align 8
  %options38 = getelementptr inbounds %struct.id3_tag, ptr %33, i64 0, i32 5
  %34 = load i32, ptr %options38, align 4
  %and39 = and i32 %34, 16
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end43, label %if.then41

if.then41:                                        ; preds = %if.end36
  %35 = load i32, ptr %flags, align 4
  %or42 = or i32 %35, 16
  store i32 %or42, ptr %flags, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end36
  %36 = load ptr, ptr %ptr, align 8
  %tobool44.not = icmp eq ptr %36, null
  br i1 %tobool44.not, label %if.end46, label %if.then45

if.then45:                                        ; preds = %if.end43
  %37 = load ptr, ptr %ptr, align 8
  %38 = load ptr, ptr %37, align 8
  store ptr %38, ptr %header_ptr, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end43
  %39 = load ptr, ptr %ptr, align 8
  %call47 = call i64 @id3_render_immediate(ptr noundef %39, ptr noundef nonnull @.str, i32 noundef 3) #9
  %40 = load i64, ptr %size, align 8
  %add = add i64 %40, %call47
  store i64 %add, ptr %size, align 8
  %call48 = call i64 @id3_render_int(ptr noundef %39, i64 noundef 1024, i32 noundef 2) #9
  %add49 = add i64 %add, %call48
  store i64 %add49, ptr %size, align 8
  %41 = load ptr, ptr %ptr, align 8
  %42 = load i32, ptr %flags, align 4
  %conv = sext i32 %42 to i64
  %call50 = call i64 @id3_render_int(ptr noundef %41, i64 noundef %conv, i32 noundef 1) #9
  %add51 = add i64 %add49, %call50
  store i64 %add51, ptr %size, align 8
  %tobool52.not = icmp eq ptr %41, null
  br i1 %tobool52.not, label %if.end54, label %if.then53

if.then53:                                        ; preds = %if.end46
  %43 = load ptr, ptr %ptr, align 8
  %44 = load ptr, ptr %43, align 8
  store ptr %44, ptr %tagsize_ptr, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end46
  %45 = load ptr, ptr %ptr, align 8
  %call55 = call i64 @id3_render_syncsafe(ptr noundef %45, i64 noundef 0, i32 noundef 4) #9
  %46 = load i64, ptr %size, align 8
  %add56 = add i64 %46, %call55
  store i64 %add56, ptr %size, align 8
  %47 = load i32, ptr %flags, align 4
  %and57 = and i32 %47, 64
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end102, label %if.then59

if.then59:                                        ; preds = %if.end54
  store i64 0, ptr %ehsize, align 8
  store ptr null, ptr %ehsize_ptr, align 8
  %48 = load ptr, ptr %ptr, align 8
  %tobool60.not = icmp eq ptr %48, null
  br i1 %tobool60.not, label %if.end62, label %if.then61

if.then61:                                        ; preds = %if.then59
  %49 = load ptr, ptr %ptr, align 8
  %50 = load ptr, ptr %49, align 8
  store ptr %50, ptr %ehsize_ptr, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.then59
  %51 = load ptr, ptr %ptr, align 8
  %call63 = call i64 @id3_render_syncsafe(ptr noundef %51, i64 noundef 0, i32 noundef 4) #9
  %52 = load i64, ptr %ehsize, align 8
  %add64 = add i64 %52, %call63
  store i64 %add64, ptr %ehsize, align 8
  %call65 = call i64 @id3_render_int(ptr noundef %51, i64 noundef 1, i32 noundef 1) #9
  %add66 = add i64 %add64, %call65
  store i64 %add66, ptr %ehsize, align 8
  %53 = load ptr, ptr %ptr, align 8
  %54 = load i32, ptr %extendedflags, align 4
  %conv67 = sext i32 %54 to i64
  %call68 = call i64 @id3_render_int(ptr noundef %53, i64 noundef %conv67, i32 noundef 1) #9
  %add69 = add i64 %add66, %call68
  store i64 %add69, ptr %ehsize, align 8
  %and70 = and i32 %54, 64
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.end75, label %if.then72

if.then72:                                        ; preds = %if.end62
  %55 = load ptr, ptr %ptr, align 8
  %call73 = call i64 @id3_render_int(ptr noundef %55, i64 noundef 0, i32 noundef 1) #9
  %56 = load i64, ptr %ehsize, align 8
  %add74 = add i64 %56, %call73
  store i64 %add74, ptr %ehsize, align 8
  br label %if.end75

if.end75:                                         ; preds = %if.then72, %if.end62
  %57 = load i32, ptr %extendedflags, align 4
  %and76 = and i32 %57, 32
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.end86, label %if.then78

if.then78:                                        ; preds = %if.end75
  %58 = load ptr, ptr %ptr, align 8
  %call79 = call i64 @id3_render_int(ptr noundef %58, i64 noundef 5, i32 noundef 1) #9
  %59 = load i64, ptr %ehsize, align 8
  %add80 = add i64 %59, %call79
  store i64 %add80, ptr %ehsize, align 8
  %tobool81.not = icmp eq ptr %58, null
  br i1 %tobool81.not, label %if.end83, label %if.then82

if.then82:                                        ; preds = %if.then78
  %60 = load ptr, ptr %ptr, align 8
  %61 = load ptr, ptr %60, align 8
  store ptr %61, ptr %crc_ptr, align 8
  br label %if.end83

if.end83:                                         ; preds = %if.then82, %if.then78
  %62 = load ptr, ptr %ptr, align 8
  %call84 = call i64 @id3_render_syncsafe(ptr noundef %62, i64 noundef 0, i32 noundef 5) #9
  %63 = load i64, ptr %ehsize, align 8
  %add85 = add i64 %63, %call84
  store i64 %add85, ptr %ehsize, align 8
  br label %if.end86

if.end86:                                         ; preds = %if.end83, %if.end75
  %64 = load i32, ptr %extendedflags, align 4
  %and87 = and i32 %64, 16
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %if.end96, label %if.then89

if.then89:                                        ; preds = %if.end86
  %65 = load ptr, ptr %ptr, align 8
  %call90 = call i64 @id3_render_int(ptr noundef %65, i64 noundef 1, i32 noundef 1) #9
  %66 = load i64, ptr %ehsize, align 8
  %add91 = add i64 %66, %call90
  store i64 %add91, ptr %ehsize, align 8
  %67 = load ptr, ptr %tag.addr, align 8
  %restrictions92 = getelementptr inbounds %struct.id3_tag, ptr %67, i64 0, i32 4
  %68 = load i32, ptr %restrictions92, align 8
  %conv93 = sext i32 %68 to i64
  %call94 = call i64 @id3_render_int(ptr noundef %65, i64 noundef %conv93, i32 noundef 1) #9
  %add95 = add i64 %add91, %call94
  store i64 %add95, ptr %ehsize, align 8
  br label %if.end96

if.end96:                                         ; preds = %if.then89, %if.end86
  %69 = load ptr, ptr %ehsize_ptr, align 8
  %tobool97.not = icmp eq ptr %69, null
  br i1 %tobool97.not, label %if.end100, label %if.then98

if.then98:                                        ; preds = %if.end96
  %70 = load i64, ptr %ehsize, align 8
  %call99 = call i64 @id3_render_syncsafe(ptr noundef nonnull %ehsize_ptr, i64 noundef %70, i32 noundef 4) #9
  br label %if.end100

if.end100:                                        ; preds = %if.then98, %if.end96
  %71 = load i64, ptr %ehsize, align 8
  %72 = load i64, ptr %size, align 8
  %add101 = add i64 %72, %71
  store i64 %add101, ptr %size, align 8
  br label %if.end102

if.end102:                                        ; preds = %if.end100, %if.end54
  %73 = load ptr, ptr %ptr, align 8
  %tobool103.not = icmp eq ptr %73, null
  br i1 %tobool103.not, label %if.end105, label %if.then104

if.then104:                                       ; preds = %if.end102
  %74 = load ptr, ptr %ptr, align 8
  %75 = load ptr, ptr %74, align 8
  store ptr %75, ptr %frames_ptr, align 8
  br label %if.end105

if.end105:                                        ; preds = %if.then104, %if.end102
  br label %for.cond106

for.cond106:                                      ; preds = %for.body110, %if.end105
  %storemerge1 = phi i32 [ 0, %if.end105 ], [ %inc118, %for.body110 ]
  store i32 %storemerge1, ptr %i, align 4
  %76 = load ptr, ptr %tag.addr, align 8
  %nframes107 = getelementptr inbounds %struct.id3_tag, ptr %76, i64 0, i32 6
  %77 = load i32, ptr %nframes107, align 8
  %cmp108 = icmp ult i32 %storemerge1, %77
  br i1 %cmp108, label %for.body110, label %for.end119

for.body110:                                      ; preds = %for.cond106
  %78 = load ptr, ptr %tag.addr, align 8
  %frames111 = getelementptr inbounds %struct.id3_tag, ptr %78, i64 0, i32 7
  %79 = load ptr, ptr %frames111, align 8
  %80 = load i32, ptr %i, align 4
  %idxprom112 = zext i32 %80 to i64
  %arrayidx113 = getelementptr inbounds ptr, ptr %79, i64 %idxprom112
  %81 = load ptr, ptr %arrayidx113, align 8
  %82 = load ptr, ptr %ptr, align 8
  %83 = load ptr, ptr %tag.addr, align 8
  %options114 = getelementptr inbounds %struct.id3_tag, ptr %83, i64 0, i32 5
  %84 = load i32, ptr %options114, align 4
  %call115 = call i64 @id3_frame_render(ptr noundef %81, ptr noundef %82, i32 noundef %84) #9
  %85 = load i64, ptr %size, align 8
  %add116 = add i64 %85, %call115
  store i64 %add116, ptr %size, align 8
  %86 = load i32, ptr %i, align 4
  %inc118 = add i32 %86, 1
  br label %for.cond106, !llvm.loop !15

for.end119:                                       ; preds = %for.cond106
  %87 = load i32, ptr %flags, align 4
  %and120 = and i32 %87, 16
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %if.then122, label %if.end149

if.then122:                                       ; preds = %for.end119
  %88 = load i64, ptr %size, align 8
  %89 = load ptr, ptr %tag.addr, align 8
  %paddedsize = getelementptr inbounds %struct.id3_tag, ptr %89, i64 0, i32 8
  %90 = load i64, ptr %paddedsize, align 8
  %cmp123 = icmp ult i64 %88, %90
  br i1 %cmp123, label %if.then125, label %if.else

if.then125:                                       ; preds = %if.then122
  %91 = load ptr, ptr %ptr, align 8
  %92 = load ptr, ptr %tag.addr, align 8
  %paddedsize126 = getelementptr inbounds %struct.id3_tag, ptr %92, i64 0, i32 8
  %93 = load i64, ptr %paddedsize126, align 8
  %94 = load i64, ptr %size, align 8
  %sub = sub i64 %93, %94
  %call127 = call i64 @id3_render_padding(ptr noundef %91, i8 noundef zeroext 0, i64 noundef %sub) #9
  %add128 = add i64 %94, %call127
  store i64 %add128, ptr %size, align 8
  br label %if.end149

if.else:                                          ; preds = %if.then122
  %95 = load ptr, ptr %tag.addr, align 8
  %options129 = getelementptr inbounds %struct.id3_tag, ptr %95, i64 0, i32 5
  %96 = load i32, ptr %options129, align 4
  %and130 = and i32 %96, 1
  %tobool131.not = icmp eq i32 %and130, 0
  br i1 %tobool131.not, label %if.end149, label %if.then132

if.then132:                                       ; preds = %if.else
  %97 = load ptr, ptr %ptr, align 8
  %cmp133 = icmp eq ptr %97, null
  br i1 %cmp133, label %if.then135, label %if.else137

if.then135:                                       ; preds = %if.then132
  %98 = load i64, ptr %size, align 8
  %add136 = add i64 %98, 1
  store i64 %add136, ptr %size, align 8
  br label %if.end149

if.else137:                                       ; preds = %if.then132
  %99 = load ptr, ptr %ptr, align 8
  %100 = load ptr, ptr %99, align 8
  %arrayidx138 = getelementptr inbounds i8, ptr %100, i64 -1
  %101 = load i8, ptr %arrayidx138, align 1
  %cmp140 = icmp eq i8 %101, -1
  br i1 %cmp140, label %if.then142, label %if.end149

if.then142:                                       ; preds = %if.else137
  %102 = load ptr, ptr %ptr, align 8
  %call143 = call i64 @id3_render_padding(ptr noundef %102, i8 noundef zeroext 0, i64 noundef 1) #9
  %103 = load i64, ptr %size, align 8
  %add144 = add i64 %103, %call143
  store i64 %add144, ptr %size, align 8
  br label %if.end149

if.end149:                                        ; preds = %if.then125, %if.then135, %if.then142, %if.else137, %if.else, %for.end119
  %104 = load ptr, ptr %tagsize_ptr, align 8
  %tobool150.not = icmp eq ptr %104, null
  br i1 %tobool150.not, label %if.end154, label %if.then151

if.then151:                                       ; preds = %if.end149
  %105 = load i64, ptr %size, align 8
  %sub152 = add i64 %105, -10
  %call153 = call i64 @id3_render_syncsafe(ptr noundef nonnull %tagsize_ptr, i64 noundef %sub152, i32 noundef 4) #9
  br label %if.end154

if.end154:                                        ; preds = %if.then151, %if.end149
  %106 = load ptr, ptr %crc_ptr, align 8
  %tobool155.not = icmp eq ptr %106, null
  br i1 %tobool155.not, label %if.end159, label %if.then156

if.then156:                                       ; preds = %if.end154
  %107 = load ptr, ptr %frames_ptr, align 8
  %108 = load ptr, ptr %ptr, align 8
  %109 = load ptr, ptr %108, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %109 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %107 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call157 = call i64 @id3_crc_calculate(ptr noundef %107, i64 noundef %sub.ptr.sub) #9
  %call158 = call i64 @id3_render_syncsafe(ptr noundef nonnull %crc_ptr, i64 noundef %call157, i32 noundef 5) #9
  br label %if.end159

if.end159:                                        ; preds = %if.then156, %if.end154
  %110 = load i32, ptr %flags, align 4
  %and160 = and i32 %110, 16
  %tobool161.not = icmp eq i32 %and160, 0
  br i1 %tobool161.not, label %if.end167, label %if.then162

if.then162:                                       ; preds = %if.end159
  %111 = load ptr, ptr %ptr, align 8
  %call163 = call i64 @id3_render_immediate(ptr noundef %111, ptr noundef nonnull @.str.1, i32 noundef 3) #9
  %112 = load i64, ptr %size, align 8
  %add164 = add i64 %112, %call163
  store i64 %add164, ptr %size, align 8
  %113 = load ptr, ptr %header_ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %113, i64 3
  %call165 = call i64 @id3_render_binary(ptr noundef %111, ptr noundef nonnull %add.ptr, i64 noundef 7) #9
  %add166 = add i64 %add164, %call165
  store i64 %add166, ptr %size, align 8
  br label %if.end167

if.end167:                                        ; preds = %if.then162, %if.end159
  %114 = load i64, ptr %size, align 8
  store i64 %114, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end167, %if.then7, %if.then
  %115 = load i64, ptr %retval, align 8
  ret i64 %115
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @v1_render(ptr noundef %tag, ptr noundef %buffer) #0 {
entry:
  %tag.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %frame = alloca ptr, align 8
  %number = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %tag, ptr %tag.addr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  %cmp = icmp eq ptr %buffer, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call i64 @id3_render_immediate(ptr noundef nonnull %buffer.addr, ptr noundef nonnull @.str.10, i32 noundef 3) #9
  %0 = load ptr, ptr %tag.addr, align 8
  call void @v1_renderstr(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %buffer.addr, i64 noundef 30)
  call void @v1_renderstr(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %buffer.addr, i64 noundef 30)
  call void @v1_renderstr(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %buffer.addr, i64 noundef 30)
  call void @v1_renderstr(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull %buffer.addr, i64 noundef 4)
  call void @v1_renderstr(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull %buffer.addr, i64 noundef 30)
  %call1 = call ptr @id3_tag_findframe(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef 0)
  store ptr %call1, ptr %frame, align 8
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end11, label %if.then2

if.then2:                                         ; preds = %if.end
  %1 = load ptr, ptr %frame, align 8
  %fields = getelementptr inbounds %struct.id3_frame, ptr %1, i64 0, i32 10
  %2 = load ptr, ptr %fields, align 8
  %arrayidx = getelementptr inbounds %union.id3_field, ptr %2, i64 1
  %call3 = call ptr @id3_field_getstrings(ptr noundef nonnull %arrayidx, i32 noundef 0) #9
  %call4 = call i64 @id3_ucs4_getnumber(ptr noundef %call3) #9
  %conv = trunc i64 %call4 to i32
  store i32 %conv, ptr %number, align 4
  %and = and i32 %conv, 255
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end11, label %if.then6

if.then6:                                         ; preds = %if.then2
  %3 = load ptr, ptr %buffer.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %3, i64 -2
  store i8 0, ptr %arrayidx7, align 1
  %4 = load i32, ptr %number, align 4
  %conv8 = trunc i32 %4 to i8
  %5 = load ptr, ptr %buffer.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %5, i64 -1
  store i8 %conv8, ptr %arrayidx9, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.then2, %if.then6, %if.end
  %6 = load ptr, ptr %tag.addr, align 8
  %call12 = call ptr @id3_tag_findframe(ptr noundef %6, ptr noundef nonnull @.str.7, i32 noundef 0)
  store ptr %call12, ptr %frame, align 8
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end11
  %7 = load ptr, ptr %frame, align 8
  %fields14 = getelementptr inbounds %struct.id3_frame, ptr %7, i64 0, i32 10
  %8 = load ptr, ptr %fields14, align 8
  %arrayidx15 = getelementptr inbounds %union.id3_field, ptr %8, i64 1
  %call16 = call ptr @id3_field_getstrings(ptr noundef nonnull %arrayidx15, i32 noundef 0) #9
  %call17 = call i64 @id3_ucs4_getnumber(ptr noundef %call16) #9
  %phi.cast = trunc i64 %call17 to i32
  br label %cond.end

cond.end:                                         ; preds = %if.end11, %cond.true
  %cond = phi i32 [ %phi.cast, %cond.true ], [ 255, %if.end11 ]
  store i32 %cond, ptr %number, align 4
  %conv19 = zext i32 %cond to i64
  %call20 = call i64 @id3_render_int(ptr noundef nonnull %buffer.addr, i64 noundef %conv19, i32 noundef 1) #9
  %9 = load ptr, ptr %buffer.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 -128
  store ptr %add.ptr, ptr %buffer.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %storemerge = phi i32 [ 3, %cond.end ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr %i, align 4
  %cmp21 = icmp ult i32 %storemerge, 127
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %buffer.addr, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom = zext i32 %11 to i64
  %arrayidx23 = getelementptr inbounds i8, ptr %10, i64 %idxprom
  %12 = load i8, ptr %arrayidx23, align 1
  %cmp25.not = icmp eq i8 %12, 32
  br i1 %cmp25.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.body
  %13 = load i32, ptr %i, align 4
  %inc = add i32 %13, 1
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.body, %for.cond
  %14 = load i32, ptr %i, align 4
  %cmp29 = icmp eq i32 %14, 127
  br i1 %cmp29, label %land.rhs, label %return

land.rhs:                                         ; preds = %for.end
  %15 = load ptr, ptr %buffer.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, ptr %15, i64 127
  %16 = load i8, ptr %arrayidx31, align 1
  %cmp33 = icmp eq i8 %16, -1
  %phi.sel = select i1 %cmp33, i64 0, i64 128
  br label %return

return:                                           ; preds = %for.end, %land.rhs, %entry
  %storemerge2 = phi i64 [ 128, %entry ], [ 128, %for.end ], [ %phi.sel, %land.rhs ]
  ret i64 %storemerge2
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
  %tobool.not = icmp eq ptr %text, null
  br i1 %tobool.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %text.addr, align 8
  call void @trim(ptr noundef %0)
  %1 = load i8, ptr %0, align 1
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.then, %entry
  %2 = load ptr, ptr %id.addr, align 8
  %call = call ptr @id3_frame_new(ptr noundef %2) #9
  store ptr %call, ptr %frame, align 8
  %cmp4 = icmp eq ptr %call, null
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  store i32 -1, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end3
  %3 = load ptr, ptr %frame, align 8
  %fields = getelementptr inbounds %struct.id3_frame, ptr %3, i64 0, i32 10
  %4 = load ptr, ptr %fields, align 8
  %call8 = call i32 @id3_field_settextencoding(ptr noundef %4, i32 noundef 0) #9
  %cmp9 = icmp eq i32 %call8, -1
  br i1 %cmp9, label %fail, label %if.end12

if.end12:                                         ; preds = %if.end7
  %5 = load ptr, ptr %text.addr, align 8
  %tobool13.not = icmp eq ptr %5, null
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end12
  %6 = load ptr, ptr %text.addr, align 8
  call void @id3_latin1_decode(ptr noundef %6, ptr noundef nonnull %ucs4) #9
  br label %if.end16

if.else:                                          ; preds = %if.end12
  %7 = load i64, ptr %number.addr, align 8
  call void @id3_ucs4_putnumber(ptr noundef nonnull %ucs4, i64 noundef %7) #9
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then14
  %8 = load ptr, ptr %id.addr, align 8
  %call17 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(5) @.str.8) #9
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then20, label %if.else40

if.then20:                                        ; preds = %if.end16
  %9 = load ptr, ptr %frame, align 8
  %fields21 = getelementptr inbounds %struct.id3_frame, ptr %9, i64 0, i32 10
  %10 = load ptr, ptr %fields21, align 8
  %arrayidx22 = getelementptr inbounds %union.id3_field, ptr %10, i64 1
  %call23 = call i32 @id3_field_setlanguage(ptr noundef nonnull %arrayidx22, ptr noundef nonnull @.str.9) #9
  %cmp24 = icmp eq i32 %call23, -1
  br i1 %cmp24, label %fail, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then20
  %11 = load ptr, ptr %frame, align 8
  %fields26 = getelementptr inbounds %struct.id3_frame, ptr %11, i64 0, i32 10
  %12 = load ptr, ptr %fields26, align 8
  %arrayidx27 = getelementptr inbounds %union.id3_field, ptr %12, i64 2
  %call28 = call i32 @id3_field_setstring(ptr noundef nonnull %arrayidx27, ptr noundef nonnull @id3_ucs4_empty) #9
  %cmp29 = icmp eq i32 %call28, -1
  br i1 %cmp29, label %fail, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %lor.lhs.false
  %13 = load ptr, ptr %frame, align 8
  %fields32 = getelementptr inbounds %struct.id3_frame, ptr %13, i64 0, i32 10
  %14 = load ptr, ptr %fields32, align 8
  %arrayidx33 = getelementptr inbounds %union.id3_field, ptr %14, i64 3
  %call35 = call i32 @id3_field_setfullstring(ptr noundef nonnull %arrayidx33, ptr noundef nonnull %ucs4) #9
  %cmp36 = icmp eq i32 %call35, -1
  br i1 %cmp36, label %fail, label %if.end49

if.else40:                                        ; preds = %if.end16
  store ptr %ucs4, ptr %ptr, align 8
  %15 = load ptr, ptr %frame, align 8
  %fields42 = getelementptr inbounds %struct.id3_frame, ptr %15, i64 0, i32 10
  %16 = load ptr, ptr %fields42, align 8
  %arrayidx43 = getelementptr inbounds %union.id3_field, ptr %16, i64 1
  %call44 = call i32 @id3_field_setstrings(ptr noundef nonnull %arrayidx43, i32 noundef 1, ptr noundef nonnull %ptr) #9
  %cmp45 = icmp eq i32 %call44, -1
  br i1 %cmp45, label %fail, label %if.end49

if.end49:                                         ; preds = %if.else40, %lor.lhs.false31
  %17 = load ptr, ptr %tag.addr, align 8
  %18 = load ptr, ptr %frame, align 8
  %call50 = call i32 @id3_tag_attachframe(ptr noundef %17, ptr noundef %18)
  %cmp51 = icmp eq i32 %call50, -1
  br i1 %cmp51, label %fail, label %if.end54

if.end54:                                         ; preds = %if.end49
  store i32 0, ptr %retval, align 4
  br label %return

fail:                                             ; preds = %if.end49, %if.else40, %if.then20, %lor.lhs.false, %lor.lhs.false31, %if.end7
  %19 = load ptr, ptr %frame, align 8
  call void @id3_frame_delete(ptr noundef %19) #9
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %fail, %if.end54, %if.then6, %if.then2
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
}

; Function Attrs: nounwind ssp uwtable
define internal void @trim(ptr noundef %str) #0 {
entry:
  %str.addr = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  %call = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %str) #9
  %add.ptr = getelementptr inbounds i8, ptr %str, i64 %call
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %storemerge = phi ptr [ %add.ptr, %entry ], [ %incdec.ptr, %while.body ]
  store ptr %storemerge, ptr %ptr, align 8
  %0 = load ptr, ptr %str.addr, align 8
  %cmp = icmp ugt ptr %storemerge, %0
  br i1 %cmp, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %while.cond
  %1 = load ptr, ptr %ptr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 -1
  %2 = load i8, ptr %arrayidx, align 1
  %cmp1 = icmp eq i8 %2, 32
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %3 = load ptr, ptr %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %3, i64 -1
  br label %while.cond, !llvm.loop !17

while.end:                                        ; preds = %while.cond, %land.rhs
  %4 = load ptr, ptr %ptr, align 8
  store i8 0, ptr %4, align 1
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
  %frameid.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %frame = alloca ptr, align 8
  store ptr %frameid, ptr %frameid.addr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  store i64 %length, ptr %length.addr, align 8
  %call = call ptr @id3_tag_findframe(ptr noundef %tag, ptr noundef %frameid, i32 noundef 0)
  store ptr %call, ptr %frame, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.end9, label %if.else

if.else:                                          ; preds = %entry
  %0 = load ptr, ptr %frameid.addr, align 8
  %call1 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.8) #9
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.else5

if.then3:                                         ; preds = %if.else
  %1 = load ptr, ptr %frame, align 8
  %fields = getelementptr inbounds %struct.id3_frame, ptr %1, i64 0, i32 10
  %2 = load ptr, ptr %fields, align 8
  %arrayidx = getelementptr inbounds %union.id3_field, ptr %2, i64 3
  %call4 = call ptr @id3_field_getfullstring(ptr noundef nonnull %arrayidx) #9
  br label %if.end9

if.else5:                                         ; preds = %if.else
  %3 = load ptr, ptr %frame, align 8
  %fields6 = getelementptr inbounds %struct.id3_frame, ptr %3, i64 0, i32 10
  %4 = load ptr, ptr %fields6, align 8
  %arrayidx7 = getelementptr inbounds %union.id3_field, ptr %4, i64 1
  %call8 = call ptr @id3_field_getstrings(ptr noundef nonnull %arrayidx7, i32 noundef 0) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then3, %if.else5, %entry
  %storemerge1 = phi ptr [ @id3_ucs4_empty, %entry ], [ %call8, %if.else5 ], [ %call4, %if.then3 ]
  %5 = load ptr, ptr %buffer.addr, align 8
  %6 = load i64, ptr %length.addr, align 8
  %call10 = call i64 @id3_render_paddedstring(ptr noundef %5, ptr noundef %storemerge1, i64 noundef %6) #9
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
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind }
attributes #10 = { cold noreturn nounwind }
attributes #11 = { nounwind allocsize(1) }

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
