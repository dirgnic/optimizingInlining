; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_rl_value_proxy/source_snapshot_public_repos_mibench_consumer_mad_mad-0.14.2b_libid3tag_frame.prepared.ll'
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
  %0 = load i8, ptr %id, align 1
  %call = call i32 @valid_idchar(i8 noundef signext %0)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %id.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %1, i64 1
  %2 = load i8, ptr %arrayidx1, align 1
  %call2 = call i32 @valid_idchar(i8 noundef signext %2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.end, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %land.lhs.true
  %3 = load ptr, ptr %id.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %3, i64 2
  %4 = load i8, ptr %arrayidx5, align 1
  %call6 = call i32 @valid_idchar(i8 noundef signext %4)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true4
  %5 = load ptr, ptr %id.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %5, i64 3
  %6 = load i8, ptr %arrayidx8, align 1
  %call9 = call i32 @valid_idchar(i8 noundef signext %6)
  %tobool10 = icmp ne i32 %call9, 0
  %phi.cast = zext i1 %tobool10 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true4, %land.lhs.true, %entry
  %7 = phi i32 [ 0, %land.lhs.true4 ], [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %7
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @valid_idchar(i8 noundef signext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, ptr %c.addr, align 1
  %cmp = icmp sgt i8 %c, 64
  %0 = load i8, ptr %c.addr, align 1
  %cmp3 = icmp slt i8 %0, 91
  %or.cond = select i1 %cmp, i1 %cmp3, i1 false
  br i1 %or.cond, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load i8, ptr %c.addr, align 1
  %cmp6 = icmp sgt i8 %1, 47
  %2 = load i8, ptr %c.addr, align 1
  %cmp9 = icmp slt i8 %2, 58
  %3 = select i1 %cmp6, i1 %cmp9, i1 false
  br label %lor.end

lor.end:                                          ; preds = %entry, %lor.rhs
  %4 = phi i1 [ %3, %lor.rhs ], [ true, %entry ]
  %lor.ext = zext i1 %4 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind ssp uwtable
define ptr @id3_frame_new(ptr noundef %id) #0 {
entry:
  %id.addr = alloca ptr, align 8
  %frametype = alloca ptr, align 8
  %frame = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %id, ptr %id.addr, align 8
  %call = call i32 @id3_frame_validid(ptr noundef %id)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %id.addr, align 8
  %call1 = call ptr @id3_frametype_lookup(ptr noundef %0, i32 noundef 4) #6
  store ptr %call1, ptr %frametype, align 8
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %if.then2, label %if.end9

if.then2:                                         ; preds = %if.end
  %1 = load ptr, ptr %id.addr, align 8
  %2 = load i8, ptr %1, align 1
  %conv = sext i8 %2 to i32
  switch i32 %conv, label %sw.default [
    i32 84, label %sw.bb
    i32 87, label %sw.bb3
    i32 88, label %sw.bb4
    i32 89, label %sw.bb4
    i32 90, label %sw.bb4
  ]

sw.bb:                                            ; preds = %if.then2
  store ptr @id3_frametype_text, ptr %frametype, align 8
  br label %if.end9

sw.bb3:                                           ; preds = %if.then2
  store ptr @id3_frametype_url, ptr %frametype, align 8
  br label %if.end9

sw.bb4:                                           ; preds = %if.then2, %if.then2, %if.then2
  store ptr @id3_frametype_experimental, ptr %frametype, align 8
  br label %if.end9

sw.default:                                       ; preds = %if.then2
  store ptr @id3_frametype_unknown, ptr %frametype, align 8
  %3 = load ptr, ptr %id.addr, align 8
  %call5 = call ptr @id3_compat_lookup(ptr noundef %3, i32 noundef 4) #6
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %sw.default
  store ptr @id3_frametype_obsolete, ptr %frametype, align 8
  br label %if.end9

if.end9:                                          ; preds = %sw.bb, %sw.bb3, %sw.bb4, %if.then7, %sw.default, %if.end
  %4 = load ptr, ptr %frametype, align 8
  %nfields = getelementptr inbounds %struct.id3_frametype, ptr %4, i64 0, i32 1
  %5 = load i32, ptr %nfields, align 8
  %conv10 = zext i32 %5 to i64
  %mul = mul nuw nsw i64 %conv10, 24
  %add = add nuw nsw i64 %mul, 72
  %call11 = call ptr @malloc(i64 noundef %add) #7
  store ptr %call11, ptr %frame, align 8
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end40, label %if.then13

if.then13:                                        ; preds = %if.end9
  %6 = load ptr, ptr %id.addr, align 8
  %7 = load i8, ptr %6, align 1
  %8 = load ptr, ptr %frame, align 8
  store i8 %7, ptr %8, align 8
  %arrayidx17 = getelementptr inbounds i8, ptr %6, i64 1
  %9 = load i8, ptr %arrayidx17, align 1
  %arrayidx19 = getelementptr inbounds [5 x i8], ptr %8, i64 0, i64 1
  store i8 %9, ptr %arrayidx19, align 1
  %10 = load ptr, ptr %id.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, ptr %10, i64 2
  %11 = load i8, ptr %arrayidx20, align 1
  %12 = load ptr, ptr %frame, align 8
  %arrayidx22 = getelementptr inbounds [5 x i8], ptr %12, i64 0, i64 2
  store i8 %11, ptr %arrayidx22, align 2
  %arrayidx23 = getelementptr inbounds i8, ptr %10, i64 3
  %13 = load i8, ptr %arrayidx23, align 1
  %arrayidx25 = getelementptr inbounds [5 x i8], ptr %12, i64 0, i64 3
  store i8 %13, ptr %arrayidx25, align 1
  %14 = load ptr, ptr %frame, align 8
  %arrayidx27 = getelementptr inbounds [5 x i8], ptr %14, i64 0, i64 4
  store i8 0, ptr %arrayidx27, align 4
  %15 = load ptr, ptr %frametype, align 8
  %description = getelementptr inbounds %struct.id3_frametype, ptr %15, i64 0, i32 4
  %16 = load ptr, ptr %description, align 8
  %description28 = getelementptr inbounds %struct.id3_frame, ptr %14, i64 0, i32 1
  store ptr %16, ptr %description28, align 8
  %17 = load ptr, ptr %frame, align 8
  %refcount = getelementptr inbounds %struct.id3_frame, ptr %17, i64 0, i32 2
  store i32 0, ptr %refcount, align 8
  %18 = load ptr, ptr %frametype, align 8
  %defaultflags = getelementptr inbounds %struct.id3_frametype, ptr %18, i64 0, i32 3
  %19 = load i32, ptr %defaultflags, align 8
  %flags = getelementptr inbounds %struct.id3_frame, ptr %17, i64 0, i32 3
  store i32 %19, ptr %flags, align 4
  %20 = load ptr, ptr %frame, align 8
  %group_id = getelementptr inbounds %struct.id3_frame, ptr %20, i64 0, i32 4
  store i32 0, ptr %group_id, align 8
  %encryption_method = getelementptr inbounds %struct.id3_frame, ptr %20, i64 0, i32 5
  store i32 0, ptr %encryption_method, align 4
  %encoded = getelementptr inbounds %struct.id3_frame, ptr %20, i64 0, i32 6
  store ptr null, ptr %encoded, align 8
  %21 = load ptr, ptr %frame, align 8
  %encoded_length = getelementptr inbounds %struct.id3_frame, ptr %21, i64 0, i32 7
  store i64 0, ptr %encoded_length, align 8
  %decoded_length = getelementptr inbounds %struct.id3_frame, ptr %21, i64 0, i32 8
  store i64 0, ptr %decoded_length, align 8
  %22 = load ptr, ptr %frametype, align 8
  %nfields29 = getelementptr inbounds %struct.id3_frametype, ptr %22, i64 0, i32 1
  %23 = load i32, ptr %nfields29, align 8
  %24 = load ptr, ptr %frame, align 8
  %nfields30 = getelementptr inbounds %struct.id3_frame, ptr %24, i64 0, i32 9
  store i32 %23, ptr %nfields30, align 8
  %arrayidx31 = getelementptr inbounds %struct.id3_frame, ptr %24, i64 1
  %fields = getelementptr inbounds %struct.id3_frame, ptr %24, i64 0, i32 10
  store ptr %arrayidx31, ptr %fields, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.then13
  %storemerge1 = phi i32 [ 0, %if.then13 ], [ %inc, %for.body ]
  store i32 %storemerge1, ptr %i, align 4
  %25 = load ptr, ptr %frame, align 8
  %nfields32 = getelementptr inbounds %struct.id3_frame, ptr %25, i64 0, i32 9
  %26 = load i32, ptr %nfields32, align 8
  %cmp33 = icmp ult i32 %storemerge1, %26
  br i1 %cmp33, label %for.body, label %if.end40

for.body:                                         ; preds = %for.cond
  %27 = load ptr, ptr %frame, align 8
  %fields35 = getelementptr inbounds %struct.id3_frame, ptr %27, i64 0, i32 10
  %28 = load ptr, ptr %fields35, align 8
  %29 = load i32, ptr %i, align 4
  %idxprom = zext i32 %29 to i64
  %arrayidx36 = getelementptr inbounds %union.id3_field, ptr %28, i64 %idxprom
  %30 = load ptr, ptr %frametype, align 8
  %fields37 = getelementptr inbounds %struct.id3_frametype, ptr %30, i64 0, i32 2
  %31 = load ptr, ptr %fields37, align 8
  %idxprom38 = zext i32 %29 to i64
  %arrayidx39 = getelementptr inbounds i32, ptr %31, i64 %idxprom38
  %32 = load i32, ptr %arrayidx39, align 4
  call void @id3_field_init(ptr noundef %arrayidx36, i32 noundef %32) #6
  %33 = load i32, ptr %i, align 4
  %inc = add i32 %33, 1
  br label %for.cond, !llvm.loop !6

if.end40:                                         ; preds = %for.cond, %if.end9
  %34 = load ptr, ptr %frame, align 8
  br label %return

return:                                           ; preds = %entry, %if.end40
  %storemerge = phi ptr [ %34, %if.end40 ], [ null, %entry ]
  ret ptr %storemerge
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
  %refcount = getelementptr inbounds %struct.id3_frame, ptr %frame, i64 0, i32 2
  %0 = load i32, ptr %refcount, align 8
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %for.cond, label %if.end4

for.cond:                                         ; preds = %entry, %for.body
  %storemerge = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  store i32 %storemerge, ptr %i, align 4
  %1 = load ptr, ptr %frame.addr, align 8
  %nfields = getelementptr inbounds %struct.id3_frame, ptr %1, i64 0, i32 9
  %2 = load i32, ptr %nfields, align 8
  %cmp1 = icmp ult i32 %storemerge, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %frame.addr, align 8
  %fields = getelementptr inbounds %struct.id3_frame, ptr %3, i64 0, i32 10
  %4 = load ptr, ptr %fields, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds %union.id3_field, ptr %4, i64 %idxprom
  call void @id3_field_finish(ptr noundef %arrayidx) #6
  %6 = load i32, ptr %i, align 4
  %inc = add i32 %6, 1
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr %frame.addr, align 8
  %encoded = getelementptr inbounds %struct.id3_frame, ptr %7, i64 0, i32 6
  %8 = load ptr, ptr %encoded, align 8
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.end, label %if.then2

if.then2:                                         ; preds = %for.end
  %9 = load ptr, ptr %frame.addr, align 8
  %encoded3 = getelementptr inbounds %struct.id3_frame, ptr %9, i64 0, i32 6
  %10 = load ptr, ptr %encoded3, align 8
  call void @free(ptr noundef %10) #6
  br label %if.end

if.end:                                           ; preds = %if.then2, %for.end
  %11 = load ptr, ptr %frame.addr, align 8
  call void @free(ptr noundef %11) #6
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  ret void
}

declare void @id3_field_finish(ptr noundef) #1

declare void @free(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @id3_frame_addref(ptr noundef %frame) #0 {
entry:
  %refcount = getelementptr inbounds %struct.id3_frame, ptr %frame, i64 0, i32 2
  %0 = load i32, ptr %refcount, align 8
  %inc = add i32 %0, 1
  store i32 %inc, ptr %refcount, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @id3_frame_delref(ptr noundef %frame) #0 {
entry:
  %frame.addr = alloca ptr, align 8
  store ptr %frame, ptr %frame.addr, align 8
  %0 = load ptr, ptr %frame.addr, align 8
  %refcount = getelementptr inbounds %struct.id3_frame, ptr %0, i64 0, i32 2
  %1 = load i32, ptr %refcount, align 8
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  call void @abort() #8
  unreachable

do.end:                                           ; preds = %entry
  %2 = load ptr, ptr %frame.addr, align 8
  %refcount1 = getelementptr inbounds %struct.id3_frame, ptr %2, i64 0, i32 2
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
  %2 = load i64, ptr %length.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %2
  store ptr %add.ptr, ptr %end, align 8
  %3 = load i32, ptr %version.addr, align 4
  %4 = and i32 %3, 64512
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %version.addr, align 4
  %shr1 = lshr i32 %5, 8
  %trunc = trunc i32 %shr1 to i8
  switch i8 %trunc, label %fail [
    i8 2, label %sw.bb
    i8 3, label %sw.bb11
  ]

sw.bb:                                            ; preds = %if.then
  %6 = load i64, ptr %length.addr, align 8
  %cmp3 = icmp ult i64 %6, 6
  br i1 %cmp3, label %fail, label %if.end

if.end:                                           ; preds = %sw.bb
  %7 = load ptr, ptr %id, align 8
  %call = call ptr @id3_compat_lookup(ptr noundef %7, i32 noundef 3) #6
  store ptr %call, ptr %compat, align 8
  %8 = load ptr, ptr %ptr.addr, align 8
  %9 = load ptr, ptr %8, align 8
  %add.ptr5 = getelementptr inbounds i8, ptr %9, i64 3
  store ptr %add.ptr5, ptr %8, align 8
  %call6 = call i64 @id3_parse_uint(ptr noundef nonnull %8, i32 noundef 3) #6
  store i64 %call6, ptr %size, align 8
  %10 = load ptr, ptr %end, align 8
  %11 = load ptr, ptr %ptr.addr, align 8
  %12 = load ptr, ptr %11, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %10 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %12 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp7 = icmp ugt i64 %call6, %sub.ptr.sub
  br i1 %cmp7, label %fail, label %if.end9

if.end9:                                          ; preds = %if.end
  %13 = load ptr, ptr %ptr.addr, align 8
  %14 = load ptr, ptr %13, align 8
  %15 = load i64, ptr %size, align 8
  %add.ptr10 = getelementptr inbounds i8, ptr %14, i64 %15
  store ptr %add.ptr10, ptr %end, align 8
  br label %if.end146

sw.bb11:                                          ; preds = %if.then
  %16 = load i64, ptr %length.addr, align 8
  %cmp12 = icmp ult i64 %16, 10
  br i1 %cmp12, label %fail, label %if.end14

if.end14:                                         ; preds = %sw.bb11
  %17 = load ptr, ptr %id, align 8
  %call15 = call ptr @id3_compat_lookup(ptr noundef %17, i32 noundef 4) #6
  store ptr %call15, ptr %compat, align 8
  %18 = load ptr, ptr %ptr.addr, align 8
  %19 = load ptr, ptr %18, align 8
  %add.ptr16 = getelementptr inbounds i8, ptr %19, i64 4
  store ptr %add.ptr16, ptr %18, align 8
  %call17 = call i64 @id3_parse_uint(ptr noundef nonnull %18, i32 noundef 4) #6
  store i64 %call17, ptr %size, align 8
  %call18 = call i64 @id3_parse_uint(ptr noundef nonnull %18, i32 noundef 2) #6
  %conv = trunc i64 %call18 to i32
  store i32 %conv, ptr %flags, align 4
  %20 = load ptr, ptr %end, align 8
  %21 = load ptr, ptr %ptr.addr, align 8
  %22 = load ptr, ptr %21, align 8
  %sub.ptr.lhs.cast19 = ptrtoint ptr %20 to i64
  %sub.ptr.rhs.cast20 = ptrtoint ptr %22 to i64
  %sub.ptr.sub21 = sub i64 %sub.ptr.lhs.cast19, %sub.ptr.rhs.cast20
  %cmp22 = icmp ugt i64 %call17, %sub.ptr.sub21
  br i1 %cmp22, label %fail, label %if.end25

if.end25:                                         ; preds = %if.end14
  %23 = load ptr, ptr %ptr.addr, align 8
  %24 = load ptr, ptr %23, align 8
  %25 = load i64, ptr %size, align 8
  %add.ptr26 = getelementptr inbounds i8, ptr %24, i64 %25
  store ptr %add.ptr26, ptr %end, align 8
  %26 = load i32, ptr %flags, align 4
  %and27 = and i32 %26, 31
  %tobool.not = icmp eq i32 %and27, 0
  br i1 %tobool.not, label %if.end33, label %if.then28

if.then28:                                        ; preds = %if.end25
  %27 = load ptr, ptr %id, align 8
  %28 = load ptr, ptr %ptr.addr, align 8
  %29 = load ptr, ptr %end, align 8
  %30 = load ptr, ptr %28, align 8
  %sub.ptr.lhs.cast29 = ptrtoint ptr %29 to i64
  %sub.ptr.rhs.cast30 = ptrtoint ptr %30 to i64
  %sub.ptr.sub31 = sub i64 %sub.ptr.lhs.cast29, %sub.ptr.rhs.cast30
  %call32 = call ptr @unparseable(ptr noundef %27, ptr noundef nonnull %28, i64 noundef %sub.ptr.sub31, i32 noundef 0, i32 noundef 0, i32 noundef 0, i64 noundef 0)
  store ptr %call32, ptr %frame, align 8
  br label %done

if.end33:                                         ; preds = %if.end25
  %31 = load i32, ptr %flags, align 4
  %32 = lshr i32 %31, 1
  %and35 = and i32 %32, 65280
  %33 = lshr i32 %31, 4
  %and37 = and i32 %33, 12
  %or = or i32 %and35, %and37
  %shl = shl i32 %31, 1
  %and38 = and i32 %shl, 64
  %or39 = or i32 %or, %and38
  store i32 %or39, ptr %flags, align 4
  %34 = and i32 %31, 128
  %tobool41.not = icmp eq i32 %34, 0
  br i1 %tobool41.not, label %if.end51, label %if.then42

if.then42:                                        ; preds = %if.end33
  %35 = load ptr, ptr %end, align 8
  %36 = load ptr, ptr %ptr.addr, align 8
  %37 = load ptr, ptr %36, align 8
  %sub.ptr.lhs.cast43 = ptrtoint ptr %35 to i64
  %sub.ptr.rhs.cast44 = ptrtoint ptr %37 to i64
  %sub.ptr.sub45 = sub i64 %sub.ptr.lhs.cast43, %sub.ptr.rhs.cast44
  %cmp46 = icmp slt i64 %sub.ptr.sub45, 4
  br i1 %cmp46, label %fail, label %if.end49

if.end49:                                         ; preds = %if.then42
  %38 = load ptr, ptr %ptr.addr, align 8
  %call50 = call i64 @id3_parse_uint(ptr noundef %38, i32 noundef 4) #6
  store i64 %call50, ptr %decoded_length, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.end49, %if.end33
  %39 = load i32, ptr %flags, align 4
  %and52 = and i32 %39, 4
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end64, label %if.then54

if.then54:                                        ; preds = %if.end51
  %40 = load ptr, ptr %end, align 8
  %41 = load ptr, ptr %ptr.addr, align 8
  %42 = load ptr, ptr %41, align 8
  %sub.ptr.lhs.cast55 = ptrtoint ptr %40 to i64
  %sub.ptr.rhs.cast56 = ptrtoint ptr %42 to i64
  %sub.ptr.sub57 = sub i64 %sub.ptr.lhs.cast55, %sub.ptr.rhs.cast56
  %cmp58 = icmp slt i64 %sub.ptr.sub57, 1
  br i1 %cmp58, label %fail, label %if.end61

if.end61:                                         ; preds = %if.then54
  %43 = load ptr, ptr %ptr.addr, align 8
  %call62 = call i64 @id3_parse_uint(ptr noundef %43, i32 noundef 1) #6
  %conv63 = trunc i64 %call62 to i32
  store i32 %conv63, ptr %encryption_method, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.end61, %if.end51
  %44 = load i32, ptr %flags, align 4
  %and65 = and i32 %44, 64
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.end146, label %if.then67

if.then67:                                        ; preds = %if.end64
  %45 = load ptr, ptr %end, align 8
  %46 = load ptr, ptr %ptr.addr, align 8
  %47 = load ptr, ptr %46, align 8
  %sub.ptr.lhs.cast68 = ptrtoint ptr %45 to i64
  %sub.ptr.rhs.cast69 = ptrtoint ptr %47 to i64
  %sub.ptr.sub70 = sub i64 %sub.ptr.lhs.cast68, %sub.ptr.rhs.cast69
  %cmp71 = icmp slt i64 %sub.ptr.sub70, 1
  br i1 %cmp71, label %fail, label %if.end74

if.end74:                                         ; preds = %if.then67
  %48 = load ptr, ptr %ptr.addr, align 8
  %call75 = call i64 @id3_parse_uint(ptr noundef %48, i32 noundef 1) #6
  %conv76 = trunc i64 %call75 to i32
  store i32 %conv76, ptr %group_id, align 4
  br label %if.end146

if.else:                                          ; preds = %entry
  %49 = load i64, ptr %length.addr, align 8
  %cmp78 = icmp ult i64 %49, 10
  br i1 %cmp78, label %fail, label %if.end81

if.end81:                                         ; preds = %if.else
  %50 = load ptr, ptr %ptr.addr, align 8
  %51 = load ptr, ptr %50, align 8
  %add.ptr82 = getelementptr inbounds i8, ptr %51, i64 4
  store ptr %add.ptr82, ptr %50, align 8
  %call83 = call i64 @id3_parse_syncsafe(ptr noundef nonnull %50, i32 noundef 4) #6
  store i64 %call83, ptr %size, align 8
  %call84 = call i64 @id3_parse_uint(ptr noundef nonnull %50, i32 noundef 2) #6
  %conv85 = trunc i64 %call84 to i32
  store i32 %conv85, ptr %flags, align 4
  %52 = load ptr, ptr %end, align 8
  %53 = load ptr, ptr %ptr.addr, align 8
  %54 = load ptr, ptr %53, align 8
  %sub.ptr.lhs.cast86 = ptrtoint ptr %52 to i64
  %sub.ptr.rhs.cast87 = ptrtoint ptr %54 to i64
  %sub.ptr.sub88 = sub i64 %sub.ptr.lhs.cast86, %sub.ptr.rhs.cast87
  %cmp89 = icmp ugt i64 %call83, %sub.ptr.sub88
  br i1 %cmp89, label %fail, label %if.end92

if.end92:                                         ; preds = %if.end81
  %55 = load ptr, ptr %ptr.addr, align 8
  %56 = load ptr, ptr %55, align 8
  %57 = load i64, ptr %size, align 8
  %add.ptr93 = getelementptr inbounds i8, ptr %56, i64 %57
  store ptr %add.ptr93, ptr %end, align 8
  %58 = load i32, ptr %flags, align 4
  %and94 = and i32 %58, 176
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.end101, label %if.then96

if.then96:                                        ; preds = %if.end92
  %59 = load ptr, ptr %id, align 8
  %60 = load ptr, ptr %ptr.addr, align 8
  %61 = load ptr, ptr %end, align 8
  %62 = load ptr, ptr %60, align 8
  %sub.ptr.lhs.cast97 = ptrtoint ptr %61 to i64
  %sub.ptr.rhs.cast98 = ptrtoint ptr %62 to i64
  %sub.ptr.sub99 = sub i64 %sub.ptr.lhs.cast97, %sub.ptr.rhs.cast98
  %63 = load i32, ptr %flags, align 4
  %call100 = call ptr @unparseable(ptr noundef %59, ptr noundef nonnull %60, i64 noundef %sub.ptr.sub99, i32 noundef %63, i32 noundef 0, i32 noundef 0, i64 noundef 0)
  store ptr %call100, ptr %frame, align 8
  br label %done

if.end101:                                        ; preds = %if.end92
  %64 = load i32, ptr %flags, align 4
  %and102 = and i32 %64, 64
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %if.end114, label %if.then104

if.then104:                                       ; preds = %if.end101
  %65 = load ptr, ptr %end, align 8
  %66 = load ptr, ptr %ptr.addr, align 8
  %67 = load ptr, ptr %66, align 8
  %sub.ptr.lhs.cast105 = ptrtoint ptr %65 to i64
  %sub.ptr.rhs.cast106 = ptrtoint ptr %67 to i64
  %sub.ptr.sub107 = sub i64 %sub.ptr.lhs.cast105, %sub.ptr.rhs.cast106
  %cmp108 = icmp slt i64 %sub.ptr.sub107, 1
  br i1 %cmp108, label %fail, label %if.end111

if.end111:                                        ; preds = %if.then104
  %68 = load ptr, ptr %ptr.addr, align 8
  %call112 = call i64 @id3_parse_uint(ptr noundef %68, i32 noundef 1) #6
  %conv113 = trunc i64 %call112 to i32
  store i32 %conv113, ptr %group_id, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.end111, %if.end101
  %69 = load i32, ptr %flags, align 4
  %and115 = and i32 %69, 8
  %tobool116.not = icmp eq i32 %and115, 0
  br i1 %tobool116.not, label %if.end120, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end114
  %70 = load i32, ptr %flags, align 4
  %and117 = and i32 %70, 1
  %tobool118.not = icmp eq i32 %and117, 0
  br i1 %tobool118.not, label %fail, label %if.end120

if.end120:                                        ; preds = %land.lhs.true, %if.end114
  %71 = load i32, ptr %flags, align 4
  %and121 = and i32 %71, 4
  %tobool122.not = icmp eq i32 %and121, 0
  br i1 %tobool122.not, label %if.end133, label %if.then123

if.then123:                                       ; preds = %if.end120
  %72 = load ptr, ptr %end, align 8
  %73 = load ptr, ptr %ptr.addr, align 8
  %74 = load ptr, ptr %73, align 8
  %sub.ptr.lhs.cast124 = ptrtoint ptr %72 to i64
  %sub.ptr.rhs.cast125 = ptrtoint ptr %74 to i64
  %sub.ptr.sub126 = sub i64 %sub.ptr.lhs.cast124, %sub.ptr.rhs.cast125
  %cmp127 = icmp slt i64 %sub.ptr.sub126, 1
  br i1 %cmp127, label %fail, label %if.end130

if.end130:                                        ; preds = %if.then123
  %75 = load ptr, ptr %ptr.addr, align 8
  %call131 = call i64 @id3_parse_uint(ptr noundef %75, i32 noundef 1) #6
  %conv132 = trunc i64 %call131 to i32
  store i32 %conv132, ptr %encryption_method, align 4
  br label %if.end133

if.end133:                                        ; preds = %if.end130, %if.end120
  %76 = load i32, ptr %flags, align 4
  %and134 = and i32 %76, 1
  %tobool135.not = icmp eq i32 %and134, 0
  br i1 %tobool135.not, label %if.end146, label %if.then136

if.then136:                                       ; preds = %if.end133
  %77 = load ptr, ptr %end, align 8
  %78 = load ptr, ptr %ptr.addr, align 8
  %79 = load ptr, ptr %78, align 8
  %sub.ptr.lhs.cast137 = ptrtoint ptr %77 to i64
  %sub.ptr.rhs.cast138 = ptrtoint ptr %79 to i64
  %sub.ptr.sub139 = sub i64 %sub.ptr.lhs.cast137, %sub.ptr.rhs.cast138
  %cmp140 = icmp slt i64 %sub.ptr.sub139, 4
  br i1 %cmp140, label %fail, label %if.end143

if.end143:                                        ; preds = %if.then136
  %80 = load ptr, ptr %ptr.addr, align 8
  %call144 = call i64 @id3_parse_syncsafe(ptr noundef %80, i32 noundef 4) #6
  store i64 %call144, ptr %decoded_length, align 8
  br label %if.end146

if.end146:                                        ; preds = %if.end133, %if.end143, %if.end9, %if.end74, %if.end64
  %81 = load ptr, ptr %compat, align 8
  %tobool147.not = icmp eq ptr %81, null
  br i1 %tobool147.not, label %if.end154, label %land.lhs.true148

land.lhs.true148:                                 ; preds = %if.end146
  %82 = load ptr, ptr %compat, align 8
  %equiv = getelementptr inbounds %struct.id3_compat, ptr %82, i64 0, i32 1
  %83 = load ptr, ptr %equiv, align 8
  %tobool149.not = icmp eq ptr %83, null
  br i1 %tobool149.not, label %if.end154, label %land.lhs.true150

land.lhs.true150:                                 ; preds = %land.lhs.true148
  %84 = load ptr, ptr %compat, align 8
  %translate = getelementptr inbounds %struct.id3_compat, ptr %84, i64 0, i32 2
  %85 = load ptr, ptr %translate, align 8
  %tobool151.not = icmp eq ptr %85, null
  br i1 %tobool151.not, label %if.then152, label %if.end154

if.then152:                                       ; preds = %land.lhs.true150
  %86 = load ptr, ptr %compat, align 8
  %equiv153 = getelementptr inbounds %struct.id3_compat, ptr %86, i64 0, i32 1
  %87 = load ptr, ptr %equiv153, align 8
  store ptr %87, ptr %id, align 8
  br label %if.end154

if.end154:                                        ; preds = %if.then152, %land.lhs.true150, %land.lhs.true148, %if.end146
  %88 = load ptr, ptr %ptr.addr, align 8
  %89 = load ptr, ptr %88, align 8
  store ptr %89, ptr %data, align 8
  %90 = load ptr, ptr %end, align 8
  store ptr %90, ptr %88, align 8
  %91 = load i32, ptr %flags, align 4
  %and155 = and i32 %91, 2
  %tobool156.not = icmp eq i32 %and155, 0
  br i1 %tobool156.not, label %if.end181, label %land.lhs.true157

land.lhs.true157:                                 ; preds = %if.end154
  %92 = load ptr, ptr %end, align 8
  %93 = load ptr, ptr %data, align 8
  %sub.ptr.lhs.cast158 = ptrtoint ptr %92 to i64
  %sub.ptr.rhs.cast159 = ptrtoint ptr %93 to i64
  %sub.ptr.sub160 = sub i64 %sub.ptr.lhs.cast158, %sub.ptr.rhs.cast159
  %cmp161 = icmp sgt i64 %sub.ptr.sub160, 0
  br i1 %cmp161, label %if.then163, label %if.end181

if.then163:                                       ; preds = %land.lhs.true157
  %94 = load ptr, ptr %end, align 8
  %95 = load ptr, ptr %data, align 8
  %sub.ptr.lhs.cast164 = ptrtoint ptr %94 to i64
  %sub.ptr.rhs.cast165 = ptrtoint ptr %95 to i64
  %sub.ptr.sub166 = sub i64 %sub.ptr.lhs.cast164, %sub.ptr.rhs.cast165
  %call167 = call ptr @malloc(i64 noundef %sub.ptr.sub166) #7
  store ptr %call167, ptr %mem, align 8
  %cmp168 = icmp eq ptr %call167, null
  br i1 %cmp168, label %fail, label %if.end171

if.end171:                                        ; preds = %if.then163
  %96 = load ptr, ptr %mem, align 8
  %97 = load ptr, ptr %data, align 8
  %98 = load ptr, ptr %end, align 8
  %sub.ptr.lhs.cast172 = ptrtoint ptr %98 to i64
  %sub.ptr.rhs.cast173 = ptrtoint ptr %97 to i64
  %sub.ptr.sub174 = sub i64 %sub.ptr.lhs.cast172, %sub.ptr.rhs.cast173
  %99 = call i64 @llvm.objectsize.i64.p0(ptr %96, i1 false, i1 true, i1 false)
  %call175 = call ptr @__memcpy_chk(ptr noundef %96, ptr noundef %97, i64 noundef %sub.ptr.sub174, i64 noundef %99) #6
  %100 = load ptr, ptr %mem, align 8
  %101 = load ptr, ptr %end, align 8
  %102 = load ptr, ptr %data, align 8
  %sub.ptr.lhs.cast176 = ptrtoint ptr %101 to i64
  %sub.ptr.rhs.cast177 = ptrtoint ptr %102 to i64
  %sub.ptr.sub178 = sub i64 %sub.ptr.lhs.cast176, %sub.ptr.rhs.cast177
  %call179 = call i64 @id3_util_deunsynchronise(ptr noundef %100, i64 noundef %sub.ptr.sub178) #6
  %add.ptr180 = getelementptr inbounds i8, ptr %100, i64 %call179
  store ptr %add.ptr180, ptr %end, align 8
  %103 = load ptr, ptr %mem, align 8
  store ptr %103, ptr %data, align 8
  br label %if.end181

if.end181:                                        ; preds = %if.end171, %land.lhs.true157, %if.end154
  %104 = load i32, ptr %flags, align 4
  %and182 = and i32 %104, 4
  %tobool183.not = icmp eq i32 %and182, 0
  br i1 %tobool183.not, label %if.end189, label %if.then184

if.then184:                                       ; preds = %if.end181
  %105 = load ptr, ptr %id, align 8
  %106 = load ptr, ptr %end, align 8
  %107 = load ptr, ptr %data, align 8
  %sub.ptr.lhs.cast185 = ptrtoint ptr %106 to i64
  %sub.ptr.rhs.cast186 = ptrtoint ptr %107 to i64
  %sub.ptr.sub187 = sub i64 %sub.ptr.lhs.cast185, %sub.ptr.rhs.cast186
  %108 = load i32, ptr %flags, align 4
  %109 = load i32, ptr %group_id, align 4
  %110 = load i32, ptr %encryption_method, align 4
  %111 = load i64, ptr %decoded_length, align 8
  %call188 = call ptr @unparseable(ptr noundef %105, ptr noundef nonnull %data, i64 noundef %sub.ptr.sub187, i32 noundef %108, i32 noundef %109, i32 noundef %110, i64 noundef %111)
  store ptr %call188, ptr %frame, align 8
  br label %done

if.end189:                                        ; preds = %if.end181
  %112 = load i32, ptr %flags, align 4
  %and190 = and i32 %112, 8
  %tobool191.not = icmp eq i32 %and190, 0
  br i1 %tobool191.not, label %if.end205, label %if.then192

if.then192:                                       ; preds = %if.end189
  %113 = load ptr, ptr %data, align 8
  %114 = load ptr, ptr %end, align 8
  %sub.ptr.lhs.cast193 = ptrtoint ptr %114 to i64
  %sub.ptr.rhs.cast194 = ptrtoint ptr %113 to i64
  %sub.ptr.sub195 = sub i64 %sub.ptr.lhs.cast193, %sub.ptr.rhs.cast194
  %115 = load i64, ptr %decoded_length, align 8
  %call196 = call ptr @id3_util_decompress(ptr noundef %113, i64 noundef %sub.ptr.sub195, i64 noundef %115) #6
  store ptr %call196, ptr %decomp, align 8
  %cmp197 = icmp eq ptr %call196, null
  br i1 %cmp197, label %fail, label %if.end200

if.end200:                                        ; preds = %if.then192
  %116 = load ptr, ptr %mem, align 8
  %tobool201.not = icmp eq ptr %116, null
  br i1 %tobool201.not, label %if.end203, label %if.then202

if.then202:                                       ; preds = %if.end200
  %117 = load ptr, ptr %mem, align 8
  call void @free(ptr noundef %117) #6
  br label %if.end203

if.end203:                                        ; preds = %if.then202, %if.end200
  %118 = load ptr, ptr %decomp, align 8
  store ptr %118, ptr %mem, align 8
  store ptr %118, ptr %data, align 8
  %119 = load i64, ptr %decoded_length, align 8
  %add.ptr204 = getelementptr inbounds i8, ptr %118, i64 %119
  store ptr %add.ptr204, ptr %end, align 8
  br label %if.end205

if.end205:                                        ; preds = %if.end203, %if.end189
  %120 = load i32, ptr %version.addr, align 4
  %121 = and i32 %120, 65280
  %cmp208 = icmp eq i32 %121, 512
  br i1 %cmp208, label %if.then210, label %if.end218

if.then210:                                       ; preds = %if.end205
  store i8 89, ptr %xid, align 1
  %122 = load ptr, ptr %id, align 8
  %123 = load i8, ptr %122, align 1
  %arrayidx212 = getelementptr inbounds [4 x i8], ptr %xid, i64 0, i64 1
  store i8 %123, ptr %arrayidx212, align 1
  %arrayidx213 = getelementptr inbounds i8, ptr %122, i64 1
  %124 = load i8, ptr %arrayidx213, align 1
  %arrayidx214 = getelementptr inbounds [4 x i8], ptr %xid, i64 0, i64 2
  store i8 %124, ptr %arrayidx214, align 1
  %125 = load ptr, ptr %id, align 8
  %arrayidx215 = getelementptr inbounds i8, ptr %125, i64 2
  %126 = load i8, ptr %arrayidx215, align 1
  %arrayidx216 = getelementptr inbounds [4 x i8], ptr %xid, i64 0, i64 3
  store i8 %126, ptr %arrayidx216, align 1
  store ptr %xid, ptr %id, align 8
  %127 = load i32, ptr %flags, align 4
  %or217 = or i32 %127, 24576
  store i32 %or217, ptr %flags, align 4
  br label %if.end218

if.end218:                                        ; preds = %if.then210, %if.end205
  %128 = load ptr, ptr %compat, align 8
  %tobool219.not = icmp eq ptr %128, null
  br i1 %tobool219.not, label %if.end231, label %if.then220

if.then220:                                       ; preds = %if.end218
  %129 = load ptr, ptr %compat, align 8
  %equiv221 = getelementptr inbounds %struct.id3_compat, ptr %129, i64 0, i32 1
  %130 = load ptr, ptr %equiv221, align 8
  %tobool222.not = icmp eq ptr %130, null
  br i1 %tobool222.not, label %if.else225, label %if.then223

if.then223:                                       ; preds = %if.then220
  %131 = load ptr, ptr %compat, align 8
  %equiv224 = getelementptr inbounds %struct.id3_compat, ptr %131, i64 0, i32 1
  %132 = load ptr, ptr %equiv224, align 8
  store ptr %132, ptr %id, align 8
  br label %if.end231

if.else225:                                       ; preds = %if.then220
  %133 = load ptr, ptr %id, align 8
  %134 = load ptr, ptr %data, align 8
  %135 = load ptr, ptr %end, align 8
  %sub.ptr.lhs.cast226 = ptrtoint ptr %135 to i64
  %sub.ptr.rhs.cast227 = ptrtoint ptr %134 to i64
  %sub.ptr.sub228 = sub i64 %sub.ptr.lhs.cast226, %sub.ptr.rhs.cast227
  %call229 = call ptr @obsolete(ptr noundef %133, ptr noundef %134, i64 noundef %sub.ptr.sub228)
  store ptr %call229, ptr %frame, align 8
  br label %done

if.end231:                                        ; preds = %if.then223, %if.end218
  %136 = load ptr, ptr %id, align 8
  %call232 = call ptr @id3_frame_new(ptr noundef %136)
  store ptr %call232, ptr %frame, align 8
  %tobool233.not = icmp eq ptr %call232, null
  br i1 %tobool233.not, label %done, label %if.then234

if.then234:                                       ; preds = %if.end231
  %137 = load i32, ptr %flags, align 4
  %138 = load ptr, ptr %frame, align 8
  %flags235 = getelementptr inbounds %struct.id3_frame, ptr %138, i64 0, i32 3
  store i32 %137, ptr %flags235, align 4
  %139 = load i32, ptr %group_id, align 4
  %group_id236 = getelementptr inbounds %struct.id3_frame, ptr %138, i64 0, i32 4
  store i32 %139, ptr %group_id236, align 8
  %140 = load ptr, ptr %compat, align 8
  %tobool237.not = icmp eq ptr %140, null
  br i1 %tobool237.not, label %if.else252, label %land.lhs.true238

land.lhs.true238:                                 ; preds = %if.then234
  %141 = load ptr, ptr %compat, align 8
  %translate239 = getelementptr inbounds %struct.id3_compat, ptr %141, i64 0, i32 2
  %142 = load ptr, ptr %translate239, align 8
  %tobool240.not = icmp eq ptr %142, null
  br i1 %tobool240.not, label %if.else252, label %if.then241

if.then241:                                       ; preds = %land.lhs.true238
  %143 = load ptr, ptr %compat, align 8
  %translate242 = getelementptr inbounds %struct.id3_compat, ptr %143, i64 0, i32 2
  %144 = load ptr, ptr %translate242, align 8
  %145 = load ptr, ptr %frame, align 8
  %146 = load ptr, ptr %143, align 8
  %147 = load ptr, ptr %data, align 8
  %148 = load ptr, ptr %end, align 8
  %sub.ptr.lhs.cast244 = ptrtoint ptr %148 to i64
  %sub.ptr.rhs.cast245 = ptrtoint ptr %147 to i64
  %sub.ptr.sub246 = sub i64 %sub.ptr.lhs.cast244, %sub.ptr.rhs.cast245
  %call247 = call i32 %144(ptr noundef %145, ptr noundef %146, ptr noundef %147, i64 noundef %sub.ptr.sub246) #6
  %cmp248 = icmp eq i32 %call247, -1
  br i1 %cmp248, label %fail, label %done

if.else252:                                       ; preds = %land.lhs.true238, %if.then234
  %149 = load ptr, ptr %frame, align 8
  %150 = load ptr, ptr %data, align 8
  %151 = load ptr, ptr %end, align 8
  %sub.ptr.lhs.cast253 = ptrtoint ptr %151 to i64
  %sub.ptr.rhs.cast254 = ptrtoint ptr %150 to i64
  %sub.ptr.sub255 = sub i64 %sub.ptr.lhs.cast253, %sub.ptr.rhs.cast254
  %call256 = call i32 @parse_data(ptr noundef %149, ptr noundef %150, i64 noundef %sub.ptr.sub255)
  %cmp257 = icmp eq i32 %call256, -1
  br i1 %cmp257, label %fail, label %done

fail:                                             ; preds = %if.else252, %if.then241, %if.then192, %if.then163, %if.then136, %if.then123, %land.lhs.true, %if.then104, %if.end81, %if.else, %if.then, %if.then67, %if.then54, %if.then42, %if.end14, %sw.bb11, %if.end, %sw.bb
  %152 = load ptr, ptr %frame, align 8
  %tobool264.not = icmp eq ptr %152, null
  br i1 %tobool264.not, label %done, label %if.then265

if.then265:                                       ; preds = %fail
  %153 = load ptr, ptr %frame, align 8
  call void @id3_frame_delete(ptr noundef %153)
  store ptr null, ptr %frame, align 8
  br label %done

done:                                             ; preds = %if.then241, %if.else252, %if.end231, %if.then265, %fail, %if.else225, %if.then184, %if.then96, %if.then28
  %154 = load ptr, ptr %mem, align 8
  %tobool268.not = icmp eq ptr %154, null
  br i1 %tobool268.not, label %if.end270, label %if.then269

if.then269:                                       ; preds = %done
  %155 = load ptr, ptr %mem, align 8
  call void @free(ptr noundef %155) #6
  br label %if.end270

if.end270:                                        ; preds = %if.then269, %done
  %156 = load ptr, ptr %frame, align 8
  ret ptr %156
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
  %tobool.not = icmp eq i64 %length, 0
  %0 = load i64, ptr %length.addr, align 8
  %cond = select i1 %tobool.not, i64 1, i64 %0
  %call = call ptr @malloc(i64 noundef %cond) #7
  store ptr %call, ptr %mem, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.end11, label %if.end

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %id.addr, align 8
  %call1 = call ptr @id3_frame_new(ptr noundef %1)
  store ptr %call1, ptr %frame, align 8
  %cmp2 = icmp eq ptr %call1, null
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %2 = load ptr, ptr %mem, align 8
  call void @free(ptr noundef %2) #6
  br label %if.end11

if.else:                                          ; preds = %if.end
  %3 = load ptr, ptr %mem, align 8
  %4 = load ptr, ptr %ptr.addr, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load i64, ptr %length.addr, align 8
  %7 = call i64 @llvm.objectsize.i64.p0(ptr %3, i1 false, i1 true, i1 false)
  %call4 = call ptr @__memcpy_chk(ptr noundef %3, ptr noundef %5, i64 noundef %6, i64 noundef %7) #6
  %8 = load i32, ptr %flags.addr, align 4
  %9 = load ptr, ptr %frame, align 8
  %flags5 = getelementptr inbounds %struct.id3_frame, ptr %9, i64 0, i32 3
  store i32 %8, ptr %flags5, align 4
  %10 = load i32, ptr %group_id.addr, align 4
  %group_id6 = getelementptr inbounds %struct.id3_frame, ptr %9, i64 0, i32 4
  store i32 %10, ptr %group_id6, align 8
  %11 = load i32, ptr %encryption_method.addr, align 4
  %12 = load ptr, ptr %frame, align 8
  %encryption_method7 = getelementptr inbounds %struct.id3_frame, ptr %12, i64 0, i32 5
  store i32 %11, ptr %encryption_method7, align 4
  %13 = load ptr, ptr %mem, align 8
  %encoded = getelementptr inbounds %struct.id3_frame, ptr %12, i64 0, i32 6
  store ptr %13, ptr %encoded, align 8
  %14 = load i64, ptr %length.addr, align 8
  %15 = load ptr, ptr %frame, align 8
  %encoded_length = getelementptr inbounds %struct.id3_frame, ptr %15, i64 0, i32 7
  store i64 %14, ptr %encoded_length, align 8
  %16 = load i64, ptr %decoded_length.addr, align 8
  %decoded_length8 = getelementptr inbounds %struct.id3_frame, ptr %15, i64 0, i32 8
  store i64 %16, ptr %decoded_length8, align 8
  br label %if.end11

if.end11:                                         ; preds = %entry, %if.then3, %if.else
  %17 = load i64, ptr %length.addr, align 8
  %18 = load ptr, ptr %ptr.addr, align 8
  %19 = load ptr, ptr %18, align 8
  %add.ptr = getelementptr inbounds i8, ptr %19, i64 %17
  store ptr %add.ptr, ptr %18, align 8
  %20 = load ptr, ptr %frame, align 8
  ret ptr %20
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
  %call = call ptr @id3_frame_new(ptr noundef nonnull @.str)
  store ptr %call, ptr %frame, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end12, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %frame, align 8
  %fields = getelementptr inbounds %struct.id3_frame, ptr %0, i64 0, i32 10
  %1 = load ptr, ptr %fields, align 8
  %2 = load ptr, ptr %id.addr, align 8
  %call1 = call i32 @id3_field_setframeid(ptr noundef %1, ptr noundef %2) #6
  %cmp = icmp eq i32 %call1, -1
  br i1 %cmp, label %fail, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %3 = load ptr, ptr %frame, align 8
  %fields2 = getelementptr inbounds %struct.id3_frame, ptr %3, i64 0, i32 10
  %4 = load ptr, ptr %fields2, align 8
  %arrayidx3 = getelementptr inbounds %union.id3_field, ptr %4, i64 1
  %5 = load ptr, ptr %data.addr, align 8
  %6 = load i64, ptr %length.addr, align 8
  %call4 = call i32 @id3_field_setbinarydata(ptr noundef nonnull %arrayidx3, ptr noundef %5, i64 noundef %6) #6
  %cmp5 = icmp ne i32 %call4, -1
  %7 = load ptr, ptr %frame, align 8
  %tobool9.not = icmp eq ptr %7, null
  %or.cond = select i1 %cmp5, i1 true, i1 %tobool9.not
  br i1 %or.cond, label %if.end12, label %if.then10

fail:                                             ; preds = %if.then
  %.old = load ptr, ptr %frame, align 8
  %tobool9.not.old = icmp eq ptr %.old, null
  br i1 %tobool9.not.old, label %if.end12, label %if.then10

if.then10:                                        ; preds = %lor.lhs.false, %fail
  %8 = load ptr, ptr %frame, align 8
  call void @id3_frame_delete(ptr noundef %8)
  store ptr null, ptr %frame, align 8
  br label %if.end12

if.end12:                                         ; preds = %fail, %if.then10, %entry, %lor.lhs.false
  %9 = load ptr, ptr %frame, align 8
  ret ptr %9
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @parse_data(ptr noundef %frame, ptr noundef %data, i64 noundef %length) #0 {
entry:
  %frame.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %encoding = alloca i32, align 4
  %end = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %frame, ptr %frame.addr, align 8
  store ptr %data, ptr %data.addr, align 8
  store i32 0, ptr %encoding, align 4
  %add.ptr = getelementptr inbounds i8, ptr %data, i64 %length
  store ptr %add.ptr, ptr %end, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr %i, align 4
  %0 = load ptr, ptr %frame.addr, align 8
  %nfields = getelementptr inbounds %struct.id3_frame, ptr %0, i64 0, i32 9
  %1 = load i32, ptr %nfields, align 8
  %cmp = icmp ult i32 %storemerge, %1
  br i1 %cmp, label %for.body, label %return

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %frame.addr, align 8
  %fields = getelementptr inbounds %struct.id3_frame, ptr %2, i64 0, i32 10
  %3 = load ptr, ptr %fields, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds %union.id3_field, ptr %3, i64 %idxprom
  %5 = load ptr, ptr %end, align 8
  %6 = load ptr, ptr %data.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %5 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call = call i32 @id3_field_parse(ptr noundef %arrayidx, ptr noundef nonnull %data.addr, i64 noundef %sub.ptr.sub, ptr noundef nonnull %encoding) #6
  %cmp1 = icmp eq i32 %call, -1
  br i1 %cmp1, label %return, label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add i32 %7, 1
  br label %for.cond, !llvm.loop !9

return:                                           ; preds = %for.cond, %for.body
  %storemerge1 = phi i32 [ -1, %for.body ], [ 0, %for.cond ]
  ret i32 %storemerge1
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
  %flags1 = getelementptr inbounds %struct.id3_frame, ptr %0, i64 0, i32 3
  %1 = load i32, ptr %flags1, align 4
  %and = and i32 %1, 16384
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr %options.addr, align 4
  %and2 = and i32 %2, 32
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %3 = load ptr, ptr %frame.addr, align 8
  %flags4 = getelementptr inbounds %struct.id3_frame, ptr %3, i64 0, i32 3
  %4 = load i32, ptr %flags4, align 4
  %and5 = and i32 %4, 8192
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  store i64 0, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %5 = load ptr, ptr %frame.addr, align 8
  %fields = getelementptr inbounds %struct.id3_frame, ptr %5, i64 0, i32 10
  %6 = load ptr, ptr %fields, align 8
  %nfields = getelementptr inbounds %struct.id3_frame, ptr %5, i64 0, i32 9
  %7 = load i32, ptr %nfields, align 8
  %call = call i64 @render_data(ptr noundef null, ptr noundef %6, i32 noundef %7)
  store i64 %call, ptr %decoded_length, align 8
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %land.lhs.true7, label %if.end10

land.lhs.true7:                                   ; preds = %if.end
  %8 = load ptr, ptr %frame.addr, align 8
  %encoded = getelementptr inbounds %struct.id3_frame, ptr %8, i64 0, i32 6
  %9 = load ptr, ptr %encoded, align 8
  %cmp8 = icmp eq ptr %9, null
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %land.lhs.true7
  store i64 0, ptr %retval, align 8
  br label %return

if.end10:                                         ; preds = %land.lhs.true7, %if.end
  %10 = load ptr, ptr %ptr.addr, align 8
  %11 = load ptr, ptr %frame.addr, align 8
  %call11 = call i64 @id3_render_immediate(ptr noundef %10, ptr noundef %11, i32 noundef 4) #6
  %12 = load i64, ptr %size, align 8
  %add = add i64 %12, %call11
  store i64 %add, ptr %size, align 8
  %tobool12.not = icmp eq ptr %10, null
  br i1 %tobool12.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end10
  %13 = load ptr, ptr %ptr.addr, align 8
  %14 = load ptr, ptr %13, align 8
  store ptr %14, ptr %size_ptr, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end10
  %15 = load ptr, ptr %ptr.addr, align 8
  %call15 = call i64 @id3_render_syncsafe(ptr noundef %15, i64 noundef 0, i32 noundef 4) #6
  %16 = load i64, ptr %size, align 8
  %add16 = add i64 %16, %call15
  store i64 %add16, ptr %size, align 8
  %tobool17.not = icmp eq ptr %15, null
  br i1 %tobool17.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end14
  %17 = load ptr, ptr %ptr.addr, align 8
  %18 = load ptr, ptr %17, align 8
  store ptr %18, ptr %flags_ptr, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end14
  %19 = load ptr, ptr %frame.addr, align 8
  %flags20 = getelementptr inbounds %struct.id3_frame, ptr %19, i64 0, i32 3
  %20 = load i32, ptr %flags20, align 4
  store i32 %20, ptr %flags, align 4
  %21 = load ptr, ptr %ptr.addr, align 8
  %conv = sext i32 %20 to i64
  %call21 = call i64 @id3_render_int(ptr noundef %21, i64 noundef %conv, i32 noundef 2) #6
  %22 = load i64, ptr %size, align 8
  %add22 = add i64 %22, %call21
  store i64 %add22, ptr %size, align 8
  %23 = load i32, ptr %flags, align 4
  %and23 = and i32 %23, 176
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end33, label %if.then25

if.then25:                                        ; preds = %if.end19
  %24 = load ptr, ptr %ptr.addr, align 8
  %25 = load ptr, ptr %frame.addr, align 8
  %encoded26 = getelementptr inbounds %struct.id3_frame, ptr %25, i64 0, i32 6
  %26 = load ptr, ptr %encoded26, align 8
  %encoded_length = getelementptr inbounds %struct.id3_frame, ptr %25, i64 0, i32 7
  %27 = load i64, ptr %encoded_length, align 8
  %call27 = call i64 @id3_render_binary(ptr noundef %24, ptr noundef %26, i64 noundef %27) #6
  %28 = load i64, ptr %size, align 8
  %add28 = add i64 %28, %call27
  store i64 %add28, ptr %size, align 8
  %29 = load ptr, ptr %size_ptr, align 8
  %tobool29.not = icmp eq ptr %29, null
  br i1 %tobool29.not, label %if.end32, label %if.then30

if.then30:                                        ; preds = %if.then25
  %30 = load i64, ptr %size, align 8
  %sub = add i64 %30, -10
  %call31 = call i64 @id3_render_syncsafe(ptr noundef nonnull %size_ptr, i64 noundef %sub, i32 noundef 4) #6
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.then25
  %31 = load i64, ptr %size, align 8
  store i64 %31, ptr %retval, align 8
  br label %return

if.end33:                                         ; preds = %if.end19
  %32 = load i32, ptr %flags, align 4
  %and35 = and i32 %32, 28749
  store i32 %and35, ptr %flags, align 4
  %33 = load i32, ptr %options.addr, align 4
  %and36 = and i32 %33, 1
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end39, label %if.then38

if.then38:                                        ; preds = %if.end33
  %34 = load i32, ptr %flags, align 4
  %or = or i32 %34, 2
  store i32 %or, ptr %flags, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end33
  %35 = load i32, ptr %flags, align 4
  %and40 = and i32 %35, 4
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.then42, label %if.end49

if.then42:                                        ; preds = %if.end39
  %36 = load i32, ptr %flags, align 4
  %and43 = and i32 %36, -9
  store i32 %and43, ptr %flags, align 4
  %37 = load i32, ptr %options.addr, align 4
  %and44 = and i32 %37, 2
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end49, label %if.then46

if.then46:                                        ; preds = %if.then42
  %38 = load i32, ptr %flags, align 4
  %or47 = or i32 %38, 9
  store i32 %or47, ptr %flags, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then42, %if.then46, %if.end39
  %39 = load i32, ptr %flags, align 4
  %and50 = and i32 %39, 64
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.end56, label %if.then52

if.then52:                                        ; preds = %if.end49
  %40 = load ptr, ptr %ptr.addr, align 8
  %41 = load ptr, ptr %frame.addr, align 8
  %group_id = getelementptr inbounds %struct.id3_frame, ptr %41, i64 0, i32 4
  %42 = load i32, ptr %group_id, align 8
  %conv53 = sext i32 %42 to i64
  %call54 = call i64 @id3_render_int(ptr noundef %40, i64 noundef %conv53, i32 noundef 1) #6
  %43 = load i64, ptr %size, align 8
  %add55 = add i64 %43, %call54
  store i64 %add55, ptr %size, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.then52, %if.end49
  %44 = load i32, ptr %flags, align 4
  %and57 = and i32 %44, 4
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end63, label %if.then59

if.then59:                                        ; preds = %if.end56
  %45 = load ptr, ptr %ptr.addr, align 8
  %46 = load ptr, ptr %frame.addr, align 8
  %encryption_method = getelementptr inbounds %struct.id3_frame, ptr %46, i64 0, i32 5
  %47 = load i32, ptr %encryption_method, align 4
  %conv60 = sext i32 %47 to i64
  %call61 = call i64 @id3_render_int(ptr noundef %45, i64 noundef %conv60, i32 noundef 1) #6
  %48 = load i64, ptr %size, align 8
  %add62 = add i64 %48, %call61
  store i64 %add62, ptr %size, align 8
  br label %if.end63

if.end63:                                         ; preds = %if.then59, %if.end56
  %49 = load i32, ptr %flags, align 4
  %and64 = and i32 %49, 1
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.end74, label %if.then66

if.then66:                                        ; preds = %if.end63
  %50 = load i32, ptr %flags, align 4
  %and67 = and i32 %50, 4
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end71, label %if.then69

if.then69:                                        ; preds = %if.then66
  %51 = load ptr, ptr %frame.addr, align 8
  %decoded_length70 = getelementptr inbounds %struct.id3_frame, ptr %51, i64 0, i32 8
  %52 = load i64, ptr %decoded_length70, align 8
  store i64 %52, ptr %decoded_length, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %if.then66
  %53 = load ptr, ptr %ptr.addr, align 8
  %54 = load i64, ptr %decoded_length, align 8
  %call72 = call i64 @id3_render_syncsafe(ptr noundef %53, i64 noundef %54, i32 noundef 4) #6
  %55 = load i64, ptr %size, align 8
  %add73 = add i64 %55, %call72
  store i64 %add73, ptr %size, align 8
  br label %if.end74

if.end74:                                         ; preds = %if.end71, %if.end63
  %56 = load ptr, ptr %ptr.addr, align 8
  %tobool75.not = icmp eq ptr %56, null
  br i1 %tobool75.not, label %if.end77, label %if.then76

if.then76:                                        ; preds = %if.end74
  %57 = load ptr, ptr %ptr.addr, align 8
  %58 = load ptr, ptr %57, align 8
  store ptr %58, ptr %data, align 8
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %if.end74
  %59 = load i32, ptr %flags, align 4
  %and78 = and i32 %59, 4
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.else, label %if.then80

if.then80:                                        ; preds = %if.end77
  %60 = load ptr, ptr %ptr.addr, align 8
  %61 = load ptr, ptr %frame.addr, align 8
  %encoded81 = getelementptr inbounds %struct.id3_frame, ptr %61, i64 0, i32 6
  %62 = load ptr, ptr %encoded81, align 8
  %encoded_length82 = getelementptr inbounds %struct.id3_frame, ptr %61, i64 0, i32 7
  %63 = load i64, ptr %encoded_length82, align 8
  %call83 = call i64 @id3_render_binary(ptr noundef %60, ptr noundef %62, i64 noundef %63) #6
  store i64 %call83, ptr %datalen, align 8
  br label %if.end104

if.else:                                          ; preds = %if.end77
  %64 = load ptr, ptr %ptr.addr, align 8
  %cmp84 = icmp eq ptr %64, null
  br i1 %cmp84, label %if.then86, label %if.else87

if.then86:                                        ; preds = %if.else
  %65 = load i64, ptr %decoded_length, align 8
  store i64 %65, ptr %datalen, align 8
  br label %if.end104

if.else87:                                        ; preds = %if.else
  %66 = load ptr, ptr %ptr.addr, align 8
  %67 = load ptr, ptr %frame.addr, align 8
  %fields88 = getelementptr inbounds %struct.id3_frame, ptr %67, i64 0, i32 10
  %68 = load ptr, ptr %fields88, align 8
  %nfields89 = getelementptr inbounds %struct.id3_frame, ptr %67, i64 0, i32 9
  %69 = load i32, ptr %nfields89, align 8
  %call90 = call i64 @render_data(ptr noundef %66, ptr noundef %68, i32 noundef %69)
  store i64 %call90, ptr %datalen, align 8
  %70 = load i32, ptr %flags, align 4
  %and91 = and i32 %70, 8
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.end104, label %if.then93

if.then93:                                        ; preds = %if.else87
  %71 = load ptr, ptr %data, align 8
  %72 = load i64, ptr %datalen, align 8
  %call94 = call ptr @id3_util_compress(ptr noundef %71, i64 noundef %72, ptr noundef nonnull %complen) #6
  store ptr %call94, ptr %comp, align 8
  %cmp95 = icmp eq ptr %call94, null
  br i1 %cmp95, label %if.then97, label %if.else99

if.then97:                                        ; preds = %if.then93
  %73 = load i32, ptr %flags, align 4
  %and98 = and i32 %73, -9
  store i32 %and98, ptr %flags, align 4
  br label %if.end104

if.else99:                                        ; preds = %if.then93
  %74 = load ptr, ptr %data, align 8
  %75 = load ptr, ptr %ptr.addr, align 8
  store ptr %74, ptr %75, align 8
  %76 = load ptr, ptr %comp, align 8
  %77 = load i64, ptr %complen, align 8
  %call100 = call i64 @id3_render_binary(ptr noundef nonnull %75, ptr noundef %76, i64 noundef %77) #6
  store i64 %call100, ptr %datalen, align 8
  call void @free(ptr noundef %76) #6
  br label %if.end104

if.end104:                                        ; preds = %if.then86, %if.then97, %if.else99, %if.else87, %if.then80
  %78 = load i32, ptr %flags, align 4
  %and105 = and i32 %78, 2
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %if.end121, label %if.then107

if.then107:                                       ; preds = %if.end104
  %79 = load ptr, ptr %data, align 8
  %cmp108 = icmp eq ptr %79, null
  br i1 %cmp108, label %if.then110, label %if.else111

if.then110:                                       ; preds = %if.then107
  %80 = load i64, ptr %datalen, align 8
  %mul = shl i64 %80, 1
  store i64 %mul, ptr %datalen, align 8
  br label %if.end121

if.else111:                                       ; preds = %if.then107
  %81 = load ptr, ptr %data, align 8
  %82 = load i64, ptr %datalen, align 8
  %call112 = call i64 @id3_util_unsynchronise(ptr noundef %81, i64 noundef %82) #6
  store i64 %call112, ptr %newlen, align 8
  %cmp113 = icmp eq i64 %call112, %82
  br i1 %cmp113, label %if.then115, label %if.else117

if.then115:                                       ; preds = %if.else111
  %83 = load i32, ptr %flags, align 4
  %and116 = and i32 %83, -3
  store i32 %and116, ptr %flags, align 4
  br label %if.end121

if.else117:                                       ; preds = %if.else111
  %84 = load i64, ptr %newlen, align 8
  %85 = load i64, ptr %datalen, align 8
  %sub118 = sub i64 %84, %85
  %86 = load ptr, ptr %ptr.addr, align 8
  %87 = load ptr, ptr %86, align 8
  %add.ptr = getelementptr inbounds i8, ptr %87, i64 %sub118
  store ptr %add.ptr, ptr %86, align 8
  %88 = load i64, ptr %newlen, align 8
  store i64 %88, ptr %datalen, align 8
  br label %if.end121

if.end121:                                        ; preds = %if.then110, %if.else117, %if.then115, %if.end104
  %89 = load i64, ptr %datalen, align 8
  %90 = load i64, ptr %size, align 8
  %add122 = add i64 %90, %89
  store i64 %add122, ptr %size, align 8
  %91 = load ptr, ptr %size_ptr, align 8
  %tobool123.not = icmp eq ptr %91, null
  br i1 %tobool123.not, label %if.end127, label %if.then124

if.then124:                                       ; preds = %if.end121
  %92 = load i64, ptr %size, align 8
  %sub125 = add i64 %92, -10
  %call126 = call i64 @id3_render_syncsafe(ptr noundef nonnull %size_ptr, i64 noundef %sub125, i32 noundef 4) #6
  br label %if.end127

if.end127:                                        ; preds = %if.then124, %if.end121
  %93 = load ptr, ptr %flags_ptr, align 8
  %tobool128.not = icmp eq ptr %93, null
  br i1 %tobool128.not, label %if.end132, label %if.then129

if.then129:                                       ; preds = %if.end127
  %94 = load i32, ptr %flags, align 4
  %conv130 = sext i32 %94 to i64
  %call131 = call i64 @id3_render_int(ptr noundef nonnull %flags_ptr, i64 noundef %conv130, i32 noundef 2) #6
  br label %if.end132

if.end132:                                        ; preds = %if.then129, %if.end127
  %95 = load i64, ptr %size, align 8
  store i64 %95, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end132, %if.end32, %if.then9, %if.then
  %96 = load i64, ptr %retval, align 8
  ret i64 %96
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
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %0 = load i32, ptr %length.addr, align 4
  %cmp = icmp ult i32 %storemerge, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %fields.addr, align 8
  %2 = load i32, ptr %i, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds %union.id3_field, ptr %1, i64 %idxprom
  %3 = load ptr, ptr %ptr.addr, align 8
  %4 = load i32, ptr %length.addr, align 4
  %sub = add i32 %4, -1
  %cmp1 = icmp ult i32 %2, %sub
  %conv = zext i1 %cmp1 to i32
  %call = call i64 @id3_field_render(ptr noundef %arrayidx, ptr noundef %3, ptr noundef nonnull %encoding, i32 noundef %conv) #6
  %5 = load i64, ptr %size, align 8
  %add = add i64 %5, %call
  store i64 %add, ptr %size, align 8
  %6 = load i32, ptr %i, align 4
  %inc = add i32 %6, 1
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %7 = load i64, ptr %size, align 8
  ret i64 %7
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
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { cold noreturn nounwind }

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
