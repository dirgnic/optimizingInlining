; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_constant_argument/source_snapshot_public_repos_mibench_consumer_mad_mad-0.14.2b_libid3tag_field.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/libid3tag/field.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.anon = type { i32, i64 }
%struct.anon.0 = type { i32, ptr }
%struct.anon.1 = type { i32, i32, ptr }
%struct.anon.2 = type { i32, ptr }
%struct.anon.3 = type { i32, i32, ptr }
%struct.anon.4 = type { i32, [9 x i8] }
%struct.anon.5 = type { i32, ptr, i64 }

@.str = private unnamed_addr constant [4 x i8] c"XXX\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"XXXX\00", align 1
@id3_ucs4_empty = external constant [0 x i64], align 8
@id3_field_getbinarydata.empty = internal constant i8 0, align 1

; Function Attrs: nounwind ssp uwtable
define void @id3_field_init(ptr noundef %field, i32 noundef %type) #0 {
entry:
  %field.addr = alloca ptr, align 8
  store ptr %field, ptr %field.addr, align 8
  store i32 %type, ptr %field, align 8
  switch i32 %type, label %sw.epilog [
    i32 0, label %sw.bb
    i32 10, label %sw.bb
    i32 11, label %sw.bb
    i32 12, label %sw.bb
    i32 13, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 4, label %sw.bb3
    i32 5, label %sw.bb3
    i32 6, label %sw.bb5
    i32 7, label %sw.bb8
    i32 8, label %sw.bb12
    i32 9, label %sw.bb18
    i32 14, label %sw.bb24
    i32 15, label %sw.bb24
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry
  %0 = load ptr, ptr %field.addr, align 8
  %value = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 1
  store i64 0, ptr %value, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry, %entry
  %1 = load ptr, ptr %field.addr, align 8
  %ptr = getelementptr inbounds %struct.anon.0, ptr %1, i64 0, i32 1
  store ptr null, ptr %ptr, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %2 = load ptr, ptr %field.addr, align 8
  %nstrings = getelementptr inbounds %struct.anon.1, ptr %2, i64 0, i32 1
  store i32 0, ptr %nstrings, align 4
  %strings = getelementptr inbounds %struct.anon.1, ptr %2, i64 0, i32 2
  store ptr null, ptr %strings, align 8
  br label %sw.bb3

sw.bb3:                                           ; preds = %sw.bb2, %entry, %entry
  %3 = load ptr, ptr %field.addr, align 8
  %ptr4 = getelementptr inbounds %struct.anon.2, ptr %3, i64 0, i32 1
  store ptr null, ptr %ptr4, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %4 = load ptr, ptr %field.addr, align 8
  %nstrings6 = getelementptr inbounds %struct.anon.3, ptr %4, i64 0, i32 1
  store i32 0, ptr %nstrings6, align 4
  %strings7 = getelementptr inbounds %struct.anon.3, ptr %4, i64 0, i32 2
  store ptr null, ptr %strings7, align 8
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %5 = load ptr, ptr %field.addr, align 8
  %value9 = getelementptr inbounds %struct.anon.4, ptr %5, i64 0, i32 1
  %value10 = getelementptr inbounds %struct.anon.4, ptr %5, i64 0, i32 1
  %6 = call i64 @llvm.objectsize.i64.p0(ptr %value10, i1 false, i1 true, i1 false)
  %7 = call ptr @__memcpy_chk(ptr nonnull %value9, ptr nonnull @.str, i64 4, i64 %6)
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  %8 = load ptr, ptr %field.addr, align 8
  %value13 = getelementptr inbounds %struct.anon.4, ptr %8, i64 0, i32 1
  %value15 = getelementptr inbounds %struct.anon.4, ptr %8, i64 0, i32 1
  %9 = call i64 @llvm.objectsize.i64.p0(ptr %value15, i1 false, i1 true, i1 false)
  %10 = call ptr @__memcpy_chk(ptr nonnull %value13, ptr nonnull @.str.1, i64 5, i64 %9)
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  %11 = load ptr, ptr %field.addr, align 8
  %value19 = getelementptr inbounds %struct.anon.4, ptr %11, i64 0, i32 1
  %value21 = getelementptr inbounds %struct.anon.4, ptr %11, i64 0, i32 1
  %12 = call i64 @llvm.objectsize.i64.p0(ptr %value21, i1 false, i1 true, i1 false)
  %call23 = call ptr @__memset_chk(ptr noundef nonnull %value19, i32 noundef 0, i64 noundef 9, i64 noundef %12) #7
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry, %entry
  %13 = load ptr, ptr %field.addr, align 8
  %data = getelementptr inbounds %struct.anon.5, ptr %13, i64 0, i32 1
  store ptr null, ptr %data, align 8
  %length = getelementptr inbounds %struct.anon.5, ptr %13, i64 0, i32 2
  store i64 0, ptr %length, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb24, %sw.bb18, %sw.bb12, %sw.bb8, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb, %entry
  ret void
}

; Function Attrs: nounwind
declare ptr @__strcpy_chk(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #2

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @id3_field_finish(ptr noundef %field) #0 {
entry:
  %field.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %field, ptr %field.addr, align 8
  %0 = load i32, ptr %field, align 8
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb31
    i32 14, label %sw.bb31
    i32 6, label %for.cond16
    i32 5, label %sw.bb9
    i32 4, label %sw.bb9
    i32 3, label %for.cond
    i32 2, label %sw.bb1
    i32 1, label %sw.bb1
  ]

sw.bb1:                                           ; preds = %entry, %entry
  %1 = load ptr, ptr %field.addr, align 8
  %ptr = getelementptr inbounds %struct.anon.0, ptr %1, i64 0, i32 1
  %2 = load ptr, ptr %ptr, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %sw.epilog, label %if.then

if.then:                                          ; preds = %sw.bb1
  %3 = load ptr, ptr %field.addr, align 8
  %ptr2 = getelementptr inbounds %struct.anon.0, ptr %3, i64 0, i32 1
  %4 = load ptr, ptr %ptr2, align 8
  call void @free(ptr noundef %4) #7
  br label %sw.epilog

for.cond:                                         ; preds = %entry, %for.body
  %storemerge1 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  store i32 %storemerge1, ptr %i, align 4
  %5 = load ptr, ptr %field.addr, align 8
  %nstrings = getelementptr inbounds %struct.anon.1, ptr %5, i64 0, i32 1
  %6 = load i32, ptr %nstrings, align 4
  %cmp = icmp ult i32 %storemerge1, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %field.addr, align 8
  %strings = getelementptr inbounds %struct.anon.1, ptr %7, i64 0, i32 2
  %8 = load ptr, ptr %strings, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom = zext i32 %9 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 %idxprom
  %10 = load ptr, ptr %arrayidx, align 8
  call void @free(ptr noundef %10) #7
  %11 = load i32, ptr %i, align 4
  %inc = add i32 %11, 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %12 = load ptr, ptr %field.addr, align 8
  %strings4 = getelementptr inbounds %struct.anon.1, ptr %12, i64 0, i32 2
  %13 = load ptr, ptr %strings4, align 8
  %tobool5.not = icmp eq ptr %13, null
  br i1 %tobool5.not, label %sw.epilog, label %if.then6

if.then6:                                         ; preds = %for.end
  %14 = load ptr, ptr %field.addr, align 8
  %strings7 = getelementptr inbounds %struct.anon.1, ptr %14, i64 0, i32 2
  %15 = load ptr, ptr %strings7, align 8
  call void @free(ptr noundef %15) #7
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry, %entry
  %16 = load ptr, ptr %field.addr, align 8
  %ptr10 = getelementptr inbounds %struct.anon.2, ptr %16, i64 0, i32 1
  %17 = load ptr, ptr %ptr10, align 8
  %tobool11.not = icmp eq ptr %17, null
  br i1 %tobool11.not, label %sw.epilog, label %if.then12

if.then12:                                        ; preds = %sw.bb9
  %18 = load ptr, ptr %field.addr, align 8
  %ptr13 = getelementptr inbounds %struct.anon.2, ptr %18, i64 0, i32 1
  %19 = load ptr, ptr %ptr13, align 8
  call void @free(ptr noundef %19) #7
  br label %sw.epilog

for.cond16:                                       ; preds = %entry, %for.body19
  %storemerge = phi i32 [ %inc24, %for.body19 ], [ 0, %entry ]
  store i32 %storemerge, ptr %i, align 4
  %20 = load ptr, ptr %field.addr, align 8
  %nstrings17 = getelementptr inbounds %struct.anon.3, ptr %20, i64 0, i32 1
  %21 = load i32, ptr %nstrings17, align 4
  %cmp18 = icmp ult i32 %storemerge, %21
  br i1 %cmp18, label %for.body19, label %for.end25

