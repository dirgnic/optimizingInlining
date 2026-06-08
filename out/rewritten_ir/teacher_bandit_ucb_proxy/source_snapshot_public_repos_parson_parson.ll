; ModuleID = './out/rewritten_ir/teacher_bandit_ucb_proxy/source_snapshot_public_repos_parson_parson.prepared.ll'
source_filename = "./source_snapshot/public_repos/parson/parson.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.json_object_t = type { ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64 }
%struct.json_string = type { ptr, i64 }
%struct.json_value_t = type { ptr, i32, %union.json_value_value }
%union.json_value_value = type { %struct.json_string }
%struct.json_array_t = type { ptr, ptr, i64, i64 }

@parson_free = internal global ptr @free, align 8
@.str = private unnamed_addr constant [3 x i8] c"/*\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"*/\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@parson_malloc = internal global ptr @malloc, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@parson_escape_slashes = internal global i32 1, align 4
@parson_float_format = internal global ptr null, align 8
@parson_number_serialization_function = internal global ptr null, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"-0\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"xX\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"%1.17g\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"\\b\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"\\f\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"\\u0000\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"\\u0001\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"\\u0002\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"\\u0003\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"\\u0004\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"\\u0005\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"\\u0006\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"\\u0007\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"\\u000b\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"\\u000e\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"\\u000f\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"\\u0010\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"\\u0011\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"\\u0012\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"\\u0013\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"\\u0014\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"\\u0015\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"\\u0016\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"\\u0017\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"\\u0018\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"\\u0019\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"\\u001a\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"\\u001b\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"\\u001c\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"\\u001d\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"\\u001e\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"\\u001f\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"\\/\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: nounwind ssp uwtable
define ptr @json_parse_file(ptr noundef %filename) #0 {
entry:
  %file_contents = alloca ptr, align 8
  %call = call ptr @read_file(ptr noundef %filename)
  store ptr %call, ptr %file_contents, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %file_contents, align 8
  %call1 = call ptr @json_parse_string(ptr noundef %0)
  %1 = load ptr, ptr @parson_free, align 8
  call void %1(ptr noundef %0) #11
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi ptr [ %call1, %if.end ], [ null, %entry ]
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @read_file(ptr noundef %filename) #0 {
entry:
  %retval = alloca ptr, align 8
  %fp = alloca ptr, align 8
  %size_to_read = alloca i64, align 8
  %size_read = alloca i64, align 8
  %pos = alloca i64, align 8
  %file_contents = alloca ptr, align 8
  %call = call ptr @"\01_fopen"(ptr noundef %filename, ptr noundef nonnull @.str.5) #11
  store ptr %call, ptr %fp, align 8
  store i64 0, ptr %size_to_read, align 8
  store i64 0, ptr %size_read, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %fp, align 8
  %call1 = call i32 @fseek(ptr noundef %0, i64 noundef 0, i32 noundef 2) #11
  %call2 = call i64 @ftell(ptr noundef %0) #11
  store i64 %call2, ptr %pos, align 8
  %cmp = icmp slt i64 %call2, 0
  br i1 %cmp, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %1 = load ptr, ptr %fp, align 8
  %call4 = call i32 @fclose(ptr noundef %1) #11
  store ptr null, ptr %retval, align 8
  br label %return

if.end5:                                          ; preds = %if.end
  %2 = load i64, ptr %pos, align 8
  store i64 %2, ptr %size_to_read, align 8
  %3 = load ptr, ptr %fp, align 8
  call void @rewind(ptr noundef %3) #11
  %4 = load ptr, ptr @parson_malloc, align 8
  %add = add i64 %2, 1
  %call6 = call ptr %4(i64 noundef %add) #11
  store ptr %call6, ptr %file_contents, align 8
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  %5 = load ptr, ptr %fp, align 8
  %call9 = call i32 @fclose(ptr noundef %5) #11
  store ptr null, ptr %retval, align 8
  br label %return

if.end10:                                         ; preds = %if.end5
  %6 = load ptr, ptr %file_contents, align 8
  %7 = load i64, ptr %size_to_read, align 8
  %8 = load ptr, ptr %fp, align 8
  %call11 = call i64 @fread(ptr noundef %6, i64 noundef 1, i64 noundef %7, ptr noundef %8) #11
  store i64 %call11, ptr %size_read, align 8
  %cmp12 = icmp eq i64 %call11, 0
  br i1 %cmp12, label %if.then15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end10
  %9 = load ptr, ptr %fp, align 8
  %call13 = call i32 @ferror(ptr noundef %9) #11
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end17, label %if.then15

if.then15:                                        ; preds = %lor.lhs.false, %if.end10
  %10 = load ptr, ptr %fp, align 8
  %call16 = call i32 @fclose(ptr noundef %10) #11
  %11 = load ptr, ptr @parson_free, align 8
  %12 = load ptr, ptr %file_contents, align 8
  call void %11(ptr noundef %12) #11
  store ptr null, ptr %retval, align 8
  br label %return

if.end17:                                         ; preds = %lor.lhs.false
  %13 = load ptr, ptr %fp, align 8
  %call18 = call i32 @fclose(ptr noundef %13) #11
  %14 = load ptr, ptr %file_contents, align 8
  %15 = load i64, ptr %size_read, align 8
  %arrayidx = getelementptr inbounds i8, ptr %14, i64 %15
  store i8 0, ptr %arrayidx, align 1
  store ptr %14, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end17, %if.then15, %if.then8, %if.then3, %if.then
  %16 = load ptr, ptr %retval, align 8
  ret ptr %16
}

; Function Attrs: nounwind ssp uwtable
define ptr @json_parse_string(ptr noundef %string) #0 {
entry:
  %string.addr = alloca ptr, align 8
  store ptr %string, ptr %string.addr, align 8
  %cmp = icmp eq ptr %string, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %string.addr, align 8
  %1 = load i8, ptr %0, align 1
  %cmp1 = icmp eq i8 %1, -17
  br i1 %cmp1, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %if.end
  %2 = load ptr, ptr %string.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %2, i64 1
  %3 = load i8, ptr %arrayidx3, align 1
  %cmp5 = icmp eq i8 %3, -69
  br i1 %cmp5, label %land.lhs.true7, label %if.end13

land.lhs.true7:                                   ; preds = %land.lhs.true
  %4 = load ptr, ptr %string.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %4, i64 2
  %5 = load i8, ptr %arrayidx8, align 1
  %cmp10 = icmp eq i8 %5, -65
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %land.lhs.true7
  %6 = load ptr, ptr %string.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 3
  store ptr %add.ptr, ptr %string.addr, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %land.lhs.true7, %land.lhs.true, %if.end
  %call = call ptr @parse_value(ptr noundef nonnull %string.addr, i64 noundef 0)
  br label %return

return:                                           ; preds = %entry, %if.end13
  %storemerge = phi ptr [ %call, %if.end13 ], [ null, %entry ]
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define ptr @json_parse_file_with_comments(ptr noundef %filename) #0 {
entry:
  %file_contents = alloca ptr, align 8
  %call = call ptr @read_file(ptr noundef %filename)
  store ptr %call, ptr %file_contents, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %file_contents, align 8
  %call1 = call ptr @json_parse_string_with_comments(ptr noundef %0)
  %1 = load ptr, ptr @parson_free, align 8
  call void %1(ptr noundef %0) #11
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi ptr [ %call1, %if.end ], [ null, %entry ]
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define ptr @json_parse_string_with_comments(ptr noundef %string) #0 {
entry:
  %string_mutable_copy = alloca ptr, align 8
  %string_mutable_copy_ptr = alloca ptr, align 8
  store ptr null, ptr %string_mutable_copy, align 8
  store ptr null, ptr %string_mutable_copy_ptr, align 8
  %call = call ptr @parson_strdup(ptr noundef %string)
  store ptr %call, ptr %string_mutable_copy, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %string_mutable_copy, align 8
  call void @remove_comments(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1)
  call void @remove_comments(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3)
  store ptr %0, ptr %string_mutable_copy_ptr, align 8
  %call1 = call ptr @parse_value(ptr noundef nonnull %string_mutable_copy_ptr, i64 noundef 0)
  %1 = load ptr, ptr @parson_free, align 8
  call void %1(ptr noundef %0) #11
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi ptr [ %call1, %if.end ], [ null, %entry ]
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @parse_value(ptr noundef %string, i64 noundef %nesting) #0 {
entry:
  %retval = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  %nesting.addr = alloca i64, align 8
  store ptr %string, ptr %string.addr, align 8
  store i64 %nesting, ptr %nesting.addr, align 8
  %cmp = icmp ugt i64 %nesting, 2048
  br i1 %cmp, label %if.then, label %while.cond

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

while.cond:                                       ; preds = %entry, %while.body
  %0 = load ptr, ptr %string.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %2 = load i8, ptr %1, align 1
  %conv = zext i8 %2 to i32
  %call = call i32 @isspace(i32 noundef %conv) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %string.addr, align 8
  %4 = load ptr, ptr %3, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %incdec.ptr, ptr %3, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %5 = load ptr, ptr %string.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = load i8, ptr %6, align 1
  %conv1 = sext i8 %7 to i32
  switch i32 %conv1, label %sw.default [
    i32 123, label %sw.bb
    i32 91, label %sw.bb3
    i32 34, label %sw.bb6
    i32 102, label %sw.bb8
    i32 116, label %sw.bb8
    i32 45, label %sw.bb10
    i32 48, label %sw.bb10
    i32 49, label %sw.bb10
    i32 50, label %sw.bb10
    i32 51, label %sw.bb10
    i32 52, label %sw.bb10
    i32 53, label %sw.bb10
    i32 54, label %sw.bb10
    i32 55, label %sw.bb10
    i32 56, label %sw.bb10
    i32 57, label %sw.bb10
    i32 110, label %sw.bb12
  ]

sw.bb:                                            ; preds = %while.end
  %8 = load ptr, ptr %string.addr, align 8
  %9 = load i64, ptr %nesting.addr, align 8
  %add = add i64 %9, 1
  %call2 = call ptr @parse_object_value(ptr noundef %8, i64 noundef %add)
  store ptr %call2, ptr %retval, align 8
  br label %return

sw.bb3:                                           ; preds = %while.end
  %10 = load ptr, ptr %string.addr, align 8
  %11 = load i64, ptr %nesting.addr, align 8
  %add4 = add i64 %11, 1
  %call5 = call ptr @parse_array_value(ptr noundef %10, i64 noundef %add4)
  store ptr %call5, ptr %retval, align 8
  br label %return

sw.bb6:                                           ; preds = %while.end
  %12 = load ptr, ptr %string.addr, align 8
  %call7 = call ptr @parse_string_value(ptr noundef %12)
  store ptr %call7, ptr %retval, align 8
  br label %return

sw.bb8:                                           ; preds = %while.end, %while.end
  %13 = load ptr, ptr %string.addr, align 8
  %call9 = call ptr @parse_boolean_value(ptr noundef %13)
  store ptr %call9, ptr %retval, align 8
  br label %return

sw.bb10:                                          ; preds = %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end
  %14 = load ptr, ptr %string.addr, align 8
  %call11 = call ptr @parse_number_value(ptr noundef %14)
  store ptr %call11, ptr %retval, align 8
  br label %return

sw.bb12:                                          ; preds = %while.end
  %15 = load ptr, ptr %string.addr, align 8
  %call13 = call ptr @parse_null_value(ptr noundef %15)
  store ptr %call13, ptr %retval, align 8
  br label %return

sw.default:                                       ; preds = %while.end
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %sw.default, %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb3, %sw.bb, %if.then
  %16 = load ptr, ptr %retval, align 8
  ret ptr %16
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @parson_strdup(ptr noundef %string) #0 {
entry:
  %call = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %string) #11
  %call1 = call ptr @parson_strndup(ptr noundef %string, i64 noundef %call)
  ret ptr %call1
}

; Function Attrs: nounwind ssp uwtable
define internal void @remove_comments(ptr noundef %string, ptr noundef %start_token, ptr noundef %end_token) #0 {
entry:
  %string.addr = alloca ptr, align 8
  %start_token.addr = alloca ptr, align 8
  %end_token.addr = alloca ptr, align 8
  %in_string = alloca i32, align 4
  %escaped = alloca i32, align 4
  %i = alloca i64, align 8
  %ptr = alloca ptr, align 8
  %current_char = alloca i8, align 1
  %start_token_len = alloca i64, align 8
  %end_token_len = alloca i64, align 8
  store ptr %string, ptr %string.addr, align 8
  store ptr %start_token, ptr %start_token.addr, align 8
  store ptr %end_token, ptr %end_token.addr, align 8
  store i32 0, ptr %in_string, align 4
  store i32 0, ptr %escaped, align 4
  store ptr null, ptr %ptr, align 8
  %call = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %start_token) #11
  store i64 %call, ptr %start_token_len, align 8
  %call1 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %end_token) #11
  store i64 %call1, ptr %end_token_len, align 8
  %cmp = icmp eq i64 %call, 0
  %0 = load i64, ptr %end_token_len, align 8
  %cmp2 = icmp eq i64 %0, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp2
  br i1 %or.cond, label %while.end, label %while.cond

while.cond:                                       ; preds = %entry, %if.end41, %if.then8
  %1 = load ptr, ptr %string.addr, align 8
  %2 = load i8, ptr %1, align 1
  store i8 %2, ptr %current_char, align 1
  %cmp3.not = icmp eq i8 %2, 0
  br i1 %cmp3.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %3 = load i8, ptr %current_char, align 1
  %cmp6 = icmp eq i8 %3, 92
  %4 = load i32, ptr %escaped, align 4
  %tobool.not = icmp eq i32 %4, 0
  %or.cond2 = select i1 %cmp6, i1 %tobool.not, i1 false
  br i1 %or.cond2, label %if.then8, label %if.else

if.then8:                                         ; preds = %while.body
  store i32 1, ptr %escaped, align 4
  %5 = load ptr, ptr %string.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i64 1
  store ptr %incdec.ptr, ptr %string.addr, align 8
  br label %while.cond, !llvm.loop !8

if.else:                                          ; preds = %while.body
  %6 = load i8, ptr %current_char, align 1
  %cmp10 = icmp eq i8 %6, 34
  %7 = load i32, ptr %escaped, align 4
  %tobool13.not = icmp eq i32 %7, 0
  %or.cond3 = select i1 %cmp10, i1 %tobool13.not, i1 false
  br i1 %or.cond3, label %if.then14, label %if.else16

if.then14:                                        ; preds = %if.else
  %8 = load i32, ptr %in_string, align 4
  %tobool15.not = icmp eq i32 %8, 0
  %lnot.ext = zext i1 %tobool15.not to i32
  store i32 %lnot.ext, ptr %in_string, align 4
  br label %if.end41

if.else16:                                        ; preds = %if.else
  %9 = load i32, ptr %in_string, align 4
  %tobool17.not = icmp eq i32 %9, 0
  br i1 %tobool17.not, label %land.lhs.true18, label %if.end41

land.lhs.true18:                                  ; preds = %if.else16
  %10 = load ptr, ptr %string.addr, align 8
  %11 = load ptr, ptr %start_token.addr, align 8
  %12 = load i64, ptr %start_token_len, align 8
  %call19 = call i32 @strncmp(ptr noundef %10, ptr noundef %11, i64 noundef %12) #11
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %for.cond, label %if.end41

for.cond:                                         ; preds = %land.lhs.true18, %for.body
  %storemerge = phi i64 [ %inc, %for.body ], [ 0, %land.lhs.true18 ]
  store i64 %storemerge, ptr %i, align 8
  %13 = load i64, ptr %start_token_len, align 8
  %cmp23 = icmp ult i64 %storemerge, %13
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %string.addr, align 8
  %15 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds i8, ptr %14, i64 %15
  store i8 32, ptr %arrayidx, align 1
  %16 = load i64, ptr %i, align 8
  %inc = add i64 %16, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %17 = load ptr, ptr %string.addr, align 8
  %18 = load i64, ptr %start_token_len, align 8
  %add.ptr = getelementptr inbounds i8, ptr %17, i64 %18
  store ptr %add.ptr, ptr %string.addr, align 8
  %19 = load ptr, ptr %end_token.addr, align 8
  %call25 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %add.ptr, ptr noundef nonnull dereferenceable(1) %19) #11
  store ptr %call25, ptr %ptr, align 8
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %while.end, label %for.cond29

for.cond29:                                       ; preds = %for.end, %for.body32
  %storemerge1 = phi i64 [ %inc35, %for.body32 ], [ 0, %for.end ]
  store i64 %storemerge1, ptr %i, align 8
  %20 = load ptr, ptr %ptr, align 8
  %21 = load ptr, ptr %string.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %20 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %21 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %22 = load i64, ptr %end_token_len, align 8
  %add = add i64 %sub.ptr.sub, %22
  %cmp30 = icmp ult i64 %storemerge1, %add
  br i1 %cmp30, label %for.body32, label %for.end36

for.body32:                                       ; preds = %for.cond29
  %23 = load ptr, ptr %string.addr, align 8
  %24 = load i64, ptr %i, align 8
  %arrayidx33 = getelementptr inbounds i8, ptr %23, i64 %24
  store i8 32, ptr %arrayidx33, align 1
  %25 = load i64, ptr %i, align 8
  %inc35 = add i64 %25, 1
  br label %for.cond29, !llvm.loop !10

for.end36:                                        ; preds = %for.cond29
  %26 = load ptr, ptr %ptr, align 8
  %27 = load i64, ptr %end_token_len, align 8
  %add.ptr37 = getelementptr inbounds i8, ptr %26, i64 %27
  %add.ptr38 = getelementptr inbounds i8, ptr %add.ptr37, i64 -1
  store ptr %add.ptr38, ptr %string.addr, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.then14, %for.end36, %land.lhs.true18, %if.else16
  store i32 0, ptr %escaped, align 4
  %28 = load ptr, ptr %string.addr, align 8
  %incdec.ptr42 = getelementptr inbounds i8, ptr %28, i64 1
  store ptr %incdec.ptr42, ptr %string.addr, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %for.end, %entry, %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define ptr @json_object_get_value(ptr noundef %object, ptr noundef %name) #0 {
entry:
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  %cmp = icmp eq ptr %object, null
  %0 = load ptr, ptr %name.addr, align 8
  %cmp1 = icmp eq ptr %0, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %return, label %if.end

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %object.addr, align 8
  %2 = load ptr, ptr %name.addr, align 8
  %call = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #11
  %call2 = call ptr @json_object_getn_value(ptr noundef %1, ptr noundef %2, i64 noundef %call)
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi ptr [ %call2, %if.end ], [ null, %entry ]
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @json_object_getn_value(ptr noundef %object, ptr noundef %name, i64 noundef %name_len) #0 {
entry:
  %retval = alloca ptr, align 8
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %name_len.addr = alloca i64, align 8
  %found = alloca i32, align 4
  %cell_ix = alloca i64, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store i64 %name_len, ptr %name_len.addr, align 8
  store i32 0, ptr %found, align 4
  store i64 0, ptr %cell_ix, align 8
  %tobool.not = icmp eq ptr %object, null
  %0 = load ptr, ptr %name.addr, align 8
  %tobool1.not = icmp eq ptr %0, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %name.addr, align 8
  %2 = load i64, ptr %name_len.addr, align 8
  %call = call i64 @hash_string(ptr noundef %1, i64 noundef %2)
  store i32 0, ptr %found, align 4
  %3 = load ptr, ptr %object.addr, align 8
  %call2 = call i64 @json_object_get_cell_ix(ptr noundef %3, ptr noundef %1, i64 noundef %2, i64 noundef %call, ptr noundef nonnull %found)
  store i64 %call2, ptr %cell_ix, align 8
  %4 = load i32, ptr %found, align 4
  %tobool3.not = icmp eq i32 %4, 0
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end5:                                          ; preds = %if.end
  %5 = load ptr, ptr %object.addr, align 8
  %cells = getelementptr inbounds %struct.json_object_t, ptr %5, i64 0, i32 1
  %6 = load ptr, ptr %cells, align 8
  %7 = load i64, ptr %cell_ix, align 8
  %arrayidx = getelementptr inbounds i64, ptr %6, i64 %7
  %8 = load i64, ptr %arrayidx, align 8
  %values = getelementptr inbounds %struct.json_object_t, ptr %5, i64 0, i32 4
  %9 = load ptr, ptr %values, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %9, i64 %8
  %10 = load ptr, ptr %arrayidx6, align 8
  store ptr %10, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %11 = load ptr, ptr %retval, align 8
  ret ptr %11
}

declare i64 @strlen(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define ptr @json_object_get_string(ptr noundef %object, ptr noundef %name) #0 {
entry:
  %call = call ptr @json_object_get_value(ptr noundef %object, ptr noundef %name)
  %call1 = call ptr @json_value_get_string(ptr noundef %call)
  ret ptr %call1
}

; Function Attrs: nounwind ssp uwtable
define ptr @json_value_get_string(ptr noundef %value) #0 {
entry:
  %str = alloca ptr, align 8
  %call = call ptr @json_value_get_string_desc(ptr noundef %value)
  store ptr %call, ptr %str, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %0 = load ptr, ptr %str, align 8
  %1 = load ptr, ptr %0, align 8
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi ptr [ %1, %cond.true ], [ null, %entry ]
  ret ptr %cond
}

; Function Attrs: nounwind ssp uwtable
define i64 @json_object_get_string_len(ptr noundef %object, ptr noundef %name) #0 {
entry:
  %call = call ptr @json_object_get_value(ptr noundef %object, ptr noundef %name)
  %call1 = call i64 @json_value_get_string_len(ptr noundef %call)
  ret i64 %call1
}

; Function Attrs: nounwind ssp uwtable
define i64 @json_value_get_string_len(ptr noundef %value) #0 {
entry:
  %str = alloca ptr, align 8
  %call = call ptr @json_value_get_string_desc(ptr noundef %value)
  store ptr %call, ptr %str, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %0 = load ptr, ptr %str, align 8
  %length = getelementptr inbounds %struct.json_string, ptr %0, i64 0, i32 1
  %1 = load i64, ptr %length, align 8
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i64 [ %1, %cond.true ], [ 0, %entry ]
  ret i64 %cond
}

; Function Attrs: nounwind ssp uwtable
define double @json_object_get_number(ptr noundef %object, ptr noundef %name) #0 {
entry:
  %call = call ptr @json_object_get_value(ptr noundef %object, ptr noundef %name)
  %call1 = call double @json_value_get_number(ptr noundef %call)
  ret double %call1
}

; Function Attrs: nounwind ssp uwtable
define double @json_value_get_number(ptr noundef %value) #0 {
entry:
  %value.addr.i = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value.addr.i)
  store ptr %value, ptr %value.addr.i, align 8
  %tobool.i.not = icmp eq ptr %value, null
  br i1 %tobool.i.not, label %cond.false.critedge, label %cond.true.i

cond.true.i:                                      ; preds = %entry
  %0 = load ptr, ptr %value.addr.i, align 8
  %type.i = getelementptr inbounds %struct.json_value_t, ptr %0, i64 0, i32 1
  %1 = load i32, ptr %type.i, align 8
  %phi.cmp = icmp eq i32 %1, 3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value.addr.i)
  br i1 %phi.cmp, label %cond.true, label %cond.end

cond.true:                                        ; preds = %cond.true.i
  %2 = load ptr, ptr %value.addr, align 8
  %value1 = getelementptr inbounds %struct.json_value_t, ptr %2, i64 0, i32 2
  %3 = load double, ptr %value1, align 8
  br label %cond.end

cond.false.critedge:                              ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value.addr.i)
  br label %cond.end

cond.end:                                         ; preds = %cond.true.i, %cond.false.critedge, %cond.true
  %cond = phi double [ %3, %cond.true ], [ 0.000000e+00, %cond.false.critedge ], [ 0.000000e+00, %cond.true.i ]
  ret double %cond
}

; Function Attrs: nounwind ssp uwtable
define ptr @json_object_get_object(ptr noundef %object, ptr noundef %name) #0 {
entry:
  %call = call ptr @json_object_get_value(ptr noundef %object, ptr noundef %name)
  %call1 = call ptr @json_value_get_object(ptr noundef %call)
  ret ptr %call1
}

; Function Attrs: nounwind ssp uwtable
define ptr @json_value_get_object(ptr noundef %value) #0 {
entry:
  %value.addr.i = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value.addr.i)
  store ptr %value, ptr %value.addr.i, align 8
  %tobool.i.not = icmp eq ptr %value, null
  br i1 %tobool.i.not, label %cond.false.critedge, label %cond.true.i

cond.true.i:                                      ; preds = %entry
  %0 = load ptr, ptr %value.addr.i, align 8
  %type.i = getelementptr inbounds %struct.json_value_t, ptr %0, i64 0, i32 1
  %1 = load i32, ptr %type.i, align 8
  %phi.cmp = icmp eq i32 %1, 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value.addr.i)
  br i1 %phi.cmp, label %cond.true, label %cond.end

cond.true:                                        ; preds = %cond.true.i
  %2 = load ptr, ptr %value.addr, align 8
  %value1 = getelementptr inbounds %struct.json_value_t, ptr %2, i64 0, i32 2
  %3 = load ptr, ptr %value1, align 8
  br label %cond.end

cond.false.critedge:                              ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value.addr.i)
  br label %cond.end

cond.end:                                         ; preds = %cond.true.i, %cond.false.critedge, %cond.true
  %cond = phi ptr [ %3, %cond.true ], [ null, %cond.false.critedge ], [ null, %cond.true.i ]
  ret ptr %cond
}

; Function Attrs: nounwind ssp uwtable
define ptr @json_object_get_array(ptr noundef %object, ptr noundef %name) #0 {
entry:
  %call = call ptr @json_object_get_value(ptr noundef %object, ptr noundef %name)
  %call1 = call ptr @json_value_get_array(ptr noundef %call)
  ret ptr %call1
}

; Function Attrs: nounwind ssp uwtable
define ptr @json_value_get_array(ptr noundef %value) #0 {
entry:
  %value.addr.i = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value.addr.i)
  store ptr %value, ptr %value.addr.i, align 8
  %tobool.i.not = icmp eq ptr %value, null
  br i1 %tobool.i.not, label %cond.false.critedge, label %cond.true.i

cond.true.i:                                      ; preds = %entry
  %0 = load ptr, ptr %value.addr.i, align 8
  %type.i = getelementptr inbounds %struct.json_value_t, ptr %0, i64 0, i32 1
  %1 = load i32, ptr %type.i, align 8
  %phi.cmp = icmp eq i32 %1, 5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value.addr.i)
  br i1 %phi.cmp, label %cond.true, label %cond.end

cond.true:                                        ; preds = %cond.true.i
  %2 = load ptr, ptr %value.addr, align 8
  %value1 = getelementptr inbounds %struct.json_value_t, ptr %2, i64 0, i32 2
  %3 = load ptr, ptr %value1, align 8
  br label %cond.end

cond.false.critedge:                              ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value.addr.i)
  br label %cond.end

cond.end:                                         ; preds = %cond.true.i, %cond.false.critedge, %cond.true
  %cond = phi ptr [ %3, %cond.true ], [ null, %cond.false.critedge ], [ null, %cond.true.i ]
  ret ptr %cond
}

; Function Attrs: nounwind ssp uwtable
define i32 @json_object_get_boolean(ptr noundef %object, ptr noundef %name) #0 {
entry:
  %call = call ptr @json_object_get_value(ptr noundef %object, ptr noundef %name)
  %call1 = call i32 @json_value_get_boolean(ptr noundef %call)
  ret i32 %call1
}

; Function Attrs: nounwind ssp uwtable
define i32 @json_value_get_boolean(ptr noundef %value) #0 {
entry:
  %value.addr.i = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value.addr.i)
  store ptr %value, ptr %value.addr.i, align 8
  %tobool.i.not = icmp eq ptr %value, null
  br i1 %tobool.i.not, label %cond.false.critedge, label %cond.true.i

cond.true.i:                                      ; preds = %entry
  %0 = load ptr, ptr %value.addr.i, align 8
  %type.i = getelementptr inbounds %struct.json_value_t, ptr %0, i64 0, i32 1
  %1 = load i32, ptr %type.i, align 8
  %phi.cmp = icmp eq i32 %1, 6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value.addr.i)
  br i1 %phi.cmp, label %cond.true, label %cond.end

cond.true:                                        ; preds = %cond.true.i
  %2 = load ptr, ptr %value.addr, align 8
  %value1 = getelementptr inbounds %struct.json_value_t, ptr %2, i64 0, i32 2
  %3 = load i32, ptr %value1, align 8
  br label %cond.end

cond.false.critedge:                              ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value.addr.i)
  br label %cond.end

cond.end:                                         ; preds = %cond.true.i, %cond.false.critedge, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ -1, %cond.false.critedge ], [ -1, %cond.true.i ]
  ret i32 %cond
}

; Function Attrs: nounwind ssp uwtable
define ptr @json_object_dotget_value(ptr noundef %object, ptr noundef %name) #0 {
entry:
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %dot_position = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  %call = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %name, i32 noundef 46) #11
  store ptr %call, ptr %dot_position, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %object.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %call1 = call ptr @json_object_get_value(ptr noundef %0, ptr noundef %1)
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %object.addr, align 8
  %3 = load ptr, ptr %name.addr, align 8
  %4 = load ptr, ptr %dot_position, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %4 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call2 = call ptr @json_object_getn_value(ptr noundef %2, ptr noundef %3, i64 noundef %sub.ptr.sub)
  %call3 = call ptr @json_value_get_object(ptr noundef %call2)
  store ptr %call3, ptr %object.addr, align 8
  %5 = load ptr, ptr %dot_position, align 8
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 1
  %call4 = call ptr @json_object_dotget_value(ptr noundef %call3, ptr noundef nonnull %add.ptr)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %storemerge = phi ptr [ %call1, %if.then ], [ %call4, %if.end ]
  ret ptr %storemerge
}

declare ptr @strchr(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define ptr @json_object_dotget_string(ptr noundef %object, ptr noundef %name) #0 {
entry:
  %call = call ptr @json_object_dotget_value(ptr noundef %object, ptr noundef %name)
  %call1 = call ptr @json_value_get_string(ptr noundef %call)
  ret ptr %call1
}

; Function Attrs: nounwind ssp uwtable
define i64 @json_object_dotget_string_len(ptr noundef %object, ptr noundef %name) #0 {
entry:
  %call = call ptr @json_object_dotget_value(ptr noundef %object, ptr noundef %name)
  %call1 = call i64 @json_value_get_string_len(ptr noundef %call)
  ret i64 %call1
}

; Function Attrs: nounwind ssp uwtable
define double @json_object_dotget_number(ptr noundef %object, ptr noundef %name) #0 {
entry:
  %call = call ptr @json_object_dotget_value(ptr noundef %object, ptr noundef %name)
  %call1 = call double @json_value_get_number(ptr noundef %call)
  ret double %call1
}

; Function Attrs: nounwind ssp uwtable
define ptr @json_object_dotget_object(ptr noundef %object, ptr noundef %name) #0 {
entry:
  %call = call ptr @json_object_dotget_value(ptr noundef %object, ptr noundef %name)
  %call1 = call ptr @json_value_get_object(ptr noundef %call)
  ret ptr %call1
}

; Function Attrs: nounwind ssp uwtable
define ptr @json_object_dotget_array(ptr noundef %object, ptr noundef %name) #0 {
entry:
  %call = call ptr @json_object_dotget_value(ptr noundef %object, ptr noundef %name)
  %call1 = call ptr @json_value_get_array(ptr noundef %call)
  ret ptr %call1
}

; Function Attrs: nounwind ssp uwtable
define i32 @json_object_dotget_boolean(ptr noundef %object, ptr noundef %name) #0 {
entry:
  %call = call ptr @json_object_dotget_value(ptr noundef %object, ptr noundef %name)
  %call1 = call i32 @json_value_get_boolean(ptr noundef %call)
  ret i32 %call1
}

; Function Attrs: nounwind ssp uwtable
define i64 @json_object_get_count(ptr noundef %object) #0 {
entry:
  %object.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  %tobool.not = icmp eq ptr %object, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %0 = load ptr, ptr %object.addr, align 8
  %count = getelementptr inbounds %struct.json_object_t, ptr %0, i64 0, i32 6
  %1 = load i64, ptr %count, align 8
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i64 [ %1, %cond.true ], [ 0, %entry ]
  ret i64 %cond
}

; Function Attrs: nounwind ssp uwtable
define ptr @json_object_get_name(ptr noundef %object, i64 noundef %index) #0 {
entry:
  %object.addr.i = alloca ptr, align 8
  %object.addr = alloca ptr, align 8
  %index.addr = alloca i64, align 8
  store ptr %object, ptr %object.addr, align 8
  store i64 %index, ptr %index.addr, align 8
  %cmp = icmp eq ptr %object, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load i64, ptr %index.addr, align 8
  %1 = load ptr, ptr %object.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %object.addr.i)
  store ptr %1, ptr %object.addr.i, align 8
  %tobool.i.not = icmp eq ptr %1, null
  br i1 %tobool.i.not, label %pc_inline_source_snapshot_public_repos_parson_parson_4.exit, label %cond.true.i

cond.true.i:                                      ; preds = %lor.lhs.false
  %2 = load ptr, ptr %object.addr.i, align 8
  %count.i = getelementptr inbounds %struct.json_object_t, ptr %2, i64 0, i32 6
  %3 = load i64, ptr %count.i, align 8
  br label %pc_inline_source_snapshot_public_repos_parson_parson_4.exit

pc_inline_source_snapshot_public_repos_parson_parson_4.exit: ; preds = %lor.lhs.false, %cond.true.i
  %cond.i = phi i64 [ %3, %cond.true.i ], [ 0, %lor.lhs.false ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %object.addr.i)
  %cmp1.not = icmp ult i64 %0, %cond.i
  br i1 %cmp1.not, label %if.end, label %return

if.end:                                           ; preds = %pc_inline_source_snapshot_public_repos_parson_parson_4.exit
  %4 = load ptr, ptr %object.addr, align 8
  %names = getelementptr inbounds %struct.json_object_t, ptr %4, i64 0, i32 3
  %5 = load ptr, ptr %names, align 8
  %6 = load i64, ptr %index.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %6
  %7 = load ptr, ptr %arrayidx, align 8
  br label %return

return:                                           ; preds = %entry, %pc_inline_source_snapshot_public_repos_parson_parson_4.exit, %if.end
  %storemerge = phi ptr [ %7, %if.end ], [ null, %pc_inline_source_snapshot_public_repos_parson_parson_4.exit ], [ null, %entry ]
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define ptr @json_object_get_value_at(ptr noundef %object, i64 noundef %index) #0 {
entry:
  %object.addr.i = alloca ptr, align 8
  %object.addr = alloca ptr, align 8
  %index.addr = alloca i64, align 8
  store ptr %object, ptr %object.addr, align 8
  store i64 %index, ptr %index.addr, align 8
  %cmp = icmp eq ptr %object, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load i64, ptr %index.addr, align 8
  %1 = load ptr, ptr %object.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %object.addr.i)
  store ptr %1, ptr %object.addr.i, align 8
  %tobool.i.not = icmp eq ptr %1, null
  br i1 %tobool.i.not, label %pc_inline_source_snapshot_public_repos_parson_parson_5.exit, label %cond.true.i

cond.true.i:                                      ; preds = %lor.lhs.false
  %2 = load ptr, ptr %object.addr.i, align 8
  %count.i = getelementptr inbounds %struct.json_object_t, ptr %2, i64 0, i32 6
  %3 = load i64, ptr %count.i, align 8
  br label %pc_inline_source_snapshot_public_repos_parson_parson_5.exit

pc_inline_source_snapshot_public_repos_parson_parson_5.exit: ; preds = %lor.lhs.false, %cond.true.i
  %cond.i = phi i64 [ %3, %cond.true.i ], [ 0, %lor.lhs.false ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %object.addr.i)
  %cmp1.not = icmp ult i64 %0, %cond.i
  br i1 %cmp1.not, label %if.end, label %return

if.end:                                           ; preds = %pc_inline_source_snapshot_public_repos_parson_parson_5.exit
  %4 = load ptr, ptr %object.addr, align 8
  %values = getelementptr inbounds %struct.json_object_t, ptr %4, i64 0, i32 4
  %5 = load ptr, ptr %values, align 8
  %6 = load i64, ptr %index.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %6
  %7 = load ptr, ptr %arrayidx, align 8
  br label %return

return:                                           ; preds = %entry, %pc_inline_source_snapshot_public_repos_parson_parson_5.exit, %if.end
  %storemerge = phi ptr [ %7, %if.end ], [ null, %pc_inline_source_snapshot_public_repos_parson_parson_5.exit ], [ null, %entry ]
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define ptr @json_object_get_wrapping_value(ptr noundef %object) #0 {
entry:
  %object.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  %tobool.not = icmp eq ptr %object, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %object.addr, align 8
  %1 = load ptr, ptr %0, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi ptr [ %1, %if.end ], [ null, %entry ]
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define i32 @json_object_has_value(ptr noundef %object, ptr noundef %name) #0 {
entry:
  %call = call ptr @json_object_get_value(ptr noundef %object, ptr noundef %name)
  %cmp = icmp ne ptr %call, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind ssp uwtable
define i32 @json_object_has_value_of_type(ptr noundef %object, ptr noundef %name, i32 noundef %type) #0 {
entry:
  %type.addr = alloca i32, align 4
  %val = alloca ptr, align 8
  store i32 %type, ptr %type.addr, align 4
  %call = call ptr @json_object_get_value(ptr noundef %object, ptr noundef %name)
  store ptr %call, ptr %val, align 8
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %0 = load ptr, ptr %val, align 8
  %call1 = call i32 @json_value_get_type(ptr noundef %0)
  %1 = load i32, ptr %type.addr, align 4
  %cmp2 = icmp eq i32 %call1, %1
  %phi.cast = zext i1 %cmp2 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %2
}

; Function Attrs: nounwind ssp uwtable
define i32 @json_value_get_type(ptr noundef %value) #0 {
entry:
  %value.addr = alloca ptr, align 8
  store ptr %value, ptr %value.addr, align 8
  %tobool.not = icmp eq ptr %value, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %0 = load ptr, ptr %value.addr, align 8
  %type = getelementptr inbounds %struct.json_value_t, ptr %0, i64 0, i32 1
  %1 = load i32, ptr %type, align 8
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ -1, %entry ]
  ret i32 %cond
}

; Function Attrs: nounwind ssp uwtable
define i32 @json_object_dothas_value(ptr noundef %object, ptr noundef %name) #0 {
entry:
  %call = call ptr @json_object_dotget_value(ptr noundef %object, ptr noundef %name)
  %cmp = icmp ne ptr %call, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind ssp uwtable
define i32 @json_object_dothas_value_of_type(ptr noundef %object, ptr noundef %name, i32 noundef %type) #0 {
entry:
  %type.addr = alloca i32, align 4
  %val = alloca ptr, align 8
  store i32 %type, ptr %type.addr, align 4
  %call = call ptr @json_object_dotget_value(ptr noundef %object, ptr noundef %name)
  store ptr %call, ptr %val, align 8
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %0 = load ptr, ptr %val, align 8
  %call1 = call i32 @json_value_get_type(ptr noundef %0)
  %1 = load i32, ptr %type.addr, align 4
  %cmp2 = icmp eq i32 %call1, %1
  %phi.cast = zext i1 %cmp2 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %2
}

; Function Attrs: nounwind ssp uwtable
define ptr @json_array_get_value(ptr noundef %array, i64 noundef %index) #0 {
entry:
  %array.addr.i = alloca ptr, align 8
  %array.addr = alloca ptr, align 8
  %index.addr = alloca i64, align 8
  store ptr %array, ptr %array.addr, align 8
  store i64 %index, ptr %index.addr, align 8
  %cmp = icmp eq ptr %array, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load i64, ptr %index.addr, align 8
  %1 = load ptr, ptr %array.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %array.addr.i)
  store ptr %1, ptr %array.addr.i, align 8
  %tobool.i.not = icmp eq ptr %1, null
  br i1 %tobool.i.not, label %pc_inline_source_snapshot_public_repos_parson_parson_6.exit, label %cond.true.i

cond.true.i:                                      ; preds = %lor.lhs.false
  %2 = load ptr, ptr %array.addr.i, align 8
  %count.i = getelementptr inbounds %struct.json_array_t, ptr %2, i64 0, i32 2
  %3 = load i64, ptr %count.i, align 8
  br label %pc_inline_source_snapshot_public_repos_parson_parson_6.exit

pc_inline_source_snapshot_public_repos_parson_parson_6.exit: ; preds = %lor.lhs.false, %cond.true.i
  %cond.i = phi i64 [ %3, %cond.true.i ], [ 0, %lor.lhs.false ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %array.addr.i)
  %cmp1.not = icmp ult i64 %0, %cond.i
  br i1 %cmp1.not, label %if.end, label %return

if.end:                                           ; preds = %pc_inline_source_snapshot_public_repos_parson_parson_6.exit
  %4 = load ptr, ptr %array.addr, align 8
  %items = getelementptr inbounds %struct.json_array_t, ptr %4, i64 0, i32 1
  %5 = load ptr, ptr %items, align 8
  %6 = load i64, ptr %index.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %6
  %7 = load ptr, ptr %arrayidx, align 8
  br label %return

return:                                           ; preds = %entry, %pc_inline_source_snapshot_public_repos_parson_parson_6.exit, %if.end
  %storemerge = phi ptr [ %7, %if.end ], [ null, %pc_inline_source_snapshot_public_repos_parson_parson_6.exit ], [ null, %entry ]
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define i64 @json_array_get_count(ptr noundef %array) #0 {
entry:
  %array.addr = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8
  %tobool.not = icmp eq ptr %array, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %0 = load ptr, ptr %array.addr, align 8
  %count = getelementptr inbounds %struct.json_array_t, ptr %0, i64 0, i32 2
  %1 = load i64, ptr %count, align 8
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i64 [ %1, %cond.true ], [ 0, %entry ]
  ret i64 %cond
}

; Function Attrs: nounwind ssp uwtable
define ptr @json_array_get_string(ptr noundef %array, i64 noundef %index) #0 {
entry:
  %call = call ptr @json_array_get_value(ptr noundef %array, i64 noundef %index)
  %call1 = call ptr @json_value_get_string(ptr noundef %call)
  ret ptr %call1
}

; Function Attrs: nounwind ssp uwtable
define i64 @json_array_get_string_len(ptr noundef %array, i64 noundef %index) #0 {
entry:
  %call = call ptr @json_array_get_value(ptr noundef %array, i64 noundef %index)
  %call1 = call i64 @json_value_get_string_len(ptr noundef %call)
  ret i64 %call1
}

; Function Attrs: nounwind ssp uwtable
define double @json_array_get_number(ptr noundef %array, i64 noundef %index) #0 {
entry:
  %call = call ptr @json_array_get_value(ptr noundef %array, i64 noundef %index)
  %call1 = call double @json_value_get_number(ptr noundef %call)
  ret double %call1
}

; Function Attrs: nounwind ssp uwtable
define ptr @json_array_get_object(ptr noundef %array, i64 noundef %index) #0 {
entry:
  %call = call ptr @json_array_get_value(ptr noundef %array, i64 noundef %index)
  %call1 = call ptr @json_value_get_object(ptr noundef %call)
  ret ptr %call1
}

; Function Attrs: nounwind ssp uwtable
define ptr @json_array_get_array(ptr noundef %array, i64 noundef %index) #0 {
entry:
  %call = call ptr @json_array_get_value(ptr noundef %array, i64 noundef %index)
  %call1 = call ptr @json_value_get_array(ptr noundef %call)
  ret ptr %call1
}

; Function Attrs: nounwind ssp uwtable
define i32 @json_array_get_boolean(ptr noundef %array, i64 noundef %index) #0 {
entry:
  %call = call ptr @json_array_get_value(ptr noundef %array, i64 noundef %index)
  %call1 = call i32 @json_value_get_boolean(ptr noundef %call)
  ret i32 %call1
}

; Function Attrs: nounwind ssp uwtable
define ptr @json_array_get_wrapping_value(ptr noundef %array) #0 {
entry:
  %array.addr = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8
  %tobool.not = icmp eq ptr %array, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %array.addr, align 8
  %1 = load ptr, ptr %0, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi ptr [ %1, %if.end ], [ null, %entry ]
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @json_value_get_string_desc(ptr noundef %value) #0 {
entry:
  %value.addr.i = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value.addr.i)
  store ptr %value, ptr %value.addr.i, align 8
  %tobool.i.not = icmp eq ptr %value, null
  br i1 %tobool.i.not, label %cond.false.critedge, label %cond.true.i

cond.true.i:                                      ; preds = %entry
  %0 = load ptr, ptr %value.addr.i, align 8
  %type.i = getelementptr inbounds %struct.json_value_t, ptr %0, i64 0, i32 1
  %1 = load i32, ptr %type.i, align 8
  %phi.cmp = icmp eq i32 %1, 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value.addr.i)
  br i1 %phi.cmp, label %cond.true, label %cond.end

cond.true:                                        ; preds = %cond.true.i
  %2 = load ptr, ptr %value.addr, align 8
  %value1 = getelementptr inbounds %struct.json_value_t, ptr %2, i64 0, i32 2
  br label %cond.end

cond.false.critedge:                              ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value.addr.i)
  br label %cond.end

cond.end:                                         ; preds = %cond.true.i, %cond.false.critedge, %cond.true
  %cond = phi ptr [ %value1, %cond.true ], [ null, %cond.false.critedge ], [ null, %cond.true.i ]
  ret ptr %cond
}

; Function Attrs: nounwind ssp uwtable
define ptr @json_value_get_parent(ptr noundef %value) #0 {
entry:
  %value.addr = alloca ptr, align 8
  store ptr %value, ptr %value.addr, align 8
  %tobool.not = icmp eq ptr %value, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %0 = load ptr, ptr %value.addr, align 8
  %1 = load ptr, ptr %0, align 8
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi ptr [ %1, %cond.true ], [ null, %entry ]
  ret ptr %cond
}

; Function Attrs: nounwind ssp uwtable
define void @json_value_free(ptr noundef %value) #0 {
entry:
  %value.addr.i = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value.addr.i)
  store ptr %value, ptr %value.addr.i, align 8
  %tobool.i.not = icmp eq ptr %value, null
  br i1 %tobool.i.not, label %pc_inline_source_snapshot_public_repos_parson_parson_8.exit, label %cond.true.i

cond.true.i:                                      ; preds = %entry
  %0 = load ptr, ptr %value.addr.i, align 8
  %type.i = getelementptr inbounds %struct.json_value_t, ptr %0, i64 0, i32 1
  %1 = load i32, ptr %type.i, align 8
  br label %pc_inline_source_snapshot_public_repos_parson_parson_8.exit

pc_inline_source_snapshot_public_repos_parson_parson_8.exit: ; preds = %entry, %cond.true.i
  %cond.i = phi i32 [ %1, %cond.true.i ], [ -1, %entry ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value.addr.i)
  switch i32 %cond.i, label %sw.epilog [
    i32 4, label %sw.bb
    i32 2, label %sw.bb2
    i32 5, label %sw.bb4
  ]

sw.bb:                                            ; preds = %pc_inline_source_snapshot_public_repos_parson_parson_8.exit
  %2 = load ptr, ptr %value.addr, align 8
  %value1 = getelementptr inbounds %struct.json_value_t, ptr %2, i64 0, i32 2
  %3 = load ptr, ptr %value1, align 8
  call void @json_object_deinit(ptr noundef %3, i32 noundef 1, i32 noundef 1)
  %4 = load ptr, ptr @parson_free, align 8
  call void %4(ptr noundef %3) #11
  br label %sw.epilog

sw.bb2:                                           ; preds = %pc_inline_source_snapshot_public_repos_parson_parson_8.exit
  %5 = load ptr, ptr @parson_free, align 8
  %6 = load ptr, ptr %value.addr, align 8
  %value3 = getelementptr inbounds %struct.json_value_t, ptr %6, i64 0, i32 2
  %7 = load ptr, ptr %value3, align 8
  call void %5(ptr noundef %7) #11
  br label %sw.epilog

sw.bb4:                                           ; preds = %pc_inline_source_snapshot_public_repos_parson_parson_8.exit
  %8 = load ptr, ptr %value.addr, align 8
  %value5 = getelementptr inbounds %struct.json_value_t, ptr %8, i64 0, i32 2
  %9 = load ptr, ptr %value5, align 8
  call void @json_array_free(ptr noundef %9)
  br label %sw.epilog

sw.epilog:                                        ; preds = %pc_inline_source_snapshot_public_repos_parson_parson_8.exit, %sw.bb4, %sw.bb2, %sw.bb
  %10 = load ptr, ptr @parson_free, align 8
  %11 = load ptr, ptr %value.addr, align 8
  call void %10(ptr noundef %11) #11
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @json_array_free(ptr noundef %array) #0 {
entry:
  %array.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  store ptr %array, ptr %array.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i64 [ 0, %entry ], [ %inc, %for.body ]
  store i64 %storemerge, ptr %i, align 8
  %0 = load ptr, ptr %array.addr, align 8
  %count = getelementptr inbounds %struct.json_array_t, ptr %0, i64 0, i32 2
  %1 = load i64, ptr %count, align 8
  %cmp = icmp ult i64 %storemerge, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %array.addr, align 8
  %items = getelementptr inbounds %struct.json_array_t, ptr %2, i64 0, i32 1
  %3 = load ptr, ptr %items, align 8
  %4 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %4
  %5 = load ptr, ptr %arrayidx, align 8
  call void @json_value_free(ptr noundef %5)
  %6 = load i64, ptr %i, align 8
  %inc = add i64 %6, 1
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr @parson_free, align 8
  %8 = load ptr, ptr %array.addr, align 8
  %items1 = getelementptr inbounds %struct.json_array_t, ptr %8, i64 0, i32 1
  %9 = load ptr, ptr %items1, align 8
  call void %7(ptr noundef %9) #11
  %10 = load ptr, ptr @parson_free, align 8
  call void %10(ptr noundef %8) #11
  ret void
}

; Function Attrs: nounwind ssp uwtable
define ptr @json_value_init_object() #0 {
entry:
  %retval = alloca ptr, align 8
  %new_value = alloca ptr, align 8
  %0 = load ptr, ptr @parson_malloc, align 8
  %call = call ptr %0(i64 noundef 32) #11
  store ptr %call, ptr %new_value, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %new_value, align 8
  store ptr null, ptr %1, align 8
  %type = getelementptr inbounds %struct.json_value_t, ptr %1, i64 0, i32 1
  store i32 4, ptr %type, align 8
  %call1 = call ptr @json_object_make(ptr noundef nonnull %1)
  %value = getelementptr inbounds %struct.json_value_t, ptr %1, i64 0, i32 2
  store ptr %call1, ptr %value, align 8
  %2 = load ptr, ptr %new_value, align 8
  %value2 = getelementptr inbounds %struct.json_value_t, ptr %2, i64 0, i32 2
  %3 = load ptr, ptr %value2, align 8
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %4 = load ptr, ptr @parson_free, align 8
  %5 = load ptr, ptr %new_value, align 8
  call void %4(ptr noundef %5) #11
  store ptr null, ptr %retval, align 8
  br label %return

if.end5:                                          ; preds = %if.end
  %6 = load ptr, ptr %new_value, align 8
  store ptr %6, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %7 = load ptr, ptr %retval, align 8
  ret ptr %7
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @json_object_make(ptr noundef %wrapping_value) #0 {
entry:
  %retval = alloca ptr, align 8
  %wrapping_value.addr = alloca ptr, align 8
  %new_obj = alloca ptr, align 8
  store ptr %wrapping_value, ptr %wrapping_value.addr, align 8
  %0 = load ptr, ptr @parson_malloc, align 8
  %call = call ptr %0(i64 noundef 72) #11
  store ptr %call, ptr %new_obj, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %wrapping_value.addr, align 8
  %2 = load ptr, ptr %new_obj, align 8
  store ptr %1, ptr %2, align 8
  %call2 = call i32 @json_object_init(ptr noundef nonnull %2, i64 noundef 0)
  %cmp3.not = icmp eq i32 %call2, 0
  br i1 %cmp3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  %3 = load ptr, ptr @parson_free, align 8
  %4 = load ptr, ptr %new_obj, align 8
  call void %3(ptr noundef %4) #11
  store ptr null, ptr %retval, align 8
  br label %return

if.end5:                                          ; preds = %if.end
  %5 = load ptr, ptr %new_obj, align 8
  store ptr %5, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %6 = load ptr, ptr %retval, align 8
  ret ptr %6
}

; Function Attrs: nounwind ssp uwtable
define ptr @json_value_init_array() #0 {
entry:
  %retval = alloca ptr, align 8
  %new_value = alloca ptr, align 8
  %0 = load ptr, ptr @parson_malloc, align 8
  %call = call ptr %0(i64 noundef 32) #11
  store ptr %call, ptr %new_value, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %new_value, align 8
  store ptr null, ptr %1, align 8
  %type = getelementptr inbounds %struct.json_value_t, ptr %1, i64 0, i32 1
  store i32 5, ptr %type, align 8
  %call1 = call ptr @json_array_make(ptr noundef nonnull %1)
  %value = getelementptr inbounds %struct.json_value_t, ptr %1, i64 0, i32 2
  store ptr %call1, ptr %value, align 8
  %2 = load ptr, ptr %new_value, align 8
  %value2 = getelementptr inbounds %struct.json_value_t, ptr %2, i64 0, i32 2
  %3 = load ptr, ptr %value2, align 8
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %4 = load ptr, ptr @parson_free, align 8
  %5 = load ptr, ptr %new_value, align 8
  call void %4(ptr noundef %5) #11
  store ptr null, ptr %retval, align 8
  br label %return

if.end5:                                          ; preds = %if.end
  %6 = load ptr, ptr %new_value, align 8
  store ptr %6, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %7 = load ptr, ptr %retval, align 8
  ret ptr %7
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @json_array_make(ptr noundef %wrapping_value) #0 {
entry:
  %wrapping_value.addr = alloca ptr, align 8
  %new_array = alloca ptr, align 8
  store ptr %wrapping_value, ptr %wrapping_value.addr, align 8
  %0 = load ptr, ptr @parson_malloc, align 8
  %call = call ptr %0(i64 noundef 32) #11
  store ptr %call, ptr %new_array, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %wrapping_value.addr, align 8
  %2 = load ptr, ptr %new_array, align 8
  store ptr %1, ptr %2, align 8
  %items = getelementptr inbounds %struct.json_array_t, ptr %2, i64 0, i32 1
  store ptr null, ptr %items, align 8
  %capacity = getelementptr inbounds %struct.json_array_t, ptr %2, i64 0, i32 3
  store i64 0, ptr %capacity, align 8
  %count = getelementptr inbounds %struct.json_array_t, ptr %2, i64 0, i32 2
  store i64 0, ptr %count, align 8
  %3 = load ptr, ptr %new_array, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi ptr [ %3, %if.end ], [ null, %entry ]
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define ptr @json_value_init_string(ptr noundef %string) #0 {
entry:
  %string.addr = alloca ptr, align 8
  store ptr %string, ptr %string.addr, align 8
  %cmp = icmp eq ptr %string, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %string.addr, align 8
  %call = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #11
  %call1 = call ptr @json_value_init_string_with_len(ptr noundef %0, i64 noundef %call)
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi ptr [ %call1, %if.end ], [ null, %entry ]
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define ptr @json_value_init_string_with_len(ptr noundef %string, i64 noundef %length) #0 {
entry:
  %retval = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %copy = alloca ptr, align 8
  %value = alloca ptr, align 8
  store ptr %string, ptr %string.addr, align 8
  store i64 %length, ptr %length.addr, align 8
  store ptr null, ptr %copy, align 8
  %cmp = icmp eq ptr %string, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %string.addr, align 8
  %1 = load i64, ptr %length.addr, align 8
  %call = call i32 @is_valid_utf8(ptr noundef %0, i64 noundef %1)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end2:                                          ; preds = %if.end
  %2 = load ptr, ptr %string.addr, align 8
  %3 = load i64, ptr %length.addr, align 8
  %call3 = call ptr @parson_strndup(ptr noundef %2, i64 noundef %3)
  store ptr %call3, ptr %copy, align 8
  %cmp4 = icmp eq ptr %call3, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end2
  store ptr null, ptr %retval, align 8
  br label %return

if.end6:                                          ; preds = %if.end2
  %4 = load ptr, ptr %copy, align 8
  %5 = load i64, ptr %length.addr, align 8
  %call7 = call ptr @json_value_init_string_no_copy(ptr noundef %4, i64 noundef %5)
  store ptr %call7, ptr %value, align 8
  %cmp8 = icmp eq ptr %call7, null
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  %6 = load ptr, ptr @parson_free, align 8
  %7 = load ptr, ptr %copy, align 8
  call void %6(ptr noundef %7) #11
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end6
  %8 = load ptr, ptr %value, align 8
  store ptr %8, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end10, %if.then5, %if.then1, %if.then
  %9 = load ptr, ptr %retval, align 8
  ret ptr %9
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @is_valid_utf8(ptr noundef %string, i64 noundef %string_len) #0 {
entry:
  %string.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  %string_end = alloca ptr, align 8
  store ptr %string, ptr %string.addr, align 8
  store i32 0, ptr %len, align 4
  %add.ptr = getelementptr inbounds i8, ptr %string, i64 %string_len
  store ptr %add.ptr, ptr %string_end, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load ptr, ptr %string.addr, align 8
  %1 = load ptr, ptr %string_end, align 8
  %cmp = icmp ult ptr %0, %1
  br i1 %cmp, label %while.body, label %return

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %string.addr, align 8
  %call = call i32 @verify_utf8_sequence(ptr noundef %2, ptr noundef nonnull %len)
  %cmp1.not = icmp eq i32 %call, 0
  br i1 %cmp1.not, label %if.end, label %return

if.end:                                           ; preds = %while.body
  %3 = load i32, ptr %len, align 4
  %4 = load ptr, ptr %string.addr, align 8
  %idx.ext = sext i32 %3 to i64
  %add.ptr2 = getelementptr inbounds i8, ptr %4, i64 %idx.ext
  store ptr %add.ptr2, ptr %string.addr, align 8
  br label %while.cond, !llvm.loop !12

return:                                           ; preds = %while.cond, %while.body
  %storemerge = phi i32 [ 0, %while.body ], [ 1, %while.cond ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @parson_strndup(ptr noundef %string, i64 noundef %n) #0 {
entry:
  %string.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %output_string = alloca ptr, align 8
  store ptr %string, ptr %string.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  %0 = load ptr, ptr @parson_malloc, align 8
  %add = add i64 %n, 1
  %call = call ptr %0(i64 noundef %add) #11
  store ptr %call, ptr %output_string, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %output_string, align 8
  %2 = load i64, ptr %n.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %2
  store i8 0, ptr %arrayidx, align 1
  %3 = load ptr, ptr %string.addr, align 8
  %4 = call i64 @llvm.objectsize.i64.p0(ptr %1, i1 false, i1 true, i1 false)
  %call1 = call ptr @__memcpy_chk(ptr noundef %1, ptr noundef %3, i64 noundef %2, i64 noundef %4) #11
  %5 = load ptr, ptr %output_string, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi ptr [ %5, %if.end ], [ null, %entry ]
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @json_value_init_string_no_copy(ptr noundef %string, i64 noundef %length) #0 {
entry:
  %string.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %new_value = alloca ptr, align 8
  store ptr %string, ptr %string.addr, align 8
  store i64 %length, ptr %length.addr, align 8
  %0 = load ptr, ptr @parson_malloc, align 8
  %call = call ptr %0(i64 noundef 32) #11
  store ptr %call, ptr %new_value, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %new_value, align 8
  store ptr null, ptr %1, align 8
  %type = getelementptr inbounds %struct.json_value_t, ptr %1, i64 0, i32 1
  store i32 2, ptr %type, align 8
  %2 = load ptr, ptr %string.addr, align 8
  %value = getelementptr inbounds %struct.json_value_t, ptr %1, i64 0, i32 2
  store ptr %2, ptr %value, align 8
  %3 = load i64, ptr %length.addr, align 8
  %4 = load ptr, ptr %new_value, align 8
  %length2 = getelementptr inbounds %struct.json_value_t, ptr %4, i64 0, i32 2, i32 0, i32 1
  store i64 %3, ptr %length2, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi ptr [ %4, %if.end ], [ null, %entry ]
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define ptr @json_value_init_number(double noundef %number) #0 {
entry:
  %retval = alloca ptr, align 8
  %number.addr = alloca double, align 8
  %new_value = alloca ptr, align 8
  store double %number, ptr %number.addr, align 8
  store ptr null, ptr %new_value, align 8
  %0 = load double, ptr %number.addr, align 8
  %cmp.i23 = fcmp uno double %0, 0.000000e+00
  br i1 %cmp.i23, label %if.then, label %cond.true12

cond.true12:                                      ; preds = %entry
  %1 = load double, ptr %number.addr, align 8
  %2 = call double @llvm.fabs.f64(double %1)
  %cmp.i32 = fcmp oeq double %2, 0x7FF0000000000000
  br i1 %cmp.i32, label %if.then, label %if.end

if.then:                                          ; preds = %cond.true12, %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %cond.true12
  %3 = load ptr, ptr @parson_malloc, align 8
  %call18 = call ptr %3(i64 noundef 32) #11
  store ptr %call18, ptr %new_value, align 8
  %cmp = icmp eq ptr %call18, null
  br i1 %cmp, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end21:                                         ; preds = %if.end
  %4 = load ptr, ptr %new_value, align 8
  store ptr null, ptr %4, align 8
  %type = getelementptr inbounds %struct.json_value_t, ptr %4, i64 0, i32 1
  store i32 3, ptr %type, align 8
  %5 = load double, ptr %number.addr, align 8
  %value = getelementptr inbounds %struct.json_value_t, ptr %4, i64 0, i32 2
  store double %5, ptr %value, align 8
  %6 = load ptr, ptr %new_value, align 8
  store ptr %6, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end21, %if.then20, %if.then
  %7 = load ptr, ptr %retval, align 8
  ret ptr %7
}

; Function Attrs: nounwind ssp uwtable
define ptr @json_value_init_boolean(i32 noundef %boolean) #0 {
entry:
  %boolean.addr = alloca i32, align 4
  %new_value = alloca ptr, align 8
  store i32 %boolean, ptr %boolean.addr, align 4
  %0 = load ptr, ptr @parson_malloc, align 8
  %call = call ptr %0(i64 noundef 32) #11
  store ptr %call, ptr %new_value, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %new_value, align 8
  store ptr null, ptr %1, align 8
  %type = getelementptr inbounds %struct.json_value_t, ptr %1, i64 0, i32 1
  store i32 6, ptr %type, align 8
  %2 = load i32, ptr %boolean.addr, align 4
  %tobool1.not = icmp ne i32 %2, 0
  %cond = zext i1 %tobool1.not to i32
  %3 = load ptr, ptr %new_value, align 8
  %value = getelementptr inbounds %struct.json_value_t, ptr %3, i64 0, i32 2
  store i32 %cond, ptr %value, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi ptr [ %3, %if.end ], [ null, %entry ]
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define ptr @json_value_init_null() #0 {
entry:
  %new_value = alloca ptr, align 8
  %0 = load ptr, ptr @parson_malloc, align 8
  %call = call ptr %0(i64 noundef 32) #11
  store ptr %call, ptr %new_value, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %new_value, align 8
  store ptr null, ptr %1, align 8
  %type = getelementptr inbounds %struct.json_value_t, ptr %1, i64 0, i32 1
  store i32 1, ptr %type, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi ptr [ %1, %if.end ], [ null, %entry ]
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define ptr @json_value_deep_copy(ptr noundef %value) #0 {
entry:
  %retval = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %return_value = alloca ptr, align 8
  %temp_value_copy = alloca ptr, align 8
  %temp_string = alloca ptr, align 8
  %temp_key = alloca ptr, align 8
  %temp_string_copy = alloca ptr, align 8
  %temp_array = alloca ptr, align 8
  %temp_array_copy = alloca ptr, align 8
  %temp_object = alloca ptr, align 8
  %temp_object_copy = alloca ptr, align 8
  %key_copy = alloca ptr, align 8
  store ptr %value, ptr %value.addr, align 8
  store i64 0, ptr %i, align 8
  store ptr null, ptr %return_value, align 8
  store ptr null, ptr %temp_value_copy, align 8
  store ptr null, ptr %temp_string, align 8
  store ptr null, ptr %temp_key, align 8
  store ptr null, ptr %temp_string_copy, align 8
  store ptr null, ptr %temp_array, align 8
  store ptr null, ptr %temp_array_copy, align 8
  store ptr null, ptr %temp_object, align 8
  store ptr null, ptr %temp_object_copy, align 8
  store ptr null, ptr %key_copy, align 8
  %0 = load ptr, ptr %value.addr, align 8
  %call = call i32 @json_value_get_type(ptr noundef %0)
  switch i32 %call, label %sw.default [
    i32 5, label %sw.bb
    i32 4, label %sw.bb15
    i32 6, label %sw.bb42
    i32 3, label %sw.bb45
    i32 2, label %sw.bb48
    i32 1, label %sw.bb62
    i32 -1, label %sw.bb64
  ]

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %value.addr, align 8
  %call1 = call ptr @json_value_get_array(ptr noundef %1)
  store ptr %call1, ptr %temp_array, align 8
  %call2 = call ptr @json_value_init_array()
  store ptr %call2, ptr %return_value, align 8
  %cmp = icmp eq ptr %call2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %sw.bb
  %2 = load ptr, ptr %return_value, align 8
  %call3 = call ptr @json_value_get_array(ptr noundef %2)
  store ptr %call3, ptr %temp_array_copy, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %storemerge1 = phi i64 [ 0, %if.end ], [ %inc, %for.inc ]
  store i64 %storemerge1, ptr %i, align 8
  %3 = load ptr, ptr %temp_array, align 8
  %call4 = call i64 @json_array_get_count(ptr noundef %3)
  %cmp5 = icmp ult i64 %storemerge1, %call4
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %temp_array, align 8
  %5 = load i64, ptr %i, align 8
  %call6 = call ptr @json_array_get_value(ptr noundef %4, i64 noundef %5)
  %call7 = call ptr @json_value_deep_copy(ptr noundef %call6)
  store ptr %call7, ptr %temp_value_copy, align 8
  %cmp8 = icmp eq ptr %call7, null
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %for.body
  %6 = load ptr, ptr %return_value, align 8
  call void @json_value_free(ptr noundef %6)
  store ptr null, ptr %retval, align 8
  br label %return

if.end10:                                         ; preds = %for.body
  %7 = load ptr, ptr %temp_array_copy, align 8
  %8 = load ptr, ptr %temp_value_copy, align 8
  %call11 = call i32 @json_array_add(ptr noundef %7, ptr noundef %8)
  %cmp12.not = icmp eq i32 %call11, 0
  br i1 %cmp12.not, label %for.inc, label %if.then13

if.then13:                                        ; preds = %if.end10
  %9 = load ptr, ptr %return_value, align 8
  call void @json_value_free(ptr noundef %9)
  %10 = load ptr, ptr %temp_value_copy, align 8
  call void @json_value_free(ptr noundef %10)
  store ptr null, ptr %retval, align 8
  br label %return

for.inc:                                          ; preds = %if.end10
  %11 = load i64, ptr %i, align 8
  %inc = add i64 %11, 1
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %12 = load ptr, ptr %return_value, align 8
  store ptr %12, ptr %retval, align 8
  br label %return

sw.bb15:                                          ; preds = %entry
  %13 = load ptr, ptr %value.addr, align 8
  %call16 = call ptr @json_value_get_object(ptr noundef %13)
  store ptr %call16, ptr %temp_object, align 8
  %call17 = call ptr @json_value_init_object()
  store ptr %call17, ptr %return_value, align 8
  %tobool.not = icmp eq ptr %call17, null
  br i1 %tobool.not, label %if.then18, label %if.end19

if.then18:                                        ; preds = %sw.bb15
  store ptr null, ptr %retval, align 8
  br label %return

if.end19:                                         ; preds = %sw.bb15
  %14 = load ptr, ptr %return_value, align 8
  %call20 = call ptr @json_value_get_object(ptr noundef %14)
  store ptr %call20, ptr %temp_object_copy, align 8
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc39, %if.end19
  %storemerge = phi i64 [ 0, %if.end19 ], [ %inc40, %for.inc39 ]
  store i64 %storemerge, ptr %i, align 8
  %15 = load ptr, ptr %temp_object, align 8
  %call22 = call i64 @json_object_get_count(ptr noundef %15)
  %cmp23 = icmp ult i64 %storemerge, %call22
  br i1 %cmp23, label %for.body24, label %for.end41

for.body24:                                       ; preds = %for.cond21
  %16 = load ptr, ptr %temp_object, align 8
  %17 = load i64, ptr %i, align 8
  %call25 = call ptr @json_object_get_name(ptr noundef %16, i64 noundef %17)
  store ptr %call25, ptr %temp_key, align 8
  %call26 = call ptr @json_object_get_value(ptr noundef %16, ptr noundef %call25)
  %call27 = call ptr @json_value_deep_copy(ptr noundef %call26)
  store ptr %call27, ptr %temp_value_copy, align 8
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.then29, label %if.end30

if.then29:                                        ; preds = %for.body24
  %18 = load ptr, ptr %return_value, align 8
  call void @json_value_free(ptr noundef %18)
  store ptr null, ptr %retval, align 8
  br label %return

if.end30:                                         ; preds = %for.body24
  %19 = load ptr, ptr %temp_key, align 8
  %call31 = call ptr @parson_strdup(ptr noundef %19)
  store ptr %call31, ptr %key_copy, align 8
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end30
  %20 = load ptr, ptr %temp_value_copy, align 8
  call void @json_value_free(ptr noundef %20)
  %21 = load ptr, ptr %return_value, align 8
  call void @json_value_free(ptr noundef %21)
  store ptr null, ptr %retval, align 8
  br label %return

if.end34:                                         ; preds = %if.end30
  %22 = load ptr, ptr %temp_object_copy, align 8
  %23 = load ptr, ptr %key_copy, align 8
  %24 = load ptr, ptr %temp_value_copy, align 8
  %call35 = call i32 @json_object_add(ptr noundef %22, ptr noundef %23, ptr noundef %24)
  %cmp36.not = icmp eq i32 %call35, 0
  br i1 %cmp36.not, label %for.inc39, label %if.then37

if.then37:                                        ; preds = %if.end34
  %25 = load ptr, ptr @parson_free, align 8
  %26 = load ptr, ptr %key_copy, align 8
  call void %25(ptr noundef %26) #11
  %27 = load ptr, ptr %temp_value_copy, align 8
  call void @json_value_free(ptr noundef %27)
  %28 = load ptr, ptr %return_value, align 8
  call void @json_value_free(ptr noundef %28)
  store ptr null, ptr %retval, align 8
  br label %return

for.inc39:                                        ; preds = %if.end34
  %29 = load i64, ptr %i, align 8
  %inc40 = add i64 %29, 1
  br label %for.cond21, !llvm.loop !14

for.end41:                                        ; preds = %for.cond21
  %30 = load ptr, ptr %return_value, align 8
  store ptr %30, ptr %retval, align 8
  br label %return

sw.bb42:                                          ; preds = %entry
  %31 = load ptr, ptr %value.addr, align 8
  %call43 = call i32 @json_value_get_boolean(ptr noundef %31)
  %call44 = call ptr @json_value_init_boolean(i32 noundef %call43)
  store ptr %call44, ptr %retval, align 8
  br label %return

sw.bb45:                                          ; preds = %entry
  %32 = load ptr, ptr %value.addr, align 8
  %call46 = call double @json_value_get_number(ptr noundef %32)
  %call47 = call ptr @json_value_init_number(double noundef %call46)
  store ptr %call47, ptr %retval, align 8
  br label %return

sw.bb48:                                          ; preds = %entry
  %33 = load ptr, ptr %value.addr, align 8
  %call49 = call ptr @json_value_get_string_desc(ptr noundef %33)
  store ptr %call49, ptr %temp_string, align 8
  %cmp50 = icmp eq ptr %call49, null
  br i1 %cmp50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %sw.bb48
  store ptr null, ptr %retval, align 8
  br label %return

if.end52:                                         ; preds = %sw.bb48
  %34 = load ptr, ptr %temp_string, align 8
  %35 = load ptr, ptr %34, align 8
  %length = getelementptr inbounds %struct.json_string, ptr %34, i64 0, i32 1
  %36 = load i64, ptr %length, align 8
  %call53 = call ptr @parson_strndup(ptr noundef %35, i64 noundef %36)
  store ptr %call53, ptr %temp_string_copy, align 8
  %cmp54 = icmp eq ptr %call53, null
  br i1 %cmp54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.end52
  store ptr null, ptr %retval, align 8
  br label %return

if.end56:                                         ; preds = %if.end52
  %37 = load ptr, ptr %temp_string_copy, align 8
  %38 = load ptr, ptr %temp_string, align 8
  %length57 = getelementptr inbounds %struct.json_string, ptr %38, i64 0, i32 1
  %39 = load i64, ptr %length57, align 8
  %call58 = call ptr @json_value_init_string_no_copy(ptr noundef %37, i64 noundef %39)
  store ptr %call58, ptr %return_value, align 8
  %cmp59 = icmp eq ptr %call58, null
  br i1 %cmp59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.end56
  %40 = load ptr, ptr @parson_free, align 8
  %41 = load ptr, ptr %temp_string_copy, align 8
  call void %40(ptr noundef %41) #11
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %if.end56
  %42 = load ptr, ptr %return_value, align 8
  store ptr %42, ptr %retval, align 8
  br label %return

sw.bb62:                                          ; preds = %entry
  %call63 = call ptr @json_value_init_null()
  store ptr %call63, ptr %retval, align 8
  br label %return

sw.bb64:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

sw.default:                                       ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %sw.default, %sw.bb64, %sw.bb62, %if.end61, %if.then55, %if.then51, %sw.bb45, %sw.bb42, %for.end41, %if.then37, %if.then33, %if.then29, %if.then18, %for.end, %if.then13, %if.then9, %if.then
  %43 = load ptr, ptr %retval, align 8
  ret ptr %43
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @json_array_add(ptr noundef %array, ptr noundef %value) #0 {
entry:
  %array.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8
  store ptr %value, ptr %value.addr, align 8
  %count = getelementptr inbounds %struct.json_array_t, ptr %array, i64 0, i32 2
  %0 = load i64, ptr %count, align 8
  %capacity = getelementptr inbounds %struct.json_array_t, ptr %array, i64 0, i32 3
  %1 = load i64, ptr %capacity, align 8
  %cmp.not = icmp ult i64 %0, %1
  br i1 %cmp.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %array.addr, align 8
  %capacity1 = getelementptr inbounds %struct.json_array_t, ptr %2, i64 0, i32 3
  %3 = load i64, ptr %capacity1, align 8
  %mul = shl i64 %3, 1
  %cmp2 = icmp ugt i64 %mul, 16
  br i1 %cmp2, label %cond.true, label %cond.end

cond.true:                                        ; preds = %if.then
  %4 = load ptr, ptr %array.addr, align 8
  %capacity3 = getelementptr inbounds %struct.json_array_t, ptr %4, i64 0, i32 3
  %5 = load i64, ptr %capacity3, align 8
  %mul4 = shl i64 %5, 1
  br label %cond.end

cond.end:                                         ; preds = %if.then, %cond.true
  %cond = phi i64 [ %mul4, %cond.true ], [ 16, %if.then ]
  %6 = load ptr, ptr %array.addr, align 8
  %call = call i32 @json_array_resize(ptr noundef %6, i64 noundef %cond)
  %cmp5.not = icmp eq i32 %call, 0
  br i1 %cmp5.not, label %if.end7, label %return

if.end7:                                          ; preds = %cond.end, %entry
  %7 = load ptr, ptr %array.addr, align 8
  %call8 = call ptr @json_array_get_wrapping_value(ptr noundef %7)
  %8 = load ptr, ptr %value.addr, align 8
  store ptr %call8, ptr %8, align 8
  %items = getelementptr inbounds %struct.json_array_t, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %items, align 8
  %count9 = getelementptr inbounds %struct.json_array_t, ptr %7, i64 0, i32 2
  %10 = load i64, ptr %count9, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %9, i64 %10
  store ptr %8, ptr %arrayidx, align 8
  %11 = load ptr, ptr %array.addr, align 8
  %count10 = getelementptr inbounds %struct.json_array_t, ptr %11, i64 0, i32 2
  %12 = load i64, ptr %count10, align 8
  %inc = add i64 %12, 1
  store i64 %inc, ptr %count10, align 8
  br label %return

return:                                           ; preds = %cond.end, %if.end7
  %storemerge = phi i32 [ 0, %if.end7 ], [ -1, %cond.end ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @json_object_add(ptr noundef %object, ptr noundef %name, ptr noundef %value) #0 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %hash = alloca i64, align 8
  %found = alloca i32, align 4
  %cell_ix = alloca i64, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store ptr %value, ptr %value.addr, align 8
  store i64 0, ptr %hash, align 8
  store i32 0, ptr %found, align 4
  store i64 0, ptr %cell_ix, align 8
  %tobool.not = icmp eq ptr %object, null
  %0 = load ptr, ptr %name.addr, align 8
  %tobool1.not = icmp eq ptr %0, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  %1 = load ptr, ptr %value.addr, align 8
  %tobool3.not = icmp eq ptr %1, null
  %or.cond1 = select i1 %or.cond, i1 true, i1 %tobool3.not
  br i1 %or.cond1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %name.addr, align 8
  %call = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #11
  %call4 = call i64 @hash_string(ptr noundef %2, i64 noundef %call)
  store i64 %call4, ptr %hash, align 8
  store i32 0, ptr %found, align 4
  %3 = load ptr, ptr %object.addr, align 8
  %call5 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #11
  %call6 = call i64 @json_object_get_cell_ix(ptr noundef %3, ptr noundef %2, i64 noundef %call5, i64 noundef %call4, ptr noundef nonnull %found)
  store i64 %call6, ptr %cell_ix, align 8
  %4 = load i32, ptr %found, align 4
  %tobool7.not = icmp eq i32 %4, 0
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end
  %5 = load ptr, ptr %object.addr, align 8
  %count = getelementptr inbounds %struct.json_object_t, ptr %5, i64 0, i32 6
  %6 = load i64, ptr %count, align 8
  %item_capacity = getelementptr inbounds %struct.json_object_t, ptr %5, i64 0, i32 7
  %7 = load i64, ptr %item_capacity, align 8
  %cmp.not = icmp ult i64 %6, %7
  br i1 %cmp.not, label %if.end17, label %if.then10

if.then10:                                        ; preds = %if.end9
  %8 = load ptr, ptr %object.addr, align 8
  %call11 = call i32 @json_object_grow_and_rehash(ptr noundef %8)
  %cmp12.not = icmp eq i32 %call11, 0
  br i1 %cmp12.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.then10
  store i32 -1, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.then10
  %9 = load ptr, ptr %object.addr, align 8
  %10 = load ptr, ptr %name.addr, align 8
  %call15 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %10) #11
  %11 = load i64, ptr %hash, align 8
  %call16 = call i64 @json_object_get_cell_ix(ptr noundef %9, ptr noundef %10, i64 noundef %call15, i64 noundef %11, ptr noundef nonnull %found)
  store i64 %call16, ptr %cell_ix, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.end14, %if.end9
  %12 = load ptr, ptr %name.addr, align 8
  %13 = load ptr, ptr %object.addr, align 8
  %names = getelementptr inbounds %struct.json_object_t, ptr %13, i64 0, i32 3
  %14 = load ptr, ptr %names, align 8
  %count18 = getelementptr inbounds %struct.json_object_t, ptr %13, i64 0, i32 6
  %15 = load i64, ptr %count18, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %14, i64 %15
  store ptr %12, ptr %arrayidx, align 8
  %16 = load ptr, ptr %object.addr, align 8
  %count19 = getelementptr inbounds %struct.json_object_t, ptr %16, i64 0, i32 6
  %17 = load i64, ptr %count19, align 8
  %cells = getelementptr inbounds %struct.json_object_t, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %cells, align 8
  %19 = load i64, ptr %cell_ix, align 8
  %arrayidx20 = getelementptr inbounds i64, ptr %18, i64 %19
  store i64 %17, ptr %arrayidx20, align 8
  %20 = load ptr, ptr %value.addr, align 8
  %21 = load ptr, ptr %object.addr, align 8
  %values = getelementptr inbounds %struct.json_object_t, ptr %21, i64 0, i32 4
  %22 = load ptr, ptr %values, align 8
  %count21 = getelementptr inbounds %struct.json_object_t, ptr %21, i64 0, i32 6
  %23 = load i64, ptr %count21, align 8
  %arrayidx22 = getelementptr inbounds ptr, ptr %22, i64 %23
  store ptr %20, ptr %arrayidx22, align 8
  %24 = load i64, ptr %cell_ix, align 8
  %25 = load ptr, ptr %object.addr, align 8
  %cell_ixs = getelementptr inbounds %struct.json_object_t, ptr %25, i64 0, i32 5
  %26 = load ptr, ptr %cell_ixs, align 8
  %count23 = getelementptr inbounds %struct.json_object_t, ptr %25, i64 0, i32 6
  %27 = load i64, ptr %count23, align 8
  %arrayidx24 = getelementptr inbounds i64, ptr %26, i64 %27
  store i64 %24, ptr %arrayidx24, align 8
  %28 = load i64, ptr %hash, align 8
  %29 = load ptr, ptr %object.addr, align 8
  %hashes = getelementptr inbounds %struct.json_object_t, ptr %29, i64 0, i32 2
  %30 = load ptr, ptr %hashes, align 8
  %count25 = getelementptr inbounds %struct.json_object_t, ptr %29, i64 0, i32 6
  %31 = load i64, ptr %count25, align 8
  %arrayidx26 = getelementptr inbounds i64, ptr %30, i64 %31
  store i64 %28, ptr %arrayidx26, align 8
  %32 = load ptr, ptr %object.addr, align 8
  %count27 = getelementptr inbounds %struct.json_object_t, ptr %32, i64 0, i32 6
  %33 = load i64, ptr %count27, align 8
  %inc = add i64 %33, 1
  store i64 %inc, ptr %count27, align 8
  %call28 = call ptr @json_object_get_wrapping_value(ptr noundef %32)
  %34 = load ptr, ptr %value.addr, align 8
  store ptr %call28, ptr %34, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end17, %if.then13, %if.then8, %if.then
  %35 = load i32, ptr %retval, align 4
  ret i32 %35
}

; Function Attrs: nounwind ssp uwtable
define i64 @json_serialization_size(ptr noundef %value) #0 {
entry:
  %num_buf = alloca [64 x i8], align 1
  %res = alloca i32, align 4
  %call = call i32 @json_serialize_to_buffer_r(ptr noundef %value, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %num_buf)
  store i32 %call, ptr %res, align 4
  %cmp = icmp slt i32 %call, 0
  %0 = load i32, ptr %res, align 4
  %conv = sext i32 %0 to i64
  %add = add nsw i64 %conv, 1
  %cond = select i1 %cmp, i64 0, i64 %add
  ret i64 %cond
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @json_serialize_to_buffer_r(ptr noundef %value, ptr noundef %buf, i32 noundef %level, i32 noundef %is_pretty, ptr noundef %num_buf) #0 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %level.addr = alloca i32, align 4
  %is_pretty.addr = alloca i32, align 4
  %num_buf.addr = alloca ptr, align 8
  %key = alloca ptr, align 8
  %string = alloca ptr, align 8
  %array = alloca ptr, align 8
  %object = alloca ptr, align 8
  %i = alloca i64, align 8
  %count = alloca i64, align 8
  %num = alloca double, align 8
  %written = alloca i32, align 4
  %written_total = alloca i32, align 4
  %level_i = alloca i32, align 4
  %level_i102 = alloca i32, align 4
  %level_i185 = alloca i32, align 4
  %level_i308 = alloca i32, align 4
  store ptr %value, ptr %value.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %level, ptr %level.addr, align 4
  store i32 %is_pretty, ptr %is_pretty.addr, align 4
  store ptr %num_buf, ptr %num_buf.addr, align 8
  store ptr null, ptr %key, align 8
  store ptr null, ptr %string, align 8
  store ptr null, ptr %array, align 8
  store ptr null, ptr %object, align 8
  store i64 0, ptr %i, align 8
  store i64 0, ptr %count, align 8
  store double 0.000000e+00, ptr %num, align 8
  store i32 -1, ptr %written, align 4
  store i32 0, ptr %written_total, align 4
  %0 = load ptr, ptr %value.addr, align 8
  %call = call i32 @json_value_get_type(ptr noundef %0)
  switch i32 %call, label %sw.default [
    i32 5, label %sw.bb
    i32 4, label %sw.bb138
    i32 2, label %sw.bb344
    i32 6, label %sw.bb363
    i32 3, label %sw.bb394
    i32 1, label %do.body419
    i32 -1, label %sw.bb432
  ]

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %value.addr, align 8
  %call1 = call ptr @json_value_get_array(ptr noundef %1)
  store ptr %call1, ptr %array, align 8
  %call2 = call i64 @json_array_get_count(ptr noundef %call1)
  store i64 %call2, ptr %count, align 8
  store i32 1, ptr %written, align 4
  %2 = load ptr, ptr %buf.addr, align 8
  %cmp.not = icmp eq ptr %2, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  %3 = load ptr, ptr %buf.addr, align 8
  %4 = load i32, ptr %written, align 4
  %conv = sext i32 %4 to i64
  %5 = call i64 @llvm.objectsize.i64.p0(ptr %3, i1 false, i1 true, i1 false)
  %call3 = call ptr @__memcpy_chk(ptr noundef %3, ptr noundef nonnull @.str.11, i64 noundef %conv, i64 noundef %5) #11
  %6 = load ptr, ptr %buf.addr, align 8
  %7 = load i32, ptr %written, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 %idxprom
  store i8 0, ptr %arrayidx, align 1
  %8 = load i32, ptr %written, align 4
  %9 = load ptr, ptr %buf.addr, align 8
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %idx.ext
  store ptr %add.ptr, ptr %buf.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %10 = load i32, ptr %written, align 4
  %11 = load i32, ptr %written_total, align 4
  %add = add nsw i32 %11, %10
  store i32 %add, ptr %written_total, align 4
  %12 = load i64, ptr %count, align 8
  %cmp4.not = icmp eq i64 %12, 0
  %13 = load i32, ptr %is_pretty.addr, align 4
  %tobool.not = icmp eq i32 %13, 0
  %or.cond = select i1 %cmp4.not, i1 true, i1 %tobool.not
  br i1 %or.cond, label %if.end20, label %do.body7

do.body7:                                         ; preds = %if.end
  store i32 1, ptr %written, align 4
  %14 = load ptr, ptr %buf.addr, align 8
  %cmp8.not = icmp eq ptr %14, null
  br i1 %cmp8.not, label %if.end17, label %if.then10

if.then10:                                        ; preds = %do.body7
  %15 = load ptr, ptr %buf.addr, align 8
  %16 = load i32, ptr %written, align 4
  %conv11 = sext i32 %16 to i64
  %17 = call i64 @llvm.objectsize.i64.p0(ptr %15, i1 false, i1 true, i1 false)
  %call12 = call ptr @__memcpy_chk(ptr noundef %15, ptr noundef nonnull @.str.3, i64 noundef %conv11, i64 noundef %17) #11
  %18 = load ptr, ptr %buf.addr, align 8
  %19 = load i32, ptr %written, align 4
  %idxprom13 = sext i32 %19 to i64
  %arrayidx14 = getelementptr inbounds i8, ptr %18, i64 %idxprom13
  store i8 0, ptr %arrayidx14, align 1
  %20 = load i32, ptr %written, align 4
  %21 = load ptr, ptr %buf.addr, align 8
  %idx.ext15 = sext i32 %20 to i64
  %add.ptr16 = getelementptr inbounds i8, ptr %21, i64 %idx.ext15
  store ptr %add.ptr16, ptr %buf.addr, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then10, %do.body7
  %22 = load i32, ptr %written, align 4
  %23 = load i32, ptr %written_total, align 4
  %add18 = add nsw i32 %23, %22
  store i32 %add18, ptr %written_total, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end17, %if.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc93, %if.end20
  %storemerge4 = phi i64 [ 0, %if.end20 ], [ %inc94, %for.inc93 ]
  store i64 %storemerge4, ptr %i, align 8
  %24 = load i64, ptr %count, align 8
  %cmp21 = icmp ult i64 %storemerge4, %24
  br i1 %cmp21, label %for.body, label %for.end95

for.body:                                         ; preds = %for.cond
  %25 = load i32, ptr %is_pretty.addr, align 4
  %tobool23.not = icmp eq i32 %25, 0
  br i1 %tobool23.not, label %if.end45, label %for.cond26

for.cond26:                                       ; preds = %for.body, %if.end41
  %storemerge6 = phi i32 [ %inc, %if.end41 ], [ 0, %for.body ]
  store i32 %storemerge6, ptr %level_i, align 4
  %26 = load i32, ptr %level.addr, align 4
  %cmp28.not = icmp sgt i32 %storemerge6, %26
  br i1 %cmp28.not, label %if.end45, label %do.body31

do.body31:                                        ; preds = %for.cond26
  store i32 4, ptr %written, align 4
  %27 = load ptr, ptr %buf.addr, align 8
  %cmp32.not = icmp eq ptr %27, null
  br i1 %cmp32.not, label %if.end41, label %if.then34

if.then34:                                        ; preds = %do.body31
  %28 = load ptr, ptr %buf.addr, align 8
  %29 = load i32, ptr %written, align 4
  %conv35 = sext i32 %29 to i64
  %30 = call i64 @llvm.objectsize.i64.p0(ptr %28, i1 false, i1 true, i1 false)
  %call36 = call ptr @__memcpy_chk(ptr noundef %28, ptr noundef nonnull @.str.12, i64 noundef %conv35, i64 noundef %30) #11
  %31 = load ptr, ptr %buf.addr, align 8
  %32 = load i32, ptr %written, align 4
  %idxprom37 = sext i32 %32 to i64
  %arrayidx38 = getelementptr inbounds i8, ptr %31, i64 %idxprom37
  store i8 0, ptr %arrayidx38, align 1
  %33 = load i32, ptr %written, align 4
  %34 = load ptr, ptr %buf.addr, align 8
  %idx.ext39 = sext i32 %33 to i64
  %add.ptr40 = getelementptr inbounds i8, ptr %34, i64 %idx.ext39
  store ptr %add.ptr40, ptr %buf.addr, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.then34, %do.body31
  %35 = load i32, ptr %written, align 4
  %36 = load i32, ptr %written_total, align 4
  %add42 = add nsw i32 %36, %35
  store i32 %add42, ptr %written_total, align 4
  %37 = load i32, ptr %level_i, align 4
  %inc = add nsw i32 %37, 1
  br label %for.cond26, !llvm.loop !15

if.end45:                                         ; preds = %for.cond26, %for.body
  %38 = load ptr, ptr %array, align 8
  %39 = load i64, ptr %i, align 8
  %call46 = call ptr @json_array_get_value(ptr noundef %38, i64 noundef %39)
  %40 = load ptr, ptr %buf.addr, align 8
  %41 = load i32, ptr %level.addr, align 4
  %add47 = add nsw i32 %41, 1
  %42 = load i32, ptr %is_pretty.addr, align 4
  %43 = load ptr, ptr %num_buf.addr, align 8
  %call48 = call i32 @json_serialize_to_buffer_r(ptr noundef %call46, ptr noundef %40, i32 noundef %add47, i32 noundef %42, ptr noundef %43)
  store i32 %call48, ptr %written, align 4
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end45
  store i32 -1, ptr %retval, align 4
  br label %return

if.end52:                                         ; preds = %if.end45
  %44 = load ptr, ptr %buf.addr, align 8
  %cmp53.not = icmp eq ptr %44, null
  br i1 %cmp53.not, label %if.end58, label %if.then55

if.then55:                                        ; preds = %if.end52
  %45 = load i32, ptr %written, align 4
  %46 = load ptr, ptr %buf.addr, align 8
  %idx.ext56 = sext i32 %45 to i64
  %add.ptr57 = getelementptr inbounds i8, ptr %46, i64 %idx.ext56
  store ptr %add.ptr57, ptr %buf.addr, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %if.end52
  %47 = load i32, ptr %written, align 4
  %48 = load i32, ptr %written_total, align 4
  %add59 = add nsw i32 %48, %47
  store i32 %add59, ptr %written_total, align 4
  %49 = load i64, ptr %i, align 8
  %50 = load i64, ptr %count, align 8
  %sub = add i64 %50, -1
  %cmp60 = icmp ult i64 %49, %sub
  br i1 %cmp60, label %do.body63, label %if.end76

do.body63:                                        ; preds = %if.end58
  store i32 1, ptr %written, align 4
  %51 = load ptr, ptr %buf.addr, align 8
  %cmp64.not = icmp eq ptr %51, null
  br i1 %cmp64.not, label %if.end73, label %if.then66

if.then66:                                        ; preds = %do.body63
  %52 = load ptr, ptr %buf.addr, align 8
  %53 = load i32, ptr %written, align 4
  %conv67 = sext i32 %53 to i64
  %54 = call i64 @llvm.objectsize.i64.p0(ptr %52, i1 false, i1 true, i1 false)
  %call68 = call ptr @__memcpy_chk(ptr noundef %52, ptr noundef nonnull @.str.13, i64 noundef %conv67, i64 noundef %54) #11
  %55 = load ptr, ptr %buf.addr, align 8
  %56 = load i32, ptr %written, align 4
  %idxprom69 = sext i32 %56 to i64
  %arrayidx70 = getelementptr inbounds i8, ptr %55, i64 %idxprom69
  store i8 0, ptr %arrayidx70, align 1
  %57 = load i32, ptr %written, align 4
  %58 = load ptr, ptr %buf.addr, align 8
  %idx.ext71 = sext i32 %57 to i64
  %add.ptr72 = getelementptr inbounds i8, ptr %58, i64 %idx.ext71
  store ptr %add.ptr72, ptr %buf.addr, align 8
  br label %if.end73

if.end73:                                         ; preds = %if.then66, %do.body63
  %59 = load i32, ptr %written, align 4
  %60 = load i32, ptr %written_total, align 4
  %add74 = add nsw i32 %60, %59
  store i32 %add74, ptr %written_total, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.end73, %if.end58
  %61 = load i32, ptr %is_pretty.addr, align 4
  %tobool77.not = icmp eq i32 %61, 0
  br i1 %tobool77.not, label %for.inc93, label %do.body79

do.body79:                                        ; preds = %if.end76
  store i32 1, ptr %written, align 4
  %62 = load ptr, ptr %buf.addr, align 8
  %cmp80.not = icmp eq ptr %62, null
  br i1 %cmp80.not, label %if.end89, label %if.then82

if.then82:                                        ; preds = %do.body79
  %63 = load ptr, ptr %buf.addr, align 8
  %64 = load i32, ptr %written, align 4
  %conv83 = sext i32 %64 to i64
  %65 = call i64 @llvm.objectsize.i64.p0(ptr %63, i1 false, i1 true, i1 false)
  %call84 = call ptr @__memcpy_chk(ptr noundef %63, ptr noundef nonnull @.str.3, i64 noundef %conv83, i64 noundef %65) #11
  %66 = load ptr, ptr %buf.addr, align 8
  %67 = load i32, ptr %written, align 4
  %idxprom85 = sext i32 %67 to i64
  %arrayidx86 = getelementptr inbounds i8, ptr %66, i64 %idxprom85
  store i8 0, ptr %arrayidx86, align 1
  %68 = load i32, ptr %written, align 4
  %69 = load ptr, ptr %buf.addr, align 8
  %idx.ext87 = sext i32 %68 to i64
  %add.ptr88 = getelementptr inbounds i8, ptr %69, i64 %idx.ext87
  store ptr %add.ptr88, ptr %buf.addr, align 8
  br label %if.end89

if.end89:                                         ; preds = %if.then82, %do.body79
  %70 = load i32, ptr %written, align 4
  %71 = load i32, ptr %written_total, align 4
  %add90 = add nsw i32 %71, %70
  store i32 %add90, ptr %written_total, align 4
  br label %for.inc93

for.inc93:                                        ; preds = %if.end76, %if.end89
  %72 = load i64, ptr %i, align 8
  %inc94 = add i64 %72, 1
  br label %for.cond, !llvm.loop !16

for.end95:                                        ; preds = %for.cond
  %73 = load i64, ptr %count, align 8
  %cmp96.not = icmp eq i64 %73, 0
  %74 = load i32, ptr %is_pretty.addr, align 4
  %tobool99.not = icmp eq i32 %74, 0
  %or.cond7 = select i1 %cmp96.not, i1 true, i1 %tobool99.not
  br i1 %or.cond7, label %do.body125, label %for.cond103

for.cond103:                                      ; preds = %for.end95, %if.end117
  %storemerge5 = phi i32 [ %inc121, %if.end117 ], [ 0, %for.end95 ]
  store i32 %storemerge5, ptr %level_i102, align 4
  %75 = load i32, ptr %level.addr, align 4
  %cmp104 = icmp slt i32 %storemerge5, %75
  br i1 %cmp104, label %do.body107, label %do.body125

do.body107:                                       ; preds = %for.cond103
  store i32 4, ptr %written, align 4
  %76 = load ptr, ptr %buf.addr, align 8
  %cmp108.not = icmp eq ptr %76, null
  br i1 %cmp108.not, label %if.end117, label %if.then110

if.then110:                                       ; preds = %do.body107
  %77 = load ptr, ptr %buf.addr, align 8
  %78 = load i32, ptr %written, align 4
  %conv111 = sext i32 %78 to i64
  %79 = call i64 @llvm.objectsize.i64.p0(ptr %77, i1 false, i1 true, i1 false)
  %call112 = call ptr @__memcpy_chk(ptr noundef %77, ptr noundef nonnull @.str.12, i64 noundef %conv111, i64 noundef %79) #11
  %80 = load ptr, ptr %buf.addr, align 8
  %81 = load i32, ptr %written, align 4
  %idxprom113 = sext i32 %81 to i64
  %arrayidx114 = getelementptr inbounds i8, ptr %80, i64 %idxprom113
  store i8 0, ptr %arrayidx114, align 1
  %82 = load i32, ptr %written, align 4
  %83 = load ptr, ptr %buf.addr, align 8
  %idx.ext115 = sext i32 %82 to i64
  %add.ptr116 = getelementptr inbounds i8, ptr %83, i64 %idx.ext115
  store ptr %add.ptr116, ptr %buf.addr, align 8
  br label %if.end117

if.end117:                                        ; preds = %if.then110, %do.body107
  %84 = load i32, ptr %written, align 4
  %85 = load i32, ptr %written_total, align 4
  %add118 = add nsw i32 %85, %84
  store i32 %add118, ptr %written_total, align 4
  %86 = load i32, ptr %level_i102, align 4
  %inc121 = add nsw i32 %86, 1
  br label %for.cond103, !llvm.loop !17

do.body125:                                       ; preds = %for.end95, %for.cond103
  store i32 1, ptr %written, align 4
  %87 = load ptr, ptr %buf.addr, align 8
  %cmp126.not = icmp eq ptr %87, null
  br i1 %cmp126.not, label %if.end135, label %if.then128

if.then128:                                       ; preds = %do.body125
  %88 = load ptr, ptr %buf.addr, align 8
  %89 = load i32, ptr %written, align 4
  %conv129 = sext i32 %89 to i64
  %90 = call i64 @llvm.objectsize.i64.p0(ptr %88, i1 false, i1 true, i1 false)
  %call130 = call ptr @__memcpy_chk(ptr noundef %88, ptr noundef nonnull @.str.14, i64 noundef %conv129, i64 noundef %90) #11
  %91 = load ptr, ptr %buf.addr, align 8
  %92 = load i32, ptr %written, align 4
  %idxprom131 = sext i32 %92 to i64
  %arrayidx132 = getelementptr inbounds i8, ptr %91, i64 %idxprom131
  store i8 0, ptr %arrayidx132, align 1
  %93 = load i32, ptr %written, align 4
  %94 = load ptr, ptr %buf.addr, align 8
  %idx.ext133 = sext i32 %93 to i64
  %add.ptr134 = getelementptr inbounds i8, ptr %94, i64 %idx.ext133
  store ptr %add.ptr134, ptr %buf.addr, align 8
  br label %if.end135

if.end135:                                        ; preds = %if.then128, %do.body125
  %95 = load i32, ptr %written, align 4
  %96 = load i32, ptr %written_total, align 4
  %add136 = add nsw i32 %96, %95
  store i32 %add136, ptr %written_total, align 4
  %97 = load i32, ptr %written_total, align 4
  store i32 %97, ptr %retval, align 4
  br label %return

sw.bb138:                                         ; preds = %entry
  %98 = load ptr, ptr %value.addr, align 8
  %call139 = call ptr @json_value_get_object(ptr noundef %98)
  store ptr %call139, ptr %object, align 8
  %call140 = call i64 @json_object_get_count(ptr noundef %call139)
  store i64 %call140, ptr %count, align 8
  store i32 1, ptr %written, align 4
  %99 = load ptr, ptr %buf.addr, align 8
  %cmp142.not = icmp eq ptr %99, null
  br i1 %cmp142.not, label %if.end151, label %if.then144

if.then144:                                       ; preds = %sw.bb138
  %100 = load ptr, ptr %buf.addr, align 8
  %101 = load i32, ptr %written, align 4
  %conv145 = sext i32 %101 to i64
  %102 = call i64 @llvm.objectsize.i64.p0(ptr %100, i1 false, i1 true, i1 false)
  %call146 = call ptr @__memcpy_chk(ptr noundef %100, ptr noundef nonnull @.str.15, i64 noundef %conv145, i64 noundef %102) #11
  %103 = load ptr, ptr %buf.addr, align 8
  %104 = load i32, ptr %written, align 4
  %idxprom147 = sext i32 %104 to i64
  %arrayidx148 = getelementptr inbounds i8, ptr %103, i64 %idxprom147
  store i8 0, ptr %arrayidx148, align 1
  %105 = load i32, ptr %written, align 4
  %106 = load ptr, ptr %buf.addr, align 8
  %idx.ext149 = sext i32 %105 to i64
  %add.ptr150 = getelementptr inbounds i8, ptr %106, i64 %idx.ext149
  store ptr %add.ptr150, ptr %buf.addr, align 8
  br label %if.end151

if.end151:                                        ; preds = %if.then144, %sw.bb138
  %107 = load i32, ptr %written, align 4
  %108 = load i32, ptr %written_total, align 4
  %add152 = add nsw i32 %108, %107
  store i32 %add152, ptr %written_total, align 4
  %109 = load i64, ptr %count, align 8
  %cmp154.not = icmp eq i64 %109, 0
  %110 = load i32, ptr %is_pretty.addr, align 4
  %tobool157.not = icmp eq i32 %110, 0
  %or.cond8 = select i1 %cmp154.not, i1 true, i1 %tobool157.not
  br i1 %or.cond8, label %if.end172, label %do.body159

do.body159:                                       ; preds = %if.end151
  store i32 1, ptr %written, align 4
  %111 = load ptr, ptr %buf.addr, align 8
  %cmp160.not = icmp eq ptr %111, null
  br i1 %cmp160.not, label %if.end169, label %if.then162

if.then162:                                       ; preds = %do.body159
  %112 = load ptr, ptr %buf.addr, align 8
  %113 = load i32, ptr %written, align 4
  %conv163 = sext i32 %113 to i64
  %114 = call i64 @llvm.objectsize.i64.p0(ptr %112, i1 false, i1 true, i1 false)
  %call164 = call ptr @__memcpy_chk(ptr noundef %112, ptr noundef nonnull @.str.3, i64 noundef %conv163, i64 noundef %114) #11
  %115 = load ptr, ptr %buf.addr, align 8
  %116 = load i32, ptr %written, align 4
  %idxprom165 = sext i32 %116 to i64
  %arrayidx166 = getelementptr inbounds i8, ptr %115, i64 %idxprom165
  store i8 0, ptr %arrayidx166, align 1
  %117 = load i32, ptr %written, align 4
  %118 = load ptr, ptr %buf.addr, align 8
  %idx.ext167 = sext i32 %117 to i64
  %add.ptr168 = getelementptr inbounds i8, ptr %118, i64 %idx.ext167
  store ptr %add.ptr168, ptr %buf.addr, align 8
  br label %if.end169

if.end169:                                        ; preds = %if.then162, %do.body159
  %119 = load i32, ptr %written, align 4
  %120 = load i32, ptr %written_total, align 4
  %add170 = add nsw i32 %120, %119
  store i32 %add170, ptr %written_total, align 4
  br label %if.end172

if.end172:                                        ; preds = %if.end169, %if.end151
  br label %for.cond173

for.cond173:                                      ; preds = %for.inc299, %if.end172
  %storemerge1 = phi i64 [ 0, %if.end172 ], [ %inc300, %for.inc299 ]
  store i64 %storemerge1, ptr %i, align 8
  %121 = load i64, ptr %count, align 8
  %cmp174 = icmp ult i64 %storemerge1, %121
  br i1 %cmp174, label %for.body176, label %for.end301

for.body176:                                      ; preds = %for.cond173
  %122 = load ptr, ptr %object, align 8
  %123 = load i64, ptr %i, align 8
  %call177 = call ptr @json_object_get_name(ptr noundef %122, i64 noundef %123)
  store ptr %call177, ptr %key, align 8
  %cmp178 = icmp eq ptr %call177, null
  br i1 %cmp178, label %if.then180, label %if.end181

if.then180:                                       ; preds = %for.body176
  store i32 -1, ptr %retval, align 4
  br label %return

if.end181:                                        ; preds = %for.body176
  %124 = load i32, ptr %is_pretty.addr, align 4
  %tobool182.not = icmp eq i32 %124, 0
  br i1 %tobool182.not, label %if.end208, label %for.cond186

for.cond186:                                      ; preds = %if.end181, %if.end201
  %storemerge3 = phi i32 [ %inc205, %if.end201 ], [ 0, %if.end181 ]
  store i32 %storemerge3, ptr %level_i185, align 4
  %125 = load i32, ptr %level.addr, align 4
  %cmp188.not = icmp sgt i32 %storemerge3, %125
  br i1 %cmp188.not, label %if.end208, label %do.body191

do.body191:                                       ; preds = %for.cond186
  store i32 4, ptr %written, align 4
  %126 = load ptr, ptr %buf.addr, align 8
  %cmp192.not = icmp eq ptr %126, null
  br i1 %cmp192.not, label %if.end201, label %if.then194

if.then194:                                       ; preds = %do.body191
  %127 = load ptr, ptr %buf.addr, align 8
  %128 = load i32, ptr %written, align 4
  %conv195 = sext i32 %128 to i64
  %129 = call i64 @llvm.objectsize.i64.p0(ptr %127, i1 false, i1 true, i1 false)
  %call196 = call ptr @__memcpy_chk(ptr noundef %127, ptr noundef nonnull @.str.12, i64 noundef %conv195, i64 noundef %129) #11
  %130 = load ptr, ptr %buf.addr, align 8
  %131 = load i32, ptr %written, align 4
  %idxprom197 = sext i32 %131 to i64
  %arrayidx198 = getelementptr inbounds i8, ptr %130, i64 %idxprom197
  store i8 0, ptr %arrayidx198, align 1
  %132 = load i32, ptr %written, align 4
  %133 = load ptr, ptr %buf.addr, align 8
  %idx.ext199 = sext i32 %132 to i64
  %add.ptr200 = getelementptr inbounds i8, ptr %133, i64 %idx.ext199
  store ptr %add.ptr200, ptr %buf.addr, align 8
  br label %if.end201

if.end201:                                        ; preds = %if.then194, %do.body191
  %134 = load i32, ptr %written, align 4
  %135 = load i32, ptr %written_total, align 4
  %add202 = add nsw i32 %135, %134
  store i32 %add202, ptr %written_total, align 4
  %136 = load i32, ptr %level_i185, align 4
  %inc205 = add nsw i32 %136, 1
  br label %for.cond186, !llvm.loop !18

if.end208:                                        ; preds = %for.cond186, %if.end181
  %137 = load ptr, ptr %key, align 8
  %call209 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %137) #11
  %138 = load ptr, ptr %buf.addr, align 8
  %call210 = call i32 @json_serialize_string(ptr noundef %137, i64 noundef %call209, ptr noundef %138)
  store i32 %call210, ptr %written, align 4
  %cmp211 = icmp slt i32 %call210, 0
  br i1 %cmp211, label %if.then213, label %if.end214

if.then213:                                       ; preds = %if.end208
  store i32 -1, ptr %retval, align 4
  br label %return

if.end214:                                        ; preds = %if.end208
  %139 = load ptr, ptr %buf.addr, align 8
  %cmp215.not = icmp eq ptr %139, null
  br i1 %cmp215.not, label %if.end220, label %if.then217

if.then217:                                       ; preds = %if.end214
  %140 = load i32, ptr %written, align 4
  %141 = load ptr, ptr %buf.addr, align 8
  %idx.ext218 = sext i32 %140 to i64
  %add.ptr219 = getelementptr inbounds i8, ptr %141, i64 %idx.ext218
  store ptr %add.ptr219, ptr %buf.addr, align 8
  br label %if.end220

if.end220:                                        ; preds = %if.then217, %if.end214
  %142 = load i32, ptr %written, align 4
  %143 = load i32, ptr %written_total, align 4
  %add221 = add nsw i32 %143, %142
  store i32 %add221, ptr %written_total, align 4
  store i32 1, ptr %written, align 4
  %144 = load ptr, ptr %buf.addr, align 8
  %cmp223.not = icmp eq ptr %144, null
  br i1 %cmp223.not, label %if.end232, label %if.then225

if.then225:                                       ; preds = %if.end220
  %145 = load ptr, ptr %buf.addr, align 8
  %146 = load i32, ptr %written, align 4
  %conv226 = sext i32 %146 to i64
  %147 = call i64 @llvm.objectsize.i64.p0(ptr %145, i1 false, i1 true, i1 false)
  %call227 = call ptr @__memcpy_chk(ptr noundef %145, ptr noundef nonnull @.str.16, i64 noundef %conv226, i64 noundef %147) #11
  %148 = load ptr, ptr %buf.addr, align 8
  %149 = load i32, ptr %written, align 4
  %idxprom228 = sext i32 %149 to i64
  %arrayidx229 = getelementptr inbounds i8, ptr %148, i64 %idxprom228
  store i8 0, ptr %arrayidx229, align 1
  %150 = load i32, ptr %written, align 4
  %151 = load ptr, ptr %buf.addr, align 8
  %idx.ext230 = sext i32 %150 to i64
  %add.ptr231 = getelementptr inbounds i8, ptr %151, i64 %idx.ext230
  store ptr %add.ptr231, ptr %buf.addr, align 8
  br label %if.end232

if.end232:                                        ; preds = %if.then225, %if.end220
  %152 = load i32, ptr %written, align 4
  %153 = load i32, ptr %written_total, align 4
  %add233 = add nsw i32 %153, %152
  store i32 %add233, ptr %written_total, align 4
  %154 = load i32, ptr %is_pretty.addr, align 4
  %tobool235.not = icmp eq i32 %154, 0
  br i1 %tobool235.not, label %if.end250, label %do.body237

do.body237:                                       ; preds = %if.end232
  store i32 1, ptr %written, align 4
  %155 = load ptr, ptr %buf.addr, align 8
  %cmp238.not = icmp eq ptr %155, null
  br i1 %cmp238.not, label %if.end247, label %if.then240

if.then240:                                       ; preds = %do.body237
  %156 = load ptr, ptr %buf.addr, align 8
  %157 = load i32, ptr %written, align 4
  %conv241 = sext i32 %157 to i64
  %158 = call i64 @llvm.objectsize.i64.p0(ptr %156, i1 false, i1 true, i1 false)
  %call242 = call ptr @__memcpy_chk(ptr noundef %156, ptr noundef nonnull @.str.17, i64 noundef %conv241, i64 noundef %158) #11
  %159 = load ptr, ptr %buf.addr, align 8
  %160 = load i32, ptr %written, align 4
  %idxprom243 = sext i32 %160 to i64
  %arrayidx244 = getelementptr inbounds i8, ptr %159, i64 %idxprom243
  store i8 0, ptr %arrayidx244, align 1
  %161 = load i32, ptr %written, align 4
  %162 = load ptr, ptr %buf.addr, align 8
  %idx.ext245 = sext i32 %161 to i64
  %add.ptr246 = getelementptr inbounds i8, ptr %162, i64 %idx.ext245
  store ptr %add.ptr246, ptr %buf.addr, align 8
  br label %if.end247

if.end247:                                        ; preds = %if.then240, %do.body237
  %163 = load i32, ptr %written, align 4
  %164 = load i32, ptr %written_total, align 4
  %add248 = add nsw i32 %164, %163
  store i32 %add248, ptr %written_total, align 4
  br label %if.end250

if.end250:                                        ; preds = %if.end247, %if.end232
  %165 = load ptr, ptr %object, align 8
  %166 = load i64, ptr %i, align 8
  %call251 = call ptr @json_object_get_value_at(ptr noundef %165, i64 noundef %166)
  %167 = load ptr, ptr %buf.addr, align 8
  %168 = load i32, ptr %level.addr, align 4
  %add252 = add nsw i32 %168, 1
  %169 = load i32, ptr %is_pretty.addr, align 4
  %170 = load ptr, ptr %num_buf.addr, align 8
  %call253 = call i32 @json_serialize_to_buffer_r(ptr noundef %call251, ptr noundef %167, i32 noundef %add252, i32 noundef %169, ptr noundef %170)
  store i32 %call253, ptr %written, align 4
  %cmp254 = icmp slt i32 %call253, 0
  br i1 %cmp254, label %if.then256, label %if.end257

if.then256:                                       ; preds = %if.end250
  store i32 -1, ptr %retval, align 4
  br label %return

if.end257:                                        ; preds = %if.end250
  %171 = load ptr, ptr %buf.addr, align 8
  %cmp258.not = icmp eq ptr %171, null
  br i1 %cmp258.not, label %if.end263, label %if.then260

if.then260:                                       ; preds = %if.end257
  %172 = load i32, ptr %written, align 4
  %173 = load ptr, ptr %buf.addr, align 8
  %idx.ext261 = sext i32 %172 to i64
  %add.ptr262 = getelementptr inbounds i8, ptr %173, i64 %idx.ext261
  store ptr %add.ptr262, ptr %buf.addr, align 8
  br label %if.end263

if.end263:                                        ; preds = %if.then260, %if.end257
  %174 = load i32, ptr %written, align 4
  %175 = load i32, ptr %written_total, align 4
  %add264 = add nsw i32 %175, %174
  store i32 %add264, ptr %written_total, align 4
  %176 = load i64, ptr %i, align 8
  %177 = load i64, ptr %count, align 8
  %sub265 = add i64 %177, -1
  %cmp266 = icmp ult i64 %176, %sub265
  br i1 %cmp266, label %do.body269, label %if.end282

do.body269:                                       ; preds = %if.end263
  store i32 1, ptr %written, align 4
  %178 = load ptr, ptr %buf.addr, align 8
  %cmp270.not = icmp eq ptr %178, null
  br i1 %cmp270.not, label %if.end279, label %if.then272

if.then272:                                       ; preds = %do.body269
  %179 = load ptr, ptr %buf.addr, align 8
  %180 = load i32, ptr %written, align 4
  %conv273 = sext i32 %180 to i64
  %181 = call i64 @llvm.objectsize.i64.p0(ptr %179, i1 false, i1 true, i1 false)
  %call274 = call ptr @__memcpy_chk(ptr noundef %179, ptr noundef nonnull @.str.13, i64 noundef %conv273, i64 noundef %181) #11
  %182 = load ptr, ptr %buf.addr, align 8
  %183 = load i32, ptr %written, align 4
  %idxprom275 = sext i32 %183 to i64
  %arrayidx276 = getelementptr inbounds i8, ptr %182, i64 %idxprom275
  store i8 0, ptr %arrayidx276, align 1
  %184 = load i32, ptr %written, align 4
  %185 = load ptr, ptr %buf.addr, align 8
  %idx.ext277 = sext i32 %184 to i64
  %add.ptr278 = getelementptr inbounds i8, ptr %185, i64 %idx.ext277
  store ptr %add.ptr278, ptr %buf.addr, align 8
  br label %if.end279

if.end279:                                        ; preds = %if.then272, %do.body269
  %186 = load i32, ptr %written, align 4
  %187 = load i32, ptr %written_total, align 4
  %add280 = add nsw i32 %187, %186
  store i32 %add280, ptr %written_total, align 4
  br label %if.end282

if.end282:                                        ; preds = %if.end279, %if.end263
  %188 = load i32, ptr %is_pretty.addr, align 4
  %tobool283.not = icmp eq i32 %188, 0
  br i1 %tobool283.not, label %for.inc299, label %do.body285

do.body285:                                       ; preds = %if.end282
  store i32 1, ptr %written, align 4
  %189 = load ptr, ptr %buf.addr, align 8
  %cmp286.not = icmp eq ptr %189, null
  br i1 %cmp286.not, label %if.end295, label %if.then288

if.then288:                                       ; preds = %do.body285
  %190 = load ptr, ptr %buf.addr, align 8
  %191 = load i32, ptr %written, align 4
  %conv289 = sext i32 %191 to i64
  %192 = call i64 @llvm.objectsize.i64.p0(ptr %190, i1 false, i1 true, i1 false)
  %call290 = call ptr @__memcpy_chk(ptr noundef %190, ptr noundef nonnull @.str.3, i64 noundef %conv289, i64 noundef %192) #11
  %193 = load ptr, ptr %buf.addr, align 8
  %194 = load i32, ptr %written, align 4
  %idxprom291 = sext i32 %194 to i64
  %arrayidx292 = getelementptr inbounds i8, ptr %193, i64 %idxprom291
  store i8 0, ptr %arrayidx292, align 1
  %195 = load i32, ptr %written, align 4
  %196 = load ptr, ptr %buf.addr, align 8
  %idx.ext293 = sext i32 %195 to i64
  %add.ptr294 = getelementptr inbounds i8, ptr %196, i64 %idx.ext293
  store ptr %add.ptr294, ptr %buf.addr, align 8
  br label %if.end295

if.end295:                                        ; preds = %if.then288, %do.body285
  %197 = load i32, ptr %written, align 4
  %198 = load i32, ptr %written_total, align 4
  %add296 = add nsw i32 %198, %197
  store i32 %add296, ptr %written_total, align 4
  br label %for.inc299

for.inc299:                                       ; preds = %if.end282, %if.end295
  %199 = load i64, ptr %i, align 8
  %inc300 = add i64 %199, 1
  br label %for.cond173, !llvm.loop !19

for.end301:                                       ; preds = %for.cond173
  %200 = load i64, ptr %count, align 8
  %cmp302.not = icmp eq i64 %200, 0
  %201 = load i32, ptr %is_pretty.addr, align 4
  %tobool305.not = icmp eq i32 %201, 0
  %or.cond9 = select i1 %cmp302.not, i1 true, i1 %tobool305.not
  br i1 %or.cond9, label %do.body331, label %for.cond309

for.cond309:                                      ; preds = %for.end301, %if.end323
  %storemerge2 = phi i32 [ %inc327, %if.end323 ], [ 0, %for.end301 ]
  store i32 %storemerge2, ptr %level_i308, align 4
  %202 = load i32, ptr %level.addr, align 4
  %cmp310 = icmp slt i32 %storemerge2, %202
  br i1 %cmp310, label %do.body313, label %do.body331

do.body313:                                       ; preds = %for.cond309
  store i32 4, ptr %written, align 4
  %203 = load ptr, ptr %buf.addr, align 8
  %cmp314.not = icmp eq ptr %203, null
  br i1 %cmp314.not, label %if.end323, label %if.then316

if.then316:                                       ; preds = %do.body313
  %204 = load ptr, ptr %buf.addr, align 8
  %205 = load i32, ptr %written, align 4
  %conv317 = sext i32 %205 to i64
  %206 = call i64 @llvm.objectsize.i64.p0(ptr %204, i1 false, i1 true, i1 false)
  %call318 = call ptr @__memcpy_chk(ptr noundef %204, ptr noundef nonnull @.str.12, i64 noundef %conv317, i64 noundef %206) #11
  %207 = load ptr, ptr %buf.addr, align 8
  %208 = load i32, ptr %written, align 4
  %idxprom319 = sext i32 %208 to i64
  %arrayidx320 = getelementptr inbounds i8, ptr %207, i64 %idxprom319
  store i8 0, ptr %arrayidx320, align 1
  %209 = load i32, ptr %written, align 4
  %210 = load ptr, ptr %buf.addr, align 8
  %idx.ext321 = sext i32 %209 to i64
  %add.ptr322 = getelementptr inbounds i8, ptr %210, i64 %idx.ext321
  store ptr %add.ptr322, ptr %buf.addr, align 8
  br label %if.end323

if.end323:                                        ; preds = %if.then316, %do.body313
  %211 = load i32, ptr %written, align 4
  %212 = load i32, ptr %written_total, align 4
  %add324 = add nsw i32 %212, %211
  store i32 %add324, ptr %written_total, align 4
  %213 = load i32, ptr %level_i308, align 4
  %inc327 = add nsw i32 %213, 1
  br label %for.cond309, !llvm.loop !20

do.body331:                                       ; preds = %for.end301, %for.cond309
  store i32 1, ptr %written, align 4
  %214 = load ptr, ptr %buf.addr, align 8
  %cmp332.not = icmp eq ptr %214, null
  br i1 %cmp332.not, label %if.end341, label %if.then334

if.then334:                                       ; preds = %do.body331
  %215 = load ptr, ptr %buf.addr, align 8
  %216 = load i32, ptr %written, align 4
  %conv335 = sext i32 %216 to i64
  %217 = call i64 @llvm.objectsize.i64.p0(ptr %215, i1 false, i1 true, i1 false)
  %call336 = call ptr @__memcpy_chk(ptr noundef %215, ptr noundef nonnull @.str.18, i64 noundef %conv335, i64 noundef %217) #11
  %218 = load ptr, ptr %buf.addr, align 8
  %219 = load i32, ptr %written, align 4
  %idxprom337 = sext i32 %219 to i64
  %arrayidx338 = getelementptr inbounds i8, ptr %218, i64 %idxprom337
  store i8 0, ptr %arrayidx338, align 1
  %220 = load i32, ptr %written, align 4
  %221 = load ptr, ptr %buf.addr, align 8
  %idx.ext339 = sext i32 %220 to i64
  %add.ptr340 = getelementptr inbounds i8, ptr %221, i64 %idx.ext339
  store ptr %add.ptr340, ptr %buf.addr, align 8
  br label %if.end341

if.end341:                                        ; preds = %if.then334, %do.body331
  %222 = load i32, ptr %written, align 4
  %223 = load i32, ptr %written_total, align 4
  %add342 = add nsw i32 %223, %222
  store i32 %add342, ptr %written_total, align 4
  %224 = load i32, ptr %written_total, align 4
  store i32 %224, ptr %retval, align 4
  br label %return

sw.bb344:                                         ; preds = %entry
  %225 = load ptr, ptr %value.addr, align 8
  %call345 = call ptr @json_value_get_string(ptr noundef %225)
  store ptr %call345, ptr %string, align 8
  %cmp346 = icmp eq ptr %call345, null
  br i1 %cmp346, label %if.then348, label %if.end349

if.then348:                                       ; preds = %sw.bb344
  store i32 -1, ptr %retval, align 4
  br label %return

if.end349:                                        ; preds = %sw.bb344
  %226 = load ptr, ptr %value.addr, align 8
  %call350 = call i64 @json_value_get_string_len(ptr noundef %226)
  %227 = load ptr, ptr %string, align 8
  %228 = load ptr, ptr %buf.addr, align 8
  %call351 = call i32 @json_serialize_string(ptr noundef %227, i64 noundef %call350, ptr noundef %228)
  store i32 %call351, ptr %written, align 4
  %cmp352 = icmp slt i32 %call351, 0
  br i1 %cmp352, label %if.then354, label %if.end355

if.then354:                                       ; preds = %if.end349
  store i32 -1, ptr %retval, align 4
  br label %return

if.end355:                                        ; preds = %if.end349
  %229 = load ptr, ptr %buf.addr, align 8
  %cmp356.not = icmp eq ptr %229, null
  br i1 %cmp356.not, label %if.end361, label %if.then358

if.then358:                                       ; preds = %if.end355
  %230 = load i32, ptr %written, align 4
  %231 = load ptr, ptr %buf.addr, align 8
  %idx.ext359 = sext i32 %230 to i64
  %add.ptr360 = getelementptr inbounds i8, ptr %231, i64 %idx.ext359
  store ptr %add.ptr360, ptr %buf.addr, align 8
  br label %if.end361

if.end361:                                        ; preds = %if.then358, %if.end355
  %232 = load i32, ptr %written, align 4
  %233 = load i32, ptr %written_total, align 4
  %add362 = add nsw i32 %233, %232
  store i32 %add362, ptr %written_total, align 4
  store i32 %add362, ptr %retval, align 4
  br label %return

sw.bb363:                                         ; preds = %entry
  %234 = load ptr, ptr %value.addr, align 8
  %call364 = call i32 @json_value_get_boolean(ptr noundef %234)
  %tobool365.not = icmp eq i32 %call364, 0
  br i1 %tobool365.not, label %do.body380, label %do.body367

do.body367:                                       ; preds = %sw.bb363
  store i32 4, ptr %written, align 4
  %235 = load ptr, ptr %buf.addr, align 8
  %cmp368.not = icmp eq ptr %235, null
  br i1 %cmp368.not, label %if.end377, label %if.then370

if.then370:                                       ; preds = %do.body367
  %236 = load ptr, ptr %buf.addr, align 8
  %237 = load i32, ptr %written, align 4
  %conv371 = sext i32 %237 to i64
  %238 = call i64 @llvm.objectsize.i64.p0(ptr %236, i1 false, i1 true, i1 false)
  %call372 = call ptr @__memcpy_chk(ptr noundef %236, ptr noundef nonnull @.str.6, i64 noundef %conv371, i64 noundef %238) #11
  %239 = load ptr, ptr %buf.addr, align 8
  %240 = load i32, ptr %written, align 4
  %idxprom373 = sext i32 %240 to i64
  %arrayidx374 = getelementptr inbounds i8, ptr %239, i64 %idxprom373
  store i8 0, ptr %arrayidx374, align 1
  %241 = load i32, ptr %written, align 4
  %242 = load ptr, ptr %buf.addr, align 8
  %idx.ext375 = sext i32 %241 to i64
  %add.ptr376 = getelementptr inbounds i8, ptr %242, i64 %idx.ext375
  store ptr %add.ptr376, ptr %buf.addr, align 8
  br label %if.end377

if.end377:                                        ; preds = %if.then370, %do.body367
  %243 = load i32, ptr %written, align 4
  %244 = load i32, ptr %written_total, align 4
  %add378 = add nsw i32 %244, %243
  store i32 %add378, ptr %written_total, align 4
  br label %if.end393

do.body380:                                       ; preds = %sw.bb363
  store i32 5, ptr %written, align 4
  %245 = load ptr, ptr %buf.addr, align 8
  %cmp381.not = icmp eq ptr %245, null
  br i1 %cmp381.not, label %if.end390, label %if.then383

if.then383:                                       ; preds = %do.body380
  %246 = load ptr, ptr %buf.addr, align 8
  %247 = load i32, ptr %written, align 4
  %conv384 = sext i32 %247 to i64
  %248 = call i64 @llvm.objectsize.i64.p0(ptr %246, i1 false, i1 true, i1 false)
  %call385 = call ptr @__memcpy_chk(ptr noundef %246, ptr noundef nonnull @.str.7, i64 noundef %conv384, i64 noundef %248) #11
  %249 = load ptr, ptr %buf.addr, align 8
  %250 = load i32, ptr %written, align 4
  %idxprom386 = sext i32 %250 to i64
  %arrayidx387 = getelementptr inbounds i8, ptr %249, i64 %idxprom386
  store i8 0, ptr %arrayidx387, align 1
  %251 = load i32, ptr %written, align 4
  %252 = load ptr, ptr %buf.addr, align 8
  %idx.ext388 = sext i32 %251 to i64
  %add.ptr389 = getelementptr inbounds i8, ptr %252, i64 %idx.ext388
  store ptr %add.ptr389, ptr %buf.addr, align 8
  br label %if.end390

if.end390:                                        ; preds = %if.then383, %do.body380
  %253 = load i32, ptr %written, align 4
  %254 = load i32, ptr %written_total, align 4
  %add391 = add nsw i32 %254, %253
  store i32 %add391, ptr %written_total, align 4
  br label %if.end393

if.end393:                                        ; preds = %if.end390, %if.end377
  %255 = load i32, ptr %written_total, align 4
  store i32 %255, ptr %retval, align 4
  br label %return

sw.bb394:                                         ; preds = %entry
  %256 = load ptr, ptr %value.addr, align 8
  %call395 = call double @json_value_get_number(ptr noundef %256)
  store double %call395, ptr %num, align 8
  %257 = load ptr, ptr %buf.addr, align 8
  %cmp396.not = icmp eq ptr %257, null
  br i1 %cmp396.not, label %if.end399, label %if.then398

if.then398:                                       ; preds = %sw.bb394
  %258 = load ptr, ptr %buf.addr, align 8
  store ptr %258, ptr %num_buf.addr, align 8
  br label %if.end399

if.end399:                                        ; preds = %if.then398, %sw.bb394
  %259 = load ptr, ptr @parson_number_serialization_function, align 8
  %tobool400.not = icmp eq ptr %259, null
  br i1 %tobool400.not, label %if.else403, label %if.then401

if.then401:                                       ; preds = %if.end399
  %260 = load ptr, ptr @parson_number_serialization_function, align 8
  %261 = load double, ptr %num, align 8
  %262 = load ptr, ptr %num_buf.addr, align 8
  %call402 = call i32 %260(double noundef %261, ptr noundef %262) #11
  br label %if.end406

if.else403:                                       ; preds = %if.end399
  %263 = load ptr, ptr @parson_float_format, align 8
  %tobool404.not = icmp eq ptr %263, null
  %264 = load ptr, ptr @parson_float_format, align 8
  %cond = select i1 %tobool404.not, ptr @.str.19, ptr %264
  %265 = load ptr, ptr %num_buf.addr, align 8
  %266 = load double, ptr %num, align 8
  %call405 = call i32 (ptr, ptr, ...) @pc_inline_source_snapshot_public_repos_parson_parson_10(ptr noundef %265, ptr noundef %cond, double noundef %266)
  br label %if.end406

if.end406:                                        ; preds = %if.else403, %if.then401
  %storemerge = phi i32 [ %call405, %if.else403 ], [ %call402, %if.then401 ]
  store i32 %storemerge, ptr %written, align 4
  %cmp407 = icmp slt i32 %storemerge, 0
  br i1 %cmp407, label %if.then409, label %if.end410

if.then409:                                       ; preds = %if.end406
  store i32 -1, ptr %retval, align 4
  br label %return

if.end410:                                        ; preds = %if.end406
  %267 = load ptr, ptr %buf.addr, align 8
  %cmp411.not = icmp eq ptr %267, null
  br i1 %cmp411.not, label %if.end416, label %if.then413

if.then413:                                       ; preds = %if.end410
  %268 = load i32, ptr %written, align 4
  %269 = load ptr, ptr %buf.addr, align 8
  %idx.ext414 = sext i32 %268 to i64
  %add.ptr415 = getelementptr inbounds i8, ptr %269, i64 %idx.ext414
  store ptr %add.ptr415, ptr %buf.addr, align 8
  br label %if.end416

if.end416:                                        ; preds = %if.then413, %if.end410
  %270 = load i32, ptr %written, align 4
  %271 = load i32, ptr %written_total, align 4
  %add417 = add nsw i32 %271, %270
  store i32 %add417, ptr %written_total, align 4
  store i32 %add417, ptr %retval, align 4
  br label %return

do.body419:                                       ; preds = %entry
  store i32 4, ptr %written, align 4
  %272 = load ptr, ptr %buf.addr, align 8
  %cmp420.not = icmp eq ptr %272, null
  br i1 %cmp420.not, label %if.end429, label %if.then422

if.then422:                                       ; preds = %do.body419
  %273 = load ptr, ptr %buf.addr, align 8
  %274 = load i32, ptr %written, align 4
  %conv423 = sext i32 %274 to i64
  %275 = call i64 @llvm.objectsize.i64.p0(ptr %273, i1 false, i1 true, i1 false)
  %call424 = call ptr @__memcpy_chk(ptr noundef %273, ptr noundef nonnull @.str.10, i64 noundef %conv423, i64 noundef %275) #11
  %276 = load ptr, ptr %buf.addr, align 8
  %277 = load i32, ptr %written, align 4
  %idxprom425 = sext i32 %277 to i64
  %arrayidx426 = getelementptr inbounds i8, ptr %276, i64 %idxprom425
  store i8 0, ptr %arrayidx426, align 1
  %278 = load i32, ptr %written, align 4
  %279 = load ptr, ptr %buf.addr, align 8
  %idx.ext427 = sext i32 %278 to i64
  %add.ptr428 = getelementptr inbounds i8, ptr %279, i64 %idx.ext427
  store ptr %add.ptr428, ptr %buf.addr, align 8
  br label %if.end429

if.end429:                                        ; preds = %if.then422, %do.body419
  %280 = load i32, ptr %written, align 4
  %281 = load i32, ptr %written_total, align 4
  %add430 = add nsw i32 %281, %280
  store i32 %add430, ptr %written_total, align 4
  %282 = load i32, ptr %written_total, align 4
  store i32 %282, ptr %retval, align 4
  br label %return

sw.bb432:                                         ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb432, %if.end429, %if.end416, %if.then409, %if.end393, %if.end361, %if.then354, %if.then348, %if.end341, %if.then256, %if.then213, %if.then180, %if.end135, %if.then51
  %283 = load i32, ptr %retval, align 4
  ret i32 %283
}

; Function Attrs: nounwind ssp uwtable
define i32 @json_serialize_to_buffer(ptr noundef %value, ptr noundef %buf, i64 noundef %buf_size_in_bytes) #0 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %buf_size_in_bytes.addr = alloca i64, align 8
  %needed_size_in_bytes = alloca i64, align 8
  store ptr %value, ptr %value.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %buf_size_in_bytes, ptr %buf_size_in_bytes.addr, align 8
  %call = call i64 @json_serialization_size(ptr noundef %value)
  store i64 %call, ptr %needed_size_in_bytes, align 8
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load i64, ptr %buf_size_in_bytes.addr, align 8
  %1 = load i64, ptr %needed_size_in_bytes, align 8
  %cmp1 = icmp ult i64 %0, %1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %value.addr, align 8
  %3 = load ptr, ptr %buf.addr, align 8
  %call2 = call i32 @json_serialize_to_buffer_r(ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 0, ptr noundef null)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: nounwind ssp uwtable
define i32 @json_serialize_to_file(ptr noundef %value, ptr noundef %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca ptr, align 8
  %return_code = alloca i32, align 4
  %fp = alloca ptr, align 8
  %serialized_string = alloca ptr, align 8
  store ptr %filename, ptr %filename.addr, align 8
  store i32 0, ptr %return_code, align 4
  store ptr null, ptr %fp, align 8
  %call = call ptr @json_serialize_to_string(ptr noundef %value)
  store ptr %call, ptr %serialized_string, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %filename.addr, align 8
  %call1 = call ptr @"\01_fopen"(ptr noundef %0, ptr noundef nonnull @.str.4) #11
  store ptr %call1, ptr %fp, align 8
  %cmp2 = icmp eq ptr %call1, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %1 = load ptr, ptr %serialized_string, align 8
  call void @json_free_serialized_string(ptr noundef %1)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %2 = load ptr, ptr %serialized_string, align 8
  %3 = load ptr, ptr %fp, align 8
  %call5 = call i32 @"\01_fputs"(ptr noundef %2, ptr noundef %3) #11
  %cmp6 = icmp eq i32 %call5, -1
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  store i32 -1, ptr %return_code, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end4
  %4 = load ptr, ptr %fp, align 8
  %call9 = call i32 @fclose(ptr noundef %4) #11
  %cmp10 = icmp eq i32 %call9, -1
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  store i32 -1, ptr %return_code, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end8
  %5 = load ptr, ptr %serialized_string, align 8
  call void @json_free_serialized_string(ptr noundef %5)
  %6 = load i32, ptr %return_code, align 4
  store i32 %6, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end12, %if.then3, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind ssp uwtable
define ptr @json_serialize_to_string(ptr noundef %value) #0 {
entry:
  %retval = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %buf_size_bytes = alloca i64, align 8
  %buf = alloca ptr, align 8
  store ptr %value, ptr %value.addr, align 8
  %call = call i64 @json_serialization_size(ptr noundef %value)
  store i64 %call, ptr %buf_size_bytes, align 8
  store ptr null, ptr %buf, align 8
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @parson_malloc, align 8
  %1 = load i64, ptr %buf_size_bytes, align 8
  %call1 = call ptr %0(i64 noundef %1) #11
  store ptr %call1, ptr %buf, align 8
  %cmp2 = icmp eq ptr %call1, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end4:                                          ; preds = %if.end
  %2 = load ptr, ptr %value.addr, align 8
  %3 = load ptr, ptr %buf, align 8
  %4 = load i64, ptr %buf_size_bytes, align 8
  %call5 = call i32 @json_serialize_to_buffer(ptr noundef %2, ptr noundef %3, i64 noundef %4)
  %cmp6.not = icmp eq i32 %call5, 0
  br i1 %cmp6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end4
  %5 = load ptr, ptr %buf, align 8
  call void @json_free_serialized_string(ptr noundef %5)
  store ptr null, ptr %retval, align 8
  br label %return

if.end8:                                          ; preds = %if.end4
  %6 = load ptr, ptr %buf, align 8
  store ptr %6, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end8, %if.then7, %if.then3, %if.then
  %7 = load ptr, ptr %retval, align 8
  ret ptr %7
}

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @json_free_serialized_string(ptr noundef %string) #0 {
entry:
  %0 = load ptr, ptr @parson_free, align 8
  call void %0(ptr noundef %string) #11
  ret void
}

declare i32 @"\01_fputs"(ptr noundef, ptr noundef) #1

declare i32 @fclose(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define i64 @json_serialization_size_pretty(ptr noundef %value) #0 {
entry:
  %num_buf = alloca [64 x i8], align 1
  %res = alloca i32, align 4
  %call = call i32 @json_serialize_to_buffer_r(ptr noundef %value, ptr noundef null, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %num_buf)
  store i32 %call, ptr %res, align 4
  %cmp = icmp slt i32 %call, 0
  %0 = load i32, ptr %res, align 4
  %conv = sext i32 %0 to i64
  %add = add nsw i64 %conv, 1
  %cond = select i1 %cmp, i64 0, i64 %add
  ret i64 %cond
}

; Function Attrs: nounwind ssp uwtable
define i32 @json_serialize_to_buffer_pretty(ptr noundef %value, ptr noundef %buf, i64 noundef %buf_size_in_bytes) #0 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %buf_size_in_bytes.addr = alloca i64, align 8
  %needed_size_in_bytes = alloca i64, align 8
  store ptr %value, ptr %value.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %buf_size_in_bytes, ptr %buf_size_in_bytes.addr, align 8
  %call = call i64 @json_serialization_size_pretty(ptr noundef %value)
  store i64 %call, ptr %needed_size_in_bytes, align 8
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load i64, ptr %buf_size_in_bytes.addr, align 8
  %1 = load i64, ptr %needed_size_in_bytes, align 8
  %cmp1 = icmp ult i64 %0, %1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %value.addr, align 8
  %3 = load ptr, ptr %buf.addr, align 8
  %call2 = call i32 @json_serialize_to_buffer_r(ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 1, ptr noundef null)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: nounwind ssp uwtable
define i32 @json_serialize_to_file_pretty(ptr noundef %value, ptr noundef %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca ptr, align 8
  %return_code = alloca i32, align 4
  %fp = alloca ptr, align 8
  %serialized_string = alloca ptr, align 8
  store ptr %filename, ptr %filename.addr, align 8
  store i32 0, ptr %return_code, align 4
  store ptr null, ptr %fp, align 8
  %call = call ptr @json_serialize_to_string_pretty(ptr noundef %value)
  store ptr %call, ptr %serialized_string, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %filename.addr, align 8
  %call1 = call ptr @"\01_fopen"(ptr noundef %0, ptr noundef nonnull @.str.4) #11
  store ptr %call1, ptr %fp, align 8
  %cmp2 = icmp eq ptr %call1, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %1 = load ptr, ptr %serialized_string, align 8
  call void @json_free_serialized_string(ptr noundef %1)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %2 = load ptr, ptr %serialized_string, align 8
  %3 = load ptr, ptr %fp, align 8
  %call5 = call i32 @"\01_fputs"(ptr noundef %2, ptr noundef %3) #11
  %cmp6 = icmp eq i32 %call5, -1
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  store i32 -1, ptr %return_code, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end4
  %4 = load ptr, ptr %fp, align 8
  %call9 = call i32 @fclose(ptr noundef %4) #11
  %cmp10 = icmp eq i32 %call9, -1
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  store i32 -1, ptr %return_code, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end8
  %5 = load ptr, ptr %serialized_string, align 8
  call void @json_free_serialized_string(ptr noundef %5)
  %6 = load i32, ptr %return_code, align 4
  store i32 %6, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end12, %if.then3, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind ssp uwtable
define ptr @json_serialize_to_string_pretty(ptr noundef %value) #0 {
entry:
  %retval = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %buf_size_bytes = alloca i64, align 8
  %buf = alloca ptr, align 8
  store ptr %value, ptr %value.addr, align 8
  %call = call i64 @json_serialization_size_pretty(ptr noundef %value)
  store i64 %call, ptr %buf_size_bytes, align 8
  store ptr null, ptr %buf, align 8
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @parson_malloc, align 8
  %1 = load i64, ptr %buf_size_bytes, align 8
  %call1 = call ptr %0(i64 noundef %1) #11
  store ptr %call1, ptr %buf, align 8
  %cmp2 = icmp eq ptr %call1, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end4:                                          ; preds = %if.end
  %2 = load ptr, ptr %value.addr, align 8
  %3 = load ptr, ptr %buf, align 8
  %4 = load i64, ptr %buf_size_bytes, align 8
  %call5 = call i32 @json_serialize_to_buffer_pretty(ptr noundef %2, ptr noundef %3, i64 noundef %4)
  %cmp6.not = icmp eq i32 %call5, 0
  br i1 %cmp6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end4
  %5 = load ptr, ptr %buf, align 8
  call void @json_free_serialized_string(ptr noundef %5)
  store ptr null, ptr %retval, align 8
  br label %return

if.end8:                                          ; preds = %if.end4
  %6 = load ptr, ptr %buf, align 8
  store ptr %6, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end8, %if.then7, %if.then3, %if.then
  %7 = load ptr, ptr %retval, align 8
  ret ptr %7
}

; Function Attrs: nounwind ssp uwtable
define i32 @json_array_remove(ptr noundef %array, i64 noundef %ix) #0 {
entry:
  %array.addr = alloca ptr, align 8
  %ix.addr = alloca i64, align 8
  %to_move_bytes = alloca i64, align 8
  store ptr %array, ptr %array.addr, align 8
  store i64 %ix, ptr %ix.addr, align 8
  store i64 0, ptr %to_move_bytes, align 8
  %cmp = icmp eq ptr %array, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load i64, ptr %ix.addr, align 8
  %1 = load ptr, ptr %array.addr, align 8
  %call = call i64 @json_array_get_count(ptr noundef %1)
  %cmp1.not = icmp ult i64 %0, %call
  br i1 %cmp1.not, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %array.addr, align 8
  %3 = load i64, ptr %ix.addr, align 8
  %call2 = call ptr @json_array_get_value(ptr noundef %2, i64 noundef %3)
  call void @json_value_free(ptr noundef %call2)
  %call3 = call i64 @json_array_get_count(ptr noundef %2)
  %4 = xor i64 %3, -1
  %sub4 = add i64 %call3, %4
  %mul = shl i64 %sub4, 3
  store i64 %mul, ptr %to_move_bytes, align 8
  %5 = load ptr, ptr %array.addr, align 8
  %items = getelementptr inbounds %struct.json_array_t, ptr %5, i64 0, i32 1
  %6 = load ptr, ptr %items, align 8
  %7 = load i64, ptr %ix.addr, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %6, i64 %7
  %add.ptr6 = getelementptr inbounds ptr, ptr %6, i64 %7
  %add.ptr7 = getelementptr inbounds ptr, ptr %add.ptr6, i64 1
  %8 = load i64, ptr %to_move_bytes, align 8
  %9 = load ptr, ptr %array.addr, align 8
  %items8 = getelementptr inbounds %struct.json_array_t, ptr %9, i64 0, i32 1
  %10 = load ptr, ptr %items8, align 8
  %11 = load i64, ptr %ix.addr, align 8
  %add.ptr9 = getelementptr inbounds ptr, ptr %10, i64 %11
  %12 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr9, i1 false, i1 true, i1 false)
  %call10 = call ptr @__memmove_chk(ptr noundef %add.ptr, ptr noundef nonnull %add.ptr7, i64 noundef %8, i64 noundef %12) #11
  %13 = load ptr, ptr %array.addr, align 8
  %count = getelementptr inbounds %struct.json_array_t, ptr %13, i64 0, i32 2
  %14 = load i64, ptr %count, align 8
  %sub11 = add i64 %14, -1
  store i64 %sub11, ptr %count, align 8
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %storemerge = phi i32 [ 0, %if.end ], [ -1, %lor.lhs.false ], [ -1, %entry ]
  ret i32 %storemerge
}

; Function Attrs: nounwind
declare ptr @__memmove_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

; Function Attrs: nounwind ssp uwtable
define i32 @json_array_replace_value(ptr noundef %array, i64 noundef %ix, ptr noundef %value) #0 {
entry:
  %array.addr = alloca ptr, align 8
  %ix.addr = alloca i64, align 8
  %value.addr = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8
  store i64 %ix, ptr %ix.addr, align 8
  store ptr %value, ptr %value.addr, align 8
  %cmp = icmp eq ptr %array, null
  %0 = load ptr, ptr %value.addr, align 8
  %cmp1 = icmp eq ptr %0, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %return, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %1 = load ptr, ptr %value.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %cmp3.not = icmp eq ptr %2, null
  br i1 %cmp3.not, label %lor.lhs.false4, label %return

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %3 = load i64, ptr %ix.addr, align 8
  %4 = load ptr, ptr %array.addr, align 8
  %call = call i64 @json_array_get_count(ptr noundef %4)
  %cmp5.not = icmp ult i64 %3, %call
  br i1 %cmp5.not, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false4
  %5 = load ptr, ptr %array.addr, align 8
  %6 = load i64, ptr %ix.addr, align 8
  %call6 = call ptr @json_array_get_value(ptr noundef %5, i64 noundef %6)
  call void @json_value_free(ptr noundef %call6)
  %call7 = call ptr @json_array_get_wrapping_value(ptr noundef %5)
  %7 = load ptr, ptr %value.addr, align 8
  store ptr %call7, ptr %7, align 8
  %8 = load ptr, ptr %array.addr, align 8
  %items = getelementptr inbounds %struct.json_array_t, ptr %8, i64 0, i32 1
  %9 = load ptr, ptr %items, align 8
  %10 = load i64, ptr %ix.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %9, i64 %10
  store ptr %7, ptr %arrayidx, align 8
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false2, %lor.lhs.false4, %if.end
  %storemerge = phi i32 [ 0, %if.end ], [ -1, %lor.lhs.false4 ], [ -1, %lor.lhs.false2 ], [ -1, %entry ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define i32 @json_array_replace_string(ptr noundef %array, i64 noundef %i, ptr noundef %string) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  %value = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8
  store i64 %i, ptr %i.addr, align 8
  %call = call ptr @json_value_init_string(ptr noundef %string)
  store ptr %call, ptr %value, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %array.addr, align 8
  %1 = load i64, ptr %i.addr, align 8
  %2 = load ptr, ptr %value, align 8
  %call1 = call i32 @json_array_replace_value(ptr noundef %0, i64 noundef %1, ptr noundef %2)
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %3 = load ptr, ptr %value, align 8
  call void @json_value_free(ptr noundef %3)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: nounwind ssp uwtable
define i32 @json_array_replace_string_with_len(ptr noundef %array, i64 noundef %i, ptr noundef %string, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  %value = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8
  store i64 %i, ptr %i.addr, align 8
  %call = call ptr @json_value_init_string_with_len(ptr noundef %string, i64 noundef %len)
  store ptr %call, ptr %value, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %array.addr, align 8
  %1 = load i64, ptr %i.addr, align 8
  %2 = load ptr, ptr %value, align 8
  %call1 = call i32 @json_array_replace_value(ptr noundef %0, i64 noundef %1, ptr noundef %2)
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %3 = load ptr, ptr %value, align 8
  call void @json_value_free(ptr noundef %3)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: nounwind ssp uwtable
define i32 @json_array_replace_number(ptr noundef %array, i64 noundef %i, double noundef %number) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  %value = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8
  store i64 %i, ptr %i.addr, align 8
  %call = call ptr @json_value_init_number(double noundef %number)
  store ptr %call, ptr %value, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %array.addr, align 8
  %1 = load i64, ptr %i.addr, align 8
  %2 = load ptr, ptr %value, align 8
  %call1 = call i32 @json_array_replace_value(ptr noundef %0, i64 noundef %1, ptr noundef %2)
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %3 = load ptr, ptr %value, align 8
  call void @json_value_free(ptr noundef %3)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: nounwind ssp uwtable
define i32 @json_array_replace_boolean(ptr noundef %array, i64 noundef %i, i32 noundef %boolean) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  %value = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8
  store i64 %i, ptr %i.addr, align 8
  %call = call ptr @json_value_init_boolean(i32 noundef %boolean)
  store ptr %call, ptr %value, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %array.addr, align 8
  %1 = load i64, ptr %i.addr, align 8
  %2 = load ptr, ptr %value, align 8
  %call1 = call i32 @json_array_replace_value(ptr noundef %0, i64 noundef %1, ptr noundef %2)
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %3 = load ptr, ptr %value, align 8
  call void @json_value_free(ptr noundef %3)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: nounwind ssp uwtable
define i32 @json_array_replace_null(ptr noundef %array, i64 noundef %i) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  %value = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8
  store i64 %i, ptr %i.addr, align 8
  %call = call ptr @json_value_init_null()
  store ptr %call, ptr %value, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %array.addr, align 8
  %1 = load i64, ptr %i.addr, align 8
  %2 = load ptr, ptr %value, align 8
  %call1 = call i32 @json_array_replace_value(ptr noundef %0, i64 noundef %1, ptr noundef %2)
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %3 = load ptr, ptr %value, align 8
  call void @json_value_free(ptr noundef %3)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: nounwind ssp uwtable
define i32 @json_array_clear(ptr noundef %array) #0 {
entry:
  %array.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  store ptr %array, ptr %array.addr, align 8
  store i64 0, ptr %i, align 8
  %cmp = icmp eq ptr %array, null
  br i1 %cmp, label %return, label %for.cond

for.cond:                                         ; preds = %entry, %for.body
  %storemerge = phi i64 [ %inc, %for.body ], [ 0, %entry ]
  store i64 %storemerge, ptr %i, align 8
  %0 = load ptr, ptr %array.addr, align 8
  %call = call i64 @json_array_get_count(ptr noundef %0)
  %cmp1 = icmp ult i64 %storemerge, %call
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %array.addr, align 8
  %2 = load i64, ptr %i, align 8
  %call2 = call ptr @json_array_get_value(ptr noundef %1, i64 noundef %2)
  call void @json_value_free(ptr noundef %call2)
  %3 = load i64, ptr %i, align 8
  %inc = add i64 %3, 1
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %for.cond
  %4 = load ptr, ptr %array.addr, align 8
  %count = getelementptr inbounds %struct.json_array_t, ptr %4, i64 0, i32 2
  store i64 0, ptr %count, align 8
  br label %return

return:                                           ; preds = %entry, %for.end
  %storemerge1 = phi i32 [ 0, %for.end ], [ -1, %entry ]
  ret i32 %storemerge1
}

; Function Attrs: nounwind ssp uwtable
define i32 @json_array_append_value(ptr noundef %array, ptr noundef %value) #0 {
entry:
  %array.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8
  store ptr %value, ptr %value.addr, align 8
  %cmp = icmp eq ptr %array, null
  %0 = load ptr, ptr %value.addr, align 8
  %cmp1 = icmp eq ptr %0, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %return, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %1 = load ptr, ptr %value.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %cmp3.not = icmp eq ptr %2, null
  br i1 %cmp3.not, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false2
  %3 = load ptr, ptr %array.addr, align 8
  %4 = load ptr, ptr %value.addr, align 8
  %call = call i32 @json_array_add(ptr noundef %3, ptr noundef %4)
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false2, %if.end
  %storemerge = phi i32 [ %call, %if.end ], [ -1, %lor.lhs.false2 ], [ -1, %entry ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define i32 @json_array_append_string(ptr noundef %array, ptr noundef %string) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca ptr, align 8
  %value = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8
  %call = call ptr @json_value_init_string(ptr noundef %string)
  store ptr %call, ptr %value, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %array.addr, align 8
  %1 = load ptr, ptr %value, align 8
  %call1 = call i32 @json_array_append_value(ptr noundef %0, ptr noundef %1)
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %2 = load ptr, ptr %value, align 8
  call void @json_value_free(ptr noundef %2)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

; Function Attrs: nounwind ssp uwtable
define i32 @json_array_append_string_with_len(ptr noundef %array, ptr noundef %string, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca ptr, align 8
  %value = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8
  %call = call ptr @json_value_init_string_with_len(ptr noundef %string, i64 noundef %len)
  store ptr %call, ptr %value, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %array.addr, align 8
  %1 = load ptr, ptr %value, align 8
  %call1 = call i32 @json_array_append_value(ptr noundef %0, ptr noundef %1)
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %2 = load ptr, ptr %value, align 8
  call void @json_value_free(ptr noundef %2)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

; Function Attrs: nounwind ssp uwtable
define i32 @json_array_append_number(ptr noundef %array, double noundef %number) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca ptr, align 8
  %value = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8
  %call = call ptr @json_value_init_number(double noundef %number)
  store ptr %call, ptr %value, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %array.addr, align 8
  %1 = load ptr, ptr %value, align 8
  %call1 = call i32 @json_array_append_value(ptr noundef %0, ptr noundef %1)
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %2 = load ptr, ptr %value, align 8
  call void @json_value_free(ptr noundef %2)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

; Function Attrs: nounwind ssp uwtable
define i32 @json_array_append_boolean(ptr noundef %array, i32 noundef %boolean) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca ptr, align 8
  %value = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8
  %call = call ptr @json_value_init_boolean(i32 noundef %boolean)
  store ptr %call, ptr %value, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %array.addr, align 8
  %1 = load ptr, ptr %value, align 8
  %call1 = call i32 @json_array_append_value(ptr noundef %0, ptr noundef %1)
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %2 = load ptr, ptr %value, align 8
  call void @json_value_free(ptr noundef %2)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

; Function Attrs: nounwind ssp uwtable
define i32 @json_array_append_null(ptr noundef %array) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca ptr, align 8
  %value = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8
  %call = call ptr @json_value_init_null()
  store ptr %call, ptr %value, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %array.addr, align 8
  %1 = load ptr, ptr %value, align 8
  %call1 = call i32 @json_array_append_value(ptr noundef %0, ptr noundef %1)
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %2 = load ptr, ptr %value, align 8
  call void @json_value_free(ptr noundef %2)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

; Function Attrs: nounwind ssp uwtable
define i32 @json_object_set_value(ptr noundef %object, ptr noundef %name, ptr noundef %value) #0 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %hash = alloca i64, align 8
  %found = alloca i32, align 4
  %cell_ix = alloca i64, align 8
  %item_ix = alloca i64, align 8
  %key_copy = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store ptr %value, ptr %value.addr, align 8
  store i64 0, ptr %hash, align 8
  store i32 0, ptr %found, align 4
  store i64 0, ptr %cell_ix, align 8
  store i64 0, ptr %item_ix, align 8
  store ptr null, ptr %key_copy, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %tobool.not = icmp eq ptr %0, null
  %1 = load ptr, ptr %name.addr, align 8
  %tobool1.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  %2 = load ptr, ptr %value.addr, align 8
  %tobool3.not = icmp eq ptr %2, null
  %or.cond1 = select i1 %or.cond, i1 true, i1 %tobool3.not
  br i1 %or.cond1, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %entry
  %3 = load ptr, ptr %value.addr, align 8
  %4 = load ptr, ptr %3, align 8
  %tobool5.not = icmp eq ptr %4, null
  br i1 %tobool5.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false4, %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false4
  %5 = load ptr, ptr %name.addr, align 8
  %call = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #11
  %call6 = call i64 @hash_string(ptr noundef %5, i64 noundef %call)
  store i64 %call6, ptr %hash, align 8
  store i32 0, ptr %found, align 4
  %6 = load ptr, ptr %object.addr, align 8
  %call7 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #11
  %call8 = call i64 @json_object_get_cell_ix(ptr noundef %6, ptr noundef %5, i64 noundef %call7, i64 noundef %call6, ptr noundef nonnull %found)
  store i64 %call8, ptr %cell_ix, align 8
  %7 = load i32, ptr %found, align 4
  %tobool9.not = icmp eq i32 %7, 0
  br i1 %tobool9.not, label %if.end16, label %if.then10

if.then10:                                        ; preds = %if.end
  %8 = load ptr, ptr %object.addr, align 8
  %cells = getelementptr inbounds %struct.json_object_t, ptr %8, i64 0, i32 1
  %9 = load ptr, ptr %cells, align 8
  %10 = load i64, ptr %cell_ix, align 8
  %arrayidx = getelementptr inbounds i64, ptr %9, i64 %10
  %11 = load i64, ptr %arrayidx, align 8
  store i64 %11, ptr %item_ix, align 8
  %12 = load ptr, ptr %object.addr, align 8
  %values = getelementptr inbounds %struct.json_object_t, ptr %12, i64 0, i32 4
  %13 = load ptr, ptr %values, align 8
  %arrayidx11 = getelementptr inbounds ptr, ptr %13, i64 %11
  %14 = load ptr, ptr %arrayidx11, align 8
  call void @json_value_free(ptr noundef %14)
  %15 = load ptr, ptr %value.addr, align 8
  %16 = load ptr, ptr %object.addr, align 8
  %values12 = getelementptr inbounds %struct.json_object_t, ptr %16, i64 0, i32 4
  %17 = load ptr, ptr %values12, align 8
  %18 = load i64, ptr %item_ix, align 8
  %arrayidx13 = getelementptr inbounds ptr, ptr %17, i64 %18
  store ptr %15, ptr %arrayidx13, align 8
  %call14 = call ptr @json_object_get_wrapping_value(ptr noundef %16)
  %19 = load ptr, ptr %value.addr, align 8
  store ptr %call14, ptr %19, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end
  %20 = load ptr, ptr %object.addr, align 8
  %count = getelementptr inbounds %struct.json_object_t, ptr %20, i64 0, i32 6
  %21 = load i64, ptr %count, align 8
  %item_capacity = getelementptr inbounds %struct.json_object_t, ptr %20, i64 0, i32 7
  %22 = load i64, ptr %item_capacity, align 8
  %cmp.not = icmp ult i64 %21, %22
  br i1 %cmp.not, label %if.end24, label %if.then17

if.then17:                                        ; preds = %if.end16
  %23 = load ptr, ptr %object.addr, align 8
  %call18 = call i32 @json_object_grow_and_rehash(ptr noundef %23)
  %cmp19.not = icmp eq i32 %call18, 0
  br i1 %cmp19.not, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.then17
  store i32 -1, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.then17
  %24 = load ptr, ptr %object.addr, align 8
  %25 = load ptr, ptr %name.addr, align 8
  %call22 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %25) #11
  %26 = load i64, ptr %hash, align 8
  %call23 = call i64 @json_object_get_cell_ix(ptr noundef %24, ptr noundef %25, i64 noundef %call22, i64 noundef %26, ptr noundef nonnull %found)
  store i64 %call23, ptr %cell_ix, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.end21, %if.end16
  %27 = load ptr, ptr %name.addr, align 8
  %call25 = call ptr @parson_strdup(ptr noundef %27)
  store ptr %call25, ptr %key_copy, align 8
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  store i32 -1, ptr %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.end24
  %28 = load ptr, ptr %key_copy, align 8
  %29 = load ptr, ptr %object.addr, align 8
  %names = getelementptr inbounds %struct.json_object_t, ptr %29, i64 0, i32 3
  %30 = load ptr, ptr %names, align 8
  %count29 = getelementptr inbounds %struct.json_object_t, ptr %29, i64 0, i32 6
  %31 = load i64, ptr %count29, align 8
  %arrayidx30 = getelementptr inbounds ptr, ptr %30, i64 %31
  store ptr %28, ptr %arrayidx30, align 8
  %32 = load ptr, ptr %object.addr, align 8
  %count31 = getelementptr inbounds %struct.json_object_t, ptr %32, i64 0, i32 6
  %33 = load i64, ptr %count31, align 8
  %cells32 = getelementptr inbounds %struct.json_object_t, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %cells32, align 8
  %35 = load i64, ptr %cell_ix, align 8
  %arrayidx33 = getelementptr inbounds i64, ptr %34, i64 %35
  store i64 %33, ptr %arrayidx33, align 8
  %36 = load ptr, ptr %value.addr, align 8
  %37 = load ptr, ptr %object.addr, align 8
  %values34 = getelementptr inbounds %struct.json_object_t, ptr %37, i64 0, i32 4
  %38 = load ptr, ptr %values34, align 8
  %count35 = getelementptr inbounds %struct.json_object_t, ptr %37, i64 0, i32 6
  %39 = load i64, ptr %count35, align 8
  %arrayidx36 = getelementptr inbounds ptr, ptr %38, i64 %39
  store ptr %36, ptr %arrayidx36, align 8
  %40 = load i64, ptr %cell_ix, align 8
  %41 = load ptr, ptr %object.addr, align 8
  %cell_ixs = getelementptr inbounds %struct.json_object_t, ptr %41, i64 0, i32 5
  %42 = load ptr, ptr %cell_ixs, align 8
  %count37 = getelementptr inbounds %struct.json_object_t, ptr %41, i64 0, i32 6
  %43 = load i64, ptr %count37, align 8
  %arrayidx38 = getelementptr inbounds i64, ptr %42, i64 %43
  store i64 %40, ptr %arrayidx38, align 8
  %44 = load i64, ptr %hash, align 8
  %45 = load ptr, ptr %object.addr, align 8
  %hashes = getelementptr inbounds %struct.json_object_t, ptr %45, i64 0, i32 2
  %46 = load ptr, ptr %hashes, align 8
  %count39 = getelementptr inbounds %struct.json_object_t, ptr %45, i64 0, i32 6
  %47 = load i64, ptr %count39, align 8
  %arrayidx40 = getelementptr inbounds i64, ptr %46, i64 %47
  store i64 %44, ptr %arrayidx40, align 8
  %48 = load ptr, ptr %object.addr, align 8
  %count41 = getelementptr inbounds %struct.json_object_t, ptr %48, i64 0, i32 6
  %49 = load i64, ptr %count41, align 8
  %inc = add i64 %49, 1
  store i64 %inc, ptr %count41, align 8
  %call42 = call ptr @json_object_get_wrapping_value(ptr noundef %48)
  %50 = load ptr, ptr %value.addr, align 8
  store ptr %call42, ptr %50, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end28, %if.then27, %if.then20, %if.then10, %if.then
  %51 = load i32, ptr %retval, align 4
  ret i32 %51
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @hash_string(ptr noundef %string, i64 noundef %n) #0 {
entry:
  %string.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %hash = alloca i64, align 8
  %c = alloca i8, align 1
  %i = alloca i64, align 8
  store ptr %string, ptr %string.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  store i64 5381, ptr %hash, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %storemerge = phi i64 [ 0, %entry ], [ %inc, %if.end ]
  store i64 %storemerge, ptr %i, align 8
  %0 = load i64, ptr %n.addr, align 8
  %cmp = icmp ult i64 %storemerge, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %string.addr, align 8
  %2 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %2
  %3 = load i8, ptr %arrayidx, align 1
  store i8 %3, ptr %c, align 1
  %cmp1 = icmp eq i8 %3, 0
  br i1 %cmp1, label %for.end, label %if.end

if.end:                                           ; preds = %for.body
  %4 = load i64, ptr %hash, align 8
  %add = mul i64 %4, 33
  %5 = load i8, ptr %c, align 1
  %conv3 = zext i8 %5 to i64
  %add4 = add i64 %add, %conv3
  store i64 %add4, ptr %hash, align 8
  %6 = load i64, ptr %i, align 8
  %inc = add i64 %6, 1
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.body, %for.cond
  %7 = load i64, ptr %hash, align 8
  ret i64 %7
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @json_object_get_cell_ix(ptr noundef %object, ptr noundef %key, i64 noundef %key_len, i64 noundef %hash, ptr noundef %out_found) #0 {
entry:
  %retval = alloca i64, align 8
  %object.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %key_len.addr = alloca i64, align 8
  %hash.addr = alloca i64, align 8
  %out_found.addr = alloca ptr, align 8
  %cell_ix = alloca i64, align 8
  %cell = alloca i64, align 8
  %ix = alloca i64, align 8
  %i = alloca i32, align 4
  %key_to_check = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %key, ptr %key.addr, align 8
  store i64 %key_len, ptr %key_len.addr, align 8
  store i64 %hash, ptr %hash.addr, align 8
  store ptr %out_found, ptr %out_found.addr, align 8
  %cell_capacity = getelementptr inbounds %struct.json_object_t, ptr %object, i64 0, i32 8
  %0 = load i64, ptr %cell_capacity, align 8
  %sub = add i64 %0, -1
  %and = and i64 %sub, %hash
  store i64 %and, ptr %cell_ix, align 8
  store i64 0, ptr %cell, align 8
  store i64 0, ptr %ix, align 8
  store i32 0, ptr %i, align 4
  store ptr null, ptr %key_to_check, align 8
  %1 = load ptr, ptr %out_found.addr, align 8
  store i32 0, ptr %1, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr %i, align 4
  %conv = zext i32 %storemerge to i64
  %2 = load ptr, ptr %object.addr, align 8
  %cell_capacity1 = getelementptr inbounds %struct.json_object_t, ptr %2, i64 0, i32 8
  %3 = load i64, ptr %cell_capacity1, align 8
  %cmp = icmp ugt i64 %3, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, ptr %cell_ix, align 8
  %5 = load i32, ptr %i, align 4
  %conv3 = zext i32 %5 to i64
  %add = add i64 %4, %conv3
  %6 = load ptr, ptr %object.addr, align 8
  %cell_capacity4 = getelementptr inbounds %struct.json_object_t, ptr %6, i64 0, i32 8
  %7 = load i64, ptr %cell_capacity4, align 8
  %sub5 = add i64 %7, -1
  %and6 = and i64 %add, %sub5
  store i64 %and6, ptr %ix, align 8
  %cells = getelementptr inbounds %struct.json_object_t, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %cells, align 8
  %arrayidx = getelementptr inbounds i64, ptr %8, i64 %and6
  %9 = load i64, ptr %arrayidx, align 8
  store i64 %9, ptr %cell, align 8
  %cmp7 = icmp eq i64 %9, -1
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load i64, ptr %ix, align 8
  store i64 %10, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %for.body
  %11 = load ptr, ptr %object.addr, align 8
  %hashes = getelementptr inbounds %struct.json_object_t, ptr %11, i64 0, i32 2
  %12 = load ptr, ptr %hashes, align 8
  %13 = load i64, ptr %cell, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %12, i64 %13
  %14 = load i64, ptr %arrayidx9, align 8
  %15 = load i64, ptr %hash.addr, align 8
  %cmp10.not = icmp eq i64 %15, %14
  br i1 %cmp10.not, label %if.end13, label %for.inc

if.end13:                                         ; preds = %if.end
  %16 = load ptr, ptr %object.addr, align 8
  %names = getelementptr inbounds %struct.json_object_t, ptr %16, i64 0, i32 3
  %17 = load ptr, ptr %names, align 8
  %18 = load i64, ptr %cell, align 8
  %arrayidx14 = getelementptr inbounds ptr, ptr %17, i64 %18
  %19 = load ptr, ptr %arrayidx14, align 8
  store ptr %19, ptr %key_to_check, align 8
  %call = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %19) #11
  %20 = load i64, ptr %key_len.addr, align 8
  %cmp15 = icmp eq i64 %call, %20
  br i1 %cmp15, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %if.end13
  %21 = load ptr, ptr %key.addr, align 8
  %22 = load ptr, ptr %key_to_check, align 8
  %23 = load i64, ptr %key_len.addr, align 8
  %call17 = call i32 @strncmp(ptr noundef %21, ptr noundef %22, i64 noundef %23) #11
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then20, label %for.inc

if.then20:                                        ; preds = %land.lhs.true
  %24 = load ptr, ptr %out_found.addr, align 8
  store i32 1, ptr %24, align 4
  %25 = load i64, ptr %ix, align 8
  store i64 %25, ptr %retval, align 8
  br label %return

for.inc:                                          ; preds = %if.end13, %land.lhs.true, %if.end
  %26 = load i32, ptr %i, align 4
  %inc = add i32 %26, 1
  br label %for.cond, !llvm.loop !23

for.end:                                          ; preds = %for.cond
  store i64 -1, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then20, %if.then
  %27 = load i64, ptr %retval, align 8
  ret i64 %27
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @json_object_grow_and_rehash(ptr noundef %object) #0 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca ptr, align 8
  %wrapping_value = alloca ptr, align 8
  %new_object = alloca %struct.json_object_t, align 8
  %key = alloca ptr, align 8
  %value = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %object, ptr %object.addr, align 8
  store ptr null, ptr %wrapping_value, align 8
  store ptr null, ptr %key, align 8
  store ptr null, ptr %value, align 8
  store i32 0, ptr %i, align 4
  %cell_capacity = getelementptr inbounds %struct.json_object_t, ptr %object, i64 0, i32 8
  %0 = load i64, ptr %cell_capacity, align 8
  %mul = shl i64 %0, 1
  %cmp = icmp ugt i64 %mul, 16
  br i1 %cmp, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %object.addr, align 8
  %cell_capacity1 = getelementptr inbounds %struct.json_object_t, ptr %1, i64 0, i32 8
  %2 = load i64, ptr %cell_capacity1, align 8
  %mul2 = shl i64 %2, 1
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i64 [ %mul2, %cond.true ], [ 16, %entry ]
  %call = call i32 @json_object_init(ptr noundef nonnull %new_object, i64 noundef %cond)
  %cmp3.not = icmp eq i32 %call, 0
  br i1 %cmp3.not, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %cond.end
  %3 = load ptr, ptr %object.addr, align 8
  %call4 = call ptr @json_object_get_wrapping_value(ptr noundef %3)
  store ptr %call4, ptr %wrapping_value, align 8
  store ptr %call4, ptr %new_object, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end14, %if.end
  %storemerge = phi i32 [ 0, %if.end ], [ %inc, %if.end14 ]
  store i32 %storemerge, ptr %i, align 4
  %conv = zext i32 %storemerge to i64
  %4 = load ptr, ptr %object.addr, align 8
  %count = getelementptr inbounds %struct.json_object_t, ptr %4, i64 0, i32 6
  %5 = load i64, ptr %count, align 8
  %cmp6 = icmp ugt i64 %5, %conv
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %object.addr, align 8
  %names = getelementptr inbounds %struct.json_object_t, ptr %6, i64 0, i32 3
  %7 = load ptr, ptr %names, align 8
  %8 = load i32, ptr %i, align 4
  %idxprom = zext i32 %8 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %7, i64 %idxprom
  %9 = load ptr, ptr %arrayidx, align 8
  store ptr %9, ptr %key, align 8
  %10 = load ptr, ptr %object.addr, align 8
  %values = getelementptr inbounds %struct.json_object_t, ptr %10, i64 0, i32 4
  %11 = load ptr, ptr %values, align 8
  %12 = load i32, ptr %i, align 4
  %idxprom8 = zext i32 %12 to i64
  %arrayidx9 = getelementptr inbounds ptr, ptr %11, i64 %idxprom8
  %13 = load ptr, ptr %arrayidx9, align 8
  store ptr %13, ptr %value, align 8
  %14 = load ptr, ptr %key, align 8
  %call10 = call i32 @json_object_add(ptr noundef nonnull %new_object, ptr noundef %14, ptr noundef %13)
  %cmp11.not = icmp eq i32 %call10, 0
  br i1 %cmp11.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %for.body
  call void @json_object_deinit(ptr noundef nonnull %new_object, i32 noundef 0, i32 noundef 0)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %for.body
  %15 = load ptr, ptr %wrapping_value, align 8
  %16 = load ptr, ptr %value, align 8
  store ptr %15, ptr %16, align 8
  %17 = load i32, ptr %i, align 4
  %inc = add i32 %17, 1
  br label %for.cond, !llvm.loop !24

for.end:                                          ; preds = %for.cond
  %18 = load ptr, ptr %object.addr, align 8
  call void @json_object_deinit(ptr noundef %18, i32 noundef 0, i32 noundef 0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %18, ptr noundef nonnull align 8 dereferenceable(72) %new_object, i64 72, i1 false)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then13, %if.then
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

; Function Attrs: nounwind ssp uwtable
define i32 @json_object_set_string(ptr noundef %object, ptr noundef %name, ptr noundef %string) #0 {
entry:
  %value = alloca ptr, align 8
  %status = alloca i32, align 4
  %call = call ptr @json_value_init_string(ptr noundef %string)
  store ptr %call, ptr %value, align 8
  %call1 = call i32 @json_object_set_value(ptr noundef %object, ptr noundef %name, ptr noundef %call)
  store i32 %call1, ptr %status, align 4
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %value, align 8
  call void @json_value_free(ptr noundef %0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %status, align 4
  ret i32 %1
}

; Function Attrs: nounwind ssp uwtable
define i32 @json_object_set_string_with_len(ptr noundef %object, ptr noundef %name, ptr noundef %string, i64 noundef %len) #0 {
entry:
  %value = alloca ptr, align 8
  %status = alloca i32, align 4
  %call = call ptr @json_value_init_string_with_len(ptr noundef %string, i64 noundef %len)
  store ptr %call, ptr %value, align 8
  %call1 = call i32 @json_object_set_value(ptr noundef %object, ptr noundef %name, ptr noundef %call)
  store i32 %call1, ptr %status, align 4
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %value, align 8
  call void @json_value_free(ptr noundef %0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %status, align 4
  ret i32 %1
}

; Function Attrs: nounwind ssp uwtable
define i32 @json_object_set_number(ptr noundef %object, ptr noundef %name, double noundef %number) #0 {
entry:
  %value = alloca ptr, align 8
  %status = alloca i32, align 4
  %call = call ptr @json_value_init_number(double noundef %number)
  store ptr %call, ptr %value, align 8
  %call1 = call i32 @json_object_set_value(ptr noundef %object, ptr noundef %name, ptr noundef %call)
  store i32 %call1, ptr %status, align 4
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %value, align 8
  call void @json_value_free(ptr noundef %0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %status, align 4
  ret i32 %1
}

; Function Attrs: nounwind ssp uwtable
define i32 @json_object_set_boolean(ptr noundef %object, ptr noundef %name, i32 noundef %boolean) #0 {
entry:
  %value = alloca ptr, align 8
  %status = alloca i32, align 4
  %call = call ptr @json_value_init_boolean(i32 noundef %boolean)
  store ptr %call, ptr %value, align 8
  %call1 = call i32 @json_object_set_value(ptr noundef %object, ptr noundef %name, ptr noundef %call)
  store i32 %call1, ptr %status, align 4
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %value, align 8
  call void @json_value_free(ptr noundef %0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %status, align 4
  ret i32 %1
}

; Function Attrs: nounwind ssp uwtable
define i32 @json_object_set_null(ptr noundef %object, ptr noundef %name) #0 {
entry:
  %value = alloca ptr, align 8
  %status = alloca i32, align 4
  %call = call ptr @json_value_init_null()
  store ptr %call, ptr %value, align 8
  %call1 = call i32 @json_object_set_value(ptr noundef %object, ptr noundef %name, ptr noundef %call)
  store i32 %call1, ptr %status, align 4
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %value, align 8
  call void @json_value_free(ptr noundef %0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %status, align 4
  ret i32 %1
}

; Function Attrs: nounwind ssp uwtable
define i32 @json_object_dotset_value(ptr noundef %object, ptr noundef %name, ptr noundef %value) #0 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %dot_pos = alloca ptr, align 8
  %temp_value = alloca ptr, align 8
  %new_value = alloca ptr, align 8
  %new_object = alloca ptr, align 8
  %name_len = alloca i64, align 8
  %name_copy = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store ptr %value, ptr %value.addr, align 8
  store ptr null, ptr %dot_pos, align 8
  store ptr null, ptr %temp_value, align 8
  store ptr null, ptr %new_value, align 8
  store ptr null, ptr %new_object, align 8
  store i64 0, ptr %name_len, align 8
  store ptr null, ptr %name_copy, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %cmp = icmp eq ptr %0, null
  %1 = load ptr, ptr %name.addr, align 8
  %cmp1 = icmp eq ptr %1, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  %2 = load ptr, ptr %value.addr, align 8
  %cmp3 = icmp eq ptr %2, null
  %or.cond1 = select i1 %or.cond, i1 true, i1 %cmp3
  br i1 %or.cond1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %name.addr, align 8
  %call = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %3, i32 noundef 46) #11
  store ptr %call, ptr %dot_pos, align 8
  %cmp4 = icmp eq ptr %call, null
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %4 = load ptr, ptr %object.addr, align 8
  %5 = load ptr, ptr %name.addr, align 8
  %6 = load ptr, ptr %value.addr, align 8
  %call6 = call i32 @json_object_set_value(ptr noundef %4, ptr noundef %5, ptr noundef %6)
  store i32 %call6, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %7 = load ptr, ptr %dot_pos, align 8
  %8 = load ptr, ptr %name.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %7 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, ptr %name_len, align 8
  %9 = load ptr, ptr %object.addr, align 8
  %call8 = call ptr @json_object_getn_value(ptr noundef %9, ptr noundef %8, i64 noundef %sub.ptr.sub)
  store ptr %call8, ptr %temp_value, align 8
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %if.end16, label %if.then9

if.then9:                                         ; preds = %if.end7
  %10 = load ptr, ptr %temp_value, align 8
  %call10 = call i32 @json_value_get_type(ptr noundef %10)
  %cmp11.not = icmp eq i32 %call10, 4
  br i1 %cmp11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.then9
  store i32 -1, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.then9
  %11 = load ptr, ptr %temp_value, align 8
  %call14 = call ptr @json_value_get_object(ptr noundef %11)
  %12 = load ptr, ptr %dot_pos, align 8
  %add.ptr = getelementptr inbounds i8, ptr %12, i64 1
  %13 = load ptr, ptr %value.addr, align 8
  %call15 = call i32 @json_object_dotset_value(ptr noundef %call14, ptr noundef nonnull %add.ptr, ptr noundef %13)
  store i32 %call15, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end7
  %call17 = call ptr @json_value_init_object()
  store ptr %call17, ptr %new_value, align 8
  %cmp18 = icmp eq ptr %call17, null
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  store i32 -1, ptr %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.end16
  %14 = load ptr, ptr %new_value, align 8
  %call21 = call ptr @json_value_get_object(ptr noundef %14)
  store ptr %call21, ptr %new_object, align 8
  %15 = load ptr, ptr %dot_pos, align 8
  %add.ptr22 = getelementptr inbounds i8, ptr %15, i64 1
  %16 = load ptr, ptr %value.addr, align 8
  %call23 = call i32 @json_object_dotset_value(ptr noundef %call21, ptr noundef nonnull %add.ptr22, ptr noundef %16)
  %cmp24.not = icmp eq i32 %call23, 0
  br i1 %cmp24.not, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.end20
  %17 = load ptr, ptr %new_value, align 8
  call void @json_value_free(ptr noundef %17)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.end20
  %18 = load ptr, ptr %name.addr, align 8
  %19 = load i64, ptr %name_len, align 8
  %call27 = call ptr @parson_strndup(ptr noundef %18, i64 noundef %19)
  store ptr %call27, ptr %name_copy, align 8
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.end26
  %20 = load ptr, ptr %new_object, align 8
  %21 = load ptr, ptr %dot_pos, align 8
  %add.ptr30 = getelementptr inbounds i8, ptr %21, i64 1
  %call31 = call i32 @json_object_dotremove_internal(ptr noundef %20, ptr noundef nonnull %add.ptr30, i32 noundef 0)
  %22 = load ptr, ptr %new_value, align 8
  call void @json_value_free(ptr noundef %22)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.end26
  %23 = load ptr, ptr %object.addr, align 8
  %24 = load ptr, ptr %name_copy, align 8
  %25 = load ptr, ptr %new_value, align 8
  %call33 = call i32 @json_object_add(ptr noundef %23, ptr noundef %24, ptr noundef %25)
  %cmp34.not = icmp eq i32 %call33, 0
  br i1 %cmp34.not, label %if.end38, label %if.then35

if.then35:                                        ; preds = %if.end32
  %26 = load ptr, ptr @parson_free, align 8
  %27 = load ptr, ptr %name_copy, align 8
  call void %26(ptr noundef %27) #11
  %28 = load ptr, ptr %new_object, align 8
  %29 = load ptr, ptr %dot_pos, align 8
  %add.ptr36 = getelementptr inbounds i8, ptr %29, i64 1
  %call37 = call i32 @json_object_dotremove_internal(ptr noundef %28, ptr noundef nonnull %add.ptr36, i32 noundef 0)
  %30 = load ptr, ptr %new_value, align 8
  call void @json_value_free(ptr noundef %30)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end38:                                         ; preds = %if.end32
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end38, %if.then35, %if.then29, %if.then25, %if.then19, %if.end13, %if.then12, %if.then5, %if.then
  %31 = load i32, ptr %retval, align 4
  ret i32 %31
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @json_object_dotremove_internal(ptr noundef %object, ptr noundef %name, i32 noundef %free_value) #0 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %free_value.addr = alloca i32, align 4
  %temp_value = alloca ptr, align 8
  %dot_pos = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store i32 %free_value, ptr %free_value.addr, align 4
  store ptr null, ptr %temp_value, align 8
  %call = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %name, i32 noundef 46) #11
  store ptr %call, ptr %dot_pos, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %object.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %2 = load i32, ptr %free_value.addr, align 4
  %call1 = call i32 @json_object_remove_internal(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  store i32 %call1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %object.addr, align 8
  %4 = load ptr, ptr %name.addr, align 8
  %5 = load ptr, ptr %dot_pos, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %5 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call2 = call ptr @json_object_getn_value(ptr noundef %3, ptr noundef %4, i64 noundef %sub.ptr.sub)
  store ptr %call2, ptr %temp_value, align 8
  %call3 = call i32 @json_value_get_type(ptr noundef %call2)
  %cmp.not = icmp eq i32 %call3, 4
  br i1 %cmp.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %6 = load ptr, ptr %temp_value, align 8
  %call6 = call ptr @json_value_get_object(ptr noundef %6)
  %7 = load ptr, ptr %dot_pos, align 8
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 1
  %8 = load i32, ptr %free_value.addr, align 4
  %call7 = call i32 @json_object_dotremove_internal(ptr noundef %call6, ptr noundef nonnull %add.ptr, i32 noundef %8)
  store i32 %call7, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: nounwind ssp uwtable
define i32 @json_object_dotset_string(ptr noundef %object, ptr noundef %name, ptr noundef %string) #0 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %value = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  %call = call ptr @json_value_init_string(ptr noundef %string)
  store ptr %call, ptr %value, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %object.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %2 = load ptr, ptr %value, align 8
  %call1 = call i32 @json_object_dotset_value(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %3 = load ptr, ptr %value, align 8
  call void @json_value_free(ptr noundef %3)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: nounwind ssp uwtable
define i32 @json_object_dotset_string_with_len(ptr noundef %object, ptr noundef %name, ptr noundef %string, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %value = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  %call = call ptr @json_value_init_string_with_len(ptr noundef %string, i64 noundef %len)
  store ptr %call, ptr %value, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %object.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %2 = load ptr, ptr %value, align 8
  %call1 = call i32 @json_object_dotset_value(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %3 = load ptr, ptr %value, align 8
  call void @json_value_free(ptr noundef %3)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: nounwind ssp uwtable
define i32 @json_object_dotset_number(ptr noundef %object, ptr noundef %name, double noundef %number) #0 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %value = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  %call = call ptr @json_value_init_number(double noundef %number)
  store ptr %call, ptr %value, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %object.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %2 = load ptr, ptr %value, align 8
  %call1 = call i32 @json_object_dotset_value(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %3 = load ptr, ptr %value, align 8
  call void @json_value_free(ptr noundef %3)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: nounwind ssp uwtable
define i32 @json_object_dotset_boolean(ptr noundef %object, ptr noundef %name, i32 noundef %boolean) #0 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %value = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  %call = call ptr @json_value_init_boolean(i32 noundef %boolean)
  store ptr %call, ptr %value, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %object.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %2 = load ptr, ptr %value, align 8
  %call1 = call i32 @json_object_dotset_value(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %3 = load ptr, ptr %value, align 8
  call void @json_value_free(ptr noundef %3)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: nounwind ssp uwtable
define i32 @json_object_dotset_null(ptr noundef %object, ptr noundef %name) #0 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %value = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  %call = call ptr @json_value_init_null()
  store ptr %call, ptr %value, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %object.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %2 = load ptr, ptr %value, align 8
  %call1 = call i32 @json_object_dotset_value(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %3 = load ptr, ptr %value, align 8
  call void @json_value_free(ptr noundef %3)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: nounwind ssp uwtable
define i32 @json_object_remove(ptr noundef %object, ptr noundef %name) #0 {
entry:
  %call = call i32 @json_object_remove_internal(ptr noundef %object, ptr noundef %name, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @json_object_remove_internal(ptr noundef %object, ptr noundef %name, i32 noundef %free_value) #0 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %free_value.addr = alloca i32, align 4
  %found = alloca i32, align 4
  %cell = alloca i64, align 8
  %item_ix = alloca i64, align 8
  %last_item_ix = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %x = alloca i64, align 8
  %k = alloca i64, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store i32 %free_value, ptr %free_value.addr, align 4
  store i32 0, ptr %found, align 4
  store i64 0, ptr %cell, align 8
  store i64 0, ptr %item_ix, align 8
  store i64 0, ptr %last_item_ix, align 8
  store i64 0, ptr %i, align 8
  store i64 0, ptr %j, align 8
  store i64 0, ptr %x, align 8
  store i64 0, ptr %k, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %name.addr, align 8
  %call = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #11
  %call1 = call i64 @hash_string(ptr noundef %1, i64 noundef %call)
  store i32 0, ptr %found, align 4
  %2 = load ptr, ptr %object.addr, align 8
  %call2 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #11
  %call3 = call i64 @json_object_get_cell_ix(ptr noundef %2, ptr noundef %1, i64 noundef %call2, i64 noundef %call1, ptr noundef nonnull %found)
  store i64 %call3, ptr %cell, align 8
  %3 = load i32, ptr %found, align 4
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %4 = load ptr, ptr %object.addr, align 8
  %cells = getelementptr inbounds %struct.json_object_t, ptr %4, i64 0, i32 1
  %5 = load ptr, ptr %cells, align 8
  %6 = load i64, ptr %cell, align 8
  %arrayidx = getelementptr inbounds i64, ptr %5, i64 %6
  %7 = load i64, ptr %arrayidx, align 8
  store i64 %7, ptr %item_ix, align 8
  %8 = load i32, ptr %free_value.addr, align 4
  %tobool6.not = icmp eq i32 %8, 0
  br i1 %tobool6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end5
  %9 = load ptr, ptr %object.addr, align 8
  %values = getelementptr inbounds %struct.json_object_t, ptr %9, i64 0, i32 4
  %10 = load ptr, ptr %values, align 8
  %11 = load i64, ptr %item_ix, align 8
  %arrayidx8 = getelementptr inbounds ptr, ptr %10, i64 %11
  %12 = load ptr, ptr %arrayidx8, align 8
  call void @json_value_free(ptr noundef %12)
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5
  %13 = load ptr, ptr @parson_free, align 8
  %14 = load ptr, ptr %object.addr, align 8
  %names = getelementptr inbounds %struct.json_object_t, ptr %14, i64 0, i32 3
  %15 = load ptr, ptr %names, align 8
  %16 = load i64, ptr %item_ix, align 8
  %arrayidx10 = getelementptr inbounds ptr, ptr %15, i64 %16
  %17 = load ptr, ptr %arrayidx10, align 8
  call void %13(ptr noundef %17) #11
  %18 = load ptr, ptr %object.addr, align 8
  %count = getelementptr inbounds %struct.json_object_t, ptr %18, i64 0, i32 6
  %19 = load i64, ptr %count, align 8
  %sub = add i64 %19, -1
  store i64 %sub, ptr %last_item_ix, align 8
  %20 = load i64, ptr %item_ix, align 8
  %cmp11 = icmp ult i64 %20, %sub
  br i1 %cmp11, label %if.then12, label %if.end31

if.then12:                                        ; preds = %if.end9
  %21 = load ptr, ptr %object.addr, align 8
  %names13 = getelementptr inbounds %struct.json_object_t, ptr %21, i64 0, i32 3
  %22 = load ptr, ptr %names13, align 8
  %23 = load i64, ptr %last_item_ix, align 8
  %arrayidx14 = getelementptr inbounds ptr, ptr %22, i64 %23
  %24 = load ptr, ptr %arrayidx14, align 8
  %25 = load i64, ptr %item_ix, align 8
  %arrayidx16 = getelementptr inbounds ptr, ptr %22, i64 %25
  store ptr %24, ptr %arrayidx16, align 8
  %26 = load ptr, ptr %object.addr, align 8
  %values17 = getelementptr inbounds %struct.json_object_t, ptr %26, i64 0, i32 4
  %27 = load ptr, ptr %values17, align 8
  %28 = load i64, ptr %last_item_ix, align 8
  %arrayidx18 = getelementptr inbounds ptr, ptr %27, i64 %28
  %29 = load ptr, ptr %arrayidx18, align 8
  %30 = load i64, ptr %item_ix, align 8
  %arrayidx20 = getelementptr inbounds ptr, ptr %27, i64 %30
  store ptr %29, ptr %arrayidx20, align 8
  %31 = load ptr, ptr %object.addr, align 8
  %cell_ixs = getelementptr inbounds %struct.json_object_t, ptr %31, i64 0, i32 5
  %32 = load ptr, ptr %cell_ixs, align 8
  %33 = load i64, ptr %last_item_ix, align 8
  %arrayidx21 = getelementptr inbounds i64, ptr %32, i64 %33
  %34 = load i64, ptr %arrayidx21, align 8
  %35 = load i64, ptr %item_ix, align 8
  %arrayidx23 = getelementptr inbounds i64, ptr %32, i64 %35
  store i64 %34, ptr %arrayidx23, align 8
  %36 = load ptr, ptr %object.addr, align 8
  %hashes = getelementptr inbounds %struct.json_object_t, ptr %36, i64 0, i32 2
  %37 = load ptr, ptr %hashes, align 8
  %38 = load i64, ptr %last_item_ix, align 8
  %arrayidx24 = getelementptr inbounds i64, ptr %37, i64 %38
  %39 = load i64, ptr %arrayidx24, align 8
  %40 = load i64, ptr %item_ix, align 8
  %arrayidx26 = getelementptr inbounds i64, ptr %37, i64 %40
  store i64 %39, ptr %arrayidx26, align 8
  %41 = load ptr, ptr %object.addr, align 8
  %cells27 = getelementptr inbounds %struct.json_object_t, ptr %41, i64 0, i32 1
  %42 = load ptr, ptr %cells27, align 8
  %cell_ixs28 = getelementptr inbounds %struct.json_object_t, ptr %41, i64 0, i32 5
  %43 = load ptr, ptr %cell_ixs28, align 8
  %44 = load i64, ptr %item_ix, align 8
  %arrayidx29 = getelementptr inbounds i64, ptr %43, i64 %44
  %45 = load i64, ptr %arrayidx29, align 8
  %arrayidx30 = getelementptr inbounds i64, ptr %42, i64 %45
  store i64 %40, ptr %arrayidx30, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then12, %if.end9
  %46 = load ptr, ptr %object.addr, align 8
  %count32 = getelementptr inbounds %struct.json_object_t, ptr %46, i64 0, i32 6
  %47 = load i64, ptr %count32, align 8
  %dec = add i64 %47, -1
  store i64 %dec, ptr %count32, align 8
  %48 = load i64, ptr %cell, align 8
  store i64 %48, ptr %i, align 8
  store i64 %48, ptr %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end31
  %storemerge = phi i64 [ 0, %if.end31 ], [ %inc, %for.inc ]
  store i64 %storemerge, ptr %x, align 8
  %49 = load ptr, ptr %object.addr, align 8
  %cell_capacity = getelementptr inbounds %struct.json_object_t, ptr %49, i64 0, i32 8
  %50 = load i64, ptr %cell_capacity, align 8
  %sub33 = add i64 %50, -1
  %cmp34 = icmp ult i64 %storemerge, %sub33
  br i1 %cmp34, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %51 = load i64, ptr %j, align 8
  %add = add i64 %51, 1
  %52 = load ptr, ptr %object.addr, align 8
  %cell_capacity35 = getelementptr inbounds %struct.json_object_t, ptr %52, i64 0, i32 8
  %53 = load i64, ptr %cell_capacity35, align 8
  %sub36 = add i64 %53, -1
  %and = and i64 %add, %sub36
  store i64 %and, ptr %j, align 8
  %cells37 = getelementptr inbounds %struct.json_object_t, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %cells37, align 8
  %arrayidx38 = getelementptr inbounds i64, ptr %54, i64 %and
  %55 = load i64, ptr %arrayidx38, align 8
  %cmp39 = icmp eq i64 %55, -1
  br i1 %cmp39, label %for.end, label %if.end41

if.end41:                                         ; preds = %for.body
  %56 = load ptr, ptr %object.addr, align 8
  %hashes42 = getelementptr inbounds %struct.json_object_t, ptr %56, i64 0, i32 2
  %57 = load ptr, ptr %hashes42, align 8
  %cells43 = getelementptr inbounds %struct.json_object_t, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %cells43, align 8
  %59 = load i64, ptr %j, align 8
  %arrayidx44 = getelementptr inbounds i64, ptr %58, i64 %59
  %60 = load i64, ptr %arrayidx44, align 8
  %arrayidx45 = getelementptr inbounds i64, ptr %57, i64 %60
  %61 = load i64, ptr %arrayidx45, align 8
  %62 = load ptr, ptr %object.addr, align 8
  %cell_capacity46 = getelementptr inbounds %struct.json_object_t, ptr %62, i64 0, i32 8
  %63 = load i64, ptr %cell_capacity46, align 8
  %sub47 = add i64 %63, -1
  %and48 = and i64 %61, %sub47
  store i64 %and48, ptr %k, align 8
  %64 = load i64, ptr %j, align 8
  %65 = load i64, ptr %i, align 8
  %cmp49 = icmp ugt i64 %64, %65
  br i1 %cmp49, label %land.lhs.true, label %lor.lhs.false52

land.lhs.true:                                    ; preds = %if.end41
  %66 = load i64, ptr %k, align 8
  %67 = load i64, ptr %i, align 8
  %cmp50.not = icmp ugt i64 %66, %67
  br i1 %cmp50.not, label %lor.lhs.false, label %if.then58

lor.lhs.false:                                    ; preds = %land.lhs.true
  %68 = load i64, ptr %k, align 8
  %69 = load i64, ptr %j, align 8
  %cmp51 = icmp ugt i64 %68, %69
  br i1 %cmp51, label %if.then58, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %lor.lhs.false, %if.end41
  %70 = load i64, ptr %j, align 8
  %71 = load i64, ptr %i, align 8
  %cmp53 = icmp ult i64 %70, %71
  br i1 %cmp53, label %land.lhs.true54, label %for.inc

land.lhs.true54:                                  ; preds = %lor.lhs.false52
  %72 = load i64, ptr %k, align 8
  %73 = load i64, ptr %i, align 8
  %cmp55.not = icmp ugt i64 %72, %73
  br i1 %cmp55.not, label %for.inc, label %land.lhs.true56

land.lhs.true56:                                  ; preds = %land.lhs.true54
  %74 = load i64, ptr %k, align 8
  %75 = load i64, ptr %j, align 8
  %cmp57 = icmp ugt i64 %74, %75
  br i1 %cmp57, label %if.then58, label %for.inc

if.then58:                                        ; preds = %land.lhs.true56, %lor.lhs.false, %land.lhs.true
  %76 = load i64, ptr %i, align 8
  %77 = load ptr, ptr %object.addr, align 8
  %cell_ixs59 = getelementptr inbounds %struct.json_object_t, ptr %77, i64 0, i32 5
  %78 = load ptr, ptr %cell_ixs59, align 8
  %cells60 = getelementptr inbounds %struct.json_object_t, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %cells60, align 8
  %80 = load i64, ptr %j, align 8
  %arrayidx61 = getelementptr inbounds i64, ptr %79, i64 %80
  %81 = load i64, ptr %arrayidx61, align 8
  %arrayidx62 = getelementptr inbounds i64, ptr %78, i64 %81
  store i64 %76, ptr %arrayidx62, align 8
  %82 = load ptr, ptr %object.addr, align 8
  %cells63 = getelementptr inbounds %struct.json_object_t, ptr %82, i64 0, i32 1
  %83 = load ptr, ptr %cells63, align 8
  %84 = load i64, ptr %j, align 8
  %arrayidx64 = getelementptr inbounds i64, ptr %83, i64 %84
  %85 = load i64, ptr %arrayidx64, align 8
  %86 = load i64, ptr %i, align 8
  %arrayidx66 = getelementptr inbounds i64, ptr %83, i64 %86
  store i64 %85, ptr %arrayidx66, align 8
  store i64 %84, ptr %i, align 8
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false52, %land.lhs.true54, %land.lhs.true56, %if.then58
  %87 = load i64, ptr %x, align 8
  %inc = add i64 %87, 1
  br label %for.cond, !llvm.loop !25

for.end:                                          ; preds = %for.body, %for.cond
  %88 = load ptr, ptr %object.addr, align 8
  %cells68 = getelementptr inbounds %struct.json_object_t, ptr %88, i64 0, i32 1
  %89 = load ptr, ptr %cells68, align 8
  %90 = load i64, ptr %i, align 8
  %arrayidx69 = getelementptr inbounds i64, ptr %89, i64 %90
  store i64 -1, ptr %arrayidx69, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then4, %if.then
  %91 = load i32, ptr %retval, align 4
  ret i32 %91
}

; Function Attrs: nounwind ssp uwtable
define i32 @json_object_dotremove(ptr noundef %object, ptr noundef %name) #0 {
entry:
  %call = call i32 @json_object_dotremove_internal(ptr noundef %object, ptr noundef %name, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind ssp uwtable
define i32 @json_object_clear(ptr noundef %object) #0 {
entry:
  %object.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  store ptr %object, ptr %object.addr, align 8
  store i64 0, ptr %i, align 8
  %cmp = icmp eq ptr %object, null
  br i1 %cmp, label %return, label %for.cond

for.cond:                                         ; preds = %entry, %for.body
  %storemerge = phi i64 [ %inc, %for.body ], [ 0, %entry ]
  store i64 %storemerge, ptr %i, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %call = call i64 @json_object_get_count(ptr noundef %0)
  %cmp1 = icmp ult i64 %storemerge, %call
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr @parson_free, align 8
  %2 = load ptr, ptr %object.addr, align 8
  %names = getelementptr inbounds %struct.json_object_t, ptr %2, i64 0, i32 3
  %3 = load ptr, ptr %names, align 8
  %4 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %4
  %5 = load ptr, ptr %arrayidx, align 8
  call void %1(ptr noundef %5) #11
  %6 = load ptr, ptr %object.addr, align 8
  %names2 = getelementptr inbounds %struct.json_object_t, ptr %6, i64 0, i32 3
  %7 = load ptr, ptr %names2, align 8
  %8 = load i64, ptr %i, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %7, i64 %8
  store ptr null, ptr %arrayidx3, align 8
  %values = getelementptr inbounds %struct.json_object_t, ptr %6, i64 0, i32 4
  %9 = load ptr, ptr %values, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %9, i64 %8
  %10 = load ptr, ptr %arrayidx4, align 8
  call void @json_value_free(ptr noundef %10)
  %11 = load ptr, ptr %object.addr, align 8
  %values5 = getelementptr inbounds %struct.json_object_t, ptr %11, i64 0, i32 4
  %12 = load ptr, ptr %values5, align 8
  %13 = load i64, ptr %i, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %12, i64 %13
  store ptr null, ptr %arrayidx6, align 8
  %14 = load i64, ptr %i, align 8
  %inc = add i64 %14, 1
  br label %for.cond, !llvm.loop !26

for.end:                                          ; preds = %for.cond
  %15 = load ptr, ptr %object.addr, align 8
  %count = getelementptr inbounds %struct.json_object_t, ptr %15, i64 0, i32 6
  store i64 0, ptr %count, align 8
  br label %for.cond7

for.cond7:                                        ; preds = %for.body9, %for.end
  %storemerge1 = phi i64 [ 0, %for.end ], [ %inc12, %for.body9 ]
  store i64 %storemerge1, ptr %i, align 8
  %16 = load ptr, ptr %object.addr, align 8
  %cell_capacity = getelementptr inbounds %struct.json_object_t, ptr %16, i64 0, i32 8
  %17 = load i64, ptr %cell_capacity, align 8
  %cmp8 = icmp ult i64 %storemerge1, %17
  br i1 %cmp8, label %for.body9, label %return

for.body9:                                        ; preds = %for.cond7
  %18 = load ptr, ptr %object.addr, align 8
  %cells = getelementptr inbounds %struct.json_object_t, ptr %18, i64 0, i32 1
  %19 = load ptr, ptr %cells, align 8
  %20 = load i64, ptr %i, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %19, i64 %20
  store i64 -1, ptr %arrayidx10, align 8
  %21 = load i64, ptr %i, align 8
  %inc12 = add i64 %21, 1
  br label %for.cond7, !llvm.loop !27

return:                                           ; preds = %for.cond7, %entry
  %storemerge2 = phi i32 [ -1, %entry ], [ 0, %for.cond7 ]
  ret i32 %storemerge2
}

; Function Attrs: nounwind ssp uwtable
define i32 @json_validate(ptr noundef %schema, ptr noundef %value) #0 {
entry:
  %retval = alloca i32, align 4
  %schema.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %temp_schema_value = alloca ptr, align 8
  %temp_value = alloca ptr, align 8
  %schema_array = alloca ptr, align 8
  %value_array = alloca ptr, align 8
  %schema_object = alloca ptr, align 8
  %value_object = alloca ptr, align 8
  %schema_type = alloca i32, align 4
  %i = alloca i64, align 8
  %count = alloca i64, align 8
  store ptr %schema, ptr %schema.addr, align 8
  store ptr %value, ptr %value.addr, align 8
  store ptr null, ptr %temp_schema_value, align 8
  store ptr null, ptr %temp_value, align 8
  store ptr null, ptr %schema_array, align 8
  store ptr null, ptr %value_array, align 8
  store ptr null, ptr %schema_object, align 8
  store ptr null, ptr %value_object, align 8
  store i32 -1, ptr %schema_type, align 4
  store i64 0, ptr %i, align 8
  store i64 0, ptr %count, align 8
  %0 = load ptr, ptr %schema.addr, align 8
  %cmp = icmp eq ptr %0, null
  %1 = load ptr, ptr %value.addr, align 8
  %cmp1 = icmp eq ptr %1, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %schema.addr, align 8
  %call = call i32 @json_value_get_type(ptr noundef %2)
  store i32 %call, ptr %schema_type, align 4
  %3 = load ptr, ptr %value.addr, align 8
  %call2 = call i32 @json_value_get_type(ptr noundef %3)
  %cmp3.not = icmp eq i32 %call, %call2
  %4 = load i32, ptr %schema_type, align 4
  %cmp4.not = icmp eq i32 %4, 1
  %or.cond2 = select i1 %cmp3.not, i1 true, i1 %cmp4.not
  br i1 %or.cond2, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %5 = load i32, ptr %schema_type, align 4
  switch i32 %5, label %sw.default [
    i32 5, label %sw.bb
    i32 4, label %sw.bb21
    i32 2, label %sw.bb48
    i32 3, label %sw.bb48
    i32 6, label %sw.bb48
    i32 1, label %sw.bb48
  ]

sw.bb:                                            ; preds = %if.end6
  %6 = load ptr, ptr %schema.addr, align 8
  %call7 = call ptr @json_value_get_array(ptr noundef %6)
  store ptr %call7, ptr %schema_array, align 8
  %7 = load ptr, ptr %value.addr, align 8
  %call8 = call ptr @json_value_get_array(ptr noundef %7)
  store ptr %call8, ptr %value_array, align 8
  %call9 = call i64 @json_array_get_count(ptr noundef %call7)
  store i64 %call9, ptr %count, align 8
  %cmp10 = icmp eq i64 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %sw.bb
  store i32 0, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %sw.bb
  %8 = load ptr, ptr %schema_array, align 8
  %call13 = call ptr @json_array_get_value(ptr noundef %8, i64 noundef 0)
  store ptr %call13, ptr %temp_schema_value, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end12
  %storemerge1 = phi i64 [ 0, %if.end12 ], [ %inc, %for.inc ]
  store i64 %storemerge1, ptr %i, align 8
  %9 = load ptr, ptr %value_array, align 8
  %call14 = call i64 @json_array_get_count(ptr noundef %9)
  %cmp15 = icmp ult i64 %storemerge1, %call14
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %value_array, align 8
  %11 = load i64, ptr %i, align 8
  %call16 = call ptr @json_array_get_value(ptr noundef %10, i64 noundef %11)
  store ptr %call16, ptr %temp_value, align 8
  %12 = load ptr, ptr %temp_schema_value, align 8
  %call17 = call i32 @json_validate(ptr noundef %12, ptr noundef %call16)
  %cmp18.not = icmp eq i32 %call17, 0
  br i1 %cmp18.not, label %for.inc, label %if.then19

if.then19:                                        ; preds = %for.body
  store i32 -1, ptr %retval, align 4
  br label %return

for.inc:                                          ; preds = %for.body
  %13 = load i64, ptr %i, align 8
  %inc = add i64 %13, 1
  br label %for.cond, !llvm.loop !28

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb21:                                          ; preds = %if.end6
  %14 = load ptr, ptr %schema.addr, align 8
  %call22 = call ptr @json_value_get_object(ptr noundef %14)
  store ptr %call22, ptr %schema_object, align 8
  %15 = load ptr, ptr %value.addr, align 8
  %call23 = call ptr @json_value_get_object(ptr noundef %15)
  store ptr %call23, ptr %value_object, align 8
  %call24 = call i64 @json_object_get_count(ptr noundef %call22)
  store i64 %call24, ptr %count, align 8
  %cmp25 = icmp eq i64 %call24, 0
  br i1 %cmp25, label %if.then26, label %if.else

if.then26:                                        ; preds = %sw.bb21
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %sw.bb21
  %16 = load ptr, ptr %value_object, align 8
  %call27 = call i64 @json_object_get_count(ptr noundef %16)
  %17 = load i64, ptr %count, align 8
  %cmp28 = icmp ult i64 %call27, %17
  br i1 %cmp28, label %if.then29, label %for.cond32

if.then29:                                        ; preds = %if.else
  store i32 -1, ptr %retval, align 4
  br label %return

for.cond32:                                       ; preds = %if.else, %for.inc45
  %storemerge = phi i64 [ %inc46, %for.inc45 ], [ 0, %if.else ]
  store i64 %storemerge, ptr %i, align 8
  %18 = load i64, ptr %count, align 8
  %cmp33 = icmp ult i64 %storemerge, %18
  br i1 %cmp33, label %for.body34, label %for.end47

for.body34:                                       ; preds = %for.cond32
  %19 = load ptr, ptr %schema_object, align 8
  %20 = load i64, ptr %i, align 8
  %call35 = call ptr @json_object_get_name(ptr noundef %19, i64 noundef %20)
  %call36 = call ptr @json_object_get_value(ptr noundef %19, ptr noundef %call35)
  store ptr %call36, ptr %temp_schema_value, align 8
  %21 = load ptr, ptr %value_object, align 8
  %call37 = call ptr @json_object_get_value(ptr noundef %21, ptr noundef %call35)
  store ptr %call37, ptr %temp_value, align 8
  %cmp38 = icmp eq ptr %call37, null
  br i1 %cmp38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %for.body34
  store i32 -1, ptr %retval, align 4
  br label %return

if.end40:                                         ; preds = %for.body34
  %22 = load ptr, ptr %temp_schema_value, align 8
  %23 = load ptr, ptr %temp_value, align 8
  %call41 = call i32 @json_validate(ptr noundef %22, ptr noundef %23)
  %cmp42.not = icmp eq i32 %call41, 0
  br i1 %cmp42.not, label %for.inc45, label %if.then43

if.then43:                                        ; preds = %if.end40
  store i32 -1, ptr %retval, align 4
  br label %return

for.inc45:                                        ; preds = %if.end40
  %24 = load i64, ptr %i, align 8
  %inc46 = add i64 %24, 1
  br label %for.cond32, !llvm.loop !29

for.end47:                                        ; preds = %for.cond32
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb48:                                          ; preds = %if.end6, %if.end6, %if.end6, %if.end6
  store i32 0, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %if.end6
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb48, %for.end47, %if.then43, %if.then39, %if.then29, %if.then26, %for.end, %if.then19, %if.then11, %if.then5, %if.then
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

; Function Attrs: nounwind ssp uwtable
define i32 @json_value_equals(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %a_object = alloca ptr, align 8
  %b_object = alloca ptr, align 8
  %a_array = alloca ptr, align 8
  %b_array = alloca ptr, align 8
  %a_string = alloca ptr, align 8
  %b_string = alloca ptr, align 8
  %a_count = alloca i64, align 8
  %i = alloca i64, align 8
  %a_type = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store ptr null, ptr %a_object, align 8
  store ptr null, ptr %b_object, align 8
  store ptr null, ptr %a_array, align 8
  store ptr null, ptr %b_array, align 8
  store ptr null, ptr %a_string, align 8
  store ptr null, ptr %b_string, align 8
  store i64 0, ptr %a_count, align 8
  store i64 0, ptr %i, align 8
  %0 = load ptr, ptr %a.addr, align 8
  %call = call i32 @json_value_get_type(ptr noundef %0)
  store i32 %call, ptr %a_type, align 4
  %1 = load ptr, ptr %b.addr, align 8
  %call1 = call i32 @json_value_get_type(ptr noundef %1)
  %cmp.not = icmp eq i32 %call, %call1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %a_type, align 4
  switch i32 %2, label %sw.default [
    i32 5, label %sw.bb
    i32 4, label %sw.bb15
    i32 2, label %sw.bb36
    i32 6, label %sw.bb49
    i32 3, label %sw.bb53
    i32 -1, label %sw.bb58
    i32 1, label %sw.bb59
  ]

sw.bb:                                            ; preds = %if.end
  %3 = load ptr, ptr %a.addr, align 8
  %call2 = call ptr @json_value_get_array(ptr noundef %3)
  store ptr %call2, ptr %a_array, align 8
  %4 = load ptr, ptr %b.addr, align 8
  %call3 = call ptr @json_value_get_array(ptr noundef %4)
  store ptr %call3, ptr %b_array, align 8
  %call4 = call i64 @json_array_get_count(ptr noundef %call2)
  store i64 %call4, ptr %a_count, align 8
  %call5 = call i64 @json_array_get_count(ptr noundef %call3)
  %cmp6.not = icmp eq i64 %call4, %call5
  br i1 %cmp6.not, label %for.cond, label %if.then7

if.then7:                                         ; preds = %sw.bb
  store i32 0, ptr %retval, align 4
  br label %return

for.cond:                                         ; preds = %sw.bb, %for.inc
  %storemerge1 = phi i64 [ %inc, %for.inc ], [ 0, %sw.bb ]
  store i64 %storemerge1, ptr %i, align 8
  %5 = load i64, ptr %a_count, align 8
  %cmp9 = icmp ult i64 %storemerge1, %5
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %a_array, align 8
  %7 = load i64, ptr %i, align 8
  %call10 = call ptr @json_array_get_value(ptr noundef %6, i64 noundef %7)
  %8 = load ptr, ptr %b_array, align 8
  %call11 = call ptr @json_array_get_value(ptr noundef %8, i64 noundef %7)
  %call12 = call i32 @json_value_equals(ptr noundef %call10, ptr noundef %call11)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.then13, label %for.inc

if.then13:                                        ; preds = %for.body
  store i32 0, ptr %retval, align 4
  br label %return

for.inc:                                          ; preds = %for.body
  %9 = load i64, ptr %i, align 8
  %inc = add i64 %9, 1
  br label %for.cond, !llvm.loop !30

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb15:                                          ; preds = %if.end
  %10 = load ptr, ptr %a.addr, align 8
  %call16 = call ptr @json_value_get_object(ptr noundef %10)
  store ptr %call16, ptr %a_object, align 8
  %11 = load ptr, ptr %b.addr, align 8
  %call17 = call ptr @json_value_get_object(ptr noundef %11)
  store ptr %call17, ptr %b_object, align 8
  %call18 = call i64 @json_object_get_count(ptr noundef %call16)
  store i64 %call18, ptr %a_count, align 8
  %call19 = call i64 @json_object_get_count(ptr noundef %call17)
  %cmp20.not = icmp eq i64 %call18, %call19
  br i1 %cmp20.not, label %for.cond23, label %if.then21

if.then21:                                        ; preds = %sw.bb15
  store i32 0, ptr %retval, align 4
  br label %return

for.cond23:                                       ; preds = %sw.bb15, %for.inc33
  %storemerge = phi i64 [ %inc34, %for.inc33 ], [ 0, %sw.bb15 ]
  store i64 %storemerge, ptr %i, align 8
  %12 = load i64, ptr %a_count, align 8
  %cmp24 = icmp ult i64 %storemerge, %12
  br i1 %cmp24, label %for.body25, label %for.end35

for.body25:                                       ; preds = %for.cond23
  %13 = load ptr, ptr %a_object, align 8
  %14 = load i64, ptr %i, align 8
  %call26 = call ptr @json_object_get_name(ptr noundef %13, i64 noundef %14)
  %call27 = call ptr @json_object_get_value(ptr noundef %13, ptr noundef %call26)
  %15 = load ptr, ptr %b_object, align 8
  %call28 = call ptr @json_object_get_value(ptr noundef %15, ptr noundef %call26)
  %call29 = call i32 @json_value_equals(ptr noundef %call27, ptr noundef %call28)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then31, label %for.inc33

if.then31:                                        ; preds = %for.body25
  store i32 0, ptr %retval, align 4
  br label %return

for.inc33:                                        ; preds = %for.body25
  %16 = load i64, ptr %i, align 8
  %inc34 = add i64 %16, 1
  br label %for.cond23, !llvm.loop !31

for.end35:                                        ; preds = %for.cond23
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb36:                                          ; preds = %if.end
  %17 = load ptr, ptr %a.addr, align 8
  %call37 = call ptr @json_value_get_string_desc(ptr noundef %17)
  store ptr %call37, ptr %a_string, align 8
  %18 = load ptr, ptr %b.addr, align 8
  %call38 = call ptr @json_value_get_string_desc(ptr noundef %18)
  store ptr %call38, ptr %b_string, align 8
  %cmp39 = icmp eq ptr %call37, null
  %19 = load ptr, ptr %b_string, align 8
  %cmp40 = icmp eq ptr %19, null
  %or.cond = select i1 %cmp39, i1 true, i1 %cmp40
  br i1 %or.cond, label %if.then41, label %if.end42

if.then41:                                        ; preds = %sw.bb36
  store i32 0, ptr %retval, align 4
  br label %return

if.end42:                                         ; preds = %sw.bb36
  %20 = load ptr, ptr %a_string, align 8
  %length = getelementptr inbounds %struct.json_string, ptr %20, i64 0, i32 1
  %21 = load i64, ptr %length, align 8
  %22 = load ptr, ptr %b_string, align 8
  %length43 = getelementptr inbounds %struct.json_string, ptr %22, i64 0, i32 1
  %23 = load i64, ptr %length43, align 8
  %cmp44 = icmp eq i64 %21, %23
  br i1 %cmp44, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end42
  %24 = load ptr, ptr %a_string, align 8
  %25 = load ptr, ptr %24, align 8
  %26 = load ptr, ptr %b_string, align 8
  %27 = load ptr, ptr %26, align 8
  %length46 = getelementptr inbounds %struct.json_string, ptr %24, i64 0, i32 1
  %28 = load i64, ptr %length46, align 8
  %call47 = call i32 @memcmp(ptr noundef %25, ptr noundef %27, i64 noundef %28) #11
  %cmp48 = icmp eq i32 %call47, 0
  %phi.cast = zext i1 %cmp48 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end42
  %29 = phi i32 [ 0, %if.end42 ], [ %phi.cast, %land.rhs ]
  store i32 %29, ptr %retval, align 4
  br label %return

sw.bb49:                                          ; preds = %if.end
  %30 = load ptr, ptr %a.addr, align 8
  %call50 = call i32 @json_value_get_boolean(ptr noundef %30)
  %31 = load ptr, ptr %b.addr, align 8
  %call51 = call i32 @json_value_get_boolean(ptr noundef %31)
  %cmp52 = icmp eq i32 %call50, %call51
  %conv = zext i1 %cmp52 to i32
  store i32 %conv, ptr %retval, align 4
  br label %return

sw.bb53:                                          ; preds = %if.end
  %32 = load ptr, ptr %a.addr, align 8
  %call54 = call double @json_value_get_number(ptr noundef %32)
  %33 = load ptr, ptr %b.addr, align 8
  %call55 = call double @json_value_get_number(ptr noundef %33)
  %sub = fsub double %call54, %call55
  %34 = call double @llvm.fabs.f64(double %sub)
  %cmp56 = fcmp olt double %34, 0x3EB0C6F7A0B5ED8D
  %conv57 = zext i1 %cmp56 to i32
  store i32 %conv57, ptr %retval, align 4
  br label %return

sw.bb58:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb59:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb59, %sw.bb58, %sw.bb53, %sw.bb49, %land.end, %if.then41, %for.end35, %if.then31, %if.then21, %for.end, %if.then13, %if.then7, %if.then
  %35 = load i32, ptr %retval, align 4
  ret i32 %35
}

declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nounwind ssp uwtable
define i32 @json_type(ptr noundef %value) #0 {
entry:
  %call = call i32 @json_value_get_type(ptr noundef %value)
  ret i32 %call
}

; Function Attrs: nounwind ssp uwtable
define ptr @json_object(ptr noundef %value) #0 {
entry:
  %call = call ptr @json_value_get_object(ptr noundef %value)
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define ptr @json_array(ptr noundef %value) #0 {
entry:
  %call = call ptr @json_value_get_array(ptr noundef %value)
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define ptr @json_string(ptr noundef %value) #0 {
entry:
  %call = call ptr @json_value_get_string(ptr noundef %value)
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define i64 @json_string_len(ptr noundef %value) #0 {
entry:
  %call = call i64 @json_value_get_string_len(ptr noundef %value)
  ret i64 %call
}

; Function Attrs: nounwind ssp uwtable
define double @json_number(ptr noundef %value) #0 {
entry:
  %call = call double @json_value_get_number(ptr noundef %value)
  ret double %call
}

; Function Attrs: nounwind ssp uwtable
define i32 @json_boolean(ptr noundef %value) #0 {
entry:
  %call = call i32 @json_value_get_boolean(ptr noundef %value)
  ret i32 %call
}

; Function Attrs: nounwind ssp uwtable
define void @json_set_allocation_functions(ptr noundef %malloc_fun, ptr noundef %free_fun) #0 {
entry:
  store ptr %malloc_fun, ptr @parson_malloc, align 8
  store ptr %free_fun, ptr @parson_free, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @json_set_escape_slashes(i32 noundef %escape_slashes) #0 {
entry:
  store i32 %escape_slashes, ptr @parson_escape_slashes, align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @json_set_float_serialization_format(ptr noundef %format) #0 {
entry:
  %format.addr = alloca ptr, align 8
  store ptr %format, ptr %format.addr, align 8
  %0 = load ptr, ptr @parson_float_format, align 8
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @parson_free, align 8
  %2 = load ptr, ptr @parson_float_format, align 8
  call void %1(ptr noundef %2) #11
  store ptr null, ptr @parson_float_format, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %format.addr, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %format.addr, align 8
  %call = call ptr @parson_strdup(ptr noundef %4)
  br label %return

return:                                           ; preds = %if.end, %if.end3
  %storemerge = phi ptr [ %call, %if.end3 ], [ null, %if.end ]
  store ptr %storemerge, ptr @parson_float_format, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @json_set_number_serialization_function(ptr noundef %func) #0 {
entry:
  store ptr %func, ptr @parson_number_serialization_function, align 8
  ret void
}

declare i32 @fseek(ptr noundef, i64 noundef, i32 noundef) #1

declare i64 @ftell(ptr noundef) #1

declare void @rewind(ptr noundef) #1

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

declare i32 @ferror(ptr noundef) #1

declare void @free(ptr noundef) #1

; Function Attrs: nounwind readonly willreturn
declare i32 @isspace(i32 noundef) #4

; Function Attrs: nounwind ssp uwtable
define internal ptr @parse_object_value(ptr noundef %string, i64 noundef %nesting) #0 {
entry:
  %retval = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  %nesting.addr = alloca i64, align 8
  %output_value = alloca ptr, align 8
  %new_value = alloca ptr, align 8
  %output_object = alloca ptr, align 8
  %new_key = alloca ptr, align 8
  %key_len = alloca i64, align 8
  store ptr %string, ptr %string.addr, align 8
  store i64 %nesting, ptr %nesting.addr, align 8
  store ptr null, ptr %output_value, align 8
  store ptr null, ptr %new_value, align 8
  store ptr null, ptr %output_object, align 8
  store ptr null, ptr %new_key, align 8
  %call = call ptr @json_value_init_object()
  store ptr %call, ptr %output_value, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %string.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %2 = load i8, ptr %1, align 1
  %cmp1.not = icmp eq i8 %2, 123
  br i1 %cmp1.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %3 = load ptr, ptr %output_value, align 8
  call void @json_value_free(ptr noundef %3)
  store ptr null, ptr %retval, align 8
  br label %return

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %output_value, align 8
  %call5 = call ptr @json_value_get_object(ptr noundef %4)
  store ptr %call5, ptr %output_object, align 8
  %5 = load ptr, ptr %string.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %incdec.ptr, ptr %5, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end4
  %7 = load ptr, ptr %string.addr, align 8
  %8 = load ptr, ptr %7, align 8
  %9 = load i8, ptr %8, align 1
  %conv6 = zext i8 %9 to i32
  %call7 = call i32 @isspace(i32 noundef %conv6) #12
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %10 = load ptr, ptr %string.addr, align 8
  %11 = load ptr, ptr %10, align 8
  %incdec.ptr8 = getelementptr inbounds i8, ptr %11, i64 1
  store ptr %incdec.ptr8, ptr %10, align 8
  br label %while.cond, !llvm.loop !32

while.end:                                        ; preds = %while.cond
  %12 = load ptr, ptr %string.addr, align 8
  %13 = load ptr, ptr %12, align 8
  %14 = load i8, ptr %13, align 1
  %cmp10 = icmp eq i8 %14, 125
  br i1 %cmp10, label %if.then12, label %while.cond15

if.then12:                                        ; preds = %while.end
  %15 = load ptr, ptr %string.addr, align 8
  %16 = load ptr, ptr %15, align 8
  %incdec.ptr13 = getelementptr inbounds i8, ptr %16, i64 1
  store ptr %incdec.ptr13, ptr %15, align 8
  %17 = load ptr, ptr %output_value, align 8
  store ptr %17, ptr %retval, align 8
  br label %return

while.cond15:                                     ; preds = %while.end71, %while.end
  %18 = load ptr, ptr %string.addr, align 8
  %19 = load ptr, ptr %18, align 8
  %20 = load i8, ptr %19, align 1
  %cmp17.not = icmp eq i8 %20, 0
  br i1 %cmp17.not, label %while.end77, label %while.body19

while.body19:                                     ; preds = %while.cond15
  store i64 0, ptr %key_len, align 8
  %21 = load ptr, ptr %string.addr, align 8
  %call20 = call ptr @get_quoted_string(ptr noundef %21, ptr noundef nonnull %key_len)
  store ptr %call20, ptr %new_key, align 8
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %if.then22, label %if.end23

if.then22:                                        ; preds = %while.body19
  %22 = load ptr, ptr %output_value, align 8
  call void @json_value_free(ptr noundef %22)
  store ptr null, ptr %retval, align 8
  br label %return

if.end23:                                         ; preds = %while.body19
  %23 = load i64, ptr %key_len, align 8
  %24 = load ptr, ptr %new_key, align 8
  %call24 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %24) #11
  %cmp25.not = icmp eq i64 %23, %call24
  br i1 %cmp25.not, label %while.cond29, label %if.then27

if.then27:                                        ; preds = %if.end23
  %25 = load ptr, ptr @parson_free, align 8
  %26 = load ptr, ptr %new_key, align 8
  call void %25(ptr noundef %26) #11
  %27 = load ptr, ptr %output_value, align 8
  call void @json_value_free(ptr noundef %27)
  store ptr null, ptr %retval, align 8
  br label %return

while.cond29:                                     ; preds = %if.end23, %while.body33
  %28 = load ptr, ptr %string.addr, align 8
  %29 = load ptr, ptr %28, align 8
  %30 = load i8, ptr %29, align 1
  %conv30 = zext i8 %30 to i32
  %call31 = call i32 @isspace(i32 noundef %conv30) #12
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %while.end35, label %while.body33

while.body33:                                     ; preds = %while.cond29
  %31 = load ptr, ptr %string.addr, align 8
  %32 = load ptr, ptr %31, align 8
  %incdec.ptr34 = getelementptr inbounds i8, ptr %32, i64 1
  store ptr %incdec.ptr34, ptr %31, align 8
  br label %while.cond29, !llvm.loop !33

while.end35:                                      ; preds = %while.cond29
  %33 = load ptr, ptr %string.addr, align 8
  %34 = load ptr, ptr %33, align 8
  %35 = load i8, ptr %34, align 1
  %cmp37.not = icmp eq i8 %35, 58
  br i1 %cmp37.not, label %if.end40, label %if.then39

if.then39:                                        ; preds = %while.end35
  %36 = load ptr, ptr @parson_free, align 8
  %37 = load ptr, ptr %new_key, align 8
  call void %36(ptr noundef %37) #11
  %38 = load ptr, ptr %output_value, align 8
  call void @json_value_free(ptr noundef %38)
  store ptr null, ptr %retval, align 8
  br label %return

if.end40:                                         ; preds = %while.end35
  %39 = load ptr, ptr %string.addr, align 8
  %40 = load ptr, ptr %39, align 8
  %incdec.ptr41 = getelementptr inbounds i8, ptr %40, i64 1
  store ptr %incdec.ptr41, ptr %39, align 8
  %41 = load i64, ptr %nesting.addr, align 8
  %call42 = call ptr @parse_value(ptr noundef nonnull %39, i64 noundef %41)
  store ptr %call42, ptr %new_value, align 8
  %cmp43 = icmp eq ptr %call42, null
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end40
  %42 = load ptr, ptr @parson_free, align 8
  %43 = load ptr, ptr %new_key, align 8
  call void %42(ptr noundef %43) #11
  %44 = load ptr, ptr %output_value, align 8
  call void @json_value_free(ptr noundef %44)
  store ptr null, ptr %retval, align 8
  br label %return

if.end46:                                         ; preds = %if.end40
  %45 = load ptr, ptr %output_object, align 8
  %46 = load ptr, ptr %new_key, align 8
  %47 = load ptr, ptr %new_value, align 8
  %call47 = call i32 @json_object_add(ptr noundef %45, ptr noundef %46, ptr noundef %47)
  %cmp48.not = icmp eq i32 %call47, 0
  br i1 %cmp48.not, label %while.cond52, label %if.then50

if.then50:                                        ; preds = %if.end46
  %48 = load ptr, ptr @parson_free, align 8
  %49 = load ptr, ptr %new_key, align 8
  call void %48(ptr noundef %49) #11
  %50 = load ptr, ptr %new_value, align 8
  call void @json_value_free(ptr noundef %50)
  %51 = load ptr, ptr %output_value, align 8
  call void @json_value_free(ptr noundef %51)
  store ptr null, ptr %retval, align 8
  br label %return

while.cond52:                                     ; preds = %if.end46, %while.body56
  %52 = load ptr, ptr %string.addr, align 8
  %53 = load ptr, ptr %52, align 8
  %54 = load i8, ptr %53, align 1
  %conv53 = zext i8 %54 to i32
  %call54 = call i32 @isspace(i32 noundef %conv53) #12
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %while.end58, label %while.body56

while.body56:                                     ; preds = %while.cond52
  %55 = load ptr, ptr %string.addr, align 8
  %56 = load ptr, ptr %55, align 8
  %incdec.ptr57 = getelementptr inbounds i8, ptr %56, i64 1
  store ptr %incdec.ptr57, ptr %55, align 8
  br label %while.cond52, !llvm.loop !34

while.end58:                                      ; preds = %while.cond52
  %57 = load ptr, ptr %string.addr, align 8
  %58 = load ptr, ptr %57, align 8
  %59 = load i8, ptr %58, align 1
  %cmp60.not = icmp eq i8 %59, 44
  br i1 %cmp60.not, label %if.end63, label %while.end77

if.end63:                                         ; preds = %while.end58
  %60 = load ptr, ptr %string.addr, align 8
  %61 = load ptr, ptr %60, align 8
  %incdec.ptr64 = getelementptr inbounds i8, ptr %61, i64 1
  store ptr %incdec.ptr64, ptr %60, align 8
  br label %while.cond65

while.cond65:                                     ; preds = %while.body69, %if.end63
  %62 = load ptr, ptr %string.addr, align 8
  %63 = load ptr, ptr %62, align 8
  %64 = load i8, ptr %63, align 1
  %conv66 = zext i8 %64 to i32
  %call67 = call i32 @isspace(i32 noundef %conv66) #12
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %while.end71, label %while.body69

while.body69:                                     ; preds = %while.cond65
  %65 = load ptr, ptr %string.addr, align 8
  %66 = load ptr, ptr %65, align 8
  %incdec.ptr70 = getelementptr inbounds i8, ptr %66, i64 1
  store ptr %incdec.ptr70, ptr %65, align 8
  br label %while.cond65, !llvm.loop !35

while.end71:                                      ; preds = %while.cond65
  %67 = load ptr, ptr %string.addr, align 8
  %68 = load ptr, ptr %67, align 8
  %69 = load i8, ptr %68, align 1
  %cmp73 = icmp eq i8 %69, 125
  br i1 %cmp73, label %while.end77, label %while.cond15, !llvm.loop !36

while.end77:                                      ; preds = %while.end71, %while.end58, %while.cond15
  br label %while.cond78

while.cond78:                                     ; preds = %while.body82, %while.end77
  %70 = load ptr, ptr %string.addr, align 8
  %71 = load ptr, ptr %70, align 8
  %72 = load i8, ptr %71, align 1
  %conv79 = zext i8 %72 to i32
  %call80 = call i32 @isspace(i32 noundef %conv79) #12
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %while.end84, label %while.body82

while.body82:                                     ; preds = %while.cond78
  %73 = load ptr, ptr %string.addr, align 8
  %74 = load ptr, ptr %73, align 8
  %incdec.ptr83 = getelementptr inbounds i8, ptr %74, i64 1
  store ptr %incdec.ptr83, ptr %73, align 8
  br label %while.cond78, !llvm.loop !37

while.end84:                                      ; preds = %while.cond78
  %75 = load ptr, ptr %string.addr, align 8
  %76 = load ptr, ptr %75, align 8
  %77 = load i8, ptr %76, align 1
  %cmp86.not = icmp eq i8 %77, 125
  br i1 %cmp86.not, label %if.end89, label %if.then88

if.then88:                                        ; preds = %while.end84
  %78 = load ptr, ptr %output_value, align 8
  call void @json_value_free(ptr noundef %78)
  store ptr null, ptr %retval, align 8
  br label %return

if.end89:                                         ; preds = %while.end84
  %79 = load ptr, ptr %string.addr, align 8
  %80 = load ptr, ptr %79, align 8
  %incdec.ptr90 = getelementptr inbounds i8, ptr %80, i64 1
  store ptr %incdec.ptr90, ptr %79, align 8
  %81 = load ptr, ptr %output_value, align 8
  store ptr %81, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end89, %if.then88, %if.then50, %if.then45, %if.then39, %if.then27, %if.then22, %if.then12, %if.then3, %if.then
  %82 = load ptr, ptr %retval, align 8
  ret ptr %82
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @parse_array_value(ptr noundef %string, i64 noundef %nesting) #0 {
entry:
  %retval = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  %nesting.addr = alloca i64, align 8
  %output_value = alloca ptr, align 8
  %new_array_value = alloca ptr, align 8
  %output_array = alloca ptr, align 8
  store ptr %string, ptr %string.addr, align 8
  store i64 %nesting, ptr %nesting.addr, align 8
  store ptr null, ptr %output_value, align 8
  store ptr null, ptr %new_array_value, align 8
  store ptr null, ptr %output_array, align 8
  %call = call ptr @json_value_init_array()
  store ptr %call, ptr %output_value, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %string.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %2 = load i8, ptr %1, align 1
  %cmp1.not = icmp eq i8 %2, 91
  br i1 %cmp1.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %3 = load ptr, ptr %output_value, align 8
  call void @json_value_free(ptr noundef %3)
  store ptr null, ptr %retval, align 8
  br label %return

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %output_value, align 8
  %call5 = call ptr @json_value_get_array(ptr noundef %4)
  store ptr %call5, ptr %output_array, align 8
  %5 = load ptr, ptr %string.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %incdec.ptr, ptr %5, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end4
  %7 = load ptr, ptr %string.addr, align 8
  %8 = load ptr, ptr %7, align 8
  %9 = load i8, ptr %8, align 1
  %conv6 = zext i8 %9 to i32
  %call7 = call i32 @isspace(i32 noundef %conv6) #12
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %10 = load ptr, ptr %string.addr, align 8
  %11 = load ptr, ptr %10, align 8
  %incdec.ptr8 = getelementptr inbounds i8, ptr %11, i64 1
  store ptr %incdec.ptr8, ptr %10, align 8
  br label %while.cond, !llvm.loop !38

while.end:                                        ; preds = %while.cond
  %12 = load ptr, ptr %string.addr, align 8
  %13 = load ptr, ptr %12, align 8
  %14 = load i8, ptr %13, align 1
  %cmp10 = icmp eq i8 %14, 93
  br i1 %cmp10, label %if.then12, label %while.cond15

if.then12:                                        ; preds = %while.end
  %15 = load ptr, ptr %string.addr, align 8
  %16 = load ptr, ptr %15, align 8
  %incdec.ptr13 = getelementptr inbounds i8, ptr %16, i64 1
  store ptr %incdec.ptr13, ptr %15, align 8
  %17 = load ptr, ptr %output_value, align 8
  store ptr %17, ptr %retval, align 8
  br label %return

while.cond15:                                     ; preds = %while.end49, %while.end
  %18 = load ptr, ptr %string.addr, align 8
  %19 = load ptr, ptr %18, align 8
  %20 = load i8, ptr %19, align 1
  %cmp17.not = icmp eq i8 %20, 0
  br i1 %cmp17.not, label %while.end55, label %while.body19

while.body19:                                     ; preds = %while.cond15
  %21 = load ptr, ptr %string.addr, align 8
  %22 = load i64, ptr %nesting.addr, align 8
  %call20 = call ptr @parse_value(ptr noundef %21, i64 noundef %22)
  store ptr %call20, ptr %new_array_value, align 8
  %cmp21 = icmp eq ptr %call20, null
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %while.body19
  %23 = load ptr, ptr %output_value, align 8
  call void @json_value_free(ptr noundef %23)
  store ptr null, ptr %retval, align 8
  br label %return

if.end24:                                         ; preds = %while.body19
  %24 = load ptr, ptr %output_array, align 8
  %25 = load ptr, ptr %new_array_value, align 8
  %call25 = call i32 @json_array_add(ptr noundef %24, ptr noundef %25)
  %cmp26.not = icmp eq i32 %call25, 0
  br i1 %cmp26.not, label %while.cond30, label %if.then28

if.then28:                                        ; preds = %if.end24
  %26 = load ptr, ptr %new_array_value, align 8
  call void @json_value_free(ptr noundef %26)
  %27 = load ptr, ptr %output_value, align 8
  call void @json_value_free(ptr noundef %27)
  store ptr null, ptr %retval, align 8
  br label %return

while.cond30:                                     ; preds = %if.end24, %while.body34
  %28 = load ptr, ptr %string.addr, align 8
  %29 = load ptr, ptr %28, align 8
  %30 = load i8, ptr %29, align 1
  %conv31 = zext i8 %30 to i32
  %call32 = call i32 @isspace(i32 noundef %conv31) #12
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %while.end36, label %while.body34

while.body34:                                     ; preds = %while.cond30
  %31 = load ptr, ptr %string.addr, align 8
  %32 = load ptr, ptr %31, align 8
  %incdec.ptr35 = getelementptr inbounds i8, ptr %32, i64 1
  store ptr %incdec.ptr35, ptr %31, align 8
  br label %while.cond30, !llvm.loop !39

while.end36:                                      ; preds = %while.cond30
  %33 = load ptr, ptr %string.addr, align 8
  %34 = load ptr, ptr %33, align 8
  %35 = load i8, ptr %34, align 1
  %cmp38.not = icmp eq i8 %35, 44
  br i1 %cmp38.not, label %if.end41, label %while.end55

if.end41:                                         ; preds = %while.end36
  %36 = load ptr, ptr %string.addr, align 8
  %37 = load ptr, ptr %36, align 8
  %incdec.ptr42 = getelementptr inbounds i8, ptr %37, i64 1
  store ptr %incdec.ptr42, ptr %36, align 8
  br label %while.cond43

while.cond43:                                     ; preds = %while.body47, %if.end41
  %38 = load ptr, ptr %string.addr, align 8
  %39 = load ptr, ptr %38, align 8
  %40 = load i8, ptr %39, align 1
  %conv44 = zext i8 %40 to i32
  %call45 = call i32 @isspace(i32 noundef %conv44) #12
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %while.end49, label %while.body47

while.body47:                                     ; preds = %while.cond43
  %41 = load ptr, ptr %string.addr, align 8
  %42 = load ptr, ptr %41, align 8
  %incdec.ptr48 = getelementptr inbounds i8, ptr %42, i64 1
  store ptr %incdec.ptr48, ptr %41, align 8
  br label %while.cond43, !llvm.loop !40

while.end49:                                      ; preds = %while.cond43
  %43 = load ptr, ptr %string.addr, align 8
  %44 = load ptr, ptr %43, align 8
  %45 = load i8, ptr %44, align 1
  %cmp51 = icmp eq i8 %45, 93
  br i1 %cmp51, label %while.end55, label %while.cond15, !llvm.loop !41

while.end55:                                      ; preds = %while.end49, %while.end36, %while.cond15
  br label %while.cond56

while.cond56:                                     ; preds = %while.body60, %while.end55
  %46 = load ptr, ptr %string.addr, align 8
  %47 = load ptr, ptr %46, align 8
  %48 = load i8, ptr %47, align 1
  %conv57 = zext i8 %48 to i32
  %call58 = call i32 @isspace(i32 noundef %conv57) #12
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %while.end62, label %while.body60

while.body60:                                     ; preds = %while.cond56
  %49 = load ptr, ptr %string.addr, align 8
  %50 = load ptr, ptr %49, align 8
  %incdec.ptr61 = getelementptr inbounds i8, ptr %50, i64 1
  store ptr %incdec.ptr61, ptr %49, align 8
  br label %while.cond56, !llvm.loop !42

while.end62:                                      ; preds = %while.cond56
  %51 = load ptr, ptr %string.addr, align 8
  %52 = load ptr, ptr %51, align 8
  %53 = load i8, ptr %52, align 1
  %cmp64.not = icmp eq i8 %53, 93
  br i1 %cmp64.not, label %lor.lhs.false, label %if.then70

lor.lhs.false:                                    ; preds = %while.end62
  %54 = load ptr, ptr %output_array, align 8
  %call66 = call i64 @json_array_get_count(ptr noundef %54)
  %call67 = call i32 @json_array_resize(ptr noundef %54, i64 noundef %call66)
  %cmp68.not = icmp eq i32 %call67, 0
  br i1 %cmp68.not, label %if.end71, label %if.then70

if.then70:                                        ; preds = %lor.lhs.false, %while.end62
  %55 = load ptr, ptr %output_value, align 8
  call void @json_value_free(ptr noundef %55)
  store ptr null, ptr %retval, align 8
  br label %return

if.end71:                                         ; preds = %lor.lhs.false
  %56 = load ptr, ptr %string.addr, align 8
  %57 = load ptr, ptr %56, align 8
  %incdec.ptr72 = getelementptr inbounds i8, ptr %57, i64 1
  store ptr %incdec.ptr72, ptr %56, align 8
  %58 = load ptr, ptr %output_value, align 8
  store ptr %58, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end71, %if.then70, %if.then28, %if.then23, %if.then12, %if.then3, %if.then
  %59 = load ptr, ptr %retval, align 8
  ret ptr %59
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @parse_string_value(ptr noundef %string) #0 {
entry:
  %retval = alloca ptr, align 8
  %value = alloca ptr, align 8
  %new_string_len = alloca i64, align 8
  %new_string = alloca ptr, align 8
  store ptr null, ptr %value, align 8
  store i64 0, ptr %new_string_len, align 8
  %call = call ptr @get_quoted_string(ptr noundef %string, ptr noundef nonnull %new_string_len)
  store ptr %call, ptr %new_string, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %new_string, align 8
  %1 = load i64, ptr %new_string_len, align 8
  %call1 = call ptr @json_value_init_string_no_copy(ptr noundef %0, i64 noundef %1)
  store ptr %call1, ptr %value, align 8
  %cmp2 = icmp eq ptr %call1, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %2 = load ptr, ptr @parson_free, align 8
  %3 = load ptr, ptr %new_string, align 8
  call void %2(ptr noundef %3) #11
  store ptr null, ptr %retval, align 8
  br label %return

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %value, align 8
  store ptr %4, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %5 = load ptr, ptr %retval, align 8
  ret ptr %5
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @parse_boolean_value(ptr noundef %string) #0 {
entry:
  %retval = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  %true_token_size = alloca i64, align 8
  %false_token_size = alloca i64, align 8
  store ptr %string, ptr %string.addr, align 8
  store i64 4, ptr %true_token_size, align 8
  store i64 5, ptr %false_token_size, align 8
  %0 = load ptr, ptr %string, align 8
  %call = call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.6, ptr noundef nonnull dereferenceable(1) %0, i64 noundef 4) #11
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %true_token_size, align 8
  %2 = load ptr, ptr %string.addr, align 8
  %3 = load ptr, ptr %2, align 8
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %1
  store ptr %add.ptr, ptr %2, align 8
  %call1 = call ptr @json_value_init_boolean(i32 noundef 1)
  store ptr %call1, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %string.addr, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load i64, ptr %false_token_size, align 8
  %call2 = call i32 @strncmp(ptr noundef nonnull @.str.7, ptr noundef %5, i64 noundef %6) #11
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.else
  %7 = load i64, ptr %false_token_size, align 8
  %8 = load ptr, ptr %string.addr, align 8
  %9 = load ptr, ptr %8, align 8
  %add.ptr5 = getelementptr inbounds i8, ptr %9, i64 %7
  store ptr %add.ptr5, ptr %8, align 8
  %call6 = call ptr @json_value_init_boolean(i32 noundef 0)
  store ptr %call6, ptr %retval, align 8
  br label %return

if.end7:                                          ; preds = %if.else
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end7, %if.then4, %if.then
  %10 = load ptr, ptr %retval, align 8
  ret ptr %10
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @parse_number_value(ptr noundef %string) #0 {
entry:
  %retval = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  %end = alloca ptr, align 8
  %number = alloca double, align 8
  store ptr %string, ptr %string.addr, align 8
  store double 0.000000e+00, ptr %number, align 8
  %call = call ptr @__error() #11
  store i32 0, ptr %call, align 4
  %0 = load ptr, ptr %string, align 8
  %call1 = call double @"\01_strtod"(ptr noundef %0, ptr noundef nonnull %end) #11
  store double %call1, ptr %number, align 8
  %call2 = call ptr @__error() #11
  %1 = load i32, ptr %call2, align 4
  %cmp = icmp eq i32 %1, 34
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load double, ptr %number, align 8
  %cmp3 = fcmp ugt double %2, 0xFFF0000000000000
  %3 = load double, ptr %number, align 8
  %cmp4 = fcmp ult double %3, 0x7FF0000000000000
  %or.cond = select i1 %cmp3, i1 %cmp4, i1 false
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %call5 = call ptr @__error() #11
  %4 = load i32, ptr %call5, align 4
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %lor.lhs.false9, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %if.end
  %call7 = call ptr @__error() #11
  %5 = load i32, ptr %call7, align 4
  %cmp8.not = icmp eq i32 %5, 34
  br i1 %cmp8.not, label %lor.lhs.false9, label %if.then12

lor.lhs.false9:                                   ; preds = %land.lhs.true6, %if.end
  %6 = load ptr, ptr %string.addr, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %end, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %8 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call10 = call i32 @is_decimal(ptr noundef %7, i64 noundef %sub.ptr.sub)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %lor.lhs.false9, %land.lhs.true6
  store ptr null, ptr %retval, align 8
  br label %return

if.end13:                                         ; preds = %lor.lhs.false9
  %9 = load ptr, ptr %end, align 8
  %10 = load ptr, ptr %string.addr, align 8
  store ptr %9, ptr %10, align 8
  %11 = load double, ptr %number, align 8
  %call14 = call ptr @json_value_init_number(double noundef %11)
  store ptr %call14, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end13, %if.then12, %if.then
  %12 = load ptr, ptr %retval, align 8
  ret ptr %12
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @parse_null_value(ptr noundef %string) #0 {
entry:
  %string.addr = alloca ptr, align 8
  %token_size = alloca i64, align 8
  store ptr %string, ptr %string.addr, align 8
  store i64 4, ptr %token_size, align 8
  %0 = load ptr, ptr %string, align 8
  %call = call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.10, ptr noundef nonnull dereferenceable(1) %0, i64 noundef 4) #11
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %token_size, align 8
  %2 = load ptr, ptr %string.addr, align 8
  %3 = load ptr, ptr %2, align 8
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %1
  store ptr %add.ptr, ptr %2, align 8
  %call1 = call ptr @json_value_init_null()
  br label %return

return:                                           ; preds = %entry, %if.then
  %storemerge = phi ptr [ %call1, %if.then ], [ null, %entry ]
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @get_quoted_string(ptr noundef %string, ptr noundef %output_string_len) #0 {
entry:
  %string.addr = alloca ptr, align 8
  %output_string_len.addr = alloca ptr, align 8
  %string_start = alloca ptr, align 8
  store ptr %string, ptr %string.addr, align 8
  store ptr %output_string_len, ptr %output_string_len.addr, align 8
  %0 = load ptr, ptr %string, align 8
  store ptr %0, ptr %string_start, align 8
  %call = call i32 @skip_quotes(ptr noundef nonnull %string)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %string.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %3 = load ptr, ptr %string_start, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %2 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = add nsw i64 %sub.ptr.sub, -2
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 1
  %4 = load ptr, ptr %output_string_len.addr, align 8
  %call1 = call ptr @process_string(ptr noundef nonnull %add.ptr, i64 noundef %sub, ptr noundef %4)
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi ptr [ %call1, %if.end ], [ null, %entry ]
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @skip_quotes(ptr noundef %string) #0 {
entry:
  %retval = alloca i32, align 4
  %string.addr = alloca ptr, align 8
  store ptr %string, ptr %string.addr, align 8
  %0 = load ptr, ptr %string, align 8
  %1 = load i8, ptr %0, align 1
  %cmp.not = icmp eq i8 %1, 34
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %string.addr, align 8
  %3 = load ptr, ptr %2, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %incdec.ptr, ptr %2, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end20, %if.end
  %4 = load ptr, ptr %string.addr, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load i8, ptr %5, align 1
  %cmp3.not = icmp eq i8 %6, 34
  br i1 %cmp3.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %7 = load ptr, ptr %string.addr, align 8
  %8 = load ptr, ptr %7, align 8
  %9 = load i8, ptr %8, align 1
  %cmp6 = icmp eq i8 %9, 0
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %while.body
  store i32 -1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %while.body
  %10 = load ptr, ptr %string.addr, align 8
  %11 = load ptr, ptr %10, align 8
  %12 = load i8, ptr %11, align 1
  %cmp10 = icmp eq i8 %12, 92
  br i1 %cmp10, label %if.then12, label %if.end20

if.then12:                                        ; preds = %if.else
  %13 = load ptr, ptr %string.addr, align 8
  %14 = load ptr, ptr %13, align 8
  %incdec.ptr13 = getelementptr inbounds i8, ptr %14, i64 1
  store ptr %incdec.ptr13, ptr %13, align 8
  %15 = load i8, ptr %incdec.ptr13, align 1
  %cmp15 = icmp eq i8 %15, 0
  br i1 %cmp15, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.then12
  store i32 -1, ptr %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.else, %if.then12
  %16 = load ptr, ptr %string.addr, align 8
  %17 = load ptr, ptr %16, align 8
  %incdec.ptr21 = getelementptr inbounds i8, ptr %17, i64 1
  store ptr %incdec.ptr21, ptr %16, align 8
  br label %while.cond, !llvm.loop !43

while.end:                                        ; preds = %while.cond
  %18 = load ptr, ptr %string.addr, align 8
  %19 = load ptr, ptr %18, align 8
  %incdec.ptr22 = getelementptr inbounds i8, ptr %19, i64 1
  store ptr %incdec.ptr22, ptr %18, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then17, %if.then8, %if.then
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @process_string(ptr noundef %input, i64 noundef %input_len, ptr noundef %output_len) #0 {
entry:
  %input.addr = alloca ptr, align 8
  %input_len.addr = alloca i64, align 8
  %output_len.addr = alloca ptr, align 8
  %input_ptr = alloca ptr, align 8
  %final_size = alloca i64, align 8
  %output = alloca ptr, align 8
  %output_ptr = alloca ptr, align 8
  %resized_output = alloca ptr, align 8
  store ptr %input, ptr %input.addr, align 8
  store i64 %input_len, ptr %input_len.addr, align 8
  store ptr %output_len, ptr %output_len.addr, align 8
  store ptr %input, ptr %input_ptr, align 8
  %add = add i64 %input_len, 1
  store i64 0, ptr %final_size, align 8
  store ptr null, ptr %output, align 8
  store ptr null, ptr %output_ptr, align 8
  store ptr null, ptr %resized_output, align 8
  %0 = load ptr, ptr @parson_malloc, align 8
  %call = call ptr %0(i64 noundef %add) #11
  store ptr %call, ptr %output, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %error, label %if.end

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %output, align 8
  store ptr %1, ptr %output_ptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end29, %if.end
  %2 = load ptr, ptr %input_ptr, align 8
  %3 = load i8, ptr %2, align 1
  %cmp1.not = icmp eq i8 %3, 0
  br i1 %cmp1.not, label %while.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %4 = load ptr, ptr %input_ptr, align 8
  %5 = load ptr, ptr %input.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %4 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %6 = load i64, ptr %input_len.addr, align 8
  %cmp3 = icmp ult i64 %sub.ptr.sub, %6
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %7 = load ptr, ptr %input_ptr, align 8
  %8 = load i8, ptr %7, align 1
  %cmp6 = icmp eq i8 %8, 92
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %while.body
  %9 = load ptr, ptr %input_ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %incdec.ptr, ptr %input_ptr, align 8
  %10 = load i8, ptr %incdec.ptr, align 1
  %conv9 = sext i8 %10 to i32
  switch i32 %conv9, label %error [
    i32 34, label %sw.bb
    i32 92, label %sw.bb10
    i32 47, label %sw.bb11
    i32 98, label %sw.bb12
    i32 102, label %sw.bb13
    i32 110, label %sw.bb14
    i32 114, label %sw.bb15
    i32 116, label %sw.bb16
    i32 117, label %sw.bb17
  ]

sw.bb:                                            ; preds = %if.then8
  %11 = load ptr, ptr %output_ptr, align 8
  store i8 34, ptr %11, align 1
  br label %if.end29

sw.bb10:                                          ; preds = %if.then8
  %12 = load ptr, ptr %output_ptr, align 8
  store i8 92, ptr %12, align 1
  br label %if.end29

sw.bb11:                                          ; preds = %if.then8
  %13 = load ptr, ptr %output_ptr, align 8
  store i8 47, ptr %13, align 1
  br label %if.end29

sw.bb12:                                          ; preds = %if.then8
  %14 = load ptr, ptr %output_ptr, align 8
  store i8 8, ptr %14, align 1
  br label %if.end29

sw.bb13:                                          ; preds = %if.then8
  %15 = load ptr, ptr %output_ptr, align 8
  store i8 12, ptr %15, align 1
  br label %if.end29

sw.bb14:                                          ; preds = %if.then8
  %16 = load ptr, ptr %output_ptr, align 8
  store i8 10, ptr %16, align 1
  br label %if.end29

sw.bb15:                                          ; preds = %if.then8
  %17 = load ptr, ptr %output_ptr, align 8
  store i8 13, ptr %17, align 1
  br label %if.end29

sw.bb16:                                          ; preds = %if.then8
  %18 = load ptr, ptr %output_ptr, align 8
  store i8 9, ptr %18, align 1
  br label %if.end29

sw.bb17:                                          ; preds = %if.then8
  %call18 = call i32 @parse_utf16(ptr noundef nonnull %input_ptr, ptr noundef nonnull %output_ptr)
  %cmp19.not = icmp eq i32 %call18, 0
  br i1 %cmp19.not, label %if.end29, label %error

if.else:                                          ; preds = %while.body
  %19 = load ptr, ptr %input_ptr, align 8
  %20 = load i8, ptr %19, align 1
  %cmp24 = icmp ult i8 %20, 32
  br i1 %cmp24, label %error, label %if.else27

if.else27:                                        ; preds = %if.else
  %21 = load ptr, ptr %input_ptr, align 8
  %22 = load i8, ptr %21, align 1
  %23 = load ptr, ptr %output_ptr, align 8
  store i8 %22, ptr %23, align 1
  br label %if.end29

if.end29:                                         ; preds = %sw.bb, %sw.bb10, %sw.bb11, %sw.bb12, %sw.bb13, %sw.bb14, %sw.bb15, %sw.bb16, %sw.bb17, %if.else27
  %24 = load ptr, ptr %output_ptr, align 8
  %incdec.ptr30 = getelementptr inbounds i8, ptr %24, i64 1
  store ptr %incdec.ptr30, ptr %output_ptr, align 8
  %25 = load ptr, ptr %input_ptr, align 8
  %incdec.ptr31 = getelementptr inbounds i8, ptr %25, i64 1
  store ptr %incdec.ptr31, ptr %input_ptr, align 8
  br label %while.cond, !llvm.loop !44

while.end:                                        ; preds = %while.cond, %land.rhs
  %26 = load ptr, ptr %output_ptr, align 8
  store i8 0, ptr %26, align 1
  %27 = load ptr, ptr %output_ptr, align 8
  %28 = load ptr, ptr %output, align 8
  %sub.ptr.lhs.cast32 = ptrtoint ptr %27 to i64
  %sub.ptr.rhs.cast33 = ptrtoint ptr %28 to i64
  %sub.ptr.sub34 = sub i64 %sub.ptr.lhs.cast32, %sub.ptr.rhs.cast33
  %add35 = add i64 %sub.ptr.sub34, 1
  store i64 %add35, ptr %final_size, align 8
  %29 = load ptr, ptr @parson_malloc, align 8
  %call36 = call ptr %29(i64 noundef %add35) #11
  store ptr %call36, ptr %resized_output, align 8
  %cmp37 = icmp eq ptr %call36, null
  br i1 %cmp37, label %error, label %if.end40

if.end40:                                         ; preds = %while.end
  %30 = load ptr, ptr %resized_output, align 8
  %31 = load ptr, ptr %output, align 8
  %32 = load i64, ptr %final_size, align 8
  %33 = call i64 @llvm.objectsize.i64.p0(ptr %30, i1 false, i1 true, i1 false)
  %call41 = call ptr @__memcpy_chk(ptr noundef %30, ptr noundef %31, i64 noundef %32, i64 noundef %33) #11
  %sub = add i64 %32, -1
  %34 = load ptr, ptr %output_len.addr, align 8
  store i64 %sub, ptr %34, align 8
  %35 = load ptr, ptr @parson_free, align 8
  %36 = load ptr, ptr %output, align 8
  call void %35(ptr noundef %36) #11
  %37 = load ptr, ptr %resized_output, align 8
  br label %return

error:                                            ; preds = %while.end, %if.else, %if.then8, %sw.bb17, %entry
  %38 = load ptr, ptr @parson_free, align 8
  %39 = load ptr, ptr %output, align 8
  call void %38(ptr noundef %39) #11
  br label %return

return:                                           ; preds = %error, %if.end40
  %storemerge = phi ptr [ %37, %if.end40 ], [ null, %error ]
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @parse_utf16(ptr noundef %unprocessed, ptr noundef %processed) #0 {
entry:
  %retval = alloca i32, align 4
  %unprocessed.addr = alloca ptr, align 8
  %processed.addr = alloca ptr, align 8
  %cp = alloca i32, align 4
  %lead = alloca i32, align 4
  %trail = alloca i32, align 4
  %processed_ptr = alloca ptr, align 8
  %unprocessed_ptr = alloca ptr, align 8
  store ptr %unprocessed, ptr %unprocessed.addr, align 8
  store ptr %processed, ptr %processed.addr, align 8
  %0 = load ptr, ptr %processed, align 8
  store ptr %0, ptr %processed_ptr, align 8
  %1 = load ptr, ptr %unprocessed, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %1, i64 1
  store ptr %incdec.ptr, ptr %unprocessed_ptr, align 8
  %call = call i32 @parse_utf16_hex(ptr noundef nonnull %incdec.ptr, ptr noundef nonnull %cp)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %cp, align 4
  %cmp1 = icmp ult i32 %2, 128
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %3 = load i32, ptr %cp, align 4
  %conv = trunc i32 %3 to i8
  %4 = load ptr, ptr %processed_ptr, align 8
  store i8 %conv, ptr %4, align 1
  br label %if.end90

if.else:                                          ; preds = %if.end
  %5 = load i32, ptr %cp, align 4
  %cmp3 = icmp ult i32 %5, 2048
  br i1 %cmp3, label %if.then5, label %if.else12

if.then5:                                         ; preds = %if.else
  %6 = load i32, ptr %cp, align 4
  %shr = lshr i32 %6, 6
  %7 = trunc i32 %shr to i8
  %8 = and i8 %7, 31
  %conv6 = or i8 %8, -64
  %9 = load ptr, ptr %processed_ptr, align 8
  store i8 %conv6, ptr %9, align 1
  %10 = load i32, ptr %cp, align 4
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 63
  %conv10 = or i8 %12, -128
  %arrayidx11 = getelementptr inbounds i8, ptr %9, i64 1
  store i8 %conv10, ptr %arrayidx11, align 1
  %13 = load ptr, ptr %processed_ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %13, i64 1
  store ptr %add.ptr, ptr %processed_ptr, align 8
  br label %if.end90

if.else12:                                        ; preds = %if.else
  %14 = load i32, ptr %cp, align 4
  %cmp13 = icmp ult i32 %14, 55296
  %15 = load i32, ptr %cp, align 4
  %cmp15 = icmp ugt i32 %15, 57343
  %or.cond = select i1 %cmp13, i1 true, i1 %cmp15
  br i1 %or.cond, label %if.then17, label %if.else33

if.then17:                                        ; preds = %if.else12
  %16 = load i32, ptr %cp, align 4
  %shr18 = lshr i32 %16, 12
  %17 = trunc i32 %shr18 to i8
  %18 = and i8 %17, 15
  %conv21 = or i8 %18, -32
  %19 = load ptr, ptr %processed_ptr, align 8
  store i8 %conv21, ptr %19, align 1
  %20 = load i32, ptr %cp, align 4
  %shr23 = lshr i32 %20, 6
  %21 = trunc i32 %shr23 to i8
  %22 = and i8 %21, 63
  %conv26 = or i8 %22, -128
  %23 = load ptr, ptr %processed_ptr, align 8
  %arrayidx27 = getelementptr inbounds i8, ptr %23, i64 1
  store i8 %conv26, ptr %arrayidx27, align 1
  %24 = load i32, ptr %cp, align 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 63
  %conv30 = or i8 %26, -128
  %27 = load ptr, ptr %processed_ptr, align 8
  %arrayidx31 = getelementptr inbounds i8, ptr %27, i64 2
  store i8 %conv30, ptr %arrayidx31, align 1
  %add.ptr32 = getelementptr inbounds i8, ptr %27, i64 2
  store ptr %add.ptr32, ptr %processed_ptr, align 8
  br label %if.end90

if.else33:                                        ; preds = %if.else12
  %28 = load i32, ptr %cp, align 4
  %cmp34 = icmp ugt i32 %28, 55295
  %29 = load i32, ptr %cp, align 4
  %cmp36 = icmp ult i32 %29, 56320
  %or.cond1 = select i1 %cmp34, i1 %cmp36, i1 false
  br i1 %or.cond1, label %if.then38, label %if.else86

if.then38:                                        ; preds = %if.else33
  %30 = load i32, ptr %cp, align 4
  store i32 %30, ptr %lead, align 4
  %31 = load ptr, ptr %unprocessed_ptr, align 8
  %add.ptr39 = getelementptr inbounds i8, ptr %31, i64 4
  %incdec.ptr40 = getelementptr inbounds i8, ptr %31, i64 5
  store ptr %incdec.ptr40, ptr %unprocessed_ptr, align 8
  %32 = load i8, ptr %add.ptr39, align 1
  %cmp42.not = icmp eq i8 %32, 92
  br i1 %cmp42.not, label %lor.lhs.false44, label %if.then49

lor.lhs.false44:                                  ; preds = %if.then38
  %33 = load ptr, ptr %unprocessed_ptr, align 8
  %incdec.ptr45 = getelementptr inbounds i8, ptr %33, i64 1
  store ptr %incdec.ptr45, ptr %unprocessed_ptr, align 8
  %34 = load i8, ptr %33, align 1
  %cmp47.not = icmp eq i8 %34, 117
  br i1 %cmp47.not, label %if.end50, label %if.then49

if.then49:                                        ; preds = %lor.lhs.false44, %if.then38
  store i32 -1, ptr %retval, align 4
  br label %return

if.end50:                                         ; preds = %lor.lhs.false44
  %35 = load ptr, ptr %unprocessed_ptr, align 8
  %call51 = call i32 @parse_utf16_hex(ptr noundef %35, ptr noundef nonnull %trail)
  %cmp52.not = icmp ne i32 %call51, 0
  %36 = load i32, ptr %trail, align 4
  %cmp55 = icmp ult i32 %36, 56320
  %or.cond2 = select i1 %cmp52.not, i1 true, i1 %cmp55
  %37 = load i32, ptr %trail, align 4
  %cmp58 = icmp ugt i32 %37, 57343
  %or.cond3 = select i1 %or.cond2, i1 true, i1 %cmp58
  br i1 %or.cond3, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.end50
  store i32 -1, ptr %retval, align 4
  br label %return

if.end61:                                         ; preds = %if.end50
  %38 = load i32, ptr %lead, align 4
  %and62 = shl i32 %38, 10
  %shl = and i32 %and62, 1047552
  %39 = load i32, ptr %trail, align 4
  %and64 = and i32 %39, 1023
  %or65 = or i32 %shl, %and64
  %add = add nuw nsw i32 %or65, 65536
  store i32 %add, ptr %cp, align 4
  %shr66 = lshr i32 %add, 18
  %40 = trunc i32 %shr66 to i8
  %conv69 = or i8 %40, -16
  %41 = load ptr, ptr %processed_ptr, align 8
  store i8 %conv69, ptr %41, align 1
  %42 = load i32, ptr %cp, align 4
  %shr71 = lshr i32 %42, 12
  %43 = trunc i32 %shr71 to i8
  %44 = and i8 %43, 63
  %conv74 = or i8 %44, -128
  %45 = load ptr, ptr %processed_ptr, align 8
  %arrayidx75 = getelementptr inbounds i8, ptr %45, i64 1
  store i8 %conv74, ptr %arrayidx75, align 1
  %46 = load i32, ptr %cp, align 4
  %shr76 = lshr i32 %46, 6
  %47 = trunc i32 %shr76 to i8
  %48 = and i8 %47, 63
  %conv79 = or i8 %48, -128
  %49 = load ptr, ptr %processed_ptr, align 8
  %arrayidx80 = getelementptr inbounds i8, ptr %49, i64 2
  store i8 %conv79, ptr %arrayidx80, align 1
  %50 = load i32, ptr %cp, align 4
  %51 = trunc i32 %50 to i8
  %52 = and i8 %51, 63
  %conv83 = or i8 %52, -128
  %53 = load ptr, ptr %processed_ptr, align 8
  %arrayidx84 = getelementptr inbounds i8, ptr %53, i64 3
  store i8 %conv83, ptr %arrayidx84, align 1
  %add.ptr85 = getelementptr inbounds i8, ptr %53, i64 3
  store ptr %add.ptr85, ptr %processed_ptr, align 8
  br label %if.end90

if.else86:                                        ; preds = %if.else33
  store i32 -1, ptr %retval, align 4
  br label %return

if.end90:                                         ; preds = %if.then5, %if.end61, %if.then17, %if.then2
  %54 = load ptr, ptr %unprocessed_ptr, align 8
  %add.ptr91 = getelementptr inbounds i8, ptr %54, i64 3
  store ptr %add.ptr91, ptr %unprocessed_ptr, align 8
  %55 = load ptr, ptr %processed_ptr, align 8
  %56 = load ptr, ptr %processed.addr, align 8
  store ptr %55, ptr %56, align 8
  %57 = load ptr, ptr %unprocessed.addr, align 8
  store ptr %add.ptr91, ptr %57, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end90, %if.else86, %if.then60, %if.then49, %if.then
  %58 = load i32, ptr %retval, align 4
  ret i32 %58
}

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @parse_utf16_hex(ptr noundef %s, ptr noundef %result) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %result.addr = alloca ptr, align 8
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %x3 = alloca i32, align 4
  %x4 = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store ptr %result, ptr %result.addr, align 8
  %0 = load i8, ptr %s, align 1
  %cmp = icmp eq i8 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %s.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %1, i64 1
  %2 = load i8, ptr %arrayidx2, align 1
  %cmp4 = icmp eq i8 %2, 0
  br i1 %cmp4, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %s.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %3, i64 2
  %4 = load i8, ptr %arrayidx7, align 1
  %cmp9 = icmp eq i8 %4, 0
  br i1 %cmp9, label %if.then, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false6
  %5 = load ptr, ptr %s.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %5, i64 3
  %6 = load i8, ptr %arrayidx12, align 1
  %cmp14 = icmp eq i8 %6, 0
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false11, %lor.lhs.false6, %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false11
  %7 = load ptr, ptr %s.addr, align 8
  %8 = load i8, ptr %7, align 1
  %call = call i32 @hex_char_to_int(i8 noundef signext %8)
  store i32 %call, ptr %x1, align 4
  %arrayidx17 = getelementptr inbounds i8, ptr %7, i64 1
  %9 = load i8, ptr %arrayidx17, align 1
  %call18 = call i32 @hex_char_to_int(i8 noundef signext %9)
  store i32 %call18, ptr %x2, align 4
  %10 = load ptr, ptr %s.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %10, i64 2
  %11 = load i8, ptr %arrayidx19, align 1
  %call20 = call i32 @hex_char_to_int(i8 noundef signext %11)
  store i32 %call20, ptr %x3, align 4
  %arrayidx21 = getelementptr inbounds i8, ptr %10, i64 3
  %12 = load i8, ptr %arrayidx21, align 1
  %call22 = call i32 @hex_char_to_int(i8 noundef signext %12)
  store i32 %call22, ptr %x4, align 4
  %13 = load i32, ptr %x1, align 4
  %cmp23 = icmp eq i32 %13, -1
  %14 = load i32, ptr %x2, align 4
  %cmp26 = icmp eq i32 %14, -1
  %or.cond = select i1 %cmp23, i1 true, i1 %cmp26
  %15 = load i32, ptr %x3, align 4
  %cmp29 = icmp eq i32 %15, -1
  %or.cond1 = select i1 %or.cond, i1 true, i1 %cmp29
  %16 = load i32, ptr %x4, align 4
  %cmp32 = icmp eq i32 %16, -1
  %or.cond2 = select i1 %or.cond1, i1 true, i1 %cmp32
  br i1 %or.cond2, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end35:                                         ; preds = %if.end
  %17 = load i32, ptr %x1, align 4
  %shl = shl i32 %17, 12
  %18 = load i32, ptr %x2, align 4
  %shl36 = shl i32 %18, 8
  %or = or i32 %shl, %shl36
  %19 = load i32, ptr %x3, align 4
  %shl37 = shl i32 %19, 4
  %or38 = or i32 %or, %shl37
  %20 = load i32, ptr %x4, align 4
  %or39 = or i32 %or38, %20
  %21 = load ptr, ptr %result.addr, align 8
  store i32 %or39, ptr %21, align 4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end35, %if.then34, %if.then
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @hex_char_to_int(i8 noundef signext %c) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i8, align 1
  store i8 %c, ptr %c.addr, align 1
  %cmp = icmp sgt i8 %c, 47
  %0 = load i8, ptr %c.addr, align 1
  %cmp3 = icmp slt i8 %0, 58
  %or.cond = select i1 %cmp, i1 %cmp3, i1 false
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8, ptr %c.addr, align 1
  %conv5 = sext i8 %1 to i32
  %sub = add nsw i32 %conv5, -48
  store i32 %sub, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i8, ptr %c.addr, align 1
  %cmp7 = icmp sgt i8 %2, 96
  %3 = load i8, ptr %c.addr, align 1
  %cmp11 = icmp slt i8 %3, 103
  %or.cond1 = select i1 %cmp7, i1 %cmp11, i1 false
  br i1 %or.cond1, label %if.then13, label %if.else16

if.then13:                                        ; preds = %if.else
  %4 = load i8, ptr %c.addr, align 1
  %conv14 = sext i8 %4 to i32
  %add = add nsw i32 %conv14, -87
  store i32 %add, ptr %retval, align 4
  br label %return

if.else16:                                        ; preds = %if.else
  %5 = load i8, ptr %c.addr, align 1
  %cmp18 = icmp sgt i8 %5, 64
  %6 = load i8, ptr %c.addr, align 1
  %cmp22 = icmp slt i8 %6, 71
  %or.cond2 = select i1 %cmp18, i1 %cmp22, i1 false
  br i1 %or.cond2, label %if.then24, label %if.end29

if.then24:                                        ; preds = %if.else16
  %7 = load i8, ptr %c.addr, align 1
  %conv25 = sext i8 %7 to i32
  %add27 = add nsw i32 %conv25, -55
  store i32 %add27, ptr %retval, align 4
  br label %return

if.end29:                                         ; preds = %if.else16
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end29, %if.then24, %if.then13, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @json_array_resize(ptr noundef %array, i64 noundef %new_capacity) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca ptr, align 8
  %new_capacity.addr = alloca i64, align 8
  %new_items = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8
  store i64 %new_capacity, ptr %new_capacity.addr, align 8
  store ptr null, ptr %new_items, align 8
  %cmp = icmp eq i64 %new_capacity, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @parson_malloc, align 8
  %1 = load i64, ptr %new_capacity.addr, align 8
  %mul = shl i64 %1, 3
  %call = call ptr %0(i64 noundef %mul) #11
  store ptr %call, ptr %new_items, align 8
  %cmp1 = icmp eq ptr %call, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %array.addr, align 8
  %items = getelementptr inbounds %struct.json_array_t, ptr %2, i64 0, i32 1
  %3 = load ptr, ptr %items, align 8
  %cmp4.not = icmp eq ptr %3, null
  br i1 %cmp4.not, label %if.end11, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end3
  %4 = load ptr, ptr %array.addr, align 8
  %count = getelementptr inbounds %struct.json_array_t, ptr %4, i64 0, i32 2
  %5 = load i64, ptr %count, align 8
  %cmp5.not = icmp eq i64 %5, 0
  br i1 %cmp5.not, label %if.end11, label %if.then6

if.then6:                                         ; preds = %land.lhs.true
  %6 = load ptr, ptr %new_items, align 8
  %7 = load ptr, ptr %array.addr, align 8
  %items7 = getelementptr inbounds %struct.json_array_t, ptr %7, i64 0, i32 1
  %8 = load ptr, ptr %items7, align 8
  %count8 = getelementptr inbounds %struct.json_array_t, ptr %7, i64 0, i32 2
  %9 = load i64, ptr %count8, align 8
  %mul9 = shl i64 %9, 3
  %10 = load ptr, ptr %new_items, align 8
  %11 = call i64 @llvm.objectsize.i64.p0(ptr %10, i1 false, i1 true, i1 false)
  %call10 = call ptr @__memcpy_chk(ptr noundef %6, ptr noundef %8, i64 noundef %mul9, i64 noundef %11) #11
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %land.lhs.true, %if.end3
  %12 = load ptr, ptr @parson_free, align 8
  %13 = load ptr, ptr %array.addr, align 8
  %items12 = getelementptr inbounds %struct.json_array_t, ptr %13, i64 0, i32 1
  %14 = load ptr, ptr %items12, align 8
  call void %12(ptr noundef %14) #11
  %15 = load ptr, ptr %new_items, align 8
  %items13 = getelementptr inbounds %struct.json_array_t, ptr %13, i64 0, i32 1
  store ptr %15, ptr %items13, align 8
  %16 = load i64, ptr %new_capacity.addr, align 8
  %17 = load ptr, ptr %array.addr, align 8
  %capacity = getelementptr inbounds %struct.json_array_t, ptr %17, i64 0, i32 3
  store i64 %16, ptr %capacity, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end11, %if.then2, %if.then
  %18 = load i32, ptr %retval, align 4
  ret i32 %18
}

declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #1

declare ptr @__error() #1

declare double @"\01_strtod"(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @is_decimal(ptr noundef %string, i64 noundef %length) #0 {
entry:
  %retval = alloca i32, align 4
  %string.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  store ptr %string, ptr %string.addr, align 8
  store i64 %length, ptr %length.addr, align 8
  %cmp = icmp ugt i64 %length, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %0 = load ptr, ptr %string.addr, align 8
  %1 = load i8, ptr %0, align 1
  %cmp1 = icmp eq i8 %1, 48
  br i1 %cmp1, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %2 = load ptr, ptr %string.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %2, i64 1
  %3 = load i8, ptr %arrayidx4, align 1
  %cmp6.not = icmp eq i8 %3, 46
  br i1 %cmp6.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true3
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true3, %land.lhs.true, %entry
  %4 = load i64, ptr %length.addr, align 8
  %cmp8 = icmp ugt i64 %4, 2
  br i1 %cmp8, label %land.lhs.true10, label %if.end17

land.lhs.true10:                                  ; preds = %if.end
  %5 = load ptr, ptr %string.addr, align 8
  %call = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(3) @.str.8, i64 noundef 2) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true11, label %if.end17

land.lhs.true11:                                  ; preds = %land.lhs.true10
  %6 = load ptr, ptr %string.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %6, i64 2
  %7 = load i8, ptr %arrayidx12, align 1
  %cmp14.not = icmp eq i8 %7, 46
  br i1 %cmp14.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %land.lhs.true11
  store i32 0, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %land.lhs.true11, %land.lhs.true10, %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end17
  %8 = load i64, ptr %length.addr, align 8
  %dec = add i64 %8, -1
  store i64 %dec, ptr %length.addr, align 8
  %tobool18.not = icmp eq i64 %8, 0
  br i1 %tobool18.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %9 = load ptr, ptr %string.addr, align 8
  %10 = load i64, ptr %length.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %9, i64 %10
  %11 = load i8, ptr %arrayidx19, align 1
  %conv20 = sext i8 %11 to i32
  %memchr = call ptr @memchr(ptr noundef nonnull @.str.9, i32 %conv20, i64 3)
  %tobool22.not = icmp eq ptr %memchr, null
  br i1 %tobool22.not, label %while.cond, label %if.then23, !llvm.loop !45

if.then23:                                        ; preds = %while.body
  store i32 0, ptr %retval, align 4
  br label %return

while.end:                                        ; preds = %while.cond
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then23, %if.then16, %if.then
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

declare ptr @strstr(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @json_object_deinit(ptr noundef %object, i32 noundef %free_keys, i32 noundef %free_values) #0 {
entry:
  %object.addr = alloca ptr, align 8
  %free_keys.addr = alloca i32, align 4
  %free_values.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %object, ptr %object.addr, align 8
  store i32 %free_keys, ptr %free_keys.addr, align 4
  store i32 %free_values, ptr %free_values.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr %i, align 4
  %conv = zext i32 %storemerge to i64
  %0 = load ptr, ptr %object.addr, align 8
  %count = getelementptr inbounds %struct.json_object_t, ptr %0, i64 0, i32 6
  %1 = load i64, ptr %count, align 8
  %cmp = icmp ugt i64 %1, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %free_keys.addr, align 4
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %3 = load ptr, ptr @parson_free, align 8
  %4 = load ptr, ptr %object.addr, align 8
  %names = getelementptr inbounds %struct.json_object_t, ptr %4, i64 0, i32 3
  %5 = load ptr, ptr %names, align 8
  %6 = load i32, ptr %i, align 4
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom
  %7 = load ptr, ptr %arrayidx, align 8
  call void %3(ptr noundef %7) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %8 = load i32, ptr %free_values.addr, align 4
  %tobool2.not = icmp eq i32 %8, 0
  br i1 %tobool2.not, label %for.inc, label %if.then3

if.then3:                                         ; preds = %if.end
  %9 = load ptr, ptr %object.addr, align 8
  %values = getelementptr inbounds %struct.json_object_t, ptr %9, i64 0, i32 4
  %10 = load ptr, ptr %values, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom4 = zext i32 %11 to i64
  %arrayidx5 = getelementptr inbounds ptr, ptr %10, i64 %idxprom4
  %12 = load ptr, ptr %arrayidx5, align 8
  call void @json_value_free(ptr noundef %12)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then3
  %13 = load i32, ptr %i, align 4
  %inc = add i32 %13, 1
  br label %for.cond, !llvm.loop !46

for.end:                                          ; preds = %for.cond
  %14 = load ptr, ptr %object.addr, align 8
  %count7 = getelementptr inbounds %struct.json_object_t, ptr %14, i64 0, i32 6
  store i64 0, ptr %count7, align 8
  %item_capacity = getelementptr inbounds %struct.json_object_t, ptr %14, i64 0, i32 7
  store i64 0, ptr %item_capacity, align 8
  %cell_capacity = getelementptr inbounds %struct.json_object_t, ptr %14, i64 0, i32 8
  store i64 0, ptr %cell_capacity, align 8
  %15 = load ptr, ptr @parson_free, align 8
  %16 = load ptr, ptr %object.addr, align 8
  %cells = getelementptr inbounds %struct.json_object_t, ptr %16, i64 0, i32 1
  %17 = load ptr, ptr %cells, align 8
  call void %15(ptr noundef %17) #11
  %18 = load ptr, ptr @parson_free, align 8
  %names8 = getelementptr inbounds %struct.json_object_t, ptr %16, i64 0, i32 3
  %19 = load ptr, ptr %names8, align 8
  call void %18(ptr noundef %19) #11
  %20 = load ptr, ptr @parson_free, align 8
  %21 = load ptr, ptr %object.addr, align 8
  %values9 = getelementptr inbounds %struct.json_object_t, ptr %21, i64 0, i32 4
  %22 = load ptr, ptr %values9, align 8
  call void %20(ptr noundef %22) #11
  %23 = load ptr, ptr @parson_free, align 8
  %cell_ixs = getelementptr inbounds %struct.json_object_t, ptr %21, i64 0, i32 5
  %24 = load ptr, ptr %cell_ixs, align 8
  call void %23(ptr noundef %24) #11
  %25 = load ptr, ptr @parson_free, align 8
  %26 = load ptr, ptr %object.addr, align 8
  %hashes = getelementptr inbounds %struct.json_object_t, ptr %26, i64 0, i32 2
  %27 = load ptr, ptr %hashes, align 8
  call void %25(ptr noundef %27) #11
  %cells10 = getelementptr inbounds %struct.json_object_t, ptr %26, i64 0, i32 1
  store ptr null, ptr %cells10, align 8
  %names11 = getelementptr inbounds %struct.json_object_t, ptr %26, i64 0, i32 3
  store ptr null, ptr %names11, align 8
  %28 = load ptr, ptr %object.addr, align 8
  %values12 = getelementptr inbounds %struct.json_object_t, ptr %28, i64 0, i32 4
  store ptr null, ptr %values12, align 8
  %cell_ixs13 = getelementptr inbounds %struct.json_object_t, ptr %28, i64 0, i32 5
  store ptr null, ptr %cell_ixs13, align 8
  %hashes14 = getelementptr inbounds %struct.json_object_t, ptr %28, i64 0, i32 2
  store ptr null, ptr %hashes14, align 8
  ret void
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #5

; Function Attrs: nounwind ssp uwtable
define internal i32 @json_object_init(ptr noundef %object, i64 noundef %capacity) #0 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca ptr, align 8
  %capacity.addr = alloca i64, align 8
  %i = alloca i32, align 4
  store ptr %object, ptr %object.addr, align 8
  store i64 %capacity, ptr %capacity.addr, align 8
  store i32 0, ptr %i, align 4
  %cells = getelementptr inbounds %struct.json_object_t, ptr %object, i64 0, i32 1
  store ptr null, ptr %cells, align 8
  %names = getelementptr inbounds %struct.json_object_t, ptr %object, i64 0, i32 3
  store ptr null, ptr %names, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %values = getelementptr inbounds %struct.json_object_t, ptr %0, i64 0, i32 4
  store ptr null, ptr %values, align 8
  %cell_ixs = getelementptr inbounds %struct.json_object_t, ptr %0, i64 0, i32 5
  store ptr null, ptr %cell_ixs, align 8
  %hashes = getelementptr inbounds %struct.json_object_t, ptr %0, i64 0, i32 2
  store ptr null, ptr %hashes, align 8
  %1 = load ptr, ptr %object.addr, align 8
  %count = getelementptr inbounds %struct.json_object_t, ptr %1, i64 0, i32 6
  store i64 0, ptr %count, align 8
  %2 = load i64, ptr %capacity.addr, align 8
  %cell_capacity = getelementptr inbounds %struct.json_object_t, ptr %1, i64 0, i32 8
  store i64 %2, ptr %cell_capacity, align 8
  %mul = mul i64 %2, 7
  %div = udiv i64 %mul, 10
  %conv1 = and i64 %div, 4294967295
  %3 = load ptr, ptr %object.addr, align 8
  %item_capacity = getelementptr inbounds %struct.json_object_t, ptr %3, i64 0, i32 7
  store i64 %conv1, ptr %item_capacity, align 8
  %4 = load i64, ptr %capacity.addr, align 8
  %cmp = icmp eq i64 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr @parson_malloc, align 8
  %6 = load ptr, ptr %object.addr, align 8
  %cell_capacity3 = getelementptr inbounds %struct.json_object_t, ptr %6, i64 0, i32 8
  %7 = load i64, ptr %cell_capacity3, align 8
  %mul4 = shl i64 %7, 3
  %call = call ptr %5(i64 noundef %mul4) #11
  %cells5 = getelementptr inbounds %struct.json_object_t, ptr %6, i64 0, i32 1
  store ptr %call, ptr %cells5, align 8
  %8 = load ptr, ptr @parson_malloc, align 8
  %9 = load ptr, ptr %object.addr, align 8
  %item_capacity6 = getelementptr inbounds %struct.json_object_t, ptr %9, i64 0, i32 7
  %10 = load i64, ptr %item_capacity6, align 8
  %mul7 = shl i64 %10, 3
  %call8 = call ptr %8(i64 noundef %mul7) #11
  %names9 = getelementptr inbounds %struct.json_object_t, ptr %9, i64 0, i32 3
  store ptr %call8, ptr %names9, align 8
  %11 = load ptr, ptr @parson_malloc, align 8
  %12 = load ptr, ptr %object.addr, align 8
  %item_capacity10 = getelementptr inbounds %struct.json_object_t, ptr %12, i64 0, i32 7
  %13 = load i64, ptr %item_capacity10, align 8
  %mul11 = shl i64 %13, 3
  %call12 = call ptr %11(i64 noundef %mul11) #11
  %values13 = getelementptr inbounds %struct.json_object_t, ptr %12, i64 0, i32 4
  store ptr %call12, ptr %values13, align 8
  %14 = load ptr, ptr @parson_malloc, align 8
  %15 = load ptr, ptr %object.addr, align 8
  %item_capacity14 = getelementptr inbounds %struct.json_object_t, ptr %15, i64 0, i32 7
  %16 = load i64, ptr %item_capacity14, align 8
  %mul15 = shl i64 %16, 3
  %call16 = call ptr %14(i64 noundef %mul15) #11
  %cell_ixs17 = getelementptr inbounds %struct.json_object_t, ptr %15, i64 0, i32 5
  store ptr %call16, ptr %cell_ixs17, align 8
  %17 = load ptr, ptr @parson_malloc, align 8
  %18 = load ptr, ptr %object.addr, align 8
  %item_capacity18 = getelementptr inbounds %struct.json_object_t, ptr %18, i64 0, i32 7
  %19 = load i64, ptr %item_capacity18, align 8
  %mul19 = shl i64 %19, 3
  %call20 = call ptr %17(i64 noundef %mul19) #11
  %hashes21 = getelementptr inbounds %struct.json_object_t, ptr %18, i64 0, i32 2
  store ptr %call20, ptr %hashes21, align 8
  %20 = load ptr, ptr %object.addr, align 8
  %cells22 = getelementptr inbounds %struct.json_object_t, ptr %20, i64 0, i32 1
  %21 = load ptr, ptr %cells22, align 8
  %cmp23 = icmp eq ptr %21, null
  br i1 %cmp23, label %error, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %22 = load ptr, ptr %object.addr, align 8
  %names25 = getelementptr inbounds %struct.json_object_t, ptr %22, i64 0, i32 3
  %23 = load ptr, ptr %names25, align 8
  %cmp26 = icmp eq ptr %23, null
  br i1 %cmp26, label %error, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false
  %24 = load ptr, ptr %object.addr, align 8
  %values29 = getelementptr inbounds %struct.json_object_t, ptr %24, i64 0, i32 4
  %25 = load ptr, ptr %values29, align 8
  %cmp30 = icmp eq ptr %25, null
  br i1 %cmp30, label %error, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false28
  %26 = load ptr, ptr %object.addr, align 8
  %cell_ixs33 = getelementptr inbounds %struct.json_object_t, ptr %26, i64 0, i32 5
  %27 = load ptr, ptr %cell_ixs33, align 8
  %cmp34 = icmp eq ptr %27, null
  br i1 %cmp34, label %error, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %lor.lhs.false32
  %28 = load ptr, ptr %object.addr, align 8
  %hashes37 = getelementptr inbounds %struct.json_object_t, ptr %28, i64 0, i32 2
  %29 = load ptr, ptr %hashes37, align 8
  %cmp38 = icmp eq ptr %29, null
  br i1 %cmp38, label %error, label %for.cond

for.cond:                                         ; preds = %lor.lhs.false36, %for.body
  %storemerge = phi i32 [ %inc, %for.body ], [ 0, %lor.lhs.false36 ]
  store i32 %storemerge, ptr %i, align 4
  %conv42 = zext i32 %storemerge to i64
  %30 = load ptr, ptr %object.addr, align 8
  %cell_capacity43 = getelementptr inbounds %struct.json_object_t, ptr %30, i64 0, i32 8
  %31 = load i64, ptr %cell_capacity43, align 8
  %cmp44 = icmp ugt i64 %31, %conv42
  br i1 %cmp44, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load ptr, ptr %object.addr, align 8
  %cells46 = getelementptr inbounds %struct.json_object_t, ptr %32, i64 0, i32 1
  %33 = load ptr, ptr %cells46, align 8
  %34 = load i32, ptr %i, align 4
  %idxprom = zext i32 %34 to i64
  %arrayidx = getelementptr inbounds i64, ptr %33, i64 %idxprom
  store i64 -1, ptr %arrayidx, align 8
  %35 = load i32, ptr %i, align 4
  %inc = add i32 %35, 1
  br label %for.cond, !llvm.loop !47

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

error:                                            ; preds = %if.end, %lor.lhs.false, %lor.lhs.false28, %lor.lhs.false32, %lor.lhs.false36
  %36 = load ptr, ptr @parson_free, align 8
  %37 = load ptr, ptr %object.addr, align 8
  %cells47 = getelementptr inbounds %struct.json_object_t, ptr %37, i64 0, i32 1
  %38 = load ptr, ptr %cells47, align 8
  call void %36(ptr noundef %38) #11
  %39 = load ptr, ptr @parson_free, align 8
  %names48 = getelementptr inbounds %struct.json_object_t, ptr %37, i64 0, i32 3
  %40 = load ptr, ptr %names48, align 8
  call void %39(ptr noundef %40) #11
  %41 = load ptr, ptr @parson_free, align 8
  %42 = load ptr, ptr %object.addr, align 8
  %values49 = getelementptr inbounds %struct.json_object_t, ptr %42, i64 0, i32 4
  %43 = load ptr, ptr %values49, align 8
  call void %41(ptr noundef %43) #11
  %44 = load ptr, ptr @parson_free, align 8
  %cell_ixs50 = getelementptr inbounds %struct.json_object_t, ptr %42, i64 0, i32 5
  %45 = load ptr, ptr %cell_ixs50, align 8
  call void %44(ptr noundef %45) #11
  %46 = load ptr, ptr @parson_free, align 8
  %47 = load ptr, ptr %object.addr, align 8
  %hashes51 = getelementptr inbounds %struct.json_object_t, ptr %47, i64 0, i32 2
  %48 = load ptr, ptr %hashes51, align 8
  call void %46(ptr noundef %48) #11
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %error, %for.end, %if.then
  %49 = load i32, ptr %retval, align 4
  ret i32 %49
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @verify_utf8_sequence(ptr noundef %string, ptr noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %string.addr = alloca ptr, align 8
  %len.addr = alloca ptr, align 8
  %cp = alloca i32, align 4
  store ptr %string, ptr %string.addr, align 8
  store ptr %len, ptr %len.addr, align 8
  store i32 0, ptr %cp, align 4
  %0 = load i8, ptr %string, align 1
  %call = call i32 @num_bytes_in_utf8_sequence(i8 noundef zeroext %0)
  store i32 %call, ptr %len, align 4
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %string.addr, align 8
  %2 = load i8, ptr %1, align 1
  %conv = zext i8 %2 to i32
  store i32 %conv, ptr %cp, align 4
  br label %if.end87

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %len.addr, align 8
  %4 = load i32, ptr %3, align 4
  %cmp2 = icmp eq i32 %4, 2
  br i1 %cmp2, label %land.lhs.true, label %if.else15

land.lhs.true:                                    ; preds = %if.else
  %5 = load ptr, ptr %string.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %5, i64 1
  %6 = load i8, ptr %arrayidx4, align 1
  %7 = and i8 %6, -64
  %cmp6 = icmp eq i8 %7, -128
  br i1 %cmp6, label %if.then8, label %if.else15

if.then8:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %string.addr, align 8
  %9 = load i8, ptr %8, align 1
  %10 = and i8 %9, 31
  %and11 = zext i8 %10 to i32
  store i32 %and11, ptr %cp, align 4
  %shl = shl nuw nsw i32 %and11, 6
  %arrayidx12 = getelementptr inbounds i8, ptr %8, i64 1
  %11 = load i8, ptr %arrayidx12, align 1
  %12 = and i8 %11, 63
  %and14 = zext i8 %12 to i32
  %or = or i32 %shl, %and14
  store i32 %or, ptr %cp, align 4
  br label %if.end87

if.else15:                                        ; preds = %land.lhs.true, %if.else
  %13 = load ptr, ptr %len.addr, align 8
  %14 = load i32, ptr %13, align 4
  %cmp16 = icmp eq i32 %14, 3
  br i1 %cmp16, label %land.lhs.true18, label %if.else44

land.lhs.true18:                                  ; preds = %if.else15
  %15 = load ptr, ptr %string.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %15, i64 1
  %16 = load i8, ptr %arrayidx19, align 1
  %17 = and i8 %16, -64
  %cmp22 = icmp eq i8 %17, -128
  br i1 %cmp22, label %land.lhs.true24, label %if.else44

land.lhs.true24:                                  ; preds = %land.lhs.true18
  %18 = load ptr, ptr %string.addr, align 8
  %arrayidx25 = getelementptr inbounds i8, ptr %18, i64 2
  %19 = load i8, ptr %arrayidx25, align 1
  %20 = and i8 %19, -64
  %cmp28 = icmp eq i8 %20, -128
  br i1 %cmp28, label %if.then30, label %if.else44

if.then30:                                        ; preds = %land.lhs.true24
  %21 = load ptr, ptr %string.addr, align 8
  %22 = load i8, ptr %21, align 1
  %23 = and i8 %22, 15
  %and33 = zext i8 %23 to i32
  store i32 %and33, ptr %cp, align 4
  %shl34 = shl nuw nsw i32 %and33, 6
  %arrayidx35 = getelementptr inbounds i8, ptr %21, i64 1
  %24 = load i8, ptr %arrayidx35, align 1
  %25 = and i8 %24, 63
  %and37 = zext i8 %25 to i32
  %or38 = or i32 %shl34, %and37
  store i32 %or38, ptr %cp, align 4
  %shl39 = shl nuw nsw i32 %or38, 6
  %26 = load ptr, ptr %string.addr, align 8
  %arrayidx40 = getelementptr inbounds i8, ptr %26, i64 2
  %27 = load i8, ptr %arrayidx40, align 1
  %28 = and i8 %27, 63
  %and42 = zext i8 %28 to i32
  %or43 = or i32 %shl39, %and42
  store i32 %or43, ptr %cp, align 4
  br label %if.end87

if.else44:                                        ; preds = %land.lhs.true24, %land.lhs.true18, %if.else15
  %29 = load ptr, ptr %len.addr, align 8
  %30 = load i32, ptr %29, align 4
  %cmp45 = icmp eq i32 %30, 4
  br i1 %cmp45, label %land.lhs.true47, label %if.else84

land.lhs.true47:                                  ; preds = %if.else44
  %31 = load ptr, ptr %string.addr, align 8
  %arrayidx48 = getelementptr inbounds i8, ptr %31, i64 1
  %32 = load i8, ptr %arrayidx48, align 1
  %33 = and i8 %32, -64
  %cmp51 = icmp eq i8 %33, -128
  br i1 %cmp51, label %land.lhs.true53, label %if.else84

land.lhs.true53:                                  ; preds = %land.lhs.true47
  %34 = load ptr, ptr %string.addr, align 8
  %arrayidx54 = getelementptr inbounds i8, ptr %34, i64 2
  %35 = load i8, ptr %arrayidx54, align 1
  %36 = and i8 %35, -64
  %cmp57 = icmp eq i8 %36, -128
  br i1 %cmp57, label %land.lhs.true59, label %if.else84

land.lhs.true59:                                  ; preds = %land.lhs.true53
  %37 = load ptr, ptr %string.addr, align 8
  %arrayidx60 = getelementptr inbounds i8, ptr %37, i64 3
  %38 = load i8, ptr %arrayidx60, align 1
  %39 = and i8 %38, -64
  %cmp63 = icmp eq i8 %39, -128
  br i1 %cmp63, label %if.then65, label %if.else84

if.then65:                                        ; preds = %land.lhs.true59
  %40 = load ptr, ptr %string.addr, align 8
  %41 = load i8, ptr %40, align 1
  %42 = and i8 %41, 7
  %and68 = zext i8 %42 to i32
  store i32 %and68, ptr %cp, align 4
  %shl69 = shl nuw nsw i32 %and68, 6
  %arrayidx70 = getelementptr inbounds i8, ptr %40, i64 1
  %43 = load i8, ptr %arrayidx70, align 1
  %44 = and i8 %43, 63
  %and72 = zext i8 %44 to i32
  %or73 = or i32 %shl69, %and72
  store i32 %or73, ptr %cp, align 4
  %shl74 = shl nuw nsw i32 %or73, 6
  %45 = load ptr, ptr %string.addr, align 8
  %arrayidx75 = getelementptr inbounds i8, ptr %45, i64 2
  %46 = load i8, ptr %arrayidx75, align 1
  %47 = and i8 %46, 63
  %and77 = zext i8 %47 to i32
  %or78 = or i32 %shl74, %and77
  store i32 %or78, ptr %cp, align 4
  %shl79 = shl nuw nsw i32 %or78, 6
  %48 = load ptr, ptr %string.addr, align 8
  %arrayidx80 = getelementptr inbounds i8, ptr %48, i64 3
  %49 = load i8, ptr %arrayidx80, align 1
  %50 = and i8 %49, 63
  %and82 = zext i8 %50 to i32
  %or83 = or i32 %shl79, %and82
  store i32 %or83, ptr %cp, align 4
  br label %if.end87

if.else84:                                        ; preds = %land.lhs.true59, %land.lhs.true53, %land.lhs.true47, %if.else44
  store i32 -1, ptr %retval, align 4
  br label %return

if.end87:                                         ; preds = %if.then8, %if.then65, %if.then30, %if.then
  %51 = load i32, ptr %cp, align 4
  %cmp88 = icmp ult i32 %51, 128
  br i1 %cmp88, label %land.lhs.true90, label %lor.lhs.false

land.lhs.true90:                                  ; preds = %if.end87
  %52 = load ptr, ptr %len.addr, align 8
  %53 = load i32, ptr %52, align 4
  %cmp91 = icmp sgt i32 %53, 1
  br i1 %cmp91, label %if.then104, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true90, %if.end87
  %54 = load i32, ptr %cp, align 4
  %cmp93 = icmp ult i32 %54, 2048
  br i1 %cmp93, label %land.lhs.true95, label %lor.lhs.false98

land.lhs.true95:                                  ; preds = %lor.lhs.false
  %55 = load ptr, ptr %len.addr, align 8
  %56 = load i32, ptr %55, align 4
  %cmp96 = icmp sgt i32 %56, 2
  br i1 %cmp96, label %if.then104, label %lor.lhs.false98

lor.lhs.false98:                                  ; preds = %land.lhs.true95, %lor.lhs.false
  %57 = load i32, ptr %cp, align 4
  %cmp99 = icmp ult i32 %57, 65536
  br i1 %cmp99, label %land.lhs.true101, label %if.end105

land.lhs.true101:                                 ; preds = %lor.lhs.false98
  %58 = load ptr, ptr %len.addr, align 8
  %59 = load i32, ptr %58, align 4
  %cmp102 = icmp sgt i32 %59, 3
  br i1 %cmp102, label %if.then104, label %if.end105

if.then104:                                       ; preds = %land.lhs.true101, %land.lhs.true95, %land.lhs.true90
  store i32 -1, ptr %retval, align 4
  br label %return

if.end105:                                        ; preds = %land.lhs.true101, %lor.lhs.false98
  %60 = load i32, ptr %cp, align 4
  %cmp106 = icmp ugt i32 %60, 1114111
  br i1 %cmp106, label %if.then108, label %if.end109

if.then108:                                       ; preds = %if.end105
  store i32 -1, ptr %retval, align 4
  br label %return

if.end109:                                        ; preds = %if.end105
  %61 = load i32, ptr %cp, align 4
  %cmp110 = icmp ugt i32 %61, 55295
  %62 = load i32, ptr %cp, align 4
  %cmp113 = icmp ult i32 %62, 57344
  %or.cond = select i1 %cmp110, i1 %cmp113, i1 false
  br i1 %or.cond, label %if.then115, label %if.end116

if.then115:                                       ; preds = %if.end109
  store i32 -1, ptr %retval, align 4
  br label %return

if.end116:                                        ; preds = %if.end109
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end116, %if.then115, %if.then108, %if.then104, %if.else84
  %63 = load i32, ptr %retval, align 4
  ret i32 %63
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @num_bytes_in_utf8_sequence(i8 noundef zeroext %c) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i8, align 1
  store i8 %c, ptr %c.addr, align 1
  %cmp = icmp eq i8 %c, -64
  %0 = load i8, ptr %c.addr, align 1
  %cmp3 = icmp eq i8 %0, -63
  %or.cond = select i1 %cmp, i1 true, i1 %cmp3
  %1 = load i8, ptr %c.addr, align 1
  %cmp7 = icmp ugt i8 %1, -12
  %or.cond1 = select i1 %or.cond, i1 true, i1 %cmp7
  br i1 %or.cond1, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %entry
  %2 = load i8, ptr %c.addr, align 1
  %3 = and i8 %2, -64
  %cmp11 = icmp eq i8 %3, -128
  br i1 %cmp11, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false9, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %lor.lhs.false9
  %4 = load i8, ptr %c.addr, align 1
  %cmp15 = icmp sgt i8 %4, -1
  br i1 %cmp15, label %if.then17, label %if.else18

if.then17:                                        ; preds = %if.else
  store i32 1, ptr %retval, align 4
  br label %return

if.else18:                                        ; preds = %if.else
  %5 = load i8, ptr %c.addr, align 1
  %6 = and i8 %5, -32
  %cmp21 = icmp eq i8 %6, -64
  br i1 %cmp21, label %if.then23, label %if.else24

if.then23:                                        ; preds = %if.else18
  store i32 2, ptr %retval, align 4
  br label %return

if.else24:                                        ; preds = %if.else18
  %7 = load i8, ptr %c.addr, align 1
  %8 = and i8 %7, -16
  %cmp27 = icmp eq i8 %8, -32
  br i1 %cmp27, label %if.then29, label %if.else30

if.then29:                                        ; preds = %if.else24
  store i32 3, ptr %retval, align 4
  br label %return

if.else30:                                        ; preds = %if.else24
  %9 = load i8, ptr %c.addr, align 1
  %10 = and i8 %9, -8
  %cmp33 = icmp eq i8 %10, -16
  br i1 %cmp33, label %if.then35, label %if.end39

if.then35:                                        ; preds = %if.else30
  store i32 4, ptr %retval, align 4
  br label %return

if.end39:                                         ; preds = %if.else30
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end39, %if.then35, %if.then29, %if.then23, %if.then17, %if.then
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #3

; Function Attrs: nounwind ssp uwtable
define internal i32 @json_serialize_string(ptr noundef %string, i64 noundef %len, ptr noundef %buf) #0 {
entry:
  %string.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %buf.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %c = alloca i8, align 1
  %written = alloca i32, align 4
  %written_total = alloca i32, align 4
  store ptr %string, ptr %string.addr, align 8
  store i64 %len, ptr %len.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 0, ptr %i, align 8
  store i8 0, ptr %c, align 1
  store i32 -1, ptr %written, align 4
  store i32 0, ptr %written_total, align 4
  store i32 1, ptr %written, align 4
  %0 = load ptr, ptr %buf.addr, align 8
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %buf.addr, align 8
  %2 = load i32, ptr %written, align 4
  %conv = sext i32 %2 to i64
  %3 = call i64 @llvm.objectsize.i64.p0(ptr %1, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %1, ptr noundef nonnull @.str.20, i64 noundef %conv, i64 noundef %3) #11
  %4 = load ptr, ptr %buf.addr, align 8
  %5 = load i32, ptr %written, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %idxprom
  store i8 0, ptr %arrayidx, align 1
  %6 = load i32, ptr %written, align 4
  %7 = load ptr, ptr %buf.addr, align 8
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 %idx.ext
  store ptr %add.ptr, ptr %buf.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, ptr %written, align 4
  %9 = load i32, ptr %written_total, align 4
  %add = add nsw i32 %9, %8
  store i32 %add, ptr %written_total, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %storemerge = phi i64 [ 0, %if.end ], [ %inc, %for.inc ]
  store i64 %storemerge, ptr %i, align 8
  %10 = load i64, ptr %len.addr, align 8
  %cmp1 = icmp ult i64 %storemerge, %10
  br i1 %cmp1, label %for.body, label %do.body516

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %string.addr, align 8
  %12 = load i64, ptr %i, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %11, i64 %12
  %13 = load i8, ptr %arrayidx3, align 1
  store i8 %13, ptr %c, align 1
  %conv4 = sext i8 %13 to i32
  switch i32 %conv4, label %sw.default [
    i32 34, label %do.body5
    i32 92, label %do.body19
    i32 8, label %do.body33
    i32 12, label %do.body47
    i32 10, label %do.body61
    i32 13, label %do.body75
    i32 9, label %do.body89
    i32 0, label %do.body103
    i32 1, label %do.body117
    i32 2, label %do.body131
    i32 3, label %do.body145
    i32 4, label %do.body159
    i32 5, label %do.body173
    i32 6, label %do.body187
    i32 7, label %do.body201
    i32 11, label %do.body215
    i32 14, label %do.body229
    i32 15, label %do.body243
    i32 16, label %do.body257
    i32 17, label %do.body271
    i32 18, label %do.body285
    i32 19, label %do.body299
    i32 20, label %do.body313
    i32 21, label %do.body327
    i32 22, label %do.body341
    i32 23, label %do.body355
    i32 24, label %do.body369
    i32 25, label %do.body383
    i32 26, label %do.body397
    i32 27, label %do.body411
    i32 28, label %do.body425
    i32 29, label %do.body439
    i32 30, label %do.body453
    i32 31, label %do.body467
    i32 47, label %sw.bb480
  ]

do.body5:                                         ; preds = %for.body
  store i32 2, ptr %written, align 4
  %14 = load ptr, ptr %buf.addr, align 8
  %cmp6.not = icmp eq ptr %14, null
  br i1 %cmp6.not, label %if.end15, label %if.then8

if.then8:                                         ; preds = %do.body5
  %15 = load ptr, ptr %buf.addr, align 8
  %16 = load i32, ptr %written, align 4
  %conv9 = sext i32 %16 to i64
  %17 = call i64 @llvm.objectsize.i64.p0(ptr %15, i1 false, i1 true, i1 false)
  %call10 = call ptr @__memcpy_chk(ptr noundef %15, ptr noundef nonnull @.str.21, i64 noundef %conv9, i64 noundef %17) #11
  %18 = load ptr, ptr %buf.addr, align 8
  %19 = load i32, ptr %written, align 4
  %idxprom11 = sext i32 %19 to i64
  %arrayidx12 = getelementptr inbounds i8, ptr %18, i64 %idxprom11
  store i8 0, ptr %arrayidx12, align 1
  %20 = load i32, ptr %written, align 4
  %21 = load ptr, ptr %buf.addr, align 8
  %idx.ext13 = sext i32 %20 to i64
  %add.ptr14 = getelementptr inbounds i8, ptr %21, i64 %idx.ext13
  store ptr %add.ptr14, ptr %buf.addr, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then8, %do.body5
  %22 = load i32, ptr %written, align 4
  %23 = load i32, ptr %written_total, align 4
  %add16 = add nsw i32 %23, %22
  store i32 %add16, ptr %written_total, align 4
  br label %for.inc

do.body19:                                        ; preds = %for.body
  store i32 2, ptr %written, align 4
  %24 = load ptr, ptr %buf.addr, align 8
  %cmp20.not = icmp eq ptr %24, null
  br i1 %cmp20.not, label %if.end29, label %if.then22

if.then22:                                        ; preds = %do.body19
  %25 = load ptr, ptr %buf.addr, align 8
  %26 = load i32, ptr %written, align 4
  %conv23 = sext i32 %26 to i64
  %27 = call i64 @llvm.objectsize.i64.p0(ptr %25, i1 false, i1 true, i1 false)
  %call24 = call ptr @__memcpy_chk(ptr noundef %25, ptr noundef nonnull @.str.22, i64 noundef %conv23, i64 noundef %27) #11
  %28 = load ptr, ptr %buf.addr, align 8
  %29 = load i32, ptr %written, align 4
  %idxprom25 = sext i32 %29 to i64
  %arrayidx26 = getelementptr inbounds i8, ptr %28, i64 %idxprom25
  store i8 0, ptr %arrayidx26, align 1
  %30 = load i32, ptr %written, align 4
  %31 = load ptr, ptr %buf.addr, align 8
  %idx.ext27 = sext i32 %30 to i64
  %add.ptr28 = getelementptr inbounds i8, ptr %31, i64 %idx.ext27
  store ptr %add.ptr28, ptr %buf.addr, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then22, %do.body19
  %32 = load i32, ptr %written, align 4
  %33 = load i32, ptr %written_total, align 4
  %add30 = add nsw i32 %33, %32
  store i32 %add30, ptr %written_total, align 4
  br label %for.inc

do.body33:                                        ; preds = %for.body
  store i32 2, ptr %written, align 4
  %34 = load ptr, ptr %buf.addr, align 8
  %cmp34.not = icmp eq ptr %34, null
  br i1 %cmp34.not, label %if.end43, label %if.then36

if.then36:                                        ; preds = %do.body33
  %35 = load ptr, ptr %buf.addr, align 8
  %36 = load i32, ptr %written, align 4
  %conv37 = sext i32 %36 to i64
  %37 = call i64 @llvm.objectsize.i64.p0(ptr %35, i1 false, i1 true, i1 false)
  %call38 = call ptr @__memcpy_chk(ptr noundef %35, ptr noundef nonnull @.str.23, i64 noundef %conv37, i64 noundef %37) #11
  %38 = load ptr, ptr %buf.addr, align 8
  %39 = load i32, ptr %written, align 4
  %idxprom39 = sext i32 %39 to i64
  %arrayidx40 = getelementptr inbounds i8, ptr %38, i64 %idxprom39
  store i8 0, ptr %arrayidx40, align 1
  %40 = load i32, ptr %written, align 4
  %41 = load ptr, ptr %buf.addr, align 8
  %idx.ext41 = sext i32 %40 to i64
  %add.ptr42 = getelementptr inbounds i8, ptr %41, i64 %idx.ext41
  store ptr %add.ptr42, ptr %buf.addr, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.then36, %do.body33
  %42 = load i32, ptr %written, align 4
  %43 = load i32, ptr %written_total, align 4
  %add44 = add nsw i32 %43, %42
  store i32 %add44, ptr %written_total, align 4
  br label %for.inc

do.body47:                                        ; preds = %for.body
  store i32 2, ptr %written, align 4
  %44 = load ptr, ptr %buf.addr, align 8
  %cmp48.not = icmp eq ptr %44, null
  br i1 %cmp48.not, label %if.end57, label %if.then50

if.then50:                                        ; preds = %do.body47
  %45 = load ptr, ptr %buf.addr, align 8
  %46 = load i32, ptr %written, align 4
  %conv51 = sext i32 %46 to i64
  %47 = call i64 @llvm.objectsize.i64.p0(ptr %45, i1 false, i1 true, i1 false)
  %call52 = call ptr @__memcpy_chk(ptr noundef %45, ptr noundef nonnull @.str.24, i64 noundef %conv51, i64 noundef %47) #11
  %48 = load ptr, ptr %buf.addr, align 8
  %49 = load i32, ptr %written, align 4
  %idxprom53 = sext i32 %49 to i64
  %arrayidx54 = getelementptr inbounds i8, ptr %48, i64 %idxprom53
  store i8 0, ptr %arrayidx54, align 1
  %50 = load i32, ptr %written, align 4
  %51 = load ptr, ptr %buf.addr, align 8
  %idx.ext55 = sext i32 %50 to i64
  %add.ptr56 = getelementptr inbounds i8, ptr %51, i64 %idx.ext55
  store ptr %add.ptr56, ptr %buf.addr, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.then50, %do.body47
  %52 = load i32, ptr %written, align 4
  %53 = load i32, ptr %written_total, align 4
  %add58 = add nsw i32 %53, %52
  store i32 %add58, ptr %written_total, align 4
  br label %for.inc

do.body61:                                        ; preds = %for.body
  store i32 2, ptr %written, align 4
  %54 = load ptr, ptr %buf.addr, align 8
  %cmp62.not = icmp eq ptr %54, null
  br i1 %cmp62.not, label %if.end71, label %if.then64

if.then64:                                        ; preds = %do.body61
  %55 = load ptr, ptr %buf.addr, align 8
  %56 = load i32, ptr %written, align 4
  %conv65 = sext i32 %56 to i64
  %57 = call i64 @llvm.objectsize.i64.p0(ptr %55, i1 false, i1 true, i1 false)
  %call66 = call ptr @__memcpy_chk(ptr noundef %55, ptr noundef nonnull @.str.25, i64 noundef %conv65, i64 noundef %57) #11
  %58 = load ptr, ptr %buf.addr, align 8
  %59 = load i32, ptr %written, align 4
  %idxprom67 = sext i32 %59 to i64
  %arrayidx68 = getelementptr inbounds i8, ptr %58, i64 %idxprom67
  store i8 0, ptr %arrayidx68, align 1
  %60 = load i32, ptr %written, align 4
  %61 = load ptr, ptr %buf.addr, align 8
  %idx.ext69 = sext i32 %60 to i64
  %add.ptr70 = getelementptr inbounds i8, ptr %61, i64 %idx.ext69
  store ptr %add.ptr70, ptr %buf.addr, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.then64, %do.body61
  %62 = load i32, ptr %written, align 4
  %63 = load i32, ptr %written_total, align 4
  %add72 = add nsw i32 %63, %62
  store i32 %add72, ptr %written_total, align 4
  br label %for.inc

do.body75:                                        ; preds = %for.body
  store i32 2, ptr %written, align 4
  %64 = load ptr, ptr %buf.addr, align 8
  %cmp76.not = icmp eq ptr %64, null
  br i1 %cmp76.not, label %if.end85, label %if.then78

if.then78:                                        ; preds = %do.body75
  %65 = load ptr, ptr %buf.addr, align 8
  %66 = load i32, ptr %written, align 4
  %conv79 = sext i32 %66 to i64
  %67 = call i64 @llvm.objectsize.i64.p0(ptr %65, i1 false, i1 true, i1 false)
  %call80 = call ptr @__memcpy_chk(ptr noundef %65, ptr noundef nonnull @.str.26, i64 noundef %conv79, i64 noundef %67) #11
  %68 = load ptr, ptr %buf.addr, align 8
  %69 = load i32, ptr %written, align 4
  %idxprom81 = sext i32 %69 to i64
  %arrayidx82 = getelementptr inbounds i8, ptr %68, i64 %idxprom81
  store i8 0, ptr %arrayidx82, align 1
  %70 = load i32, ptr %written, align 4
  %71 = load ptr, ptr %buf.addr, align 8
  %idx.ext83 = sext i32 %70 to i64
  %add.ptr84 = getelementptr inbounds i8, ptr %71, i64 %idx.ext83
  store ptr %add.ptr84, ptr %buf.addr, align 8
  br label %if.end85

if.end85:                                         ; preds = %if.then78, %do.body75
  %72 = load i32, ptr %written, align 4
  %73 = load i32, ptr %written_total, align 4
  %add86 = add nsw i32 %73, %72
  store i32 %add86, ptr %written_total, align 4
  br label %for.inc

do.body89:                                        ; preds = %for.body
  store i32 2, ptr %written, align 4
  %74 = load ptr, ptr %buf.addr, align 8
  %cmp90.not = icmp eq ptr %74, null
  br i1 %cmp90.not, label %if.end99, label %if.then92

if.then92:                                        ; preds = %do.body89
  %75 = load ptr, ptr %buf.addr, align 8
  %76 = load i32, ptr %written, align 4
  %conv93 = sext i32 %76 to i64
  %77 = call i64 @llvm.objectsize.i64.p0(ptr %75, i1 false, i1 true, i1 false)
  %call94 = call ptr @__memcpy_chk(ptr noundef %75, ptr noundef nonnull @.str.27, i64 noundef %conv93, i64 noundef %77) #11
  %78 = load ptr, ptr %buf.addr, align 8
  %79 = load i32, ptr %written, align 4
  %idxprom95 = sext i32 %79 to i64
  %arrayidx96 = getelementptr inbounds i8, ptr %78, i64 %idxprom95
  store i8 0, ptr %arrayidx96, align 1
  %80 = load i32, ptr %written, align 4
  %81 = load ptr, ptr %buf.addr, align 8
  %idx.ext97 = sext i32 %80 to i64
  %add.ptr98 = getelementptr inbounds i8, ptr %81, i64 %idx.ext97
  store ptr %add.ptr98, ptr %buf.addr, align 8
  br label %if.end99

if.end99:                                         ; preds = %if.then92, %do.body89
  %82 = load i32, ptr %written, align 4
  %83 = load i32, ptr %written_total, align 4
  %add100 = add nsw i32 %83, %82
  store i32 %add100, ptr %written_total, align 4
  br label %for.inc

do.body103:                                       ; preds = %for.body
  store i32 6, ptr %written, align 4
  %84 = load ptr, ptr %buf.addr, align 8
  %cmp104.not = icmp eq ptr %84, null
  br i1 %cmp104.not, label %if.end113, label %if.then106

if.then106:                                       ; preds = %do.body103
  %85 = load ptr, ptr %buf.addr, align 8
  %86 = load i32, ptr %written, align 4
  %conv107 = sext i32 %86 to i64
  %87 = call i64 @llvm.objectsize.i64.p0(ptr %85, i1 false, i1 true, i1 false)
  %call108 = call ptr @__memcpy_chk(ptr noundef %85, ptr noundef nonnull @.str.28, i64 noundef %conv107, i64 noundef %87) #11
  %88 = load ptr, ptr %buf.addr, align 8
  %89 = load i32, ptr %written, align 4
  %idxprom109 = sext i32 %89 to i64
  %arrayidx110 = getelementptr inbounds i8, ptr %88, i64 %idxprom109
  store i8 0, ptr %arrayidx110, align 1
  %90 = load i32, ptr %written, align 4
  %91 = load ptr, ptr %buf.addr, align 8
  %idx.ext111 = sext i32 %90 to i64
  %add.ptr112 = getelementptr inbounds i8, ptr %91, i64 %idx.ext111
  store ptr %add.ptr112, ptr %buf.addr, align 8
  br label %if.end113

if.end113:                                        ; preds = %if.then106, %do.body103
  %92 = load i32, ptr %written, align 4
  %93 = load i32, ptr %written_total, align 4
  %add114 = add nsw i32 %93, %92
  store i32 %add114, ptr %written_total, align 4
  br label %for.inc

do.body117:                                       ; preds = %for.body
  store i32 6, ptr %written, align 4
  %94 = load ptr, ptr %buf.addr, align 8
  %cmp118.not = icmp eq ptr %94, null
  br i1 %cmp118.not, label %if.end127, label %if.then120

if.then120:                                       ; preds = %do.body117
  %95 = load ptr, ptr %buf.addr, align 8
  %96 = load i32, ptr %written, align 4
  %conv121 = sext i32 %96 to i64
  %97 = call i64 @llvm.objectsize.i64.p0(ptr %95, i1 false, i1 true, i1 false)
  %call122 = call ptr @__memcpy_chk(ptr noundef %95, ptr noundef nonnull @.str.29, i64 noundef %conv121, i64 noundef %97) #11
  %98 = load ptr, ptr %buf.addr, align 8
  %99 = load i32, ptr %written, align 4
  %idxprom123 = sext i32 %99 to i64
  %arrayidx124 = getelementptr inbounds i8, ptr %98, i64 %idxprom123
  store i8 0, ptr %arrayidx124, align 1
  %100 = load i32, ptr %written, align 4
  %101 = load ptr, ptr %buf.addr, align 8
  %idx.ext125 = sext i32 %100 to i64
  %add.ptr126 = getelementptr inbounds i8, ptr %101, i64 %idx.ext125
  store ptr %add.ptr126, ptr %buf.addr, align 8
  br label %if.end127

if.end127:                                        ; preds = %if.then120, %do.body117
  %102 = load i32, ptr %written, align 4
  %103 = load i32, ptr %written_total, align 4
  %add128 = add nsw i32 %103, %102
  store i32 %add128, ptr %written_total, align 4
  br label %for.inc

do.body131:                                       ; preds = %for.body
  store i32 6, ptr %written, align 4
  %104 = load ptr, ptr %buf.addr, align 8
  %cmp132.not = icmp eq ptr %104, null
  br i1 %cmp132.not, label %if.end141, label %if.then134

if.then134:                                       ; preds = %do.body131
  %105 = load ptr, ptr %buf.addr, align 8
  %106 = load i32, ptr %written, align 4
  %conv135 = sext i32 %106 to i64
  %107 = call i64 @llvm.objectsize.i64.p0(ptr %105, i1 false, i1 true, i1 false)
  %call136 = call ptr @__memcpy_chk(ptr noundef %105, ptr noundef nonnull @.str.30, i64 noundef %conv135, i64 noundef %107) #11
  %108 = load ptr, ptr %buf.addr, align 8
  %109 = load i32, ptr %written, align 4
  %idxprom137 = sext i32 %109 to i64
  %arrayidx138 = getelementptr inbounds i8, ptr %108, i64 %idxprom137
  store i8 0, ptr %arrayidx138, align 1
  %110 = load i32, ptr %written, align 4
  %111 = load ptr, ptr %buf.addr, align 8
  %idx.ext139 = sext i32 %110 to i64
  %add.ptr140 = getelementptr inbounds i8, ptr %111, i64 %idx.ext139
  store ptr %add.ptr140, ptr %buf.addr, align 8
  br label %if.end141

if.end141:                                        ; preds = %if.then134, %do.body131
  %112 = load i32, ptr %written, align 4
  %113 = load i32, ptr %written_total, align 4
  %add142 = add nsw i32 %113, %112
  store i32 %add142, ptr %written_total, align 4
  br label %for.inc

do.body145:                                       ; preds = %for.body
  store i32 6, ptr %written, align 4
  %114 = load ptr, ptr %buf.addr, align 8
  %cmp146.not = icmp eq ptr %114, null
  br i1 %cmp146.not, label %if.end155, label %if.then148

if.then148:                                       ; preds = %do.body145
  %115 = load ptr, ptr %buf.addr, align 8
  %116 = load i32, ptr %written, align 4
  %conv149 = sext i32 %116 to i64
  %117 = call i64 @llvm.objectsize.i64.p0(ptr %115, i1 false, i1 true, i1 false)
  %call150 = call ptr @__memcpy_chk(ptr noundef %115, ptr noundef nonnull @.str.31, i64 noundef %conv149, i64 noundef %117) #11
  %118 = load ptr, ptr %buf.addr, align 8
  %119 = load i32, ptr %written, align 4
  %idxprom151 = sext i32 %119 to i64
  %arrayidx152 = getelementptr inbounds i8, ptr %118, i64 %idxprom151
  store i8 0, ptr %arrayidx152, align 1
  %120 = load i32, ptr %written, align 4
  %121 = load ptr, ptr %buf.addr, align 8
  %idx.ext153 = sext i32 %120 to i64
  %add.ptr154 = getelementptr inbounds i8, ptr %121, i64 %idx.ext153
  store ptr %add.ptr154, ptr %buf.addr, align 8
  br label %if.end155

if.end155:                                        ; preds = %if.then148, %do.body145
  %122 = load i32, ptr %written, align 4
  %123 = load i32, ptr %written_total, align 4
  %add156 = add nsw i32 %123, %122
  store i32 %add156, ptr %written_total, align 4
  br label %for.inc

do.body159:                                       ; preds = %for.body
  store i32 6, ptr %written, align 4
  %124 = load ptr, ptr %buf.addr, align 8
  %cmp160.not = icmp eq ptr %124, null
  br i1 %cmp160.not, label %if.end169, label %if.then162

if.then162:                                       ; preds = %do.body159
  %125 = load ptr, ptr %buf.addr, align 8
  %126 = load i32, ptr %written, align 4
  %conv163 = sext i32 %126 to i64
  %127 = call i64 @llvm.objectsize.i64.p0(ptr %125, i1 false, i1 true, i1 false)
  %call164 = call ptr @__memcpy_chk(ptr noundef %125, ptr noundef nonnull @.str.32, i64 noundef %conv163, i64 noundef %127) #11
  %128 = load ptr, ptr %buf.addr, align 8
  %129 = load i32, ptr %written, align 4
  %idxprom165 = sext i32 %129 to i64
  %arrayidx166 = getelementptr inbounds i8, ptr %128, i64 %idxprom165
  store i8 0, ptr %arrayidx166, align 1
  %130 = load i32, ptr %written, align 4
  %131 = load ptr, ptr %buf.addr, align 8
  %idx.ext167 = sext i32 %130 to i64
  %add.ptr168 = getelementptr inbounds i8, ptr %131, i64 %idx.ext167
  store ptr %add.ptr168, ptr %buf.addr, align 8
  br label %if.end169

if.end169:                                        ; preds = %if.then162, %do.body159
  %132 = load i32, ptr %written, align 4
  %133 = load i32, ptr %written_total, align 4
  %add170 = add nsw i32 %133, %132
  store i32 %add170, ptr %written_total, align 4
  br label %for.inc

do.body173:                                       ; preds = %for.body
  store i32 6, ptr %written, align 4
  %134 = load ptr, ptr %buf.addr, align 8
  %cmp174.not = icmp eq ptr %134, null
  br i1 %cmp174.not, label %if.end183, label %if.then176

if.then176:                                       ; preds = %do.body173
  %135 = load ptr, ptr %buf.addr, align 8
  %136 = load i32, ptr %written, align 4
  %conv177 = sext i32 %136 to i64
  %137 = call i64 @llvm.objectsize.i64.p0(ptr %135, i1 false, i1 true, i1 false)
  %call178 = call ptr @__memcpy_chk(ptr noundef %135, ptr noundef nonnull @.str.33, i64 noundef %conv177, i64 noundef %137) #11
  %138 = load ptr, ptr %buf.addr, align 8
  %139 = load i32, ptr %written, align 4
  %idxprom179 = sext i32 %139 to i64
  %arrayidx180 = getelementptr inbounds i8, ptr %138, i64 %idxprom179
  store i8 0, ptr %arrayidx180, align 1
  %140 = load i32, ptr %written, align 4
  %141 = load ptr, ptr %buf.addr, align 8
  %idx.ext181 = sext i32 %140 to i64
  %add.ptr182 = getelementptr inbounds i8, ptr %141, i64 %idx.ext181
  store ptr %add.ptr182, ptr %buf.addr, align 8
  br label %if.end183

if.end183:                                        ; preds = %if.then176, %do.body173
  %142 = load i32, ptr %written, align 4
  %143 = load i32, ptr %written_total, align 4
  %add184 = add nsw i32 %143, %142
  store i32 %add184, ptr %written_total, align 4
  br label %for.inc

do.body187:                                       ; preds = %for.body
  store i32 6, ptr %written, align 4
  %144 = load ptr, ptr %buf.addr, align 8
  %cmp188.not = icmp eq ptr %144, null
  br i1 %cmp188.not, label %if.end197, label %if.then190

if.then190:                                       ; preds = %do.body187
  %145 = load ptr, ptr %buf.addr, align 8
  %146 = load i32, ptr %written, align 4
  %conv191 = sext i32 %146 to i64
  %147 = call i64 @llvm.objectsize.i64.p0(ptr %145, i1 false, i1 true, i1 false)
  %call192 = call ptr @__memcpy_chk(ptr noundef %145, ptr noundef nonnull @.str.34, i64 noundef %conv191, i64 noundef %147) #11
  %148 = load ptr, ptr %buf.addr, align 8
  %149 = load i32, ptr %written, align 4
  %idxprom193 = sext i32 %149 to i64
  %arrayidx194 = getelementptr inbounds i8, ptr %148, i64 %idxprom193
  store i8 0, ptr %arrayidx194, align 1
  %150 = load i32, ptr %written, align 4
  %151 = load ptr, ptr %buf.addr, align 8
  %idx.ext195 = sext i32 %150 to i64
  %add.ptr196 = getelementptr inbounds i8, ptr %151, i64 %idx.ext195
  store ptr %add.ptr196, ptr %buf.addr, align 8
  br label %if.end197

if.end197:                                        ; preds = %if.then190, %do.body187
  %152 = load i32, ptr %written, align 4
  %153 = load i32, ptr %written_total, align 4
  %add198 = add nsw i32 %153, %152
  store i32 %add198, ptr %written_total, align 4
  br label %for.inc

do.body201:                                       ; preds = %for.body
  store i32 6, ptr %written, align 4
  %154 = load ptr, ptr %buf.addr, align 8
  %cmp202.not = icmp eq ptr %154, null
  br i1 %cmp202.not, label %if.end211, label %if.then204

if.then204:                                       ; preds = %do.body201
  %155 = load ptr, ptr %buf.addr, align 8
  %156 = load i32, ptr %written, align 4
  %conv205 = sext i32 %156 to i64
  %157 = call i64 @llvm.objectsize.i64.p0(ptr %155, i1 false, i1 true, i1 false)
  %call206 = call ptr @__memcpy_chk(ptr noundef %155, ptr noundef nonnull @.str.35, i64 noundef %conv205, i64 noundef %157) #11
  %158 = load ptr, ptr %buf.addr, align 8
  %159 = load i32, ptr %written, align 4
  %idxprom207 = sext i32 %159 to i64
  %arrayidx208 = getelementptr inbounds i8, ptr %158, i64 %idxprom207
  store i8 0, ptr %arrayidx208, align 1
  %160 = load i32, ptr %written, align 4
  %161 = load ptr, ptr %buf.addr, align 8
  %idx.ext209 = sext i32 %160 to i64
  %add.ptr210 = getelementptr inbounds i8, ptr %161, i64 %idx.ext209
  store ptr %add.ptr210, ptr %buf.addr, align 8
  br label %if.end211

if.end211:                                        ; preds = %if.then204, %do.body201
  %162 = load i32, ptr %written, align 4
  %163 = load i32, ptr %written_total, align 4
  %add212 = add nsw i32 %163, %162
  store i32 %add212, ptr %written_total, align 4
  br label %for.inc

do.body215:                                       ; preds = %for.body
  store i32 6, ptr %written, align 4
  %164 = load ptr, ptr %buf.addr, align 8
  %cmp216.not = icmp eq ptr %164, null
  br i1 %cmp216.not, label %if.end225, label %if.then218

if.then218:                                       ; preds = %do.body215
  %165 = load ptr, ptr %buf.addr, align 8
  %166 = load i32, ptr %written, align 4
  %conv219 = sext i32 %166 to i64
  %167 = call i64 @llvm.objectsize.i64.p0(ptr %165, i1 false, i1 true, i1 false)
  %call220 = call ptr @__memcpy_chk(ptr noundef %165, ptr noundef nonnull @.str.36, i64 noundef %conv219, i64 noundef %167) #11
  %168 = load ptr, ptr %buf.addr, align 8
  %169 = load i32, ptr %written, align 4
  %idxprom221 = sext i32 %169 to i64
  %arrayidx222 = getelementptr inbounds i8, ptr %168, i64 %idxprom221
  store i8 0, ptr %arrayidx222, align 1
  %170 = load i32, ptr %written, align 4
  %171 = load ptr, ptr %buf.addr, align 8
  %idx.ext223 = sext i32 %170 to i64
  %add.ptr224 = getelementptr inbounds i8, ptr %171, i64 %idx.ext223
  store ptr %add.ptr224, ptr %buf.addr, align 8
  br label %if.end225

if.end225:                                        ; preds = %if.then218, %do.body215
  %172 = load i32, ptr %written, align 4
  %173 = load i32, ptr %written_total, align 4
  %add226 = add nsw i32 %173, %172
  store i32 %add226, ptr %written_total, align 4
  br label %for.inc

do.body229:                                       ; preds = %for.body
  store i32 6, ptr %written, align 4
  %174 = load ptr, ptr %buf.addr, align 8
  %cmp230.not = icmp eq ptr %174, null
  br i1 %cmp230.not, label %if.end239, label %if.then232

if.then232:                                       ; preds = %do.body229
  %175 = load ptr, ptr %buf.addr, align 8
  %176 = load i32, ptr %written, align 4
  %conv233 = sext i32 %176 to i64
  %177 = call i64 @llvm.objectsize.i64.p0(ptr %175, i1 false, i1 true, i1 false)
  %call234 = call ptr @__memcpy_chk(ptr noundef %175, ptr noundef nonnull @.str.37, i64 noundef %conv233, i64 noundef %177) #11
  %178 = load ptr, ptr %buf.addr, align 8
  %179 = load i32, ptr %written, align 4
  %idxprom235 = sext i32 %179 to i64
  %arrayidx236 = getelementptr inbounds i8, ptr %178, i64 %idxprom235
  store i8 0, ptr %arrayidx236, align 1
  %180 = load i32, ptr %written, align 4
  %181 = load ptr, ptr %buf.addr, align 8
  %idx.ext237 = sext i32 %180 to i64
  %add.ptr238 = getelementptr inbounds i8, ptr %181, i64 %idx.ext237
  store ptr %add.ptr238, ptr %buf.addr, align 8
  br label %if.end239

if.end239:                                        ; preds = %if.then232, %do.body229
  %182 = load i32, ptr %written, align 4
  %183 = load i32, ptr %written_total, align 4
  %add240 = add nsw i32 %183, %182
  store i32 %add240, ptr %written_total, align 4
  br label %for.inc

do.body243:                                       ; preds = %for.body
  store i32 6, ptr %written, align 4
  %184 = load ptr, ptr %buf.addr, align 8
  %cmp244.not = icmp eq ptr %184, null
  br i1 %cmp244.not, label %if.end253, label %if.then246

if.then246:                                       ; preds = %do.body243
  %185 = load ptr, ptr %buf.addr, align 8
  %186 = load i32, ptr %written, align 4
  %conv247 = sext i32 %186 to i64
  %187 = call i64 @llvm.objectsize.i64.p0(ptr %185, i1 false, i1 true, i1 false)
  %call248 = call ptr @__memcpy_chk(ptr noundef %185, ptr noundef nonnull @.str.38, i64 noundef %conv247, i64 noundef %187) #11
  %188 = load ptr, ptr %buf.addr, align 8
  %189 = load i32, ptr %written, align 4
  %idxprom249 = sext i32 %189 to i64
  %arrayidx250 = getelementptr inbounds i8, ptr %188, i64 %idxprom249
  store i8 0, ptr %arrayidx250, align 1
  %190 = load i32, ptr %written, align 4
  %191 = load ptr, ptr %buf.addr, align 8
  %idx.ext251 = sext i32 %190 to i64
  %add.ptr252 = getelementptr inbounds i8, ptr %191, i64 %idx.ext251
  store ptr %add.ptr252, ptr %buf.addr, align 8
  br label %if.end253

if.end253:                                        ; preds = %if.then246, %do.body243
  %192 = load i32, ptr %written, align 4
  %193 = load i32, ptr %written_total, align 4
  %add254 = add nsw i32 %193, %192
  store i32 %add254, ptr %written_total, align 4
  br label %for.inc

do.body257:                                       ; preds = %for.body
  store i32 6, ptr %written, align 4
  %194 = load ptr, ptr %buf.addr, align 8
  %cmp258.not = icmp eq ptr %194, null
  br i1 %cmp258.not, label %if.end267, label %if.then260

if.then260:                                       ; preds = %do.body257
  %195 = load ptr, ptr %buf.addr, align 8
  %196 = load i32, ptr %written, align 4
  %conv261 = sext i32 %196 to i64
  %197 = call i64 @llvm.objectsize.i64.p0(ptr %195, i1 false, i1 true, i1 false)
  %call262 = call ptr @__memcpy_chk(ptr noundef %195, ptr noundef nonnull @.str.39, i64 noundef %conv261, i64 noundef %197) #11
  %198 = load ptr, ptr %buf.addr, align 8
  %199 = load i32, ptr %written, align 4
  %idxprom263 = sext i32 %199 to i64
  %arrayidx264 = getelementptr inbounds i8, ptr %198, i64 %idxprom263
  store i8 0, ptr %arrayidx264, align 1
  %200 = load i32, ptr %written, align 4
  %201 = load ptr, ptr %buf.addr, align 8
  %idx.ext265 = sext i32 %200 to i64
  %add.ptr266 = getelementptr inbounds i8, ptr %201, i64 %idx.ext265
  store ptr %add.ptr266, ptr %buf.addr, align 8
  br label %if.end267

if.end267:                                        ; preds = %if.then260, %do.body257
  %202 = load i32, ptr %written, align 4
  %203 = load i32, ptr %written_total, align 4
  %add268 = add nsw i32 %203, %202
  store i32 %add268, ptr %written_total, align 4
  br label %for.inc

do.body271:                                       ; preds = %for.body
  store i32 6, ptr %written, align 4
  %204 = load ptr, ptr %buf.addr, align 8
  %cmp272.not = icmp eq ptr %204, null
  br i1 %cmp272.not, label %if.end281, label %if.then274

if.then274:                                       ; preds = %do.body271
  %205 = load ptr, ptr %buf.addr, align 8
  %206 = load i32, ptr %written, align 4
  %conv275 = sext i32 %206 to i64
  %207 = call i64 @llvm.objectsize.i64.p0(ptr %205, i1 false, i1 true, i1 false)
  %call276 = call ptr @__memcpy_chk(ptr noundef %205, ptr noundef nonnull @.str.40, i64 noundef %conv275, i64 noundef %207) #11
  %208 = load ptr, ptr %buf.addr, align 8
  %209 = load i32, ptr %written, align 4
  %idxprom277 = sext i32 %209 to i64
  %arrayidx278 = getelementptr inbounds i8, ptr %208, i64 %idxprom277
  store i8 0, ptr %arrayidx278, align 1
  %210 = load i32, ptr %written, align 4
  %211 = load ptr, ptr %buf.addr, align 8
  %idx.ext279 = sext i32 %210 to i64
  %add.ptr280 = getelementptr inbounds i8, ptr %211, i64 %idx.ext279
  store ptr %add.ptr280, ptr %buf.addr, align 8
  br label %if.end281

if.end281:                                        ; preds = %if.then274, %do.body271
  %212 = load i32, ptr %written, align 4
  %213 = load i32, ptr %written_total, align 4
  %add282 = add nsw i32 %213, %212
  store i32 %add282, ptr %written_total, align 4
  br label %for.inc

do.body285:                                       ; preds = %for.body
  store i32 6, ptr %written, align 4
  %214 = load ptr, ptr %buf.addr, align 8
  %cmp286.not = icmp eq ptr %214, null
  br i1 %cmp286.not, label %if.end295, label %if.then288

if.then288:                                       ; preds = %do.body285
  %215 = load ptr, ptr %buf.addr, align 8
  %216 = load i32, ptr %written, align 4
  %conv289 = sext i32 %216 to i64
  %217 = call i64 @llvm.objectsize.i64.p0(ptr %215, i1 false, i1 true, i1 false)
  %call290 = call ptr @__memcpy_chk(ptr noundef %215, ptr noundef nonnull @.str.41, i64 noundef %conv289, i64 noundef %217) #11
  %218 = load ptr, ptr %buf.addr, align 8
  %219 = load i32, ptr %written, align 4
  %idxprom291 = sext i32 %219 to i64
  %arrayidx292 = getelementptr inbounds i8, ptr %218, i64 %idxprom291
  store i8 0, ptr %arrayidx292, align 1
  %220 = load i32, ptr %written, align 4
  %221 = load ptr, ptr %buf.addr, align 8
  %idx.ext293 = sext i32 %220 to i64
  %add.ptr294 = getelementptr inbounds i8, ptr %221, i64 %idx.ext293
  store ptr %add.ptr294, ptr %buf.addr, align 8
  br label %if.end295

if.end295:                                        ; preds = %if.then288, %do.body285
  %222 = load i32, ptr %written, align 4
  %223 = load i32, ptr %written_total, align 4
  %add296 = add nsw i32 %223, %222
  store i32 %add296, ptr %written_total, align 4
  br label %for.inc

do.body299:                                       ; preds = %for.body
  store i32 6, ptr %written, align 4
  %224 = load ptr, ptr %buf.addr, align 8
  %cmp300.not = icmp eq ptr %224, null
  br i1 %cmp300.not, label %if.end309, label %if.then302

if.then302:                                       ; preds = %do.body299
  %225 = load ptr, ptr %buf.addr, align 8
  %226 = load i32, ptr %written, align 4
  %conv303 = sext i32 %226 to i64
  %227 = call i64 @llvm.objectsize.i64.p0(ptr %225, i1 false, i1 true, i1 false)
  %call304 = call ptr @__memcpy_chk(ptr noundef %225, ptr noundef nonnull @.str.42, i64 noundef %conv303, i64 noundef %227) #11
  %228 = load ptr, ptr %buf.addr, align 8
  %229 = load i32, ptr %written, align 4
  %idxprom305 = sext i32 %229 to i64
  %arrayidx306 = getelementptr inbounds i8, ptr %228, i64 %idxprom305
  store i8 0, ptr %arrayidx306, align 1
  %230 = load i32, ptr %written, align 4
  %231 = load ptr, ptr %buf.addr, align 8
  %idx.ext307 = sext i32 %230 to i64
  %add.ptr308 = getelementptr inbounds i8, ptr %231, i64 %idx.ext307
  store ptr %add.ptr308, ptr %buf.addr, align 8
  br label %if.end309

if.end309:                                        ; preds = %if.then302, %do.body299
  %232 = load i32, ptr %written, align 4
  %233 = load i32, ptr %written_total, align 4
  %add310 = add nsw i32 %233, %232
  store i32 %add310, ptr %written_total, align 4
  br label %for.inc

do.body313:                                       ; preds = %for.body
  store i32 6, ptr %written, align 4
  %234 = load ptr, ptr %buf.addr, align 8
  %cmp314.not = icmp eq ptr %234, null
  br i1 %cmp314.not, label %if.end323, label %if.then316

if.then316:                                       ; preds = %do.body313
  %235 = load ptr, ptr %buf.addr, align 8
  %236 = load i32, ptr %written, align 4
  %conv317 = sext i32 %236 to i64
  %237 = call i64 @llvm.objectsize.i64.p0(ptr %235, i1 false, i1 true, i1 false)
  %call318 = call ptr @__memcpy_chk(ptr noundef %235, ptr noundef nonnull @.str.43, i64 noundef %conv317, i64 noundef %237) #11
  %238 = load ptr, ptr %buf.addr, align 8
  %239 = load i32, ptr %written, align 4
  %idxprom319 = sext i32 %239 to i64
  %arrayidx320 = getelementptr inbounds i8, ptr %238, i64 %idxprom319
  store i8 0, ptr %arrayidx320, align 1
  %240 = load i32, ptr %written, align 4
  %241 = load ptr, ptr %buf.addr, align 8
  %idx.ext321 = sext i32 %240 to i64
  %add.ptr322 = getelementptr inbounds i8, ptr %241, i64 %idx.ext321
  store ptr %add.ptr322, ptr %buf.addr, align 8
  br label %if.end323

if.end323:                                        ; preds = %if.then316, %do.body313
  %242 = load i32, ptr %written, align 4
  %243 = load i32, ptr %written_total, align 4
  %add324 = add nsw i32 %243, %242
  store i32 %add324, ptr %written_total, align 4
  br label %for.inc

do.body327:                                       ; preds = %for.body
  store i32 6, ptr %written, align 4
  %244 = load ptr, ptr %buf.addr, align 8
  %cmp328.not = icmp eq ptr %244, null
  br i1 %cmp328.not, label %if.end337, label %if.then330

if.then330:                                       ; preds = %do.body327
  %245 = load ptr, ptr %buf.addr, align 8
  %246 = load i32, ptr %written, align 4
  %conv331 = sext i32 %246 to i64
  %247 = call i64 @llvm.objectsize.i64.p0(ptr %245, i1 false, i1 true, i1 false)
  %call332 = call ptr @__memcpy_chk(ptr noundef %245, ptr noundef nonnull @.str.44, i64 noundef %conv331, i64 noundef %247) #11
  %248 = load ptr, ptr %buf.addr, align 8
  %249 = load i32, ptr %written, align 4
  %idxprom333 = sext i32 %249 to i64
  %arrayidx334 = getelementptr inbounds i8, ptr %248, i64 %idxprom333
  store i8 0, ptr %arrayidx334, align 1
  %250 = load i32, ptr %written, align 4
  %251 = load ptr, ptr %buf.addr, align 8
  %idx.ext335 = sext i32 %250 to i64
  %add.ptr336 = getelementptr inbounds i8, ptr %251, i64 %idx.ext335
  store ptr %add.ptr336, ptr %buf.addr, align 8
  br label %if.end337

if.end337:                                        ; preds = %if.then330, %do.body327
  %252 = load i32, ptr %written, align 4
  %253 = load i32, ptr %written_total, align 4
  %add338 = add nsw i32 %253, %252
  store i32 %add338, ptr %written_total, align 4
  br label %for.inc

do.body341:                                       ; preds = %for.body
  store i32 6, ptr %written, align 4
  %254 = load ptr, ptr %buf.addr, align 8
  %cmp342.not = icmp eq ptr %254, null
  br i1 %cmp342.not, label %if.end351, label %if.then344

if.then344:                                       ; preds = %do.body341
  %255 = load ptr, ptr %buf.addr, align 8
  %256 = load i32, ptr %written, align 4
  %conv345 = sext i32 %256 to i64
  %257 = call i64 @llvm.objectsize.i64.p0(ptr %255, i1 false, i1 true, i1 false)
  %call346 = call ptr @__memcpy_chk(ptr noundef %255, ptr noundef nonnull @.str.45, i64 noundef %conv345, i64 noundef %257) #11
  %258 = load ptr, ptr %buf.addr, align 8
  %259 = load i32, ptr %written, align 4
  %idxprom347 = sext i32 %259 to i64
  %arrayidx348 = getelementptr inbounds i8, ptr %258, i64 %idxprom347
  store i8 0, ptr %arrayidx348, align 1
  %260 = load i32, ptr %written, align 4
  %261 = load ptr, ptr %buf.addr, align 8
  %idx.ext349 = sext i32 %260 to i64
  %add.ptr350 = getelementptr inbounds i8, ptr %261, i64 %idx.ext349
  store ptr %add.ptr350, ptr %buf.addr, align 8
  br label %if.end351

if.end351:                                        ; preds = %if.then344, %do.body341
  %262 = load i32, ptr %written, align 4
  %263 = load i32, ptr %written_total, align 4
  %add352 = add nsw i32 %263, %262
  store i32 %add352, ptr %written_total, align 4
  br label %for.inc

do.body355:                                       ; preds = %for.body
  store i32 6, ptr %written, align 4
  %264 = load ptr, ptr %buf.addr, align 8
  %cmp356.not = icmp eq ptr %264, null
  br i1 %cmp356.not, label %if.end365, label %if.then358

if.then358:                                       ; preds = %do.body355
  %265 = load ptr, ptr %buf.addr, align 8
  %266 = load i32, ptr %written, align 4
  %conv359 = sext i32 %266 to i64
  %267 = call i64 @llvm.objectsize.i64.p0(ptr %265, i1 false, i1 true, i1 false)
  %call360 = call ptr @__memcpy_chk(ptr noundef %265, ptr noundef nonnull @.str.46, i64 noundef %conv359, i64 noundef %267) #11
  %268 = load ptr, ptr %buf.addr, align 8
  %269 = load i32, ptr %written, align 4
  %idxprom361 = sext i32 %269 to i64
  %arrayidx362 = getelementptr inbounds i8, ptr %268, i64 %idxprom361
  store i8 0, ptr %arrayidx362, align 1
  %270 = load i32, ptr %written, align 4
  %271 = load ptr, ptr %buf.addr, align 8
  %idx.ext363 = sext i32 %270 to i64
  %add.ptr364 = getelementptr inbounds i8, ptr %271, i64 %idx.ext363
  store ptr %add.ptr364, ptr %buf.addr, align 8
  br label %if.end365

if.end365:                                        ; preds = %if.then358, %do.body355
  %272 = load i32, ptr %written, align 4
  %273 = load i32, ptr %written_total, align 4
  %add366 = add nsw i32 %273, %272
  store i32 %add366, ptr %written_total, align 4
  br label %for.inc

do.body369:                                       ; preds = %for.body
  store i32 6, ptr %written, align 4
  %274 = load ptr, ptr %buf.addr, align 8
  %cmp370.not = icmp eq ptr %274, null
  br i1 %cmp370.not, label %if.end379, label %if.then372

if.then372:                                       ; preds = %do.body369
  %275 = load ptr, ptr %buf.addr, align 8
  %276 = load i32, ptr %written, align 4
  %conv373 = sext i32 %276 to i64
  %277 = call i64 @llvm.objectsize.i64.p0(ptr %275, i1 false, i1 true, i1 false)
  %call374 = call ptr @__memcpy_chk(ptr noundef %275, ptr noundef nonnull @.str.47, i64 noundef %conv373, i64 noundef %277) #11
  %278 = load ptr, ptr %buf.addr, align 8
  %279 = load i32, ptr %written, align 4
  %idxprom375 = sext i32 %279 to i64
  %arrayidx376 = getelementptr inbounds i8, ptr %278, i64 %idxprom375
  store i8 0, ptr %arrayidx376, align 1
  %280 = load i32, ptr %written, align 4
  %281 = load ptr, ptr %buf.addr, align 8
  %idx.ext377 = sext i32 %280 to i64
  %add.ptr378 = getelementptr inbounds i8, ptr %281, i64 %idx.ext377
  store ptr %add.ptr378, ptr %buf.addr, align 8
  br label %if.end379

if.end379:                                        ; preds = %if.then372, %do.body369
  %282 = load i32, ptr %written, align 4
  %283 = load i32, ptr %written_total, align 4
  %add380 = add nsw i32 %283, %282
  store i32 %add380, ptr %written_total, align 4
  br label %for.inc

do.body383:                                       ; preds = %for.body
  store i32 6, ptr %written, align 4
  %284 = load ptr, ptr %buf.addr, align 8
  %cmp384.not = icmp eq ptr %284, null
  br i1 %cmp384.not, label %if.end393, label %if.then386

if.then386:                                       ; preds = %do.body383
  %285 = load ptr, ptr %buf.addr, align 8
  %286 = load i32, ptr %written, align 4
  %conv387 = sext i32 %286 to i64
  %287 = call i64 @llvm.objectsize.i64.p0(ptr %285, i1 false, i1 true, i1 false)
  %call388 = call ptr @__memcpy_chk(ptr noundef %285, ptr noundef nonnull @.str.48, i64 noundef %conv387, i64 noundef %287) #11
  %288 = load ptr, ptr %buf.addr, align 8
  %289 = load i32, ptr %written, align 4
  %idxprom389 = sext i32 %289 to i64
  %arrayidx390 = getelementptr inbounds i8, ptr %288, i64 %idxprom389
  store i8 0, ptr %arrayidx390, align 1
  %290 = load i32, ptr %written, align 4
  %291 = load ptr, ptr %buf.addr, align 8
  %idx.ext391 = sext i32 %290 to i64
  %add.ptr392 = getelementptr inbounds i8, ptr %291, i64 %idx.ext391
  store ptr %add.ptr392, ptr %buf.addr, align 8
  br label %if.end393

if.end393:                                        ; preds = %if.then386, %do.body383
  %292 = load i32, ptr %written, align 4
  %293 = load i32, ptr %written_total, align 4
  %add394 = add nsw i32 %293, %292
  store i32 %add394, ptr %written_total, align 4
  br label %for.inc

do.body397:                                       ; preds = %for.body
  store i32 6, ptr %written, align 4
  %294 = load ptr, ptr %buf.addr, align 8
  %cmp398.not = icmp eq ptr %294, null
  br i1 %cmp398.not, label %if.end407, label %if.then400

if.then400:                                       ; preds = %do.body397
  %295 = load ptr, ptr %buf.addr, align 8
  %296 = load i32, ptr %written, align 4
  %conv401 = sext i32 %296 to i64
  %297 = call i64 @llvm.objectsize.i64.p0(ptr %295, i1 false, i1 true, i1 false)
  %call402 = call ptr @__memcpy_chk(ptr noundef %295, ptr noundef nonnull @.str.49, i64 noundef %conv401, i64 noundef %297) #11
  %298 = load ptr, ptr %buf.addr, align 8
  %299 = load i32, ptr %written, align 4
  %idxprom403 = sext i32 %299 to i64
  %arrayidx404 = getelementptr inbounds i8, ptr %298, i64 %idxprom403
  store i8 0, ptr %arrayidx404, align 1
  %300 = load i32, ptr %written, align 4
  %301 = load ptr, ptr %buf.addr, align 8
  %idx.ext405 = sext i32 %300 to i64
  %add.ptr406 = getelementptr inbounds i8, ptr %301, i64 %idx.ext405
  store ptr %add.ptr406, ptr %buf.addr, align 8
  br label %if.end407

if.end407:                                        ; preds = %if.then400, %do.body397
  %302 = load i32, ptr %written, align 4
  %303 = load i32, ptr %written_total, align 4
  %add408 = add nsw i32 %303, %302
  store i32 %add408, ptr %written_total, align 4
  br label %for.inc

do.body411:                                       ; preds = %for.body
  store i32 6, ptr %written, align 4
  %304 = load ptr, ptr %buf.addr, align 8
  %cmp412.not = icmp eq ptr %304, null
  br i1 %cmp412.not, label %if.end421, label %if.then414

if.then414:                                       ; preds = %do.body411
  %305 = load ptr, ptr %buf.addr, align 8
  %306 = load i32, ptr %written, align 4
  %conv415 = sext i32 %306 to i64
  %307 = call i64 @llvm.objectsize.i64.p0(ptr %305, i1 false, i1 true, i1 false)
  %call416 = call ptr @__memcpy_chk(ptr noundef %305, ptr noundef nonnull @.str.50, i64 noundef %conv415, i64 noundef %307) #11
  %308 = load ptr, ptr %buf.addr, align 8
  %309 = load i32, ptr %written, align 4
  %idxprom417 = sext i32 %309 to i64
  %arrayidx418 = getelementptr inbounds i8, ptr %308, i64 %idxprom417
  store i8 0, ptr %arrayidx418, align 1
  %310 = load i32, ptr %written, align 4
  %311 = load ptr, ptr %buf.addr, align 8
  %idx.ext419 = sext i32 %310 to i64
  %add.ptr420 = getelementptr inbounds i8, ptr %311, i64 %idx.ext419
  store ptr %add.ptr420, ptr %buf.addr, align 8
  br label %if.end421

if.end421:                                        ; preds = %if.then414, %do.body411
  %312 = load i32, ptr %written, align 4
  %313 = load i32, ptr %written_total, align 4
  %add422 = add nsw i32 %313, %312
  store i32 %add422, ptr %written_total, align 4
  br label %for.inc

do.body425:                                       ; preds = %for.body
  store i32 6, ptr %written, align 4
  %314 = load ptr, ptr %buf.addr, align 8
  %cmp426.not = icmp eq ptr %314, null
  br i1 %cmp426.not, label %if.end435, label %if.then428

if.then428:                                       ; preds = %do.body425
  %315 = load ptr, ptr %buf.addr, align 8
  %316 = load i32, ptr %written, align 4
  %conv429 = sext i32 %316 to i64
  %317 = call i64 @llvm.objectsize.i64.p0(ptr %315, i1 false, i1 true, i1 false)
  %call430 = call ptr @__memcpy_chk(ptr noundef %315, ptr noundef nonnull @.str.51, i64 noundef %conv429, i64 noundef %317) #11
  %318 = load ptr, ptr %buf.addr, align 8
  %319 = load i32, ptr %written, align 4
  %idxprom431 = sext i32 %319 to i64
  %arrayidx432 = getelementptr inbounds i8, ptr %318, i64 %idxprom431
  store i8 0, ptr %arrayidx432, align 1
  %320 = load i32, ptr %written, align 4
  %321 = load ptr, ptr %buf.addr, align 8
  %idx.ext433 = sext i32 %320 to i64
  %add.ptr434 = getelementptr inbounds i8, ptr %321, i64 %idx.ext433
  store ptr %add.ptr434, ptr %buf.addr, align 8
  br label %if.end435

if.end435:                                        ; preds = %if.then428, %do.body425
  %322 = load i32, ptr %written, align 4
  %323 = load i32, ptr %written_total, align 4
  %add436 = add nsw i32 %323, %322
  store i32 %add436, ptr %written_total, align 4
  br label %for.inc

do.body439:                                       ; preds = %for.body
  store i32 6, ptr %written, align 4
  %324 = load ptr, ptr %buf.addr, align 8
  %cmp440.not = icmp eq ptr %324, null
  br i1 %cmp440.not, label %if.end449, label %if.then442

if.then442:                                       ; preds = %do.body439
  %325 = load ptr, ptr %buf.addr, align 8
  %326 = load i32, ptr %written, align 4
  %conv443 = sext i32 %326 to i64
  %327 = call i64 @llvm.objectsize.i64.p0(ptr %325, i1 false, i1 true, i1 false)
  %call444 = call ptr @__memcpy_chk(ptr noundef %325, ptr noundef nonnull @.str.52, i64 noundef %conv443, i64 noundef %327) #11
  %328 = load ptr, ptr %buf.addr, align 8
  %329 = load i32, ptr %written, align 4
  %idxprom445 = sext i32 %329 to i64
  %arrayidx446 = getelementptr inbounds i8, ptr %328, i64 %idxprom445
  store i8 0, ptr %arrayidx446, align 1
  %330 = load i32, ptr %written, align 4
  %331 = load ptr, ptr %buf.addr, align 8
  %idx.ext447 = sext i32 %330 to i64
  %add.ptr448 = getelementptr inbounds i8, ptr %331, i64 %idx.ext447
  store ptr %add.ptr448, ptr %buf.addr, align 8
  br label %if.end449

if.end449:                                        ; preds = %if.then442, %do.body439
  %332 = load i32, ptr %written, align 4
  %333 = load i32, ptr %written_total, align 4
  %add450 = add nsw i32 %333, %332
  store i32 %add450, ptr %written_total, align 4
  br label %for.inc

do.body453:                                       ; preds = %for.body
  store i32 6, ptr %written, align 4
  %334 = load ptr, ptr %buf.addr, align 8
  %cmp454.not = icmp eq ptr %334, null
  br i1 %cmp454.not, label %if.end463, label %if.then456

if.then456:                                       ; preds = %do.body453
  %335 = load ptr, ptr %buf.addr, align 8
  %336 = load i32, ptr %written, align 4
  %conv457 = sext i32 %336 to i64
  %337 = call i64 @llvm.objectsize.i64.p0(ptr %335, i1 false, i1 true, i1 false)
  %call458 = call ptr @__memcpy_chk(ptr noundef %335, ptr noundef nonnull @.str.53, i64 noundef %conv457, i64 noundef %337) #11
  %338 = load ptr, ptr %buf.addr, align 8
  %339 = load i32, ptr %written, align 4
  %idxprom459 = sext i32 %339 to i64
  %arrayidx460 = getelementptr inbounds i8, ptr %338, i64 %idxprom459
  store i8 0, ptr %arrayidx460, align 1
  %340 = load i32, ptr %written, align 4
  %341 = load ptr, ptr %buf.addr, align 8
  %idx.ext461 = sext i32 %340 to i64
  %add.ptr462 = getelementptr inbounds i8, ptr %341, i64 %idx.ext461
  store ptr %add.ptr462, ptr %buf.addr, align 8
  br label %if.end463

if.end463:                                        ; preds = %if.then456, %do.body453
  %342 = load i32, ptr %written, align 4
  %343 = load i32, ptr %written_total, align 4
  %add464 = add nsw i32 %343, %342
  store i32 %add464, ptr %written_total, align 4
  br label %for.inc

do.body467:                                       ; preds = %for.body
  store i32 6, ptr %written, align 4
  %344 = load ptr, ptr %buf.addr, align 8
  %cmp468.not = icmp eq ptr %344, null
  br i1 %cmp468.not, label %if.end477, label %if.then470

if.then470:                                       ; preds = %do.body467
  %345 = load ptr, ptr %buf.addr, align 8
  %346 = load i32, ptr %written, align 4
  %conv471 = sext i32 %346 to i64
  %347 = call i64 @llvm.objectsize.i64.p0(ptr %345, i1 false, i1 true, i1 false)
  %call472 = call ptr @__memcpy_chk(ptr noundef %345, ptr noundef nonnull @.str.54, i64 noundef %conv471, i64 noundef %347) #11
  %348 = load ptr, ptr %buf.addr, align 8
  %349 = load i32, ptr %written, align 4
  %idxprom473 = sext i32 %349 to i64
  %arrayidx474 = getelementptr inbounds i8, ptr %348, i64 %idxprom473
  store i8 0, ptr %arrayidx474, align 1
  %350 = load i32, ptr %written, align 4
  %351 = load ptr, ptr %buf.addr, align 8
  %idx.ext475 = sext i32 %350 to i64
  %add.ptr476 = getelementptr inbounds i8, ptr %351, i64 %idx.ext475
  store ptr %add.ptr476, ptr %buf.addr, align 8
  br label %if.end477

if.end477:                                        ; preds = %if.then470, %do.body467
  %352 = load i32, ptr %written, align 4
  %353 = load i32, ptr %written_total, align 4
  %add478 = add nsw i32 %353, %352
  store i32 %add478, ptr %written_total, align 4
  br label %for.inc

sw.bb480:                                         ; preds = %for.body
  %354 = load i32, ptr @parson_escape_slashes, align 4
  %tobool.not = icmp eq i32 %354, 0
  br i1 %tobool.not, label %do.body495, label %do.body482

do.body482:                                       ; preds = %sw.bb480
  store i32 2, ptr %written, align 4
  %355 = load ptr, ptr %buf.addr, align 8
  %cmp483.not = icmp eq ptr %355, null
  br i1 %cmp483.not, label %if.end492, label %if.then485

if.then485:                                       ; preds = %do.body482
  %356 = load ptr, ptr %buf.addr, align 8
  %357 = load i32, ptr %written, align 4
  %conv486 = sext i32 %357 to i64
  %358 = call i64 @llvm.objectsize.i64.p0(ptr %356, i1 false, i1 true, i1 false)
  %call487 = call ptr @__memcpy_chk(ptr noundef %356, ptr noundef nonnull @.str.55, i64 noundef %conv486, i64 noundef %358) #11
  %359 = load ptr, ptr %buf.addr, align 8
  %360 = load i32, ptr %written, align 4
  %idxprom488 = sext i32 %360 to i64
  %arrayidx489 = getelementptr inbounds i8, ptr %359, i64 %idxprom488
  store i8 0, ptr %arrayidx489, align 1
  %361 = load i32, ptr %written, align 4
  %362 = load ptr, ptr %buf.addr, align 8
  %idx.ext490 = sext i32 %361 to i64
  %add.ptr491 = getelementptr inbounds i8, ptr %362, i64 %idx.ext490
  store ptr %add.ptr491, ptr %buf.addr, align 8
  br label %if.end492

if.end492:                                        ; preds = %if.then485, %do.body482
  %363 = load i32, ptr %written, align 4
  %364 = load i32, ptr %written_total, align 4
  %add493 = add nsw i32 %364, %363
  store i32 %add493, ptr %written_total, align 4
  br label %for.inc

do.body495:                                       ; preds = %sw.bb480
  store i32 1, ptr %written, align 4
  %365 = load ptr, ptr %buf.addr, align 8
  %cmp496.not = icmp eq ptr %365, null
  br i1 %cmp496.not, label %if.end505, label %if.then498

if.then498:                                       ; preds = %do.body495
  %366 = load ptr, ptr %buf.addr, align 8
  %367 = load i32, ptr %written, align 4
  %conv499 = sext i32 %367 to i64
  %368 = call i64 @llvm.objectsize.i64.p0(ptr %366, i1 false, i1 true, i1 false)
  %call500 = call ptr @__memcpy_chk(ptr noundef %366, ptr noundef nonnull @.str.56, i64 noundef %conv499, i64 noundef %368) #11
  %369 = load ptr, ptr %buf.addr, align 8
  %370 = load i32, ptr %written, align 4
  %idxprom501 = sext i32 %370 to i64
  %arrayidx502 = getelementptr inbounds i8, ptr %369, i64 %idxprom501
  store i8 0, ptr %arrayidx502, align 1
  %371 = load i32, ptr %written, align 4
  %372 = load ptr, ptr %buf.addr, align 8
  %idx.ext503 = sext i32 %371 to i64
  %add.ptr504 = getelementptr inbounds i8, ptr %372, i64 %idx.ext503
  store ptr %add.ptr504, ptr %buf.addr, align 8
  br label %if.end505

if.end505:                                        ; preds = %if.then498, %do.body495
  %373 = load i32, ptr %written, align 4
  %374 = load i32, ptr %written_total, align 4
  %add506 = add nsw i32 %374, %373
  store i32 %add506, ptr %written_total, align 4
  br label %for.inc

sw.default:                                       ; preds = %for.body
  %375 = load ptr, ptr %buf.addr, align 8
  %cmp509.not = icmp eq ptr %375, null
  br i1 %cmp509.not, label %if.end514, label %if.then511

if.then511:                                       ; preds = %sw.default
  %376 = load i8, ptr %c, align 1
  %377 = load ptr, ptr %buf.addr, align 8
  store i8 %376, ptr %377, align 1
  %378 = load ptr, ptr %buf.addr, align 8
  %add.ptr513 = getelementptr inbounds i8, ptr %378, i64 1
  store ptr %add.ptr513, ptr %buf.addr, align 8
  br label %if.end514

if.end514:                                        ; preds = %if.then511, %sw.default
  %379 = load i32, ptr %written_total, align 4
  %add515 = add nsw i32 %379, 1
  store i32 %add515, ptr %written_total, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end15, %if.end29, %if.end43, %if.end57, %if.end71, %if.end85, %if.end99, %if.end113, %if.end127, %if.end141, %if.end155, %if.end169, %if.end183, %if.end197, %if.end211, %if.end225, %if.end239, %if.end253, %if.end267, %if.end281, %if.end295, %if.end309, %if.end323, %if.end337, %if.end351, %if.end365, %if.end379, %if.end393, %if.end407, %if.end421, %if.end435, %if.end449, %if.end463, %if.end477, %if.end514, %if.end505, %if.end492
  %380 = load i64, ptr %i, align 8
  %inc = add i64 %380, 1
  br label %for.cond, !llvm.loop !48

do.body516:                                       ; preds = %for.cond
  store i32 1, ptr %written, align 4
  %381 = load ptr, ptr %buf.addr, align 8
  %cmp517.not = icmp eq ptr %381, null
  br i1 %cmp517.not, label %if.end526, label %if.then519

if.then519:                                       ; preds = %do.body516
  %382 = load ptr, ptr %buf.addr, align 8
  %383 = load i32, ptr %written, align 4
  %conv520 = sext i32 %383 to i64
  %384 = call i64 @llvm.objectsize.i64.p0(ptr %382, i1 false, i1 true, i1 false)
  %call521 = call ptr @__memcpy_chk(ptr noundef %382, ptr noundef nonnull @.str.20, i64 noundef %conv520, i64 noundef %384) #11
  %385 = load ptr, ptr %buf.addr, align 8
  %386 = load i32, ptr %written, align 4
  %idxprom522 = sext i32 %386 to i64
  %arrayidx523 = getelementptr inbounds i8, ptr %385, i64 %idxprom522
  store i8 0, ptr %arrayidx523, align 1
  %387 = load i32, ptr %written, align 4
  %388 = load ptr, ptr %buf.addr, align 8
  %idx.ext524 = sext i32 %387 to i64
  %add.ptr525 = getelementptr inbounds i8, ptr %388, i64 %idx.ext524
  store ptr %add.ptr525, ptr %buf.addr, align 8
  br label %if.end526

if.end526:                                        ; preds = %if.then519, %do.body516
  %389 = load i32, ptr %written, align 4
  %390 = load i32, ptr %written_total, align 4
  %add527 = add nsw i32 %390, %389
  store i32 %add527, ptr %written_total, align 4
  %391 = load i32, ptr %written_total, align 4
  ret i32 %391
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #6

declare i32 @__vsprintf_chk(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #6

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: alwaysinline nounwind ssp uwtable
define i32 @pc_inline_source_snapshot_public_repos_parson_parson_0(ptr noundef %value) #8 {
entry:
  %value.addr = alloca ptr, align 8
  store ptr %value, ptr %value.addr, align 8
  %tobool.not = icmp eq ptr %value, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %0 = load ptr, ptr %value.addr, align 8
  %type = getelementptr inbounds %struct.json_value_t, ptr %0, i64 0, i32 1
  %1 = load i32, ptr %type, align 8
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ -1, %entry ]
  ret i32 %cond
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define i32 @pc_inline_source_snapshot_public_repos_parson_parson_1(ptr noundef %value) #8 {
entry:
  %value.addr = alloca ptr, align 8
  store ptr %value, ptr %value.addr, align 8
  %tobool.not = icmp eq ptr %value, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %0 = load ptr, ptr %value.addr, align 8
  %type = getelementptr inbounds %struct.json_value_t, ptr %0, i64 0, i32 1
  %1 = load i32, ptr %type, align 8
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ -1, %entry ]
  ret i32 %cond
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define i32 @pc_inline_source_snapshot_public_repos_parson_parson_2(ptr noundef %value) #8 {
entry:
  %value.addr = alloca ptr, align 8
  store ptr %value, ptr %value.addr, align 8
  %tobool.not = icmp eq ptr %value, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %0 = load ptr, ptr %value.addr, align 8
  %type = getelementptr inbounds %struct.json_value_t, ptr %0, i64 0, i32 1
  %1 = load i32, ptr %type, align 8
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ -1, %entry ]
  ret i32 %cond
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define i32 @pc_inline_source_snapshot_public_repos_parson_parson_3(ptr noundef %value) #8 {
entry:
  %value.addr = alloca ptr, align 8
  store ptr %value, ptr %value.addr, align 8
  %tobool.not = icmp eq ptr %value, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %0 = load ptr, ptr %value.addr, align 8
  %type = getelementptr inbounds %struct.json_value_t, ptr %0, i64 0, i32 1
  %1 = load i32, ptr %type, align 8
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ -1, %entry ]
  ret i32 %cond
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define i64 @pc_inline_source_snapshot_public_repos_parson_parson_4(ptr noundef %object) #8 {
entry:
  %object.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  %tobool.not = icmp eq ptr %object, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %0 = load ptr, ptr %object.addr, align 8
  %count = getelementptr inbounds %struct.json_object_t, ptr %0, i64 0, i32 6
  %1 = load i64, ptr %count, align 8
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i64 [ %1, %cond.true ], [ 0, %entry ]
  ret i64 %cond
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define i64 @pc_inline_source_snapshot_public_repos_parson_parson_5(ptr noundef %object) #8 {
entry:
  %object.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  %tobool.not = icmp eq ptr %object, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %0 = load ptr, ptr %object.addr, align 8
  %count = getelementptr inbounds %struct.json_object_t, ptr %0, i64 0, i32 6
  %1 = load i64, ptr %count, align 8
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i64 [ %1, %cond.true ], [ 0, %entry ]
  ret i64 %cond
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define i64 @pc_inline_source_snapshot_public_repos_parson_parson_6(ptr noundef %array) #8 {
entry:
  %array.addr = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8
  %tobool.not = icmp eq ptr %array, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %0 = load ptr, ptr %array.addr, align 8
  %count = getelementptr inbounds %struct.json_array_t, ptr %0, i64 0, i32 2
  %1 = load i64, ptr %count, align 8
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i64 [ %1, %cond.true ], [ 0, %entry ]
  ret i64 %cond
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define i32 @pc_inline_source_snapshot_public_repos_parson_parson_7(ptr noundef %value) #8 {
entry:
  %value.addr = alloca ptr, align 8
  store ptr %value, ptr %value.addr, align 8
  %tobool.not = icmp eq ptr %value, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %0 = load ptr, ptr %value.addr, align 8
  %type = getelementptr inbounds %struct.json_value_t, ptr %0, i64 0, i32 1
  %1 = load i32, ptr %type, align 8
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ -1, %entry ]
  ret i32 %cond
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define i32 @pc_inline_source_snapshot_public_repos_parson_parson_8(ptr noundef %value) #8 {
entry:
  %value.addr = alloca ptr, align 8
  store ptr %value, ptr %value.addr, align 8
  %tobool.not = icmp eq ptr %value, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %0 = load ptr, ptr %value.addr, align 8
  %type = getelementptr inbounds %struct.json_value_t, ptr %0, i64 0, i32 1
  %1 = load i32, ptr %type, align 8
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ -1, %entry ]
  ret i32 %cond
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define internal i32 @pc_inline_source_snapshot_public_repos_parson_parson_10(ptr noundef %s, ptr noundef %format, ...) #8 {
entry:
  %args = alloca ptr, align 8
  call void @llvm.va_start(ptr nonnull %args)
  %0 = call i64 @llvm.objectsize.i64.p0(ptr %s, i1 false, i1 true, i1 false)
  %1 = load ptr, ptr %args, align 8
  %call = call i32 @__vsprintf_chk(ptr noundef %s, i32 noundef 0, i64 noundef %0, ptr noundef %format, ptr noundef %1) #11
  call void @llvm.va_end(ptr %args)
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare ptr @memchr(ptr, i32, i64) #10

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { argmemonly nocallback nofree nounwind willreturn }
attributes #8 = { alwaysinline nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #9 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly willreturn }

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
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7}
!34 = distinct !{!34, !7}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !7}
!37 = distinct !{!37, !7}
!38 = distinct !{!38, !7}
!39 = distinct !{!39, !7}
!40 = distinct !{!40, !7}
!41 = distinct !{!41, !7}
!42 = distinct !{!42, !7}
!43 = distinct !{!43, !7}
!44 = distinct !{!44, !7}
!45 = distinct !{!45, !7}
!46 = distinct !{!46, !7}
!47 = distinct !{!47, !7}
!48 = distinct !{!48, !7}
