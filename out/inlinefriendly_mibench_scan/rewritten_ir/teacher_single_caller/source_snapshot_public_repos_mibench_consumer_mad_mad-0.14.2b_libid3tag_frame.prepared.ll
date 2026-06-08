; ModuleID = './source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/libid3tag/frame.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/libid3tag/frame.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.id3_frametype = type { ptr, i32, ptr, i32, ptr }
%struct.id3_frame = type { [5 x i8], ptr, i32, i32, i32, i32, ptr, i64, i64, i32, ptr }
%union.id3_field = type { %struct.anon.5 }
%struct.anon.5 = type { i32, ptr, i64 }
%struct.id3_compat = type { ptr, ptr, ptr }

@id3_frametype_text = external constant %struct.id3_frametype, align 8
@id3_frametype_url = external constant %struct.id3_frametype, align 8
@id3_frametype_experimental = external constant %struct.id3_frametype, align 8
@id3_frametype_unknown = external constant %struct.id3_frametype, align 8
@id3_frametype_obsolete = external constant %struct.id3_frametype, align 8
@.str = private unnamed_addr constant [5 x i8] c"ZOBS\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @id3_frame_validid(ptr noundef %id) #0 {
entry:
  %id.addr = alloca ptr, align 8
  store ptr %id, ptr %id.addr, align 8
  %0 = load ptr, ptr %id.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1
  %call = call i32 @valid_idchar(i8 noundef signext %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %id.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %2, i64 1
  %3 = load i8, ptr %arrayidx1, align 1
  %call2 = call i32 @valid_idchar(i8 noundef signext %3)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %land.lhs.true4, label %land.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %4 = load ptr, ptr %id.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %4, i64 2
  %5 = load i8, ptr %arrayidx5, align 1
  %call6 = call i32 @valid_idchar(i8 noundef signext %5)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true4
  %6 = load ptr, ptr %id.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %6, i64 3
  %7 = load i8, ptr %arrayidx8, align 1
  %call9 = call i32 @valid_idchar(i8 noundef signext %7)
  %tobool10 = icmp ne i32 %call9, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true4, %land.lhs.true, %entry
  %8 = phi i1 [ false, %land.lhs.true4 ], [ false, %land.lhs.true ], [ false, %entry ], [ %tobool10, %land.rhs ]
  %land.ext = zext i1 %8 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @valid_idchar(i8 noundef signext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, ptr %c.addr, align 1
  %0 = load i8, ptr %c.addr, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp sge i32 %conv, 65
  br i1 %cmp, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, ptr %c.addr, align 1
  %conv2 = sext i8 %1 to i32
  %cmp3 = icmp sle i32 %conv2, 90
  br i1 %cmp3, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true, %entry
  %2 = load i8, ptr %c.addr, align 1
  %conv5 = sext i8 %2 to i32
  %cmp6 = icmp sge i32 %conv5, 48
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %3 = load i8, ptr %c.addr, align 1
  %conv8 = sext i8 %3 to i32
  %cmp9 = icmp sle i32 %conv8, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %4 = phi i1 [ false, %lor.rhs ], [ %cmp9, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true
  %5 = phi i1 [ true, %land.lhs.true ], [ %4, %land.end ]
  %lor.ext = zext i1 %5 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind ssp uwtable
define ptr @id3_frame_new(ptr noundef %id) #0 {
entry:
  %retval = alloca ptr, align 8
  %id.addr = alloca ptr, align 8
  %frametype = alloca ptr, align 8
  %frame = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %id, ptr %id.addr, align 8
  %0 = load ptr, ptr %id.addr, align 8
  %call = call i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_mad_mad_0_14_2b_libid3tag_frame_0(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %id.addr, align 8
  %call1 = call ptr @id3_frametype_lookup(ptr noundef %1, i32 noundef 4)
  store ptr %call1, ptr %frametype, align 8
  %2 = load ptr, ptr %frametype, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then2, label %if.end9

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %id.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 0
  %4 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %4 to i32
  switch i32 %conv, label %sw.default [
    i32 84, label %sw.bb
    i32 87, label %sw.bb3
    i32 88, label %sw.bb4
    i32 89, label %sw.bb4
    i32 90, label %sw.bb4
  ]

sw.bb:                                            ; preds = %if.then2
  store ptr @id3_frametype_text, ptr %frametype, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.then2
  store ptr @id3_frametype_url, ptr %frametype, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.then2, %if.then2, %if.then2
  store ptr @id3_frametype_experimental, ptr %frametype, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.then2
  store ptr @id3_frametype_unknown, ptr %frametype, align 8
  %5 = load ptr, ptr %id.addr, align 8
  %call5 = call ptr @id3_compat_lookup(ptr noundef %5, i32 noundef 4)
  %tobool6 = icmp ne ptr %call5, null
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %sw.default
  store ptr @id3_frametype_obsolete, ptr %frametype, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end8, %sw.bb4, %sw.bb3, %sw.bb
  br label %if.end9

if.end9:                                          ; preds = %sw.epilog, %if.end
  %6 = load ptr, ptr %frametype, align 8
  %nfields = getelementptr inbounds %struct.id3_frametype, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %nfields, align 8
  %conv10 = zext i32 %7 to i64
  %mul = mul i64 %conv10, 24
  %add = add i64 72, %mul
  %call11 = call ptr @malloc(i64 noundef %add) #6
  store ptr %call11, ptr %frame, align 8
  %8 = load ptr, ptr %frame, align 8
  %tobool12 = icmp ne ptr %8, null
  br i1 %tobool12, label %if.then13, label %if.end40

if.then13:                                        ; preds = %if.end9
  %9 = load ptr, ptr %id.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %9, i64 0
  %10 = load i8, ptr %arrayidx14, align 1
  %11 = load ptr, ptr %frame, align 8
  %id15 = getelementptr inbounds %struct.id3_frame, ptr %11, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [5 x i8], ptr %id15, i64 0, i64 0
  store i8 %10, ptr %arrayidx16, align 8
  %12 = load ptr, ptr %id.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, ptr %12, i64 1
  %13 = load i8, ptr %arrayidx17, align 1
  %14 = load ptr, ptr %frame, align 8
  %id18 = getelementptr inbounds %struct.id3_frame, ptr %14, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [5 x i8], ptr %id18, i64 0, i64 1
  store i8 %13, ptr %arrayidx19, align 1
  %15 = load ptr, ptr %id.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, ptr %15, i64 2
  %16 = load i8, ptr %arrayidx20, align 1
  %17 = load ptr, ptr %frame, align 8
  %id21 = getelementptr inbounds %struct.id3_frame, ptr %17, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [5 x i8], ptr %id21, i64 0, i64 2
  store i8 %16, ptr %arrayidx22, align 2
  %18 = load ptr, ptr %id.addr, align 8
  %arrayidx23 = getelementptr inbounds i8, ptr %18, i64 3
  %19 = load i8, ptr %arrayidx23, align 1
  %20 = load ptr, ptr %frame, align 8
  %id24 = getelementptr inbounds %struct.id3_frame, ptr %20, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [5 x i8], ptr %id24, i64 0, i64 3
  store i8 %19, ptr %arrayidx25, align 1
  %21 = load ptr, ptr %frame, align 8
  %id26 = getelementptr inbounds %struct.id3_frame, ptr %21, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [5 x i8], ptr %id26, i64 0, i64 4
  store i8 0, ptr %arrayidx27, align 4
  %22 = load ptr, ptr %frametype, align 8
  %description = getelementptr inbounds %struct.id3_frametype, ptr %22, i32 0, i32 4
  %23 = load ptr, ptr %description, align 8
  %24 = load ptr, ptr %frame, align 8
  %description28 = getelementptr inbounds %struct.id3_frame, ptr %24, i32 0, i32 1
  store ptr %23, ptr %description28, align 8
  %25 = load ptr, ptr %frame, align 8
  %refcount = getelementptr inbounds %struct.id3_frame, ptr %25, i32 0, i32 2
  store i32 0, ptr %refcount, align 8
  %26 = load ptr, ptr %frametype, align 8
  %defaultflags = getelementptr inbounds %struct.id3_frametype, ptr %26, i32 0, i32 3
  %27 = load i32, ptr %defaultflags, align 8
  %28 = load ptr, ptr %frame, align 8
  %flags = getelementptr inbounds %struct.id3_frame, ptr %28, i32 0, i32 3
  store i32 %27, ptr %flags, align 4
  %29 = load ptr, ptr %frame, align 8
  %group_id = getelementptr inbounds %struct.id3_frame, ptr %29, i32 0, i32 4
  store i32 0, ptr %group_id, align 8
  %30 = load ptr, ptr %frame, align 8
  %encryption_method = getelementptr inbounds %struct.id3_frame, ptr %30, i32 0, i32 5
  store i32 0, ptr %encryption_method, align 4
  %31 = load ptr, ptr %frame, align 8
  %encoded = getelementptr inbounds %struct.id3_frame, ptr %31, i32 0, i32 6
  store ptr null, ptr %encoded, align 8
  %32 = load ptr, ptr %frame, align 8
  %encoded_length = getelementptr inbounds %struct.id3_frame, ptr %32, i32 0, i32 7
  store i64 0, ptr %encoded_length, align 8
  %33 = load ptr, ptr %frame, align 8
  %decoded_length = getelementptr inbounds %struct.id3_frame, ptr %33, i32 0, i32 8
  store i64 0, ptr %decoded_length, align 8
  %34 = load ptr, ptr %frametype, align 8
  %nfields29 = getelementptr inbounds %struct.id3_frametype, ptr %34, i32 0, i32 1
  %35 = load i32, ptr %nfields29, align 8
  %36 = load ptr, ptr %frame, align 8
  %nfields30 = getelementptr inbounds %struct.id3_frame, ptr %36, i32 0, i32 9
  store i32 %35, ptr %nfields30, align 8
  %37 = load ptr, ptr %frame, align 8
  %arrayidx31 = getelementptr inbounds %struct.id3_frame, ptr %37, i64 1
  %38 = load ptr, ptr %frame, align 8
  %fields = getelementptr inbounds %struct.id3_frame, ptr %38, i32 0, i32 10
  store ptr %arrayidx31, ptr %fields, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then13
  %39 = load i32, ptr %i, align 4
  %40 = load ptr, ptr %frame, align 8
  %nfields32 = getelementptr inbounds %struct.id3_frame, ptr %40, i32 0, i32 9
  %41 = load i32, ptr %nfields32, align 8
  %cmp33 = icmp ult i32 %39, %41
  br i1 %cmp33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load ptr, ptr %frame, align 8
  %fields35 = getelementptr inbounds %struct.id3_frame, ptr %42, i32 0, i32 10
  %43 = load ptr, ptr %fields35, align 8
  %44 = load i32, ptr %i, align 4
  %idxprom = zext i32 %44 to i64
  %arrayidx36 = getelementptr inbounds %union.id3_field, ptr %43, i64 %idxprom
  %45 = load ptr, ptr %frametype, align 8
  %fields37 = getelementptr inbounds %struct.id3_frametype, ptr %45, i32 0, i32 2
  %46 = load ptr, ptr %fields37, align 8
  %47 = load i32, ptr %i, align 4
  %idxprom38 = zext i32 %47 to i64
  %arrayidx39 = getelementptr inbounds i32, ptr %46, i64 %idxprom38
  %48 = load i32, ptr %arrayidx39, align 4
  call void @id3_field_init(ptr noundef %arrayidx36, i32 noundef %48)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %49 = load i32, ptr %i, align 4
  %inc = add i32 %49, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end40

if.end40:                                         ; preds = %for.end, %if.end9
  %50 = load ptr, ptr %frame, align 8
  store ptr %50, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end40, %if.then
  %51 = load ptr, ptr %retval, align 8
  ret ptr %51
}

declare ptr @id3_frametype_lookup(ptr noundef, i32 noundef) #1

declare ptr @id3_compat_lookup(ptr noundef, i32 noundef) #1

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #2

declare void @id3_field_init(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @id3_frame_delete(ptr noundef %frame) #0 {
entry:
  %frame.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %frame, ptr %frame.addr, align 8
  %0 = load ptr, ptr %frame.addr, align 8
  %refcount = getelementptr inbounds %struct.id3_frame, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %refcount, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, ptr %i, align 4
  %3 = load ptr, ptr %frame.addr, align 8
  %nfields = getelementptr inbounds %struct.id3_frame, ptr %3, i32 0, i32 9
  %4 = load i32, ptr %nfields, align 8
  %cmp1 = icmp ult i32 %2, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %frame.addr, align 8
  %fields = getelementptr inbounds %struct.id3_frame, ptr %5, i32 0, i32 10
  %6 = load ptr, ptr %fields, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds %union.id3_field, ptr %6, i64 %idxprom
  call void @id3_field_finish(ptr noundef %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %9 = load ptr, ptr %frame.addr, align 8
  %encoded = getelementptr inbounds %struct.id3_frame, ptr %9, i32 0, i32 6
  %10 = load ptr, ptr %encoded, align 8
  %tobool = icmp ne ptr %10, null
  br i1 %tobool, label %if.then2, label %if.end

if.then2:                                         ; preds = %for.end
  %11 = load ptr, ptr %frame.addr, align 8
  %encoded3 = getelementptr inbounds %struct.id3_frame, ptr %11, i32 0, i32 6
  %12 = load ptr, ptr %encoded3, align 8
  call void @free(ptr noundef %12)
  br label %if.end

if.end:                                           ; preds = %if.then2, %for.end
  %13 = load ptr, ptr %frame.addr, align 8
  call void @free(ptr noundef %13)
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  ret void
}

declare void @id3_field_finish(ptr noundef) #1

declare void @free(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @id3_frame_addref(ptr noundef %frame) #0 {
entry:
  %frame.addr = alloca ptr, align 8
  store ptr %frame, ptr %frame.addr, align 8
  %0 = load ptr, ptr %frame.addr, align 8
  %refcount = getelementptr inbounds %struct.id3_frame, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %refcount, align 8
  %inc = add i32 %1, 1
  store i32 %inc, ptr %refcount, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @id3_frame_delref(ptr noundef %frame) #0 {
entry:
  %frame.addr = alloca ptr, align 8
  store ptr %frame, ptr %frame.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %frame.addr, align 8
  %refcount = getelementptr inbounds %struct.id3_frame, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %refcount, align 8
  %cmp = icmp ugt i32 %1, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  call void @abort() #7
  unreachable

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr %frame.addr, align 8
  %refcount1 = getelementptr inbounds %struct.id3_frame, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %refcount1, align 8
  %dec = add i32 %3, -1
  store i32 %dec, ptr %refcount1, align 8
  ret void
}

; Function Attrs: cold noreturn
declare void @abort() #3

; Function Attrs: nounwind ssp uwtable
define ptr @id3_frame_parse(ptr noundef %ptr, i64 noundef %length, i32 noundef %version) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %version.addr = alloca i32, align 4
  %frame = alloca ptr, align 8
  %id = alloca ptr, align 8
  %end = alloca ptr, align 8
  %data = alloca ptr, align 8
  %size = alloca i64, align 8
  %decoded_length = alloca i64, align 8
  %flags = alloca i32, align 4
  %group_id = alloca i32, align 4
  %encryption_method = alloca i32, align 4
  %compat = alloca ptr, align 8
  %mem = alloca ptr, align 8
  %xid = alloca [4 x i8], align 1
  %decomp = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  store i64 %length, ptr %length.addr, align 8
  store i32 %version, ptr %version.addr, align 4
  store ptr null, ptr %frame, align 8
  store i64 0, ptr %decoded_length, align 8
  store i32 0, ptr %flags, align 4
  store i32 0, ptr %group_id, align 4
  store i32 0, ptr %encryption_method, align 4
  store ptr null, ptr %compat, align 8
  store ptr null, ptr %mem, align 8
  %0 = load ptr, ptr %ptr.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %id, align 8
  %2 = load ptr, ptr %ptr.addr, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = load i64, ptr %length.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %4
  store ptr %add.ptr, ptr %end, align 8
  %5 = load i32, ptr %version.addr, align 4
  %shr = lshr i32 %5, 8
  %and = and i32 %shr, 255
  %cmp = icmp ult i32 %and, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load i32, ptr %version.addr, align 4
  %shr1 = lshr i32 %6, 8
  %and2 = and i32 %shr1, 255
  switch i32 %and2, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb11
  ]

sw.bb:                                            ; preds = %if.then
  %7 = load i64, ptr %length.addr, align 8
  %cmp3 = icmp ult i64 %7, 6
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %sw.bb
  br label %fail

if.end:                                           ; preds = %sw.bb
  %8 = load ptr, ptr %id, align 8
  %call = call ptr @id3_compat_lookup(ptr noundef %8, i32 noundef 3)
  store ptr %call, ptr %compat, align 8
  %9 = load ptr, ptr %ptr.addr, align 8
  %10 = load ptr, ptr %9, align 8
  %add.ptr5 = getelementptr inbounds i8, ptr %10, i64 3
  store ptr %add.ptr5, ptr %9, align 8
  %11 = load ptr, ptr %ptr.addr, align 8
  %call6 = call i64 @id3_parse_uint(ptr noundef %11, i32 noundef 3)
  store i64 %call6, ptr %size, align 8
  %12 = load i64, ptr %size, align 8
  %13 = load ptr, ptr %end, align 8
  %14 = load ptr, ptr %ptr.addr, align 8
  %15 = load ptr, ptr %14, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %13 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %15 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp7 = icmp ugt i64 %12, %sub.ptr.sub
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  br label %fail

if.end9:                                          ; preds = %if.end
  %16 = load ptr, ptr %ptr.addr, align 8
  %17 = load ptr, ptr %16, align 8
  %18 = load i64, ptr %size, align 8
  %add.ptr10 = getelementptr inbounds i8, ptr %17, i64 %18
  store ptr %add.ptr10, ptr %end, align 8
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.then
  %19 = load i64, ptr %length.addr, align 8
  %cmp12 = icmp ult i64 %19, 10
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %sw.bb11
  br label %fail

if.end14:                                         ; preds = %sw.bb11
  %20 = load ptr, ptr %id, align 8
  %call15 = call ptr @id3_compat_lookup(ptr noundef %20, i32 noundef 4)
  store ptr %call15, ptr %compat, align 8
  %21 = load ptr, ptr %ptr.addr, align 8
  %22 = load ptr, ptr %21, align 8
  %add.ptr16 = getelementptr inbounds i8, ptr %22, i64 4
  store ptr %add.ptr16, ptr %21, align 8
  %23 = load ptr, ptr %ptr.addr, align 8
  %call17 = call i64 @id3_parse_uint(ptr noundef %23, i32 noundef 4)
  store i64 %call17, ptr %size, align 8
  %24 = load ptr, ptr %ptr.addr, align 8
  %call18 = call i64 @id3_parse_uint(ptr noundef %24, i32 noundef 2)
  %conv = trunc i64 %call18 to i32
  store i32 %conv, ptr %flags, align 4
  %25 = load i64, ptr %size, align 8
  %26 = load ptr, ptr %end, align 8
  %27 = load ptr, ptr %ptr.addr, align 8
  %28 = load ptr, ptr %27, align 8
  %sub.ptr.lhs.cast19 = ptrtoint ptr %26 to i64
  %sub.ptr.rhs.cast20 = ptrtoint ptr %28 to i64
  %sub.ptr.sub21 = sub i64 %sub.ptr.lhs.cast19, %sub.ptr.rhs.cast20
  %cmp22 = icmp ugt i64 %25, %sub.ptr.sub21
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end14
  br label %fail

if.end25:                                         ; preds = %if.end14
  %29 = load ptr, ptr %ptr.addr, align 8
  %30 = load ptr, ptr %29, align 8
  %31 = load i64, ptr %size, align 8
  %add.ptr26 = getelementptr inbounds i8, ptr %30, i64 %31
  store ptr %add.ptr26, ptr %end, align 8
  %32 = load i32, ptr %flags, align 4
  %and27 = and i32 %32, 31
  %tobool = icmp ne i32 %and27, 0
  br i1 %tobool, label %if.then28, label %if.end33

if.then28:                                        ; preds = %if.end25
  %33 = load ptr, ptr %id, align 8
  %34 = load ptr, ptr %ptr.addr, align 8
  %35 = load ptr, ptr %end, align 8
  %36 = load ptr, ptr %ptr.addr, align 8
  %37 = load ptr, ptr %36, align 8
  %sub.ptr.lhs.cast29 = ptrtoint ptr %35 to i64
  %sub.ptr.rhs.cast30 = ptrtoint ptr %37 to i64
  %sub.ptr.sub31 = sub i64 %sub.ptr.lhs.cast29, %sub.ptr.rhs.cast30
  %call32 = call ptr @unparseable(ptr noundef %33, ptr noundef %34, i64 noundef %sub.ptr.sub31, i32 noundef 0, i32 noundef 0, i32 noundef 0, i64 noundef 0)
  store ptr %call32, ptr %frame, align 8
  br label %done

if.end33:                                         ; preds = %if.end25
  %38 = load i32, ptr %flags, align 4
  %shr34 = ashr i32 %38, 1
  %and35 = and i32 %shr34, 65280
  %39 = load i32, ptr %flags, align 4
  %shr36 = ashr i32 %39, 4
  %and37 = and i32 %shr36, 12
  %or = or i32 %and35, %and37
  %40 = load i32, ptr %flags, align 4
  %shl = shl i32 %40, 1
  %and38 = and i32 %shl, 64
  %or39 = or i32 %or, %and38
  store i32 %or39, ptr %flags, align 4
  %41 = load i32, ptr %flags, align 4
  %and40 = and i32 %41, 8
  %tobool41 = icmp ne i32 %and40, 0
  br i1 %tobool41, label %if.then42, label %if.end51

if.then42:                                        ; preds = %if.end33
  %42 = load ptr, ptr %end, align 8
  %43 = load ptr, ptr %ptr.addr, align 8
  %44 = load ptr, ptr %43, align 8
  %sub.ptr.lhs.cast43 = ptrtoint ptr %42 to i64
  %sub.ptr.rhs.cast44 = ptrtoint ptr %44 to i64
  %sub.ptr.sub45 = sub i64 %sub.ptr.lhs.cast43, %sub.ptr.rhs.cast44
  %cmp46 = icmp slt i64 %sub.ptr.sub45, 4
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.then42
  br label %fail

if.end49:                                         ; preds = %if.then42
  %45 = load ptr, ptr %ptr.addr, align 8
  %call50 = call i64 @id3_parse_uint(ptr noundef %45, i32 noundef 4)
  store i64 %call50, ptr %decoded_length, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.end49, %if.end33
  %46 = load i32, ptr %flags, align 4
  %and52 = and i32 %46, 4
  %tobool53 = icmp ne i32 %and52, 0
  br i1 %tobool53, label %if.then54, label %if.end64

if.then54:                                        ; preds = %if.end51
  %47 = load ptr, ptr %end, align 8
  %48 = load ptr, ptr %ptr.addr, align 8
  %49 = load ptr, ptr %48, align 8
  %sub.ptr.lhs.cast55 = ptrtoint ptr %47 to i64
  %sub.ptr.rhs.cast56 = ptrtoint ptr %49 to i64
  %sub.ptr.sub57 = sub i64 %sub.ptr.lhs.cast55, %sub.ptr.rhs.cast56
  %cmp58 = icmp slt i64 %sub.ptr.sub57, 1
  br i1 %cmp58, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.then54
  br label %fail

if.end61:                                         ; preds = %if.then54
  %50 = load ptr, ptr %ptr.addr, align 8
  %call62 = call i64 @id3_parse_uint(ptr noundef %50, i32 noundef 1)
  %conv63 = trunc i64 %call62 to i32
  store i32 %conv63, ptr %encryption_method, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.end61, %if.end51
  %51 = load i32, ptr %flags, align 4
  %and65 = and i32 %51, 64
  %tobool66 = icmp ne i32 %and65, 0
  br i1 %tobool66, label %if.then67, label %if.end77

if.then67:                                        ; preds = %if.end64
  %52 = load ptr, ptr %end, align 8
  %53 = load ptr, ptr %ptr.addr, align 8
  %54 = load ptr, ptr %53, align 8
  %sub.ptr.lhs.cast68 = ptrtoint ptr %52 to i64
  %sub.ptr.rhs.cast69 = ptrtoint ptr %54 to i64
  %sub.ptr.sub70 = sub i64 %sub.ptr.lhs.cast68, %sub.ptr.rhs.cast69
  %cmp71 = icmp slt i64 %sub.ptr.sub70, 1
  br i1 %cmp71, label %if.then73, label %if.end74

if.then73:                                        ; preds = %if.then67
  br label %fail

if.end74:                                         ; preds = %if.then67
  %55 = load ptr, ptr %ptr.addr, align 8
  %call75 = call i64 @id3_parse_uint(ptr noundef %55, i32 noundef 1)
  %conv76 = trunc i64 %call75 to i32
  store i32 %conv76, ptr %group_id, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.end74, %if.end64
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  br label %fail

sw.epilog:                                        ; preds = %if.end77, %if.end9
  br label %if.end146

if.else:                                          ; preds = %entry
  %56 = load i64, ptr %length.addr, align 8
  %cmp78 = icmp ult i64 %56, 10
  br i1 %cmp78, label %if.then80, label %if.end81

if.then80:                                        ; preds = %if.else
  br label %fail

if.end81:                                         ; preds = %if.else
  %57 = load ptr, ptr %ptr.addr, align 8
  %58 = load ptr, ptr %57, align 8
  %add.ptr82 = getelementptr inbounds i8, ptr %58, i64 4
  store ptr %add.ptr82, ptr %57, align 8
  %59 = load ptr, ptr %ptr.addr, align 8
  %call83 = call i64 @id3_parse_syncsafe(ptr noundef %59, i32 noundef 4)
  store i64 %call83, ptr %size, align 8
  %60 = load ptr, ptr %ptr.addr, align 8
  %call84 = call i64 @id3_parse_uint(ptr noundef %60, i32 noundef 2)
  %conv85 = trunc i64 %call84 to i32
  store i32 %conv85, ptr %flags, align 4
  %61 = load i64, ptr %size, align 8
  %62 = load ptr, ptr %end, align 8
  %63 = load ptr, ptr %ptr.addr, align 8
  %64 = load ptr, ptr %63, align 8
  %sub.ptr.lhs.cast86 = ptrtoint ptr %62 to i64
  %sub.ptr.rhs.cast87 = ptrtoint ptr %64 to i64
  %sub.ptr.sub88 = sub i64 %sub.ptr.lhs.cast86, %sub.ptr.rhs.cast87
  %cmp89 = icmp ugt i64 %61, %sub.ptr.sub88
  br i1 %cmp89, label %if.then91, label %if.end92

if.then91:                                        ; preds = %if.end81
  br label %fail

if.end92:                                         ; preds = %if.end81
  %65 = load ptr, ptr %ptr.addr, align 8
  %66 = load ptr, ptr %65, align 8
  %67 = load i64, ptr %size, align 8
  %add.ptr93 = getelementptr inbounds i8, ptr %66, i64 %67
  store ptr %add.ptr93, ptr %end, align 8
  %68 = load i32, ptr %flags, align 4
  %and94 = and i32 %68, 176
  %tobool95 = icmp ne i32 %and94, 0
  br i1 %tobool95, label %if.then96, label %if.end101

if.then96:                                        ; preds = %if.end92
  %69 = load ptr, ptr %id, align 8
  %70 = load ptr, ptr %ptr.addr, align 8
  %71 = load ptr, ptr %end, align 8
  %72 = load ptr, ptr %ptr.addr, align 8
  %73 = load ptr, ptr %72, align 8
  %sub.ptr.lhs.cast97 = ptrtoint ptr %71 to i64
  %sub.ptr.rhs.cast98 = ptrtoint ptr %73 to i64
  %sub.ptr.sub99 = sub i64 %sub.ptr.lhs.cast97, %sub.ptr.rhs.cast98
  %74 = load i32, ptr %flags, align 4
  %call100 = call ptr @unparseable(ptr noundef %69, ptr noundef %70, i64 noundef %sub.ptr.sub99, i32 noundef %74, i32 noundef 0, i32 noundef 0, i64 noundef 0)
  store ptr %call100, ptr %frame, align 8
  br label %done

if.end101:                                        ; preds = %if.end92
  %75 = load i32, ptr %flags, align 4
  %and102 = and i32 %75, 64
  %tobool103 = icmp ne i32 %and102, 0
  br i1 %tobool103, label %if.then104, label %if.end114

if.then104:                                       ; preds = %if.end101
  %76 = load ptr, ptr %end, align 8
  %77 = load ptr, ptr %ptr.addr, align 8
  %78 = load ptr, ptr %77, align 8
  %sub.ptr.lhs.cast105 = ptrtoint ptr %76 to i64
  %sub.ptr.rhs.cast106 = ptrtoint ptr %78 to i64
  %sub.ptr.sub107 = sub i64 %sub.ptr.lhs.cast105, %sub.ptr.rhs.cast106
  %cmp108 = icmp slt i64 %sub.ptr.sub107, 1
  br i1 %cmp108, label %if.then110, label %if.end111

if.then110:                                       ; preds = %if.then104
  br label %fail

if.end111:                                        ; preds = %if.then104
  %79 = load ptr, ptr %ptr.addr, align 8
  %call112 = call i64 @id3_parse_uint(ptr noundef %79, i32 noundef 1)
  %conv113 = trunc i64 %call112 to i32
  store i32 %conv113, ptr %group_id, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.end111, %if.end101
  %80 = load i32, ptr %flags, align 4
  %and115 = and i32 %80, 8
  %tobool116 = icmp ne i32 %and115, 0
  br i1 %tobool116, label %land.lhs.true, label %if.end120

land.lhs.true:                                    ; preds = %if.end114
  %81 = load i32, ptr %flags, align 4
  %and117 = and i32 %81, 1
  %tobool118 = icmp ne i32 %and117, 0
  br i1 %tobool118, label %if.end120, label %if.then119

if.then119:                                       ; preds = %land.lhs.true
  br label %fail

if.end120:                                        ; preds = %land.lhs.true, %if.end114
  %82 = load i32, ptr %flags, align 4
  %and121 = and i32 %82, 4
  %tobool122 = icmp ne i32 %and121, 0
  br i1 %tobool122, label %if.then123, label %if.end133

if.then123:                                       ; preds = %if.end120
  %83 = load ptr, ptr %end, align 8
  %84 = load ptr, ptr %ptr.addr, align 8
  %85 = load ptr, ptr %84, align 8
  %sub.ptr.lhs.cast124 = ptrtoint ptr %83 to i64
  %sub.ptr.rhs.cast125 = ptrtoint ptr %85 to i64
  %sub.ptr.sub126 = sub i64 %sub.ptr.lhs.cast124, %sub.ptr.rhs.cast125
  %cmp127 = icmp slt i64 %sub.ptr.sub126, 1
  br i1 %cmp127, label %if.then129, label %if.end130

if.then129:                                       ; preds = %if.then123
  br label %fail

if.end130:                                        ; preds = %if.then123
  %86 = load ptr, ptr %ptr.addr, align 8
  %call131 = call i64 @id3_parse_uint(ptr noundef %86, i32 noundef 1)
  %conv132 = trunc i64 %call131 to i32
  store i32 %conv132, ptr %encryption_method, align 4
  br label %if.end133

if.end133:                                        ; preds = %if.end130, %if.end120
  %87 = load i32, ptr %flags, align 4
  %and134 = and i32 %87, 1
  %tobool135 = icmp ne i32 %and134, 0
  br i1 %tobool135, label %if.then136, label %if.end145

if.then136:                                       ; preds = %if.end133
  %88 = load ptr, ptr %end, align 8
  %89 = load ptr, ptr %ptr.addr, align 8
  %90 = load ptr, ptr %89, align 8
  %sub.ptr.lhs.cast137 = ptrtoint ptr %88 to i64
  %sub.ptr.rhs.cast138 = ptrtoint ptr %90 to i64
  %sub.ptr.sub139 = sub i64 %sub.ptr.lhs.cast137, %sub.ptr.rhs.cast138
  %cmp140 = icmp slt i64 %sub.ptr.sub139, 4
  br i1 %cmp140, label %if.then142, label %if.end143

if.then142:                                       ; preds = %if.then136
  br label %fail

if.end143:                                        ; preds = %if.then136
  %91 = load ptr, ptr %ptr.addr, align 8
  %call144 = call i64 @id3_parse_syncsafe(ptr noundef %91, i32 noundef 4)
  store i64 %call144, ptr %decoded_length, align 8
  br label %if.end145

if.end145:                                        ; preds = %if.end143, %if.end133
  br label %if.end146

if.end146:                                        ; preds = %if.end145, %sw.epilog
  %92 = load ptr, ptr %compat, align 8
  %tobool147 = icmp ne ptr %92, null
  br i1 %tobool147, label %land.lhs.true148, label %if.end154

land.lhs.true148:                                 ; preds = %if.end146
  %93 = load ptr, ptr %compat, align 8
  %equiv = getelementptr inbounds %struct.id3_compat, ptr %93, i32 0, i32 1
  %94 = load ptr, ptr %equiv, align 8
  %tobool149 = icmp ne ptr %94, null
  br i1 %tobool149, label %land.lhs.true150, label %if.end154

land.lhs.true150:                                 ; preds = %land.lhs.true148
  %95 = load ptr, ptr %compat, align 8
  %translate = getelementptr inbounds %struct.id3_compat, ptr %95, i32 0, i32 2
  %96 = load ptr, ptr %translate, align 8
  %tobool151 = icmp ne ptr %96, null
  br i1 %tobool151, label %if.end154, label %if.then152

if.then152:                                       ; preds = %land.lhs.true150
  %97 = load ptr, ptr %compat, align 8
  %equiv153 = getelementptr inbounds %struct.id3_compat, ptr %97, i32 0, i32 1
  %98 = load ptr, ptr %equiv153, align 8
  store ptr %98, ptr %id, align 8
  br label %if.end154

if.end154:                                        ; preds = %if.then152, %land.lhs.true150, %land.lhs.true148, %if.end146
  %99 = load ptr, ptr %ptr.addr, align 8
  %100 = load ptr, ptr %99, align 8
  store ptr %100, ptr %data, align 8
  %101 = load ptr, ptr %end, align 8
  %102 = load ptr, ptr %ptr.addr, align 8
  store ptr %101, ptr %102, align 8
  %103 = load i32, ptr %flags, align 4
  %and155 = and i32 %103, 2
  %tobool156 = icmp ne i32 %and155, 0
  br i1 %tobool156, label %land.lhs.true157, label %if.end181

land.lhs.true157:                                 ; preds = %if.end154
  %104 = load ptr, ptr %end, align 8
  %105 = load ptr, ptr %data, align 8
  %sub.ptr.lhs.cast158 = ptrtoint ptr %104 to i64
  %sub.ptr.rhs.cast159 = ptrtoint ptr %105 to i64
  %sub.ptr.sub160 = sub i64 %sub.ptr.lhs.cast158, %sub.ptr.rhs.cast159
  %cmp161 = icmp sgt i64 %sub.ptr.sub160, 0
  br i1 %cmp161, label %if.then163, label %if.end181

if.then163:                                       ; preds = %land.lhs.true157
  %106 = load ptr, ptr %end, align 8
  %107 = load ptr, ptr %data, align 8
  %sub.ptr.lhs.cast164 = ptrtoint ptr %106 to i64
  %sub.ptr.rhs.cast165 = ptrtoint ptr %107 to i64
  %sub.ptr.sub166 = sub i64 %sub.ptr.lhs.cast164, %sub.ptr.rhs.cast165
  %call167 = call ptr @malloc(i64 noundef %sub.ptr.sub166) #6
  store ptr %call167, ptr %mem, align 8
  %108 = load ptr, ptr %mem, align 8
  %cmp168 = icmp eq ptr %108, null
  br i1 %cmp168, label %if.then170, label %if.end171

if.then170:                                       ; preds = %if.then163
  br label %fail

if.end171:                                        ; preds = %if.then163
  %109 = load ptr, ptr %mem, align 8
  %110 = load ptr, ptr %data, align 8
  %111 = load ptr, ptr %end, align 8
  %112 = load ptr, ptr %data, align 8
  %sub.ptr.lhs.cast172 = ptrtoint ptr %111 to i64
  %sub.ptr.rhs.cast173 = ptrtoint ptr %112 to i64
  %sub.ptr.sub174 = sub i64 %sub.ptr.lhs.cast172, %sub.ptr.rhs.cast173
  %113 = load ptr, ptr %mem, align 8
  %114 = call i64 @llvm.objectsize.i64.p0(ptr %113, i1 false, i1 true, i1 false)
  %call175 = call ptr @__memcpy_chk(ptr noundef %109, ptr noundef %110, i64 noundef %sub.ptr.sub174, i64 noundef %114) #8
  %115 = load ptr, ptr %mem, align 8
  %116 = load ptr, ptr %mem, align 8
  %117 = load ptr, ptr %end, align 8
  %118 = load ptr, ptr %data, align 8
  %sub.ptr.lhs.cast176 = ptrtoint ptr %117 to i64
  %sub.ptr.rhs.cast177 = ptrtoint ptr %118 to i64
  %sub.ptr.sub178 = sub i64 %sub.ptr.lhs.cast176, %sub.ptr.rhs.cast177
  %call179 = call i64 @id3_util_deunsynchronise(ptr noundef %116, i64 noundef %sub.ptr.sub178)
  %add.ptr180 = getelementptr inbounds i8, ptr %115, i64 %call179
  store ptr %add.ptr180, ptr %end, align 8
  %119 = load ptr, ptr %mem, align 8
  store ptr %119, ptr %data, align 8
  br label %if.end181

if.end181:                                        ; preds = %if.end171, %land.lhs.true157, %if.end154
  %120 = load i32, ptr %flags, align 4
  %and182 = and i32 %120, 4
  %tobool183 = icmp ne i32 %and182, 0
  br i1 %tobool183, label %if.then184, label %if.end189

if.then184:                                       ; preds = %if.end181
  %121 = load ptr, ptr %id, align 8
  %122 = load ptr, ptr %end, align 8
  %123 = load ptr, ptr %data, align 8
  %sub.ptr.lhs.cast185 = ptrtoint ptr %122 to i64
  %sub.ptr.rhs.cast186 = ptrtoint ptr %123 to i64
  %sub.ptr.sub187 = sub i64 %sub.ptr.lhs.cast185, %sub.ptr.rhs.cast186
  %124 = load i32, ptr %flags, align 4
  %125 = load i32, ptr %group_id, align 4
  %126 = load i32, ptr %encryption_method, align 4
  %127 = load i64, ptr %decoded_length, align 8
  %call188 = call ptr @unparseable(ptr noundef %121, ptr noundef %data, i64 noundef %sub.ptr.sub187, i32 noundef %124, i32 noundef %125, i32 noundef %126, i64 noundef %127)
  store ptr %call188, ptr %frame, align 8
  br label %done

if.end189:                                        ; preds = %if.end181
  %128 = load i32, ptr %flags, align 4
  %and190 = and i32 %128, 8
  %tobool191 = icmp ne i32 %and190, 0
  br i1 %tobool191, label %if.then192, label %if.end205

if.then192:                                       ; preds = %if.end189
  %129 = load ptr, ptr %data, align 8
  %130 = load ptr, ptr %end, align 8
  %131 = load ptr, ptr %data, align 8
  %sub.ptr.lhs.cast193 = ptrtoint ptr %130 to i64
  %sub.ptr.rhs.cast194 = ptrtoint ptr %131 to i64
  %sub.ptr.sub195 = sub i64 %sub.ptr.lhs.cast193, %sub.ptr.rhs.cast194
  %132 = load i64, ptr %decoded_length, align 8
  %call196 = call ptr @id3_util_decompress(ptr noundef %129, i64 noundef %sub.ptr.sub195, i64 noundef %132)
  store ptr %call196, ptr %decomp, align 8
  %133 = load ptr, ptr %decomp, align 8
  %cmp197 = icmp eq ptr %133, null
  br i1 %cmp197, label %if.then199, label %if.end200

if.then199:                                       ; preds = %if.then192
  br label %fail

if.end200:                                        ; preds = %if.then192
  %134 = load ptr, ptr %mem, align 8
  %tobool201 = icmp ne ptr %134, null
  br i1 %tobool201, label %if.then202, label %if.end203

if.then202:                                       ; preds = %if.end200
  %135 = load ptr, ptr %mem, align 8
  call void @free(ptr noundef %135)
  br label %if.end203

if.end203:                                        ; preds = %if.then202, %if.end200
  %136 = load ptr, ptr %decomp, align 8
  store ptr %136, ptr %mem, align 8
  store ptr %136, ptr %data, align 8
  %137 = load ptr, ptr %data, align 8
  %138 = load i64, ptr %decoded_length, align 8
  %add.ptr204 = getelementptr inbounds i8, ptr %137, i64 %138
  store ptr %add.ptr204, ptr %end, align 8
  br label %if.end205

if.end205:                                        ; preds = %if.end203, %if.end189
  %139 = load i32, ptr %version.addr, align 4
  %shr206 = lshr i32 %139, 8
  %and207 = and i32 %shr206, 255
  %cmp208 = icmp eq i32 %and207, 2
  br i1 %cmp208, label %if.then210, label %if.end218

if.then210:                                       ; preds = %if.end205
  %arrayidx = getelementptr inbounds [4 x i8], ptr %xid, i64 0, i64 0
  store i8 89, ptr %arrayidx, align 1
  %140 = load ptr, ptr %id, align 8
  %arrayidx211 = getelementptr inbounds i8, ptr %140, i64 0
  %141 = load i8, ptr %arrayidx211, align 1
  %arrayidx212 = getelementptr inbounds [4 x i8], ptr %xid, i64 0, i64 1
  store i8 %141, ptr %arrayidx212, align 1
  %142 = load ptr, ptr %id, align 8
  %arrayidx213 = getelementptr inbounds i8, ptr %142, i64 1
  %143 = load i8, ptr %arrayidx213, align 1
  %arrayidx214 = getelementptr inbounds [4 x i8], ptr %xid, i64 0, i64 2
  store i8 %143, ptr %arrayidx214, align 1
  %144 = load ptr, ptr %id, align 8
  %arrayidx215 = getelementptr inbounds i8, ptr %144, i64 2
  %145 = load i8, ptr %arrayidx215, align 1
  %arrayidx216 = getelementptr inbounds [4 x i8], ptr %xid, i64 0, i64 3
  store i8 %145, ptr %arrayidx216, align 1
  %arraydecay = getelementptr inbounds [4 x i8], ptr %xid, i64 0, i64 0
  store ptr %arraydecay, ptr %id, align 8
  %146 = load i32, ptr %flags, align 4
  %or217 = or i32 %146, 24576
  store i32 %or217, ptr %flags, align 4
  br label %if.end218

if.end218:                                        ; preds = %if.then210, %if.end205
  %147 = load ptr, ptr %compat, align 8
  %tobool219 = icmp ne ptr %147, null
  br i1 %tobool219, label %if.then220, label %if.end231

if.then220:                                       ; preds = %if.end218
  %148 = load ptr, ptr %compat, align 8
  %equiv221 = getelementptr inbounds %struct.id3_compat, ptr %148, i32 0, i32 1
  %149 = load ptr, ptr %equiv221, align 8
  %tobool222 = icmp ne ptr %149, null
  br i1 %tobool222, label %if.then223, label %if.else225

if.then223:                                       ; preds = %if.then220
  %150 = load ptr, ptr %compat, align 8
  %equiv224 = getelementptr inbounds %struct.id3_compat, ptr %150, i32 0, i32 1
  %151 = load ptr, ptr %equiv224, align 8
  store ptr %151, ptr %id, align 8
  br label %if.end230

if.else225:                                       ; preds = %if.then220
  %152 = load ptr, ptr %id, align 8
  %153 = load ptr, ptr %data, align 8
  %154 = load ptr, ptr %end, align 8
  %155 = load ptr, ptr %data, align 8
  %sub.ptr.lhs.cast226 = ptrtoint ptr %154 to i64
  %sub.ptr.rhs.cast227 = ptrtoint ptr %155 to i64
  %sub.ptr.sub228 = sub i64 %sub.ptr.lhs.cast226, %sub.ptr.rhs.cast227
  %call229 = call ptr @obsolete(ptr noundef %152, ptr noundef %153, i64 noundef %sub.ptr.sub228)
  store ptr %call229, ptr %frame, align 8
  br label %done

if.end230:                                        ; preds = %if.then223
  br label %if.end231

if.end231:                                        ; preds = %if.end230, %if.end218
  %156 = load ptr, ptr %id, align 8
  %call232 = call ptr @id3_frame_new(ptr noundef %156)
  store ptr %call232, ptr %frame, align 8
  %157 = load ptr, ptr %frame, align 8
  %tobool233 = icmp ne ptr %157, null
  br i1 %tobool233, label %if.then234, label %if.end262

if.then234:                                       ; preds = %if.end231
  %158 = load i32, ptr %flags, align 4
  %159 = load ptr, ptr %frame, align 8
  %flags235 = getelementptr inbounds %struct.id3_frame, ptr %159, i32 0, i32 3
  store i32 %158, ptr %flags235, align 4
  %160 = load i32, ptr %group_id, align 4
  %161 = load ptr, ptr %frame, align 8
  %group_id236 = getelementptr inbounds %struct.id3_frame, ptr %161, i32 0, i32 4
  store i32 %160, ptr %group_id236, align 8
  %162 = load ptr, ptr %compat, align 8
  %tobool237 = icmp ne ptr %162, null
  br i1 %tobool237, label %land.lhs.true238, label %if.else252

land.lhs.true238:                                 ; preds = %if.then234
  %163 = load ptr, ptr %compat, align 8
  %translate239 = getelementptr inbounds %struct.id3_compat, ptr %163, i32 0, i32 2
  %164 = load ptr, ptr %translate239, align 8
  %tobool240 = icmp ne ptr %164, null
  br i1 %tobool240, label %if.then241, label %if.else252

if.then241:                                       ; preds = %land.lhs.true238
  %165 = load ptr, ptr %compat, align 8
  %translate242 = getelementptr inbounds %struct.id3_compat, ptr %165, i32 0, i32 2
  %166 = load ptr, ptr %translate242, align 8
  %167 = load ptr, ptr %frame, align 8
  %168 = load ptr, ptr %compat, align 8
  %id243 = getelementptr inbounds %struct.id3_compat, ptr %168, i32 0, i32 0
  %169 = load ptr, ptr %id243, align 8
  %170 = load ptr, ptr %data, align 8
  %171 = load ptr, ptr %end, align 8
  %172 = load ptr, ptr %data, align 8
  %sub.ptr.lhs.cast244 = ptrtoint ptr %171 to i64
  %sub.ptr.rhs.cast245 = ptrtoint ptr %172 to i64
  %sub.ptr.sub246 = sub i64 %sub.ptr.lhs.cast244, %sub.ptr.rhs.cast245
  %call247 = call i32 %166(ptr noundef %167, ptr noundef %169, ptr noundef %170, i64 noundef %sub.ptr.sub246)
  %cmp248 = icmp eq i32 %call247, -1
  br i1 %cmp248, label %if.then250, label %if.end251

if.then250:                                       ; preds = %if.then241
  br label %fail

if.end251:                                        ; preds = %if.then241
  br label %if.end261

if.else252:                                       ; preds = %land.lhs.true238, %if.then234
  %173 = load ptr, ptr %frame, align 8
  %174 = load ptr, ptr %data, align 8
  %175 = load ptr, ptr %end, align 8
  %176 = load ptr, ptr %data, align 8
  %sub.ptr.lhs.cast253 = ptrtoint ptr %175 to i64
  %sub.ptr.rhs.cast254 = ptrtoint ptr %176 to i64
  %sub.ptr.sub255 = sub i64 %sub.ptr.lhs.cast253, %sub.ptr.rhs.cast254
  %call256 = call i32 @parse_data(ptr noundef %173, ptr noundef %174, i64 noundef %sub.ptr.sub255)
  %cmp257 = icmp eq i32 %call256, -1
  br i1 %cmp257, label %if.then259, label %if.end260

if.then259:                                       ; preds = %if.else252
  br label %fail

if.end260:                                        ; preds = %if.else252
  br label %if.end261

if.end261:                                        ; preds = %if.end260, %if.end251
  br label %if.end262

if.end262:                                        ; preds = %if.end261, %if.end231
  br i1 false, label %if.then263, label %if.end267

if.then263:                                       ; preds = %if.end262
  br label %fail

fail:                                             ; preds = %if.then263, %if.then259, %if.then250, %if.then199, %if.then170, %if.then142, %if.then129, %if.then119, %if.then110, %if.then91, %if.then80, %sw.default, %if.then73, %if.then60, %if.then48, %if.then24, %if.then13, %if.then8, %if.then4
  %177 = load ptr, ptr %frame, align 8
  %tobool264 = icmp ne ptr %177, null
  br i1 %tobool264, label %if.then265, label %if.end266

if.then265:                                       ; preds = %fail
  %178 = load ptr, ptr %frame, align 8
  call void @id3_frame_delete(ptr noundef %178)
  store ptr null, ptr %frame, align 8
  br label %if.end266

if.end266:                                        ; preds = %if.then265, %fail
  br label %if.end267

if.end267:                                        ; preds = %if.end266, %if.end262
  br label %done

done:                                             ; preds = %if.end267, %if.else225, %if.then184, %if.then96, %if.then28
  %179 = load ptr, ptr %mem, align 8
  %tobool268 = icmp ne ptr %179, null
  br i1 %tobool268, label %if.then269, label %if.end270

if.then269:                                       ; preds = %done
  %180 = load ptr, ptr %mem, align 8
  call void @free(ptr noundef %180)
  br label %if.end270

if.end270:                                        ; preds = %if.then269, %done
  %181 = load ptr, ptr %frame, align 8
  ret ptr %181
}

declare i64 @id3_parse_uint(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal ptr @unparseable(ptr noundef %id, ptr noundef %ptr, i64 noundef %length, i32 noundef %flags, i32 noundef %group_id, i32 noundef %encryption_method, i64 noundef %decoded_length) #0 {
entry:
  %id.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %group_id.addr = alloca i32, align 4
  %encryption_method.addr = alloca i32, align 4
  %decoded_length.addr = alloca i64, align 8
  %frame = alloca ptr, align 8
  %mem = alloca ptr, align 8
  store ptr %id, ptr %id.addr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  store i64 %length, ptr %length.addr, align 8
  store i32 %flags, ptr %flags.addr, align 4
  store i32 %group_id, ptr %group_id.addr, align 4
  store i32 %encryption_method, ptr %encryption_method.addr, align 4
  store i64 %decoded_length, ptr %decoded_length.addr, align 8
  store ptr null, ptr %frame, align 8
  %0 = load i64, ptr %length.addr, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i64, ptr %length.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %1, %cond.true ], [ 1, %cond.false ]
  %call = call ptr @malloc(i64 noundef %cond) #6
  store ptr %call, ptr %mem, align 8
  %2 = load ptr, ptr %mem, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  br label %fail

if.end:                                           ; preds = %cond.end
  %3 = load ptr, ptr %id.addr, align 8
  %call1 = call ptr @id3_frame_new(ptr noundef %3)
  store ptr %call1, ptr %frame, align 8
  %4 = load ptr, ptr %frame, align 8
  %cmp2 = icmp eq ptr %4, null
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %mem, align 8
  call void @free(ptr noundef %5)
  br label %if.end9

if.else:                                          ; preds = %if.end
  %6 = load ptr, ptr %mem, align 8
  %7 = load ptr, ptr %ptr.addr, align 8
  %8 = load ptr, ptr %7, align 8
  %9 = load i64, ptr %length.addr, align 8
  %10 = load ptr, ptr %mem, align 8
  %11 = call i64 @llvm.objectsize.i64.p0(ptr %10, i1 false, i1 true, i1 false)
  %call4 = call ptr @__memcpy_chk(ptr noundef %6, ptr noundef %8, i64 noundef %9, i64 noundef %11) #8
  %12 = load i32, ptr %flags.addr, align 4
  %13 = load ptr, ptr %frame, align 8
  %flags5 = getelementptr inbounds %struct.id3_frame, ptr %13, i32 0, i32 3
  store i32 %12, ptr %flags5, align 4
  %14 = load i32, ptr %group_id.addr, align 4
  %15 = load ptr, ptr %frame, align 8
  %group_id6 = getelementptr inbounds %struct.id3_frame, ptr %15, i32 0, i32 4
  store i32 %14, ptr %group_id6, align 8
  %16 = load i32, ptr %encryption_method.addr, align 4
  %17 = load ptr, ptr %frame, align 8
  %encryption_method7 = getelementptr inbounds %struct.id3_frame, ptr %17, i32 0, i32 5
  store i32 %16, ptr %encryption_method7, align 4
  %18 = load ptr, ptr %mem, align 8
  %19 = load ptr, ptr %frame, align 8
  %encoded = getelementptr inbounds %struct.id3_frame, ptr %19, i32 0, i32 6
  store ptr %18, ptr %encoded, align 8
  %20 = load i64, ptr %length.addr, align 8
  %21 = load ptr, ptr %frame, align 8
  %encoded_length = getelementptr inbounds %struct.id3_frame, ptr %21, i32 0, i32 7
  store i64 %20, ptr %encoded_length, align 8
  %22 = load i64, ptr %decoded_length.addr, align 8
  %23 = load ptr, ptr %frame, align 8
  %decoded_length8 = getelementptr inbounds %struct.id3_frame, ptr %23, i32 0, i32 8
  store i64 %22, ptr %decoded_length8, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then3
  br i1 false, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end9
  br label %fail

fail:                                             ; preds = %if.then10, %if.then
  br label %if.end11

if.end11:                                         ; preds = %fail, %if.end9
  %24 = load i64, ptr %length.addr, align 8
  %25 = load ptr, ptr %ptr.addr, align 8
  %26 = load ptr, ptr %25, align 8
  %add.ptr = getelementptr inbounds i8, ptr %26, i64 %24
  store ptr %add.ptr, ptr %25, align 8
  %27 = load ptr, ptr %frame, align 8
  ret ptr %27
}

declare i64 @id3_parse_syncsafe(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #5

declare i64 @id3_util_deunsynchronise(ptr noundef, i64 noundef) #1

declare ptr @id3_util_decompress(ptr noundef, i64 noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal ptr @obsolete(ptr noundef %id, ptr noundef %data, i64 noundef %length) #0 {
entry:
  %id.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %frame = alloca ptr, align 8
  store ptr %id, ptr %id.addr, align 8
  store ptr %data, ptr %data.addr, align 8
  store i64 %length, ptr %length.addr, align 8
  %call = call ptr @id3_frame_new(ptr noundef @.str)
  store ptr %call, ptr %frame, align 8
  %0 = load ptr, ptr %frame, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %frame, align 8
  %fields = getelementptr inbounds %struct.id3_frame, ptr %1, i32 0, i32 10
  %2 = load ptr, ptr %fields, align 8
  %arrayidx = getelementptr inbounds %union.id3_field, ptr %2, i64 0
  %3 = load ptr, ptr %id.addr, align 8
  %call1 = call i32 @id3_field_setframeid(ptr noundef %arrayidx, ptr noundef %3)
  %cmp = icmp eq i32 %call1, -1
  br i1 %cmp, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %4 = load ptr, ptr %frame, align 8
  %fields2 = getelementptr inbounds %struct.id3_frame, ptr %4, i32 0, i32 10
  %5 = load ptr, ptr %fields2, align 8
  %arrayidx3 = getelementptr inbounds %union.id3_field, ptr %5, i64 1
  %6 = load ptr, ptr %data.addr, align 8
  %7 = load i64, ptr %length.addr, align 8
  %call4 = call i32 @id3_field_setbinarydata(ptr noundef %arrayidx3, ptr noundef %6, i64 noundef %7)
  %cmp5 = icmp eq i32 %call4, -1
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %lor.lhs.false, %if.then
  br label %fail

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  br i1 false, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.end7
  br label %fail

fail:                                             ; preds = %if.then8, %if.then6
  %8 = load ptr, ptr %frame, align 8
  %tobool9 = icmp ne ptr %8, null
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %fail
  %9 = load ptr, ptr %frame, align 8
  call void @id3_frame_delete(ptr noundef %9)
  store ptr null, ptr %frame, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %fail
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.end7
  %10 = load ptr, ptr %frame, align 8
  ret ptr %10
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @parse_data(ptr noundef %frame, ptr noundef %data, i64 noundef %length) #0 {
entry:
  %retval = alloca i32, align 4
  %frame.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %encoding = alloca i32, align 4
  %end = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %frame, ptr %frame.addr, align 8
  store ptr %data, ptr %data.addr, align 8
  store i64 %length, ptr %length.addr, align 8
  store i32 0, ptr %encoding, align 4
  %0 = load ptr, ptr %data.addr, align 8
  %1 = load i64, ptr %length.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %1
  store ptr %add.ptr, ptr %end, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %3 = load ptr, ptr %frame.addr, align 8
  %nfields = getelementptr inbounds %struct.id3_frame, ptr %3, i32 0, i32 9
  %4 = load i32, ptr %nfields, align 8
  %cmp = icmp ult i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %frame.addr, align 8
  %fields = getelementptr inbounds %struct.id3_frame, ptr %5, i32 0, i32 10
  %6 = load ptr, ptr %fields, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds %union.id3_field, ptr %6, i64 %idxprom
  %8 = load ptr, ptr %end, align 8
  %9 = load ptr, ptr %data.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %8 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call = call i32 @id3_field_parse(ptr noundef %arrayidx, ptr noundef %data.addr, i64 noundef %sub.ptr.sub, ptr noundef %encoding)
  %cmp1 = icmp eq i32 %call, -1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, ptr %i, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

; Function Attrs: nounwind ssp uwtable
define i64 @id3_frame_render(ptr noundef %frame, ptr noundef %ptr, i32 noundef %options) #0 {
entry:
  %retval = alloca i64, align 8
  %frame.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  %options.addr = alloca i32, align 4
  %size = alloca i64, align 8
  %decoded_length = alloca i64, align 8
  %datalen = alloca i64, align 8
  %size_ptr = alloca ptr, align 8
  %flags_ptr = alloca ptr, align 8
  %data = alloca ptr, align 8
  %flags = alloca i32, align 4
  %comp = alloca ptr, align 8
  %complen = alloca i64, align 8
  %newlen = alloca i64, align 8
  store ptr %frame, ptr %frame.addr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  store i32 %options, ptr %options.addr, align 4
  store i64 0, ptr %size, align 8
  store ptr null, ptr %size_ptr, align 8
  store ptr null, ptr %flags_ptr, align 8
  store ptr null, ptr %data, align 8
  %0 = load ptr, ptr %frame.addr, align 8
  %flags1 = getelementptr inbounds %struct.id3_frame, ptr %0, i32 0, i32 3
  %1 = load i32, ptr %flags1, align 4
  %and = and i32 %1, 16384
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr %options.addr, align 4
  %and2 = and i32 %2, 32
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %3 = load ptr, ptr %frame.addr, align 8
  %flags4 = getelementptr inbounds %struct.id3_frame, ptr %3, i32 0, i32 3
  %4 = load i32, ptr %flags4, align 4
  %and5 = and i32 %4, 8192
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %entry
  store i64 0, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %5 = load ptr, ptr %frame.addr, align 8
  %fields = getelementptr inbounds %struct.id3_frame, ptr %5, i32 0, i32 10
  %6 = load ptr, ptr %fields, align 8
  %7 = load ptr, ptr %frame.addr, align 8
  %nfields = getelementptr inbounds %struct.id3_frame, ptr %7, i32 0, i32 9
  %8 = load i32, ptr %nfields, align 8
  %call = call i64 @render_data(ptr noundef null, ptr noundef %6, i32 noundef %8)
  store i64 %call, ptr %decoded_length, align 8
  %9 = load i64, ptr %decoded_length, align 8
  %cmp = icmp eq i64 %9, 0
  br i1 %cmp, label %land.lhs.true7, label %if.end10

land.lhs.true7:                                   ; preds = %if.end
  %10 = load ptr, ptr %frame.addr, align 8
  %encoded = getelementptr inbounds %struct.id3_frame, ptr %10, i32 0, i32 6
  %11 = load ptr, ptr %encoded, align 8
  %cmp8 = icmp eq ptr %11, null
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %land.lhs.true7
  store i64 0, ptr %retval, align 8
  br label %return

if.end10:                                         ; preds = %land.lhs.true7, %if.end
  %12 = load ptr, ptr %ptr.addr, align 8
  %13 = load ptr, ptr %frame.addr, align 8
  %id = getelementptr inbounds %struct.id3_frame, ptr %13, i32 0, i32 0
  %arraydecay = getelementptr inbounds [5 x i8], ptr %id, i64 0, i64 0
  %call11 = call i64 @id3_render_immediate(ptr noundef %12, ptr noundef %arraydecay, i32 noundef 4)
  %14 = load i64, ptr %size, align 8
  %add = add i64 %14, %call11
  store i64 %add, ptr %size, align 8
  %15 = load ptr, ptr %ptr.addr, align 8
  %tobool12 = icmp ne ptr %15, null
  br i1 %tobool12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  %16 = load ptr, ptr %ptr.addr, align 8
  %17 = load ptr, ptr %16, align 8
  store ptr %17, ptr %size_ptr, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end10
  %18 = load ptr, ptr %ptr.addr, align 8
  %call15 = call i64 @id3_render_syncsafe(ptr noundef %18, i64 noundef 0, i32 noundef 4)
  %19 = load i64, ptr %size, align 8
  %add16 = add i64 %19, %call15
  store i64 %add16, ptr %size, align 8
  %20 = load ptr, ptr %ptr.addr, align 8
  %tobool17 = icmp ne ptr %20, null
  br i1 %tobool17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end14
  %21 = load ptr, ptr %ptr.addr, align 8
  %22 = load ptr, ptr %21, align 8
  store ptr %22, ptr %flags_ptr, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end14
  %23 = load ptr, ptr %frame.addr, align 8
  %flags20 = getelementptr inbounds %struct.id3_frame, ptr %23, i32 0, i32 3
  %24 = load i32, ptr %flags20, align 4
  store i32 %24, ptr %flags, align 4
  %25 = load ptr, ptr %ptr.addr, align 8
  %26 = load i32, ptr %flags, align 4
  %conv = sext i32 %26 to i64
  %call21 = call i64 @id3_render_int(ptr noundef %25, i64 noundef %conv, i32 noundef 2)
  %27 = load i64, ptr %size, align 8
  %add22 = add i64 %27, %call21
  store i64 %add22, ptr %size, align 8
  %28 = load i32, ptr %flags, align 4
  %and23 = and i32 %28, 176
  %tobool24 = icmp ne i32 %and23, 0
  br i1 %tobool24, label %if.then25, label %if.end33

if.then25:                                        ; preds = %if.end19
  %29 = load ptr, ptr %ptr.addr, align 8
  %30 = load ptr, ptr %frame.addr, align 8
  %encoded26 = getelementptr inbounds %struct.id3_frame, ptr %30, i32 0, i32 6
  %31 = load ptr, ptr %encoded26, align 8
  %32 = load ptr, ptr %frame.addr, align 8
  %encoded_length = getelementptr inbounds %struct.id3_frame, ptr %32, i32 0, i32 7
  %33 = load i64, ptr %encoded_length, align 8
  %call27 = call i64 @id3_render_binary(ptr noundef %29, ptr noundef %31, i64 noundef %33)
  %34 = load i64, ptr %size, align 8
  %add28 = add i64 %34, %call27
  store i64 %add28, ptr %size, align 8
  %35 = load ptr, ptr %size_ptr, align 8
  %tobool29 = icmp ne ptr %35, null
  br i1 %tobool29, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.then25
  %36 = load i64, ptr %size, align 8
  %sub = sub i64 %36, 10
  %call31 = call i64 @id3_render_syncsafe(ptr noundef %size_ptr, i64 noundef %sub, i32 noundef 4)
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.then25
  %37 = load i64, ptr %size, align 8
  store i64 %37, ptr %retval, align 8
  br label %return

if.end33:                                         ; preds = %if.end19
  %38 = load i32, ptr %flags, align 4
  %and34 = and i32 %38, 28751
  store i32 %and34, ptr %flags, align 4
  %39 = load i32, ptr %flags, align 4
  %and35 = and i32 %39, -3
  store i32 %and35, ptr %flags, align 4
  %40 = load i32, ptr %options.addr, align 4
  %and36 = and i32 %40, 1
  %tobool37 = icmp ne i32 %and36, 0
  br i1 %tobool37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end33
  %41 = load i32, ptr %flags, align 4
  %or = or i32 %41, 2
  store i32 %or, ptr %flags, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end33
  %42 = load i32, ptr %flags, align 4
  %and40 = and i32 %42, 4
  %tobool41 = icmp ne i32 %and40, 0
  br i1 %tobool41, label %if.end49, label %if.then42

if.then42:                                        ; preds = %if.end39
  %43 = load i32, ptr %flags, align 4
  %and43 = and i32 %43, -9
  store i32 %and43, ptr %flags, align 4
  %44 = load i32, ptr %options.addr, align 4
  %and44 = and i32 %44, 2
  %tobool45 = icmp ne i32 %and44, 0
  br i1 %tobool45, label %if.then46, label %if.end48

if.then46:                                        ; preds = %if.then42
  %45 = load i32, ptr %flags, align 4
  %or47 = or i32 %45, 9
  store i32 %or47, ptr %flags, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.then42
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.end39
  %46 = load i32, ptr %flags, align 4
  %and50 = and i32 %46, 64
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %if.then52, label %if.end56

if.then52:                                        ; preds = %if.end49
  %47 = load ptr, ptr %ptr.addr, align 8
  %48 = load ptr, ptr %frame.addr, align 8
  %group_id = getelementptr inbounds %struct.id3_frame, ptr %48, i32 0, i32 4
  %49 = load i32, ptr %group_id, align 8
  %conv53 = sext i32 %49 to i64
  %call54 = call i64 @id3_render_int(ptr noundef %47, i64 noundef %conv53, i32 noundef 1)
  %50 = load i64, ptr %size, align 8
  %add55 = add i64 %50, %call54
  store i64 %add55, ptr %size, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.then52, %if.end49
  %51 = load i32, ptr %flags, align 4
  %and57 = and i32 %51, 4
  %tobool58 = icmp ne i32 %and57, 0
  br i1 %tobool58, label %if.then59, label %if.end63

if.then59:                                        ; preds = %if.end56
  %52 = load ptr, ptr %ptr.addr, align 8
  %53 = load ptr, ptr %frame.addr, align 8
  %encryption_method = getelementptr inbounds %struct.id3_frame, ptr %53, i32 0, i32 5
  %54 = load i32, ptr %encryption_method, align 4
  %conv60 = sext i32 %54 to i64
  %call61 = call i64 @id3_render_int(ptr noundef %52, i64 noundef %conv60, i32 noundef 1)
  %55 = load i64, ptr %size, align 8
  %add62 = add i64 %55, %call61
  store i64 %add62, ptr %size, align 8
  br label %if.end63

if.end63:                                         ; preds = %if.then59, %if.end56
  %56 = load i32, ptr %flags, align 4
  %and64 = and i32 %56, 1
  %tobool65 = icmp ne i32 %and64, 0
  br i1 %tobool65, label %if.then66, label %if.end74

if.then66:                                        ; preds = %if.end63
  %57 = load i32, ptr %flags, align 4
  %and67 = and i32 %57, 4
  %tobool68 = icmp ne i32 %and67, 0
  br i1 %tobool68, label %if.then69, label %if.end71

if.then69:                                        ; preds = %if.then66
  %58 = load ptr, ptr %frame.addr, align 8
  %decoded_length70 = getelementptr inbounds %struct.id3_frame, ptr %58, i32 0, i32 8
  %59 = load i64, ptr %decoded_length70, align 8
  store i64 %59, ptr %decoded_length, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %if.then66
  %60 = load ptr, ptr %ptr.addr, align 8
  %61 = load i64, ptr %decoded_length, align 8
  %call72 = call i64 @id3_render_syncsafe(ptr noundef %60, i64 noundef %61, i32 noundef 4)
  %62 = load i64, ptr %size, align 8
  %add73 = add i64 %62, %call72
  store i64 %add73, ptr %size, align 8
  br label %if.end74

if.end74:                                         ; preds = %if.end71, %if.end63
  %63 = load ptr, ptr %ptr.addr, align 8
  %tobool75 = icmp ne ptr %63, null
  br i1 %tobool75, label %if.then76, label %if.end77

if.then76:                                        ; preds = %if.end74
  %64 = load ptr, ptr %ptr.addr, align 8
  %65 = load ptr, ptr %64, align 8
  store ptr %65, ptr %data, align 8
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %if.end74
  %66 = load i32, ptr %flags, align 4
  %and78 = and i32 %66, 4
  %tobool79 = icmp ne i32 %and78, 0
  br i1 %tobool79, label %if.then80, label %if.else

if.then80:                                        ; preds = %if.end77
  %67 = load ptr, ptr %ptr.addr, align 8
  %68 = load ptr, ptr %frame.addr, align 8
  %encoded81 = getelementptr inbounds %struct.id3_frame, ptr %68, i32 0, i32 6
  %69 = load ptr, ptr %encoded81, align 8
  %70 = load ptr, ptr %frame.addr, align 8
  %encoded_length82 = getelementptr inbounds %struct.id3_frame, ptr %70, i32 0, i32 7
  %71 = load i64, ptr %encoded_length82, align 8
  %call83 = call i64 @id3_render_binary(ptr noundef %67, ptr noundef %69, i64 noundef %71)
  store i64 %call83, ptr %datalen, align 8
  br label %if.end104

if.else:                                          ; preds = %if.end77
  %72 = load ptr, ptr %ptr.addr, align 8
  %cmp84 = icmp eq ptr %72, null
  br i1 %cmp84, label %if.then86, label %if.else87

if.then86:                                        ; preds = %if.else
  %73 = load i64, ptr %decoded_length, align 8
  store i64 %73, ptr %datalen, align 8
  br label %if.end103

if.else87:                                        ; preds = %if.else
  %74 = load ptr, ptr %ptr.addr, align 8
  %75 = load ptr, ptr %frame.addr, align 8
  %fields88 = getelementptr inbounds %struct.id3_frame, ptr %75, i32 0, i32 10
  %76 = load ptr, ptr %fields88, align 8
  %77 = load ptr, ptr %frame.addr, align 8
  %nfields89 = getelementptr inbounds %struct.id3_frame, ptr %77, i32 0, i32 9
  %78 = load i32, ptr %nfields89, align 8
  %call90 = call i64 @render_data(ptr noundef %74, ptr noundef %76, i32 noundef %78)
  store i64 %call90, ptr %datalen, align 8
  %79 = load i32, ptr %flags, align 4
  %and91 = and i32 %79, 8
  %tobool92 = icmp ne i32 %and91, 0
  br i1 %tobool92, label %if.then93, label %if.end102

if.then93:                                        ; preds = %if.else87
  %80 = load ptr, ptr %data, align 8
  %81 = load i64, ptr %datalen, align 8
  %call94 = call ptr @id3_util_compress(ptr noundef %80, i64 noundef %81, ptr noundef %complen)
  store ptr %call94, ptr %comp, align 8
  %82 = load ptr, ptr %comp, align 8
  %cmp95 = icmp eq ptr %82, null
  br i1 %cmp95, label %if.then97, label %if.else99

if.then97:                                        ; preds = %if.then93
  %83 = load i32, ptr %flags, align 4
  %and98 = and i32 %83, -9
  store i32 %and98, ptr %flags, align 4
  br label %if.end101

if.else99:                                        ; preds = %if.then93
  %84 = load ptr, ptr %data, align 8
  %85 = load ptr, ptr %ptr.addr, align 8
  store ptr %84, ptr %85, align 8
  %86 = load ptr, ptr %ptr.addr, align 8
  %87 = load ptr, ptr %comp, align 8
  %88 = load i64, ptr %complen, align 8
  %call100 = call i64 @id3_render_binary(ptr noundef %86, ptr noundef %87, i64 noundef %88)
  store i64 %call100, ptr %datalen, align 8
  %89 = load ptr, ptr %comp, align 8
  call void @free(ptr noundef %89)
  br label %if.end101

if.end101:                                        ; preds = %if.else99, %if.then97
  br label %if.end102

if.end102:                                        ; preds = %if.end101, %if.else87
  br label %if.end103

if.end103:                                        ; preds = %if.end102, %if.then86
  br label %if.end104

if.end104:                                        ; preds = %if.end103, %if.then80
  %90 = load i32, ptr %flags, align 4
  %and105 = and i32 %90, 2
  %tobool106 = icmp ne i32 %and105, 0
  br i1 %tobool106, label %if.then107, label %if.end121

if.then107:                                       ; preds = %if.end104
  %91 = load ptr, ptr %data, align 8
  %cmp108 = icmp eq ptr %91, null
  br i1 %cmp108, label %if.then110, label %if.else111

if.then110:                                       ; preds = %if.then107
  %92 = load i64, ptr %datalen, align 8
  %mul = mul i64 %92, 2
  store i64 %mul, ptr %datalen, align 8
  br label %if.end120

if.else111:                                       ; preds = %if.then107
  %93 = load ptr, ptr %data, align 8
  %94 = load i64, ptr %datalen, align 8
  %call112 = call i64 @id3_util_unsynchronise(ptr noundef %93, i64 noundef %94)
  store i64 %call112, ptr %newlen, align 8
  %95 = load i64, ptr %newlen, align 8
  %96 = load i64, ptr %datalen, align 8
  %cmp113 = icmp eq i64 %95, %96
  br i1 %cmp113, label %if.then115, label %if.else117

if.then115:                                       ; preds = %if.else111
  %97 = load i32, ptr %flags, align 4
  %and116 = and i32 %97, -3
  store i32 %and116, ptr %flags, align 4
  br label %if.end119

if.else117:                                       ; preds = %if.else111
  %98 = load i64, ptr %newlen, align 8
  %99 = load i64, ptr %datalen, align 8
  %sub118 = sub i64 %98, %99
  %100 = load ptr, ptr %ptr.addr, align 8
  %101 = load ptr, ptr %100, align 8
  %add.ptr = getelementptr inbounds i8, ptr %101, i64 %sub118
  store ptr %add.ptr, ptr %100, align 8
  %102 = load i64, ptr %newlen, align 8
  store i64 %102, ptr %datalen, align 8
  br label %if.end119

if.end119:                                        ; preds = %if.else117, %if.then115
  br label %if.end120

if.end120:                                        ; preds = %if.end119, %if.then110
  br label %if.end121

if.end121:                                        ; preds = %if.end120, %if.end104
  %103 = load i64, ptr %datalen, align 8
  %104 = load i64, ptr %size, align 8
  %add122 = add i64 %104, %103
  store i64 %add122, ptr %size, align 8
  %105 = load ptr, ptr %size_ptr, align 8
  %tobool123 = icmp ne ptr %105, null
  br i1 %tobool123, label %if.then124, label %if.end127

if.then124:                                       ; preds = %if.end121
  %106 = load i64, ptr %size, align 8
  %sub125 = sub i64 %106, 10
  %call126 = call i64 @id3_render_syncsafe(ptr noundef %size_ptr, i64 noundef %sub125, i32 noundef 4)
  br label %if.end127

if.end127:                                        ; preds = %if.then124, %if.end121
  %107 = load ptr, ptr %flags_ptr, align 8
  %tobool128 = icmp ne ptr %107, null
  br i1 %tobool128, label %if.then129, label %if.end132

if.then129:                                       ; preds = %if.end127
  %108 = load i32, ptr %flags, align 4
  %conv130 = sext i32 %108 to i64
  %call131 = call i64 @id3_render_int(ptr noundef %flags_ptr, i64 noundef %conv130, i32 noundef 2)
  br label %if.end132

if.end132:                                        ; preds = %if.then129, %if.end127
  %109 = load i64, ptr %size, align 8
  store i64 %109, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end132, %if.end32, %if.then9, %if.then
  %110 = load i64, ptr %retval, align 8
  ret i64 %110
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @render_data(ptr noundef %ptr, ptr noundef %fields, i32 noundef %length) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  %fields.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %size = alloca i64, align 8
  %encoding = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  store ptr %fields, ptr %fields.addr, align 8
  store i32 %length, ptr %length.addr, align 4
  store i64 0, ptr %size, align 8
  store i32 0, ptr %encoding, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %length.addr, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %fields.addr, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds %union.id3_field, ptr %2, i64 %idxprom
  %4 = load ptr, ptr %ptr.addr, align 8
  %5 = load i32, ptr %i, align 4
  %6 = load i32, ptr %length.addr, align 4
  %sub = sub i32 %6, 1
  %cmp1 = icmp ult i32 %5, %sub
  %conv = zext i1 %cmp1 to i32
  %call = call i64 @id3_field_render(ptr noundef %arrayidx, ptr noundef %4, ptr noundef %encoding, i32 noundef %conv)
  %7 = load i64, ptr %size, align 8
  %add = add i64 %7, %call
  store i64 %add, ptr %size, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %9 = load i64, ptr %size, align 8
  ret i64 %9
}

declare i64 @id3_render_immediate(ptr noundef, ptr noundef, i32 noundef) #1

declare i64 @id3_render_syncsafe(ptr noundef, i64 noundef, i32 noundef) #1

declare i64 @id3_render_int(ptr noundef, i64 noundef, i32 noundef) #1

declare i64 @id3_render_binary(ptr noundef, ptr noundef, i64 noundef) #1

declare ptr @id3_util_compress(ptr noundef, i64 noundef, ptr noundef) #1

declare i64 @id3_util_unsynchronise(ptr noundef, i64 noundef) #1

declare i32 @id3_field_setframeid(ptr noundef, ptr noundef) #1

declare i32 @id3_field_setbinarydata(ptr noundef, ptr noundef, i64 noundef) #1

declare i32 @id3_field_parse(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #1

declare i64 @id3_field_render(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { cold noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { allocsize(0) }
attributes #7 = { cold noreturn }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_mad_mad_0_14_2b_libid3tag_frame_0(ptr noundef %id)  alwaysinline#0 {
entry:
  %id.addr = alloca ptr, align 8
  store ptr %id, ptr %id.addr, align 8
  %0 = load ptr, ptr %id.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1
  %call = call i32 @valid_idchar(i8 noundef signext %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %id.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %2, i64 1
  %3 = load i8, ptr %arrayidx1, align 1
  %call2 = call i32 @valid_idchar(i8 noundef signext %3)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %land.lhs.true4, label %land.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %4 = load ptr, ptr %id.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %4, i64 2
  %5 = load i8, ptr %arrayidx5, align 1
  %call6 = call i32 @valid_idchar(i8 noundef signext %5)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true4
  %6 = load ptr, ptr %id.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %6, i64 3
  %7 = load i8, ptr %arrayidx8, align 1
  %call9 = call i32 @valid_idchar(i8 noundef signext %7)
  %tobool10 = icmp ne i32 %call9, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true4, %land.lhs.true, %entry
  %8 = phi i1 [ false, %land.lhs.true4 ], [ false, %land.lhs.true ], [ false, %entry ], [ %tobool10, %land.rhs ]
  %land.ext = zext i1 %8 to i32
  ret i32 %land.ext
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