for.body19:                                       ; preds = %for.cond16
  %22 = load ptr, ptr %field.addr, align 8
  %strings20 = getelementptr inbounds %struct.anon.3, ptr %22, i64 0, i32 2
  %23 = load ptr, ptr %strings20, align 8
  %24 = load i32, ptr %i, align 4
  %idxprom21 = zext i32 %24 to i64
  %arrayidx22 = getelementptr inbounds ptr, ptr %23, i64 %idxprom21
  %25 = load ptr, ptr %arrayidx22, align 8
  call void @free(ptr noundef %25) #7
  %26 = load i32, ptr %i, align 4
  %inc24 = add i32 %26, 1
  br label %for.cond16, !llvm.loop !8

for.end25:                                        ; preds = %for.cond16
  %27 = load ptr, ptr %field.addr, align 8
  %strings26 = getelementptr inbounds %struct.anon.3, ptr %27, i64 0, i32 2
  %28 = load ptr, ptr %strings26, align 8
  %tobool27.not = icmp eq ptr %28, null
  br i1 %tobool27.not, label %sw.epilog, label %if.then28

if.then28:                                        ; preds = %for.end25
  %29 = load ptr, ptr %field.addr, align 8
  %strings29 = getelementptr inbounds %struct.anon.3, ptr %29, i64 0, i32 2
  %30 = load ptr, ptr %strings29, align 8
  call void @free(ptr noundef %30) #7
  br label %sw.epilog

sw.bb31:                                          ; preds = %entry, %entry
  %31 = load ptr, ptr %field.addr, align 8
  %data = getelementptr inbounds %struct.anon.5, ptr %31, i64 0, i32 1
  %32 = load ptr, ptr %data, align 8
  %tobool32.not = icmp eq ptr %32, null
  br i1 %tobool32.not, label %sw.epilog, label %if.then33

if.then33:                                        ; preds = %sw.bb31
  %33 = load ptr, ptr %field.addr, align 8
  %data34 = getelementptr inbounds %struct.anon.5, ptr %33, i64 0, i32 1
  %34 = load ptr, ptr %data34, align 8
  call void @free(ptr noundef %34) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb31, %if.then33, %for.end25, %if.then28, %sw.bb9, %if.then12, %for.end, %if.then6, %sw.bb1, %if.then, %entry
  %35 = load ptr, ptr %field.addr, align 8
  %36 = load i32, ptr %35, align 8
  call void @id3_field_init(ptr noundef nonnull %35, i32 noundef %36)
  ret void
}

declare void @free(ptr noundef) #3

; Function Attrs: nounwind ssp uwtable
define i32 @id3_field_type(ptr noundef %field) #0 {
entry:
  %0 = load i32, ptr %field, align 8
  ret i32 %0
}

