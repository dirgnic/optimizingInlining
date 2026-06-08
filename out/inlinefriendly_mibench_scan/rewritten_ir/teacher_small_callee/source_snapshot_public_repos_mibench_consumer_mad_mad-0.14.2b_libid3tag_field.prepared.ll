; ModuleID = './source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/libid3tag/field.c'
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
  %type.addr = alloca i32, align 4
  store ptr %field, ptr %field.addr, align 8
  store i32 %type, ptr %type.addr, align 4
  %0 = load i32, ptr %type.addr, align 4
  %1 = load ptr, ptr %field.addr, align 8
  store i32 %0, ptr %1, align 8
  switch i32 %0, label %sw.epilog [
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
  %2 = load ptr, ptr %field.addr, align 8
  %value = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 1
  store i64 0, ptr %value, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry, %entry
  %3 = load ptr, ptr %field.addr, align 8
  %ptr = getelementptr inbounds %struct.anon.0, ptr %3, i32 0, i32 1
  store ptr null, ptr %ptr, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %4 = load ptr, ptr %field.addr, align 8
  %nstrings = getelementptr inbounds %struct.anon.1, ptr %4, i32 0, i32 1
  store i32 0, ptr %nstrings, align 4
  %5 = load ptr, ptr %field.addr, align 8
  %strings = getelementptr inbounds %struct.anon.1, ptr %5, i32 0, i32 2
  store ptr null, ptr %strings, align 8
  br label %sw.bb3

sw.bb3:                                           ; preds = %entry, %entry, %sw.bb2
  %6 = load ptr, ptr %field.addr, align 8
  %ptr4 = getelementptr inbounds %struct.anon.2, ptr %6, i32 0, i32 1
  store ptr null, ptr %ptr4, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %7 = load ptr, ptr %field.addr, align 8
  %nstrings6 = getelementptr inbounds %struct.anon.3, ptr %7, i32 0, i32 1
  store i32 0, ptr %nstrings6, align 4
  %8 = load ptr, ptr %field.addr, align 8
  %strings7 = getelementptr inbounds %struct.anon.3, ptr %8, i32 0, i32 2
  store ptr null, ptr %strings7, align 8
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %9 = load ptr, ptr %field.addr, align 8
  %value9 = getelementptr inbounds %struct.anon.4, ptr %9, i32 0, i32 1
  %arraydecay = getelementptr inbounds [9 x i8], ptr %value9, i64 0, i64 0
  %10 = load ptr, ptr %field.addr, align 8
  %value10 = getelementptr inbounds %struct.anon.4, ptr %10, i32 0, i32 1
  %arraydecay11 = getelementptr inbounds [9 x i8], ptr %value10, i64 0, i64 0
  %11 = call i64 @llvm.objectsize.i64.p0(ptr %arraydecay11, i1 false, i1 true, i1 false)
  %call = call ptr @__strcpy_chk(ptr noundef %arraydecay, ptr noundef @.str, i64 noundef %11) #7
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  %12 = load ptr, ptr %field.addr, align 8
  %value13 = getelementptr inbounds %struct.anon.4, ptr %12, i32 0, i32 1
  %arraydecay14 = getelementptr inbounds [9 x i8], ptr %value13, i64 0, i64 0
  %13 = load ptr, ptr %field.addr, align 8
  %value15 = getelementptr inbounds %struct.anon.4, ptr %13, i32 0, i32 1
  %arraydecay16 = getelementptr inbounds [9 x i8], ptr %value15, i64 0, i64 0
  %14 = call i64 @llvm.objectsize.i64.p0(ptr %arraydecay16, i1 false, i1 true, i1 false)
  %call17 = call ptr @__strcpy_chk(ptr noundef %arraydecay14, ptr noundef @.str.1, i64 noundef %14) #7
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  %15 = load ptr, ptr %field.addr, align 8
  %value19 = getelementptr inbounds %struct.anon.4, ptr %15, i32 0, i32 1
  %arraydecay20 = getelementptr inbounds [9 x i8], ptr %value19, i64 0, i64 0
  %16 = load ptr, ptr %field.addr, align 8
  %value21 = getelementptr inbounds %struct.anon.4, ptr %16, i32 0, i32 1
  %arraydecay22 = getelementptr inbounds [9 x i8], ptr %value21, i64 0, i64 0
  %17 = call i64 @llvm.objectsize.i64.p0(ptr %arraydecay22, i1 false, i1 true, i1 false)
  %call23 = call ptr @__memset_chk(ptr noundef %arraydecay20, i32 noundef 0, i64 noundef 9, i64 noundef %17) #7
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry, %entry
  %18 = load ptr, ptr %field.addr, align 8
  %data = getelementptr inbounds %struct.anon.5, ptr %18, i32 0, i32 1
  store ptr null, ptr %data, align 8
  %19 = load ptr, ptr %field.addr, align 8
  %length = getelementptr inbounds %struct.anon.5, ptr %19, i32 0, i32 2
  store i64 0, ptr %length, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb24, %sw.bb18, %sw.bb12, %sw.bb8, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
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
  %0 = load ptr, ptr %field.addr, align 8
  %1 = load i32, ptr %0, align 8
  switch i32 %1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 10, label %sw.bb
    i32 11, label %sw.bb
    i32 12, label %sw.bb
    i32 13, label %sw.bb
    i32 7, label %sw.bb
    i32 8, label %sw.bb
    i32 9, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb1
    i32 3, label %sw.bb3
    i32 4, label %sw.bb9
    i32 5, label %sw.bb9
    i32 6, label %sw.bb15
    i32 14, label %sw.bb31
    i32 15, label %sw.bb31
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry, %entry
  %2 = load ptr, ptr %field.addr, align 8
  %ptr = getelementptr inbounds %struct.anon.0, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %ptr, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb1
  %4 = load ptr, ptr %field.addr, align 8
  %ptr2 = getelementptr inbounds %struct.anon.0, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %ptr2, align 8
  call void @free(ptr noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb1
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb3
  %6 = load i32, ptr %i, align 4
  %7 = load ptr, ptr %field.addr, align 8
  %nstrings = getelementptr inbounds %struct.anon.1, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %nstrings, align 4
  %cmp = icmp ult i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %field.addr, align 8
  %strings = getelementptr inbounds %struct.anon.1, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %strings, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom = zext i32 %11 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %10, i64 %idxprom
  %12 = load ptr, ptr %arrayidx, align 8
  call void @free(ptr noundef %12)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, ptr %i, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %14 = load ptr, ptr %field.addr, align 8
  %strings4 = getelementptr inbounds %struct.anon.1, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %strings4, align 8
  %tobool5 = icmp ne ptr %15, null
  br i1 %tobool5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %for.end
  %16 = load ptr, ptr %field.addr, align 8
  %strings7 = getelementptr inbounds %struct.anon.1, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %strings7, align 8
  call void @free(ptr noundef %17)
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %for.end
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry, %entry
  %18 = load ptr, ptr %field.addr, align 8
  %ptr10 = getelementptr inbounds %struct.anon.2, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %ptr10, align 8
  %tobool11 = icmp ne ptr %19, null
  br i1 %tobool11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %sw.bb9
  %20 = load ptr, ptr %field.addr, align 8
  %ptr13 = getelementptr inbounds %struct.anon.2, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %ptr13, align 8
  call void @free(ptr noundef %21)
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %sw.bb9
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc23, %sw.bb15
  %22 = load i32, ptr %i, align 4
  %23 = load ptr, ptr %field.addr, align 8
  %nstrings17 = getelementptr inbounds %struct.anon.3, ptr %23, i32 0, i32 1
  %24 = load i32, ptr %nstrings17, align 4
  %cmp18 = icmp ult i32 %22, %24
  br i1 %cmp18, label %for.body19, label %for.end25

for.body19:                                       ; preds = %for.cond16
  %25 = load ptr, ptr %field.addr, align 8
  %strings20 = getelementptr inbounds %struct.anon.3, ptr %25, i32 0, i32 2
  %26 = load ptr, ptr %strings20, align 8
  %27 = load i32, ptr %i, align 4
  %idxprom21 = zext i32 %27 to i64
  %arrayidx22 = getelementptr inbounds ptr, ptr %26, i64 %idxprom21
  %28 = load ptr, ptr %arrayidx22, align 8
  call void @free(ptr noundef %28)
  br label %for.inc23

for.inc23:                                        ; preds = %for.body19
  %29 = load i32, ptr %i, align 4
  %inc24 = add i32 %29, 1
  store i32 %inc24, ptr %i, align 4
  br label %for.cond16, !llvm.loop !8

for.end25:                                        ; preds = %for.cond16
  %30 = load ptr, ptr %field.addr, align 8
  %strings26 = getelementptr inbounds %struct.anon.3, ptr %30, i32 0, i32 2
  %31 = load ptr, ptr %strings26, align 8
  %tobool27 = icmp ne ptr %31, null
  br i1 %tobool27, label %if.then28, label %if.end30

if.then28:                                        ; preds = %for.end25
  %32 = load ptr, ptr %field.addr, align 8
  %strings29 = getelementptr inbounds %struct.anon.3, ptr %32, i32 0, i32 2
  %33 = load ptr, ptr %strings29, align 8
  call void @free(ptr noundef %33)
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %for.end25
  br label %sw.epilog

sw.bb31:                                          ; preds = %entry, %entry
  %34 = load ptr, ptr %field.addr, align 8
  %data = getelementptr inbounds %struct.anon.5, ptr %34, i32 0, i32 1
  %35 = load ptr, ptr %data, align 8
  %tobool32 = icmp ne ptr %35, null
  br i1 %tobool32, label %if.then33, label %if.end35

if.then33:                                        ; preds = %sw.bb31
  %36 = load ptr, ptr %field.addr, align 8
  %data34 = getelementptr inbounds %struct.anon.5, ptr %36, i32 0, i32 1
  %37 = load ptr, ptr %data34, align 8
  call void @free(ptr noundef %37)
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %sw.bb31
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end35, %if.end30, %if.end14, %if.end8, %if.end, %sw.bb
  %38 = load ptr, ptr %field.addr, align 8
  %39 = load ptr, ptr %field.addr, align 8
  %40 = load i32, ptr %39, align 8
  call void @id3_field_init(ptr noundef %38, i32 noundef %40)
  ret void
}

declare void @free(ptr noundef) #3

; Function Attrs: nounwind ssp uwtable
define i32 @id3_field_type(ptr noundef %field) #0 {
entry:
  %field.addr = alloca ptr, align 8
  store ptr %field, ptr %field.addr, align 8
  %0 = load ptr, ptr %field.addr, align 8
  %1 = load i32, ptr %0, align 8
  ret i32 %1
}

; Function Attrs: nounwind ssp uwtable
define i32 @id3_field_parse(ptr noundef %field, ptr noundef %ptr, i64 noundef %length, ptr noundef %encoding) #0 {
entry:
  %retval = alloca i32, align 4
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
  %0 = load ptr, ptr %field.addr, align 8
  call void @id3_field_finish(ptr noundef %0)
  %1 = load ptr, ptr %field.addr, align 8
  %2 = load i32, ptr %1, align 8
  switch i32 %2, label %sw.epilog [
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
  %3 = load i64, ptr %length.addr, align 8
  %cmp = icmp ult i64 %3, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  br label %fail

if.end:                                           ; preds = %sw.bb
  %4 = load ptr, ptr %ptr.addr, align 8
  %call = call i64 @id3_parse_uint(ptr noundef %4, i32 noundef 4)
  %5 = load ptr, ptr %field.addr, align 8
  %value = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 1
  store i64 %call, ptr %value, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %6 = load i64, ptr %length.addr, align 8
  %cmp2 = icmp ult i64 %6, 3
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %sw.bb1
  br label %fail

if.end4:                                          ; preds = %sw.bb1
  %7 = load ptr, ptr %ptr.addr, align 8
  %call5 = call i64 @id3_parse_uint(ptr noundef %7, i32 noundef 3)
  %8 = load ptr, ptr %field.addr, align 8
  %value6 = getelementptr inbounds %struct.anon, ptr %8, i32 0, i32 1
  store i64 %call5, ptr %value6, align 8
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %9 = load i64, ptr %length.addr, align 8
  %cmp8 = icmp ult i64 %9, 2
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %sw.bb7
  br label %fail

if.end10:                                         ; preds = %sw.bb7
  %10 = load ptr, ptr %ptr.addr, align 8
  %call11 = call i64 @id3_parse_uint(ptr noundef %10, i32 noundef 2)
  %11 = load ptr, ptr %field.addr, align 8
  %value12 = getelementptr inbounds %struct.anon, ptr %11, i32 0, i32 1
  store i64 %call11, ptr %value12, align 8
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry, %entry
  %12 = load i64, ptr %length.addr, align 8
  %cmp14 = icmp ult i64 %12, 1
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %sw.bb13
  br label %fail

if.end16:                                         ; preds = %sw.bb13
  %13 = load ptr, ptr %ptr.addr, align 8
  %call17 = call i64 @id3_parse_uint(ptr noundef %13, i32 noundef 1)
  %14 = load ptr, ptr %field.addr, align 8
  %value18 = getelementptr inbounds %struct.anon, ptr %14, i32 0, i32 1
  store i64 %call17, ptr %value18, align 8
  %15 = load ptr, ptr %field.addr, align 8
  %16 = load i32, ptr %15, align 8
  %cmp19 = icmp eq i32 %16, 0
  br i1 %cmp19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end16
  %17 = load ptr, ptr %field.addr, align 8
  %value21 = getelementptr inbounds %struct.anon, ptr %17, i32 0, i32 1
  %18 = load i64, ptr %value21, align 8
  %conv = trunc i64 %18 to i32
  %19 = load ptr, ptr %encoding.addr, align 8
  store i32 %conv, ptr %19, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end16
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry
  %20 = load i64, ptr %length.addr, align 8
  %cmp24 = icmp ult i64 %20, 3
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %sw.bb23
  br label %fail

if.end27:                                         ; preds = %sw.bb23
  %21 = load ptr, ptr %ptr.addr, align 8
  %22 = load ptr, ptr %field.addr, align 8
  %value28 = getelementptr inbounds %struct.anon.4, ptr %22, i32 0, i32 1
  %arraydecay = getelementptr inbounds [9 x i8], ptr %value28, i64 0, i64 0
  call void @id3_parse_immediate(ptr noundef %21, i32 noundef 3, ptr noundef %arraydecay)
  br label %sw.epilog

sw.bb29:                                          ; preds = %entry
  %23 = load i64, ptr %length.addr, align 8
  %cmp30 = icmp ult i64 %23, 4
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %sw.bb29
  br label %fail

if.end33:                                         ; preds = %sw.bb29
  %24 = load ptr, ptr %ptr.addr, align 8
  %25 = load ptr, ptr %field.addr, align 8
  %value34 = getelementptr inbounds %struct.anon.4, ptr %25, i32 0, i32 1
  %arraydecay35 = getelementptr inbounds [9 x i8], ptr %value34, i64 0, i64 0
  call void @id3_parse_immediate(ptr noundef %24, i32 noundef 4, ptr noundef %arraydecay35)
  br label %sw.epilog

sw.bb36:                                          ; preds = %entry
  %26 = load i64, ptr %length.addr, align 8
  %cmp37 = icmp ult i64 %26, 8
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %sw.bb36
  br label %fail

if.end40:                                         ; preds = %sw.bb36
  %27 = load ptr, ptr %ptr.addr, align 8
  %28 = load ptr, ptr %field.addr, align 8
  %value41 = getelementptr inbounds %struct.anon.4, ptr %28, i32 0, i32 1
  %arraydecay42 = getelementptr inbounds [9 x i8], ptr %value41, i64 0, i64 0
  call void @id3_parse_immediate(ptr noundef %27, i32 noundef 8, ptr noundef %arraydecay42)
  br label %sw.epilog

sw.bb43:                                          ; preds = %entry, %entry
  %29 = load ptr, ptr %ptr.addr, align 8
  %30 = load i64, ptr %length.addr, align 8
  %31 = load ptr, ptr %field.addr, align 8
  %32 = load i32, ptr %31, align 8
  %cmp44 = icmp eq i32 %32, 2
  %conv45 = zext i1 %cmp44 to i32
  %call46 = call ptr @id3_parse_latin1(ptr noundef %29, i64 noundef %30, i32 noundef %conv45)
  store ptr %call46, ptr %latin1, align 8
  %33 = load ptr, ptr %latin1, align 8
  %cmp47 = icmp eq ptr %33, null
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %sw.bb43
  br label %fail

if.end50:                                         ; preds = %sw.bb43
  %34 = load ptr, ptr %latin1, align 8
  %35 = load ptr, ptr %field.addr, align 8
  %ptr51 = getelementptr inbounds %struct.anon.0, ptr %35, i32 0, i32 1
  store ptr %34, ptr %ptr51, align 8
  br label %sw.epilog

sw.bb52:                                          ; preds = %entry
  %36 = load ptr, ptr %ptr.addr, align 8
  %37 = load ptr, ptr %36, align 8
  %38 = load i64, ptr %length.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %37, i64 %38
  store ptr %add.ptr, ptr %end, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end70, %sw.bb52
  %39 = load ptr, ptr %end, align 8
  %40 = load ptr, ptr %ptr.addr, align 8
  %41 = load ptr, ptr %40, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %39 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %41 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp54 = icmp sgt i64 %sub.ptr.sub, 0
  br i1 %cmp54, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %42 = load ptr, ptr %ptr.addr, align 8
  %43 = load ptr, ptr %end, align 8
  %44 = load ptr, ptr %ptr.addr, align 8
  %45 = load ptr, ptr %44, align 8
  %sub.ptr.lhs.cast56 = ptrtoint ptr %43 to i64
  %sub.ptr.rhs.cast57 = ptrtoint ptr %45 to i64
  %sub.ptr.sub58 = sub i64 %sub.ptr.lhs.cast56, %sub.ptr.rhs.cast57
  %call59 = call ptr @id3_parse_latin1(ptr noundef %42, i64 noundef %sub.ptr.sub58, i32 noundef 0)
  store ptr %call59, ptr %latin153, align 8
  %46 = load ptr, ptr %latin153, align 8
  %cmp60 = icmp eq ptr %46, null
  br i1 %cmp60, label %if.then62, label %if.end63

if.then62:                                        ; preds = %while.body
  br label %fail

if.end63:                                         ; preds = %while.body
  %47 = load ptr, ptr %field.addr, align 8
  %strings64 = getelementptr inbounds %struct.anon.1, ptr %47, i32 0, i32 2
  %48 = load ptr, ptr %strings64, align 8
  %49 = load ptr, ptr %field.addr, align 8
  %nstrings = getelementptr inbounds %struct.anon.1, ptr %49, i32 0, i32 1
  %50 = load i32, ptr %nstrings, align 4
  %add = add i32 %50, 1
  %conv65 = zext i32 %add to i64
  %mul = mul i64 %conv65, 8
  %call66 = call ptr @realloc(ptr noundef %48, i64 noundef %mul) #8
  store ptr %call66, ptr %strings, align 8
  %51 = load ptr, ptr %strings, align 8
  %cmp67 = icmp eq ptr %51, null
  br i1 %cmp67, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.end63
  %52 = load ptr, ptr %latin153, align 8
  call void @free(ptr noundef %52)
  br label %fail

if.end70:                                         ; preds = %if.end63
  %53 = load ptr, ptr %strings, align 8
  %54 = load ptr, ptr %field.addr, align 8
  %strings71 = getelementptr inbounds %struct.anon.1, ptr %54, i32 0, i32 2
  store ptr %53, ptr %strings71, align 8
  %55 = load ptr, ptr %latin153, align 8
  %56 = load ptr, ptr %field.addr, align 8
  %strings72 = getelementptr inbounds %struct.anon.1, ptr %56, i32 0, i32 2
  %57 = load ptr, ptr %strings72, align 8
  %58 = load ptr, ptr %field.addr, align 8
  %nstrings73 = getelementptr inbounds %struct.anon.1, ptr %58, i32 0, i32 1
  %59 = load i32, ptr %nstrings73, align 4
  %inc = add i32 %59, 1
  store i32 %inc, ptr %nstrings73, align 4
  %idxprom = zext i32 %59 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %57, i64 %idxprom
  store ptr %55, ptr %arrayidx, align 8
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  br label %sw.epilog

sw.bb74:                                          ; preds = %entry, %entry
  %60 = load ptr, ptr %ptr.addr, align 8
  %61 = load i64, ptr %length.addr, align 8
  %62 = load ptr, ptr %encoding.addr, align 8
  %63 = load i32, ptr %62, align 4
  %64 = load ptr, ptr %field.addr, align 8
  %65 = load i32, ptr %64, align 8
  %cmp75 = icmp eq i32 %65, 5
  %conv76 = zext i1 %cmp75 to i32
  %call77 = call ptr @id3_parse_string(ptr noundef %60, i64 noundef %61, i32 noundef %63, i32 noundef %conv76)
  store ptr %call77, ptr %ucs4, align 8
  %66 = load ptr, ptr %ucs4, align 8
  %cmp78 = icmp eq ptr %66, null
  br i1 %cmp78, label %if.then80, label %if.end81

if.then80:                                        ; preds = %sw.bb74
  br label %fail

if.end81:                                         ; preds = %sw.bb74
  %67 = load ptr, ptr %ucs4, align 8
  %68 = load ptr, ptr %field.addr, align 8
  %ptr82 = getelementptr inbounds %struct.anon.2, ptr %68, i32 0, i32 1
  store ptr %67, ptr %ptr82, align 8
  br label %sw.epilog

sw.bb83:                                          ; preds = %entry
  %69 = load ptr, ptr %ptr.addr, align 8
  %70 = load ptr, ptr %69, align 8
  %71 = load i64, ptr %length.addr, align 8
  %add.ptr87 = getelementptr inbounds i8, ptr %70, i64 %71
  store ptr %add.ptr87, ptr %end84, align 8
  br label %while.cond88

while.cond88:                                     ; preds = %if.end112, %sw.bb83
  %72 = load ptr, ptr %end84, align 8
  %73 = load ptr, ptr %ptr.addr, align 8
  %74 = load ptr, ptr %73, align 8
  %sub.ptr.lhs.cast89 = ptrtoint ptr %72 to i64
  %sub.ptr.rhs.cast90 = ptrtoint ptr %74 to i64
  %sub.ptr.sub91 = sub i64 %sub.ptr.lhs.cast89, %sub.ptr.rhs.cast90
  %cmp92 = icmp sgt i64 %sub.ptr.sub91, 0
  br i1 %cmp92, label %while.body94, label %while.end119

while.body94:                                     ; preds = %while.cond88
  %75 = load ptr, ptr %ptr.addr, align 8
  %76 = load ptr, ptr %end84, align 8
  %77 = load ptr, ptr %ptr.addr, align 8
  %78 = load ptr, ptr %77, align 8
  %sub.ptr.lhs.cast95 = ptrtoint ptr %76 to i64
  %sub.ptr.rhs.cast96 = ptrtoint ptr %78 to i64
  %sub.ptr.sub97 = sub i64 %sub.ptr.lhs.cast95, %sub.ptr.rhs.cast96
  %79 = load ptr, ptr %encoding.addr, align 8
  %80 = load i32, ptr %79, align 4
  %call98 = call ptr @id3_parse_string(ptr noundef %75, i64 noundef %sub.ptr.sub97, i32 noundef %80, i32 noundef 0)
  store ptr %call98, ptr %ucs485, align 8
  %81 = load ptr, ptr %ucs485, align 8
  %cmp99 = icmp eq ptr %81, null
  br i1 %cmp99, label %if.then101, label %if.end102

if.then101:                                       ; preds = %while.body94
  br label %fail

if.end102:                                        ; preds = %while.body94
  %82 = load ptr, ptr %field.addr, align 8
  %strings103 = getelementptr inbounds %struct.anon.3, ptr %82, i32 0, i32 2
  %83 = load ptr, ptr %strings103, align 8
  %84 = load ptr, ptr %field.addr, align 8
  %nstrings104 = getelementptr inbounds %struct.anon.3, ptr %84, i32 0, i32 1
  %85 = load i32, ptr %nstrings104, align 4
  %add105 = add i32 %85, 1
  %conv106 = zext i32 %add105 to i64
  %mul107 = mul i64 %conv106, 8
  %call108 = call ptr @realloc(ptr noundef %83, i64 noundef %mul107) #8
  store ptr %call108, ptr %strings86, align 8
  %86 = load ptr, ptr %strings86, align 8
  %cmp109 = icmp eq ptr %86, null
  br i1 %cmp109, label %if.then111, label %if.end112

if.then111:                                       ; preds = %if.end102
  %87 = load ptr, ptr %ucs485, align 8
  call void @free(ptr noundef %87)
  br label %fail

if.end112:                                        ; preds = %if.end102
  %88 = load ptr, ptr %strings86, align 8
  %89 = load ptr, ptr %field.addr, align 8
  %strings113 = getelementptr inbounds %struct.anon.3, ptr %89, i32 0, i32 2
  store ptr %88, ptr %strings113, align 8
  %90 = load ptr, ptr %ucs485, align 8
  %91 = load ptr, ptr %field.addr, align 8
  %strings114 = getelementptr inbounds %struct.anon.3, ptr %91, i32 0, i32 2
  %92 = load ptr, ptr %strings114, align 8
  %93 = load ptr, ptr %field.addr, align 8
  %nstrings115 = getelementptr inbounds %struct.anon.3, ptr %93, i32 0, i32 1
  %94 = load i32, ptr %nstrings115, align 4
  %inc116 = add i32 %94, 1
  store i32 %inc116, ptr %nstrings115, align 4
  %idxprom117 = zext i32 %94 to i64
  %arrayidx118 = getelementptr inbounds ptr, ptr %92, i64 %idxprom117
  store ptr %90, ptr %arrayidx118, align 8
  br label %while.cond88, !llvm.loop !10

while.end119:                                     ; preds = %while.cond88
  br label %sw.epilog

sw.bb120:                                         ; preds = %entry, %entry
  %95 = load ptr, ptr %ptr.addr, align 8
  %96 = load i64, ptr %length.addr, align 8
  %call121 = call ptr @id3_parse_binary(ptr noundef %95, i64 noundef %96)
  store ptr %call121, ptr %data, align 8
  %97 = load ptr, ptr %data, align 8
  %cmp122 = icmp eq ptr %97, null
  br i1 %cmp122, label %if.then124, label %if.end125

if.then124:                                       ; preds = %sw.bb120
  br label %fail

if.end125:                                        ; preds = %sw.bb120
  %98 = load ptr, ptr %data, align 8
  %99 = load ptr, ptr %field.addr, align 8
  %data126 = getelementptr inbounds %struct.anon.5, ptr %99, i32 0, i32 1
  store ptr %98, ptr %data126, align 8
  %100 = load i64, ptr %length.addr, align 8
  %101 = load ptr, ptr %field.addr, align 8
  %length127 = getelementptr inbounds %struct.anon.5, ptr %101, i32 0, i32 2
  store i64 %100, ptr %length127, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end125, %while.end119, %if.end81, %while.end, %if.end50, %if.end40, %if.end33, %if.end27, %if.end22, %if.end10, %if.end4, %if.end
  store i32 0, ptr %retval, align 4
  br label %return

fail:                                             ; preds = %if.then124, %if.then111, %if.then101, %if.then80, %if.then69, %if.then62, %if.then49, %if.then39, %if.then32, %if.then26, %if.then15, %if.then9, %if.then3, %if.then
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %fail, %sw.epilog
  %102 = load i32, ptr %retval, align 4
  ret i32 %102
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
  %0 = load ptr, ptr %field.addr, align 8
  %1 = load i32, ptr %0, align 8
  switch i32 %1, label %sw.epilog [
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
  %2 = load ptr, ptr %ptr.addr, align 8
  %3 = load ptr, ptr %field.addr, align 8
  %value = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 1
  %4 = load i64, ptr %value, align 8
  %call = call i64 @id3_render_int(ptr noundef %2, i64 noundef %4, i32 noundef 4)
  store i64 %call, ptr %retval, align 8
  br label %return

sw.bb1:                                           ; preds = %entry
  %5 = load ptr, ptr %ptr.addr, align 8
  %6 = load ptr, ptr %field.addr, align 8
  %value2 = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 1
  %7 = load i64, ptr %value2, align 8
  %call3 = call i64 @id3_render_int(ptr noundef %5, i64 noundef %7, i32 noundef 3)
  store i64 %call3, ptr %retval, align 8
  br label %return

sw.bb4:                                           ; preds = %entry
  %8 = load ptr, ptr %ptr.addr, align 8
  %9 = load ptr, ptr %field.addr, align 8
  %value5 = getelementptr inbounds %struct.anon, ptr %9, i32 0, i32 1
  %10 = load i64, ptr %value5, align 8
  %call6 = call i64 @id3_render_int(ptr noundef %8, i64 noundef %10, i32 noundef 2)
  store i64 %call6, ptr %retval, align 8
  br label %return

sw.bb7:                                           ; preds = %entry
  %11 = load ptr, ptr %field.addr, align 8
  %value8 = getelementptr inbounds %struct.anon, ptr %11, i32 0, i32 1
  %12 = load i64, ptr %value8, align 8
  %conv = trunc i64 %12 to i32
  %13 = load ptr, ptr %encoding.addr, align 8
  store i32 %conv, ptr %13, align 4
  br label %sw.bb9

sw.bb9:                                           ; preds = %entry, %sw.bb7
  %14 = load ptr, ptr %ptr.addr, align 8
  %15 = load ptr, ptr %field.addr, align 8
  %value10 = getelementptr inbounds %struct.anon, ptr %15, i32 0, i32 1
  %16 = load i64, ptr %value10, align 8
  %call11 = call i64 @id3_render_int(ptr noundef %14, i64 noundef %16, i32 noundef 1)
  store i64 %call11, ptr %retval, align 8
  br label %return

sw.bb12:                                          ; preds = %entry, %entry
  %17 = load ptr, ptr %ptr.addr, align 8
  %18 = load ptr, ptr %field.addr, align 8
  %ptr13 = getelementptr inbounds %struct.anon.0, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %ptr13, align 8
  %20 = load i32, ptr %terminate.addr, align 4
  %call14 = call i64 @id3_render_latin1(ptr noundef %17, ptr noundef %19, i32 noundef %20)
  store i64 %call14, ptr %retval, align 8
  br label %return

sw.bb15:                                          ; preds = %entry
  store i64 0, ptr %size, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb15
  %21 = load i32, ptr %i, align 4
  %22 = load ptr, ptr %field.addr, align 8
  %nstrings = getelementptr inbounds %struct.anon.1, ptr %22, i32 0, i32 1
  %23 = load i32, ptr %nstrings, align 4
  %cmp = icmp ult i32 %21, %23
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load ptr, ptr %ptr.addr, align 8
  %25 = load ptr, ptr %field.addr, align 8
  %strings = getelementptr inbounds %struct.anon.1, ptr %25, i32 0, i32 2
  %26 = load ptr, ptr %strings, align 8
  %27 = load i32, ptr %i, align 4
  %idxprom = zext i32 %27 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %26, i64 %idxprom
  %28 = load ptr, ptr %arrayidx, align 8
  %29 = load i32, ptr %i, align 4
  %30 = load ptr, ptr %field.addr, align 8
  %nstrings17 = getelementptr inbounds %struct.anon.1, ptr %30, i32 0, i32 1
  %31 = load i32, ptr %nstrings17, align 4
  %sub = sub i32 %31, 1
  %cmp18 = icmp ult i32 %29, %sub
  br i1 %cmp18, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.body
  %32 = load i32, ptr %terminate.addr, align 4
  %tobool = icmp ne i32 %32, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.body
  %33 = phi i1 [ true, %for.body ], [ %tobool, %lor.rhs ]
  %lor.ext = zext i1 %33 to i32
  %call20 = call i64 @id3_render_latin1(ptr noundef %24, ptr noundef %28, i32 noundef %lor.ext)
  %34 = load i64, ptr %size, align 8
  %add = add i64 %34, %call20
  store i64 %add, ptr %size, align 8
  br label %for.inc

for.inc:                                          ; preds = %lor.end
  %35 = load i32, ptr %i, align 4
  %inc = add i32 %35, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %36 = load i64, ptr %size, align 8
  store i64 %36, ptr %retval, align 8
  br label %return

sw.bb21:                                          ; preds = %entry, %entry
  %37 = load ptr, ptr %ptr.addr, align 8
  %38 = load ptr, ptr %field.addr, align 8
  %ptr22 = getelementptr inbounds %struct.anon.2, ptr %38, i32 0, i32 1
  %39 = load ptr, ptr %ptr22, align 8
  %40 = load ptr, ptr %encoding.addr, align 8
  %41 = load i32, ptr %40, align 4
  %42 = load i32, ptr %terminate.addr, align 4
  %call23 = call i64 @id3_render_string(ptr noundef %37, ptr noundef %39, i32 noundef %41, i32 noundef %42)
  store i64 %call23, ptr %retval, align 8
  br label %return

sw.bb24:                                          ; preds = %entry
  store i64 0, ptr %size, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc43, %sw.bb24
  %43 = load i32, ptr %i, align 4
  %44 = load ptr, ptr %field.addr, align 8
  %nstrings26 = getelementptr inbounds %struct.anon.3, ptr %44, i32 0, i32 1
  %45 = load i32, ptr %nstrings26, align 4
  %cmp27 = icmp ult i32 %43, %45
  br i1 %cmp27, label %for.body29, label %for.end45

for.body29:                                       ; preds = %for.cond25
  %46 = load ptr, ptr %ptr.addr, align 8
  %47 = load ptr, ptr %field.addr, align 8
  %strings30 = getelementptr inbounds %struct.anon.3, ptr %47, i32 0, i32 2
  %48 = load ptr, ptr %strings30, align 8
  %49 = load i32, ptr %i, align 4
  %idxprom31 = zext i32 %49 to i64
  %arrayidx32 = getelementptr inbounds ptr, ptr %48, i64 %idxprom31
  %50 = load ptr, ptr %arrayidx32, align 8
  %51 = load ptr, ptr %encoding.addr, align 8
  %52 = load i32, ptr %51, align 4
  %53 = load i32, ptr %i, align 4
  %54 = load ptr, ptr %field.addr, align 8
  %nstrings33 = getelementptr inbounds %struct.anon.3, ptr %54, i32 0, i32 1
  %55 = load i32, ptr %nstrings33, align 4
  %sub34 = sub i32 %55, 1
  %cmp35 = icmp ult i32 %53, %sub34
  br i1 %cmp35, label %lor.end39, label %lor.rhs37

lor.rhs37:                                        ; preds = %for.body29
  %56 = load i32, ptr %terminate.addr, align 4
  %tobool38 = icmp ne i32 %56, 0
  br label %lor.end39

lor.end39:                                        ; preds = %lor.rhs37, %for.body29
  %57 = phi i1 [ true, %for.body29 ], [ %tobool38, %lor.rhs37 ]
  %lor.ext40 = zext i1 %57 to i32
  %call41 = call i64 @id3_render_string(ptr noundef %46, ptr noundef %50, i32 noundef %52, i32 noundef %lor.ext40)
  %58 = load i64, ptr %size, align 8
  %add42 = add i64 %58, %call41
  store i64 %add42, ptr %size, align 8
  br label %for.inc43

for.inc43:                                        ; preds = %lor.end39
  %59 = load i32, ptr %i, align 4
  %inc44 = add i32 %59, 1
  store i32 %inc44, ptr %i, align 4
  br label %for.cond25, !llvm.loop !12

for.end45:                                        ; preds = %for.cond25
  %60 = load i64, ptr %size, align 8
  store i64 %60, ptr %retval, align 8
  br label %return

sw.bb46:                                          ; preds = %entry
  %61 = load ptr, ptr %ptr.addr, align 8
  %62 = load ptr, ptr %field.addr, align 8
  %value47 = getelementptr inbounds %struct.anon.4, ptr %62, i32 0, i32 1
  %arraydecay = getelementptr inbounds [9 x i8], ptr %value47, i64 0, i64 0
  %call48 = call i64 @id3_render_immediate(ptr noundef %61, ptr noundef %arraydecay, i32 noundef 3)
  store i64 %call48, ptr %retval, align 8
  br label %return

sw.bb49:                                          ; preds = %entry
  %63 = load ptr, ptr %ptr.addr, align 8
  %64 = load ptr, ptr %field.addr, align 8
  %value50 = getelementptr inbounds %struct.anon.4, ptr %64, i32 0, i32 1
  %arraydecay51 = getelementptr inbounds [9 x i8], ptr %value50, i64 0, i64 0
  %call52 = call i64 @id3_render_immediate(ptr noundef %63, ptr noundef %arraydecay51, i32 noundef 4)
  store i64 %call52, ptr %retval, align 8
  br label %return

sw.bb53:                                          ; preds = %entry
  %65 = load ptr, ptr %ptr.addr, align 8
  %66 = load ptr, ptr %field.addr, align 8
  %value54 = getelementptr inbounds %struct.anon.4, ptr %66, i32 0, i32 1
  %arraydecay55 = getelementptr inbounds [9 x i8], ptr %value54, i64 0, i64 0
  %call56 = call i64 @id3_render_immediate(ptr noundef %65, ptr noundef %arraydecay55, i32 noundef 8)
  store i64 %call56, ptr %retval, align 8
  br label %return

sw.bb57:                                          ; preds = %entry, %entry
  %67 = load ptr, ptr %ptr.addr, align 8
  %68 = load ptr, ptr %field.addr, align 8
  %data = getelementptr inbounds %struct.anon.5, ptr %68, i32 0, i32 1
  %69 = load ptr, ptr %data, align 8
  %70 = load ptr, ptr %field.addr, align 8
  %length = getelementptr inbounds %struct.anon.5, ptr %70, i32 0, i32 2
  %71 = load i64, ptr %length, align 8
  %call58 = call i64 @id3_render_binary(ptr noundef %67, ptr noundef %69, i64 noundef %71)
  store i64 %call58, ptr %retval, align 8
  br label %return

sw.epilog:                                        ; preds = %entry
  store i64 0, ptr %retval, align 8
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb57, %sw.bb53, %sw.bb49, %sw.bb46, %for.end45, %sw.bb21, %for.end, %sw.bb12, %sw.bb9, %sw.bb4, %sw.bb1, %sw.bb
  %72 = load i64, ptr %retval, align 8
  ret i64 %72
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
  %0 = load ptr, ptr %field.addr, align 8
  %1 = load i32, ptr %0, align 8
  switch i32 %1, label %sw.default [
    i32 10, label %sw.bb
    i32 11, label %sw.bb2
    i32 12, label %sw.bb8
    i32 13, label %sw.bb14
  ]

sw.bb:                                            ; preds = %entry
  %2 = load i64, ptr %number.addr, align 8
  %cmp = icmp sgt i64 %2, 127
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %3 = load i64, ptr %number.addr, align 8
  %cmp1 = icmp slt i64 %3, -128
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %sw.bb
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %4 = load i64, ptr %number.addr, align 8
  %cmp3 = icmp sgt i64 %4, 32767
  br i1 %cmp3, label %if.then6, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %sw.bb2
  %5 = load i64, ptr %number.addr, align 8
  %cmp5 = icmp slt i64 %5, -32768
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %lor.lhs.false4, %sw.bb2
  store i32 -1, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %lor.lhs.false4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %6 = load i64, ptr %number.addr, align 8
  %cmp9 = icmp sgt i64 %6, 8388607
  br i1 %cmp9, label %if.then12, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %sw.bb8
  %7 = load i64, ptr %number.addr, align 8
  %cmp11 = icmp slt i64 %7, -8388608
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %lor.lhs.false10, %sw.bb8
  store i32 -1, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %lor.lhs.false10
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  %8 = load i64, ptr %number.addr, align 8
  %cmp15 = icmp sgt i64 %8, 2147483647
  br i1 %cmp15, label %if.then18, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %sw.bb14
  %9 = load i64, ptr %number.addr, align 8
  %cmp17 = icmp slt i64 %9, -2147483648
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %lor.lhs.false16, %sw.bb14
  store i32 -1, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %lor.lhs.false16
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %if.end19, %if.end13, %if.end7, %if.end
  %10 = load i64, ptr %number.addr, align 8
  %11 = load ptr, ptr %field.addr, align 8
  %value = getelementptr inbounds %struct.anon, ptr %11, i32 0, i32 1
  store i64 %10, ptr %value, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %if.then18, %if.then12, %if.then6, %if.then
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

; Function Attrs: nounwind ssp uwtable
define i32 @id3_field_settextencoding(ptr noundef %field, i32 noundef %encoding) #0 {
entry:
  %retval = alloca i32, align 4
  %field.addr = alloca ptr, align 8
  %encoding.addr = alloca i32, align 4
  store ptr %field, ptr %field.addr, align 8
  store i32 %encoding, ptr %encoding.addr, align 4
  %0 = load ptr, ptr %field.addr, align 8
  %1 = load i32, ptr %0, align 8
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %field.addr, align 8
  call void @id3_field_finish(ptr noundef %2)
  %3 = load i32, ptr %encoding.addr, align 4
  %conv = zext i32 %3 to i64
  %4 = load ptr, ptr %field.addr, align 8
  %value = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 1
  store i64 %conv, ptr %value, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
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
  %0 = load ptr, ptr %field.addr, align 8
  %1 = load i32, ptr %0, align 8
  %cmp = icmp ne i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %field.addr, align 8
  call void @id3_field_finish(ptr noundef %2)
  %3 = load ptr, ptr %latin1.addr, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.then1, label %if.end7

if.then1:                                         ; preds = %if.end
  %4 = load ptr, ptr %latin1.addr, align 8
  store ptr %4, ptr %ptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then1
  %5 = load ptr, ptr %ptr, align 8
  %6 = load i8, ptr %5, align 1
  %tobool2 = icmp ne i8 %6, 0
  br i1 %tobool2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %ptr, align 8
  %8 = load i8, ptr %7, align 1
  %conv = zext i8 %8 to i32
  %cmp3 = icmp eq i32 %conv, 10
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %for.body
  store i32 -1, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end6
  %9 = load ptr, ptr %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %ptr, align 8
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  br label %if.end7

if.end7:                                          ; preds = %for.end, %if.end
  %10 = load ptr, ptr %field.addr, align 8
  %11 = load ptr, ptr %latin1.addr, align 8
  %call = call i32 @set_latin1(ptr noundef %10, ptr noundef %11)
  store i32 %call, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then5, %if.then
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @set_latin1(ptr noundef %field, ptr noundef %latin1) #0 {
entry:
  %retval = alloca i32, align 4
  %field.addr = alloca ptr, align 8
  %latin1.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  store ptr %field, ptr %field.addr, align 8
  store ptr %latin1, ptr %latin1.addr, align 8
  %0 = load ptr, ptr %latin1.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %latin1.addr, align 8
  %2 = load i8, ptr %1, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %data, align 8
  br label %if.end6

if.else:                                          ; preds = %lor.lhs.false
  %3 = load ptr, ptr %latin1.addr, align 8
  %call = call ptr @id3_latin1_duplicate(ptr noundef %3)
  store ptr %call, ptr %data, align 8
  %4 = load ptr, ptr %data, align 8
  %cmp3 = icmp eq ptr %4, null
  br i1 %cmp3, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.else
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  %5 = load ptr, ptr %data, align 8
  %6 = load ptr, ptr %field.addr, align 8
  %ptr = getelementptr inbounds %struct.anon.0, ptr %6, i32 0, i32 1
  store ptr %5, ptr %ptr, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then5
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind ssp uwtable
define i32 @id3_field_setfulllatin1(ptr noundef %field, ptr noundef %latin1) #0 {
entry:
  %retval = alloca i32, align 4
  %field.addr = alloca ptr, align 8
  %latin1.addr = alloca ptr, align 8
  store ptr %field, ptr %field.addr, align 8
  store ptr %latin1, ptr %latin1.addr, align 8
  %0 = load ptr, ptr %field.addr, align 8
  %1 = load i32, ptr %0, align 8
  %cmp = icmp ne i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %field.addr, align 8
  call void @id3_field_finish(ptr noundef %2)
  %3 = load ptr, ptr %field.addr, align 8
  %4 = load ptr, ptr %latin1.addr, align 8
  %call = call i32 @set_latin1(ptr noundef %3, ptr noundef %4)
  store i32 %call, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
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
  %0 = load ptr, ptr %field.addr, align 8
  %1 = load i32, ptr %0, align 8
  %cmp = icmp ne i32 %1, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %field.addr, align 8
  call void @id3_field_finish(ptr noundef %2)
  %3 = load ptr, ptr %string.addr, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.then1, label %if.end6

if.then1:                                         ; preds = %if.end
  %4 = load ptr, ptr %string.addr, align 8
  store ptr %4, ptr %ptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then1
  %5 = load ptr, ptr %ptr, align 8
  %6 = load i64, ptr %5, align 8
  %tobool2 = icmp ne i64 %6, 0
  br i1 %tobool2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %ptr, align 8
  %8 = load i64, ptr %7, align 8
  %cmp3 = icmp eq i64 %8, 10
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %for.body
  store i32 -1, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end5
  %9 = load ptr, ptr %ptr, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %ptr, align 8
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  br label %if.end6

if.end6:                                          ; preds = %for.end, %if.end
  %10 = load ptr, ptr %field.addr, align 8
  %11 = load ptr, ptr %string.addr, align 8
  %call = call i32 @set_string(ptr noundef %10, ptr noundef %11)
  store i32 %call, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then4, %if.then
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @set_string(ptr noundef %field, ptr noundef %string) #0 {
entry:
  %retval = alloca i32, align 4
  %field.addr = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  store ptr %field, ptr %field.addr, align 8
  store ptr %string, ptr %string.addr, align 8
  %0 = load ptr, ptr %string.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %string.addr, align 8
  %2 = load i64, ptr %1, align 8
  %cmp1 = icmp eq i64 %2, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %data, align 8
  br label %if.end4

if.else:                                          ; preds = %lor.lhs.false
  %3 = load ptr, ptr %string.addr, align 8
  %call = call ptr @id3_ucs4_duplicate(ptr noundef %3)
  store ptr %call, ptr %data, align 8
  %4 = load ptr, ptr %data, align 8
  %cmp2 = icmp eq ptr %4, null
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.else
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  %5 = load ptr, ptr %data, align 8
  %6 = load ptr, ptr %field.addr, align 8
  %ptr = getelementptr inbounds %struct.anon.2, ptr %6, i32 0, i32 1
  store ptr %5, ptr %ptr, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind ssp uwtable
define i32 @id3_field_setfullstring(ptr noundef %field, ptr noundef %string) #0 {
entry:
  %retval = alloca i32, align 4
  %field.addr = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  store ptr %field, ptr %field.addr, align 8
  store ptr %string, ptr %string.addr, align 8
  %0 = load ptr, ptr %field.addr, align 8
  %1 = load i32, ptr %0, align 8
  %cmp = icmp ne i32 %1, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %field.addr, align 8
  call void @id3_field_finish(ptr noundef %2)
  %3 = load ptr, ptr %field.addr, align 8
  %4 = load ptr, ptr %string.addr, align 8
  %call = call i32 @set_string(ptr noundef %3, ptr noundef %4)
  store i32 %call, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
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
  %0 = load ptr, ptr %field.addr, align 8
  %1 = load i32, ptr %0, align 8
  %cmp = icmp ne i32 %1, 6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %field.addr, align 8
  call void @id3_field_finish(ptr noundef %2)
  %3 = load i32, ptr %length.addr, align 4
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %4 = load i32, ptr %length.addr, align 4
  %conv = zext i32 %4 to i64
  %mul = mul i64 %conv, 8
  %call = call ptr @malloc(i64 noundef %mul) #9
  store ptr %call, ptr %strings, align 8
  %5 = load ptr, ptr %strings, align 8
  %cmp4 = icmp eq ptr %5, null
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  store i32 -1, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end3
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %6 = load i32, ptr %i, align 4
  %7 = load i32, ptr %length.addr, align 4
  %cmp8 = icmp ult i32 %6, %7
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %ptrs.addr, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom = zext i32 %9 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 %idxprom
  %10 = load ptr, ptr %arrayidx, align 8
  %call10 = call ptr @id3_ucs4_duplicate(ptr noundef %10)
  %11 = load ptr, ptr %strings, align 8
  %12 = load i32, ptr %i, align 4
  %idxprom11 = zext i32 %12 to i64
  %arrayidx12 = getelementptr inbounds ptr, ptr %11, i64 %idxprom11
  store ptr %call10, ptr %arrayidx12, align 8
  %13 = load ptr, ptr %strings, align 8
  %14 = load i32, ptr %i, align 4
  %idxprom13 = zext i32 %14 to i64
  %arrayidx14 = getelementptr inbounds ptr, ptr %13, i64 %idxprom13
  %15 = load ptr, ptr %arrayidx14, align 8
  %cmp15 = icmp eq ptr %15, null
  br i1 %cmp15, label %if.then17, label %if.end20

if.then17:                                        ; preds = %for.body
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then17
  %16 = load i32, ptr %i, align 4
  %dec = add i32 %16, -1
  store i32 %dec, ptr %i, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load ptr, ptr %strings, align 8
  %18 = load i32, ptr %i, align 4
  %idxprom18 = zext i32 %18 to i64
  %arrayidx19 = getelementptr inbounds ptr, ptr %17, i64 %idxprom18
  %19 = load ptr, ptr %arrayidx19, align 8
  call void @free(ptr noundef %19)
  br label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %while.cond
  %20 = load ptr, ptr %strings, align 8
  call void @free(ptr noundef %20)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end20:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end20
  %21 = load i32, ptr %i, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  %22 = load ptr, ptr %strings, align 8
  %23 = load ptr, ptr %field.addr, align 8
  %strings21 = getelementptr inbounds %struct.anon.3, ptr %23, i32 0, i32 2
  store ptr %22, ptr %strings21, align 8
  %24 = load i32, ptr %length.addr, align 4
  %25 = load ptr, ptr %field.addr, align 8
  %nstrings = getelementptr inbounds %struct.anon.3, ptr %25, i32 0, i32 1
  store i32 %24, ptr %nstrings, align 4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %while.end, %if.then6, %if.then2, %if.then
  %26 = load i32, ptr %retval, align 4
  ret i32 %26
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
  %0 = load ptr, ptr %field.addr, align 8
  %1 = load i32, ptr %0, align 8
  %cmp = icmp ne i32 %1, 6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %string.addr, align 8
  %call = call ptr @id3_ucs4_duplicate(ptr noundef %2)
  store ptr %call, ptr %new, align 8
  %3 = load ptr, ptr %new, align 8
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %field.addr, align 8
  %strings4 = getelementptr inbounds %struct.anon.3, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %strings4, align 8
  %6 = load ptr, ptr %field.addr, align 8
  %nstrings = getelementptr inbounds %struct.anon.3, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %nstrings, align 4
  %add = add i32 %7, 1
  %conv = zext i32 %add to i64
  %mul = mul i64 %conv, 8
  %call5 = call ptr @realloc(ptr noundef %5, i64 noundef %mul) #8
  store ptr %call5, ptr %strings, align 8
  %8 = load ptr, ptr %strings, align 8
  %cmp6 = icmp eq ptr %8, null
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end3
  %9 = load ptr, ptr %new, align 8
  call void @free(ptr noundef %9)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end3
  %10 = load ptr, ptr %strings, align 8
  %11 = load ptr, ptr %field.addr, align 8
  %strings10 = getelementptr inbounds %struct.anon.3, ptr %11, i32 0, i32 2
  store ptr %10, ptr %strings10, align 8
  %12 = load ptr, ptr %new, align 8
  %13 = load ptr, ptr %field.addr, align 8
  %strings11 = getelementptr inbounds %struct.anon.3, ptr %13, i32 0, i32 2
  %14 = load ptr, ptr %strings11, align 8
  %15 = load ptr, ptr %field.addr, align 8
  %nstrings12 = getelementptr inbounds %struct.anon.3, ptr %15, i32 0, i32 1
  %16 = load i32, ptr %nstrings12, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %nstrings12, align 4
  %idxprom = zext i32 %16 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %14, i64 %idxprom
  store ptr %12, ptr %arrayidx, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.then8, %if.then2, %if.then
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
}

; Function Attrs: nounwind ssp uwtable
define i32 @id3_field_setlanguage(ptr noundef %field, ptr noundef %language) #0 {
entry:
  %retval = alloca i32, align 4
  %field.addr = alloca ptr, align 8
  %language.addr = alloca ptr, align 8
  store ptr %field, ptr %field.addr, align 8
  store ptr %language, ptr %language.addr, align 8
  %0 = load ptr, ptr %field.addr, align 8
  %1 = load i32, ptr %0, align 8
  %cmp = icmp ne i32 %1, 7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %field.addr, align 8
  call void @id3_field_finish(ptr noundef %2)
  %3 = load ptr, ptr %language.addr, align 8
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load ptr, ptr %language.addr, align 8
  %call = call i64 @strlen(ptr noundef %4)
  %cmp2 = icmp ne i64 %call, 3
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %lor.lhs.false
  %5 = load ptr, ptr %field.addr, align 8
  %value = getelementptr inbounds %struct.anon.4, ptr %5, i32 0, i32 1
  %arraydecay = getelementptr inbounds [9 x i8], ptr %value, i64 0, i64 0
  %6 = load ptr, ptr %language.addr, align 8
  %7 = load ptr, ptr %field.addr, align 8
  %value5 = getelementptr inbounds %struct.anon.4, ptr %7, i32 0, i32 1
  %arraydecay6 = getelementptr inbounds [9 x i8], ptr %value5, i64 0, i64 0
  %8 = call i64 @llvm.objectsize.i64.p0(ptr %arraydecay6, i1 false, i1 true, i1 false)
  %call7 = call ptr @__strcpy_chk(ptr noundef %arraydecay, ptr noundef %6, i64 noundef %8) #7
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

declare i64 @strlen(ptr noundef) #3

; Function Attrs: nounwind ssp uwtable
define i32 @id3_field_setframeid(ptr noundef %field, ptr noundef %id) #0 {
entry:
  %retval = alloca i32, align 4
  %field.addr = alloca ptr, align 8
  %id.addr = alloca ptr, align 8
  store ptr %field, ptr %field.addr, align 8
  store ptr %id, ptr %id.addr, align 8
  %0 = load ptr, ptr %field.addr, align 8
  %1 = load i32, ptr %0, align 8
  %cmp = icmp ne i32 %1, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %field.addr, align 8
  call void @id3_field_finish(ptr noundef %2)
  %3 = load ptr, ptr %id.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 0
  %4 = load i8, ptr %arrayidx, align 1
  %5 = load ptr, ptr %field.addr, align 8
  %value = getelementptr inbounds %struct.anon.4, ptr %5, i32 0, i32 1
  %arrayidx1 = getelementptr inbounds [9 x i8], ptr %value, i64 0, i64 0
  store i8 %4, ptr %arrayidx1, align 4
  %6 = load ptr, ptr %id.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %6, i64 1
  %7 = load i8, ptr %arrayidx2, align 1
  %8 = load ptr, ptr %field.addr, align 8
  %value3 = getelementptr inbounds %struct.anon.4, ptr %8, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [9 x i8], ptr %value3, i64 0, i64 1
  store i8 %7, ptr %arrayidx4, align 1
  %9 = load ptr, ptr %id.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %9, i64 2
  %10 = load i8, ptr %arrayidx5, align 1
  %11 = load ptr, ptr %field.addr, align 8
  %value6 = getelementptr inbounds %struct.anon.4, ptr %11, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [9 x i8], ptr %value6, i64 0, i64 2
  store i8 %10, ptr %arrayidx7, align 2
  %12 = load ptr, ptr %id.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %12, i64 3
  %13 = load i8, ptr %arrayidx8, align 1
  %14 = load ptr, ptr %field.addr, align 8
  %value9 = getelementptr inbounds %struct.anon.4, ptr %14, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [9 x i8], ptr %value9, i64 0, i64 3
  store i8 %13, ptr %arrayidx10, align 1
  %15 = load ptr, ptr %field.addr, align 8
  %value11 = getelementptr inbounds %struct.anon.4, ptr %15, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [9 x i8], ptr %value11, i64 0, i64 4
  store i8 0, ptr %arrayidx12, align 4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
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
  %0 = load ptr, ptr %field.addr, align 8
  %1 = load i32, ptr %0, align 8
  %cmp = icmp ne i32 %1, 15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %field.addr, align 8
  call void @id3_field_finish(ptr noundef %2)
  %3 = load i64, ptr %length.addr, align 8
  %cmp1 = icmp eq i64 %3, 0
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  store ptr null, ptr %mem, align 8
  br label %if.end7

if.else:                                          ; preds = %if.end
  %4 = load i64, ptr %length.addr, align 8
  %call = call ptr @malloc(i64 noundef %4) #9
  store ptr %call, ptr %mem, align 8
  %5 = load ptr, ptr %mem, align 8
  %cmp3 = icmp eq ptr %5, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.else
  store i32 -1, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.else
  %6 = load ptr, ptr %mem, align 8
  %7 = load ptr, ptr %data.addr, align 8
  %8 = load i64, ptr %length.addr, align 8
  %9 = load ptr, ptr %mem, align 8
  %10 = call i64 @llvm.objectsize.i64.p0(ptr %9, i1 false, i1 true, i1 false)
  %call6 = call ptr @__memcpy_chk(ptr noundef %6, ptr noundef %7, i64 noundef %8, i64 noundef %10) #7
  br label %if.end7

if.end7:                                          ; preds = %if.end5, %if.then2
  %11 = load ptr, ptr %mem, align 8
  %12 = load ptr, ptr %field.addr, align 8
  %data8 = getelementptr inbounds %struct.anon.5, ptr %12, i32 0, i32 1
  store ptr %11, ptr %data8, align 8
  %13 = load i64, ptr %length.addr, align 8
  %14 = load ptr, ptr %field.addr, align 8
  %length9 = getelementptr inbounds %struct.anon.5, ptr %14, i32 0, i32 2
  store i64 %13, ptr %length9, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then4, %if.then
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define i64 @id3_field_getint(ptr noundef %field) #0 {
entry:
  %retval = alloca i64, align 8
  %field.addr = alloca ptr, align 8
  store ptr %field, ptr %field.addr, align 8
  %0 = load ptr, ptr %field.addr, align 8
  %1 = load i32, ptr %0, align 8
  %cmp = icmp ne i32 %1, 10
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %field.addr, align 8
  %3 = load i32, ptr %2, align 8
  %cmp1 = icmp ne i32 %3, 11
  br i1 %cmp1, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %4 = load ptr, ptr %field.addr, align 8
  %5 = load i32, ptr %4, align 8
  %cmp3 = icmp ne i32 %5, 12
  br i1 %cmp3, label %land.lhs.true4, label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %6 = load ptr, ptr %field.addr, align 8
  %7 = load i32, ptr %6, align 8
  %cmp5 = icmp ne i32 %7, 13
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true4
  store i64 -1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %land.lhs.true4, %land.lhs.true2, %land.lhs.true, %entry
  %8 = load ptr, ptr %field.addr, align 8
  %value = getelementptr inbounds %struct.anon, ptr %8, i32 0, i32 1
  %9 = load i64, ptr %value, align 8
  store i64 %9, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i64, ptr %retval, align 8
  ret i64 %10
}