; Function Attrs: nounwind ssp uwtable
define i32 @id3_field_parse(ptr noundef %field, ptr noundef %ptr, i64 noundef %length, ptr noundef %encoding) #0 {
entry:
  %field.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %encoding.addr = alloca ptr, align 8
  %latin1 = alloca ptr, align 8
  %end = alloca ptr, align 8
  %latin153 = alloca ptr, align 8
  %strings = alloca ptr, align 8
  %ucs4 = alloca ptr, align 8
  %end84 = alloca ptr, align 8
  %ucs485 = alloca ptr, align 8
  %strings86 = alloca ptr, align 8
  %data = alloca ptr, align 8
  store ptr %field, ptr %field.addr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  store i64 %length, ptr %length.addr, align 8
  store ptr %encoding, ptr %encoding.addr, align 8
  call void @id3_field_finish(ptr noundef %field)
  %0 = load i32, ptr %field, align 8
  switch i32 %0, label %return [
    i32 13, label %sw.bb
    i32 12, label %sw.bb1
    i32 11, label %sw.bb7
    i32 10, label %sw.bb13
    i32 0, label %sw.bb13
    i32 7, label %sw.bb23
    i32 8, label %sw.bb29
    i32 9, label %sw.bb36
    i32 1, label %sw.bb43
    i32 2, label %sw.bb43
    i32 3, label %sw.bb52
    i32 4, label %sw.bb74
    i32 5, label %sw.bb74
    i32 6, label %sw.bb83
    i32 14, label %sw.bb120
    i32 15, label %sw.bb120
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i64, ptr %length.addr, align 8
  %cmp = icmp ult i64 %1, 4
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %sw.bb
  %2 = load ptr, ptr %ptr.addr, align 8
  %call = call i64 @id3_parse_uint(ptr noundef %2, i32 noundef 4) #7
  %3 = load ptr, ptr %field.addr, align 8
  %value = getelementptr inbounds %struct.anon, ptr %3, i64 0, i32 1
  store i64 %call, ptr %value, align 8
  br label %return

sw.bb1:                                           ; preds = %entry
  %4 = load i64, ptr %length.addr, align 8
  %cmp2 = icmp ult i64 %4, 3
  br i1 %cmp2, label %return, label %if.end4

if.end4:                                          ; preds = %sw.bb1
  %5 = load ptr, ptr %ptr.addr, align 8
  %call5 = call i64 @id3_parse_uint(ptr noundef %5, i32 noundef 3) #7
  %6 = load ptr, ptr %field.addr, align 8
  %value6 = getelementptr inbounds %struct.anon, ptr %6, i64 0, i32 1
  store i64 %call5, ptr %value6, align 8
  br label %return

sw.bb7:                                           ; preds = %entry
  %7 = load i64, ptr %length.addr, align 8
  %cmp8 = icmp ult i64 %7, 2
  br i1 %cmp8, label %return, label %if.end10

if.end10:                                         ; preds = %sw.bb7
  %8 = load ptr, ptr %ptr.addr, align 8
  %call11 = call i64 @id3_parse_uint(ptr noundef %8, i32 noundef 2) #7
  %9 = load ptr, ptr %field.addr, align 8
  %value12 = getelementptr inbounds %struct.anon, ptr %9, i64 0, i32 1
  store i64 %call11, ptr %value12, align 8
  br label %return

sw.bb13:                                          ; preds = %entry, %entry
  %10 = load i64, ptr %length.addr, align 8
  %cmp14 = icmp eq i64 %10, 0
  br i1 %cmp14, label %return, label %if.end16

if.end16:                                         ; preds = %sw.bb13
  %11 = load ptr, ptr %ptr.addr, align 8
  %call17 = call i64 @id3_parse_uint(ptr noundef %11, i32 noundef 1) #7
  %12 = load ptr, ptr %field.addr, align 8
  %value18 = getelementptr inbounds %struct.anon, ptr %12, i64 0, i32 1
  store i64 %call17, ptr %value18, align 8
  %13 = load i32, ptr %12, align 8
  %cmp19 = icmp eq i32 %13, 0
  br i1 %cmp19, label %if.then20, label %return

if.then20:                                        ; preds = %if.end16
  %14 = load ptr, ptr %field.addr, align 8
  %value21 = getelementptr inbounds %struct.anon, ptr %14, i64 0, i32 1
  %15 = load i64, ptr %value21, align 8
  %conv = trunc i64 %15 to i32
  %16 = load ptr, ptr %encoding.addr, align 8
  store i32 %conv, ptr %16, align 4
  br label %return

sw.bb23:                                          ; preds = %entry
  %17 = load i64, ptr %length.addr, align 8
  %cmp24 = icmp ult i64 %17, 3
  br i1 %cmp24, label %return, label %if.end27

if.end27:                                         ; preds = %sw.bb23
  %18 = load ptr, ptr %ptr.addr, align 8
  %19 = load ptr, ptr %field.addr, align 8
  %value28 = getelementptr inbounds %struct.anon.4, ptr %19, i64 0, i32 1
  call void @id3_parse_immediate(ptr noundef %18, i32 noundef 3, ptr noundef nonnull %value28) #7
  br label %return

sw.bb29:                                          ; preds = %entry
  %20 = load i64, ptr %length.addr, align 8
  %cmp30 = icmp ult i64 %20, 4
  br i1 %cmp30, label %return, label %if.end33

if.end33:                                         ; preds = %sw.bb29
  %21 = load ptr, ptr %ptr.addr, align 8
  %22 = load ptr, ptr %field.addr, align 8
  %value34 = getelementptr inbounds %struct.anon.4, ptr %22, i64 0, i32 1
  call void @id3_parse_immediate(ptr noundef %21, i32 noundef 4, ptr noundef nonnull %value34) #7
  br label %return

sw.bb36:                                          ; preds = %entry
  %23 = load i64, ptr %length.addr, align 8
  %cmp37 = icmp ult i64 %23, 8
  br i1 %cmp37, label %return, label %if.end40

if.end40:                                         ; preds = %sw.bb36
  %24 = load ptr, ptr %ptr.addr, align 8
  %25 = load ptr, ptr %field.addr, align 8
  %value41 = getelementptr inbounds %struct.anon.4, ptr %25, i64 0, i32 1
  call void @id3_parse_immediate(ptr noundef %24, i32 noundef 8, ptr noundef nonnull %value41) #7
  br label %return

sw.bb43:                                          ; preds = %entry, %entry
  %26 = load ptr, ptr %ptr.addr, align 8
  %27 = load i64, ptr %length.addr, align 8
  %28 = load ptr, ptr %field.addr, align 8
  %29 = load i32, ptr %28, align 8
  %cmp44 = icmp eq i32 %29, 2
  %conv45 = zext i1 %cmp44 to i32
  %call46 = call ptr @id3_parse_latin1(ptr noundef %26, i64 noundef %27, i32 noundef %conv45) #7
  store ptr %call46, ptr %latin1, align 8
  %cmp47 = icmp eq ptr %call46, null
  br i1 %cmp47, label %return, label %if.end50

if.end50:                                         ; preds = %sw.bb43
  %30 = load ptr, ptr %latin1, align 8
  %31 = load ptr, ptr %field.addr, align 8
  %ptr51 = getelementptr inbounds %struct.anon.0, ptr %31, i64 0, i32 1
  store ptr %30, ptr %ptr51, align 8
  br label %return

sw.bb52:                                          ; preds = %entry
  %32 = load ptr, ptr %ptr.addr, align 8
  %33 = load ptr, ptr %32, align 8
  %34 = load i64, ptr %length.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %33, i64 %34
  store ptr %add.ptr, ptr %end, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end70, %sw.bb52
  %35 = load ptr, ptr %end, align 8
  %36 = load ptr, ptr %ptr.addr, align 8
  %37 = load ptr, ptr %36, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %35 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %37 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp54 = icmp sgt i64 %sub.ptr.sub, 0
  br i1 %cmp54, label %while.body, label %return

while.body:                                       ; preds = %while.cond
  %38 = load ptr, ptr %ptr.addr, align 8
  %39 = load ptr, ptr %end, align 8
  %40 = load ptr, ptr %38, align 8
  %sub.ptr.lhs.cast56 = ptrtoint ptr %39 to i64
  %sub.ptr.rhs.cast57 = ptrtoint ptr %40 to i64
  %sub.ptr.sub58 = sub i64 %sub.ptr.lhs.cast56, %sub.ptr.rhs.cast57
  %call59 = call ptr @id3_parse_latin1(ptr noundef nonnull %38, i64 noundef %sub.ptr.sub58, i32 noundef 0) #7
  store ptr %call59, ptr %latin153, align 8
  %cmp60 = icmp eq ptr %call59, null
  br i1 %cmp60, label %return, label %if.end63

if.end63:                                         ; preds = %while.body
  %41 = load ptr, ptr %field.addr, align 8
  %strings64 = getelementptr inbounds %struct.anon.1, ptr %41, i64 0, i32 2
  %42 = load ptr, ptr %strings64, align 8
  %nstrings = getelementptr inbounds %struct.anon.1, ptr %41, i64 0, i32 1
  %43 = load i32, ptr %nstrings, align 4
  %add = add i32 %43, 1
  %conv65 = zext i32 %add to i64
  %mul = shl nuw nsw i64 %conv65, 3
  %call66 = call ptr @realloc(ptr noundef %42, i64 noundef %mul) #8
  store ptr %call66, ptr %strings, align 8
  %cmp67 = icmp eq ptr %call66, null
  br i1 %cmp67, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.end63
  %44 = load ptr, ptr %latin153, align 8
  call void @free(ptr noundef %44) #7
  br label %return

if.end70:                                         ; preds = %if.end63
  %45 = load ptr, ptr %strings, align 8
  %46 = load ptr, ptr %field.addr, align 8
  %strings71 = getelementptr inbounds %struct.anon.1, ptr %46, i64 0, i32 2
  store ptr %45, ptr %strings71, align 8
  %47 = load ptr, ptr %latin153, align 8
  %nstrings73 = getelementptr inbounds %struct.anon.1, ptr %46, i64 0, i32 1
  %48 = load i32, ptr %nstrings73, align 4
  %inc = add i32 %48, 1
  store i32 %inc, ptr %nstrings73, align 4
  %idxprom = zext i32 %48 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %45, i64 %idxprom
  store ptr %47, ptr %arrayidx, align 8
  br label %while.cond, !llvm.loop !9

sw.bb74:                                          ; preds = %entry, %entry
  %49 = load ptr, ptr %ptr.addr, align 8
  %50 = load i64, ptr %length.addr, align 8
  %51 = load ptr, ptr %encoding.addr, align 8
  %52 = load i32, ptr %51, align 4
  %53 = load ptr, ptr %field.addr, align 8
  %54 = load i32, ptr %53, align 8
  %cmp75 = icmp eq i32 %54, 5
  %conv76 = zext i1 %cmp75 to i32
  %call77 = call ptr @id3_parse_string(ptr noundef %49, i64 noundef %50, i32 noundef %52, i32 noundef %conv76) #7
  store ptr %call77, ptr %ucs4, align 8
  %cmp78 = icmp eq ptr %call77, null
  br i1 %cmp78, label %return, label %if.end81

if.end81:                                         ; preds = %sw.bb74
  %55 = load ptr, ptr %ucs4, align 8
  %56 = load ptr, ptr %field.addr, align 8
  %ptr82 = getelementptr inbounds %struct.anon.2, ptr %56, i64 0, i32 1
  store ptr %55, ptr %ptr82, align 8
  br label %return

sw.bb83:                                          ; preds = %entry
  %57 = load ptr, ptr %ptr.addr, align 8
  %58 = load ptr, ptr %57, align 8
  %59 = load i64, ptr %length.addr, align 8
  %add.ptr87 = getelementptr inbounds i8, ptr %58, i64 %59
  store ptr %add.ptr87, ptr %end84, align 8
  br label %while.cond88

while.cond88:                                     ; preds = %if.end112, %sw.bb83
  %60 = load ptr, ptr %end84, align 8
  %61 = load ptr, ptr %ptr.addr, align 8
  %62 = load ptr, ptr %61, align 8
  %sub.ptr.lhs.cast89 = ptrtoint ptr %60 to i64
  %sub.ptr.rhs.cast90 = ptrtoint ptr %62 to i64
  %sub.ptr.sub91 = sub i64 %sub.ptr.lhs.cast89, %sub.ptr.rhs.cast90
  %cmp92 = icmp sgt i64 %sub.ptr.sub91, 0
  br i1 %cmp92, label %while.body94, label %return

while.body94:                                     ; preds = %while.cond88
  %63 = load ptr, ptr %ptr.addr, align 8
  %64 = load ptr, ptr %end84, align 8
  %65 = load ptr, ptr %63, align 8
  %sub.ptr.lhs.cast95 = ptrtoint ptr %64 to i64
  %sub.ptr.rhs.cast96 = ptrtoint ptr %65 to i64
  %sub.ptr.sub97 = sub i64 %sub.ptr.lhs.cast95, %sub.ptr.rhs.cast96
  %66 = load ptr, ptr %encoding.addr, align 8
  %67 = load i32, ptr %66, align 4
  %call98 = call ptr @id3_parse_string(ptr noundef nonnull %63, i64 noundef %sub.ptr.sub97, i32 noundef %67, i32 noundef 0) #7
  store ptr %call98, ptr %ucs485, align 8
  %cmp99 = icmp eq ptr %call98, null
  br i1 %cmp99, label %return, label %if.end102

if.end102:                                        ; preds = %while.body94
  %68 = load ptr, ptr %field.addr, align 8
  %strings103 = getelementptr inbounds %struct.anon.3, ptr %68, i64 0, i32 2
  %69 = load ptr, ptr %strings103, align 8
  %nstrings104 = getelementptr inbounds %struct.anon.3, ptr %68, i64 0, i32 1
  %70 = load i32, ptr %nstrings104, align 4
  %add105 = add i32 %70, 1
  %conv106 = zext i32 %add105 to i64
  %mul107 = shl nuw nsw i64 %conv106, 3
  %call108 = call ptr @realloc(ptr noundef %69, i64 noundef %mul107) #8
  store ptr %call108, ptr %strings86, align 8
  %cmp109 = icmp eq ptr %call108, null
  br i1 %cmp109, label %if.then111, label %if.end112

if.then111:                                       ; preds = %if.end102
  %71 = load ptr, ptr %ucs485, align 8
  call void @free(ptr noundef %71) #7
  br label %return

if.end112:                                        ; preds = %if.end102
  %72 = load ptr, ptr %strings86, align 8
  %73 = load ptr, ptr %field.addr, align 8
  %strings113 = getelementptr inbounds %struct.anon.3, ptr %73, i64 0, i32 2
  store ptr %72, ptr %strings113, align 8
  %74 = load ptr, ptr %ucs485, align 8
  %nstrings115 = getelementptr inbounds %struct.anon.3, ptr %73, i64 0, i32 1
  %75 = load i32, ptr %nstrings115, align 4
  %inc116 = add i32 %75, 1
  store i32 %inc116, ptr %nstrings115, align 4
  %idxprom117 = zext i32 %75 to i64
  %arrayidx118 = getelementptr inbounds ptr, ptr %72, i64 %idxprom117
  store ptr %74, ptr %arrayidx118, align 8
  br label %while.cond88, !llvm.loop !10

sw.bb120:                                         ; preds = %entry, %entry
  %76 = load ptr, ptr %ptr.addr, align 8
  %77 = load i64, ptr %length.addr, align 8
  %call121 = call ptr @id3_parse_binary(ptr noundef %76, i64 noundef %77) #7
  store ptr %call121, ptr %data, align 8
  %cmp122 = icmp eq ptr %call121, null
  br i1 %cmp122, label %return, label %if.end125

if.end125:                                        ; preds = %sw.bb120
  %78 = load ptr, ptr %data, align 8
  %79 = load ptr, ptr %field.addr, align 8
  %data126 = getelementptr inbounds %struct.anon.5, ptr %79, i64 0, i32 1
  store ptr %78, ptr %data126, align 8
  %80 = load i64, ptr %length.addr, align 8
  %length127 = getelementptr inbounds %struct.anon.5, ptr %79, i64 0, i32 2
  store i64 %80, ptr %length127, align 8
  br label %return

return:                                           ; preds = %if.then69, %if.then111, %sw.bb, %sw.bb1, %sw.bb7, %sw.bb13, %sw.bb23, %sw.bb29, %sw.bb36, %sw.bb43, %while.body, %sw.bb74, %while.body94, %sw.bb120, %entry, %if.end, %if.end4, %if.end10, %if.end27, %if.end33, %if.end40, %if.end50, %if.end81, %if.end125, %if.then20, %if.end16, %while.cond, %while.cond88
  %storemerge = phi i32 [ 0, %while.cond88 ], [ 0, %while.cond ], [ 0, %if.end16 ], [ 0, %if.then20 ], [ 0, %if.end125 ], [ 0, %if.end81 ], [ 0, %if.end50 ], [ 0, %if.end40 ], [ 0, %if.end33 ], [ 0, %if.end27 ], [ 0, %if.end10 ], [ 0, %if.end4 ], [ 0, %if.end ], [ 0, %entry ], [ -1, %sw.bb120 ], [ -1, %while.body94 ], [ -1, %sw.bb74 ], [ -1, %while.body ], [ -1, %sw.bb43 ], [ -1, %sw.bb36 ], [ -1, %sw.bb29 ], [ -1, %sw.bb23 ], [ -1, %sw.bb13 ], [ -1, %sw.bb7 ], [ -1, %sw.bb1 ], [ -1, %sw.bb ], [ -1, %if.then111 ], [ -1, %if.then69 ]
  ret i32 %storemerge
}