; Function Attrs: nounwind ssp uwtable
define ptr @id3_field_getstring(ptr noundef %field) #0 {
entry:
  %retval = alloca ptr, align 8
  %field.addr = alloca ptr, align 8
  store ptr %field, ptr %field.addr, align 8
  %0 = load ptr, ptr %field.addr, align 8
  %1 = load i32, ptr %0, align 8
  %cmp = icmp ne i32 %1, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %field.addr, align 8
  %ptr = getelementptr inbounds %struct.anon.2, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %ptr, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %4 = load ptr, ptr %field.addr, align 8
  %ptr1 = getelementptr inbounds %struct.anon.2, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %ptr1, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %5, %cond.true ], [ @id3_ucs4_empty, %cond.false ]
  store ptr %cond, ptr %retval, align 8
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %6 = load ptr, ptr %retval, align 8
  ret ptr %6
}

; Function Attrs: nounwind ssp uwtable
define ptr @id3_field_getfullstring(ptr noundef %field) #0 {
entry:
  %retval = alloca ptr, align 8
  %field.addr = alloca ptr, align 8
  store ptr %field, ptr %field.addr, align 8
  %0 = load ptr, ptr %field.addr, align 8
  %1 = load i32, ptr %0, align 8
  %cmp = icmp ne i32 %1, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %field.addr, align 8
  %ptr = getelementptr inbounds %struct.anon.2, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %ptr, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %4 = load ptr, ptr %field.addr, align 8
  %ptr1 = getelementptr inbounds %struct.anon.2, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %ptr1, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %5, %cond.true ], [ @id3_ucs4_empty, %cond.false ]
  store ptr %cond, ptr %retval, align 8
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %6 = load ptr, ptr %retval, align 8
  ret ptr %6
}