declare i64 @id3_parse_uint(ptr noundef, i32 noundef) #3

declare void @id3_parse_immediate(ptr noundef, i32 noundef, ptr noundef) #3

declare ptr @id3_parse_latin1(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #4

declare ptr @id3_parse_string(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #3

declare ptr @id3_parse_binary(ptr noundef, i64 noundef) #3

; Function Attrs: nounwind ssp uwtable
define i64 @id3_field_render(ptr noundef %field, ptr noundef %ptr, ptr noundef %encoding, i32 noundef %terminate) #0 {
entry:
  %retval = alloca i64, align 8
  %field.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  %encoding.addr = alloca ptr, align 8
  %terminate.addr = alloca i32, align 4
  %size = alloca i64, align 8
  %i = alloca i32, align 4
  store ptr %field, ptr %field.addr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  store ptr %encoding, ptr %encoding.addr, align 8
  store i32 %terminate, ptr %terminate.addr, align 4
  %0 = load i32, ptr %field, align 8
  switch i32 %0, label %sw.epilog [
    i32 13, label %sw.bb
    i32 12, label %sw.bb1
    i32 11, label %sw.bb4
    i32 0, label %sw.bb7
    i32 10, label %sw.bb9
    i32 1, label %sw.bb12
    i32 2, label %sw.bb12
    i32 3, label %sw.bb15
    i32 4, label %sw.bb21
    i32 5, label %sw.bb21
    i32 6, label %sw.bb24
    i32 7, label %sw.bb46
    i32 8, label %sw.bb49
    i32 9, label %sw.bb53
    i32 14, label %sw.bb57
    i32 15, label %sw.bb57
  ]

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %ptr.addr, align 8
  %2 = load ptr, ptr %field.addr, align 8
  %value = getelementptr inbounds %struct.anon, ptr %2, i64 0, i32 1
  %3 = load i64, ptr %value, align 8
  %call = call i64 @id3_render_int(ptr noundef %1, i64 noundef %3, i32 noundef 4) #7
  store i64 %call, ptr %retval, align 8
  br label %return

sw.bb1:                                           ; preds = %entry
  %4 = load ptr, ptr %ptr.addr, align 8
  %5 = load ptr, ptr %field.addr, align 8
  %value2 = getelementptr inbounds %struct.anon, ptr %5, i64 0, i32 1
  %6 = load i64, ptr %value2, align 8
  %call3 = call i64 @id3_render_int(ptr noundef %4, i64 noundef %6, i32 noundef 3) #7
  store i64 %call3, ptr %retval, align 8
  br label %return

sw.bb4:                                           ; preds = %entry
  %7 = load ptr, ptr %ptr.addr, align 8
  %8 = load ptr, ptr %field.addr, align 8
  %value5 = getelementptr inbounds %struct.anon, ptr %8, i64 0, i32 1
  %9 = load i64, ptr %value5, align 8
  %call6 = call i64 @id3_render_int(ptr noundef %7, i64 noundef %9, i32 noundef 2) #7
  store i64 %call6, ptr %retval, align 8
  br label %return

sw.bb7:                                           ; preds = %entry
  %10 = load ptr, ptr %field.addr, align 8
  %value8 = getelementptr inbounds %struct.anon, ptr %10, i64 0, i32 1
  %11 = load i64, ptr %value8, align 8
  %conv = trunc i64 %11 to i32
  %12 = load ptr, ptr %encoding.addr, align 8
  store i32 %conv, ptr %12, align 4
  br label %sw.bb9

sw.bb9:                                           ; preds = %sw.bb7, %entry
  %13 = load ptr, ptr %ptr.addr, align 8
  %14 = load ptr, ptr %field.addr, align 8
  %value10 = getelementptr inbounds %struct.anon, ptr %14, i64 0, i32 1
  %15 = load i64, ptr %value10, align 8
  %call11 = call i64 @id3_render_int(ptr noundef %13, i64 noundef %15, i32 noundef 1) #7
  store i64 %call11, ptr %retval, align 8
  br label %return

sw.bb12:                                          ; preds = %entry, %entry
  %16 = load ptr, ptr %ptr.addr, align 8
  %17 = load ptr, ptr %field.addr, align 8
  %ptr13 = getelementptr inbounds %struct.anon.0, ptr %17, i64 0, i32 1
  %18 = load ptr, ptr %ptr13, align 8
  %19 = load i32, ptr %terminate.addr, align 4
  %call14 = call i64 @id3_render_latin1(ptr noundef %16, ptr noundef %18, i32 noundef %19) #7
  store i64 %call14, ptr %retval, align 8
  br label %return

sw.bb15:                                          ; preds = %entry
  store i64 0, ptr %size, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %sw.bb15
  %storemerge1 = phi i32 [ 0, %sw.bb15 ], [ %inc, %for.body ]
  store i32 %storemerge1, ptr %i, align 4
  %20 = load ptr, ptr %field.addr, align 8
  %nstrings = getelementptr inbounds %struct.anon.1, ptr %20, i64 0, i32 1
  %21 = load i32, ptr %nstrings, align 4
  %cmp = icmp ult i32 %storemerge1, %21
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load ptr, ptr %ptr.addr, align 8
  %23 = load ptr, ptr %field.addr, align 8
  %strings = getelementptr inbounds %struct.anon.1, ptr %23, i64 0, i32 2
  %24 = load ptr, ptr %strings, align 8
  %25 = load i32, ptr %i, align 4
  %idxprom = zext i32 %25 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %24, i64 %idxprom
  %26 = load ptr, ptr %arrayidx, align 8
  %27 = load ptr, ptr %field.addr, align 8
  %nstrings17 = getelementptr inbounds %struct.anon.1, ptr %27, i64 0, i32 1
  %28 = load i32, ptr %nstrings17, align 4
  %sub = add i32 %28, -1
  %cmp18 = icmp ult i32 %25, %sub
  %29 = load i32, ptr %terminate.addr, align 4
  %tobool = icmp ne i32 %29, 0
  %30 = select i1 %cmp18, i1 true, i1 %tobool
  %lor.ext = zext i1 %30 to i32
  %call20 = call i64 @id3_render_latin1(ptr noundef %22, ptr noundef %26, i32 noundef %lor.ext) #7
  %31 = load i64, ptr %size, align 8
  %add = add i64 %31, %call20
  store i64 %add, ptr %size, align 8
  %32 = load i32, ptr %i, align 4
  %inc = add i32 %32, 1
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %33 = load i64, ptr %size, align 8
  store i64 %33, ptr %retval, align 8
  br label %return

sw.bb21:                                          ; preds = %entry, %entry
  %34 = load ptr, ptr %ptr.addr, align 8
  %35 = load ptr, ptr %field.addr, align 8
  %ptr22 = getelementptr inbounds %struct.anon.2, ptr %35, i64 0, i32 1
  %36 = load ptr, ptr %ptr22, align 8
  %37 = load ptr, ptr %encoding.addr, align 8
  %38 = load i32, ptr %37, align 4
  %39 = load i32, ptr %terminate.addr, align 4
  %call23 = call i64 @id3_render_string(ptr noundef %34, ptr noundef %36, i32 noundef %38, i32 noundef %39) #7
  store i64 %call23, ptr %retval, align 8
  br label %return

sw.bb24:                                          ; preds = %entry
  store i64 0, ptr %size, align 8
  br label %for.cond25

for.cond25:                                       ; preds = %for.body29, %sw.bb24
  %storemerge = phi i32 [ 0, %sw.bb24 ], [ %inc44, %for.body29 ]
  store i32 %storemerge, ptr %i, align 4
  %40 = load ptr, ptr %field.addr, align 8
  %nstrings26 = getelementptr inbounds %struct.anon.3, ptr %40, i64 0, i32 1
  %41 = load i32, ptr %nstrings26, align 4
  %cmp27 = icmp ult i32 %storemerge, %41
  br i1 %cmp27, label %for.body29, label %for.end45

for.body29:                                       ; preds = %for.cond25
  %42 = load ptr, ptr %ptr.addr, align 8
  %43 = load ptr, ptr %field.addr, align 8
  %strings30 = getelementptr inbounds %struct.anon.3, ptr %43, i64 0, i32 2
  %44 = load ptr, ptr %strings30, align 8
  %45 = load i32, ptr %i, align 4
  %idxprom31 = zext i32 %45 to i64
  %arrayidx32 = getelementptr inbounds ptr, ptr %44, i64 %idxprom31
  %46 = load ptr, ptr %arrayidx32, align 8
  %47 = load ptr, ptr %encoding.addr, align 8
  %48 = load i32, ptr %47, align 4
  %49 = load ptr, ptr %field.addr, align 8
  %nstrings33 = getelementptr inbounds %struct.anon.3, ptr %49, i64 0, i32 1
  %50 = load i32, ptr %nstrings33, align 4
  %sub34 = add i32 %50, -1
  %cmp35 = icmp ult i32 %45, %sub34
  %51 = load i32, ptr %terminate.addr, align 4
  %tobool38 = icmp ne i32 %51, 0
  %52 = select i1 %cmp35, i1 true, i1 %tobool38
  %lor.ext40 = zext i1 %52 to i32
  %call41 = call i64 @id3_render_string(ptr noundef %42, ptr noundef %46, i32 noundef %48, i32 noundef %lor.ext40) #7
  %53 = load i64, ptr %size, align 8
  %add42 = add i64 %53, %call41
  store i64 %add42, ptr %size, align 8
  %54 = load i32, ptr %i, align 4
  %inc44 = add i32 %54, 1
  br label %for.cond25, !llvm.loop !12

for.end45:                                        ; preds = %for.cond25
  %55 = load i64, ptr %size, align 8
  store i64 %55, ptr %retval, align 8
  br label %return

sw.bb46:                                          ; preds = %entry
  %56 = load ptr, ptr %ptr.addr, align 8
  %57 = load ptr, ptr %field.addr, align 8
  %value47 = getelementptr inbounds %struct.anon.4, ptr %57, i64 0, i32 1
  %call48 = call i64 @id3_render_immediate(ptr noundef %56, ptr noundef nonnull %value47, i32 noundef 3) #7
  store i64 %call48, ptr %retval, align 8
  br label %return

sw.bb49:                                          ; preds = %entry
  %58 = load ptr, ptr %ptr.addr, align 8
  %59 = load ptr, ptr %field.addr, align 8
  %value50 = getelementptr inbounds %struct.anon.4, ptr %59, i64 0, i32 1
  %call52 = call i64 @id3_render_immediate(ptr noundef %58, ptr noundef nonnull %value50, i32 noundef 4) #7
  store i64 %call52, ptr %retval, align 8
  br label %return

sw.bb53:                                          ; preds = %entry
  %60 = load ptr, ptr %ptr.addr, align 8
  %61 = load ptr, ptr %field.addr, align 8
  %value54 = getelementptr inbounds %struct.anon.4, ptr %61, i64 0, i32 1
  %call56 = call i64 @id3_render_immediate(ptr noundef %60, ptr noundef nonnull %value54, i32 noundef 8) #7
  store i64 %call56, ptr %retval, align 8
  br label %return

sw.bb57:                                          ; preds = %entry, %entry
  %62 = load ptr, ptr %ptr.addr, align 8
  %63 = load ptr, ptr %field.addr, align 8
  %data = getelementptr inbounds %struct.anon.5, ptr %63, i64 0, i32 1
  %64 = load ptr, ptr %data, align 8
  %length = getelementptr inbounds %struct.anon.5, ptr %63, i64 0, i32 2
  %65 = load i64, ptr %length, align 8
  %call58 = call i64 @id3_render_binary(ptr noundef %62, ptr noundef %64, i64 noundef %65) #7
  store i64 %call58, ptr %retval, align 8
  br label %return

sw.epilog:                                        ; preds = %entry
  store i64 0, ptr %retval, align 8
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb57, %sw.bb53, %sw.bb49, %sw.bb46, %for.end45, %sw.bb21, %for.end, %sw.bb12, %sw.bb9, %sw.bb4, %sw.bb1, %sw.bb
  %66 = load i64, ptr %retval, align 8
  ret i64 %66
}

declare i64 @id3_render_int(ptr noundef, i64 noundef, i32 noundef) #3

declare i64 @id3_render_latin1(ptr noundef, ptr noundef, i32 noundef) #3

declare i64 @id3_render_string(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

declare i64 @id3_render_immediate(ptr noundef, ptr noundef, i32 noundef) #3

declare i64 @id3_render_binary(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nounwind ssp uwtable
define i32 @id3_field_setint(ptr noundef %field, i64 noundef %number) #0 {
entry:
  %retval = alloca i32, align 4
  %field.addr = alloca ptr, align 8
  %number.addr = alloca i64, align 8
  store ptr %field, ptr %field.addr, align 8
  store i64 %number, ptr %number.addr, align 8
  %0 = load i32, ptr %field, align 8
  switch i32 %0, label %sw.default [
    i32 10, label %sw.bb
    i32 11, label %sw.bb2
    i32 12, label %sw.bb8
    i32 13, label %sw.bb14
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i64, ptr %number.addr, align 8
  %cmp = icmp sgt i64 %1, 127
  %2 = load i64, ptr %number.addr, align 8
  %cmp1 = icmp slt i64 %2, -128
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %if.then, label %sw.epilog

if.then:                                          ; preds = %sw.bb
  store i32 -1, ptr %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  %3 = load i64, ptr %number.addr, align 8
  %cmp3 = icmp sgt i64 %3, 32767
  %4 = load i64, ptr %number.addr, align 8
  %cmp5 = icmp slt i64 %4, -32768
  %or.cond1 = select i1 %cmp3, i1 true, i1 %cmp5
  br i1 %or.cond1, label %if.then6, label %sw.epilog

if.then6:                                         ; preds = %sw.bb2
  store i32 -1, ptr %retval, align 4
  br label %return

sw.bb8:                                           ; preds = %entry
  %5 = load i64, ptr %number.addr, align 8
  %cmp9 = icmp sgt i64 %5, 8388607
  %6 = load i64, ptr %number.addr, align 8
  %cmp11 = icmp slt i64 %6, -8388608
  %or.cond2 = select i1 %cmp9, i1 true, i1 %cmp11
  br i1 %or.cond2, label %if.then12, label %sw.epilog

if.then12:                                        ; preds = %sw.bb8
  store i32 -1, ptr %retval, align 4
  br label %return

sw.bb14:                                          ; preds = %entry
  %7 = load i64, ptr %number.addr, align 8
  %cmp15 = icmp sgt i64 %7, 2147483647
  %8 = load i64, ptr %number.addr, align 8
  %cmp17 = icmp slt i64 %8, -2147483648
  %or.cond3 = select i1 %cmp15, i1 true, i1 %cmp17
  br i1 %or.cond3, label %if.then18, label %sw.epilog

if.then18:                                        ; preds = %sw.bb14
  store i32 -1, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb14, %sw.bb8, %sw.bb2, %sw.bb
  %9 = load i64, ptr %number.addr, align 8
  %10 = load ptr, ptr %field.addr, align 8
  %value = getelementptr inbounds %struct.anon, ptr %10, i64 0, i32 1
  store i64 %9, ptr %value, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %if.then18, %if.then12, %if.then6, %if.then
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

; Function Attrs: nounwind ssp uwtable
define i32 @id3_field_settextencoding(ptr noundef %field, i32 noundef %encoding) #0 {
entry:
  %field.addr = alloca ptr, align 8
  %encoding.addr = alloca i32, align 4
  store ptr %field, ptr %field.addr, align 8
  store i32 %encoding, ptr %encoding.addr, align 4
  %0 = load i32, ptr %field, align 8
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %field.addr, align 8
  call void @id3_field_finish(ptr noundef %1)
  %2 = load i32, ptr %encoding.addr, align 4
  %conv = zext i32 %2 to i64
  %value = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 1
  store i64 %conv, ptr %value, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i32 [ 0, %if.end ], [ -1, %entry ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define i32 @id3_field_setlatin1(ptr noundef %field, ptr noundef %latin1) #0 {
entry:
  %retval = alloca i32, align 4
  %field.addr = alloca ptr, align 8
  %latin1.addr = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  store ptr %field, ptr %field.addr, align 8
  store ptr %latin1, ptr %latin1.addr, align 8
  %0 = load i32, ptr %field, align 8
  %cmp.not = icmp eq i32 %0, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %field.addr, align 8
  call void @id3_field_finish(ptr noundef %1)
  %2 = load ptr, ptr %latin1.addr, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end7, label %if.then1

if.then1:                                         ; preds = %if.end
  %3 = load ptr, ptr %latin1.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then1
  %storemerge = phi ptr [ %3, %if.then1 ], [ %incdec.ptr, %for.inc ]
  store ptr %storemerge, ptr %ptr, align 8
  %4 = load i8, ptr %storemerge, align 1
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %if.end7, label %for.body

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %ptr, align 8
  %6 = load i8, ptr %5, align 1
  %cmp3 = icmp eq i8 %6, 10
  br i1 %cmp3, label %if.then5, label %for.inc

if.then5:                                         ; preds = %for.body
  store i32 -1, ptr %retval, align 4
  br label %return

for.inc:                                          ; preds = %for.body
  %7 = load ptr, ptr %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %7, i64 1
  br label %for.cond, !llvm.loop !13

if.end7:                                          ; preds = %for.cond, %if.end
  %8 = load ptr, ptr %field.addr, align 8
  %9 = load ptr, ptr %latin1.addr, align 8
  %call = call i32 @set_latin1(ptr noundef %8, ptr noundef %9)
  store i32 %call, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then5, %if.then
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @set_latin1(ptr noundef %field, ptr noundef %latin1) #0 {
entry:
  %field.addr = alloca ptr, align 8
  %latin1.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  store ptr %field, ptr %field.addr, align 8
  store ptr %latin1, ptr %latin1.addr, align 8
  %cmp = icmp eq ptr %latin1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %latin1.addr, align 8
  %1 = load i8, ptr %0, align 1
  %cmp1 = icmp eq i8 %1, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %data, align 8
  br label %if.end6

if.else:                                          ; preds = %lor.lhs.false
  %2 = load ptr, ptr %latin1.addr, align 8
  %call = call ptr @id3_latin1_duplicate(ptr noundef %2) #7
  store ptr %call, ptr %data, align 8
  %cmp3 = icmp eq ptr %call, null
  br i1 %cmp3, label %return, label %if.end6

if.end6:                                          ; preds = %if.else, %if.then
  %3 = load ptr, ptr %data, align 8
  %4 = load ptr, ptr %field.addr, align 8
  %ptr = getelementptr inbounds %struct.anon.0, ptr %4, i64 0, i32 1
  store ptr %3, ptr %ptr, align 8
  br label %return

return:                                           ; preds = %if.else, %if.end6
  %storemerge = phi i32 [ 0, %if.end6 ], [ -1, %if.else ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define i32 @id3_field_setfulllatin1(ptr noundef %field, ptr noundef %latin1) #0 {
entry:
  %field.addr = alloca ptr, align 8
  %latin1.addr = alloca ptr, align 8
  store ptr %field, ptr %field.addr, align 8
  store ptr %latin1, ptr %latin1.addr, align 8
  %0 = load i32, ptr %field, align 8
  %cmp.not = icmp eq i32 %0, 2
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %field.addr, align 8
  call void @id3_field_finish(ptr noundef %1)
  %2 = load ptr, ptr %latin1.addr, align 8
  %call = call i32 @set_latin1(ptr noundef %1, ptr noundef %2)
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i32 [ %call, %if.end ], [ -1, %entry ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define i32 @id3_field_setstring(ptr noundef %field, ptr noundef %string) #0 {
entry:
  %retval = alloca i32, align 4
  %field.addr = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  store ptr %field, ptr %field.addr, align 8
  store ptr %string, ptr %string.addr, align 8
  %0 = load i32, ptr %field, align 8
  %cmp.not = icmp eq i32 %0, 4
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %field.addr, align 8
  call void @id3_field_finish(ptr noundef %1)
  %2 = load ptr, ptr %string.addr, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end6, label %if.then1

if.then1:                                         ; preds = %if.end
  %3 = load ptr, ptr %string.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then1
  %storemerge = phi ptr [ %3, %if.then1 ], [ %incdec.ptr, %for.inc ]
  store ptr %storemerge, ptr %ptr, align 8
  %4 = load i64, ptr %storemerge, align 8
  %tobool2.not = icmp eq i64 %4, 0
  br i1 %tobool2.not, label %if.end6, label %for.body

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %ptr, align 8
  %6 = load i64, ptr %5, align 8
  %cmp3 = icmp eq i64 %6, 10
  br i1 %cmp3, label %if.then4, label %for.inc

if.then4:                                         ; preds = %for.body
  store i32 -1, ptr %retval, align 4
  br label %return

for.inc:                                          ; preds = %for.body
  %7 = load ptr, ptr %ptr, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %7, i64 1
  br label %for.cond, !llvm.loop !14

if.end6:                                          ; preds = %for.cond, %if.end
  %8 = load ptr, ptr %field.addr, align 8
  %9 = load ptr, ptr %string.addr, align 8
  %call = call i32 @set_string(ptr noundef %8, ptr noundef %9)
  store i32 %call, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then4, %if.then
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @set_string(ptr noundef %field, ptr noundef %string) #0 {
entry:
  %field.addr = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  store ptr %field, ptr %field.addr, align 8
  store ptr %string, ptr %string.addr, align 8
  %cmp = icmp eq ptr %string, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %string.addr, align 8
  %1 = load i64, ptr %0, align 8
  %cmp1 = icmp eq i64 %1, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %data, align 8
  br label %if.end4

if.else:                                          ; preds = %lor.lhs.false
  %2 = load ptr, ptr %string.addr, align 8
  %call = call ptr @id3_ucs4_duplicate(ptr noundef %2) #7
  store ptr %call, ptr %data, align 8
  %cmp2 = icmp eq ptr %call, null
  br i1 %cmp2, label %return, label %if.end4

if.end4:                                          ; preds = %if.else, %if.then
  %3 = load ptr, ptr %data, align 8
  %4 = load ptr, ptr %field.addr, align 8
  %ptr = getelementptr inbounds %struct.anon.2, ptr %4, i64 0, i32 1
  store ptr %3, ptr %ptr, align 8
  br label %return

return:                                           ; preds = %if.else, %if.end4
  %storemerge = phi i32 [ 0, %if.end4 ], [ -1, %if.else ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define i32 @id3_field_setfullstring(ptr noundef %field, ptr noundef %string) #0 {
entry:
  %field.addr = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  store ptr %field, ptr %field.addr, align 8
  store ptr %string, ptr %string.addr, align 8
  %0 = load i32, ptr %field, align 8
  %cmp.not = icmp eq i32 %0, 5
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %field.addr, align 8
  call void @id3_field_finish(ptr noundef %1)
  %2 = load ptr, ptr %string.addr, align 8
  %call = call i32 @set_string(ptr noundef %1, ptr noundef %2)
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i32 [ %call, %if.end ], [ -1, %entry ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define i32 @id3_field_setstrings(ptr noundef %field, i32 noundef %length, ptr noundef %ptrs) #0 {
entry:
  %retval = alloca i32, align 4
  %field.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %ptrs.addr = alloca ptr, align 8
  %strings = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %field, ptr %field.addr, align 8
  store i32 %length, ptr %length.addr, align 4
  store ptr %ptrs, ptr %ptrs.addr, align 8
  %0 = load i32, ptr %field, align 8
  %cmp.not = icmp eq i32 %0, 6
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %field.addr, align 8
  call void @id3_field_finish(ptr noundef %1)
  %2 = load i32, ptr %length.addr, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %3 = load i32, ptr %length.addr, align 4
  %conv = zext i32 %3 to i64
  %mul = shl nuw nsw i64 %conv, 3
  %call = call ptr @malloc(i64 noundef %mul) #9
  store ptr %call, ptr %strings, align 8
  %cmp4 = icmp eq ptr %call, null
  br i1 %cmp4, label %if.then6, label %for.cond

if.then6:                                         ; preds = %if.end3
  store i32 -1, ptr %retval, align 4
  br label %return

for.cond:                                         ; preds = %if.end3, %for.inc
  %storemerge = phi i32 [ %inc, %for.inc ], [ 0, %if.end3 ]
  store i32 %storemerge, ptr %i, align 4
  %4 = load i32, ptr %length.addr, align 4
  %cmp8 = icmp ult i32 %storemerge, %4
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %ptrs.addr, align 8
  %6 = load i32, ptr %i, align 4
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom
  %7 = load ptr, ptr %arrayidx, align 8
  %call10 = call ptr @id3_ucs4_duplicate(ptr noundef %7) #7
  %8 = load ptr, ptr %strings, align 8
  %idxprom11 = zext i32 %6 to i64
  %arrayidx12 = getelementptr inbounds ptr, ptr %8, i64 %idxprom11
  store ptr %call10, ptr %arrayidx12, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom13 = zext i32 %9 to i64
  %arrayidx14 = getelementptr inbounds ptr, ptr %8, i64 %idxprom13
  %10 = load ptr, ptr %arrayidx14, align 8
  %cmp15 = icmp eq ptr %10, null
  br i1 %cmp15, label %while.cond, label %for.inc

while.cond:                                       ; preds = %for.body, %while.body
  %11 = load i32, ptr %i, align 4
  %dec = add i32 %11, -1
  store i32 %dec, ptr %i, align 4
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %12 = load ptr, ptr %strings, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom18 = zext i32 %13 to i64
  %arrayidx19 = getelementptr inbounds ptr, ptr %12, i64 %idxprom18
  %14 = load ptr, ptr %arrayidx19, align 8
  call void @free(ptr noundef %14) #7
  br label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %while.cond
  %15 = load ptr, ptr %strings, align 8
  call void @free(ptr noundef %15) #7
  store i32 -1, ptr %retval, align 4
  br label %return

for.inc:                                          ; preds = %for.body
  %16 = load i32, ptr %i, align 4
  %inc = add i32 %16, 1
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  %17 = load ptr, ptr %strings, align 8
  %18 = load ptr, ptr %field.addr, align 8
  %strings21 = getelementptr inbounds %struct.anon.3, ptr %18, i64 0, i32 2
  store ptr %17, ptr %strings21, align 8
  %19 = load i32, ptr %length.addr, align 4
  %nstrings = getelementptr inbounds %struct.anon.3, ptr %18, i64 0, i32 1
  store i32 %19, ptr %nstrings, align 4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %while.end, %if.then6, %if.then2, %if.then
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #5

declare ptr @id3_ucs4_duplicate(ptr noundef) #3

; Function Attrs: nounwind ssp uwtable
define i32 @id3_field_addstring(ptr noundef %field, ptr noundef %string) #0 {
entry:
  %retval = alloca i32, align 4
  %field.addr = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  %new = alloca ptr, align 8
  %strings = alloca ptr, align 8
  store ptr %field, ptr %field.addr, align 8
  store ptr %string, ptr %string.addr, align 8
  %0 = load i32, ptr %field, align 8
  %cmp.not = icmp eq i32 %0, 6
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %string.addr, align 8
  %call = call ptr @id3_ucs4_duplicate(ptr noundef %1) #7
  store ptr %call, ptr %new, align 8
  %cmp1 = icmp eq ptr %call, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %field.addr, align 8
  %strings4 = getelementptr inbounds %struct.anon.3, ptr %2, i64 0, i32 2
  %3 = load ptr, ptr %strings4, align 8
  %nstrings = getelementptr inbounds %struct.anon.3, ptr %2, i64 0, i32 1
  %4 = load i32, ptr %nstrings, align 4
  %add = add i32 %4, 1
  %conv = zext i32 %add to i64
  %mul = shl nuw nsw i64 %conv, 3
  %call5 = call ptr @realloc(ptr noundef %3, i64 noundef %mul) #8
  store ptr %call5, ptr %strings, align 8
  %cmp6 = icmp eq ptr %call5, null
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end3
  %5 = load ptr, ptr %new, align 8
  call void @free(ptr noundef %5) #7
  store i32 -1, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end3
  %6 = load ptr, ptr %strings, align 8
  %7 = load ptr, ptr %field.addr, align 8
  %strings10 = getelementptr inbounds %struct.anon.3, ptr %7, i64 0, i32 2
  store ptr %6, ptr %strings10, align 8
  %8 = load ptr, ptr %new, align 8
  %nstrings12 = getelementptr inbounds %struct.anon.3, ptr %7, i64 0, i32 1
  %9 = load i32, ptr %nstrings12, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %nstrings12, align 4
  %idxprom = zext i32 %9 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %idxprom
  store ptr %8, ptr %arrayidx, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.then8, %if.then2, %if.then
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: nounwind ssp uwtable
define i32 @id3_field_setlanguage(ptr noundef %field, ptr noundef %language) #0 {
entry:
  %retval = alloca i32, align 4
  %field.addr = alloca ptr, align 8
  %language.addr = alloca ptr, align 8
  store ptr %field, ptr %field.addr, align 8
  store ptr %language, ptr %language.addr, align 8
  %0 = load i32, ptr %field, align 8
  %cmp.not = icmp eq i32 %0, 7
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %field.addr, align 8
  call void @id3_field_finish(ptr noundef %1)
  %2 = load ptr, ptr %language.addr, align 8
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load ptr, ptr %language.addr, align 8
  %call = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #7
  %cmp2.not = icmp eq i64 %call, 3
  br i1 %cmp2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %lor.lhs.false
  %4 = load ptr, ptr %field.addr, align 8
  %value = getelementptr inbounds %struct.anon.4, ptr %4, i64 0, i32 1
  %5 = load ptr, ptr %language.addr, align 8
  %value5 = getelementptr inbounds %struct.anon.4, ptr %4, i64 0, i32 1
  %6 = call i64 @llvm.objectsize.i64.p0(ptr %value5, i1 false, i1 true, i1 false)
  %call7 = call ptr @__strcpy_chk(ptr noundef nonnull %value, ptr noundef %5, i64 noundef %6) #7
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

declare i64 @strlen(ptr noundef) #3

; Function Attrs: nounwind ssp uwtable
define i32 @id3_field_setframeid(ptr noundef %field, ptr noundef %id) #0 {
entry:
  %field.addr = alloca ptr, align 8
  %id.addr = alloca ptr, align 8
  store ptr %field, ptr %field.addr, align 8
  store ptr %id, ptr %id.addr, align 8
  %0 = load i32, ptr %field, align 8
  %cmp.not = icmp eq i32 %0, 8
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %field.addr, align 8
  call void @id3_field_finish(ptr noundef %1)
  %2 = load ptr, ptr %id.addr, align 8
  %3 = load i8, ptr %2, align 1
  %value = getelementptr inbounds %struct.anon.4, ptr %1, i64 0, i32 1
  store i8 %3, ptr %value, align 4
  %arrayidx2 = getelementptr inbounds i8, ptr %2, i64 1
  %4 = load i8, ptr %arrayidx2, align 1
  %5 = load ptr, ptr %field.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct.anon.4, ptr %5, i64 0, i32 1, i64 1
  store i8 %4, ptr %arrayidx4, align 1
  %6 = load ptr, ptr %id.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %6, i64 2
  %7 = load i8, ptr %arrayidx5, align 1
  %arrayidx7 = getelementptr inbounds %struct.anon.4, ptr %5, i64 0, i32 1, i64 2
  store i8 %7, ptr %arrayidx7, align 2
  %arrayidx8 = getelementptr inbounds i8, ptr %6, i64 3
  %8 = load i8, ptr %arrayidx8, align 1
  %9 = load ptr, ptr %field.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct.anon.4, ptr %9, i64 0, i32 1, i64 3
  store i8 %8, ptr %arrayidx10, align 1
  %arrayidx12 = getelementptr inbounds %struct.anon.4, ptr %9, i64 0, i32 1, i64 4
  store i8 0, ptr %arrayidx12, align 4
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i32 [ 0, %if.end ], [ -1, %entry ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define i32 @id3_field_setbinarydata(ptr noundef %field, ptr noundef %data, i64 noundef %length) #0 {
entry:
  %retval = alloca i32, align 4
  %field.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %mem = alloca ptr, align 8
  store ptr %field, ptr %field.addr, align 8
  store ptr %data, ptr %data.addr, align 8
  store i64 %length, ptr %length.addr, align 8
  %0 = load i32, ptr %field, align 8
  %cmp.not = icmp eq i32 %0, 15
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %field.addr, align 8
  call void @id3_field_finish(ptr noundef %1)
  %2 = load i64, ptr %length.addr, align 8
  %cmp1 = icmp eq i64 %2, 0
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  store ptr null, ptr %mem, align 8
  br label %if.end7

if.else:                                          ; preds = %if.end
  %3 = load i64, ptr %length.addr, align 8
  %call = call ptr @malloc(i64 noundef %3) #9
  store ptr %call, ptr %mem, align 8
  %cmp3 = icmp eq ptr %call, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.else
  store i32 -1, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.else
  %4 = load ptr, ptr %mem, align 8
  %5 = load ptr, ptr %data.addr, align 8
  %6 = load i64, ptr %length.addr, align 8
  %7 = call i64 @llvm.objectsize.i64.p0(ptr %4, i1 false, i1 true, i1 false)
  %call6 = call ptr @__memcpy_chk(ptr noundef %4, ptr noundef %5, i64 noundef %6, i64 noundef %7) #7
  br label %if.end7

if.end7:                                          ; preds = %if.end5, %if.then2
  %8 = load ptr, ptr %mem, align 8
  %9 = load ptr, ptr %field.addr, align 8
  %data8 = getelementptr inbounds %struct.anon.5, ptr %9, i64 0, i32 1
  store ptr %8, ptr %data8, align 8
  %10 = load i64, ptr %length.addr, align 8
  %length9 = getelementptr inbounds %struct.anon.5, ptr %9, i64 0, i32 2
  store i64 %10, ptr %length9, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then4, %if.then
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define i64 @id3_field_getint(ptr noundef %field) #0 {
entry:
  %field.addr = alloca ptr, align 8
  store ptr %field, ptr %field.addr, align 8
  %0 = load i32, ptr %field, align 8
  %cmp.not = icmp eq i32 %0, 10
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %field.addr, align 8
  %2 = load i32, ptr %1, align 8
  %cmp1.not = icmp eq i32 %2, 11
  br i1 %cmp1.not, label %if.end, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %3 = load ptr, ptr %field.addr, align 8
  %4 = load i32, ptr %3, align 8
  %cmp3.not = icmp eq i32 %4, 12
  br i1 %cmp3.not, label %if.end, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %5 = load ptr, ptr %field.addr, align 8
  %6 = load i32, ptr %5, align 8
  %cmp5.not = icmp eq i32 %6, 13
  br i1 %cmp5.not, label %if.end, label %return

if.end:                                           ; preds = %land.lhs.true4, %land.lhs.true2, %land.lhs.true, %entry
  %7 = load ptr, ptr %field.addr, align 8
  %value = getelementptr inbounds %struct.anon, ptr %7, i64 0, i32 1
  %8 = load i64, ptr %value, align 8
  br label %return

return:                                           ; preds = %land.lhs.true4, %if.end
  %storemerge = phi i64 [ %8, %if.end ], [ -1, %land.lhs.true4 ]
  ret i64 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define ptr @id3_field_getstring(ptr noundef %field) #0 {
entry:
  %field.addr = alloca ptr, align 8
  store ptr %field, ptr %field.addr, align 8
  %0 = load i32, ptr %field, align 8
  %cmp.not = icmp eq i32 %0, 4
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %field.addr, align 8
  %ptr = getelementptr inbounds %struct.anon.2, ptr %1, i64 0, i32 1
  %2 = load ptr, ptr %ptr, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %return, label %cond.true

cond.true:                                        ; preds = %if.end
  %3 = load ptr, ptr %field.addr, align 8
  %ptr1 = getelementptr inbounds %struct.anon.2, ptr %3, i64 0, i32 1
  %4 = load ptr, ptr %ptr1, align 8
  br label %return

return:                                           ; preds = %cond.true, %if.end, %entry
  %storemerge = phi ptr [ null, %entry ], [ %4, %cond.true ], [ @id3_ucs4_empty, %if.end ]
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define ptr @id3_field_getfullstring(ptr noundef %field) #0 {
entry:
  %field.addr = alloca ptr, align 8
  store ptr %field, ptr %field.addr, align 8
  %0 = load i32, ptr %field, align 8
  %cmp.not = icmp eq i32 %0, 5
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %field.addr, align 8
  %ptr = getelementptr inbounds %struct.anon.2, ptr %1, i64 0, i32 1
  %2 = load ptr, ptr %ptr, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %return, label %cond.true

cond.true:                                        ; preds = %if.end
  %3 = load ptr, ptr %field.addr, align 8
  %ptr1 = getelementptr inbounds %struct.anon.2, ptr %3, i64 0, i32 1
  %4 = load ptr, ptr %ptr1, align 8
  br label %return

return:                                           ; preds = %cond.true, %if.end, %entry
  %storemerge = phi ptr [ null, %entry ], [ %4, %cond.true ], [ @id3_ucs4_empty, %if.end ]
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define i32 @id3_field_getnstrings(ptr noundef %field) #0 {
entry:
  %field.addr = alloca ptr, align 8
  store ptr %field, ptr %field.addr, align 8
  %0 = load i32, ptr %field, align 8
  %cmp.not = icmp eq i32 %0, 6
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %field.addr, align 8
  %nstrings = getelementptr inbounds %struct.anon.3, ptr %1, i64 0, i32 1
  %2 = load i32, ptr %nstrings, align 4
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i32 [ %2, %if.end ], [ 0, %entry ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define ptr @id3_field_getstrings(ptr noundef %field, i32 noundef %index) #0 {
entry:
  %field.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  store ptr %field, ptr %field.addr, align 8
  store i32 %index, ptr %index.addr, align 4
  %0 = load i32, ptr %field, align 8
  %cmp.not = icmp eq i32 %0, 6
  br i1 %cmp.not, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %index.addr, align 4
  %2 = load ptr, ptr %field.addr, align 8
  %nstrings = getelementptr inbounds %struct.anon.3, ptr %2, i64 0, i32 1
  %3 = load i32, ptr %nstrings, align 4
  %cmp1.not = icmp ult i32 %1, %3
  br i1 %cmp1.not, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %field.addr, align 8
  %strings = getelementptr inbounds %struct.anon.3, ptr %4, i64 0, i32 2
  %5 = load ptr, ptr %strings, align 8
  %6 = load i32, ptr %index.addr, align 4
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom
  %7 = load ptr, ptr %arrayidx, align 8
  %cmp2 = icmp eq ptr %7, null
  %spec.select = select i1 %cmp2, ptr @id3_ucs4_empty, ptr %7
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %storemerge = phi ptr [ %spec.select, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ]
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define ptr @id3_field_getframeid(ptr noundef %field) #0 {
entry:
  %field.addr = alloca ptr, align 8
  store ptr %field, ptr %field.addr, align 8
  %0 = load i32, ptr %field, align 8
  %cmp.not = icmp eq i32 %0, 8
  %1 = load ptr, ptr %field.addr, align 8
  %value = getelementptr inbounds %struct.anon.4, ptr %1, i64 0, i32 1
  %storemerge = select i1 %cmp.not, ptr %value, ptr null
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define ptr @id3_field_getbinarydata(ptr noundef %field, ptr noundef %length) #0 {
entry:
  %field.addr = alloca ptr, align 8
  %length.addr = alloca ptr, align 8
  store ptr %field, ptr %field.addr, align 8
  store ptr %length, ptr %length.addr, align 8
  %0 = load i32, ptr %field, align 8
  %cmp.not = icmp eq i32 %0, 15
  br i1 %cmp.not, label %do.body, label %return

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %field.addr, align 8
  %length1 = getelementptr inbounds %struct.anon.5, ptr %1, i64 0, i32 2
  %2 = load i64, ptr %length1, align 8
  %cmp2 = icmp eq i64 %2, 0
  br i1 %cmp2, label %do.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %3 = load ptr, ptr %field.addr, align 8
  %data = getelementptr inbounds %struct.anon.5, ptr %3, i64 0, i32 1
  %4 = load ptr, ptr %data, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.then3, label %do.end

if.then3:                                         ; preds = %lor.lhs.false
  call void @abort() #10
  unreachable

do.end:                                           ; preds = %do.body, %lor.lhs.false
  %5 = load ptr, ptr %field.addr, align 8
  %length5 = getelementptr inbounds %struct.anon.5, ptr %5, i64 0, i32 2
  %6 = load i64, ptr %length5, align 8
  %7 = load ptr, ptr %length.addr, align 8
  store i64 %6, ptr %7, align 8
  %data6 = getelementptr inbounds %struct.anon.5, ptr %5, i64 0, i32 1
  %8 = load ptr, ptr %data6, align 8
  %tobool7.not = icmp eq ptr %8, null
  br i1 %tobool7.not, label %return, label %cond.true

cond.true:                                        ; preds = %do.end
  %9 = load ptr, ptr %field.addr, align 8
  %data8 = getelementptr inbounds %struct.anon.5, ptr %9, i64 0, i32 1
  %10 = load ptr, ptr %data8, align 8
  br label %return

return:                                           ; preds = %cond.true, %do.end, %entry
  %storemerge = phi ptr [ null, %entry ], [ %10, %cond.true ], [ @id3_field_getbinarydata.empty, %do.end ]
  ret ptr %storemerge
}

; Function Attrs: cold noreturn
declare void @abort() #6

declare ptr @id3_latin1_duplicate(ptr noundef) #3

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { allocsize(1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { cold noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(1) }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { cold noreturn nounwind }

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