; Function Attrs: nounwind ssp uwtable
define i32 @id3_field_getnstrings(ptr noundef %field) #0 {
entry:
  %retval = alloca i32, align 4
  %field.addr = alloca ptr, align 8
  store ptr %field, ptr %field.addr, align 8
  %0 = load ptr, ptr %field.addr, align 8
  %1 = load i32, ptr %0, align 8
  %cmp = icmp ne i32 %1, 6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %field.addr, align 8
  %nstrings = getelementptr inbounds %struct.anon.3, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %nstrings, align 4
  store i32 %3, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: nounwind ssp uwtable
define ptr @id3_field_getstrings(ptr noundef %field, i32 noundef %index) #0 {
entry:
  %retval = alloca ptr, align 8
  %field.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  %string = alloca ptr, align 8
  store ptr %field, ptr %field.addr, align 8
  store i32 %index, ptr %index.addr, align 4
  %0 = load ptr, ptr %field.addr, align 8
  %1 = load i32, ptr %0, align 8
  %cmp = icmp ne i32 %1, 6
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr %index.addr, align 4
  %3 = load ptr, ptr %field.addr, align 8
  %nstrings = getelementptr inbounds %struct.anon.3, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %nstrings, align 4
  %cmp1 = icmp uge i32 %2, %4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %field.addr, align 8
  %strings = getelementptr inbounds %struct.anon.3, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %strings, align 8
  %7 = load i32, ptr %index.addr, align 4
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %idxprom
  %8 = load ptr, ptr %arrayidx, align 8
  store ptr %8, ptr %string, align 8
  %9 = load ptr, ptr %string, align 8
  %cmp2 = icmp eq ptr %9, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store ptr @id3_ucs4_empty, ptr %string, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %10 = load ptr, ptr %string, align 8
  store ptr %10, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end4, %if.then
  %11 = load ptr, ptr %retval, align 8
  ret ptr %11
}

; Function Attrs: nounwind ssp uwtable
define ptr @id3_field_getframeid(ptr noundef %field) #0 {
entry:
  %retval = alloca ptr, align 8
  %field.addr = alloca ptr, align 8
  store ptr %field, ptr %field.addr, align 8
  %0 = load ptr, ptr %field.addr, align 8
  %1 = load i32, ptr %0, align 8
  %cmp = icmp ne i32 %1, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %field.addr, align 8
  %value = getelementptr inbounds %struct.anon.4, ptr %2, i32 0, i32 1
  %arraydecay = getelementptr inbounds [9 x i8], ptr %value, i64 0, i64 0
  store ptr %arraydecay, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load ptr, ptr %retval, align 8
  ret ptr %3
}

; Function Attrs: nounwind ssp uwtable
define ptr @id3_field_getbinarydata(ptr noundef %field, ptr noundef %length) #0 {
entry:
  %retval = alloca ptr, align 8
  %field.addr = alloca ptr, align 8
  %length.addr = alloca ptr, align 8
  store ptr %field, ptr %field.addr, align 8
  store ptr %length, ptr %length.addr, align 8
  %0 = load ptr, ptr %field.addr, align 8
  %1 = load i32, ptr %0, align 8
  %cmp = icmp ne i32 %1, 15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %2 = load ptr, ptr %field.addr, align 8
  %length1 = getelementptr inbounds %struct.anon.5, ptr %2, i32 0, i32 2
  %3 = load i64, ptr %length1, align 8
  %cmp2 = icmp eq i64 %3, 0
  br i1 %cmp2, label %if.end4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %4 = load ptr, ptr %field.addr, align 8
  %data = getelementptr inbounds %struct.anon.5, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %data, align 8
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %if.end4, label %if.then3

if.then3:                                         ; preds = %lor.lhs.false
  call void @abort() #10
  unreachable

if.end4:                                          ; preds = %lor.lhs.false, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end4
  %6 = load ptr, ptr %field.addr, align 8
  %length5 = getelementptr inbounds %struct.anon.5, ptr %6, i32 0, i32 2
  %7 = load i64, ptr %length5, align 8
  %8 = load ptr, ptr %length.addr, align 8
  store i64 %7, ptr %8, align 8
  %9 = load ptr, ptr %field.addr, align 8
  %data6 = getelementptr inbounds %struct.anon.5, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %data6, align 8
  %tobool7 = icmp ne ptr %10, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %11 = load ptr, ptr %field.addr, align 8
  %data8 = getelementptr inbounds %struct.anon.5, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %data8, align 8
  br label %cond.end

cond.false:                                       ; preds = %do.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %12, %cond.true ], [ @id3_field_getbinarydata.empty, %cond.false ]
  store ptr %cond, ptr %retval, align 8
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %13 = load ptr, ptr %retval, align 8
  ret ptr %13
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
attributes #8 = { allocsize(1) }
attributes #9 = { allocsize(0) }
attributes #10 = { cold noreturn }

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
