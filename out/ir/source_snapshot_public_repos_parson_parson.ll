; ModuleID = './source_snapshot/public_repos/parson/parson.c'
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

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @json_parse_file(ptr noundef %filename) #0 {
entry:
  %retval = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %file_contents = alloca ptr, align 8
  %output_value = alloca ptr, align 8
  store ptr %filename, ptr %filename.addr, align 8
  %0 = load ptr, ptr %filename.addr, align 8
  %call = call ptr @read_file(ptr noundef %0)
  store ptr %call, ptr %file_contents, align 8
  store ptr null, ptr %output_value, align 8
  %1 = load ptr, ptr %file_contents, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %file_contents, align 8
  %call1 = call ptr @json_parse_string(ptr noundef %2)
  store ptr %call1, ptr %output_value, align 8
  %3 = load ptr, ptr @parson_free, align 8
  %4 = load ptr, ptr %file_contents, align 8
  call void %3(ptr noundef %4)
  %5 = load ptr, ptr %output_value, align 8
  store ptr %5, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load ptr, ptr %retval, align 8
  ret ptr %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @read_file(ptr noundef %filename) #0 {
entry:
  %retval = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %fp = alloca ptr, align 8
  %size_to_read = alloca i64, align 8
  %size_read = alloca i64, align 8
  %pos = alloca i64, align 8
  %file_contents = alloca ptr, align 8
  store ptr %filename, ptr %filename.addr, align 8
  %0 = load ptr, ptr %filename.addr, align 8
  %call = call ptr @"\01_fopen"(ptr noundef %0, ptr noundef @.str.5)
  store ptr %call, ptr %fp, align 8
  store i64 0, ptr %size_to_read, align 8
  store i64 0, ptr %size_read, align 8
  %1 = load ptr, ptr %fp, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %fp, align 8
  %call1 = call i32 @fseek(ptr noundef %2, i64 noundef 0, i32 noundef 2)
  %3 = load ptr, ptr %fp, align 8
  %call2 = call i64 @ftell(ptr noundef %3)
  store i64 %call2, ptr %pos, align 8
  %4 = load i64, ptr %pos, align 8
  %cmp = icmp slt i64 %4, 0
  br i1 %cmp, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %fp, align 8
  %call4 = call i32 @fclose(ptr noundef %5)
  store ptr null, ptr %retval, align 8
  br label %return

if.end5:                                          ; preds = %if.end
  %6 = load i64, ptr %pos, align 8
  store i64 %6, ptr %size_to_read, align 8
  %7 = load ptr, ptr %fp, align 8
  call void @rewind(ptr noundef %7)
  %8 = load ptr, ptr @parson_malloc, align 8
  %9 = load i64, ptr %size_to_read, align 8
  %add = add i64 %9, 1
  %mul = mul i64 1, %add
  %call6 = call ptr %8(i64 noundef %mul)
  store ptr %call6, ptr %file_contents, align 8
  %10 = load ptr, ptr %file_contents, align 8
  %tobool7 = icmp ne ptr %10, null
  br i1 %tobool7, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end5
  %11 = load ptr, ptr %fp, align 8
  %call9 = call i32 @fclose(ptr noundef %11)
  store ptr null, ptr %retval, align 8
  br label %return

if.end10:                                         ; preds = %if.end5
  %12 = load ptr, ptr %file_contents, align 8
  %13 = load i64, ptr %size_to_read, align 8
  %14 = load ptr, ptr %fp, align 8
  %call11 = call i64 @fread(ptr noundef %12, i64 noundef 1, i64 noundef %13, ptr noundef %14)
  store i64 %call11, ptr %size_read, align 8
  %15 = load i64, ptr %size_read, align 8
  %cmp12 = icmp eq i64 %15, 0
  br i1 %cmp12, label %if.then15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end10
  %16 = load ptr, ptr %fp, align 8
  %call13 = call i32 @ferror(ptr noundef %16)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %lor.lhs.false, %if.end10
  %17 = load ptr, ptr %fp, align 8
  %call16 = call i32 @fclose(ptr noundef %17)
  %18 = load ptr, ptr @parson_free, align 8
  %19 = load ptr, ptr %file_contents, align 8
  call void %18(ptr noundef %19)
  store ptr null, ptr %retval, align 8
  br label %return

if.end17:                                         ; preds = %lor.lhs.false
  %20 = load ptr, ptr %fp, align 8
  %call18 = call i32 @fclose(ptr noundef %20)
  %21 = load ptr, ptr %file_contents, align 8
  %22 = load i64, ptr %size_read, align 8
  %arrayidx = getelementptr inbounds i8, ptr %21, i64 %22
  store i8 0, ptr %arrayidx, align 1
  %23 = load ptr, ptr %file_contents, align 8
  store ptr %23, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end17, %if.then15, %if.then8, %if.then3, %if.then
  %24 = load ptr, ptr %retval, align 8
  ret ptr %24
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @json_parse_string(ptr noundef %string) #0 {
entry:
  %retval = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  store ptr %string, ptr %string.addr, align 8
  %0 = load ptr, ptr %string.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %string.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0
  %2 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, -17
  br i1 %cmp1, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %if.end
  %3 = load ptr, ptr %string.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %3, i64 1
  %4 = load i8, ptr %arrayidx3, align 1
  %conv4 = sext i8 %4 to i32
  %cmp5 = icmp eq i32 %conv4, -69
  br i1 %cmp5, label %land.lhs.true7, label %if.end13

land.lhs.true7:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %string.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %5, i64 2
  %6 = load i8, ptr %arrayidx8, align 1
  %conv9 = sext i8 %6 to i32
  %cmp10 = icmp eq i32 %conv9, -65
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %land.lhs.true7
  %7 = load ptr, ptr %string.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 3
  store ptr %add.ptr, ptr %string.addr, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %land.lhs.true7, %land.lhs.true, %if.end
  %call = call ptr @parse_value(ptr noundef %string.addr, i64 noundef 0)
  store ptr %call, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end13, %if.then
  %8 = load ptr, ptr %retval, align 8
  ret ptr %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @json_parse_file_with_comments(ptr noundef %filename) #0 {
entry:
  %retval = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %file_contents = alloca ptr, align 8
  %output_value = alloca ptr, align 8
  store ptr %filename, ptr %filename.addr, align 8
  %0 = load ptr, ptr %filename.addr, align 8
  %call = call ptr @read_file(ptr noundef %0)
  store ptr %call, ptr %file_contents, align 8
  store ptr null, ptr %output_value, align 8
  %1 = load ptr, ptr %file_contents, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %file_contents, align 8
  %call1 = call ptr @json_parse_string_with_comments(ptr noundef %2)
  store ptr %call1, ptr %output_value, align 8
  %3 = load ptr, ptr @parson_free, align 8
  %4 = load ptr, ptr %file_contents, align 8
  call void %3(ptr noundef %4)
  %5 = load ptr, ptr %output_value, align 8
  store ptr %5, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load ptr, ptr %retval, align 8
  ret ptr %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @json_parse_string_with_comments(ptr noundef %string) #0 {
entry:
  %retval = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  %result = alloca ptr, align 8
  %string_mutable_copy = alloca ptr, align 8
  %string_mutable_copy_ptr = alloca ptr, align 8
  store ptr %string, ptr %string.addr, align 8
  store ptr null, ptr %result, align 8
  store ptr null, ptr %string_mutable_copy, align 8
  store ptr null, ptr %string_mutable_copy_ptr, align 8
  %0 = load ptr, ptr %string.addr, align 8
  %call = call ptr @parson_strdup(ptr noundef %0)
  store ptr %call, ptr %string_mutable_copy, align 8
  %1 = load ptr, ptr %string_mutable_copy, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %string_mutable_copy, align 8
  call void @remove_comments(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.1)
  %3 = load ptr, ptr %string_mutable_copy, align 8
  call void @remove_comments(ptr noundef %3, ptr noundef @.str.2, ptr noundef @.str.3)
  %4 = load ptr, ptr %string_mutable_copy, align 8
  store ptr %4, ptr %string_mutable_copy_ptr, align 8
  %call1 = call ptr @parse_value(ptr noundef %string_mutable_copy_ptr, i64 noundef 0)
  store ptr %call1, ptr %result, align 8
  %5 = load ptr, ptr @parson_free, align 8
  %6 = load ptr, ptr %string_mutable_copy, align 8
  call void %5(ptr noundef %6)
  %7 = load ptr, ptr %result, align 8
  store ptr %7, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load ptr, ptr %retval, align 8
  ret ptr %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @parse_value(ptr noundef %string, i64 noundef %nesting) #0 {
entry:
  %retval = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  %nesting.addr = alloca i64, align 8
  store ptr %string, ptr %string.addr, align 8
  store i64 %nesting, ptr %nesting.addr, align 8
  %0 = load i64, ptr %nesting.addr, align 8
  %cmp = icmp ugt i64 %0, 2048
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %1 = load ptr, ptr %string.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %3 = load i8, ptr %2, align 1
  %conv = zext i8 %3 to i32
  %call = call i32 @isspace(i32 noundef %conv) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %string.addr, align 8
  %5 = load ptr, ptr %4, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %4, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %6 = load ptr, ptr %string.addr, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load i8, ptr %7, align 1
  %conv1 = sext i8 %8 to i32
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
  %9 = load ptr, ptr %string.addr, align 8
  %10 = load i64, ptr %nesting.addr, align 8
  %add = add i64 %10, 1
  %call2 = call ptr @parse_object_value(ptr noundef %9, i64 noundef %add)
  store ptr %call2, ptr %retval, align 8
  br label %return

sw.bb3:                                           ; preds = %while.end
  %11 = load ptr, ptr %string.addr, align 8
  %12 = load i64, ptr %nesting.addr, align 8
  %add4 = add i64 %12, 1
  %call5 = call ptr @parse_array_value(ptr noundef %11, i64 noundef %add4)
  store ptr %call5, ptr %retval, align 8
  br label %return

sw.bb6:                                           ; preds = %while.end
  %13 = load ptr, ptr %string.addr, align 8
  %call7 = call ptr @parse_string_value(ptr noundef %13)
  store ptr %call7, ptr %retval, align 8
  br label %return

sw.bb8:                                           ; preds = %while.end, %while.end
  %14 = load ptr, ptr %string.addr, align 8
  %call9 = call ptr @parse_boolean_value(ptr noundef %14)
  store ptr %call9, ptr %retval, align 8
  br label %return

sw.bb10:                                          ; preds = %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end
  %15 = load ptr, ptr %string.addr, align 8
  %call11 = call ptr @parse_number_value(ptr noundef %15)
  store ptr %call11, ptr %retval, align 8
  br label %return

sw.bb12:                                          ; preds = %while.end
  %16 = load ptr, ptr %string.addr, align 8
  %call13 = call ptr @parse_null_value(ptr noundef %16)
  store ptr %call13, ptr %retval, align 8
  br label %return

sw.default:                                       ; preds = %while.end
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %sw.default, %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb3, %sw.bb, %if.then
  %17 = load ptr, ptr %retval, align 8
  ret ptr %17
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @parson_strdup(ptr noundef %string) #0 {
entry:
  %string.addr = alloca ptr, align 8
  store ptr %string, ptr %string.addr, align 8
  %0 = load ptr, ptr %string.addr, align 8
  %1 = load ptr, ptr %string.addr, align 8
  %call = call i64 @strlen(ptr noundef %1)
  %call1 = call ptr @parson_strndup(ptr noundef %0, i64 noundef %call)
  ret ptr %call1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %0 = load ptr, ptr %start_token.addr, align 8
  %call = call i64 @strlen(ptr noundef %0)
  store i64 %call, ptr %start_token_len, align 8
  %1 = load ptr, ptr %end_token.addr, align 8
  %call1 = call i64 @strlen(ptr noundef %1)
  store i64 %call1, ptr %end_token_len, align 8
  %2 = load i64, ptr %start_token_len, align 8
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i64, ptr %end_token_len, align 8
  %cmp2 = icmp eq i64 %3, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %while.end

if.end:                                           ; preds = %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %if.end41, %if.then8, %if.end
  %4 = load ptr, ptr %string.addr, align 8
  %5 = load i8, ptr %4, align 1
  store i8 %5, ptr %current_char, align 1
  %conv = sext i8 %5 to i32
  %cmp3 = icmp ne i32 %conv, 0
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8, ptr %current_char, align 1
  %conv5 = sext i8 %6 to i32
  %cmp6 = icmp eq i32 %conv5, 92
  br i1 %cmp6, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %7 = load i32, ptr %escaped, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.else, label %if.then8

if.then8:                                         ; preds = %land.lhs.true
  store i32 1, ptr %escaped, align 4
  %8 = load ptr, ptr %string.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %8, i32 1
  store ptr %incdec.ptr, ptr %string.addr, align 8
  br label %while.cond, !llvm.loop !8

if.else:                                          ; preds = %land.lhs.true, %while.body
  %9 = load i8, ptr %current_char, align 1
  %conv9 = sext i8 %9 to i32
  %cmp10 = icmp eq i32 %conv9, 34
  br i1 %cmp10, label %land.lhs.true12, label %if.else16

land.lhs.true12:                                  ; preds = %if.else
  %10 = load i32, ptr %escaped, align 4
  %tobool13 = icmp ne i32 %10, 0
  br i1 %tobool13, label %if.else16, label %if.then14

if.then14:                                        ; preds = %land.lhs.true12
  %11 = load i32, ptr %in_string, align 4
  %tobool15 = icmp ne i32 %11, 0
  %lnot = xor i1 %tobool15, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, ptr %in_string, align 4
  br label %if.end40

if.else16:                                        ; preds = %land.lhs.true12, %if.else
  %12 = load i32, ptr %in_string, align 4
  %tobool17 = icmp ne i32 %12, 0
  br i1 %tobool17, label %if.end39, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %if.else16
  %13 = load ptr, ptr %string.addr, align 8
  %14 = load ptr, ptr %start_token.addr, align 8
  %15 = load i64, ptr %start_token_len, align 8
  %call19 = call i32 @strncmp(ptr noundef %13, ptr noundef %14, i64 noundef %15)
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.then22, label %if.end39

if.then22:                                        ; preds = %land.lhs.true18
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then22
  %16 = load i64, ptr %i, align 8
  %17 = load i64, ptr %start_token_len, align 8
  %cmp23 = icmp ult i64 %16, %17
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %string.addr, align 8
  %19 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds i8, ptr %18, i64 %19
  store i8 32, ptr %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i64, ptr %i, align 8
  %inc = add i64 %20, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %21 = load ptr, ptr %string.addr, align 8
  %22 = load i64, ptr %start_token_len, align 8
  %add.ptr = getelementptr inbounds i8, ptr %21, i64 %22
  store ptr %add.ptr, ptr %string.addr, align 8
  %23 = load ptr, ptr %string.addr, align 8
  %24 = load ptr, ptr %end_token.addr, align 8
  %call25 = call ptr @strstr(ptr noundef %23, ptr noundef %24)
  store ptr %call25, ptr %ptr, align 8
  %25 = load ptr, ptr %ptr, align 8
  %tobool26 = icmp ne ptr %25, null
  br i1 %tobool26, label %if.end28, label %if.then27

if.then27:                                        ; preds = %for.end
  br label %while.end

if.end28:                                         ; preds = %for.end
  store i64 0, ptr %i, align 8
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc34, %if.end28
  %26 = load i64, ptr %i, align 8
  %27 = load ptr, ptr %ptr, align 8
  %28 = load ptr, ptr %string.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %27 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %28 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %29 = load i64, ptr %end_token_len, align 8
  %add = add i64 %sub.ptr.sub, %29
  %cmp30 = icmp ult i64 %26, %add
  br i1 %cmp30, label %for.body32, label %for.end36

for.body32:                                       ; preds = %for.cond29
  %30 = load ptr, ptr %string.addr, align 8
  %31 = load i64, ptr %i, align 8
  %arrayidx33 = getelementptr inbounds i8, ptr %30, i64 %31
  store i8 32, ptr %arrayidx33, align 1
  br label %for.inc34

for.inc34:                                        ; preds = %for.body32
  %32 = load i64, ptr %i, align 8
  %inc35 = add i64 %32, 1
  store i64 %inc35, ptr %i, align 8
  br label %for.cond29, !llvm.loop !10

for.end36:                                        ; preds = %for.cond29
  %33 = load ptr, ptr %ptr, align 8
  %34 = load i64, ptr %end_token_len, align 8
  %add.ptr37 = getelementptr inbounds i8, ptr %33, i64 %34
  %add.ptr38 = getelementptr inbounds i8, ptr %add.ptr37, i64 -1
  store ptr %add.ptr38, ptr %string.addr, align 8
  br label %if.end39

if.end39:                                         ; preds = %for.end36, %land.lhs.true18, %if.else16
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then14
  br label %if.end41

if.end41:                                         ; preds = %if.end40
  store i32 0, ptr %escaped, align 4
  %35 = load ptr, ptr %string.addr, align 8
  %incdec.ptr42 = getelementptr inbounds i8, ptr %35, i32 1
  store ptr %incdec.ptr42, ptr %string.addr, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %if.then, %if.then27, %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @json_object_get_value(ptr noundef %object, ptr noundef %name) #0 {
entry:
  %retval = alloca ptr, align 8
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %name.addr, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %object.addr, align 8
  %3 = load ptr, ptr %name.addr, align 8
  %4 = load ptr, ptr %name.addr, align 8
  %call = call i64 @strlen(ptr noundef %4)
  %call2 = call ptr @json_object_getn_value(ptr noundef %2, ptr noundef %3, i64 noundef %call)
  store ptr %call2, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @json_object_getn_value(ptr noundef %object, ptr noundef %name, i64 noundef %name_len) #0 {
entry:
  %retval = alloca ptr, align 8
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %name_len.addr = alloca i64, align 8
  %hash = alloca i64, align 8
  %found = alloca i32, align 4
  %cell_ix = alloca i64, align 8
  %item_ix = alloca i64, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store i64 %name_len, ptr %name_len.addr, align 8
  store i64 0, ptr %hash, align 8
  store i32 0, ptr %found, align 4
  store i64 0, ptr %cell_ix, align 8
  store i64 0, ptr %item_ix, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %name.addr, align 8
  %tobool1 = icmp ne ptr %1, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %name.addr, align 8
  %3 = load i64, ptr %name_len.addr, align 8
  %call = call i64 @hash_string(ptr noundef %2, i64 noundef %3)
  store i64 %call, ptr %hash, align 8
  store i32 0, ptr %found, align 4
  %4 = load ptr, ptr %object.addr, align 8
  %5 = load ptr, ptr %name.addr, align 8
  %6 = load i64, ptr %name_len.addr, align 8
  %7 = load i64, ptr %hash, align 8
  %call2 = call i64 @json_object_get_cell_ix(ptr noundef %4, ptr noundef %5, i64 noundef %6, i64 noundef %7, ptr noundef %found)
  store i64 %call2, ptr %cell_ix, align 8
  %8 = load i32, ptr %found, align 4
  %tobool3 = icmp ne i32 %8, 0
  br i1 %tobool3, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end5:                                          ; preds = %if.end
  %9 = load ptr, ptr %object.addr, align 8
  %cells = getelementptr inbounds %struct.json_object_t, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %cells, align 8
  %11 = load i64, ptr %cell_ix, align 8
  %arrayidx = getelementptr inbounds i64, ptr %10, i64 %11
  %12 = load i64, ptr %arrayidx, align 8
  store i64 %12, ptr %item_ix, align 8
  %13 = load ptr, ptr %object.addr, align 8
  %values = getelementptr inbounds %struct.json_object_t, ptr %13, i32 0, i32 4
  %14 = load ptr, ptr %values, align 8
  %15 = load i64, ptr %item_ix, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %14, i64 %15
  %16 = load ptr, ptr %arrayidx6, align 8
  store ptr %16, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %17 = load ptr, ptr %retval, align 8
  ret ptr %17
}

declare i64 @strlen(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @json_object_get_string(ptr noundef %object, ptr noundef %name) #0 {
entry:
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %call = call ptr @json_object_get_value(ptr noundef %0, ptr noundef %1)
  %call1 = call ptr @json_value_get_string(ptr noundef %call)
  ret ptr %call1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @json_value_get_string(ptr noundef %value) #0 {
entry:
  %value.addr = alloca ptr, align 8
  %str = alloca ptr, align 8
  store ptr %value, ptr %value.addr, align 8
  %0 = load ptr, ptr %value.addr, align 8
  %call = call ptr @json_value_get_string_desc(ptr noundef %0)
  store ptr %call, ptr %str, align 8
  %1 = load ptr, ptr %str, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %str, align 8
  %chars = getelementptr inbounds %struct.json_string, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %chars, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %3, %cond.true ], [ null, %cond.false ]
  ret ptr %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @json_object_get_string_len(ptr noundef %object, ptr noundef %name) #0 {
entry:
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %call = call ptr @json_object_get_value(ptr noundef %0, ptr noundef %1)
  %call1 = call i64 @json_value_get_string_len(ptr noundef %call)
  ret i64 %call1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @json_value_get_string_len(ptr noundef %value) #0 {
entry:
  %value.addr = alloca ptr, align 8
  %str = alloca ptr, align 8
  store ptr %value, ptr %value.addr, align 8
  %0 = load ptr, ptr %value.addr, align 8
  %call = call ptr @json_value_get_string_desc(ptr noundef %0)
  store ptr %call, ptr %str, align 8
  %1 = load ptr, ptr %str, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %str, align 8
  %length = getelementptr inbounds %struct.json_string, ptr %2, i32 0, i32 1
  %3 = load i64, ptr %length, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %3, %cond.true ], [ 0, %cond.false ]
  ret i64 %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define double @json_object_get_number(ptr noundef %object, ptr noundef %name) #0 {
entry:
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %call = call ptr @json_object_get_value(ptr noundef %0, ptr noundef %1)
  %call1 = call double @json_value_get_number(ptr noundef %call)
  ret double %call1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define double @json_value_get_number(ptr noundef %value) #0 {
entry:
  %value.addr = alloca ptr, align 8
  store ptr %value, ptr %value.addr, align 8
  %0 = load ptr, ptr %value.addr, align 8
  %call = call i32 @json_value_get_type(ptr noundef %0)
  %cmp = icmp eq i32 %call, 3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %value.addr, align 8
  %value1 = getelementptr inbounds %struct.json_value_t, ptr %1, i32 0, i32 2
  %2 = load double, ptr %value1, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %2, %cond.true ], [ 0.000000e+00, %cond.false ]
  ret double %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @json_object_get_object(ptr noundef %object, ptr noundef %name) #0 {
entry:
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %call = call ptr @json_object_get_value(ptr noundef %0, ptr noundef %1)
  %call1 = call ptr @json_value_get_object(ptr noundef %call)
  ret ptr %call1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @json_value_get_object(ptr noundef %value) #0 {
entry:
  %value.addr = alloca ptr, align 8
  store ptr %value, ptr %value.addr, align 8
  %0 = load ptr, ptr %value.addr, align 8
  %call = call i32 @json_value_get_type(ptr noundef %0)
  %cmp = icmp eq i32 %call, 4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %value.addr, align 8
  %value1 = getelementptr inbounds %struct.json_value_t, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %value1, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %2, %cond.true ], [ null, %cond.false ]
  ret ptr %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @json_object_get_array(ptr noundef %object, ptr noundef %name) #0 {
entry:
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %call = call ptr @json_object_get_value(ptr noundef %0, ptr noundef %1)
  %call1 = call ptr @json_value_get_array(ptr noundef %call)
  ret ptr %call1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @json_value_get_array(ptr noundef %value) #0 {
entry:
  %value.addr = alloca ptr, align 8
  store ptr %value, ptr %value.addr, align 8
  %0 = load ptr, ptr %value.addr, align 8
  %call = call i32 @json_value_get_type(ptr noundef %0)
  %cmp = icmp eq i32 %call, 5
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %value.addr, align 8
  %value1 = getelementptr inbounds %struct.json_value_t, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %value1, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %2, %cond.true ], [ null, %cond.false ]
  ret ptr %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @json_object_get_boolean(ptr noundef %object, ptr noundef %name) #0 {
entry:
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %call = call ptr @json_object_get_value(ptr noundef %0, ptr noundef %1)
  %call1 = call i32 @json_value_get_boolean(ptr noundef %call)
  ret i32 %call1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @json_value_get_boolean(ptr noundef %value) #0 {
entry:
  %value.addr = alloca ptr, align 8
  store ptr %value, ptr %value.addr, align 8
  %0 = load ptr, ptr %value.addr, align 8
  %call = call i32 @json_value_get_type(ptr noundef %0)
  %cmp = icmp eq i32 %call, 6
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %value.addr, align 8
  %value1 = getelementptr inbounds %struct.json_value_t, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %value1, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ -1, %cond.false ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @json_object_dotget_value(ptr noundef %object, ptr noundef %name) #0 {
entry:
  %retval = alloca ptr, align 8
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %dot_position = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  %0 = load ptr, ptr %name.addr, align 8
  %call = call ptr @strchr(ptr noundef %0, i32 noundef 46)
  store ptr %call, ptr %dot_position, align 8
  %1 = load ptr, ptr %dot_position, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %object.addr, align 8
  %3 = load ptr, ptr %name.addr, align 8
  %call1 = call ptr @json_object_get_value(ptr noundef %2, ptr noundef %3)
  store ptr %call1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %object.addr, align 8
  %5 = load ptr, ptr %name.addr, align 8
  %6 = load ptr, ptr %dot_position, align 8
  %7 = load ptr, ptr %name.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %6 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call2 = call ptr @json_object_getn_value(ptr noundef %4, ptr noundef %5, i64 noundef %sub.ptr.sub)
  %call3 = call ptr @json_value_get_object(ptr noundef %call2)
  store ptr %call3, ptr %object.addr, align 8
  %8 = load ptr, ptr %object.addr, align 8
  %9 = load ptr, ptr %dot_position, align 8
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 1
  %call4 = call ptr @json_object_dotget_value(ptr noundef %8, ptr noundef %add.ptr)
  store ptr %call4, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load ptr, ptr %retval, align 8
  ret ptr %10
}

declare ptr @strchr(ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @json_object_dotget_string(ptr noundef %object, ptr noundef %name) #0 {
entry:
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %call = call ptr @json_object_dotget_value(ptr noundef %0, ptr noundef %1)
  %call1 = call ptr @json_value_get_string(ptr noundef %call)
  ret ptr %call1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @json_object_dotget_string_len(ptr noundef %object, ptr noundef %name) #0 {
entry:
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %call = call ptr @json_object_dotget_value(ptr noundef %0, ptr noundef %1)
  %call1 = call i64 @json_value_get_string_len(ptr noundef %call)
  ret i64 %call1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define double @json_object_dotget_number(ptr noundef %object, ptr noundef %name) #0 {
entry:
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %call = call ptr @json_object_dotget_value(ptr noundef %0, ptr noundef %1)
  %call1 = call double @json_value_get_number(ptr noundef %call)
  ret double %call1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @json_object_dotget_object(ptr noundef %object, ptr noundef %name) #0 {
entry:
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %call = call ptr @json_object_dotget_value(ptr noundef %0, ptr noundef %1)
  %call1 = call ptr @json_value_get_object(ptr noundef %call)
  ret ptr %call1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @json_object_dotget_array(ptr noundef %object, ptr noundef %name) #0 {
entry:
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %call = call ptr @json_object_dotget_value(ptr noundef %0, ptr noundef %1)
  %call1 = call ptr @json_value_get_array(ptr noundef %call)
  ret ptr %call1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @json_object_dotget_boolean(ptr noundef %object, ptr noundef %name) #0 {
entry:
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %call = call ptr @json_object_dotget_value(ptr noundef %0, ptr noundef %1)
  %call1 = call i32 @json_value_get_boolean(ptr noundef %call)
  ret i32 %call1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @json_object_get_count(ptr noundef %object) #0 {
entry:
  %object.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %object.addr, align 8
  %count = getelementptr inbounds %struct.json_object_t, ptr %1, i32 0, i32 6
  %2 = load i64, ptr %count, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %2, %cond.true ], [ 0, %cond.false ]
  ret i64 %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @json_object_get_name(ptr noundef %object, i64 noundef %index) #0 {
entry:
  %retval = alloca ptr, align 8
  %object.addr = alloca ptr, align 8
  %index.addr = alloca i64, align 8
  store ptr %object, ptr %object.addr, align 8
  store i64 %index, ptr %index.addr, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, ptr %index.addr, align 8
  %2 = load ptr, ptr %object.addr, align 8
  %call = call i64 @json_object_get_count(ptr noundef %2)
  %cmp1 = icmp uge i64 %1, %call
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %object.addr, align 8
  %names = getelementptr inbounds %struct.json_object_t, ptr %3, i32 0, i32 3
  %4 = load ptr, ptr %names, align 8
  %5 = load i64, ptr %index.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %5
  %6 = load ptr, ptr %arrayidx, align 8
  store ptr %6, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load ptr, ptr %retval, align 8
  ret ptr %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @json_object_get_value_at(ptr noundef %object, i64 noundef %index) #0 {
entry:
  %retval = alloca ptr, align 8
  %object.addr = alloca ptr, align 8
  %index.addr = alloca i64, align 8
  store ptr %object, ptr %object.addr, align 8
  store i64 %index, ptr %index.addr, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, ptr %index.addr, align 8
  %2 = load ptr, ptr %object.addr, align 8
  %call = call i64 @json_object_get_count(ptr noundef %2)
  %cmp1 = icmp uge i64 %1, %call
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %object.addr, align 8
  %values = getelementptr inbounds %struct.json_object_t, ptr %3, i32 0, i32 4
  %4 = load ptr, ptr %values, align 8
  %5 = load i64, ptr %index.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %5
  %6 = load ptr, ptr %arrayidx, align 8
  store ptr %6, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load ptr, ptr %retval, align 8
  ret ptr %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @json_object_get_wrapping_value(ptr noundef %object) #0 {
entry:
  %retval = alloca ptr, align 8
  %object.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %object.addr, align 8
  %wrapping_value = getelementptr inbounds %struct.json_object_t, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %wrapping_value, align 8
  store ptr %2, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load ptr, ptr %retval, align 8
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @json_object_has_value(ptr noundef %object, ptr noundef %name) #0 {
entry:
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %call = call ptr @json_object_get_value(ptr noundef %0, ptr noundef %1)
  %cmp = icmp ne ptr %call, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @json_object_has_value_of_type(ptr noundef %object, ptr noundef %name, i32 noundef %type) #0 {
entry:
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %val = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store i32 %type, ptr %type.addr, align 4
  %0 = load ptr, ptr %object.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %call = call ptr @json_object_get_value(ptr noundef %0, ptr noundef %1)
  store ptr %call, ptr %val, align 8
  %2 = load ptr, ptr %val, align 8
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load ptr, ptr %val, align 8
  %call1 = call i32 @json_value_get_type(ptr noundef %3)
  %4 = load i32, ptr %type.addr, align 4
  %cmp2 = icmp eq i32 %call1, %4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ]
  %land.ext = zext i1 %5 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @json_value_get_type(ptr noundef %value) #0 {
entry:
  %value.addr = alloca ptr, align 8
  store ptr %value, ptr %value.addr, align 8
  %0 = load ptr, ptr %value.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %value.addr, align 8
  %type = getelementptr inbounds %struct.json_value_t, ptr %1, i32 0, i32 1
  %2 = load i32, ptr %type, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ -1, %cond.false ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @json_object_dothas_value(ptr noundef %object, ptr noundef %name) #0 {
entry:
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %call = call ptr @json_object_dotget_value(ptr noundef %0, ptr noundef %1)
  %cmp = icmp ne ptr %call, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @json_object_dothas_value_of_type(ptr noundef %object, ptr noundef %name, i32 noundef %type) #0 {
entry:
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %val = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store i32 %type, ptr %type.addr, align 4
  %0 = load ptr, ptr %object.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %call = call ptr @json_object_dotget_value(ptr noundef %0, ptr noundef %1)
  store ptr %call, ptr %val, align 8
  %2 = load ptr, ptr %val, align 8
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load ptr, ptr %val, align 8
  %call1 = call i32 @json_value_get_type(ptr noundef %3)
  %4 = load i32, ptr %type.addr, align 4
  %cmp2 = icmp eq i32 %call1, %4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ]
  %land.ext = zext i1 %5 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @json_array_get_value(ptr noundef %array, i64 noundef %index) #0 {
entry:
  %retval = alloca ptr, align 8
  %array.addr = alloca ptr, align 8
  %index.addr = alloca i64, align 8
  store ptr %array, ptr %array.addr, align 8
  store i64 %index, ptr %index.addr, align 8
  %0 = load ptr, ptr %array.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, ptr %index.addr, align 8
  %2 = load ptr, ptr %array.addr, align 8
  %call = call i64 @json_array_get_count(ptr noundef %2)
  %cmp1 = icmp uge i64 %1, %call
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %array.addr, align 8
  %items = getelementptr inbounds %struct.json_array_t, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %items, align 8
  %5 = load i64, ptr %index.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %5
  %6 = load ptr, ptr %arrayidx, align 8
  store ptr %6, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load ptr, ptr %retval, align 8
  ret ptr %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @json_array_get_count(ptr noundef %array) #0 {
entry:
  %array.addr = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8
  %0 = load ptr, ptr %array.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %array.addr, align 8
  %count = getelementptr inbounds %struct.json_array_t, ptr %1, i32 0, i32 2
  %2 = load i64, ptr %count, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %2, %cond.true ], [ 0, %cond.false ]
  ret i64 %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @json_array_get_string(ptr noundef %array, i64 noundef %index) #0 {
entry:
  %array.addr = alloca ptr, align 8
  %index.addr = alloca i64, align 8
  store ptr %array, ptr %array.addr, align 8
  store i64 %index, ptr %index.addr, align 8
  %0 = load ptr, ptr %array.addr, align 8
  %1 = load i64, ptr %index.addr, align 8
  %call = call ptr @json_array_get_value(ptr noundef %0, i64 noundef %1)
  %call1 = call ptr @json_value_get_string(ptr noundef %call)
  ret ptr %call1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @json_array_get_string_len(ptr noundef %array, i64 noundef %index) #0 {
entry:
  %array.addr = alloca ptr, align 8
  %index.addr = alloca i64, align 8
  store ptr %array, ptr %array.addr, align 8
  store i64 %index, ptr %index.addr, align 8
  %0 = load ptr, ptr %array.addr, align 8
  %1 = load i64, ptr %index.addr, align 8
  %call = call ptr @json_array_get_value(ptr noundef %0, i64 noundef %1)
  %call1 = call i64 @json_value_get_string_len(ptr noundef %call)
  ret i64 %call1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define double @json_array_get_number(ptr noundef %array, i64 noundef %index) #0 {
entry:
  %array.addr = alloca ptr, align 8
  %index.addr = alloca i64, align 8
  store ptr %array, ptr %array.addr, align 8
  store i64 %index, ptr %index.addr, align 8
  %0 = load ptr, ptr %array.addr, align 8
  %1 = load i64, ptr %index.addr, align 8
  %call = call ptr @json_array_get_value(ptr noundef %0, i64 noundef %1)
  %call1 = call double @json_value_get_number(ptr noundef %call)
  ret double %call1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @json_array_get_object(ptr noundef %array, i64 noundef %index) #0 {
entry:
  %array.addr = alloca ptr, align 8
  %index.addr = alloca i64, align 8
  store ptr %array, ptr %array.addr, align 8
  store i64 %index, ptr %index.addr, align 8
  %0 = load ptr, ptr %array.addr, align 8
  %1 = load i64, ptr %index.addr, align 8
  %call = call ptr @json_array_get_value(ptr noundef %0, i64 noundef %1)
  %call1 = call ptr @json_value_get_object(ptr noundef %call)
  ret ptr %call1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @json_array_get_array(ptr noundef %array, i64 noundef %index) #0 {
entry:
  %array.addr = alloca ptr, align 8
  %index.addr = alloca i64, align 8
  store ptr %array, ptr %array.addr, align 8
  store i64 %index, ptr %index.addr, align 8
  %0 = load ptr, ptr %array.addr, align 8
  %1 = load i64, ptr %index.addr, align 8
  %call = call ptr @json_array_get_value(ptr noundef %0, i64 noundef %1)
  %call1 = call ptr @json_value_get_array(ptr noundef %call)
  ret ptr %call1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @json_array_get_boolean(ptr noundef %array, i64 noundef %index) #0 {
entry:
  %array.addr = alloca ptr, align 8
  %index.addr = alloca i64, align 8
  store ptr %array, ptr %array.addr, align 8
  store i64 %index, ptr %index.addr, align 8
  %0 = load ptr, ptr %array.addr, align 8
  %1 = load i64, ptr %index.addr, align 8
  %call = call ptr @json_array_get_value(ptr noundef %0, i64 noundef %1)
  %call1 = call i32 @json_value_get_boolean(ptr noundef %call)
  ret i32 %call1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @json_array_get_wrapping_value(ptr noundef %array) #0 {
entry:
  %retval = alloca ptr, align 8
  %array.addr = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8
  %0 = load ptr, ptr %array.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %array.addr, align 8
  %wrapping_value = getelementptr inbounds %struct.json_array_t, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %wrapping_value, align 8
  store ptr %2, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load ptr, ptr %retval, align 8
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @json_value_get_string_desc(ptr noundef %value) #0 {
entry:
  %value.addr = alloca ptr, align 8
  store ptr %value, ptr %value.addr, align 8
  %0 = load ptr, ptr %value.addr, align 8
  %call = call i32 @json_value_get_type(ptr noundef %0)
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %value.addr, align 8
  %value1 = getelementptr inbounds %struct.json_value_t, ptr %1, i32 0, i32 2
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %value1, %cond.true ], [ null, %cond.false ]
  ret ptr %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @json_value_get_parent(ptr noundef %value) #0 {
entry:
  %value.addr = alloca ptr, align 8
  store ptr %value, ptr %value.addr, align 8
  %0 = load ptr, ptr %value.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %value.addr, align 8
  %parent = getelementptr inbounds %struct.json_value_t, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %parent, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %2, %cond.true ], [ null, %cond.false ]
  ret ptr %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @json_value_free(ptr noundef %value) #0 {
entry:
  %value.addr = alloca ptr, align 8
  store ptr %value, ptr %value.addr, align 8
  %0 = load ptr, ptr %value.addr, align 8
  %call = call i32 @json_value_get_type(ptr noundef %0)
  switch i32 %call, label %sw.default [
    i32 4, label %sw.bb
    i32 2, label %sw.bb2
    i32 5, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %value.addr, align 8
  %value1 = getelementptr inbounds %struct.json_value_t, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %value1, align 8
  call void @json_object_free(ptr noundef %2)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %3 = load ptr, ptr @parson_free, align 8
  %4 = load ptr, ptr %value.addr, align 8
  %value3 = getelementptr inbounds %struct.json_value_t, ptr %4, i32 0, i32 2
  %chars = getelementptr inbounds %struct.json_string, ptr %value3, i32 0, i32 0
  %5 = load ptr, ptr %chars, align 8
  call void %3(ptr noundef %5)
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %6 = load ptr, ptr %value.addr, align 8
  %value5 = getelementptr inbounds %struct.json_value_t, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %value5, align 8
  call void @json_array_free(ptr noundef %7)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb2, %sw.bb
  %8 = load ptr, ptr @parson_free, align 8
  %9 = load ptr, ptr %value.addr, align 8
  call void %8(ptr noundef %9)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @json_object_free(ptr noundef %object) #0 {
entry:
  %object.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  %0 = load ptr, ptr %object.addr, align 8
  call void @json_object_deinit(ptr noundef %0, i32 noundef 1, i32 noundef 1)
  %1 = load ptr, ptr @parson_free, align 8
  %2 = load ptr, ptr %object.addr, align 8
  call void %1(ptr noundef %2)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @json_array_free(ptr noundef %array) #0 {
entry:
  %array.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  store ptr %array, ptr %array.addr, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8
  %1 = load ptr, ptr %array.addr, align 8
  %count = getelementptr inbounds %struct.json_array_t, ptr %1, i32 0, i32 2
  %2 = load i64, ptr %count, align 8
  %cmp = icmp ult i64 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %array.addr, align 8
  %items = getelementptr inbounds %struct.json_array_t, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %items, align 8
  %5 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %5
  %6 = load ptr, ptr %arrayidx, align 8
  call void @json_value_free(ptr noundef %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i64, ptr %i, align 8
  %inc = add i64 %7, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %8 = load ptr, ptr @parson_free, align 8
  %9 = load ptr, ptr %array.addr, align 8
  %items1 = getelementptr inbounds %struct.json_array_t, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %items1, align 8
  call void %8(ptr noundef %10)
  %11 = load ptr, ptr @parson_free, align 8
  %12 = load ptr, ptr %array.addr, align 8
  call void %11(ptr noundef %12)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @json_value_init_object() #0 {
entry:
  %retval = alloca ptr, align 8
  %new_value = alloca ptr, align 8
  %0 = load ptr, ptr @parson_malloc, align 8
  %call = call ptr %0(i64 noundef 32)
  store ptr %call, ptr %new_value, align 8
  %1 = load ptr, ptr %new_value, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %new_value, align 8
  %parent = getelementptr inbounds %struct.json_value_t, ptr %2, i32 0, i32 0
  store ptr null, ptr %parent, align 8
  %3 = load ptr, ptr %new_value, align 8
  %type = getelementptr inbounds %struct.json_value_t, ptr %3, i32 0, i32 1
  store i32 4, ptr %type, align 8
  %4 = load ptr, ptr %new_value, align 8
  %call1 = call ptr @json_object_make(ptr noundef %4)
  %5 = load ptr, ptr %new_value, align 8
  %value = getelementptr inbounds %struct.json_value_t, ptr %5, i32 0, i32 2
  store ptr %call1, ptr %value, align 8
  %6 = load ptr, ptr %new_value, align 8
  %value2 = getelementptr inbounds %struct.json_value_t, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %value2, align 8
  %tobool3 = icmp ne ptr %7, null
  br i1 %tobool3, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  %8 = load ptr, ptr @parson_free, align 8
  %9 = load ptr, ptr %new_value, align 8
  call void %8(ptr noundef %9)
  store ptr null, ptr %retval, align 8
  br label %return

if.end5:                                          ; preds = %if.end
  %10 = load ptr, ptr %new_value, align 8
  store ptr %10, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %11 = load ptr, ptr %retval, align 8
  ret ptr %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @json_object_make(ptr noundef %wrapping_value) #0 {
entry:
  %retval = alloca ptr, align 8
  %wrapping_value.addr = alloca ptr, align 8
  %res = alloca i32, align 4
  %new_obj = alloca ptr, align 8
  store ptr %wrapping_value, ptr %wrapping_value.addr, align 8
  store i32 -1, ptr %res, align 4
  %0 = load ptr, ptr @parson_malloc, align 8
  %call = call ptr %0(i64 noundef 72)
  store ptr %call, ptr %new_obj, align 8
  %1 = load ptr, ptr %new_obj, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %wrapping_value.addr, align 8
  %3 = load ptr, ptr %new_obj, align 8
  %wrapping_value1 = getelementptr inbounds %struct.json_object_t, ptr %3, i32 0, i32 0
  store ptr %2, ptr %wrapping_value1, align 8
  %4 = load ptr, ptr %new_obj, align 8
  %call2 = call i32 @json_object_init(ptr noundef %4, i64 noundef 0)
  store i32 %call2, ptr %res, align 4
  %5 = load i32, ptr %res, align 4
  %cmp3 = icmp ne i32 %5, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %6 = load ptr, ptr @parson_free, align 8
  %7 = load ptr, ptr %new_obj, align 8
  call void %6(ptr noundef %7)
  store ptr null, ptr %retval, align 8
  br label %return

if.end5:                                          ; preds = %if.end
  %8 = load ptr, ptr %new_obj, align 8
  store ptr %8, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %9 = load ptr, ptr %retval, align 8
  ret ptr %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @json_value_init_array() #0 {
entry:
  %retval = alloca ptr, align 8
  %new_value = alloca ptr, align 8
  %0 = load ptr, ptr @parson_malloc, align 8
  %call = call ptr %0(i64 noundef 32)
  store ptr %call, ptr %new_value, align 8
  %1 = load ptr, ptr %new_value, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %new_value, align 8
  %parent = getelementptr inbounds %struct.json_value_t, ptr %2, i32 0, i32 0
  store ptr null, ptr %parent, align 8
  %3 = load ptr, ptr %new_value, align 8
  %type = getelementptr inbounds %struct.json_value_t, ptr %3, i32 0, i32 1
  store i32 5, ptr %type, align 8
  %4 = load ptr, ptr %new_value, align 8
  %call1 = call ptr @json_array_make(ptr noundef %4)
  %5 = load ptr, ptr %new_value, align 8
  %value = getelementptr inbounds %struct.json_value_t, ptr %5, i32 0, i32 2
  store ptr %call1, ptr %value, align 8
  %6 = load ptr, ptr %new_value, align 8
  %value2 = getelementptr inbounds %struct.json_value_t, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %value2, align 8
  %tobool3 = icmp ne ptr %7, null
  br i1 %tobool3, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  %8 = load ptr, ptr @parson_free, align 8
  %9 = load ptr, ptr %new_value, align 8
  call void %8(ptr noundef %9)
  store ptr null, ptr %retval, align 8
  br label %return

if.end5:                                          ; preds = %if.end
  %10 = load ptr, ptr %new_value, align 8
  store ptr %10, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %11 = load ptr, ptr %retval, align 8
  ret ptr %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @json_array_make(ptr noundef %wrapping_value) #0 {
entry:
  %retval = alloca ptr, align 8
  %wrapping_value.addr = alloca ptr, align 8
  %new_array = alloca ptr, align 8
  store ptr %wrapping_value, ptr %wrapping_value.addr, align 8
  %0 = load ptr, ptr @parson_malloc, align 8
  %call = call ptr %0(i64 noundef 32)
  store ptr %call, ptr %new_array, align 8
  %1 = load ptr, ptr %new_array, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %wrapping_value.addr, align 8
  %3 = load ptr, ptr %new_array, align 8
  %wrapping_value1 = getelementptr inbounds %struct.json_array_t, ptr %3, i32 0, i32 0
  store ptr %2, ptr %wrapping_value1, align 8
  %4 = load ptr, ptr %new_array, align 8
  %items = getelementptr inbounds %struct.json_array_t, ptr %4, i32 0, i32 1
  store ptr null, ptr %items, align 8
  %5 = load ptr, ptr %new_array, align 8
  %capacity = getelementptr inbounds %struct.json_array_t, ptr %5, i32 0, i32 3
  store i64 0, ptr %capacity, align 8
  %6 = load ptr, ptr %new_array, align 8
  %count = getelementptr inbounds %struct.json_array_t, ptr %6, i32 0, i32 2
  store i64 0, ptr %count, align 8
  %7 = load ptr, ptr %new_array, align 8
  store ptr %7, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load ptr, ptr %retval, align 8
  ret ptr %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @json_value_init_string(ptr noundef %string) #0 {
entry:
  %retval = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  store ptr %string, ptr %string.addr, align 8
  %0 = load ptr, ptr %string.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %string.addr, align 8
  %2 = load ptr, ptr %string.addr, align 8
  %call = call i64 @strlen(ptr noundef %2)
  %call1 = call ptr @json_value_init_string_with_len(ptr noundef %1, i64 noundef %call)
  store ptr %call1, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load ptr, ptr %retval, align 8
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %0 = load ptr, ptr %string.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %string.addr, align 8
  %2 = load i64, ptr %length.addr, align 8
  %call = call i32 @is_valid_utf8(ptr noundef %1, i64 noundef %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end2:                                          ; preds = %if.end
  %3 = load ptr, ptr %string.addr, align 8
  %4 = load i64, ptr %length.addr, align 8
  %call3 = call ptr @parson_strndup(ptr noundef %3, i64 noundef %4)
  store ptr %call3, ptr %copy, align 8
  %5 = load ptr, ptr %copy, align 8
  %cmp4 = icmp eq ptr %5, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end2
  store ptr null, ptr %retval, align 8
  br label %return

if.end6:                                          ; preds = %if.end2
  %6 = load ptr, ptr %copy, align 8
  %7 = load i64, ptr %length.addr, align 8
  %call7 = call ptr @json_value_init_string_no_copy(ptr noundef %6, i64 noundef %7)
  store ptr %call7, ptr %value, align 8
  %8 = load ptr, ptr %value, align 8
  %cmp8 = icmp eq ptr %8, null
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  %9 = load ptr, ptr @parson_free, align 8
  %10 = load ptr, ptr %copy, align 8
  call void %9(ptr noundef %10)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end6
  %11 = load ptr, ptr %value, align 8
  store ptr %11, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end10, %if.then5, %if.then1, %if.then
  %12 = load ptr, ptr %retval, align 8
  ret ptr %12
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @is_valid_utf8(ptr noundef %string, i64 noundef %string_len) #0 {
entry:
  %retval = alloca i32, align 4
  %string.addr = alloca ptr, align 8
  %string_len.addr = alloca i64, align 8
  %len = alloca i32, align 4
  %string_end = alloca ptr, align 8
  store ptr %string, ptr %string.addr, align 8
  store i64 %string_len, ptr %string_len.addr, align 8
  store i32 0, ptr %len, align 4
  %0 = load ptr, ptr %string.addr, align 8
  %1 = load i64, ptr %string_len.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %1
  store ptr %add.ptr, ptr %string_end, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load ptr, ptr %string.addr, align 8
  %3 = load ptr, ptr %string_end, align 8
  %cmp = icmp ult ptr %2, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %string.addr, align 8
  %call = call i32 @verify_utf8_sequence(ptr noundef %4, ptr noundef %len)
  %cmp1 = icmp ne i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  %5 = load i32, ptr %len, align 4
  %6 = load ptr, ptr %string.addr, align 8
  %idx.ext = sext i32 %5 to i64
  %add.ptr2 = getelementptr inbounds i8, ptr %6, i64 %idx.ext
  store ptr %add.ptr2, ptr %string.addr, align 8
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @parson_strndup(ptr noundef %string, i64 noundef %n) #0 {
entry:
  %retval = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %output_string = alloca ptr, align 8
  store ptr %string, ptr %string.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  %0 = load ptr, ptr @parson_malloc, align 8
  %1 = load i64, ptr %n.addr, align 8
  %add = add i64 %1, 1
  %call = call ptr %0(i64 noundef %add)
  store ptr %call, ptr %output_string, align 8
  %2 = load ptr, ptr %output_string, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %output_string, align 8
  %4 = load i64, ptr %n.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 %4
  store i8 0, ptr %arrayidx, align 1
  %5 = load ptr, ptr %output_string, align 8
  %6 = load ptr, ptr %string.addr, align 8
  %7 = load i64, ptr %n.addr, align 8
  %8 = load ptr, ptr %output_string, align 8
  %9 = call i64 @llvm.objectsize.i64.p0(ptr %8, i1 false, i1 true, i1 false)
  %call1 = call ptr @__memcpy_chk(ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %9) #9
  %10 = load ptr, ptr %output_string, align 8
  store ptr %10, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load ptr, ptr %retval, align 8
  ret ptr %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @json_value_init_string_no_copy(ptr noundef %string, i64 noundef %length) #0 {
entry:
  %retval = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %new_value = alloca ptr, align 8
  store ptr %string, ptr %string.addr, align 8
  store i64 %length, ptr %length.addr, align 8
  %0 = load ptr, ptr @parson_malloc, align 8
  %call = call ptr %0(i64 noundef 32)
  store ptr %call, ptr %new_value, align 8
  %1 = load ptr, ptr %new_value, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %new_value, align 8
  %parent = getelementptr inbounds %struct.json_value_t, ptr %2, i32 0, i32 0
  store ptr null, ptr %parent, align 8
  %3 = load ptr, ptr %new_value, align 8
  %type = getelementptr inbounds %struct.json_value_t, ptr %3, i32 0, i32 1
  store i32 2, ptr %type, align 8
  %4 = load ptr, ptr %string.addr, align 8
  %5 = load ptr, ptr %new_value, align 8
  %value = getelementptr inbounds %struct.json_value_t, ptr %5, i32 0, i32 2
  %chars = getelementptr inbounds %struct.json_string, ptr %value, i32 0, i32 0
  store ptr %4, ptr %chars, align 8
  %6 = load i64, ptr %length.addr, align 8
  %7 = load ptr, ptr %new_value, align 8
  %value1 = getelementptr inbounds %struct.json_value_t, ptr %7, i32 0, i32 2
  %length2 = getelementptr inbounds %struct.json_string, ptr %value1, i32 0, i32 1
  store i64 %6, ptr %length2, align 8
  %8 = load ptr, ptr %new_value, align 8
  store ptr %8, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load ptr, ptr %retval, align 8
  ret ptr %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @json_value_init_number(double noundef %number) #0 {
entry:
  %__x.addr.i34 = alloca double, align 8
  %__x.addr.i31 = alloca double, align 8
  %__x.addr.i28 = alloca float, align 4
  %__x.addr.i25 = alloca double, align 8
  %__x.addr.i22 = alloca double, align 8
  %__x.addr.i = alloca float, align 4
  %retval = alloca ptr, align 8
  %number.addr = alloca double, align 8
  %new_value = alloca ptr, align 8
  store double %number, ptr %number.addr, align 8
  store ptr null, ptr %new_value, align 8
  br i1 false, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %0 = load double, ptr %number.addr, align 8
  %conv = fptrunc double %0 to float
  store float %conv, ptr %__x.addr.i, align 4
  %1 = load float, ptr %__x.addr.i, align 4
  %2 = load float, ptr %__x.addr.i, align 4
  %cmp.i = fcmp une float %1, %2
  %conv.i = zext i1 %cmp.i to i32
  %tobool = icmp ne i32 %conv.i, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

cond.false:                                       ; preds = %entry
  br i1 true, label %cond.true1, label %cond.false4

cond.true1:                                       ; preds = %cond.false
  %3 = load double, ptr %number.addr, align 8
  store double %3, ptr %__x.addr.i22, align 8
  %4 = load double, ptr %__x.addr.i22, align 8
  %5 = load double, ptr %__x.addr.i22, align 8
  %cmp.i23 = fcmp une double %4, %5
  %conv.i24 = zext i1 %cmp.i23 to i32
  %tobool3 = icmp ne i32 %conv.i24, 0
  br i1 %tobool3, label %if.then, label %lor.lhs.false

cond.false4:                                      ; preds = %cond.false
  %6 = load double, ptr %number.addr, align 8
  store double %6, ptr %__x.addr.i25, align 8
  %7 = load double, ptr %__x.addr.i25, align 8
  %8 = load double, ptr %__x.addr.i25, align 8
  %cmp.i26 = fcmp une double %7, %8
  %conv.i27 = zext i1 %cmp.i26 to i32
  %tobool6 = icmp ne i32 %conv.i27, 0
  br i1 %tobool6, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.false4, %cond.true1, %cond.true
  br i1 false, label %cond.true7, label %cond.false11

cond.true7:                                       ; preds = %lor.lhs.false
  %9 = load double, ptr %number.addr, align 8
  %conv8 = fptrunc double %9 to float
  store float %conv8, ptr %__x.addr.i28, align 4
  %10 = load float, ptr %__x.addr.i28, align 4
  %11 = call float @llvm.fabs.f32(float %10)
  %cmp.i29 = fcmp oeq float %11, 0x7FF0000000000000
  %conv.i30 = zext i1 %cmp.i29 to i32
  %tobool10 = icmp ne i32 %conv.i30, 0
  br i1 %tobool10, label %if.then, label %if.end

cond.false11:                                     ; preds = %lor.lhs.false
  br i1 true, label %cond.true12, label %cond.false15

cond.true12:                                      ; preds = %cond.false11
  %12 = load double, ptr %number.addr, align 8
  store double %12, ptr %__x.addr.i31, align 8
  %13 = load double, ptr %__x.addr.i31, align 8
  %14 = call double @llvm.fabs.f64(double %13)
  %cmp.i32 = fcmp oeq double %14, 0x7FF0000000000000
  %conv.i33 = zext i1 %cmp.i32 to i32
  %tobool14 = icmp ne i32 %conv.i33, 0
  br i1 %tobool14, label %if.then, label %if.end

cond.false15:                                     ; preds = %cond.false11
  %15 = load double, ptr %number.addr, align 8
  store double %15, ptr %__x.addr.i34, align 8
  %16 = load double, ptr %__x.addr.i34, align 8
  %17 = call double @llvm.fabs.f64(double %16)
  %cmp.i35 = fcmp oeq double %17, 0x7FF0000000000000
  %conv.i36 = zext i1 %cmp.i35 to i32
  %tobool17 = icmp ne i32 %conv.i36, 0
  br i1 %tobool17, label %if.then, label %if.end

if.then:                                          ; preds = %cond.false15, %cond.true12, %cond.true7, %cond.false4, %cond.true1, %cond.true
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %cond.false15, %cond.true12, %cond.true7
  %18 = load ptr, ptr @parson_malloc, align 8
  %call18 = call ptr %18(i64 noundef 32)
  store ptr %call18, ptr %new_value, align 8
  %19 = load ptr, ptr %new_value, align 8
  %cmp = icmp eq ptr %19, null
  br i1 %cmp, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end21:                                         ; preds = %if.end
  %20 = load ptr, ptr %new_value, align 8
  %parent = getelementptr inbounds %struct.json_value_t, ptr %20, i32 0, i32 0
  store ptr null, ptr %parent, align 8
  %21 = load ptr, ptr %new_value, align 8
  %type = getelementptr inbounds %struct.json_value_t, ptr %21, i32 0, i32 1
  store i32 3, ptr %type, align 8
  %22 = load double, ptr %number.addr, align 8
  %23 = load ptr, ptr %new_value, align 8
  %value = getelementptr inbounds %struct.json_value_t, ptr %23, i32 0, i32 2
  store double %22, ptr %value, align 8
  %24 = load ptr, ptr %new_value, align 8
  store ptr %24, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end21, %if.then20, %if.then
  %25 = load ptr, ptr %retval, align 8
  ret ptr %25
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @json_value_init_boolean(i32 noundef %boolean) #0 {
entry:
  %retval = alloca ptr, align 8
  %boolean.addr = alloca i32, align 4
  %new_value = alloca ptr, align 8
  store i32 %boolean, ptr %boolean.addr, align 4
  %0 = load ptr, ptr @parson_malloc, align 8
  %call = call ptr %0(i64 noundef 32)
  store ptr %call, ptr %new_value, align 8
  %1 = load ptr, ptr %new_value, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %new_value, align 8
  %parent = getelementptr inbounds %struct.json_value_t, ptr %2, i32 0, i32 0
  store ptr null, ptr %parent, align 8
  %3 = load ptr, ptr %new_value, align 8
  %type = getelementptr inbounds %struct.json_value_t, ptr %3, i32 0, i32 1
  store i32 6, ptr %type, align 8
  %4 = load i32, ptr %boolean.addr, align 4
  %tobool1 = icmp ne i32 %4, 0
  %5 = zext i1 %tobool1 to i64
  %cond = select i1 %tobool1, i32 1, i32 0
  %6 = load ptr, ptr %new_value, align 8
  %value = getelementptr inbounds %struct.json_value_t, ptr %6, i32 0, i32 2
  store i32 %cond, ptr %value, align 8
  %7 = load ptr, ptr %new_value, align 8
  store ptr %7, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load ptr, ptr %retval, align 8
  ret ptr %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @json_value_init_null() #0 {
entry:
  %retval = alloca ptr, align 8
  %new_value = alloca ptr, align 8
  %0 = load ptr, ptr @parson_malloc, align 8
  %call = call ptr %0(i64 noundef 32)
  store ptr %call, ptr %new_value, align 8
  %1 = load ptr, ptr %new_value, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %new_value, align 8
  %parent = getelementptr inbounds %struct.json_value_t, ptr %2, i32 0, i32 0
  store ptr null, ptr %parent, align 8
  %3 = load ptr, ptr %new_value, align 8
  %type = getelementptr inbounds %struct.json_value_t, ptr %3, i32 0, i32 1
  store i32 1, ptr %type, align 8
  %4 = load ptr, ptr %new_value, align 8
  store ptr %4, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @json_value_deep_copy(ptr noundef %value) #0 {
entry:
  %retval = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %return_value = alloca ptr, align 8
  %temp_value_copy = alloca ptr, align 8
  %temp_value = alloca ptr, align 8
  %temp_string = alloca ptr, align 8
  %temp_key = alloca ptr, align 8
  %temp_string_copy = alloca ptr, align 8
  %temp_array = alloca ptr, align 8
  %temp_array_copy = alloca ptr, align 8
  %temp_object = alloca ptr, align 8
  %temp_object_copy = alloca ptr, align 8
  %res = alloca i32, align 4
  %key_copy = alloca ptr, align 8
  store ptr %value, ptr %value.addr, align 8
  store i64 0, ptr %i, align 8
  store ptr null, ptr %return_value, align 8
  store ptr null, ptr %temp_value_copy, align 8
  store ptr null, ptr %temp_value, align 8
  store ptr null, ptr %temp_string, align 8
  store ptr null, ptr %temp_key, align 8
  store ptr null, ptr %temp_string_copy, align 8
  store ptr null, ptr %temp_array, align 8
  store ptr null, ptr %temp_array_copy, align 8
  store ptr null, ptr %temp_object, align 8
  store ptr null, ptr %temp_object_copy, align 8
  store i32 -1, ptr %res, align 4
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
  %2 = load ptr, ptr %return_value, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %sw.bb
  %3 = load ptr, ptr %return_value, align 8
  %call3 = call ptr @json_value_get_array(ptr noundef %3)
  store ptr %call3, ptr %temp_array_copy, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i64, ptr %i, align 8
  %5 = load ptr, ptr %temp_array, align 8
  %call4 = call i64 @json_array_get_count(ptr noundef %5)
  %cmp5 = icmp ult i64 %4, %call4
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %temp_array, align 8
  %7 = load i64, ptr %i, align 8
  %call6 = call ptr @json_array_get_value(ptr noundef %6, i64 noundef %7)
  store ptr %call6, ptr %temp_value, align 8
  %8 = load ptr, ptr %temp_value, align 8
  %call7 = call ptr @json_value_deep_copy(ptr noundef %8)
  store ptr %call7, ptr %temp_value_copy, align 8
  %9 = load ptr, ptr %temp_value_copy, align 8
  %cmp8 = icmp eq ptr %9, null
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %for.body
  %10 = load ptr, ptr %return_value, align 8
  call void @json_value_free(ptr noundef %10)
  store ptr null, ptr %retval, align 8
  br label %return

if.end10:                                         ; preds = %for.body
  %11 = load ptr, ptr %temp_array_copy, align 8
  %12 = load ptr, ptr %temp_value_copy, align 8
  %call11 = call i32 @json_array_add(ptr noundef %11, ptr noundef %12)
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  %13 = load ptr, ptr %return_value, align 8
  call void @json_value_free(ptr noundef %13)
  %14 = load ptr, ptr %temp_value_copy, align 8
  call void @json_value_free(ptr noundef %14)
  store ptr null, ptr %retval, align 8
  br label %return

if.end14:                                         ; preds = %if.end10
  br label %for.inc

for.inc:                                          ; preds = %if.end14
  %15 = load i64, ptr %i, align 8
  %inc = add i64 %15, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %16 = load ptr, ptr %return_value, align 8
  store ptr %16, ptr %retval, align 8
  br label %return

sw.bb15:                                          ; preds = %entry
  %17 = load ptr, ptr %value.addr, align 8
  %call16 = call ptr @json_value_get_object(ptr noundef %17)
  store ptr %call16, ptr %temp_object, align 8
  %call17 = call ptr @json_value_init_object()
  store ptr %call17, ptr %return_value, align 8
  %18 = load ptr, ptr %return_value, align 8
  %tobool = icmp ne ptr %18, null
  br i1 %tobool, label %if.end19, label %if.then18

if.then18:                                        ; preds = %sw.bb15
  store ptr null, ptr %retval, align 8
  br label %return

if.end19:                                         ; preds = %sw.bb15
  %19 = load ptr, ptr %return_value, align 8
  %call20 = call ptr @json_value_get_object(ptr noundef %19)
  store ptr %call20, ptr %temp_object_copy, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc39, %if.end19
  %20 = load i64, ptr %i, align 8
  %21 = load ptr, ptr %temp_object, align 8
  %call22 = call i64 @json_object_get_count(ptr noundef %21)
  %cmp23 = icmp ult i64 %20, %call22
  br i1 %cmp23, label %for.body24, label %for.end41

for.body24:                                       ; preds = %for.cond21
  %22 = load ptr, ptr %temp_object, align 8
  %23 = load i64, ptr %i, align 8
  %call25 = call ptr @json_object_get_name(ptr noundef %22, i64 noundef %23)
  store ptr %call25, ptr %temp_key, align 8
  %24 = load ptr, ptr %temp_object, align 8
  %25 = load ptr, ptr %temp_key, align 8
  %call26 = call ptr @json_object_get_value(ptr noundef %24, ptr noundef %25)
  store ptr %call26, ptr %temp_value, align 8
  %26 = load ptr, ptr %temp_value, align 8
  %call27 = call ptr @json_value_deep_copy(ptr noundef %26)
  store ptr %call27, ptr %temp_value_copy, align 8
  %27 = load ptr, ptr %temp_value_copy, align 8
  %tobool28 = icmp ne ptr %27, null
  br i1 %tobool28, label %if.end30, label %if.then29

if.then29:                                        ; preds = %for.body24
  %28 = load ptr, ptr %return_value, align 8
  call void @json_value_free(ptr noundef %28)
  store ptr null, ptr %retval, align 8
  br label %return

if.end30:                                         ; preds = %for.body24
  %29 = load ptr, ptr %temp_key, align 8
  %call31 = call ptr @parson_strdup(ptr noundef %29)
  store ptr %call31, ptr %key_copy, align 8
  %30 = load ptr, ptr %key_copy, align 8
  %tobool32 = icmp ne ptr %30, null
  br i1 %tobool32, label %if.end34, label %if.then33

if.then33:                                        ; preds = %if.end30
  %31 = load ptr, ptr %temp_value_copy, align 8
  call void @json_value_free(ptr noundef %31)
  %32 = load ptr, ptr %return_value, align 8
  call void @json_value_free(ptr noundef %32)
  store ptr null, ptr %retval, align 8
  br label %return

if.end34:                                         ; preds = %if.end30
  %33 = load ptr, ptr %temp_object_copy, align 8
  %34 = load ptr, ptr %key_copy, align 8
  %35 = load ptr, ptr %temp_value_copy, align 8
  %call35 = call i32 @json_object_add(ptr noundef %33, ptr noundef %34, ptr noundef %35)
  store i32 %call35, ptr %res, align 4
  %36 = load i32, ptr %res, align 4
  %cmp36 = icmp ne i32 %36, 0
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end34
  %37 = load ptr, ptr @parson_free, align 8
  %38 = load ptr, ptr %key_copy, align 8
  call void %37(ptr noundef %38)
  %39 = load ptr, ptr %temp_value_copy, align 8
  call void @json_value_free(ptr noundef %39)
  %40 = load ptr, ptr %return_value, align 8
  call void @json_value_free(ptr noundef %40)
  store ptr null, ptr %retval, align 8
  br label %return

if.end38:                                         ; preds = %if.end34
  br label %for.inc39

for.inc39:                                        ; preds = %if.end38
  %41 = load i64, ptr %i, align 8
  %inc40 = add i64 %41, 1
  store i64 %inc40, ptr %i, align 8
  br label %for.cond21, !llvm.loop !14

for.end41:                                        ; preds = %for.cond21
  %42 = load ptr, ptr %return_value, align 8
  store ptr %42, ptr %retval, align 8
  br label %return

sw.bb42:                                          ; preds = %entry
  %43 = load ptr, ptr %value.addr, align 8
  %call43 = call i32 @json_value_get_boolean(ptr noundef %43)
  %call44 = call ptr @json_value_init_boolean(i32 noundef %call43)
  store ptr %call44, ptr %retval, align 8
  br label %return

sw.bb45:                                          ; preds = %entry
  %44 = load ptr, ptr %value.addr, align 8
  %call46 = call double @json_value_get_number(ptr noundef %44)
  %call47 = call ptr @json_value_init_number(double noundef %call46)
  store ptr %call47, ptr %retval, align 8
  br label %return

sw.bb48:                                          ; preds = %entry
  %45 = load ptr, ptr %value.addr, align 8
  %call49 = call ptr @json_value_get_string_desc(ptr noundef %45)
  store ptr %call49, ptr %temp_string, align 8
  %46 = load ptr, ptr %temp_string, align 8
  %cmp50 = icmp eq ptr %46, null
  br i1 %cmp50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %sw.bb48
  store ptr null, ptr %retval, align 8
  br label %return

if.end52:                                         ; preds = %sw.bb48
  %47 = load ptr, ptr %temp_string, align 8
  %chars = getelementptr inbounds %struct.json_string, ptr %47, i32 0, i32 0
  %48 = load ptr, ptr %chars, align 8
  %49 = load ptr, ptr %temp_string, align 8
  %length = getelementptr inbounds %struct.json_string, ptr %49, i32 0, i32 1
  %50 = load i64, ptr %length, align 8
  %call53 = call ptr @parson_strndup(ptr noundef %48, i64 noundef %50)
  store ptr %call53, ptr %temp_string_copy, align 8
  %51 = load ptr, ptr %temp_string_copy, align 8
  %cmp54 = icmp eq ptr %51, null
  br i1 %cmp54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.end52
  store ptr null, ptr %retval, align 8
  br label %return

if.end56:                                         ; preds = %if.end52
  %52 = load ptr, ptr %temp_string_copy, align 8
  %53 = load ptr, ptr %temp_string, align 8
  %length57 = getelementptr inbounds %struct.json_string, ptr %53, i32 0, i32 1
  %54 = load i64, ptr %length57, align 8
  %call58 = call ptr @json_value_init_string_no_copy(ptr noundef %52, i64 noundef %54)
  store ptr %call58, ptr %return_value, align 8
  %55 = load ptr, ptr %return_value, align 8
  %cmp59 = icmp eq ptr %55, null
  br i1 %cmp59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.end56
  %56 = load ptr, ptr @parson_free, align 8
  %57 = load ptr, ptr %temp_string_copy, align 8
  call void %56(ptr noundef %57)
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %if.end56
  %58 = load ptr, ptr %return_value, align 8
  store ptr %58, ptr %retval, align 8
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
  %59 = load ptr, ptr %retval, align 8
  ret ptr %59
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @json_array_add(ptr noundef %array, ptr noundef %value) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %new_capacity = alloca i64, align 8
  store ptr %array, ptr %array.addr, align 8
  store ptr %value, ptr %value.addr, align 8
  %0 = load ptr, ptr %array.addr, align 8
  %count = getelementptr inbounds %struct.json_array_t, ptr %0, i32 0, i32 2
  %1 = load i64, ptr %count, align 8
  %2 = load ptr, ptr %array.addr, align 8
  %capacity = getelementptr inbounds %struct.json_array_t, ptr %2, i32 0, i32 3
  %3 = load i64, ptr %capacity, align 8
  %cmp = icmp uge i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %array.addr, align 8
  %capacity1 = getelementptr inbounds %struct.json_array_t, ptr %4, i32 0, i32 3
  %5 = load i64, ptr %capacity1, align 8
  %mul = mul i64 %5, 2
  %cmp2 = icmp ugt i64 %mul, 16
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %6 = load ptr, ptr %array.addr, align 8
  %capacity3 = getelementptr inbounds %struct.json_array_t, ptr %6, i32 0, i32 3
  %7 = load i64, ptr %capacity3, align 8
  %mul4 = mul i64 %7, 2
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %mul4, %cond.true ], [ 16, %cond.false ]
  store i64 %cond, ptr %new_capacity, align 8
  %8 = load ptr, ptr %array.addr, align 8
  %9 = load i64, ptr %new_capacity, align 8
  %call = call i32 @json_array_resize(ptr noundef %8, i64 noundef %9)
  %cmp5 = icmp ne i32 %call, 0
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %cond.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %cond.end
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  %10 = load ptr, ptr %array.addr, align 8
  %call8 = call ptr @json_array_get_wrapping_value(ptr noundef %10)
  %11 = load ptr, ptr %value.addr, align 8
  %parent = getelementptr inbounds %struct.json_value_t, ptr %11, i32 0, i32 0
  store ptr %call8, ptr %parent, align 8
  %12 = load ptr, ptr %value.addr, align 8
  %13 = load ptr, ptr %array.addr, align 8
  %items = getelementptr inbounds %struct.json_array_t, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %items, align 8
  %15 = load ptr, ptr %array.addr, align 8
  %count9 = getelementptr inbounds %struct.json_array_t, ptr %15, i32 0, i32 2
  %16 = load i64, ptr %count9, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %14, i64 %16
  store ptr %12, ptr %arrayidx, align 8
  %17 = load ptr, ptr %array.addr, align 8
  %count10 = getelementptr inbounds %struct.json_array_t, ptr %17, i32 0, i32 2
  %18 = load i64, ptr %count10, align 8
  %inc = add i64 %18, 1
  store i64 %inc, ptr %count10, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then6
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @json_object_add(ptr noundef %object, ptr noundef %name, ptr noundef %value) #0 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %hash = alloca i64, align 8
  %found = alloca i32, align 4
  %cell_ix = alloca i64, align 8
  %res = alloca i32, align 4
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store ptr %value, ptr %value.addr, align 8
  store i64 0, ptr %hash, align 8
  store i32 0, ptr %found, align 4
  store i64 0, ptr %cell_ix, align 8
  store i32 -1, ptr %res, align 4
  %0 = load ptr, ptr %object.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %name.addr, align 8
  %tobool1 = icmp ne ptr %1, null
  br i1 %tobool1, label %lor.lhs.false2, label %if.then

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %value.addr, align 8
  %tobool3 = icmp ne ptr %2, null
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %3 = load ptr, ptr %name.addr, align 8
  %4 = load ptr, ptr %name.addr, align 8
  %call = call i64 @strlen(ptr noundef %4)
  %call4 = call i64 @hash_string(ptr noundef %3, i64 noundef %call)
  store i64 %call4, ptr %hash, align 8
  store i32 0, ptr %found, align 4
  %5 = load ptr, ptr %object.addr, align 8
  %6 = load ptr, ptr %name.addr, align 8
  %7 = load ptr, ptr %name.addr, align 8
  %call5 = call i64 @strlen(ptr noundef %7)
  %8 = load i64, ptr %hash, align 8
  %call6 = call i64 @json_object_get_cell_ix(ptr noundef %5, ptr noundef %6, i64 noundef %call5, i64 noundef %8, ptr noundef %found)
  store i64 %call6, ptr %cell_ix, align 8
  %9 = load i32, ptr %found, align 4
  %tobool7 = icmp ne i32 %9, 0
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end
  %10 = load ptr, ptr %object.addr, align 8
  %count = getelementptr inbounds %struct.json_object_t, ptr %10, i32 0, i32 6
  %11 = load i64, ptr %count, align 8
  %12 = load ptr, ptr %object.addr, align 8
  %item_capacity = getelementptr inbounds %struct.json_object_t, ptr %12, i32 0, i32 7
  %13 = load i64, ptr %item_capacity, align 8
  %cmp = icmp uge i64 %11, %13
  br i1 %cmp, label %if.then10, label %if.end17

if.then10:                                        ; preds = %if.end9
  %14 = load ptr, ptr %object.addr, align 8
  %call11 = call i32 @json_object_grow_and_rehash(ptr noundef %14)
  store i32 %call11, ptr %res, align 4
  %15 = load i32, ptr %res, align 4
  %cmp12 = icmp ne i32 %15, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.then10
  store i32 -1, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.then10
  %16 = load ptr, ptr %object.addr, align 8
  %17 = load ptr, ptr %name.addr, align 8
  %18 = load ptr, ptr %name.addr, align 8
  %call15 = call i64 @strlen(ptr noundef %18)
  %19 = load i64, ptr %hash, align 8
  %call16 = call i64 @json_object_get_cell_ix(ptr noundef %16, ptr noundef %17, i64 noundef %call15, i64 noundef %19, ptr noundef %found)
  store i64 %call16, ptr %cell_ix, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.end14, %if.end9
  %20 = load ptr, ptr %name.addr, align 8
  %21 = load ptr, ptr %object.addr, align 8
  %names = getelementptr inbounds %struct.json_object_t, ptr %21, i32 0, i32 3
  %22 = load ptr, ptr %names, align 8
  %23 = load ptr, ptr %object.addr, align 8
  %count18 = getelementptr inbounds %struct.json_object_t, ptr %23, i32 0, i32 6
  %24 = load i64, ptr %count18, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %22, i64 %24
  store ptr %20, ptr %arrayidx, align 8
  %25 = load ptr, ptr %object.addr, align 8
  %count19 = getelementptr inbounds %struct.json_object_t, ptr %25, i32 0, i32 6
  %26 = load i64, ptr %count19, align 8
  %27 = load ptr, ptr %object.addr, align 8
  %cells = getelementptr inbounds %struct.json_object_t, ptr %27, i32 0, i32 1
  %28 = load ptr, ptr %cells, align 8
  %29 = load i64, ptr %cell_ix, align 8
  %arrayidx20 = getelementptr inbounds i64, ptr %28, i64 %29
  store i64 %26, ptr %arrayidx20, align 8
  %30 = load ptr, ptr %value.addr, align 8
  %31 = load ptr, ptr %object.addr, align 8
  %values = getelementptr inbounds %struct.json_object_t, ptr %31, i32 0, i32 4
  %32 = load ptr, ptr %values, align 8
  %33 = load ptr, ptr %object.addr, align 8
  %count21 = getelementptr inbounds %struct.json_object_t, ptr %33, i32 0, i32 6
  %34 = load i64, ptr %count21, align 8
  %arrayidx22 = getelementptr inbounds ptr, ptr %32, i64 %34
  store ptr %30, ptr %arrayidx22, align 8
  %35 = load i64, ptr %cell_ix, align 8
  %36 = load ptr, ptr %object.addr, align 8
  %cell_ixs = getelementptr inbounds %struct.json_object_t, ptr %36, i32 0, i32 5
  %37 = load ptr, ptr %cell_ixs, align 8
  %38 = load ptr, ptr %object.addr, align 8
  %count23 = getelementptr inbounds %struct.json_object_t, ptr %38, i32 0, i32 6
  %39 = load i64, ptr %count23, align 8
  %arrayidx24 = getelementptr inbounds i64, ptr %37, i64 %39
  store i64 %35, ptr %arrayidx24, align 8
  %40 = load i64, ptr %hash, align 8
  %41 = load ptr, ptr %object.addr, align 8
  %hashes = getelementptr inbounds %struct.json_object_t, ptr %41, i32 0, i32 2
  %42 = load ptr, ptr %hashes, align 8
  %43 = load ptr, ptr %object.addr, align 8
  %count25 = getelementptr inbounds %struct.json_object_t, ptr %43, i32 0, i32 6
  %44 = load i64, ptr %count25, align 8
  %arrayidx26 = getelementptr inbounds i64, ptr %42, i64 %44
  store i64 %40, ptr %arrayidx26, align 8
  %45 = load ptr, ptr %object.addr, align 8
  %count27 = getelementptr inbounds %struct.json_object_t, ptr %45, i32 0, i32 6
  %46 = load i64, ptr %count27, align 8
  %inc = add i64 %46, 1
  store i64 %inc, ptr %count27, align 8
  %47 = load ptr, ptr %object.addr, align 8
  %call28 = call ptr @json_object_get_wrapping_value(ptr noundef %47)
  %48 = load ptr, ptr %value.addr, align 8
  %parent = getelementptr inbounds %struct.json_value_t, ptr %48, i32 0, i32 0
  store ptr %call28, ptr %parent, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end17, %if.then13, %if.then8, %if.then
  %49 = load i32, ptr %retval, align 4
  ret i32 %49
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @json_serialization_size(ptr noundef %value) #0 {
entry:
  %value.addr = alloca ptr, align 8
  %num_buf = alloca [64 x i8], align 1
  %res = alloca i32, align 4
  store ptr %value, ptr %value.addr, align 8
  %0 = load ptr, ptr %value.addr, align 8
  %arraydecay = getelementptr inbounds [64 x i8], ptr %num_buf, i64 0, i64 0
  %call = call i32 @json_serialize_to_buffer_r(ptr noundef %0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef %arraydecay)
  store i32 %call, ptr %res, align 4
  %1 = load i32, ptr %res, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, ptr %res, align 4
  %conv = sext i32 %2 to i64
  %add = add i64 %conv, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %add, %cond.false ]
  ret i64 %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %temp_value = alloca ptr, align 8
  %array = alloca ptr, align 8
  %object = alloca ptr, align 8
  %i = alloca i64, align 8
  %count = alloca i64, align 8
  %num = alloca double, align 8
  %written = alloca i32, align 4
  %written_total = alloca i32, align 4
  %len = alloca i64, align 8
  %level_i = alloca i32, align 4
  %level_i102 = alloca i32, align 4
  %level_i185 = alloca i32, align 4
  %level_i308 = alloca i32, align 4
  %float_format = alloca ptr, align 8
  store ptr %value, ptr %value.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %level, ptr %level.addr, align 4
  store i32 %is_pretty, ptr %is_pretty.addr, align 4
  store ptr %num_buf, ptr %num_buf.addr, align 8
  store ptr null, ptr %key, align 8
  store ptr null, ptr %string, align 8
  store ptr null, ptr %temp_value, align 8
  store ptr null, ptr %array, align 8
  store ptr null, ptr %object, align 8
  store i64 0, ptr %i, align 8
  store i64 0, ptr %count, align 8
  store double 0.000000e+00, ptr %num, align 8
  store i32 -1, ptr %written, align 4
  store i32 0, ptr %written_total, align 4
  store i64 0, ptr %len, align 8
  %0 = load ptr, ptr %value.addr, align 8
  %call = call i32 @json_value_get_type(ptr noundef %0)
  switch i32 %call, label %sw.default [
    i32 5, label %sw.bb
    i32 4, label %sw.bb138
    i32 2, label %sw.bb344
    i32 6, label %sw.bb363
    i32 3, label %sw.bb394
    i32 1, label %sw.bb418
    i32 -1, label %sw.bb432
  ]

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %value.addr, align 8
  %call1 = call ptr @json_value_get_array(ptr noundef %1)
  store ptr %call1, ptr %array, align 8
  %2 = load ptr, ptr %array, align 8
  %call2 = call i64 @json_array_get_count(ptr noundef %2)
  store i64 %call2, ptr %count, align 8
  br label %do.body

do.body:                                          ; preds = %sw.bb
  store i32 1, ptr %written, align 4
  %3 = load ptr, ptr %buf.addr, align 8
  %cmp = icmp ne ptr %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %4 = load ptr, ptr %buf.addr, align 8
  %5 = load i32, ptr %written, align 4
  %conv = sext i32 %5 to i64
  %6 = load ptr, ptr %buf.addr, align 8
  %7 = call i64 @llvm.objectsize.i64.p0(ptr %6, i1 false, i1 true, i1 false)
  %call3 = call ptr @__memcpy_chk(ptr noundef %4, ptr noundef @.str.11, i64 noundef %conv, i64 noundef %7) #9
  %8 = load ptr, ptr %buf.addr, align 8
  %9 = load i32, ptr %written, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds i8, ptr %8, i64 %idxprom
  store i8 0, ptr %arrayidx, align 1
  %10 = load i32, ptr %written, align 4
  %11 = load ptr, ptr %buf.addr, align 8
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds i8, ptr %11, i64 %idx.ext
  store ptr %add.ptr, ptr %buf.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %12 = load i32, ptr %written, align 4
  %13 = load i32, ptr %written_total, align 4
  %add = add nsw i32 %13, %12
  store i32 %add, ptr %written_total, align 4
  br label %do.end

do.end:                                           ; preds = %if.end
  %14 = load i64, ptr %count, align 8
  %cmp4 = icmp ugt i64 %14, 0
  br i1 %cmp4, label %land.lhs.true, label %if.end20

land.lhs.true:                                    ; preds = %do.end
  %15 = load i32, ptr %is_pretty.addr, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then6, label %if.end20

if.then6:                                         ; preds = %land.lhs.true
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  store i32 1, ptr %written, align 4
  %16 = load ptr, ptr %buf.addr, align 8
  %cmp8 = icmp ne ptr %16, null
  br i1 %cmp8, label %if.then10, label %if.end17

if.then10:                                        ; preds = %do.body7
  %17 = load ptr, ptr %buf.addr, align 8
  %18 = load i32, ptr %written, align 4
  %conv11 = sext i32 %18 to i64
  %19 = load ptr, ptr %buf.addr, align 8
  %20 = call i64 @llvm.objectsize.i64.p0(ptr %19, i1 false, i1 true, i1 false)
  %call12 = call ptr @__memcpy_chk(ptr noundef %17, ptr noundef @.str.3, i64 noundef %conv11, i64 noundef %20) #9
  %21 = load ptr, ptr %buf.addr, align 8
  %22 = load i32, ptr %written, align 4
  %idxprom13 = sext i32 %22 to i64
  %arrayidx14 = getelementptr inbounds i8, ptr %21, i64 %idxprom13
  store i8 0, ptr %arrayidx14, align 1
  %23 = load i32, ptr %written, align 4
  %24 = load ptr, ptr %buf.addr, align 8
  %idx.ext15 = sext i32 %23 to i64
  %add.ptr16 = getelementptr inbounds i8, ptr %24, i64 %idx.ext15
  store ptr %add.ptr16, ptr %buf.addr, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then10, %do.body7
  %25 = load i32, ptr %written, align 4
  %26 = load i32, ptr %written_total, align 4
  %add18 = add nsw i32 %26, %25
  store i32 %add18, ptr %written_total, align 4
  br label %do.end19

do.end19:                                         ; preds = %if.end17
  br label %if.end20

if.end20:                                         ; preds = %do.end19, %land.lhs.true, %do.end
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc93, %if.end20
  %27 = load i64, ptr %i, align 8
  %28 = load i64, ptr %count, align 8
  %cmp21 = icmp ult i64 %27, %28
  br i1 %cmp21, label %for.body, label %for.end95

for.body:                                         ; preds = %for.cond
  %29 = load i32, ptr %is_pretty.addr, align 4
  %tobool23 = icmp ne i32 %29, 0
  br i1 %tobool23, label %if.then24, label %if.end45

if.then24:                                        ; preds = %for.body
  br label %do.body25

do.body25:                                        ; preds = %if.then24
  store i32 0, ptr %level_i, align 4
  store i32 0, ptr %level_i, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc, %do.body25
  %30 = load i32, ptr %level_i, align 4
  %31 = load i32, ptr %level.addr, align 4
  %add27 = add nsw i32 %31, 1
  %cmp28 = icmp slt i32 %30, %add27
  br i1 %cmp28, label %for.body30, label %for.end

for.body30:                                       ; preds = %for.cond26
  br label %do.body31

do.body31:                                        ; preds = %for.body30
  store i32 4, ptr %written, align 4
  %32 = load ptr, ptr %buf.addr, align 8
  %cmp32 = icmp ne ptr %32, null
  br i1 %cmp32, label %if.then34, label %if.end41

if.then34:                                        ; preds = %do.body31
  %33 = load ptr, ptr %buf.addr, align 8
  %34 = load i32, ptr %written, align 4
  %conv35 = sext i32 %34 to i64
  %35 = load ptr, ptr %buf.addr, align 8
  %36 = call i64 @llvm.objectsize.i64.p0(ptr %35, i1 false, i1 true, i1 false)
  %call36 = call ptr @__memcpy_chk(ptr noundef %33, ptr noundef @.str.12, i64 noundef %conv35, i64 noundef %36) #9
  %37 = load ptr, ptr %buf.addr, align 8
  %38 = load i32, ptr %written, align 4
  %idxprom37 = sext i32 %38 to i64
  %arrayidx38 = getelementptr inbounds i8, ptr %37, i64 %idxprom37
  store i8 0, ptr %arrayidx38, align 1
  %39 = load i32, ptr %written, align 4
  %40 = load ptr, ptr %buf.addr, align 8
  %idx.ext39 = sext i32 %39 to i64
  %add.ptr40 = getelementptr inbounds i8, ptr %40, i64 %idx.ext39
  store ptr %add.ptr40, ptr %buf.addr, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.then34, %do.body31
  %41 = load i32, ptr %written, align 4
  %42 = load i32, ptr %written_total, align 4
  %add42 = add nsw i32 %42, %41
  store i32 %add42, ptr %written_total, align 4
  br label %do.end43

do.end43:                                         ; preds = %if.end41
  br label %for.inc

for.inc:                                          ; preds = %do.end43
  %43 = load i32, ptr %level_i, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, ptr %level_i, align 4
  br label %for.cond26, !llvm.loop !15

for.end:                                          ; preds = %for.cond26
  br label %do.end44

do.end44:                                         ; preds = %for.end
  br label %if.end45

if.end45:                                         ; preds = %do.end44, %for.body
  %44 = load ptr, ptr %array, align 8
  %45 = load i64, ptr %i, align 8
  %call46 = call ptr @json_array_get_value(ptr noundef %44, i64 noundef %45)
  store ptr %call46, ptr %temp_value, align 8
  %46 = load ptr, ptr %temp_value, align 8
  %47 = load ptr, ptr %buf.addr, align 8
  %48 = load i32, ptr %level.addr, align 4
  %add47 = add nsw i32 %48, 1
  %49 = load i32, ptr %is_pretty.addr, align 4
  %50 = load ptr, ptr %num_buf.addr, align 8
  %call48 = call i32 @json_serialize_to_buffer_r(ptr noundef %46, ptr noundef %47, i32 noundef %add47, i32 noundef %49, ptr noundef %50)
  store i32 %call48, ptr %written, align 4
  %51 = load i32, ptr %written, align 4
  %cmp49 = icmp slt i32 %51, 0
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end45
  store i32 -1, ptr %retval, align 4
  br label %return

if.end52:                                         ; preds = %if.end45
  %52 = load ptr, ptr %buf.addr, align 8
  %cmp53 = icmp ne ptr %52, null
  br i1 %cmp53, label %if.then55, label %if.end58

if.then55:                                        ; preds = %if.end52
  %53 = load i32, ptr %written, align 4
  %54 = load ptr, ptr %buf.addr, align 8
  %idx.ext56 = sext i32 %53 to i64
  %add.ptr57 = getelementptr inbounds i8, ptr %54, i64 %idx.ext56
  store ptr %add.ptr57, ptr %buf.addr, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %if.end52
  %55 = load i32, ptr %written, align 4
  %56 = load i32, ptr %written_total, align 4
  %add59 = add nsw i32 %56, %55
  store i32 %add59, ptr %written_total, align 4
  %57 = load i64, ptr %i, align 8
  %58 = load i64, ptr %count, align 8
  %sub = sub i64 %58, 1
  %cmp60 = icmp ult i64 %57, %sub
  br i1 %cmp60, label %if.then62, label %if.end76

if.then62:                                        ; preds = %if.end58
  br label %do.body63

do.body63:                                        ; preds = %if.then62
  store i32 1, ptr %written, align 4
  %59 = load ptr, ptr %buf.addr, align 8
  %cmp64 = icmp ne ptr %59, null
  br i1 %cmp64, label %if.then66, label %if.end73

if.then66:                                        ; preds = %do.body63
  %60 = load ptr, ptr %buf.addr, align 8
  %61 = load i32, ptr %written, align 4
  %conv67 = sext i32 %61 to i64
  %62 = load ptr, ptr %buf.addr, align 8
  %63 = call i64 @llvm.objectsize.i64.p0(ptr %62, i1 false, i1 true, i1 false)
  %call68 = call ptr @__memcpy_chk(ptr noundef %60, ptr noundef @.str.13, i64 noundef %conv67, i64 noundef %63) #9
  %64 = load ptr, ptr %buf.addr, align 8
  %65 = load i32, ptr %written, align 4
  %idxprom69 = sext i32 %65 to i64
  %arrayidx70 = getelementptr inbounds i8, ptr %64, i64 %idxprom69
  store i8 0, ptr %arrayidx70, align 1
  %66 = load i32, ptr %written, align 4
  %67 = load ptr, ptr %buf.addr, align 8
  %idx.ext71 = sext i32 %66 to i64
  %add.ptr72 = getelementptr inbounds i8, ptr %67, i64 %idx.ext71
  store ptr %add.ptr72, ptr %buf.addr, align 8
  br label %if.end73

if.end73:                                         ; preds = %if.then66, %do.body63
  %68 = load i32, ptr %written, align 4
  %69 = load i32, ptr %written_total, align 4
  %add74 = add nsw i32 %69, %68
  store i32 %add74, ptr %written_total, align 4
  br label %do.end75

do.end75:                                         ; preds = %if.end73
  br label %if.end76

if.end76:                                         ; preds = %do.end75, %if.end58
  %70 = load i32, ptr %is_pretty.addr, align 4
  %tobool77 = icmp ne i32 %70, 0
  br i1 %tobool77, label %if.then78, label %if.end92

if.then78:                                        ; preds = %if.end76
  br label %do.body79

do.body79:                                        ; preds = %if.then78
  store i32 1, ptr %written, align 4
  %71 = load ptr, ptr %buf.addr, align 8
  %cmp80 = icmp ne ptr %71, null
  br i1 %cmp80, label %if.then82, label %if.end89

if.then82:                                        ; preds = %do.body79
  %72 = load ptr, ptr %buf.addr, align 8
  %73 = load i32, ptr %written, align 4
  %conv83 = sext i32 %73 to i64
  %74 = load ptr, ptr %buf.addr, align 8
  %75 = call i64 @llvm.objectsize.i64.p0(ptr %74, i1 false, i1 true, i1 false)
  %call84 = call ptr @__memcpy_chk(ptr noundef %72, ptr noundef @.str.3, i64 noundef %conv83, i64 noundef %75) #9
  %76 = load ptr, ptr %buf.addr, align 8
  %77 = load i32, ptr %written, align 4
  %idxprom85 = sext i32 %77 to i64
  %arrayidx86 = getelementptr inbounds i8, ptr %76, i64 %idxprom85
  store i8 0, ptr %arrayidx86, align 1
  %78 = load i32, ptr %written, align 4
  %79 = load ptr, ptr %buf.addr, align 8
  %idx.ext87 = sext i32 %78 to i64
  %add.ptr88 = getelementptr inbounds i8, ptr %79, i64 %idx.ext87
  store ptr %add.ptr88, ptr %buf.addr, align 8
  br label %if.end89

if.end89:                                         ; preds = %if.then82, %do.body79
  %80 = load i32, ptr %written, align 4
  %81 = load i32, ptr %written_total, align 4
  %add90 = add nsw i32 %81, %80
  store i32 %add90, ptr %written_total, align 4
  br label %do.end91

do.end91:                                         ; preds = %if.end89
  br label %if.end92

if.end92:                                         ; preds = %do.end91, %if.end76
  br label %for.inc93

for.inc93:                                        ; preds = %if.end92
  %82 = load i64, ptr %i, align 8
  %inc94 = add i64 %82, 1
  store i64 %inc94, ptr %i, align 8
  br label %for.cond, !llvm.loop !16

for.end95:                                        ; preds = %for.cond
  %83 = load i64, ptr %count, align 8
  %cmp96 = icmp ugt i64 %83, 0
  br i1 %cmp96, label %land.lhs.true98, label %if.end124

land.lhs.true98:                                  ; preds = %for.end95
  %84 = load i32, ptr %is_pretty.addr, align 4
  %tobool99 = icmp ne i32 %84, 0
  br i1 %tobool99, label %if.then100, label %if.end124

if.then100:                                       ; preds = %land.lhs.true98
  br label %do.body101

do.body101:                                       ; preds = %if.then100
  store i32 0, ptr %level_i102, align 4
  store i32 0, ptr %level_i102, align 4
  br label %for.cond103

for.cond103:                                      ; preds = %for.inc120, %do.body101
  %85 = load i32, ptr %level_i102, align 4
  %86 = load i32, ptr %level.addr, align 4
  %cmp104 = icmp slt i32 %85, %86
  br i1 %cmp104, label %for.body106, label %for.end122

for.body106:                                      ; preds = %for.cond103
  br label %do.body107

do.body107:                                       ; preds = %for.body106
  store i32 4, ptr %written, align 4
  %87 = load ptr, ptr %buf.addr, align 8
  %cmp108 = icmp ne ptr %87, null
  br i1 %cmp108, label %if.then110, label %if.end117

if.then110:                                       ; preds = %do.body107
  %88 = load ptr, ptr %buf.addr, align 8
  %89 = load i32, ptr %written, align 4
  %conv111 = sext i32 %89 to i64
  %90 = load ptr, ptr %buf.addr, align 8
  %91 = call i64 @llvm.objectsize.i64.p0(ptr %90, i1 false, i1 true, i1 false)
  %call112 = call ptr @__memcpy_chk(ptr noundef %88, ptr noundef @.str.12, i64 noundef %conv111, i64 noundef %91) #9
  %92 = load ptr, ptr %buf.addr, align 8
  %93 = load i32, ptr %written, align 4
  %idxprom113 = sext i32 %93 to i64
  %arrayidx114 = getelementptr inbounds i8, ptr %92, i64 %idxprom113
  store i8 0, ptr %arrayidx114, align 1
  %94 = load i32, ptr %written, align 4
  %95 = load ptr, ptr %buf.addr, align 8
  %idx.ext115 = sext i32 %94 to i64
  %add.ptr116 = getelementptr inbounds i8, ptr %95, i64 %idx.ext115
  store ptr %add.ptr116, ptr %buf.addr, align 8
  br label %if.end117

if.end117:                                        ; preds = %if.then110, %do.body107
  %96 = load i32, ptr %written, align 4
  %97 = load i32, ptr %written_total, align 4
  %add118 = add nsw i32 %97, %96
  store i32 %add118, ptr %written_total, align 4
  br label %do.end119

do.end119:                                        ; preds = %if.end117
  br label %for.inc120

for.inc120:                                       ; preds = %do.end119
  %98 = load i32, ptr %level_i102, align 4
  %inc121 = add nsw i32 %98, 1
  store i32 %inc121, ptr %level_i102, align 4
  br label %for.cond103, !llvm.loop !17

for.end122:                                       ; preds = %for.cond103
  br label %do.end123

do.end123:                                        ; preds = %for.end122
  br label %if.end124

if.end124:                                        ; preds = %do.end123, %land.lhs.true98, %for.end95
  br label %do.body125

do.body125:                                       ; preds = %if.end124
  store i32 1, ptr %written, align 4
  %99 = load ptr, ptr %buf.addr, align 8
  %cmp126 = icmp ne ptr %99, null
  br i1 %cmp126, label %if.then128, label %if.end135

if.then128:                                       ; preds = %do.body125
  %100 = load ptr, ptr %buf.addr, align 8
  %101 = load i32, ptr %written, align 4
  %conv129 = sext i32 %101 to i64
  %102 = load ptr, ptr %buf.addr, align 8
  %103 = call i64 @llvm.objectsize.i64.p0(ptr %102, i1 false, i1 true, i1 false)
  %call130 = call ptr @__memcpy_chk(ptr noundef %100, ptr noundef @.str.14, i64 noundef %conv129, i64 noundef %103) #9
  %104 = load ptr, ptr %buf.addr, align 8
  %105 = load i32, ptr %written, align 4
  %idxprom131 = sext i32 %105 to i64
  %arrayidx132 = getelementptr inbounds i8, ptr %104, i64 %idxprom131
  store i8 0, ptr %arrayidx132, align 1
  %106 = load i32, ptr %written, align 4
  %107 = load ptr, ptr %buf.addr, align 8
  %idx.ext133 = sext i32 %106 to i64
  %add.ptr134 = getelementptr inbounds i8, ptr %107, i64 %idx.ext133
  store ptr %add.ptr134, ptr %buf.addr, align 8
  br label %if.end135

if.end135:                                        ; preds = %if.then128, %do.body125
  %108 = load i32, ptr %written, align 4
  %109 = load i32, ptr %written_total, align 4
  %add136 = add nsw i32 %109, %108
  store i32 %add136, ptr %written_total, align 4
  br label %do.end137

do.end137:                                        ; preds = %if.end135
  %110 = load i32, ptr %written_total, align 4
  store i32 %110, ptr %retval, align 4
  br label %return

sw.bb138:                                         ; preds = %entry
  %111 = load ptr, ptr %value.addr, align 8
  %call139 = call ptr @json_value_get_object(ptr noundef %111)
  store ptr %call139, ptr %object, align 8
  %112 = load ptr, ptr %object, align 8
  %call140 = call i64 @json_object_get_count(ptr noundef %112)
  store i64 %call140, ptr %count, align 8
  br label %do.body141

do.body141:                                       ; preds = %sw.bb138
  store i32 1, ptr %written, align 4
  %113 = load ptr, ptr %buf.addr, align 8
  %cmp142 = icmp ne ptr %113, null
  br i1 %cmp142, label %if.then144, label %if.end151

if.then144:                                       ; preds = %do.body141
  %114 = load ptr, ptr %buf.addr, align 8
  %115 = load i32, ptr %written, align 4
  %conv145 = sext i32 %115 to i64
  %116 = load ptr, ptr %buf.addr, align 8
  %117 = call i64 @llvm.objectsize.i64.p0(ptr %116, i1 false, i1 true, i1 false)
  %call146 = call ptr @__memcpy_chk(ptr noundef %114, ptr noundef @.str.15, i64 noundef %conv145, i64 noundef %117) #9
  %118 = load ptr, ptr %buf.addr, align 8
  %119 = load i32, ptr %written, align 4
  %idxprom147 = sext i32 %119 to i64
  %arrayidx148 = getelementptr inbounds i8, ptr %118, i64 %idxprom147
  store i8 0, ptr %arrayidx148, align 1
  %120 = load i32, ptr %written, align 4
  %121 = load ptr, ptr %buf.addr, align 8
  %idx.ext149 = sext i32 %120 to i64
  %add.ptr150 = getelementptr inbounds i8, ptr %121, i64 %idx.ext149
  store ptr %add.ptr150, ptr %buf.addr, align 8
  br label %if.end151

if.end151:                                        ; preds = %if.then144, %do.body141
  %122 = load i32, ptr %written, align 4
  %123 = load i32, ptr %written_total, align 4
  %add152 = add nsw i32 %123, %122
  store i32 %add152, ptr %written_total, align 4
  br label %do.end153

do.end153:                                        ; preds = %if.end151
  %124 = load i64, ptr %count, align 8
  %cmp154 = icmp ugt i64 %124, 0
  br i1 %cmp154, label %land.lhs.true156, label %if.end172

land.lhs.true156:                                 ; preds = %do.end153
  %125 = load i32, ptr %is_pretty.addr, align 4
  %tobool157 = icmp ne i32 %125, 0
  br i1 %tobool157, label %if.then158, label %if.end172

if.then158:                                       ; preds = %land.lhs.true156
  br label %do.body159

do.body159:                                       ; preds = %if.then158
  store i32 1, ptr %written, align 4
  %126 = load ptr, ptr %buf.addr, align 8
  %cmp160 = icmp ne ptr %126, null
  br i1 %cmp160, label %if.then162, label %if.end169

if.then162:                                       ; preds = %do.body159
  %127 = load ptr, ptr %buf.addr, align 8
  %128 = load i32, ptr %written, align 4
  %conv163 = sext i32 %128 to i64
  %129 = load ptr, ptr %buf.addr, align 8
  %130 = call i64 @llvm.objectsize.i64.p0(ptr %129, i1 false, i1 true, i1 false)
  %call164 = call ptr @__memcpy_chk(ptr noundef %127, ptr noundef @.str.3, i64 noundef %conv163, i64 noundef %130) #9
  %131 = load ptr, ptr %buf.addr, align 8
  %132 = load i32, ptr %written, align 4
  %idxprom165 = sext i32 %132 to i64
  %arrayidx166 = getelementptr inbounds i8, ptr %131, i64 %idxprom165
  store i8 0, ptr %arrayidx166, align 1
  %133 = load i32, ptr %written, align 4
  %134 = load ptr, ptr %buf.addr, align 8
  %idx.ext167 = sext i32 %133 to i64
  %add.ptr168 = getelementptr inbounds i8, ptr %134, i64 %idx.ext167
  store ptr %add.ptr168, ptr %buf.addr, align 8
  br label %if.end169

if.end169:                                        ; preds = %if.then162, %do.body159
  %135 = load i32, ptr %written, align 4
  %136 = load i32, ptr %written_total, align 4
  %add170 = add nsw i32 %136, %135
  store i32 %add170, ptr %written_total, align 4
  br label %do.end171

do.end171:                                        ; preds = %if.end169
  br label %if.end172

if.end172:                                        ; preds = %do.end171, %land.lhs.true156, %do.end153
  store i64 0, ptr %i, align 8
  br label %for.cond173

for.cond173:                                      ; preds = %for.inc299, %if.end172
  %137 = load i64, ptr %i, align 8
  %138 = load i64, ptr %count, align 8
  %cmp174 = icmp ult i64 %137, %138
  br i1 %cmp174, label %for.body176, label %for.end301

for.body176:                                      ; preds = %for.cond173
  %139 = load ptr, ptr %object, align 8
  %140 = load i64, ptr %i, align 8
  %call177 = call ptr @json_object_get_name(ptr noundef %139, i64 noundef %140)
  store ptr %call177, ptr %key, align 8
  %141 = load ptr, ptr %key, align 8
  %cmp178 = icmp eq ptr %141, null
  br i1 %cmp178, label %if.then180, label %if.end181

if.then180:                                       ; preds = %for.body176
  store i32 -1, ptr %retval, align 4
  br label %return

if.end181:                                        ; preds = %for.body176
  %142 = load i32, ptr %is_pretty.addr, align 4
  %tobool182 = icmp ne i32 %142, 0
  br i1 %tobool182, label %if.then183, label %if.end208

if.then183:                                       ; preds = %if.end181
  br label %do.body184

do.body184:                                       ; preds = %if.then183
  store i32 0, ptr %level_i185, align 4
  store i32 0, ptr %level_i185, align 4
  br label %for.cond186

for.cond186:                                      ; preds = %for.inc204, %do.body184
  %143 = load i32, ptr %level_i185, align 4
  %144 = load i32, ptr %level.addr, align 4
  %add187 = add nsw i32 %144, 1
  %cmp188 = icmp slt i32 %143, %add187
  br i1 %cmp188, label %for.body190, label %for.end206

for.body190:                                      ; preds = %for.cond186
  br label %do.body191

do.body191:                                       ; preds = %for.body190
  store i32 4, ptr %written, align 4
  %145 = load ptr, ptr %buf.addr, align 8
  %cmp192 = icmp ne ptr %145, null
  br i1 %cmp192, label %if.then194, label %if.end201

if.then194:                                       ; preds = %do.body191
  %146 = load ptr, ptr %buf.addr, align 8
  %147 = load i32, ptr %written, align 4
  %conv195 = sext i32 %147 to i64
  %148 = load ptr, ptr %buf.addr, align 8
  %149 = call i64 @llvm.objectsize.i64.p0(ptr %148, i1 false, i1 true, i1 false)
  %call196 = call ptr @__memcpy_chk(ptr noundef %146, ptr noundef @.str.12, i64 noundef %conv195, i64 noundef %149) #9
  %150 = load ptr, ptr %buf.addr, align 8
  %151 = load i32, ptr %written, align 4
  %idxprom197 = sext i32 %151 to i64
  %arrayidx198 = getelementptr inbounds i8, ptr %150, i64 %idxprom197
  store i8 0, ptr %arrayidx198, align 1
  %152 = load i32, ptr %written, align 4
  %153 = load ptr, ptr %buf.addr, align 8
  %idx.ext199 = sext i32 %152 to i64
  %add.ptr200 = getelementptr inbounds i8, ptr %153, i64 %idx.ext199
  store ptr %add.ptr200, ptr %buf.addr, align 8
  br label %if.end201

if.end201:                                        ; preds = %if.then194, %do.body191
  %154 = load i32, ptr %written, align 4
  %155 = load i32, ptr %written_total, align 4
  %add202 = add nsw i32 %155, %154
  store i32 %add202, ptr %written_total, align 4
  br label %do.end203

do.end203:                                        ; preds = %if.end201
  br label %for.inc204

for.inc204:                                       ; preds = %do.end203
  %156 = load i32, ptr %level_i185, align 4
  %inc205 = add nsw i32 %156, 1
  store i32 %inc205, ptr %level_i185, align 4
  br label %for.cond186, !llvm.loop !18

for.end206:                                       ; preds = %for.cond186
  br label %do.end207

do.end207:                                        ; preds = %for.end206
  br label %if.end208

if.end208:                                        ; preds = %do.end207, %if.end181
  %157 = load ptr, ptr %key, align 8
  %158 = load ptr, ptr %key, align 8
  %call209 = call i64 @strlen(ptr noundef %158)
  %159 = load ptr, ptr %buf.addr, align 8
  %call210 = call i32 @json_serialize_string(ptr noundef %157, i64 noundef %call209, ptr noundef %159)
  store i32 %call210, ptr %written, align 4
  %160 = load i32, ptr %written, align 4
  %cmp211 = icmp slt i32 %160, 0
  br i1 %cmp211, label %if.then213, label %if.end214

if.then213:                                       ; preds = %if.end208
  store i32 -1, ptr %retval, align 4
  br label %return

if.end214:                                        ; preds = %if.end208
  %161 = load ptr, ptr %buf.addr, align 8
  %cmp215 = icmp ne ptr %161, null
  br i1 %cmp215, label %if.then217, label %if.end220

if.then217:                                       ; preds = %if.end214
  %162 = load i32, ptr %written, align 4
  %163 = load ptr, ptr %buf.addr, align 8
  %idx.ext218 = sext i32 %162 to i64
  %add.ptr219 = getelementptr inbounds i8, ptr %163, i64 %idx.ext218
  store ptr %add.ptr219, ptr %buf.addr, align 8
  br label %if.end220

if.end220:                                        ; preds = %if.then217, %if.end214
  %164 = load i32, ptr %written, align 4
  %165 = load i32, ptr %written_total, align 4
  %add221 = add nsw i32 %165, %164
  store i32 %add221, ptr %written_total, align 4
  br label %do.body222

do.body222:                                       ; preds = %if.end220
  store i32 1, ptr %written, align 4
  %166 = load ptr, ptr %buf.addr, align 8
  %cmp223 = icmp ne ptr %166, null
  br i1 %cmp223, label %if.then225, label %if.end232

if.then225:                                       ; preds = %do.body222
  %167 = load ptr, ptr %buf.addr, align 8
  %168 = load i32, ptr %written, align 4
  %conv226 = sext i32 %168 to i64
  %169 = load ptr, ptr %buf.addr, align 8
  %170 = call i64 @llvm.objectsize.i64.p0(ptr %169, i1 false, i1 true, i1 false)
  %call227 = call ptr @__memcpy_chk(ptr noundef %167, ptr noundef @.str.16, i64 noundef %conv226, i64 noundef %170) #9
  %171 = load ptr, ptr %buf.addr, align 8
  %172 = load i32, ptr %written, align 4
  %idxprom228 = sext i32 %172 to i64
  %arrayidx229 = getelementptr inbounds i8, ptr %171, i64 %idxprom228
  store i8 0, ptr %arrayidx229, align 1
  %173 = load i32, ptr %written, align 4
  %174 = load ptr, ptr %buf.addr, align 8
  %idx.ext230 = sext i32 %173 to i64
  %add.ptr231 = getelementptr inbounds i8, ptr %174, i64 %idx.ext230
  store ptr %add.ptr231, ptr %buf.addr, align 8
  br label %if.end232

if.end232:                                        ; preds = %if.then225, %do.body222
  %175 = load i32, ptr %written, align 4
  %176 = load i32, ptr %written_total, align 4
  %add233 = add nsw i32 %176, %175
  store i32 %add233, ptr %written_total, align 4
  br label %do.end234

do.end234:                                        ; preds = %if.end232
  %177 = load i32, ptr %is_pretty.addr, align 4
  %tobool235 = icmp ne i32 %177, 0
  br i1 %tobool235, label %if.then236, label %if.end250

if.then236:                                       ; preds = %do.end234
  br label %do.body237

do.body237:                                       ; preds = %if.then236
  store i32 1, ptr %written, align 4
  %178 = load ptr, ptr %buf.addr, align 8
  %cmp238 = icmp ne ptr %178, null
  br i1 %cmp238, label %if.then240, label %if.end247

if.then240:                                       ; preds = %do.body237
  %179 = load ptr, ptr %buf.addr, align 8
  %180 = load i32, ptr %written, align 4
  %conv241 = sext i32 %180 to i64
  %181 = load ptr, ptr %buf.addr, align 8
  %182 = call i64 @llvm.objectsize.i64.p0(ptr %181, i1 false, i1 true, i1 false)
  %call242 = call ptr @__memcpy_chk(ptr noundef %179, ptr noundef @.str.17, i64 noundef %conv241, i64 noundef %182) #9
  %183 = load ptr, ptr %buf.addr, align 8
  %184 = load i32, ptr %written, align 4
  %idxprom243 = sext i32 %184 to i64
  %arrayidx244 = getelementptr inbounds i8, ptr %183, i64 %idxprom243
  store i8 0, ptr %arrayidx244, align 1
  %185 = load i32, ptr %written, align 4
  %186 = load ptr, ptr %buf.addr, align 8
  %idx.ext245 = sext i32 %185 to i64
  %add.ptr246 = getelementptr inbounds i8, ptr %186, i64 %idx.ext245
  store ptr %add.ptr246, ptr %buf.addr, align 8
  br label %if.end247

if.end247:                                        ; preds = %if.then240, %do.body237
  %187 = load i32, ptr %written, align 4
  %188 = load i32, ptr %written_total, align 4
  %add248 = add nsw i32 %188, %187
  store i32 %add248, ptr %written_total, align 4
  br label %do.end249

do.end249:                                        ; preds = %if.end247
  br label %if.end250

if.end250:                                        ; preds = %do.end249, %do.end234
  %189 = load ptr, ptr %object, align 8
  %190 = load i64, ptr %i, align 8
  %call251 = call ptr @json_object_get_value_at(ptr noundef %189, i64 noundef %190)
  store ptr %call251, ptr %temp_value, align 8
  %191 = load ptr, ptr %temp_value, align 8
  %192 = load ptr, ptr %buf.addr, align 8
  %193 = load i32, ptr %level.addr, align 4
  %add252 = add nsw i32 %193, 1
  %194 = load i32, ptr %is_pretty.addr, align 4
  %195 = load ptr, ptr %num_buf.addr, align 8
  %call253 = call i32 @json_serialize_to_buffer_r(ptr noundef %191, ptr noundef %192, i32 noundef %add252, i32 noundef %194, ptr noundef %195)
  store i32 %call253, ptr %written, align 4
  %196 = load i32, ptr %written, align 4
  %cmp254 = icmp slt i32 %196, 0
  br i1 %cmp254, label %if.then256, label %if.end257

if.then256:                                       ; preds = %if.end250
  store i32 -1, ptr %retval, align 4
  br label %return

if.end257:                                        ; preds = %if.end250
  %197 = load ptr, ptr %buf.addr, align 8
  %cmp258 = icmp ne ptr %197, null
  br i1 %cmp258, label %if.then260, label %if.end263

if.then260:                                       ; preds = %if.end257
  %198 = load i32, ptr %written, align 4
  %199 = load ptr, ptr %buf.addr, align 8
  %idx.ext261 = sext i32 %198 to i64
  %add.ptr262 = getelementptr inbounds i8, ptr %199, i64 %idx.ext261
  store ptr %add.ptr262, ptr %buf.addr, align 8
  br label %if.end263

if.end263:                                        ; preds = %if.then260, %if.end257
  %200 = load i32, ptr %written, align 4
  %201 = load i32, ptr %written_total, align 4
  %add264 = add nsw i32 %201, %200
  store i32 %add264, ptr %written_total, align 4
  %202 = load i64, ptr %i, align 8
  %203 = load i64, ptr %count, align 8
  %sub265 = sub i64 %203, 1
  %cmp266 = icmp ult i64 %202, %sub265
  br i1 %cmp266, label %if.then268, label %if.end282

if.then268:                                       ; preds = %if.end263
  br label %do.body269

do.body269:                                       ; preds = %if.then268
  store i32 1, ptr %written, align 4
  %204 = load ptr, ptr %buf.addr, align 8
  %cmp270 = icmp ne ptr %204, null
  br i1 %cmp270, label %if.then272, label %if.end279

if.then272:                                       ; preds = %do.body269
  %205 = load ptr, ptr %buf.addr, align 8
  %206 = load i32, ptr %written, align 4
  %conv273 = sext i32 %206 to i64
  %207 = load ptr, ptr %buf.addr, align 8
  %208 = call i64 @llvm.objectsize.i64.p0(ptr %207, i1 false, i1 true, i1 false)
  %call274 = call ptr @__memcpy_chk(ptr noundef %205, ptr noundef @.str.13, i64 noundef %conv273, i64 noundef %208) #9
  %209 = load ptr, ptr %buf.addr, align 8
  %210 = load i32, ptr %written, align 4
  %idxprom275 = sext i32 %210 to i64
  %arrayidx276 = getelementptr inbounds i8, ptr %209, i64 %idxprom275
  store i8 0, ptr %arrayidx276, align 1
  %211 = load i32, ptr %written, align 4
  %212 = load ptr, ptr %buf.addr, align 8
  %idx.ext277 = sext i32 %211 to i64
  %add.ptr278 = getelementptr inbounds i8, ptr %212, i64 %idx.ext277
  store ptr %add.ptr278, ptr %buf.addr, align 8
  br label %if.end279

if.end279:                                        ; preds = %if.then272, %do.body269
  %213 = load i32, ptr %written, align 4
  %214 = load i32, ptr %written_total, align 4
  %add280 = add nsw i32 %214, %213
  store i32 %add280, ptr %written_total, align 4
  br label %do.end281

do.end281:                                        ; preds = %if.end279
  br label %if.end282

if.end282:                                        ; preds = %do.end281, %if.end263
  %215 = load i32, ptr %is_pretty.addr, align 4
  %tobool283 = icmp ne i32 %215, 0
  br i1 %tobool283, label %if.then284, label %if.end298

if.then284:                                       ; preds = %if.end282
  br label %do.body285

do.body285:                                       ; preds = %if.then284
  store i32 1, ptr %written, align 4
  %216 = load ptr, ptr %buf.addr, align 8
  %cmp286 = icmp ne ptr %216, null
  br i1 %cmp286, label %if.then288, label %if.end295

if.then288:                                       ; preds = %do.body285
  %217 = load ptr, ptr %buf.addr, align 8
  %218 = load i32, ptr %written, align 4
  %conv289 = sext i32 %218 to i64
  %219 = load ptr, ptr %buf.addr, align 8
  %220 = call i64 @llvm.objectsize.i64.p0(ptr %219, i1 false, i1 true, i1 false)
  %call290 = call ptr @__memcpy_chk(ptr noundef %217, ptr noundef @.str.3, i64 noundef %conv289, i64 noundef %220) #9
  %221 = load ptr, ptr %buf.addr, align 8
  %222 = load i32, ptr %written, align 4
  %idxprom291 = sext i32 %222 to i64
  %arrayidx292 = getelementptr inbounds i8, ptr %221, i64 %idxprom291
  store i8 0, ptr %arrayidx292, align 1
  %223 = load i32, ptr %written, align 4
  %224 = load ptr, ptr %buf.addr, align 8
  %idx.ext293 = sext i32 %223 to i64
  %add.ptr294 = getelementptr inbounds i8, ptr %224, i64 %idx.ext293
  store ptr %add.ptr294, ptr %buf.addr, align 8
  br label %if.end295

if.end295:                                        ; preds = %if.then288, %do.body285
  %225 = load i32, ptr %written, align 4
  %226 = load i32, ptr %written_total, align 4
  %add296 = add nsw i32 %226, %225
  store i32 %add296, ptr %written_total, align 4
  br label %do.end297

do.end297:                                        ; preds = %if.end295
  br label %if.end298

if.end298:                                        ; preds = %do.end297, %if.end282
  br label %for.inc299

for.inc299:                                       ; preds = %if.end298
  %227 = load i64, ptr %i, align 8
  %inc300 = add i64 %227, 1
  store i64 %inc300, ptr %i, align 8
  br label %for.cond173, !llvm.loop !19

for.end301:                                       ; preds = %for.cond173
  %228 = load i64, ptr %count, align 8
  %cmp302 = icmp ugt i64 %228, 0
  br i1 %cmp302, label %land.lhs.true304, label %if.end330

land.lhs.true304:                                 ; preds = %for.end301
  %229 = load i32, ptr %is_pretty.addr, align 4
  %tobool305 = icmp ne i32 %229, 0
  br i1 %tobool305, label %if.then306, label %if.end330

if.then306:                                       ; preds = %land.lhs.true304
  br label %do.body307

do.body307:                                       ; preds = %if.then306
  store i32 0, ptr %level_i308, align 4
  store i32 0, ptr %level_i308, align 4
  br label %for.cond309

for.cond309:                                      ; preds = %for.inc326, %do.body307
  %230 = load i32, ptr %level_i308, align 4
  %231 = load i32, ptr %level.addr, align 4
  %cmp310 = icmp slt i32 %230, %231
  br i1 %cmp310, label %for.body312, label %for.end328

for.body312:                                      ; preds = %for.cond309
  br label %do.body313

do.body313:                                       ; preds = %for.body312
  store i32 4, ptr %written, align 4
  %232 = load ptr, ptr %buf.addr, align 8
  %cmp314 = icmp ne ptr %232, null
  br i1 %cmp314, label %if.then316, label %if.end323

if.then316:                                       ; preds = %do.body313
  %233 = load ptr, ptr %buf.addr, align 8
  %234 = load i32, ptr %written, align 4
  %conv317 = sext i32 %234 to i64
  %235 = load ptr, ptr %buf.addr, align 8
  %236 = call i64 @llvm.objectsize.i64.p0(ptr %235, i1 false, i1 true, i1 false)
  %call318 = call ptr @__memcpy_chk(ptr noundef %233, ptr noundef @.str.12, i64 noundef %conv317, i64 noundef %236) #9
  %237 = load ptr, ptr %buf.addr, align 8
  %238 = load i32, ptr %written, align 4
  %idxprom319 = sext i32 %238 to i64
  %arrayidx320 = getelementptr inbounds i8, ptr %237, i64 %idxprom319
  store i8 0, ptr %arrayidx320, align 1
  %239 = load i32, ptr %written, align 4
  %240 = load ptr, ptr %buf.addr, align 8
  %idx.ext321 = sext i32 %239 to i64
  %add.ptr322 = getelementptr inbounds i8, ptr %240, i64 %idx.ext321
  store ptr %add.ptr322, ptr %buf.addr, align 8
  br label %if.end323

if.end323:                                        ; preds = %if.then316, %do.body313
  %241 = load i32, ptr %written, align 4
  %242 = load i32, ptr %written_total, align 4
  %add324 = add nsw i32 %242, %241
  store i32 %add324, ptr %written_total, align 4
  br label %do.end325

do.end325:                                        ; preds = %if.end323
  br label %for.inc326

for.inc326:                                       ; preds = %do.end325
  %243 = load i32, ptr %level_i308, align 4
  %inc327 = add nsw i32 %243, 1
  store i32 %inc327, ptr %level_i308, align 4
  br label %for.cond309, !llvm.loop !20

for.end328:                                       ; preds = %for.cond309
  br label %do.end329

do.end329:                                        ; preds = %for.end328
  br label %if.end330

if.end330:                                        ; preds = %do.end329, %land.lhs.true304, %for.end301
  br label %do.body331

do.body331:                                       ; preds = %if.end330
  store i32 1, ptr %written, align 4
  %244 = load ptr, ptr %buf.addr, align 8
  %cmp332 = icmp ne ptr %244, null
  br i1 %cmp332, label %if.then334, label %if.end341

if.then334:                                       ; preds = %do.body331
  %245 = load ptr, ptr %buf.addr, align 8
  %246 = load i32, ptr %written, align 4
  %conv335 = sext i32 %246 to i64
  %247 = load ptr, ptr %buf.addr, align 8
  %248 = call i64 @llvm.objectsize.i64.p0(ptr %247, i1 false, i1 true, i1 false)
  %call336 = call ptr @__memcpy_chk(ptr noundef %245, ptr noundef @.str.18, i64 noundef %conv335, i64 noundef %248) #9
  %249 = load ptr, ptr %buf.addr, align 8
  %250 = load i32, ptr %written, align 4
  %idxprom337 = sext i32 %250 to i64
  %arrayidx338 = getelementptr inbounds i8, ptr %249, i64 %idxprom337
  store i8 0, ptr %arrayidx338, align 1
  %251 = load i32, ptr %written, align 4
  %252 = load ptr, ptr %buf.addr, align 8
  %idx.ext339 = sext i32 %251 to i64
  %add.ptr340 = getelementptr inbounds i8, ptr %252, i64 %idx.ext339
  store ptr %add.ptr340, ptr %buf.addr, align 8
  br label %if.end341

if.end341:                                        ; preds = %if.then334, %do.body331
  %253 = load i32, ptr %written, align 4
  %254 = load i32, ptr %written_total, align 4
  %add342 = add nsw i32 %254, %253
  store i32 %add342, ptr %written_total, align 4
  br label %do.end343

do.end343:                                        ; preds = %if.end341
  %255 = load i32, ptr %written_total, align 4
  store i32 %255, ptr %retval, align 4
  br label %return

sw.bb344:                                         ; preds = %entry
  %256 = load ptr, ptr %value.addr, align 8
  %call345 = call ptr @json_value_get_string(ptr noundef %256)
  store ptr %call345, ptr %string, align 8
  %257 = load ptr, ptr %string, align 8
  %cmp346 = icmp eq ptr %257, null
  br i1 %cmp346, label %if.then348, label %if.end349

if.then348:                                       ; preds = %sw.bb344
  store i32 -1, ptr %retval, align 4
  br label %return

if.end349:                                        ; preds = %sw.bb344
  %258 = load ptr, ptr %value.addr, align 8
  %call350 = call i64 @json_value_get_string_len(ptr noundef %258)
  store i64 %call350, ptr %len, align 8
  %259 = load ptr, ptr %string, align 8
  %260 = load i64, ptr %len, align 8
  %261 = load ptr, ptr %buf.addr, align 8
  %call351 = call i32 @json_serialize_string(ptr noundef %259, i64 noundef %260, ptr noundef %261)
  store i32 %call351, ptr %written, align 4
  %262 = load i32, ptr %written, align 4
  %cmp352 = icmp slt i32 %262, 0
  br i1 %cmp352, label %if.then354, label %if.end355

if.then354:                                       ; preds = %if.end349
  store i32 -1, ptr %retval, align 4
  br label %return

if.end355:                                        ; preds = %if.end349
  %263 = load ptr, ptr %buf.addr, align 8
  %cmp356 = icmp ne ptr %263, null
  br i1 %cmp356, label %if.then358, label %if.end361

if.then358:                                       ; preds = %if.end355
  %264 = load i32, ptr %written, align 4
  %265 = load ptr, ptr %buf.addr, align 8
  %idx.ext359 = sext i32 %264 to i64
  %add.ptr360 = getelementptr inbounds i8, ptr %265, i64 %idx.ext359
  store ptr %add.ptr360, ptr %buf.addr, align 8
  br label %if.end361

if.end361:                                        ; preds = %if.then358, %if.end355
  %266 = load i32, ptr %written, align 4
  %267 = load i32, ptr %written_total, align 4
  %add362 = add nsw i32 %267, %266
  store i32 %add362, ptr %written_total, align 4
  %268 = load i32, ptr %written_total, align 4
  store i32 %268, ptr %retval, align 4
  br label %return

sw.bb363:                                         ; preds = %entry
  %269 = load ptr, ptr %value.addr, align 8
  %call364 = call i32 @json_value_get_boolean(ptr noundef %269)
  %tobool365 = icmp ne i32 %call364, 0
  br i1 %tobool365, label %if.then366, label %if.else

if.then366:                                       ; preds = %sw.bb363
  br label %do.body367

do.body367:                                       ; preds = %if.then366
  store i32 4, ptr %written, align 4
  %270 = load ptr, ptr %buf.addr, align 8
  %cmp368 = icmp ne ptr %270, null
  br i1 %cmp368, label %if.then370, label %if.end377

if.then370:                                       ; preds = %do.body367
  %271 = load ptr, ptr %buf.addr, align 8
  %272 = load i32, ptr %written, align 4
  %conv371 = sext i32 %272 to i64
  %273 = load ptr, ptr %buf.addr, align 8
  %274 = call i64 @llvm.objectsize.i64.p0(ptr %273, i1 false, i1 true, i1 false)
  %call372 = call ptr @__memcpy_chk(ptr noundef %271, ptr noundef @.str.6, i64 noundef %conv371, i64 noundef %274) #9
  %275 = load ptr, ptr %buf.addr, align 8
  %276 = load i32, ptr %written, align 4
  %idxprom373 = sext i32 %276 to i64
  %arrayidx374 = getelementptr inbounds i8, ptr %275, i64 %idxprom373
  store i8 0, ptr %arrayidx374, align 1
  %277 = load i32, ptr %written, align 4
  %278 = load ptr, ptr %buf.addr, align 8
  %idx.ext375 = sext i32 %277 to i64
  %add.ptr376 = getelementptr inbounds i8, ptr %278, i64 %idx.ext375
  store ptr %add.ptr376, ptr %buf.addr, align 8
  br label %if.end377

if.end377:                                        ; preds = %if.then370, %do.body367
  %279 = load i32, ptr %written, align 4
  %280 = load i32, ptr %written_total, align 4
  %add378 = add nsw i32 %280, %279
  store i32 %add378, ptr %written_total, align 4
  br label %do.end379

do.end379:                                        ; preds = %if.end377
  br label %if.end393

if.else:                                          ; preds = %sw.bb363
  br label %do.body380

do.body380:                                       ; preds = %if.else
  store i32 5, ptr %written, align 4
  %281 = load ptr, ptr %buf.addr, align 8
  %cmp381 = icmp ne ptr %281, null
  br i1 %cmp381, label %if.then383, label %if.end390

if.then383:                                       ; preds = %do.body380
  %282 = load ptr, ptr %buf.addr, align 8
  %283 = load i32, ptr %written, align 4
  %conv384 = sext i32 %283 to i64
  %284 = load ptr, ptr %buf.addr, align 8
  %285 = call i64 @llvm.objectsize.i64.p0(ptr %284, i1 false, i1 true, i1 false)
  %call385 = call ptr @__memcpy_chk(ptr noundef %282, ptr noundef @.str.7, i64 noundef %conv384, i64 noundef %285) #9
  %286 = load ptr, ptr %buf.addr, align 8
  %287 = load i32, ptr %written, align 4
  %idxprom386 = sext i32 %287 to i64
  %arrayidx387 = getelementptr inbounds i8, ptr %286, i64 %idxprom386
  store i8 0, ptr %arrayidx387, align 1
  %288 = load i32, ptr %written, align 4
  %289 = load ptr, ptr %buf.addr, align 8
  %idx.ext388 = sext i32 %288 to i64
  %add.ptr389 = getelementptr inbounds i8, ptr %289, i64 %idx.ext388
  store ptr %add.ptr389, ptr %buf.addr, align 8
  br label %if.end390

if.end390:                                        ; preds = %if.then383, %do.body380
  %290 = load i32, ptr %written, align 4
  %291 = load i32, ptr %written_total, align 4
  %add391 = add nsw i32 %291, %290
  store i32 %add391, ptr %written_total, align 4
  br label %do.end392

do.end392:                                        ; preds = %if.end390
  br label %if.end393

if.end393:                                        ; preds = %do.end392, %do.end379
  %292 = load i32, ptr %written_total, align 4
  store i32 %292, ptr %retval, align 4
  br label %return

sw.bb394:                                         ; preds = %entry
  %293 = load ptr, ptr %value.addr, align 8
  %call395 = call double @json_value_get_number(ptr noundef %293)
  store double %call395, ptr %num, align 8
  %294 = load ptr, ptr %buf.addr, align 8
  %cmp396 = icmp ne ptr %294, null
  br i1 %cmp396, label %if.then398, label %if.end399

if.then398:                                       ; preds = %sw.bb394
  %295 = load ptr, ptr %buf.addr, align 8
  store ptr %295, ptr %num_buf.addr, align 8
  br label %if.end399

if.end399:                                        ; preds = %if.then398, %sw.bb394
  %296 = load ptr, ptr @parson_number_serialization_function, align 8
  %tobool400 = icmp ne ptr %296, null
  br i1 %tobool400, label %if.then401, label %if.else403

if.then401:                                       ; preds = %if.end399
  %297 = load ptr, ptr @parson_number_serialization_function, align 8
  %298 = load double, ptr %num, align 8
  %299 = load ptr, ptr %num_buf.addr, align 8
  %call402 = call i32 %297(double noundef %298, ptr noundef %299)
  store i32 %call402, ptr %written, align 4
  br label %if.end406

if.else403:                                       ; preds = %if.end399
  %300 = load ptr, ptr @parson_float_format, align 8
  %tobool404 = icmp ne ptr %300, null
  br i1 %tobool404, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else403
  %301 = load ptr, ptr @parson_float_format, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.else403
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %301, %cond.true ], [ @.str.19, %cond.false ]
  store ptr %cond, ptr %float_format, align 8
  %302 = load ptr, ptr %num_buf.addr, align 8
  %303 = load ptr, ptr %float_format, align 8
  %304 = load double, ptr %num, align 8
  %call405 = call i32 (ptr, ptr, ...) @parson_sprintf(ptr noundef %302, ptr noundef %303, double noundef %304)
  store i32 %call405, ptr %written, align 4
  br label %if.end406

if.end406:                                        ; preds = %cond.end, %if.then401
  %305 = load i32, ptr %written, align 4
  %cmp407 = icmp slt i32 %305, 0
  br i1 %cmp407, label %if.then409, label %if.end410

if.then409:                                       ; preds = %if.end406
  store i32 -1, ptr %retval, align 4
  br label %return

if.end410:                                        ; preds = %if.end406
  %306 = load ptr, ptr %buf.addr, align 8
  %cmp411 = icmp ne ptr %306, null
  br i1 %cmp411, label %if.then413, label %if.end416

if.then413:                                       ; preds = %if.end410
  %307 = load i32, ptr %written, align 4
  %308 = load ptr, ptr %buf.addr, align 8
  %idx.ext414 = sext i32 %307 to i64
  %add.ptr415 = getelementptr inbounds i8, ptr %308, i64 %idx.ext414
  store ptr %add.ptr415, ptr %buf.addr, align 8
  br label %if.end416

if.end416:                                        ; preds = %if.then413, %if.end410
  %309 = load i32, ptr %written, align 4
  %310 = load i32, ptr %written_total, align 4
  %add417 = add nsw i32 %310, %309
  store i32 %add417, ptr %written_total, align 4
  %311 = load i32, ptr %written_total, align 4
  store i32 %311, ptr %retval, align 4
  br label %return

sw.bb418:                                         ; preds = %entry
  br label %do.body419

do.body419:                                       ; preds = %sw.bb418
  store i32 4, ptr %written, align 4
  %312 = load ptr, ptr %buf.addr, align 8
  %cmp420 = icmp ne ptr %312, null
  br i1 %cmp420, label %if.then422, label %if.end429

if.then422:                                       ; preds = %do.body419
  %313 = load ptr, ptr %buf.addr, align 8
  %314 = load i32, ptr %written, align 4
  %conv423 = sext i32 %314 to i64
  %315 = load ptr, ptr %buf.addr, align 8
  %316 = call i64 @llvm.objectsize.i64.p0(ptr %315, i1 false, i1 true, i1 false)
  %call424 = call ptr @__memcpy_chk(ptr noundef %313, ptr noundef @.str.10, i64 noundef %conv423, i64 noundef %316) #9
  %317 = load ptr, ptr %buf.addr, align 8
  %318 = load i32, ptr %written, align 4
  %idxprom425 = sext i32 %318 to i64
  %arrayidx426 = getelementptr inbounds i8, ptr %317, i64 %idxprom425
  store i8 0, ptr %arrayidx426, align 1
  %319 = load i32, ptr %written, align 4
  %320 = load ptr, ptr %buf.addr, align 8
  %idx.ext427 = sext i32 %319 to i64
  %add.ptr428 = getelementptr inbounds i8, ptr %320, i64 %idx.ext427
  store ptr %add.ptr428, ptr %buf.addr, align 8
  br label %if.end429

if.end429:                                        ; preds = %if.then422, %do.body419
  %321 = load i32, ptr %written, align 4
  %322 = load i32, ptr %written_total, align 4
  %add430 = add nsw i32 %322, %321
  store i32 %add430, ptr %written_total, align 4
  br label %do.end431

do.end431:                                        ; preds = %if.end429
  %323 = load i32, ptr %written_total, align 4
  store i32 %323, ptr %retval, align 4
  br label %return

sw.bb432:                                         ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb432, %do.end431, %if.end416, %if.then409, %if.end393, %if.end361, %if.then354, %if.then348, %do.end343, %if.then256, %if.then213, %if.then180, %do.end137, %if.then51
  %324 = load i32, ptr %retval, align 4
  ret i32 %324
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @json_serialize_to_buffer(ptr noundef %value, ptr noundef %buf, i64 noundef %buf_size_in_bytes) #0 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %buf_size_in_bytes.addr = alloca i64, align 8
  %written = alloca i32, align 4
  %needed_size_in_bytes = alloca i64, align 8
  store ptr %value, ptr %value.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %buf_size_in_bytes, ptr %buf_size_in_bytes.addr, align 8
  store i32 -1, ptr %written, align 4
  %0 = load ptr, ptr %value.addr, align 8
  %call = call i64 @json_serialization_size(ptr noundef %0)
  store i64 %call, ptr %needed_size_in_bytes, align 8
  %1 = load i64, ptr %needed_size_in_bytes, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i64, ptr %buf_size_in_bytes.addr, align 8
  %3 = load i64, ptr %needed_size_in_bytes, align 8
  %cmp1 = icmp ult i64 %2, %3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %value.addr, align 8
  %5 = load ptr, ptr %buf.addr, align 8
  %call2 = call i32 @json_serialize_to_buffer_r(ptr noundef %4, ptr noundef %5, i32 noundef 0, i32 noundef 0, ptr noundef null)
  store i32 %call2, ptr %written, align 4
  %6 = load i32, ptr %written, align 4
  %cmp3 = icmp slt i32 %6, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @json_serialize_to_file(ptr noundef %value, ptr noundef %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %return_code = alloca i32, align 4
  %fp = alloca ptr, align 8
  %serialized_string = alloca ptr, align 8
  store ptr %value, ptr %value.addr, align 8
  store ptr %filename, ptr %filename.addr, align 8
  store i32 0, ptr %return_code, align 4
  store ptr null, ptr %fp, align 8
  %0 = load ptr, ptr %value.addr, align 8
  %call = call ptr @json_serialize_to_string(ptr noundef %0)
  store ptr %call, ptr %serialized_string, align 8
  %1 = load ptr, ptr %serialized_string, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %filename.addr, align 8
  %call1 = call ptr @"\01_fopen"(ptr noundef %2, ptr noundef @.str.4)
  store ptr %call1, ptr %fp, align 8
  %3 = load ptr, ptr %fp, align 8
  %cmp2 = icmp eq ptr %3, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr %serialized_string, align 8
  call void @json_free_serialized_string(ptr noundef %4)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %5 = load ptr, ptr %serialized_string, align 8
  %6 = load ptr, ptr %fp, align 8
  %call5 = call i32 @"\01_fputs"(ptr noundef %5, ptr noundef %6)
  %cmp6 = icmp eq i32 %call5, -1
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  store i32 -1, ptr %return_code, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end4
  %7 = load ptr, ptr %fp, align 8
  %call9 = call i32 @fclose(ptr noundef %7)
  %cmp10 = icmp eq i32 %call9, -1
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  store i32 -1, ptr %return_code, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end8
  %8 = load ptr, ptr %serialized_string, align 8
  call void @json_free_serialized_string(ptr noundef %8)
  %9 = load i32, ptr %return_code, align 4
  store i32 %9, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end12, %if.then3, %if.then
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @json_serialize_to_string(ptr noundef %value) #0 {
entry:
  %retval = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %serialization_result = alloca i32, align 4
  %buf_size_bytes = alloca i64, align 8
  %buf = alloca ptr, align 8
  store ptr %value, ptr %value.addr, align 8
  store i32 -1, ptr %serialization_result, align 4
  %0 = load ptr, ptr %value.addr, align 8
  %call = call i64 @json_serialization_size(ptr noundef %0)
  store i64 %call, ptr %buf_size_bytes, align 8
  store ptr null, ptr %buf, align 8
  %1 = load i64, ptr %buf_size_bytes, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr @parson_malloc, align 8
  %3 = load i64, ptr %buf_size_bytes, align 8
  %call1 = call ptr %2(i64 noundef %3)
  store ptr %call1, ptr %buf, align 8
  %4 = load ptr, ptr %buf, align 8
  %cmp2 = icmp eq ptr %4, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end4:                                          ; preds = %if.end
  %5 = load ptr, ptr %value.addr, align 8
  %6 = load ptr, ptr %buf, align 8
  %7 = load i64, ptr %buf_size_bytes, align 8
  %call5 = call i32 @json_serialize_to_buffer(ptr noundef %5, ptr noundef %6, i64 noundef %7)
  store i32 %call5, ptr %serialization_result, align 4
  %8 = load i32, ptr %serialization_result, align 4
  %cmp6 = icmp ne i32 %8, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  %9 = load ptr, ptr %buf, align 8
  call void @json_free_serialized_string(ptr noundef %9)
  store ptr null, ptr %retval, align 8
  br label %return

if.end8:                                          ; preds = %if.end4
  %10 = load ptr, ptr %buf, align 8
  store ptr %10, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end8, %if.then7, %if.then3, %if.then
  %11 = load ptr, ptr %retval, align 8
  ret ptr %11
}

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @json_free_serialized_string(ptr noundef %string) #0 {
entry:
  %string.addr = alloca ptr, align 8
  store ptr %string, ptr %string.addr, align 8
  %0 = load ptr, ptr @parson_free, align 8
  %1 = load ptr, ptr %string.addr, align 8
  call void %0(ptr noundef %1)
  ret void
}

declare i32 @"\01_fputs"(ptr noundef, ptr noundef) #1

declare i32 @fclose(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @json_serialization_size_pretty(ptr noundef %value) #0 {
entry:
  %value.addr = alloca ptr, align 8
  %num_buf = alloca [64 x i8], align 1
  %res = alloca i32, align 4
  store ptr %value, ptr %value.addr, align 8
  %0 = load ptr, ptr %value.addr, align 8
  %arraydecay = getelementptr inbounds [64 x i8], ptr %num_buf, i64 0, i64 0
  %call = call i32 @json_serialize_to_buffer_r(ptr noundef %0, ptr noundef null, i32 noundef 0, i32 noundef 1, ptr noundef %arraydecay)
  store i32 %call, ptr %res, align 4
  %1 = load i32, ptr %res, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, ptr %res, align 4
  %conv = sext i32 %2 to i64
  %add = add i64 %conv, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %add, %cond.false ]
  ret i64 %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @json_serialize_to_buffer_pretty(ptr noundef %value, ptr noundef %buf, i64 noundef %buf_size_in_bytes) #0 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %buf_size_in_bytes.addr = alloca i64, align 8
  %written = alloca i32, align 4
  %needed_size_in_bytes = alloca i64, align 8
  store ptr %value, ptr %value.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %buf_size_in_bytes, ptr %buf_size_in_bytes.addr, align 8
  store i32 -1, ptr %written, align 4
  %0 = load ptr, ptr %value.addr, align 8
  %call = call i64 @json_serialization_size_pretty(ptr noundef %0)
  store i64 %call, ptr %needed_size_in_bytes, align 8
  %1 = load i64, ptr %needed_size_in_bytes, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i64, ptr %buf_size_in_bytes.addr, align 8
  %3 = load i64, ptr %needed_size_in_bytes, align 8
  %cmp1 = icmp ult i64 %2, %3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %value.addr, align 8
  %5 = load ptr, ptr %buf.addr, align 8
  %call2 = call i32 @json_serialize_to_buffer_r(ptr noundef %4, ptr noundef %5, i32 noundef 0, i32 noundef 1, ptr noundef null)
  store i32 %call2, ptr %written, align 4
  %6 = load i32, ptr %written, align 4
  %cmp3 = icmp slt i32 %6, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @json_serialize_to_file_pretty(ptr noundef %value, ptr noundef %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %return_code = alloca i32, align 4
  %fp = alloca ptr, align 8
  %serialized_string = alloca ptr, align 8
  store ptr %value, ptr %value.addr, align 8
  store ptr %filename, ptr %filename.addr, align 8
  store i32 0, ptr %return_code, align 4
  store ptr null, ptr %fp, align 8
  %0 = load ptr, ptr %value.addr, align 8
  %call = call ptr @json_serialize_to_string_pretty(ptr noundef %0)
  store ptr %call, ptr %serialized_string, align 8
  %1 = load ptr, ptr %serialized_string, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %filename.addr, align 8
  %call1 = call ptr @"\01_fopen"(ptr noundef %2, ptr noundef @.str.4)
  store ptr %call1, ptr %fp, align 8
  %3 = load ptr, ptr %fp, align 8
  %cmp2 = icmp eq ptr %3, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr %serialized_string, align 8
  call void @json_free_serialized_string(ptr noundef %4)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %5 = load ptr, ptr %serialized_string, align 8
  %6 = load ptr, ptr %fp, align 8
  %call5 = call i32 @"\01_fputs"(ptr noundef %5, ptr noundef %6)
  %cmp6 = icmp eq i32 %call5, -1
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  store i32 -1, ptr %return_code, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end4
  %7 = load ptr, ptr %fp, align 8
  %call9 = call i32 @fclose(ptr noundef %7)
  %cmp10 = icmp eq i32 %call9, -1
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  store i32 -1, ptr %return_code, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end8
  %8 = load ptr, ptr %serialized_string, align 8
  call void @json_free_serialized_string(ptr noundef %8)
  %9 = load i32, ptr %return_code, align 4
  store i32 %9, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end12, %if.then3, %if.then
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @json_serialize_to_string_pretty(ptr noundef %value) #0 {
entry:
  %retval = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %serialization_result = alloca i32, align 4
  %buf_size_bytes = alloca i64, align 8
  %buf = alloca ptr, align 8
  store ptr %value, ptr %value.addr, align 8
  store i32 -1, ptr %serialization_result, align 4
  %0 = load ptr, ptr %value.addr, align 8
  %call = call i64 @json_serialization_size_pretty(ptr noundef %0)
  store i64 %call, ptr %buf_size_bytes, align 8
  store ptr null, ptr %buf, align 8
  %1 = load i64, ptr %buf_size_bytes, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr @parson_malloc, align 8
  %3 = load i64, ptr %buf_size_bytes, align 8
  %call1 = call ptr %2(i64 noundef %3)
  store ptr %call1, ptr %buf, align 8
  %4 = load ptr, ptr %buf, align 8
  %cmp2 = icmp eq ptr %4, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end4:                                          ; preds = %if.end
  %5 = load ptr, ptr %value.addr, align 8
  %6 = load ptr, ptr %buf, align 8
  %7 = load i64, ptr %buf_size_bytes, align 8
  %call5 = call i32 @json_serialize_to_buffer_pretty(ptr noundef %5, ptr noundef %6, i64 noundef %7)
  store i32 %call5, ptr %serialization_result, align 4
  %8 = load i32, ptr %serialization_result, align 4
  %cmp6 = icmp ne i32 %8, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  %9 = load ptr, ptr %buf, align 8
  call void @json_free_serialized_string(ptr noundef %9)
  store ptr null, ptr %retval, align 8
  br label %return

if.end8:                                          ; preds = %if.end4
  %10 = load ptr, ptr %buf, align 8
  store ptr %10, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end8, %if.then7, %if.then3, %if.then
  %11 = load ptr, ptr %retval, align 8
  ret ptr %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @json_array_remove(ptr noundef %array, i64 noundef %ix) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca ptr, align 8
  %ix.addr = alloca i64, align 8
  %to_move_bytes = alloca i64, align 8
  store ptr %array, ptr %array.addr, align 8
  store i64 %ix, ptr %ix.addr, align 8
  store i64 0, ptr %to_move_bytes, align 8
  %0 = load ptr, ptr %array.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, ptr %ix.addr, align 8
  %2 = load ptr, ptr %array.addr, align 8
  %call = call i64 @json_array_get_count(ptr noundef %2)
  %cmp1 = icmp uge i64 %1, %call
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %array.addr, align 8
  %4 = load i64, ptr %ix.addr, align 8
  %call2 = call ptr @json_array_get_value(ptr noundef %3, i64 noundef %4)
  call void @json_value_free(ptr noundef %call2)
  %5 = load ptr, ptr %array.addr, align 8
  %call3 = call i64 @json_array_get_count(ptr noundef %5)
  %sub = sub i64 %call3, 1
  %6 = load i64, ptr %ix.addr, align 8
  %sub4 = sub i64 %sub, %6
  %mul = mul i64 %sub4, 8
  store i64 %mul, ptr %to_move_bytes, align 8
  %7 = load ptr, ptr %array.addr, align 8
  %items = getelementptr inbounds %struct.json_array_t, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %items, align 8
  %9 = load i64, ptr %ix.addr, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %8, i64 %9
  %10 = load ptr, ptr %array.addr, align 8
  %items5 = getelementptr inbounds %struct.json_array_t, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %items5, align 8
  %12 = load i64, ptr %ix.addr, align 8
  %add.ptr6 = getelementptr inbounds ptr, ptr %11, i64 %12
  %add.ptr7 = getelementptr inbounds ptr, ptr %add.ptr6, i64 1
  %13 = load i64, ptr %to_move_bytes, align 8
  %14 = load ptr, ptr %array.addr, align 8
  %items8 = getelementptr inbounds %struct.json_array_t, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %items8, align 8
  %16 = load i64, ptr %ix.addr, align 8
  %add.ptr9 = getelementptr inbounds ptr, ptr %15, i64 %16
  %17 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr9, i1 false, i1 true, i1 false)
  %call10 = call ptr @__memmove_chk(ptr noundef %add.ptr, ptr noundef %add.ptr7, i64 noundef %13, i64 noundef %17) #9
  %18 = load ptr, ptr %array.addr, align 8
  %count = getelementptr inbounds %struct.json_array_t, ptr %18, i32 0, i32 2
  %19 = load i64, ptr %count, align 8
  %sub11 = sub i64 %19, 1
  store i64 %sub11, ptr %count, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
}

; Function Attrs: nounwind
declare ptr @__memmove_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @json_array_replace_value(ptr noundef %array, i64 noundef %ix, ptr noundef %value) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca ptr, align 8
  %ix.addr = alloca i64, align 8
  %value.addr = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8
  store i64 %ix, ptr %ix.addr, align 8
  store ptr %value, ptr %value.addr, align 8
  %0 = load ptr, ptr %array.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %value.addr, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %value.addr, align 8
  %parent = getelementptr inbounds %struct.json_value_t, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %parent, align 8
  %cmp3 = icmp ne ptr %3, null
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %4 = load i64, ptr %ix.addr, align 8
  %5 = load ptr, ptr %array.addr, align 8
  %call = call i64 @json_array_get_count(ptr noundef %5)
  %cmp5 = icmp uge i64 %4, %call
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false4
  %6 = load ptr, ptr %array.addr, align 8
  %7 = load i64, ptr %ix.addr, align 8
  %call6 = call ptr @json_array_get_value(ptr noundef %6, i64 noundef %7)
  call void @json_value_free(ptr noundef %call6)
  %8 = load ptr, ptr %array.addr, align 8
  %call7 = call ptr @json_array_get_wrapping_value(ptr noundef %8)
  %9 = load ptr, ptr %value.addr, align 8
  %parent8 = getelementptr inbounds %struct.json_value_t, ptr %9, i32 0, i32 0
  store ptr %call7, ptr %parent8, align 8
  %10 = load ptr, ptr %value.addr, align 8
  %11 = load ptr, ptr %array.addr, align 8
  %items = getelementptr inbounds %struct.json_array_t, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %items, align 8
  %13 = load i64, ptr %ix.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %12, i64 %13
  store ptr %10, ptr %arrayidx, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @json_array_replace_string(ptr noundef %array, i64 noundef %i, ptr noundef %string) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  %string.addr = alloca ptr, align 8
  %value = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8
  store i64 %i, ptr %i.addr, align 8
  store ptr %string, ptr %string.addr, align 8
  %0 = load ptr, ptr %string.addr, align 8
  %call = call ptr @json_value_init_string(ptr noundef %0)
  store ptr %call, ptr %value, align 8
  %1 = load ptr, ptr %value, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %array.addr, align 8
  %3 = load i64, ptr %i.addr, align 8
  %4 = load ptr, ptr %value, align 8
  %call1 = call i32 @json_array_replace_value(ptr noundef %2, i64 noundef %3, ptr noundef %4)
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %value, align 8
  call void @json_value_free(ptr noundef %5)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @json_array_replace_string_with_len(ptr noundef %array, i64 noundef %i, ptr noundef %string, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  %string.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %value = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8
  store i64 %i, ptr %i.addr, align 8
  store ptr %string, ptr %string.addr, align 8
  store i64 %len, ptr %len.addr, align 8
  %0 = load ptr, ptr %string.addr, align 8
  %1 = load i64, ptr %len.addr, align 8
  %call = call ptr @json_value_init_string_with_len(ptr noundef %0, i64 noundef %1)
  store ptr %call, ptr %value, align 8
  %2 = load ptr, ptr %value, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %array.addr, align 8
  %4 = load i64, ptr %i.addr, align 8
  %5 = load ptr, ptr %value, align 8
  %call1 = call i32 @json_array_replace_value(ptr noundef %3, i64 noundef %4, ptr noundef %5)
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %value, align 8
  call void @json_value_free(ptr noundef %6)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @json_array_replace_number(ptr noundef %array, i64 noundef %i, double noundef %number) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  %number.addr = alloca double, align 8
  %value = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8
  store i64 %i, ptr %i.addr, align 8
  store double %number, ptr %number.addr, align 8
  %0 = load double, ptr %number.addr, align 8
  %call = call ptr @json_value_init_number(double noundef %0)
  store ptr %call, ptr %value, align 8
  %1 = load ptr, ptr %value, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %array.addr, align 8
  %3 = load i64, ptr %i.addr, align 8
  %4 = load ptr, ptr %value, align 8
  %call1 = call i32 @json_array_replace_value(ptr noundef %2, i64 noundef %3, ptr noundef %4)
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %value, align 8
  call void @json_value_free(ptr noundef %5)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @json_array_replace_boolean(ptr noundef %array, i64 noundef %i, i32 noundef %boolean) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  %boolean.addr = alloca i32, align 4
  %value = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8
  store i64 %i, ptr %i.addr, align 8
  store i32 %boolean, ptr %boolean.addr, align 4
  %0 = load i32, ptr %boolean.addr, align 4
  %call = call ptr @json_value_init_boolean(i32 noundef %0)
  store ptr %call, ptr %value, align 8
  %1 = load ptr, ptr %value, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %array.addr, align 8
  %3 = load i64, ptr %i.addr, align 8
  %4 = load ptr, ptr %value, align 8
  %call1 = call i32 @json_array_replace_value(ptr noundef %2, i64 noundef %3, ptr noundef %4)
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %value, align 8
  call void @json_value_free(ptr noundef %5)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %0 = load ptr, ptr %value, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %array.addr, align 8
  %2 = load i64, ptr %i.addr, align 8
  %3 = load ptr, ptr %value, align 8
  %call1 = call i32 @json_array_replace_value(ptr noundef %1, i64 noundef %2, ptr noundef %3)
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr %value, align 8
  call void @json_value_free(ptr noundef %4)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @json_array_clear(ptr noundef %array) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  store ptr %array, ptr %array.addr, align 8
  store i64 0, ptr %i, align 8
  %0 = load ptr, ptr %array.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i64, ptr %i, align 8
  %2 = load ptr, ptr %array.addr, align 8
  %call = call i64 @json_array_get_count(ptr noundef %2)
  %cmp1 = icmp ult i64 %1, %call
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %array.addr, align 8
  %4 = load i64, ptr %i, align 8
  %call2 = call ptr @json_array_get_value(ptr noundef %3, i64 noundef %4)
  call void @json_value_free(ptr noundef %call2)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i64, ptr %i, align 8
  %inc = add i64 %5, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %for.cond
  %6 = load ptr, ptr %array.addr, align 8
  %count = getelementptr inbounds %struct.json_array_t, ptr %6, i32 0, i32 2
  store i64 0, ptr %count, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @json_array_append_value(ptr noundef %array, ptr noundef %value) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8
  store ptr %value, ptr %value.addr, align 8
  %0 = load ptr, ptr %array.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %value.addr, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %value.addr, align 8
  %parent = getelementptr inbounds %struct.json_value_t, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %parent, align 8
  %cmp3 = icmp ne ptr %3, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %4 = load ptr, ptr %array.addr, align 8
  %5 = load ptr, ptr %value.addr, align 8
  %call = call i32 @json_array_add(ptr noundef %4, ptr noundef %5)
  store i32 %call, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @json_array_append_string(ptr noundef %array, ptr noundef %string) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  %value = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8
  store ptr %string, ptr %string.addr, align 8
  %0 = load ptr, ptr %string.addr, align 8
  %call = call ptr @json_value_init_string(ptr noundef %0)
  store ptr %call, ptr %value, align 8
  %1 = load ptr, ptr %value, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %array.addr, align 8
  %3 = load ptr, ptr %value, align 8
  %call1 = call i32 @json_array_append_value(ptr noundef %2, ptr noundef %3)
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr %value, align 8
  call void @json_value_free(ptr noundef %4)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @json_array_append_string_with_len(ptr noundef %array, ptr noundef %string, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %value = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8
  store ptr %string, ptr %string.addr, align 8
  store i64 %len, ptr %len.addr, align 8
  %0 = load ptr, ptr %string.addr, align 8
  %1 = load i64, ptr %len.addr, align 8
  %call = call ptr @json_value_init_string_with_len(ptr noundef %0, i64 noundef %1)
  store ptr %call, ptr %value, align 8
  %2 = load ptr, ptr %value, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %array.addr, align 8
  %4 = load ptr, ptr %value, align 8
  %call1 = call i32 @json_array_append_value(ptr noundef %3, ptr noundef %4)
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %value, align 8
  call void @json_value_free(ptr noundef %5)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @json_array_append_number(ptr noundef %array, double noundef %number) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca ptr, align 8
  %number.addr = alloca double, align 8
  %value = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8
  store double %number, ptr %number.addr, align 8
  %0 = load double, ptr %number.addr, align 8
  %call = call ptr @json_value_init_number(double noundef %0)
  store ptr %call, ptr %value, align 8
  %1 = load ptr, ptr %value, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %array.addr, align 8
  %3 = load ptr, ptr %value, align 8
  %call1 = call i32 @json_array_append_value(ptr noundef %2, ptr noundef %3)
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr %value, align 8
  call void @json_value_free(ptr noundef %4)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @json_array_append_boolean(ptr noundef %array, i32 noundef %boolean) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca ptr, align 8
  %boolean.addr = alloca i32, align 4
  %value = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8
  store i32 %boolean, ptr %boolean.addr, align 4
  %0 = load i32, ptr %boolean.addr, align 4
  %call = call ptr @json_value_init_boolean(i32 noundef %0)
  store ptr %call, ptr %value, align 8
  %1 = load ptr, ptr %value, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %array.addr, align 8
  %3 = load ptr, ptr %value, align 8
  %call1 = call i32 @json_array_append_value(ptr noundef %2, ptr noundef %3)
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr %value, align 8
  call void @json_value_free(ptr noundef %4)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @json_array_append_null(ptr noundef %array) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca ptr, align 8
  %value = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8
  %call = call ptr @json_value_init_null()
  store ptr %call, ptr %value, align 8
  %0 = load ptr, ptr %value, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %array.addr, align 8
  %2 = load ptr, ptr %value, align 8
  %call1 = call i32 @json_array_append_value(ptr noundef %1, ptr noundef %2)
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

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

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %old_value = alloca ptr, align 8
  %key_copy = alloca ptr, align 8
  %res = alloca i32, align 4
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store ptr %value, ptr %value.addr, align 8
  store i64 0, ptr %hash, align 8
  store i32 0, ptr %found, align 4
  store i64 0, ptr %cell_ix, align 8
  store i64 0, ptr %item_ix, align 8
  store ptr null, ptr %old_value, align 8
  store ptr null, ptr %key_copy, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %name.addr, align 8
  %tobool1 = icmp ne ptr %1, null
  br i1 %tobool1, label %lor.lhs.false2, label %if.then

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %value.addr, align 8
  %tobool3 = icmp ne ptr %2, null
  br i1 %tobool3, label %lor.lhs.false4, label %if.then

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %3 = load ptr, ptr %value.addr, align 8
  %parent = getelementptr inbounds %struct.json_value_t, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %parent, align 8
  %tobool5 = icmp ne ptr %4, null
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false4
  %5 = load ptr, ptr %name.addr, align 8
  %6 = load ptr, ptr %name.addr, align 8
  %call = call i64 @strlen(ptr noundef %6)
  %call6 = call i64 @hash_string(ptr noundef %5, i64 noundef %call)
  store i64 %call6, ptr %hash, align 8
  store i32 0, ptr %found, align 4
  %7 = load ptr, ptr %object.addr, align 8
  %8 = load ptr, ptr %name.addr, align 8
  %9 = load ptr, ptr %name.addr, align 8
  %call7 = call i64 @strlen(ptr noundef %9)
  %10 = load i64, ptr %hash, align 8
  %call8 = call i64 @json_object_get_cell_ix(ptr noundef %7, ptr noundef %8, i64 noundef %call7, i64 noundef %10, ptr noundef %found)
  store i64 %call8, ptr %cell_ix, align 8
  %11 = load i32, ptr %found, align 4
  %tobool9 = icmp ne i32 %11, 0
  br i1 %tobool9, label %if.then10, label %if.end16

if.then10:                                        ; preds = %if.end
  %12 = load ptr, ptr %object.addr, align 8
  %cells = getelementptr inbounds %struct.json_object_t, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %cells, align 8
  %14 = load i64, ptr %cell_ix, align 8
  %arrayidx = getelementptr inbounds i64, ptr %13, i64 %14
  %15 = load i64, ptr %arrayidx, align 8
  store i64 %15, ptr %item_ix, align 8
  %16 = load ptr, ptr %object.addr, align 8
  %values = getelementptr inbounds %struct.json_object_t, ptr %16, i32 0, i32 4
  %17 = load ptr, ptr %values, align 8
  %18 = load i64, ptr %item_ix, align 8
  %arrayidx11 = getelementptr inbounds ptr, ptr %17, i64 %18
  %19 = load ptr, ptr %arrayidx11, align 8
  store ptr %19, ptr %old_value, align 8
  %20 = load ptr, ptr %old_value, align 8
  call void @json_value_free(ptr noundef %20)
  %21 = load ptr, ptr %value.addr, align 8
  %22 = load ptr, ptr %object.addr, align 8
  %values12 = getelementptr inbounds %struct.json_object_t, ptr %22, i32 0, i32 4
  %23 = load ptr, ptr %values12, align 8
  %24 = load i64, ptr %item_ix, align 8
  %arrayidx13 = getelementptr inbounds ptr, ptr %23, i64 %24
  store ptr %21, ptr %arrayidx13, align 8
  %25 = load ptr, ptr %object.addr, align 8
  %call14 = call ptr @json_object_get_wrapping_value(ptr noundef %25)
  %26 = load ptr, ptr %value.addr, align 8
  %parent15 = getelementptr inbounds %struct.json_value_t, ptr %26, i32 0, i32 0
  store ptr %call14, ptr %parent15, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end
  %27 = load ptr, ptr %object.addr, align 8
  %count = getelementptr inbounds %struct.json_object_t, ptr %27, i32 0, i32 6
  %28 = load i64, ptr %count, align 8
  %29 = load ptr, ptr %object.addr, align 8
  %item_capacity = getelementptr inbounds %struct.json_object_t, ptr %29, i32 0, i32 7
  %30 = load i64, ptr %item_capacity, align 8
  %cmp = icmp uge i64 %28, %30
  br i1 %cmp, label %if.then17, label %if.end24

if.then17:                                        ; preds = %if.end16
  %31 = load ptr, ptr %object.addr, align 8
  %call18 = call i32 @json_object_grow_and_rehash(ptr noundef %31)
  store i32 %call18, ptr %res, align 4
  %32 = load i32, ptr %res, align 4
  %cmp19 = icmp ne i32 %32, 0
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.then17
  store i32 -1, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.then17
  %33 = load ptr, ptr %object.addr, align 8
  %34 = load ptr, ptr %name.addr, align 8
  %35 = load ptr, ptr %name.addr, align 8
  %call22 = call i64 @strlen(ptr noundef %35)
  %36 = load i64, ptr %hash, align 8
  %call23 = call i64 @json_object_get_cell_ix(ptr noundef %33, ptr noundef %34, i64 noundef %call22, i64 noundef %36, ptr noundef %found)
  store i64 %call23, ptr %cell_ix, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.end21, %if.end16
  %37 = load ptr, ptr %name.addr, align 8
  %call25 = call ptr @parson_strdup(ptr noundef %37)
  store ptr %call25, ptr %key_copy, align 8
  %38 = load ptr, ptr %key_copy, align 8
  %tobool26 = icmp ne ptr %38, null
  br i1 %tobool26, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end24
  store i32 -1, ptr %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.end24
  %39 = load ptr, ptr %key_copy, align 8
  %40 = load ptr, ptr %object.addr, align 8
  %names = getelementptr inbounds %struct.json_object_t, ptr %40, i32 0, i32 3
  %41 = load ptr, ptr %names, align 8
  %42 = load ptr, ptr %object.addr, align 8
  %count29 = getelementptr inbounds %struct.json_object_t, ptr %42, i32 0, i32 6
  %43 = load i64, ptr %count29, align 8
  %arrayidx30 = getelementptr inbounds ptr, ptr %41, i64 %43
  store ptr %39, ptr %arrayidx30, align 8
  %44 = load ptr, ptr %object.addr, align 8
  %count31 = getelementptr inbounds %struct.json_object_t, ptr %44, i32 0, i32 6
  %45 = load i64, ptr %count31, align 8
  %46 = load ptr, ptr %object.addr, align 8
  %cells32 = getelementptr inbounds %struct.json_object_t, ptr %46, i32 0, i32 1
  %47 = load ptr, ptr %cells32, align 8
  %48 = load i64, ptr %cell_ix, align 8
  %arrayidx33 = getelementptr inbounds i64, ptr %47, i64 %48
  store i64 %45, ptr %arrayidx33, align 8
  %49 = load ptr, ptr %value.addr, align 8
  %50 = load ptr, ptr %object.addr, align 8
  %values34 = getelementptr inbounds %struct.json_object_t, ptr %50, i32 0, i32 4
  %51 = load ptr, ptr %values34, align 8
  %52 = load ptr, ptr %object.addr, align 8
  %count35 = getelementptr inbounds %struct.json_object_t, ptr %52, i32 0, i32 6
  %53 = load i64, ptr %count35, align 8
  %arrayidx36 = getelementptr inbounds ptr, ptr %51, i64 %53
  store ptr %49, ptr %arrayidx36, align 8
  %54 = load i64, ptr %cell_ix, align 8
  %55 = load ptr, ptr %object.addr, align 8
  %cell_ixs = getelementptr inbounds %struct.json_object_t, ptr %55, i32 0, i32 5
  %56 = load ptr, ptr %cell_ixs, align 8
  %57 = load ptr, ptr %object.addr, align 8
  %count37 = getelementptr inbounds %struct.json_object_t, ptr %57, i32 0, i32 6
  %58 = load i64, ptr %count37, align 8
  %arrayidx38 = getelementptr inbounds i64, ptr %56, i64 %58
  store i64 %54, ptr %arrayidx38, align 8
  %59 = load i64, ptr %hash, align 8
  %60 = load ptr, ptr %object.addr, align 8
  %hashes = getelementptr inbounds %struct.json_object_t, ptr %60, i32 0, i32 2
  %61 = load ptr, ptr %hashes, align 8
  %62 = load ptr, ptr %object.addr, align 8
  %count39 = getelementptr inbounds %struct.json_object_t, ptr %62, i32 0, i32 6
  %63 = load i64, ptr %count39, align 8
  %arrayidx40 = getelementptr inbounds i64, ptr %61, i64 %63
  store i64 %59, ptr %arrayidx40, align 8
  %64 = load ptr, ptr %object.addr, align 8
  %count41 = getelementptr inbounds %struct.json_object_t, ptr %64, i32 0, i32 6
  %65 = load i64, ptr %count41, align 8
  %inc = add i64 %65, 1
  store i64 %inc, ptr %count41, align 8
  %66 = load ptr, ptr %object.addr, align 8
  %call42 = call ptr @json_object_get_wrapping_value(ptr noundef %66)
  %67 = load ptr, ptr %value.addr, align 8
  %parent43 = getelementptr inbounds %struct.json_value_t, ptr %67, i32 0, i32 0
  store ptr %call42, ptr %parent43, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end28, %if.then27, %if.then20, %if.then10, %if.then
  %68 = load i32, ptr %retval, align 4
  ret i32 %68
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  store i64 0, ptr %i, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8
  %1 = load i64, ptr %n.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %string.addr, align 8
  %3 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %3
  %4 = load i8, ptr %arrayidx, align 1
  store i8 %4, ptr %c, align 1
  %5 = load i8, ptr %c, align 1
  %conv = zext i8 %5 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %6 = load i64, ptr %hash, align 8
  %shl = shl i64 %6, 5
  %7 = load i64, ptr %hash, align 8
  %add = add i64 %shl, %7
  %8 = load i8, ptr %c, align 1
  %conv3 = zext i8 %8 to i64
  %add4 = add i64 %add, %conv3
  store i64 %add4, ptr %hash, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i64, ptr %i, align 8
  %inc = add i64 %9, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %if.then, %for.cond
  %10 = load i64, ptr %hash, align 8
  ret i64 %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %hash_to_check = alloca i64, align 8
  %key_to_check = alloca ptr, align 8
  %key_to_check_len = alloca i64, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %key, ptr %key.addr, align 8
  store i64 %key_len, ptr %key_len.addr, align 8
  store i64 %hash, ptr %hash.addr, align 8
  store ptr %out_found, ptr %out_found.addr, align 8
  %0 = load i64, ptr %hash.addr, align 8
  %1 = load ptr, ptr %object.addr, align 8
  %cell_capacity = getelementptr inbounds %struct.json_object_t, ptr %1, i32 0, i32 8
  %2 = load i64, ptr %cell_capacity, align 8
  %sub = sub i64 %2, 1
  %and = and i64 %0, %sub
  store i64 %and, ptr %cell_ix, align 8
  store i64 0, ptr %cell, align 8
  store i64 0, ptr %ix, align 8
  store i32 0, ptr %i, align 4
  store i64 0, ptr %hash_to_check, align 8
  store ptr null, ptr %key_to_check, align 8
  store i64 0, ptr %key_to_check_len, align 8
  %3 = load ptr, ptr %out_found.addr, align 8
  store i32 0, ptr %3, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4
  %conv = zext i32 %4 to i64
  %5 = load ptr, ptr %object.addr, align 8
  %cell_capacity1 = getelementptr inbounds %struct.json_object_t, ptr %5, i32 0, i32 8
  %6 = load i64, ptr %cell_capacity1, align 8
  %cmp = icmp ult i64 %conv, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i64, ptr %cell_ix, align 8
  %8 = load i32, ptr %i, align 4
  %conv3 = zext i32 %8 to i64
  %add = add i64 %7, %conv3
  %9 = load ptr, ptr %object.addr, align 8
  %cell_capacity4 = getelementptr inbounds %struct.json_object_t, ptr %9, i32 0, i32 8
  %10 = load i64, ptr %cell_capacity4, align 8
  %sub5 = sub i64 %10, 1
  %and6 = and i64 %add, %sub5
  store i64 %and6, ptr %ix, align 8
  %11 = load ptr, ptr %object.addr, align 8
  %cells = getelementptr inbounds %struct.json_object_t, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %cells, align 8
  %13 = load i64, ptr %ix, align 8
  %arrayidx = getelementptr inbounds i64, ptr %12, i64 %13
  %14 = load i64, ptr %arrayidx, align 8
  store i64 %14, ptr %cell, align 8
  %15 = load i64, ptr %cell, align 8
  %cmp7 = icmp eq i64 %15, -1
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %16 = load i64, ptr %ix, align 8
  store i64 %16, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %for.body
  %17 = load ptr, ptr %object.addr, align 8
  %hashes = getelementptr inbounds %struct.json_object_t, ptr %17, i32 0, i32 2
  %18 = load ptr, ptr %hashes, align 8
  %19 = load i64, ptr %cell, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %18, i64 %19
  %20 = load i64, ptr %arrayidx9, align 8
  store i64 %20, ptr %hash_to_check, align 8
  %21 = load i64, ptr %hash.addr, align 8
  %22 = load i64, ptr %hash_to_check, align 8
  %cmp10 = icmp ne i64 %21, %22
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end
  br label %for.inc

if.end13:                                         ; preds = %if.end
  %23 = load ptr, ptr %object.addr, align 8
  %names = getelementptr inbounds %struct.json_object_t, ptr %23, i32 0, i32 3
  %24 = load ptr, ptr %names, align 8
  %25 = load i64, ptr %cell, align 8
  %arrayidx14 = getelementptr inbounds ptr, ptr %24, i64 %25
  %26 = load ptr, ptr %arrayidx14, align 8
  store ptr %26, ptr %key_to_check, align 8
  %27 = load ptr, ptr %key_to_check, align 8
  %call = call i64 @strlen(ptr noundef %27)
  store i64 %call, ptr %key_to_check_len, align 8
  %28 = load i64, ptr %key_to_check_len, align 8
  %29 = load i64, ptr %key_len.addr, align 8
  %cmp15 = icmp eq i64 %28, %29
  br i1 %cmp15, label %land.lhs.true, label %if.end21

land.lhs.true:                                    ; preds = %if.end13
  %30 = load ptr, ptr %key.addr, align 8
  %31 = load ptr, ptr %key_to_check, align 8
  %32 = load i64, ptr %key_len.addr, align 8
  %call17 = call i32 @strncmp(ptr noundef %30, ptr noundef %31, i64 noundef %32)
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %land.lhs.true
  %33 = load ptr, ptr %out_found.addr, align 8
  store i32 1, ptr %33, align 4
  %34 = load i64, ptr %ix, align 8
  store i64 %34, ptr %retval, align 8
  br label %return

if.end21:                                         ; preds = %land.lhs.true, %if.end13
  br label %for.inc

for.inc:                                          ; preds = %if.end21, %if.then12
  %35 = load i32, ptr %i, align 4
  %inc = add i32 %35, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !23

for.end:                                          ; preds = %for.cond
  store i64 -1, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then20, %if.then
  %36 = load i64, ptr %retval, align 8
  ret i64 %36
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @json_object_grow_and_rehash(ptr noundef %object) #0 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca ptr, align 8
  %wrapping_value = alloca ptr, align 8
  %new_object = alloca %struct.json_object_t, align 8
  %key = alloca ptr, align 8
  %value = alloca ptr, align 8
  %i = alloca i32, align 4
  %new_capacity = alloca i64, align 8
  %res = alloca i32, align 4
  store ptr %object, ptr %object.addr, align 8
  store ptr null, ptr %wrapping_value, align 8
  store ptr null, ptr %key, align 8
  store ptr null, ptr %value, align 8
  store i32 0, ptr %i, align 4
  %0 = load ptr, ptr %object.addr, align 8
  %cell_capacity = getelementptr inbounds %struct.json_object_t, ptr %0, i32 0, i32 8
  %1 = load i64, ptr %cell_capacity, align 8
  %mul = mul i64 %1, 2
  %cmp = icmp ugt i64 %mul, 16
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %object.addr, align 8
  %cell_capacity1 = getelementptr inbounds %struct.json_object_t, ptr %2, i32 0, i32 8
  %3 = load i64, ptr %cell_capacity1, align 8
  %mul2 = mul i64 %3, 2
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %mul2, %cond.true ], [ 16, %cond.false ]
  store i64 %cond, ptr %new_capacity, align 8
  %4 = load i64, ptr %new_capacity, align 8
  %call = call i32 @json_object_init(ptr noundef %new_object, i64 noundef %4)
  store i32 %call, ptr %res, align 4
  %5 = load i32, ptr %res, align 4
  %cmp3 = icmp ne i32 %5, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %cond.end
  %6 = load ptr, ptr %object.addr, align 8
  %call4 = call ptr @json_object_get_wrapping_value(ptr noundef %6)
  store ptr %call4, ptr %wrapping_value, align 8
  %7 = load ptr, ptr %wrapping_value, align 8
  %wrapping_value5 = getelementptr inbounds %struct.json_object_t, ptr %new_object, i32 0, i32 0
  store ptr %7, ptr %wrapping_value5, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, ptr %i, align 4
  %conv = zext i32 %8 to i64
  %9 = load ptr, ptr %object.addr, align 8
  %count = getelementptr inbounds %struct.json_object_t, ptr %9, i32 0, i32 6
  %10 = load i64, ptr %count, align 8
  %cmp6 = icmp ult i64 %conv, %10
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %object.addr, align 8
  %names = getelementptr inbounds %struct.json_object_t, ptr %11, i32 0, i32 3
  %12 = load ptr, ptr %names, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom = zext i32 %13 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %12, i64 %idxprom
  %14 = load ptr, ptr %arrayidx, align 8
  store ptr %14, ptr %key, align 8
  %15 = load ptr, ptr %object.addr, align 8
  %values = getelementptr inbounds %struct.json_object_t, ptr %15, i32 0, i32 4
  %16 = load ptr, ptr %values, align 8
  %17 = load i32, ptr %i, align 4
  %idxprom8 = zext i32 %17 to i64
  %arrayidx9 = getelementptr inbounds ptr, ptr %16, i64 %idxprom8
  %18 = load ptr, ptr %arrayidx9, align 8
  store ptr %18, ptr %value, align 8
  %19 = load ptr, ptr %key, align 8
  %20 = load ptr, ptr %value, align 8
  %call10 = call i32 @json_object_add(ptr noundef %new_object, ptr noundef %19, ptr noundef %20)
  store i32 %call10, ptr %res, align 4
  %21 = load i32, ptr %res, align 4
  %cmp11 = icmp ne i32 %21, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %for.body
  call void @json_object_deinit(ptr noundef %new_object, i32 noundef 0, i32 noundef 0)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %for.body
  %22 = load ptr, ptr %wrapping_value, align 8
  %23 = load ptr, ptr %value, align 8
  %parent = getelementptr inbounds %struct.json_value_t, ptr %23, i32 0, i32 0
  store ptr %22, ptr %parent, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end14
  %24 = load i32, ptr %i, align 4
  %inc = add i32 %24, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !24

for.end:                                          ; preds = %for.cond
  %25 = load ptr, ptr %object.addr, align 8
  call void @json_object_deinit(ptr noundef %25, i32 noundef 0, i32 noundef 0)
  %26 = load ptr, ptr %object.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %26, ptr align 8 %new_object, i64 72, i1 false)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then13, %if.then
  %27 = load i32, ptr %retval, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @json_object_set_string(ptr noundef %object, ptr noundef %name, ptr noundef %string) #0 {
entry:
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  %value = alloca ptr, align 8
  %status = alloca i32, align 4
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store ptr %string, ptr %string.addr, align 8
  %0 = load ptr, ptr %string.addr, align 8
  %call = call ptr @json_value_init_string(ptr noundef %0)
  store ptr %call, ptr %value, align 8
  %1 = load ptr, ptr %object.addr, align 8
  %2 = load ptr, ptr %name.addr, align 8
  %3 = load ptr, ptr %value, align 8
  %call1 = call i32 @json_object_set_value(ptr noundef %1, ptr noundef %2, ptr noundef %3)
  store i32 %call1, ptr %status, align 4
  %4 = load i32, ptr %status, align 4
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %value, align 8
  call void @json_value_free(ptr noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, ptr %status, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @json_object_set_string_with_len(ptr noundef %object, ptr noundef %name, ptr noundef %string, i64 noundef %len) #0 {
entry:
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %value = alloca ptr, align 8
  %status = alloca i32, align 4
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store ptr %string, ptr %string.addr, align 8
  store i64 %len, ptr %len.addr, align 8
  %0 = load ptr, ptr %string.addr, align 8
  %1 = load i64, ptr %len.addr, align 8
  %call = call ptr @json_value_init_string_with_len(ptr noundef %0, i64 noundef %1)
  store ptr %call, ptr %value, align 8
  %2 = load ptr, ptr %object.addr, align 8
  %3 = load ptr, ptr %name.addr, align 8
  %4 = load ptr, ptr %value, align 8
  %call1 = call i32 @json_object_set_value(ptr noundef %2, ptr noundef %3, ptr noundef %4)
  store i32 %call1, ptr %status, align 4
  %5 = load i32, ptr %status, align 4
  %cmp = icmp ne i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %value, align 8
  call void @json_value_free(ptr noundef %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, ptr %status, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @json_object_set_number(ptr noundef %object, ptr noundef %name, double noundef %number) #0 {
entry:
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %number.addr = alloca double, align 8
  %value = alloca ptr, align 8
  %status = alloca i32, align 4
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store double %number, ptr %number.addr, align 8
  %0 = load double, ptr %number.addr, align 8
  %call = call ptr @json_value_init_number(double noundef %0)
  store ptr %call, ptr %value, align 8
  %1 = load ptr, ptr %object.addr, align 8
  %2 = load ptr, ptr %name.addr, align 8
  %3 = load ptr, ptr %value, align 8
  %call1 = call i32 @json_object_set_value(ptr noundef %1, ptr noundef %2, ptr noundef %3)
  store i32 %call1, ptr %status, align 4
  %4 = load i32, ptr %status, align 4
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %value, align 8
  call void @json_value_free(ptr noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, ptr %status, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @json_object_set_boolean(ptr noundef %object, ptr noundef %name, i32 noundef %boolean) #0 {
entry:
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %boolean.addr = alloca i32, align 4
  %value = alloca ptr, align 8
  %status = alloca i32, align 4
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store i32 %boolean, ptr %boolean.addr, align 4
  %0 = load i32, ptr %boolean.addr, align 4
  %call = call ptr @json_value_init_boolean(i32 noundef %0)
  store ptr %call, ptr %value, align 8
  %1 = load ptr, ptr %object.addr, align 8
  %2 = load ptr, ptr %name.addr, align 8
  %3 = load ptr, ptr %value, align 8
  %call1 = call i32 @json_object_set_value(ptr noundef %1, ptr noundef %2, ptr noundef %3)
  store i32 %call1, ptr %status, align 4
  %4 = load i32, ptr %status, align 4
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %value, align 8
  call void @json_value_free(ptr noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, ptr %status, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @json_object_set_null(ptr noundef %object, ptr noundef %name) #0 {
entry:
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %value = alloca ptr, align 8
  %status = alloca i32, align 4
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  %call = call ptr @json_value_init_null()
  store ptr %call, ptr %value, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %2 = load ptr, ptr %value, align 8
  %call1 = call i32 @json_object_set_value(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  store i32 %call1, ptr %status, align 4
  %3 = load i32, ptr %status, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %value, align 8
  call void @json_value_free(ptr noundef %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %status, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @json_object_dotset_value(ptr noundef %object, ptr noundef %name, ptr noundef %value) #0 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %dot_pos = alloca ptr, align 8
  %temp_value = alloca ptr, align 8
  %new_value = alloca ptr, align 8
  %temp_object = alloca ptr, align 8
  %new_object = alloca ptr, align 8
  %status = alloca i32, align 4
  %name_len = alloca i64, align 8
  %name_copy = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store ptr %value, ptr %value.addr, align 8
  store ptr null, ptr %dot_pos, align 8
  store ptr null, ptr %temp_value, align 8
  store ptr null, ptr %new_value, align 8
  store ptr null, ptr %temp_object, align 8
  store ptr null, ptr %new_object, align 8
  store i32 -1, ptr %status, align 4
  store i64 0, ptr %name_len, align 8
  store ptr null, ptr %name_copy, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %name.addr, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %value.addr, align 8
  %cmp3 = icmp eq ptr %2, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %3 = load ptr, ptr %name.addr, align 8
  %call = call ptr @strchr(ptr noundef %3, i32 noundef 46)
  store ptr %call, ptr %dot_pos, align 8
  %4 = load ptr, ptr %dot_pos, align 8
  %cmp4 = icmp eq ptr %4, null
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %5 = load ptr, ptr %object.addr, align 8
  %6 = load ptr, ptr %name.addr, align 8
  %7 = load ptr, ptr %value.addr, align 8
  %call6 = call i32 @json_object_set_value(ptr noundef %5, ptr noundef %6, ptr noundef %7)
  store i32 %call6, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %8 = load ptr, ptr %dot_pos, align 8
  %9 = load ptr, ptr %name.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %8 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, ptr %name_len, align 8
  %10 = load ptr, ptr %object.addr, align 8
  %11 = load ptr, ptr %name.addr, align 8
  %12 = load i64, ptr %name_len, align 8
  %call8 = call ptr @json_object_getn_value(ptr noundef %10, ptr noundef %11, i64 noundef %12)
  store ptr %call8, ptr %temp_value, align 8
  %13 = load ptr, ptr %temp_value, align 8
  %tobool = icmp ne ptr %13, null
  br i1 %tobool, label %if.then9, label %if.end16

if.then9:                                         ; preds = %if.end7
  %14 = load ptr, ptr %temp_value, align 8
  %call10 = call i32 @json_value_get_type(ptr noundef %14)
  %cmp11 = icmp ne i32 %call10, 4
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.then9
  store i32 -1, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.then9
  %15 = load ptr, ptr %temp_value, align 8
  %call14 = call ptr @json_value_get_object(ptr noundef %15)
  store ptr %call14, ptr %temp_object, align 8
  %16 = load ptr, ptr %temp_object, align 8
  %17 = load ptr, ptr %dot_pos, align 8
  %add.ptr = getelementptr inbounds i8, ptr %17, i64 1
  %18 = load ptr, ptr %value.addr, align 8
  %call15 = call i32 @json_object_dotset_value(ptr noundef %16, ptr noundef %add.ptr, ptr noundef %18)
  store i32 %call15, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end7
  %call17 = call ptr @json_value_init_object()
  store ptr %call17, ptr %new_value, align 8
  %19 = load ptr, ptr %new_value, align 8
  %cmp18 = icmp eq ptr %19, null
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  store i32 -1, ptr %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.end16
  %20 = load ptr, ptr %new_value, align 8
  %call21 = call ptr @json_value_get_object(ptr noundef %20)
  store ptr %call21, ptr %new_object, align 8
  %21 = load ptr, ptr %new_object, align 8
  %22 = load ptr, ptr %dot_pos, align 8
  %add.ptr22 = getelementptr inbounds i8, ptr %22, i64 1
  %23 = load ptr, ptr %value.addr, align 8
  %call23 = call i32 @json_object_dotset_value(ptr noundef %21, ptr noundef %add.ptr22, ptr noundef %23)
  store i32 %call23, ptr %status, align 4
  %24 = load i32, ptr %status, align 4
  %cmp24 = icmp ne i32 %24, 0
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end20
  %25 = load ptr, ptr %new_value, align 8
  call void @json_value_free(ptr noundef %25)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.end20
  %26 = load ptr, ptr %name.addr, align 8
  %27 = load i64, ptr %name_len, align 8
  %call27 = call ptr @parson_strndup(ptr noundef %26, i64 noundef %27)
  store ptr %call27, ptr %name_copy, align 8
  %28 = load ptr, ptr %name_copy, align 8
  %tobool28 = icmp ne ptr %28, null
  br i1 %tobool28, label %if.end32, label %if.then29

if.then29:                                        ; preds = %if.end26
  %29 = load ptr, ptr %new_object, align 8
  %30 = load ptr, ptr %dot_pos, align 8
  %add.ptr30 = getelementptr inbounds i8, ptr %30, i64 1
  %call31 = call i32 @json_object_dotremove_internal(ptr noundef %29, ptr noundef %add.ptr30, i32 noundef 0)
  %31 = load ptr, ptr %new_value, align 8
  call void @json_value_free(ptr noundef %31)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.end26
  %32 = load ptr, ptr %object.addr, align 8
  %33 = load ptr, ptr %name_copy, align 8
  %34 = load ptr, ptr %new_value, align 8
  %call33 = call i32 @json_object_add(ptr noundef %32, ptr noundef %33, ptr noundef %34)
  store i32 %call33, ptr %status, align 4
  %35 = load i32, ptr %status, align 4
  %cmp34 = icmp ne i32 %35, 0
  br i1 %cmp34, label %if.then35, label %if.end38

if.then35:                                        ; preds = %if.end32
  %36 = load ptr, ptr @parson_free, align 8
  %37 = load ptr, ptr %name_copy, align 8
  call void %36(ptr noundef %37)
  %38 = load ptr, ptr %new_object, align 8
  %39 = load ptr, ptr %dot_pos, align 8
  %add.ptr36 = getelementptr inbounds i8, ptr %39, i64 1
  %call37 = call i32 @json_object_dotremove_internal(ptr noundef %38, ptr noundef %add.ptr36, i32 noundef 0)
  %40 = load ptr, ptr %new_value, align 8
  call void @json_value_free(ptr noundef %40)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end38:                                         ; preds = %if.end32
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end38, %if.then35, %if.then29, %if.then25, %if.then19, %if.end13, %if.then12, %if.then5, %if.then
  %41 = load i32, ptr %retval, align 4
  ret i32 %41
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @json_object_dotremove_internal(ptr noundef %object, ptr noundef %name, i32 noundef %free_value) #0 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %free_value.addr = alloca i32, align 4
  %temp_value = alloca ptr, align 8
  %temp_object = alloca ptr, align 8
  %dot_pos = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store i32 %free_value, ptr %free_value.addr, align 4
  store ptr null, ptr %temp_value, align 8
  store ptr null, ptr %temp_object, align 8
  %0 = load ptr, ptr %name.addr, align 8
  %call = call ptr @strchr(ptr noundef %0, i32 noundef 46)
  store ptr %call, ptr %dot_pos, align 8
  %1 = load ptr, ptr %dot_pos, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %object.addr, align 8
  %3 = load ptr, ptr %name.addr, align 8
  %4 = load i32, ptr %free_value.addr, align 4
  %call1 = call i32 @json_object_remove_internal(ptr noundef %2, ptr noundef %3, i32 noundef %4)
  store i32 %call1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %object.addr, align 8
  %6 = load ptr, ptr %name.addr, align 8
  %7 = load ptr, ptr %dot_pos, align 8
  %8 = load ptr, ptr %name.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %7 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call2 = call ptr @json_object_getn_value(ptr noundef %5, ptr noundef %6, i64 noundef %sub.ptr.sub)
  store ptr %call2, ptr %temp_value, align 8
  %9 = load ptr, ptr %temp_value, align 8
  %call3 = call i32 @json_value_get_type(ptr noundef %9)
  %cmp = icmp ne i32 %call3, 4
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %10 = load ptr, ptr %temp_value, align 8
  %call6 = call ptr @json_value_get_object(ptr noundef %10)
  store ptr %call6, ptr %temp_object, align 8
  %11 = load ptr, ptr %temp_object, align 8
  %12 = load ptr, ptr %dot_pos, align 8
  %add.ptr = getelementptr inbounds i8, ptr %12, i64 1
  %13 = load i32, ptr %free_value.addr, align 4
  %call7 = call i32 @json_object_dotremove_internal(ptr noundef %11, ptr noundef %add.ptr, i32 noundef %13)
  store i32 %call7, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @json_object_dotset_string(ptr noundef %object, ptr noundef %name, ptr noundef %string) #0 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  %value = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store ptr %string, ptr %string.addr, align 8
  %0 = load ptr, ptr %string.addr, align 8
  %call = call ptr @json_value_init_string(ptr noundef %0)
  store ptr %call, ptr %value, align 8
  %1 = load ptr, ptr %value, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %object.addr, align 8
  %3 = load ptr, ptr %name.addr, align 8
  %4 = load ptr, ptr %value, align 8
  %call1 = call i32 @json_object_dotset_value(ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %value, align 8
  call void @json_value_free(ptr noundef %5)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @json_object_dotset_string_with_len(ptr noundef %object, ptr noundef %name, ptr noundef %string, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %value = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store ptr %string, ptr %string.addr, align 8
  store i64 %len, ptr %len.addr, align 8
  %0 = load ptr, ptr %string.addr, align 8
  %1 = load i64, ptr %len.addr, align 8
  %call = call ptr @json_value_init_string_with_len(ptr noundef %0, i64 noundef %1)
  store ptr %call, ptr %value, align 8
  %2 = load ptr, ptr %value, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %object.addr, align 8
  %4 = load ptr, ptr %name.addr, align 8
  %5 = load ptr, ptr %value, align 8
  %call1 = call i32 @json_object_dotset_value(ptr noundef %3, ptr noundef %4, ptr noundef %5)
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %value, align 8
  call void @json_value_free(ptr noundef %6)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @json_object_dotset_number(ptr noundef %object, ptr noundef %name, double noundef %number) #0 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %number.addr = alloca double, align 8
  %value = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store double %number, ptr %number.addr, align 8
  %0 = load double, ptr %number.addr, align 8
  %call = call ptr @json_value_init_number(double noundef %0)
  store ptr %call, ptr %value, align 8
  %1 = load ptr, ptr %value, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %object.addr, align 8
  %3 = load ptr, ptr %name.addr, align 8
  %4 = load ptr, ptr %value, align 8
  %call1 = call i32 @json_object_dotset_value(ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %value, align 8
  call void @json_value_free(ptr noundef %5)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @json_object_dotset_boolean(ptr noundef %object, ptr noundef %name, i32 noundef %boolean) #0 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %boolean.addr = alloca i32, align 4
  %value = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store i32 %boolean, ptr %boolean.addr, align 4
  %0 = load i32, ptr %boolean.addr, align 4
  %call = call ptr @json_value_init_boolean(i32 noundef %0)
  store ptr %call, ptr %value, align 8
  %1 = load ptr, ptr %value, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %object.addr, align 8
  %3 = load ptr, ptr %name.addr, align 8
  %4 = load ptr, ptr %value, align 8
  %call1 = call i32 @json_object_dotset_value(ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %value, align 8
  call void @json_value_free(ptr noundef %5)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %0 = load ptr, ptr %value, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %object.addr, align 8
  %2 = load ptr, ptr %name.addr, align 8
  %3 = load ptr, ptr %value, align 8
  %call1 = call i32 @json_object_dotset_value(ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr %value, align 8
  call void @json_value_free(ptr noundef %4)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @json_object_remove(ptr noundef %object, ptr noundef %name) #0 {
entry:
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %call = call i32 @json_object_remove_internal(ptr noundef %0, ptr noundef %1, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @json_object_remove_internal(ptr noundef %object, ptr noundef %name, i32 noundef %free_value) #0 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %free_value.addr = alloca i32, align 4
  %hash = alloca i64, align 8
  %found = alloca i32, align 4
  %cell = alloca i64, align 8
  %item_ix = alloca i64, align 8
  %last_item_ix = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %x = alloca i64, align 8
  %k = alloca i64, align 8
  %val = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store i32 %free_value, ptr %free_value.addr, align 4
  store i64 0, ptr %hash, align 8
  store i32 0, ptr %found, align 4
  store i64 0, ptr %cell, align 8
  store i64 0, ptr %item_ix, align 8
  store i64 0, ptr %last_item_ix, align 8
  store i64 0, ptr %i, align 8
  store i64 0, ptr %j, align 8
  store i64 0, ptr %x, align 8
  store i64 0, ptr %k, align 8
  store ptr null, ptr %val, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %name.addr, align 8
  %2 = load ptr, ptr %name.addr, align 8
  %call = call i64 @strlen(ptr noundef %2)
  %call1 = call i64 @hash_string(ptr noundef %1, i64 noundef %call)
  store i64 %call1, ptr %hash, align 8
  store i32 0, ptr %found, align 4
  %3 = load ptr, ptr %object.addr, align 8
  %4 = load ptr, ptr %name.addr, align 8
  %5 = load ptr, ptr %name.addr, align 8
  %call2 = call i64 @strlen(ptr noundef %5)
  %6 = load i64, ptr %hash, align 8
  %call3 = call i64 @json_object_get_cell_ix(ptr noundef %3, ptr noundef %4, i64 noundef %call2, i64 noundef %6, ptr noundef %found)
  store i64 %call3, ptr %cell, align 8
  %7 = load i32, ptr %found, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %8 = load ptr, ptr %object.addr, align 8
  %cells = getelementptr inbounds %struct.json_object_t, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %cells, align 8
  %10 = load i64, ptr %cell, align 8
  %arrayidx = getelementptr inbounds i64, ptr %9, i64 %10
  %11 = load i64, ptr %arrayidx, align 8
  store i64 %11, ptr %item_ix, align 8
  %12 = load i32, ptr %free_value.addr, align 4
  %tobool6 = icmp ne i32 %12, 0
  br i1 %tobool6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end5
  %13 = load ptr, ptr %object.addr, align 8
  %values = getelementptr inbounds %struct.json_object_t, ptr %13, i32 0, i32 4
  %14 = load ptr, ptr %values, align 8
  %15 = load i64, ptr %item_ix, align 8
  %arrayidx8 = getelementptr inbounds ptr, ptr %14, i64 %15
  %16 = load ptr, ptr %arrayidx8, align 8
  store ptr %16, ptr %val, align 8
  %17 = load ptr, ptr %val, align 8
  call void @json_value_free(ptr noundef %17)
  store ptr null, ptr %val, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5
  %18 = load ptr, ptr @parson_free, align 8
  %19 = load ptr, ptr %object.addr, align 8
  %names = getelementptr inbounds %struct.json_object_t, ptr %19, i32 0, i32 3
  %20 = load ptr, ptr %names, align 8
  %21 = load i64, ptr %item_ix, align 8
  %arrayidx10 = getelementptr inbounds ptr, ptr %20, i64 %21
  %22 = load ptr, ptr %arrayidx10, align 8
  call void %18(ptr noundef %22)
  %23 = load ptr, ptr %object.addr, align 8
  %count = getelementptr inbounds %struct.json_object_t, ptr %23, i32 0, i32 6
  %24 = load i64, ptr %count, align 8
  %sub = sub i64 %24, 1
  store i64 %sub, ptr %last_item_ix, align 8
  %25 = load i64, ptr %item_ix, align 8
  %26 = load i64, ptr %last_item_ix, align 8
  %cmp11 = icmp ult i64 %25, %26
  br i1 %cmp11, label %if.then12, label %if.end31

if.then12:                                        ; preds = %if.end9
  %27 = load ptr, ptr %object.addr, align 8
  %names13 = getelementptr inbounds %struct.json_object_t, ptr %27, i32 0, i32 3
  %28 = load ptr, ptr %names13, align 8
  %29 = load i64, ptr %last_item_ix, align 8
  %arrayidx14 = getelementptr inbounds ptr, ptr %28, i64 %29
  %30 = load ptr, ptr %arrayidx14, align 8
  %31 = load ptr, ptr %object.addr, align 8
  %names15 = getelementptr inbounds %struct.json_object_t, ptr %31, i32 0, i32 3
  %32 = load ptr, ptr %names15, align 8
  %33 = load i64, ptr %item_ix, align 8
  %arrayidx16 = getelementptr inbounds ptr, ptr %32, i64 %33
  store ptr %30, ptr %arrayidx16, align 8
  %34 = load ptr, ptr %object.addr, align 8
  %values17 = getelementptr inbounds %struct.json_object_t, ptr %34, i32 0, i32 4
  %35 = load ptr, ptr %values17, align 8
  %36 = load i64, ptr %last_item_ix, align 8
  %arrayidx18 = getelementptr inbounds ptr, ptr %35, i64 %36
  %37 = load ptr, ptr %arrayidx18, align 8
  %38 = load ptr, ptr %object.addr, align 8
  %values19 = getelementptr inbounds %struct.json_object_t, ptr %38, i32 0, i32 4
  %39 = load ptr, ptr %values19, align 8
  %40 = load i64, ptr %item_ix, align 8
  %arrayidx20 = getelementptr inbounds ptr, ptr %39, i64 %40
  store ptr %37, ptr %arrayidx20, align 8
  %41 = load ptr, ptr %object.addr, align 8
  %cell_ixs = getelementptr inbounds %struct.json_object_t, ptr %41, i32 0, i32 5
  %42 = load ptr, ptr %cell_ixs, align 8
  %43 = load i64, ptr %last_item_ix, align 8
  %arrayidx21 = getelementptr inbounds i64, ptr %42, i64 %43
  %44 = load i64, ptr %arrayidx21, align 8
  %45 = load ptr, ptr %object.addr, align 8
  %cell_ixs22 = getelementptr inbounds %struct.json_object_t, ptr %45, i32 0, i32 5
  %46 = load ptr, ptr %cell_ixs22, align 8
  %47 = load i64, ptr %item_ix, align 8
  %arrayidx23 = getelementptr inbounds i64, ptr %46, i64 %47
  store i64 %44, ptr %arrayidx23, align 8
  %48 = load ptr, ptr %object.addr, align 8
  %hashes = getelementptr inbounds %struct.json_object_t, ptr %48, i32 0, i32 2
  %49 = load ptr, ptr %hashes, align 8
  %50 = load i64, ptr %last_item_ix, align 8
  %arrayidx24 = getelementptr inbounds i64, ptr %49, i64 %50
  %51 = load i64, ptr %arrayidx24, align 8
  %52 = load ptr, ptr %object.addr, align 8
  %hashes25 = getelementptr inbounds %struct.json_object_t, ptr %52, i32 0, i32 2
  %53 = load ptr, ptr %hashes25, align 8
  %54 = load i64, ptr %item_ix, align 8
  %arrayidx26 = getelementptr inbounds i64, ptr %53, i64 %54
  store i64 %51, ptr %arrayidx26, align 8
  %55 = load i64, ptr %item_ix, align 8
  %56 = load ptr, ptr %object.addr, align 8
  %cells27 = getelementptr inbounds %struct.json_object_t, ptr %56, i32 0, i32 1
  %57 = load ptr, ptr %cells27, align 8
  %58 = load ptr, ptr %object.addr, align 8
  %cell_ixs28 = getelementptr inbounds %struct.json_object_t, ptr %58, i32 0, i32 5
  %59 = load ptr, ptr %cell_ixs28, align 8
  %60 = load i64, ptr %item_ix, align 8
  %arrayidx29 = getelementptr inbounds i64, ptr %59, i64 %60
  %61 = load i64, ptr %arrayidx29, align 8
  %arrayidx30 = getelementptr inbounds i64, ptr %57, i64 %61
  store i64 %55, ptr %arrayidx30, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then12, %if.end9
  %62 = load ptr, ptr %object.addr, align 8
  %count32 = getelementptr inbounds %struct.json_object_t, ptr %62, i32 0, i32 6
  %63 = load i64, ptr %count32, align 8
  %dec = add i64 %63, -1
  store i64 %dec, ptr %count32, align 8
  %64 = load i64, ptr %cell, align 8
  store i64 %64, ptr %i, align 8
  %65 = load i64, ptr %i, align 8
  store i64 %65, ptr %j, align 8
  store i64 0, ptr %x, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end31
  %66 = load i64, ptr %x, align 8
  %67 = load ptr, ptr %object.addr, align 8
  %cell_capacity = getelementptr inbounds %struct.json_object_t, ptr %67, i32 0, i32 8
  %68 = load i64, ptr %cell_capacity, align 8
  %sub33 = sub i64 %68, 1
  %cmp34 = icmp ult i64 %66, %sub33
  br i1 %cmp34, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %69 = load i64, ptr %j, align 8
  %add = add i64 %69, 1
  %70 = load ptr, ptr %object.addr, align 8
  %cell_capacity35 = getelementptr inbounds %struct.json_object_t, ptr %70, i32 0, i32 8
  %71 = load i64, ptr %cell_capacity35, align 8
  %sub36 = sub i64 %71, 1
  %and = and i64 %add, %sub36
  store i64 %and, ptr %j, align 8
  %72 = load ptr, ptr %object.addr, align 8
  %cells37 = getelementptr inbounds %struct.json_object_t, ptr %72, i32 0, i32 1
  %73 = load ptr, ptr %cells37, align 8
  %74 = load i64, ptr %j, align 8
  %arrayidx38 = getelementptr inbounds i64, ptr %73, i64 %74
  %75 = load i64, ptr %arrayidx38, align 8
  %cmp39 = icmp eq i64 %75, -1
  br i1 %cmp39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %for.body
  br label %for.end

if.end41:                                         ; preds = %for.body
  %76 = load ptr, ptr %object.addr, align 8
  %hashes42 = getelementptr inbounds %struct.json_object_t, ptr %76, i32 0, i32 2
  %77 = load ptr, ptr %hashes42, align 8
  %78 = load ptr, ptr %object.addr, align 8
  %cells43 = getelementptr inbounds %struct.json_object_t, ptr %78, i32 0, i32 1
  %79 = load ptr, ptr %cells43, align 8
  %80 = load i64, ptr %j, align 8
  %arrayidx44 = getelementptr inbounds i64, ptr %79, i64 %80
  %81 = load i64, ptr %arrayidx44, align 8
  %arrayidx45 = getelementptr inbounds i64, ptr %77, i64 %81
  %82 = load i64, ptr %arrayidx45, align 8
  %83 = load ptr, ptr %object.addr, align 8
  %cell_capacity46 = getelementptr inbounds %struct.json_object_t, ptr %83, i32 0, i32 8
  %84 = load i64, ptr %cell_capacity46, align 8
  %sub47 = sub i64 %84, 1
  %and48 = and i64 %82, %sub47
  store i64 %and48, ptr %k, align 8
  %85 = load i64, ptr %j, align 8
  %86 = load i64, ptr %i, align 8
  %cmp49 = icmp ugt i64 %85, %86
  br i1 %cmp49, label %land.lhs.true, label %lor.lhs.false52

land.lhs.true:                                    ; preds = %if.end41
  %87 = load i64, ptr %k, align 8
  %88 = load i64, ptr %i, align 8
  %cmp50 = icmp ule i64 %87, %88
  br i1 %cmp50, label %if.then58, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %89 = load i64, ptr %k, align 8
  %90 = load i64, ptr %j, align 8
  %cmp51 = icmp ugt i64 %89, %90
  br i1 %cmp51, label %if.then58, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %lor.lhs.false, %if.end41
  %91 = load i64, ptr %j, align 8
  %92 = load i64, ptr %i, align 8
  %cmp53 = icmp ult i64 %91, %92
  br i1 %cmp53, label %land.lhs.true54, label %if.end67

land.lhs.true54:                                  ; preds = %lor.lhs.false52
  %93 = load i64, ptr %k, align 8
  %94 = load i64, ptr %i, align 8
  %cmp55 = icmp ule i64 %93, %94
  br i1 %cmp55, label %land.lhs.true56, label %if.end67

land.lhs.true56:                                  ; preds = %land.lhs.true54
  %95 = load i64, ptr %k, align 8
  %96 = load i64, ptr %j, align 8
  %cmp57 = icmp ugt i64 %95, %96
  br i1 %cmp57, label %if.then58, label %if.end67

if.then58:                                        ; preds = %land.lhs.true56, %lor.lhs.false, %land.lhs.true
  %97 = load i64, ptr %i, align 8
  %98 = load ptr, ptr %object.addr, align 8
  %cell_ixs59 = getelementptr inbounds %struct.json_object_t, ptr %98, i32 0, i32 5
  %99 = load ptr, ptr %cell_ixs59, align 8
  %100 = load ptr, ptr %object.addr, align 8
  %cells60 = getelementptr inbounds %struct.json_object_t, ptr %100, i32 0, i32 1
  %101 = load ptr, ptr %cells60, align 8
  %102 = load i64, ptr %j, align 8
  %arrayidx61 = getelementptr inbounds i64, ptr %101, i64 %102
  %103 = load i64, ptr %arrayidx61, align 8
  %arrayidx62 = getelementptr inbounds i64, ptr %99, i64 %103
  store i64 %97, ptr %arrayidx62, align 8
  %104 = load ptr, ptr %object.addr, align 8
  %cells63 = getelementptr inbounds %struct.json_object_t, ptr %104, i32 0, i32 1
  %105 = load ptr, ptr %cells63, align 8
  %106 = load i64, ptr %j, align 8
  %arrayidx64 = getelementptr inbounds i64, ptr %105, i64 %106
  %107 = load i64, ptr %arrayidx64, align 8
  %108 = load ptr, ptr %object.addr, align 8
  %cells65 = getelementptr inbounds %struct.json_object_t, ptr %108, i32 0, i32 1
  %109 = load ptr, ptr %cells65, align 8
  %110 = load i64, ptr %i, align 8
  %arrayidx66 = getelementptr inbounds i64, ptr %109, i64 %110
  store i64 %107, ptr %arrayidx66, align 8
  %111 = load i64, ptr %j, align 8
  store i64 %111, ptr %i, align 8
  br label %if.end67

if.end67:                                         ; preds = %if.then58, %land.lhs.true56, %land.lhs.true54, %lor.lhs.false52
  br label %for.inc

for.inc:                                          ; preds = %if.end67
  %112 = load i64, ptr %x, align 8
  %inc = add i64 %112, 1
  store i64 %inc, ptr %x, align 8
  br label %for.cond, !llvm.loop !25

for.end:                                          ; preds = %if.then40, %for.cond
  %113 = load ptr, ptr %object.addr, align 8
  %cells68 = getelementptr inbounds %struct.json_object_t, ptr %113, i32 0, i32 1
  %114 = load ptr, ptr %cells68, align 8
  %115 = load i64, ptr %i, align 8
  %arrayidx69 = getelementptr inbounds i64, ptr %114, i64 %115
  store i64 -1, ptr %arrayidx69, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then4, %if.then
  %116 = load i32, ptr %retval, align 4
  ret i32 %116
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @json_object_dotremove(ptr noundef %object, ptr noundef %name) #0 {
entry:
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %call = call i32 @json_object_dotremove_internal(ptr noundef %0, ptr noundef %1, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @json_object_clear(ptr noundef %object) #0 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  store ptr %object, ptr %object.addr, align 8
  store i64 0, ptr %i, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i64, ptr %i, align 8
  %2 = load ptr, ptr %object.addr, align 8
  %call = call i64 @json_object_get_count(ptr noundef %2)
  %cmp1 = icmp ult i64 %1, %call
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr @parson_free, align 8
  %4 = load ptr, ptr %object.addr, align 8
  %names = getelementptr inbounds %struct.json_object_t, ptr %4, i32 0, i32 3
  %5 = load ptr, ptr %names, align 8
  %6 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %6
  %7 = load ptr, ptr %arrayidx, align 8
  call void %3(ptr noundef %7)
  %8 = load ptr, ptr %object.addr, align 8
  %names2 = getelementptr inbounds %struct.json_object_t, ptr %8, i32 0, i32 3
  %9 = load ptr, ptr %names2, align 8
  %10 = load i64, ptr %i, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %9, i64 %10
  store ptr null, ptr %arrayidx3, align 8
  %11 = load ptr, ptr %object.addr, align 8
  %values = getelementptr inbounds %struct.json_object_t, ptr %11, i32 0, i32 4
  %12 = load ptr, ptr %values, align 8
  %13 = load i64, ptr %i, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %12, i64 %13
  %14 = load ptr, ptr %arrayidx4, align 8
  call void @json_value_free(ptr noundef %14)
  %15 = load ptr, ptr %object.addr, align 8
  %values5 = getelementptr inbounds %struct.json_object_t, ptr %15, i32 0, i32 4
  %16 = load ptr, ptr %values5, align 8
  %17 = load i64, ptr %i, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %16, i64 %17
  store ptr null, ptr %arrayidx6, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i64, ptr %i, align 8
  %inc = add i64 %18, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !26

for.end:                                          ; preds = %for.cond
  %19 = load ptr, ptr %object.addr, align 8
  %count = getelementptr inbounds %struct.json_object_t, ptr %19, i32 0, i32 6
  store i64 0, ptr %count, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc11, %for.end
  %20 = load i64, ptr %i, align 8
  %21 = load ptr, ptr %object.addr, align 8
  %cell_capacity = getelementptr inbounds %struct.json_object_t, ptr %21, i32 0, i32 8
  %22 = load i64, ptr %cell_capacity, align 8
  %cmp8 = icmp ult i64 %20, %22
  br i1 %cmp8, label %for.body9, label %for.end13

for.body9:                                        ; preds = %for.cond7
  %23 = load ptr, ptr %object.addr, align 8
  %cells = getelementptr inbounds %struct.json_object_t, ptr %23, i32 0, i32 1
  %24 = load ptr, ptr %cells, align 8
  %25 = load i64, ptr %i, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %24, i64 %25
  store i64 -1, ptr %arrayidx10, align 8
  br label %for.inc11

for.inc11:                                        ; preds = %for.body9
  %26 = load i64, ptr %i, align 8
  %inc12 = add i64 %26, 1
  store i64 %inc12, ptr %i, align 8
  br label %for.cond7, !llvm.loop !27

for.end13:                                        ; preds = %for.cond7
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end13, %if.then
  %27 = load i32, ptr %retval, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %value_type = alloca i32, align 4
  %key = alloca ptr, align 8
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
  store i32 -1, ptr %value_type, align 4
  store ptr null, ptr %key, align 8
  store i64 0, ptr %i, align 8
  store i64 0, ptr %count, align 8
  %0 = load ptr, ptr %schema.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %value.addr, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %schema.addr, align 8
  %call = call i32 @json_value_get_type(ptr noundef %2)
  store i32 %call, ptr %schema_type, align 4
  %3 = load ptr, ptr %value.addr, align 8
  %call2 = call i32 @json_value_get_type(ptr noundef %3)
  store i32 %call2, ptr %value_type, align 4
  %4 = load i32, ptr %schema_type, align 4
  %5 = load i32, ptr %value_type, align 4
  %cmp3 = icmp ne i32 %4, %5
  br i1 %cmp3, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %6 = load i32, ptr %schema_type, align 4
  %cmp4 = icmp ne i32 %6, 1
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %land.lhs.true
  store i32 -1, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %land.lhs.true, %if.end
  %7 = load i32, ptr %schema_type, align 4
  switch i32 %7, label %sw.default [
    i32 5, label %sw.bb
    i32 4, label %sw.bb21
    i32 2, label %sw.bb48
    i32 3, label %sw.bb48
    i32 6, label %sw.bb48
    i32 1, label %sw.bb48
    i32 -1, label %sw.bb49
  ]

sw.bb:                                            ; preds = %if.end6
  %8 = load ptr, ptr %schema.addr, align 8
  %call7 = call ptr @json_value_get_array(ptr noundef %8)
  store ptr %call7, ptr %schema_array, align 8
  %9 = load ptr, ptr %value.addr, align 8
  %call8 = call ptr @json_value_get_array(ptr noundef %9)
  store ptr %call8, ptr %value_array, align 8
  %10 = load ptr, ptr %schema_array, align 8
  %call9 = call i64 @json_array_get_count(ptr noundef %10)
  store i64 %call9, ptr %count, align 8
  %11 = load i64, ptr %count, align 8
  %cmp10 = icmp eq i64 %11, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %sw.bb
  store i32 0, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %sw.bb
  %12 = load ptr, ptr %schema_array, align 8
  %call13 = call ptr @json_array_get_value(ptr noundef %12, i64 noundef 0)
  store ptr %call13, ptr %temp_schema_value, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end12
  %13 = load i64, ptr %i, align 8
  %14 = load ptr, ptr %value_array, align 8
  %call14 = call i64 @json_array_get_count(ptr noundef %14)
  %cmp15 = icmp ult i64 %13, %call14
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %value_array, align 8
  %16 = load i64, ptr %i, align 8
  %call16 = call ptr @json_array_get_value(ptr noundef %15, i64 noundef %16)
  store ptr %call16, ptr %temp_value, align 8
  %17 = load ptr, ptr %temp_schema_value, align 8
  %18 = load ptr, ptr %temp_value, align 8
  %call17 = call i32 @json_validate(ptr noundef %17, ptr noundef %18)
  %cmp18 = icmp ne i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %for.body
  store i32 -1, ptr %retval, align 4
  br label %return

if.end20:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end20
  %19 = load i64, ptr %i, align 8
  %inc = add i64 %19, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !28

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb21:                                          ; preds = %if.end6
  %20 = load ptr, ptr %schema.addr, align 8
  %call22 = call ptr @json_value_get_object(ptr noundef %20)
  store ptr %call22, ptr %schema_object, align 8
  %21 = load ptr, ptr %value.addr, align 8
  %call23 = call ptr @json_value_get_object(ptr noundef %21)
  store ptr %call23, ptr %value_object, align 8
  %22 = load ptr, ptr %schema_object, align 8
  %call24 = call i64 @json_object_get_count(ptr noundef %22)
  store i64 %call24, ptr %count, align 8
  %23 = load i64, ptr %count, align 8
  %cmp25 = icmp eq i64 %23, 0
  br i1 %cmp25, label %if.then26, label %if.else

if.then26:                                        ; preds = %sw.bb21
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %sw.bb21
  %24 = load ptr, ptr %value_object, align 8
  %call27 = call i64 @json_object_get_count(ptr noundef %24)
  %25 = load i64, ptr %count, align 8
  %cmp28 = icmp ult i64 %call27, %25
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.else
  store i32 -1, ptr %retval, align 4
  br label %return

if.end30:                                         ; preds = %if.else
  br label %if.end31

if.end31:                                         ; preds = %if.end30
  store i64 0, ptr %i, align 8
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc45, %if.end31
  %26 = load i64, ptr %i, align 8
  %27 = load i64, ptr %count, align 8
  %cmp33 = icmp ult i64 %26, %27
  br i1 %cmp33, label %for.body34, label %for.end47

for.body34:                                       ; preds = %for.cond32
  %28 = load ptr, ptr %schema_object, align 8
  %29 = load i64, ptr %i, align 8
  %call35 = call ptr @json_object_get_name(ptr noundef %28, i64 noundef %29)
  store ptr %call35, ptr %key, align 8
  %30 = load ptr, ptr %schema_object, align 8
  %31 = load ptr, ptr %key, align 8
  %call36 = call ptr @json_object_get_value(ptr noundef %30, ptr noundef %31)
  store ptr %call36, ptr %temp_schema_value, align 8
  %32 = load ptr, ptr %value_object, align 8
  %33 = load ptr, ptr %key, align 8
  %call37 = call ptr @json_object_get_value(ptr noundef %32, ptr noundef %33)
  store ptr %call37, ptr %temp_value, align 8
  %34 = load ptr, ptr %temp_value, align 8
  %cmp38 = icmp eq ptr %34, null
  br i1 %cmp38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %for.body34
  store i32 -1, ptr %retval, align 4
  br label %return

if.end40:                                         ; preds = %for.body34
  %35 = load ptr, ptr %temp_schema_value, align 8
  %36 = load ptr, ptr %temp_value, align 8
  %call41 = call i32 @json_validate(ptr noundef %35, ptr noundef %36)
  %cmp42 = icmp ne i32 %call41, 0
  br i1 %cmp42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end40
  store i32 -1, ptr %retval, align 4
  br label %return

if.end44:                                         ; preds = %if.end40
  br label %for.inc45

for.inc45:                                        ; preds = %if.end44
  %37 = load i64, ptr %i, align 8
  %inc46 = add i64 %37, 1
  store i64 %inc46, ptr %i, align 8
  br label %for.cond32, !llvm.loop !29

for.end47:                                        ; preds = %for.cond32
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb48:                                          ; preds = %if.end6, %if.end6, %if.end6, %if.end6
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb49:                                          ; preds = %if.end6
  br label %sw.default

sw.default:                                       ; preds = %if.end6, %sw.bb49
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb48, %for.end47, %if.then43, %if.then39, %if.then29, %if.then26, %for.end, %if.then19, %if.then11, %if.then5, %if.then
  %38 = load i32, ptr %retval, align 4
  ret i32 %38
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %key = alloca ptr, align 8
  %a_count = alloca i64, align 8
  %b_count = alloca i64, align 8
  %i = alloca i64, align 8
  %a_type = alloca i32, align 4
  %b_type = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store ptr null, ptr %a_object, align 8
  store ptr null, ptr %b_object, align 8
  store ptr null, ptr %a_array, align 8
  store ptr null, ptr %b_array, align 8
  store ptr null, ptr %a_string, align 8
  store ptr null, ptr %b_string, align 8
  store ptr null, ptr %key, align 8
  store i64 0, ptr %a_count, align 8
  store i64 0, ptr %b_count, align 8
  store i64 0, ptr %i, align 8
  %0 = load ptr, ptr %a.addr, align 8
  %call = call i32 @json_value_get_type(ptr noundef %0)
  store i32 %call, ptr %a_type, align 4
  %1 = load ptr, ptr %b.addr, align 8
  %call1 = call i32 @json_value_get_type(ptr noundef %1)
  store i32 %call1, ptr %b_type, align 4
  %2 = load i32, ptr %a_type, align 4
  %3 = load i32, ptr %b_type, align 4
  %cmp = icmp ne i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %a_type, align 4
  switch i32 %4, label %sw.default [
    i32 5, label %sw.bb
    i32 4, label %sw.bb15
    i32 2, label %sw.bb36
    i32 6, label %sw.bb49
    i32 3, label %sw.bb53
    i32 -1, label %sw.bb58
    i32 1, label %sw.bb59
  ]

sw.bb:                                            ; preds = %if.end
  %5 = load ptr, ptr %a.addr, align 8
  %call2 = call ptr @json_value_get_array(ptr noundef %5)
  store ptr %call2, ptr %a_array, align 8
  %6 = load ptr, ptr %b.addr, align 8
  %call3 = call ptr @json_value_get_array(ptr noundef %6)
  store ptr %call3, ptr %b_array, align 8
  %7 = load ptr, ptr %a_array, align 8
  %call4 = call i64 @json_array_get_count(ptr noundef %7)
  store i64 %call4, ptr %a_count, align 8
  %8 = load ptr, ptr %b_array, align 8
  %call5 = call i64 @json_array_get_count(ptr noundef %8)
  store i64 %call5, ptr %b_count, align 8
  %9 = load i64, ptr %a_count, align 8
  %10 = load i64, ptr %b_count, align 8
  %cmp6 = icmp ne i64 %9, %10
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %sw.bb
  store i32 0, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %sw.bb
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end8
  %11 = load i64, ptr %i, align 8
  %12 = load i64, ptr %a_count, align 8
  %cmp9 = icmp ult i64 %11, %12
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %a_array, align 8
  %14 = load i64, ptr %i, align 8
  %call10 = call ptr @json_array_get_value(ptr noundef %13, i64 noundef %14)
  %15 = load ptr, ptr %b_array, align 8
  %16 = load i64, ptr %i, align 8
  %call11 = call ptr @json_array_get_value(ptr noundef %15, i64 noundef %16)
  %call12 = call i32 @json_value_equals(ptr noundef %call10, ptr noundef %call11)
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.end14, label %if.then13

if.then13:                                        ; preds = %for.body
  store i32 0, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end14
  %17 = load i64, ptr %i, align 8
  %inc = add i64 %17, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !30

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb15:                                          ; preds = %if.end
  %18 = load ptr, ptr %a.addr, align 8
  %call16 = call ptr @json_value_get_object(ptr noundef %18)
  store ptr %call16, ptr %a_object, align 8
  %19 = load ptr, ptr %b.addr, align 8
  %call17 = call ptr @json_value_get_object(ptr noundef %19)
  store ptr %call17, ptr %b_object, align 8
  %20 = load ptr, ptr %a_object, align 8
  %call18 = call i64 @json_object_get_count(ptr noundef %20)
  store i64 %call18, ptr %a_count, align 8
  %21 = load ptr, ptr %b_object, align 8
  %call19 = call i64 @json_object_get_count(ptr noundef %21)
  store i64 %call19, ptr %b_count, align 8
  %22 = load i64, ptr %a_count, align 8
  %23 = load i64, ptr %b_count, align 8
  %cmp20 = icmp ne i64 %22, %23
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %sw.bb15
  store i32 0, ptr %retval, align 4
  br label %return

if.end22:                                         ; preds = %sw.bb15
  store i64 0, ptr %i, align 8
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc33, %if.end22
  %24 = load i64, ptr %i, align 8
  %25 = load i64, ptr %a_count, align 8
  %cmp24 = icmp ult i64 %24, %25
  br i1 %cmp24, label %for.body25, label %for.end35

for.body25:                                       ; preds = %for.cond23
  %26 = load ptr, ptr %a_object, align 8
  %27 = load i64, ptr %i, align 8
  %call26 = call ptr @json_object_get_name(ptr noundef %26, i64 noundef %27)
  store ptr %call26, ptr %key, align 8
  %28 = load ptr, ptr %a_object, align 8
  %29 = load ptr, ptr %key, align 8
  %call27 = call ptr @json_object_get_value(ptr noundef %28, ptr noundef %29)
  %30 = load ptr, ptr %b_object, align 8
  %31 = load ptr, ptr %key, align 8
  %call28 = call ptr @json_object_get_value(ptr noundef %30, ptr noundef %31)
  %call29 = call i32 @json_value_equals(ptr noundef %call27, ptr noundef %call28)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.end32, label %if.then31

if.then31:                                        ; preds = %for.body25
  store i32 0, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %for.body25
  br label %for.inc33

for.inc33:                                        ; preds = %if.end32
  %32 = load i64, ptr %i, align 8
  %inc34 = add i64 %32, 1
  store i64 %inc34, ptr %i, align 8
  br label %for.cond23, !llvm.loop !31

for.end35:                                        ; preds = %for.cond23
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb36:                                          ; preds = %if.end
  %33 = load ptr, ptr %a.addr, align 8
  %call37 = call ptr @json_value_get_string_desc(ptr noundef %33)
  store ptr %call37, ptr %a_string, align 8
  %34 = load ptr, ptr %b.addr, align 8
  %call38 = call ptr @json_value_get_string_desc(ptr noundef %34)
  store ptr %call38, ptr %b_string, align 8
  %35 = load ptr, ptr %a_string, align 8
  %cmp39 = icmp eq ptr %35, null
  br i1 %cmp39, label %if.then41, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb36
  %36 = load ptr, ptr %b_string, align 8
  %cmp40 = icmp eq ptr %36, null
  br i1 %cmp40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %lor.lhs.false, %sw.bb36
  store i32 0, ptr %retval, align 4
  br label %return

if.end42:                                         ; preds = %lor.lhs.false
  %37 = load ptr, ptr %a_string, align 8
  %length = getelementptr inbounds %struct.json_string, ptr %37, i32 0, i32 1
  %38 = load i64, ptr %length, align 8
  %39 = load ptr, ptr %b_string, align 8
  %length43 = getelementptr inbounds %struct.json_string, ptr %39, i32 0, i32 1
  %40 = load i64, ptr %length43, align 8
  %cmp44 = icmp eq i64 %38, %40
  br i1 %cmp44, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end42
  %41 = load ptr, ptr %a_string, align 8
  %chars = getelementptr inbounds %struct.json_string, ptr %41, i32 0, i32 0
  %42 = load ptr, ptr %chars, align 8
  %43 = load ptr, ptr %b_string, align 8
  %chars45 = getelementptr inbounds %struct.json_string, ptr %43, i32 0, i32 0
  %44 = load ptr, ptr %chars45, align 8
  %45 = load ptr, ptr %a_string, align 8
  %length46 = getelementptr inbounds %struct.json_string, ptr %45, i32 0, i32 1
  %46 = load i64, ptr %length46, align 8
  %call47 = call i32 @memcmp(ptr noundef %42, ptr noundef %44, i64 noundef %46)
  %cmp48 = icmp eq i32 %call47, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end42
  %47 = phi i1 [ false, %if.end42 ], [ %cmp48, %land.rhs ]
  %land.ext = zext i1 %47 to i32
  store i32 %land.ext, ptr %retval, align 4
  br label %return

sw.bb49:                                          ; preds = %if.end
  %48 = load ptr, ptr %a.addr, align 8
  %call50 = call i32 @json_value_get_boolean(ptr noundef %48)
  %49 = load ptr, ptr %b.addr, align 8
  %call51 = call i32 @json_value_get_boolean(ptr noundef %49)
  %cmp52 = icmp eq i32 %call50, %call51
  %conv = zext i1 %cmp52 to i32
  store i32 %conv, ptr %retval, align 4
  br label %return

sw.bb53:                                          ; preds = %if.end
  %50 = load ptr, ptr %a.addr, align 8
  %call54 = call double @json_value_get_number(ptr noundef %50)
  %51 = load ptr, ptr %b.addr, align 8
  %call55 = call double @json_value_get_number(ptr noundef %51)
  %sub = fsub double %call54, %call55
  %52 = call double @llvm.fabs.f64(double %sub)
  %cmp56 = fcmp olt double %52, 0x3EB0C6F7A0B5ED8D
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
  %53 = load i32, ptr %retval, align 4
  ret i32 %53
}

declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @json_type(ptr noundef %value) #0 {
entry:
  %value.addr = alloca ptr, align 8
  store ptr %value, ptr %value.addr, align 8
  %0 = load ptr, ptr %value.addr, align 8
  %call = call i32 @json_value_get_type(ptr noundef %0)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @json_object(ptr noundef %value) #0 {
entry:
  %value.addr = alloca ptr, align 8
  store ptr %value, ptr %value.addr, align 8
  %0 = load ptr, ptr %value.addr, align 8
  %call = call ptr @json_value_get_object(ptr noundef %0)
  ret ptr %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @json_array(ptr noundef %value) #0 {
entry:
  %value.addr = alloca ptr, align 8
  store ptr %value, ptr %value.addr, align 8
  %0 = load ptr, ptr %value.addr, align 8
  %call = call ptr @json_value_get_array(ptr noundef %0)
  ret ptr %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @json_string(ptr noundef %value) #0 {
entry:
  %value.addr = alloca ptr, align 8
  store ptr %value, ptr %value.addr, align 8
  %0 = load ptr, ptr %value.addr, align 8
  %call = call ptr @json_value_get_string(ptr noundef %0)
  ret ptr %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @json_string_len(ptr noundef %value) #0 {
entry:
  %value.addr = alloca ptr, align 8
  store ptr %value, ptr %value.addr, align 8
  %0 = load ptr, ptr %value.addr, align 8
  %call = call i64 @json_value_get_string_len(ptr noundef %0)
  ret i64 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define double @json_number(ptr noundef %value) #0 {
entry:
  %value.addr = alloca ptr, align 8
  store ptr %value, ptr %value.addr, align 8
  %0 = load ptr, ptr %value.addr, align 8
  %call = call double @json_value_get_number(ptr noundef %0)
  ret double %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @json_boolean(ptr noundef %value) #0 {
entry:
  %value.addr = alloca ptr, align 8
  store ptr %value, ptr %value.addr, align 8
  %0 = load ptr, ptr %value.addr, align 8
  %call = call i32 @json_value_get_boolean(ptr noundef %0)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @json_set_allocation_functions(ptr noundef %malloc_fun, ptr noundef %free_fun) #0 {
entry:
  %malloc_fun.addr = alloca ptr, align 8
  %free_fun.addr = alloca ptr, align 8
  store ptr %malloc_fun, ptr %malloc_fun.addr, align 8
  store ptr %free_fun, ptr %free_fun.addr, align 8
  %0 = load ptr, ptr %malloc_fun.addr, align 8
  store ptr %0, ptr @parson_malloc, align 8
  %1 = load ptr, ptr %free_fun.addr, align 8
  store ptr %1, ptr @parson_free, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @json_set_escape_slashes(i32 noundef %escape_slashes) #0 {
entry:
  %escape_slashes.addr = alloca i32, align 4
  store i32 %escape_slashes, ptr %escape_slashes.addr, align 4
  %0 = load i32, ptr %escape_slashes.addr, align 4
  store i32 %0, ptr @parson_escape_slashes, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @json_set_float_serialization_format(ptr noundef %format) #0 {
entry:
  %format.addr = alloca ptr, align 8
  store ptr %format, ptr %format.addr, align 8
  %0 = load ptr, ptr @parson_float_format, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @parson_free, align 8
  %2 = load ptr, ptr @parson_float_format, align 8
  call void %1(ptr noundef %2)
  store ptr null, ptr @parson_float_format, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %format.addr, align 8
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  store ptr null, ptr @parson_float_format, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %format.addr, align 8
  %call = call ptr @parson_strdup(ptr noundef %4)
  store ptr %call, ptr @parson_float_format, align 8
  br label %return

return:                                           ; preds = %if.end3, %if.then2
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @json_set_number_serialization_function(ptr noundef %func) #0 {
entry:
  %func.addr = alloca ptr, align 8
  store ptr %func, ptr %func.addr, align 8
  %0 = load ptr, ptr %func.addr, align 8
  store ptr %0, ptr @parson_number_serialization_function, align 8
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

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @parse_object_value(ptr noundef %string, i64 noundef %nesting) #0 {
entry:
  %retval = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  %nesting.addr = alloca i64, align 8
  %status = alloca i32, align 4
  %output_value = alloca ptr, align 8
  %new_value = alloca ptr, align 8
  %output_object = alloca ptr, align 8
  %new_key = alloca ptr, align 8
  %key_len = alloca i64, align 8
  store ptr %string, ptr %string.addr, align 8
  store i64 %nesting, ptr %nesting.addr, align 8
  store i32 -1, ptr %status, align 4
  store ptr null, ptr %output_value, align 8
  store ptr null, ptr %new_value, align 8
  store ptr null, ptr %output_object, align 8
  store ptr null, ptr %new_key, align 8
  %call = call ptr @json_value_init_object()
  store ptr %call, ptr %output_value, align 8
  %0 = load ptr, ptr %output_value, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %string.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %3 = load i8, ptr %2, align 1
  %conv = sext i8 %3 to i32
  %cmp1 = icmp ne i32 %conv, 123
  br i1 %cmp1, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr %output_value, align 8
  call void @json_value_free(ptr noundef %4)
  store ptr null, ptr %retval, align 8
  br label %return

if.end4:                                          ; preds = %if.end
  %5 = load ptr, ptr %output_value, align 8
  %call5 = call ptr @json_value_get_object(ptr noundef %5)
  store ptr %call5, ptr %output_object, align 8
  %6 = load ptr, ptr %string.addr, align 8
  %7 = load ptr, ptr %6, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %7, i32 1
  store ptr %incdec.ptr, ptr %6, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end4
  %8 = load ptr, ptr %string.addr, align 8
  %9 = load ptr, ptr %8, align 8
  %10 = load i8, ptr %9, align 1
  %conv6 = zext i8 %10 to i32
  %call7 = call i32 @isspace(i32 noundef %conv6) #8
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load ptr, ptr %string.addr, align 8
  %12 = load ptr, ptr %11, align 8
  %incdec.ptr8 = getelementptr inbounds i8, ptr %12, i32 1
  store ptr %incdec.ptr8, ptr %11, align 8
  br label %while.cond, !llvm.loop !32

while.end:                                        ; preds = %while.cond
  %13 = load ptr, ptr %string.addr, align 8
  %14 = load ptr, ptr %13, align 8
  %15 = load i8, ptr %14, align 1
  %conv9 = sext i8 %15 to i32
  %cmp10 = icmp eq i32 %conv9, 125
  br i1 %cmp10, label %if.then12, label %if.end14

if.then12:                                        ; preds = %while.end
  %16 = load ptr, ptr %string.addr, align 8
  %17 = load ptr, ptr %16, align 8
  %incdec.ptr13 = getelementptr inbounds i8, ptr %17, i32 1
  store ptr %incdec.ptr13, ptr %16, align 8
  %18 = load ptr, ptr %output_value, align 8
  store ptr %18, ptr %retval, align 8
  br label %return

if.end14:                                         ; preds = %while.end
  br label %while.cond15

while.cond15:                                     ; preds = %if.end76, %if.end14
  %19 = load ptr, ptr %string.addr, align 8
  %20 = load ptr, ptr %19, align 8
  %21 = load i8, ptr %20, align 1
  %conv16 = sext i8 %21 to i32
  %cmp17 = icmp ne i32 %conv16, 0
  br i1 %cmp17, label %while.body19, label %while.end77

while.body19:                                     ; preds = %while.cond15
  store i64 0, ptr %key_len, align 8
  %22 = load ptr, ptr %string.addr, align 8
  %call20 = call ptr @get_quoted_string(ptr noundef %22, ptr noundef %key_len)
  store ptr %call20, ptr %new_key, align 8
  %23 = load ptr, ptr %new_key, align 8
  %tobool21 = icmp ne ptr %23, null
  br i1 %tobool21, label %if.end23, label %if.then22

if.then22:                                        ; preds = %while.body19
  %24 = load ptr, ptr %output_value, align 8
  call void @json_value_free(ptr noundef %24)
  store ptr null, ptr %retval, align 8
  br label %return

if.end23:                                         ; preds = %while.body19
  %25 = load i64, ptr %key_len, align 8
  %26 = load ptr, ptr %new_key, align 8
  %call24 = call i64 @strlen(ptr noundef %26)
  %cmp25 = icmp ne i64 %25, %call24
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end23
  %27 = load ptr, ptr @parson_free, align 8
  %28 = load ptr, ptr %new_key, align 8
  call void %27(ptr noundef %28)
  %29 = load ptr, ptr %output_value, align 8
  call void @json_value_free(ptr noundef %29)
  store ptr null, ptr %retval, align 8
  br label %return

if.end28:                                         ; preds = %if.end23
  br label %while.cond29

while.cond29:                                     ; preds = %while.body33, %if.end28
  %30 = load ptr, ptr %string.addr, align 8
  %31 = load ptr, ptr %30, align 8
  %32 = load i8, ptr %31, align 1
  %conv30 = zext i8 %32 to i32
  %call31 = call i32 @isspace(i32 noundef %conv30) #8
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %while.body33, label %while.end35

while.body33:                                     ; preds = %while.cond29
  %33 = load ptr, ptr %string.addr, align 8
  %34 = load ptr, ptr %33, align 8
  %incdec.ptr34 = getelementptr inbounds i8, ptr %34, i32 1
  store ptr %incdec.ptr34, ptr %33, align 8
  br label %while.cond29, !llvm.loop !33

while.end35:                                      ; preds = %while.cond29
  %35 = load ptr, ptr %string.addr, align 8
  %36 = load ptr, ptr %35, align 8
  %37 = load i8, ptr %36, align 1
  %conv36 = sext i8 %37 to i32
  %cmp37 = icmp ne i32 %conv36, 58
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %while.end35
  %38 = load ptr, ptr @parson_free, align 8
  %39 = load ptr, ptr %new_key, align 8
  call void %38(ptr noundef %39)
  %40 = load ptr, ptr %output_value, align 8
  call void @json_value_free(ptr noundef %40)
  store ptr null, ptr %retval, align 8
  br label %return

if.end40:                                         ; preds = %while.end35
  %41 = load ptr, ptr %string.addr, align 8
  %42 = load ptr, ptr %41, align 8
  %incdec.ptr41 = getelementptr inbounds i8, ptr %42, i32 1
  store ptr %incdec.ptr41, ptr %41, align 8
  %43 = load ptr, ptr %string.addr, align 8
  %44 = load i64, ptr %nesting.addr, align 8
  %call42 = call ptr @parse_value(ptr noundef %43, i64 noundef %44)
  store ptr %call42, ptr %new_value, align 8
  %45 = load ptr, ptr %new_value, align 8
  %cmp43 = icmp eq ptr %45, null
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end40
  %46 = load ptr, ptr @parson_free, align 8
  %47 = load ptr, ptr %new_key, align 8
  call void %46(ptr noundef %47)
  %48 = load ptr, ptr %output_value, align 8
  call void @json_value_free(ptr noundef %48)
  store ptr null, ptr %retval, align 8
  br label %return

if.end46:                                         ; preds = %if.end40
  %49 = load ptr, ptr %output_object, align 8
  %50 = load ptr, ptr %new_key, align 8
  %51 = load ptr, ptr %new_value, align 8
  %call47 = call i32 @json_object_add(ptr noundef %49, ptr noundef %50, ptr noundef %51)
  store i32 %call47, ptr %status, align 4
  %52 = load i32, ptr %status, align 4
  %cmp48 = icmp ne i32 %52, 0
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.end46
  %53 = load ptr, ptr @parson_free, align 8
  %54 = load ptr, ptr %new_key, align 8
  call void %53(ptr noundef %54)
  %55 = load ptr, ptr %new_value, align 8
  call void @json_value_free(ptr noundef %55)
  %56 = load ptr, ptr %output_value, align 8
  call void @json_value_free(ptr noundef %56)
  store ptr null, ptr %retval, align 8
  br label %return

if.end51:                                         ; preds = %if.end46
  br label %while.cond52

while.cond52:                                     ; preds = %while.body56, %if.end51
  %57 = load ptr, ptr %string.addr, align 8
  %58 = load ptr, ptr %57, align 8
  %59 = load i8, ptr %58, align 1
  %conv53 = zext i8 %59 to i32
  %call54 = call i32 @isspace(i32 noundef %conv53) #8
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %while.body56, label %while.end58

while.body56:                                     ; preds = %while.cond52
  %60 = load ptr, ptr %string.addr, align 8
  %61 = load ptr, ptr %60, align 8
  %incdec.ptr57 = getelementptr inbounds i8, ptr %61, i32 1
  store ptr %incdec.ptr57, ptr %60, align 8
  br label %while.cond52, !llvm.loop !34

while.end58:                                      ; preds = %while.cond52
  %62 = load ptr, ptr %string.addr, align 8
  %63 = load ptr, ptr %62, align 8
  %64 = load i8, ptr %63, align 1
  %conv59 = sext i8 %64 to i32
  %cmp60 = icmp ne i32 %conv59, 44
  br i1 %cmp60, label %if.then62, label %if.end63

if.then62:                                        ; preds = %while.end58
  br label %while.end77

if.end63:                                         ; preds = %while.end58
  %65 = load ptr, ptr %string.addr, align 8
  %66 = load ptr, ptr %65, align 8
  %incdec.ptr64 = getelementptr inbounds i8, ptr %66, i32 1
  store ptr %incdec.ptr64, ptr %65, align 8
  br label %while.cond65

while.cond65:                                     ; preds = %while.body69, %if.end63
  %67 = load ptr, ptr %string.addr, align 8
  %68 = load ptr, ptr %67, align 8
  %69 = load i8, ptr %68, align 1
  %conv66 = zext i8 %69 to i32
  %call67 = call i32 @isspace(i32 noundef %conv66) #8
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %while.body69, label %while.end71

while.body69:                                     ; preds = %while.cond65
  %70 = load ptr, ptr %string.addr, align 8
  %71 = load ptr, ptr %70, align 8
  %incdec.ptr70 = getelementptr inbounds i8, ptr %71, i32 1
  store ptr %incdec.ptr70, ptr %70, align 8
  br label %while.cond65, !llvm.loop !35

while.end71:                                      ; preds = %while.cond65
  %72 = load ptr, ptr %string.addr, align 8
  %73 = load ptr, ptr %72, align 8
  %74 = load i8, ptr %73, align 1
  %conv72 = sext i8 %74 to i32
  %cmp73 = icmp eq i32 %conv72, 125
  br i1 %cmp73, label %if.then75, label %if.end76

if.then75:                                        ; preds = %while.end71
  br label %while.end77

if.end76:                                         ; preds = %while.end71
  br label %while.cond15, !llvm.loop !36

while.end77:                                      ; preds = %if.then75, %if.then62, %while.cond15
  br label %while.cond78

while.cond78:                                     ; preds = %while.body82, %while.end77
  %75 = load ptr, ptr %string.addr, align 8
  %76 = load ptr, ptr %75, align 8
  %77 = load i8, ptr %76, align 1
  %conv79 = zext i8 %77 to i32
  %call80 = call i32 @isspace(i32 noundef %conv79) #8
  %tobool81 = icmp ne i32 %call80, 0
  br i1 %tobool81, label %while.body82, label %while.end84

while.body82:                                     ; preds = %while.cond78
  %78 = load ptr, ptr %string.addr, align 8
  %79 = load ptr, ptr %78, align 8
  %incdec.ptr83 = getelementptr inbounds i8, ptr %79, i32 1
  store ptr %incdec.ptr83, ptr %78, align 8
  br label %while.cond78, !llvm.loop !37

while.end84:                                      ; preds = %while.cond78
  %80 = load ptr, ptr %string.addr, align 8
  %81 = load ptr, ptr %80, align 8
  %82 = load i8, ptr %81, align 1
  %conv85 = sext i8 %82 to i32
  %cmp86 = icmp ne i32 %conv85, 125
  br i1 %cmp86, label %if.then88, label %if.end89

if.then88:                                        ; preds = %while.end84
  %83 = load ptr, ptr %output_value, align 8
  call void @json_value_free(ptr noundef %83)
  store ptr null, ptr %retval, align 8
  br label %return

if.end89:                                         ; preds = %while.end84
  %84 = load ptr, ptr %string.addr, align 8
  %85 = load ptr, ptr %84, align 8
  %incdec.ptr90 = getelementptr inbounds i8, ptr %85, i32 1
  store ptr %incdec.ptr90, ptr %84, align 8
  %86 = load ptr, ptr %output_value, align 8
  store ptr %86, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end89, %if.then88, %if.then50, %if.then45, %if.then39, %if.then27, %if.then22, %if.then12, %if.then3, %if.then
  %87 = load ptr, ptr %retval, align 8
  ret ptr %87
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %0 = load ptr, ptr %output_value, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %string.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %3 = load i8, ptr %2, align 1
  %conv = sext i8 %3 to i32
  %cmp1 = icmp ne i32 %conv, 91
  br i1 %cmp1, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr %output_value, align 8
  call void @json_value_free(ptr noundef %4)
  store ptr null, ptr %retval, align 8
  br label %return

if.end4:                                          ; preds = %if.end
  %5 = load ptr, ptr %output_value, align 8
  %call5 = call ptr @json_value_get_array(ptr noundef %5)
  store ptr %call5, ptr %output_array, align 8
  %6 = load ptr, ptr %string.addr, align 8
  %7 = load ptr, ptr %6, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %7, i32 1
  store ptr %incdec.ptr, ptr %6, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end4
  %8 = load ptr, ptr %string.addr, align 8
  %9 = load ptr, ptr %8, align 8
  %10 = load i8, ptr %9, align 1
  %conv6 = zext i8 %10 to i32
  %call7 = call i32 @isspace(i32 noundef %conv6) #8
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load ptr, ptr %string.addr, align 8
  %12 = load ptr, ptr %11, align 8
  %incdec.ptr8 = getelementptr inbounds i8, ptr %12, i32 1
  store ptr %incdec.ptr8, ptr %11, align 8
  br label %while.cond, !llvm.loop !38

while.end:                                        ; preds = %while.cond
  %13 = load ptr, ptr %string.addr, align 8
  %14 = load ptr, ptr %13, align 8
  %15 = load i8, ptr %14, align 1
  %conv9 = sext i8 %15 to i32
  %cmp10 = icmp eq i32 %conv9, 93
  br i1 %cmp10, label %if.then12, label %if.end14

if.then12:                                        ; preds = %while.end
  %16 = load ptr, ptr %string.addr, align 8
  %17 = load ptr, ptr %16, align 8
  %incdec.ptr13 = getelementptr inbounds i8, ptr %17, i32 1
  store ptr %incdec.ptr13, ptr %16, align 8
  %18 = load ptr, ptr %output_value, align 8
  store ptr %18, ptr %retval, align 8
  br label %return

if.end14:                                         ; preds = %while.end
  br label %while.cond15

while.cond15:                                     ; preds = %if.end54, %if.end14
  %19 = load ptr, ptr %string.addr, align 8
  %20 = load ptr, ptr %19, align 8
  %21 = load i8, ptr %20, align 1
  %conv16 = sext i8 %21 to i32
  %cmp17 = icmp ne i32 %conv16, 0
  br i1 %cmp17, label %while.body19, label %while.end55

while.body19:                                     ; preds = %while.cond15
  %22 = load ptr, ptr %string.addr, align 8
  %23 = load i64, ptr %nesting.addr, align 8
  %call20 = call ptr @parse_value(ptr noundef %22, i64 noundef %23)
  store ptr %call20, ptr %new_array_value, align 8
  %24 = load ptr, ptr %new_array_value, align 8
  %cmp21 = icmp eq ptr %24, null
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %while.body19
  %25 = load ptr, ptr %output_value, align 8
  call void @json_value_free(ptr noundef %25)
  store ptr null, ptr %retval, align 8
  br label %return

if.end24:                                         ; preds = %while.body19
  %26 = load ptr, ptr %output_array, align 8
  %27 = load ptr, ptr %new_array_value, align 8
  %call25 = call i32 @json_array_add(ptr noundef %26, ptr noundef %27)
  %cmp26 = icmp ne i32 %call25, 0
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end24
  %28 = load ptr, ptr %new_array_value, align 8
  call void @json_value_free(ptr noundef %28)
  %29 = load ptr, ptr %output_value, align 8
  call void @json_value_free(ptr noundef %29)
  store ptr null, ptr %retval, align 8
  br label %return

if.end29:                                         ; preds = %if.end24
  br label %while.cond30

while.cond30:                                     ; preds = %while.body34, %if.end29
  %30 = load ptr, ptr %string.addr, align 8
  %31 = load ptr, ptr %30, align 8
  %32 = load i8, ptr %31, align 1
  %conv31 = zext i8 %32 to i32
  %call32 = call i32 @isspace(i32 noundef %conv31) #8
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %while.body34, label %while.end36

while.body34:                                     ; preds = %while.cond30
  %33 = load ptr, ptr %string.addr, align 8
  %34 = load ptr, ptr %33, align 8
  %incdec.ptr35 = getelementptr inbounds i8, ptr %34, i32 1
  store ptr %incdec.ptr35, ptr %33, align 8
  br label %while.cond30, !llvm.loop !39

while.end36:                                      ; preds = %while.cond30
  %35 = load ptr, ptr %string.addr, align 8
  %36 = load ptr, ptr %35, align 8
  %37 = load i8, ptr %36, align 1
  %conv37 = sext i8 %37 to i32
  %cmp38 = icmp ne i32 %conv37, 44
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %while.end36
  br label %while.end55

if.end41:                                         ; preds = %while.end36
  %38 = load ptr, ptr %string.addr, align 8
  %39 = load ptr, ptr %38, align 8
  %incdec.ptr42 = getelementptr inbounds i8, ptr %39, i32 1
  store ptr %incdec.ptr42, ptr %38, align 8
  br label %while.cond43

while.cond43:                                     ; preds = %while.body47, %if.end41
  %40 = load ptr, ptr %string.addr, align 8
  %41 = load ptr, ptr %40, align 8
  %42 = load i8, ptr %41, align 1
  %conv44 = zext i8 %42 to i32
  %call45 = call i32 @isspace(i32 noundef %conv44) #8
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %while.body47, label %while.end49

while.body47:                                     ; preds = %while.cond43
  %43 = load ptr, ptr %string.addr, align 8
  %44 = load ptr, ptr %43, align 8
  %incdec.ptr48 = getelementptr inbounds i8, ptr %44, i32 1
  store ptr %incdec.ptr48, ptr %43, align 8
  br label %while.cond43, !llvm.loop !40

while.end49:                                      ; preds = %while.cond43
  %45 = load ptr, ptr %string.addr, align 8
  %46 = load ptr, ptr %45, align 8
  %47 = load i8, ptr %46, align 1
  %conv50 = sext i8 %47 to i32
  %cmp51 = icmp eq i32 %conv50, 93
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %while.end49
  br label %while.end55

if.end54:                                         ; preds = %while.end49
  br label %while.cond15, !llvm.loop !41

while.end55:                                      ; preds = %if.then53, %if.then40, %while.cond15
  br label %while.cond56

while.cond56:                                     ; preds = %while.body60, %while.end55
  %48 = load ptr, ptr %string.addr, align 8
  %49 = load ptr, ptr %48, align 8
  %50 = load i8, ptr %49, align 1
  %conv57 = zext i8 %50 to i32
  %call58 = call i32 @isspace(i32 noundef %conv57) #8
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %while.body60, label %while.end62

while.body60:                                     ; preds = %while.cond56
  %51 = load ptr, ptr %string.addr, align 8
  %52 = load ptr, ptr %51, align 8
  %incdec.ptr61 = getelementptr inbounds i8, ptr %52, i32 1
  store ptr %incdec.ptr61, ptr %51, align 8
  br label %while.cond56, !llvm.loop !42

while.end62:                                      ; preds = %while.cond56
  %53 = load ptr, ptr %string.addr, align 8
  %54 = load ptr, ptr %53, align 8
  %55 = load i8, ptr %54, align 1
  %conv63 = sext i8 %55 to i32
  %cmp64 = icmp ne i32 %conv63, 93
  br i1 %cmp64, label %if.then70, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end62
  %56 = load ptr, ptr %output_array, align 8
  %57 = load ptr, ptr %output_array, align 8
  %call66 = call i64 @json_array_get_count(ptr noundef %57)
  %call67 = call i32 @json_array_resize(ptr noundef %56, i64 noundef %call66)
  %cmp68 = icmp ne i32 %call67, 0
  br i1 %cmp68, label %if.then70, label %if.end71

if.then70:                                        ; preds = %lor.lhs.false, %while.end62
  %58 = load ptr, ptr %output_value, align 8
  call void @json_value_free(ptr noundef %58)
  store ptr null, ptr %retval, align 8
  br label %return

if.end71:                                         ; preds = %lor.lhs.false
  %59 = load ptr, ptr %string.addr, align 8
  %60 = load ptr, ptr %59, align 8
  %incdec.ptr72 = getelementptr inbounds i8, ptr %60, i32 1
  store ptr %incdec.ptr72, ptr %59, align 8
  %61 = load ptr, ptr %output_value, align 8
  store ptr %61, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end71, %if.then70, %if.then28, %if.then23, %if.then12, %if.then3, %if.then
  %62 = load ptr, ptr %retval, align 8
  ret ptr %62
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @parse_string_value(ptr noundef %string) #0 {
entry:
  %retval = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  %value = alloca ptr, align 8
  %new_string_len = alloca i64, align 8
  %new_string = alloca ptr, align 8
  store ptr %string, ptr %string.addr, align 8
  store ptr null, ptr %value, align 8
  store i64 0, ptr %new_string_len, align 8
  %0 = load ptr, ptr %string.addr, align 8
  %call = call ptr @get_quoted_string(ptr noundef %0, ptr noundef %new_string_len)
  store ptr %call, ptr %new_string, align 8
  %1 = load ptr, ptr %new_string, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %new_string, align 8
  %3 = load i64, ptr %new_string_len, align 8
  %call1 = call ptr @json_value_init_string_no_copy(ptr noundef %2, i64 noundef %3)
  store ptr %call1, ptr %value, align 8
  %4 = load ptr, ptr %value, align 8
  %cmp2 = icmp eq ptr %4, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr @parson_free, align 8
  %6 = load ptr, ptr %new_string, align 8
  call void %5(ptr noundef %6)
  store ptr null, ptr %retval, align 8
  br label %return

if.end4:                                          ; preds = %if.end
  %7 = load ptr, ptr %value, align 8
  store ptr %7, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %8 = load ptr, ptr %retval, align 8
  ret ptr %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @parse_boolean_value(ptr noundef %string) #0 {
entry:
  %retval = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  %true_token_size = alloca i64, align 8
  %false_token_size = alloca i64, align 8
  store ptr %string, ptr %string.addr, align 8
  store i64 4, ptr %true_token_size, align 8
  store i64 5, ptr %false_token_size, align 8
  %0 = load ptr, ptr %string.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %2 = load i64, ptr %true_token_size, align 8
  %call = call i32 @strncmp(ptr noundef @.str.6, ptr noundef %1, i64 noundef %2)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %true_token_size, align 8
  %4 = load ptr, ptr %string.addr, align 8
  %5 = load ptr, ptr %4, align 8
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 %3
  store ptr %add.ptr, ptr %4, align 8
  %call1 = call ptr @json_value_init_boolean(i32 noundef 1)
  store ptr %call1, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %string.addr, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load i64, ptr %false_token_size, align 8
  %call2 = call i32 @strncmp(ptr noundef @.str.7, ptr noundef %7, i64 noundef %8)
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.else
  %9 = load i64, ptr %false_token_size, align 8
  %10 = load ptr, ptr %string.addr, align 8
  %11 = load ptr, ptr %10, align 8
  %add.ptr5 = getelementptr inbounds i8, ptr %11, i64 %9
  store ptr %add.ptr5, ptr %10, align 8
  %call6 = call ptr @json_value_init_boolean(i32 noundef 0)
  store ptr %call6, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end7, %if.then4, %if.then
  %12 = load ptr, ptr %retval, align 8
  ret ptr %12
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @parse_number_value(ptr noundef %string) #0 {
entry:
  %retval = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  %end = alloca ptr, align 8
  %number = alloca double, align 8
  store ptr %string, ptr %string.addr, align 8
  store double 0.000000e+00, ptr %number, align 8
  %call = call ptr @__error()
  store i32 0, ptr %call, align 4
  %0 = load ptr, ptr %string.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %call1 = call double @"\01_strtod"(ptr noundef %1, ptr noundef %end)
  store double %call1, ptr %number, align 8
  %call2 = call ptr @__error()
  %2 = load i32, ptr %call2, align 4
  %cmp = icmp eq i32 %2, 34
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load double, ptr %number, align 8
  %cmp3 = fcmp ole double %3, 0xFFF0000000000000
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %4 = load double, ptr %number, align 8
  %cmp4 = fcmp oge double %4, 0x7FF0000000000000
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  %call5 = call ptr @__error()
  %5 = load i32, ptr %call5, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %land.lhs.true6, label %lor.lhs.false9

land.lhs.true6:                                   ; preds = %if.end
  %call7 = call ptr @__error()
  %6 = load i32, ptr %call7, align 4
  %cmp8 = icmp ne i32 %6, 34
  br i1 %cmp8, label %if.then12, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %land.lhs.true6, %if.end
  %7 = load ptr, ptr %string.addr, align 8
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %end, align 8
  %10 = load ptr, ptr %string.addr, align 8
  %11 = load ptr, ptr %10, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %9 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %11 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call10 = call i32 @is_decimal(ptr noundef %8, i64 noundef %sub.ptr.sub)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end13, label %if.then12

if.then12:                                        ; preds = %lor.lhs.false9, %land.lhs.true6
  store ptr null, ptr %retval, align 8
  br label %return

if.end13:                                         ; preds = %lor.lhs.false9
  %12 = load ptr, ptr %end, align 8
  %13 = load ptr, ptr %string.addr, align 8
  store ptr %12, ptr %13, align 8
  %14 = load double, ptr %number, align 8
  %call14 = call ptr @json_value_init_number(double noundef %14)
  store ptr %call14, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end13, %if.then12, %if.then
  %15 = load ptr, ptr %retval, align 8
  ret ptr %15
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @parse_null_value(ptr noundef %string) #0 {
entry:
  %retval = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  %token_size = alloca i64, align 8
  store ptr %string, ptr %string.addr, align 8
  store i64 4, ptr %token_size, align 8
  %0 = load ptr, ptr %string.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %2 = load i64, ptr %token_size, align 8
  %call = call i32 @strncmp(ptr noundef @.str.10, ptr noundef %1, i64 noundef %2)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %token_size, align 8
  %4 = load ptr, ptr %string.addr, align 8
  %5 = load ptr, ptr %4, align 8
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 %3
  store ptr %add.ptr, ptr %4, align 8
  %call1 = call ptr @json_value_init_null()
  store ptr %call1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load ptr, ptr %retval, align 8
  ret ptr %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @get_quoted_string(ptr noundef %string, ptr noundef %output_string_len) #0 {
entry:
  %retval = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  %output_string_len.addr = alloca ptr, align 8
  %string_start = alloca ptr, align 8
  %input_string_len = alloca i64, align 8
  %status = alloca i32, align 4
  store ptr %string, ptr %string.addr, align 8
  store ptr %output_string_len, ptr %output_string_len.addr, align 8
  %0 = load ptr, ptr %string.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %string_start, align 8
  store i64 0, ptr %input_string_len, align 8
  %2 = load ptr, ptr %string.addr, align 8
  %call = call i32 @skip_quotes(ptr noundef %2)
  store i32 %call, ptr %status, align 4
  %3 = load i32, ptr %status, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %string.addr, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %string_start, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %5 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub nsw i64 %sub.ptr.sub, 2
  store i64 %sub, ptr %input_string_len, align 8
  %7 = load ptr, ptr %string_start, align 8
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 1
  %8 = load i64, ptr %input_string_len, align 8
  %9 = load ptr, ptr %output_string_len.addr, align 8
  %call1 = call ptr @process_string(ptr noundef %add.ptr, i64 noundef %8, ptr noundef %9)
  store ptr %call1, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load ptr, ptr %retval, align 8
  ret ptr %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @skip_quotes(ptr noundef %string) #0 {
entry:
  %retval = alloca i32, align 4
  %string.addr = alloca ptr, align 8
  store ptr %string, ptr %string.addr, align 8
  %0 = load ptr, ptr %string.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %2 = load i8, ptr %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 34
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %string.addr, align 8
  %4 = load ptr, ptr %3, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %4, i32 1
  store ptr %incdec.ptr, ptr %3, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end20, %if.end
  %5 = load ptr, ptr %string.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = load i8, ptr %6, align 1
  %conv2 = sext i8 %7 to i32
  %cmp3 = icmp ne i32 %conv2, 34
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load ptr, ptr %string.addr, align 8
  %9 = load ptr, ptr %8, align 8
  %10 = load i8, ptr %9, align 1
  %conv5 = sext i8 %10 to i32
  %cmp6 = icmp eq i32 %conv5, 0
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %while.body
  store i32 -1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %while.body
  %11 = load ptr, ptr %string.addr, align 8
  %12 = load ptr, ptr %11, align 8
  %13 = load i8, ptr %12, align 1
  %conv9 = sext i8 %13 to i32
  %cmp10 = icmp eq i32 %conv9, 92
  br i1 %cmp10, label %if.then12, label %if.end19

if.then12:                                        ; preds = %if.else
  %14 = load ptr, ptr %string.addr, align 8
  %15 = load ptr, ptr %14, align 8
  %incdec.ptr13 = getelementptr inbounds i8, ptr %15, i32 1
  store ptr %incdec.ptr13, ptr %14, align 8
  %16 = load ptr, ptr %string.addr, align 8
  %17 = load ptr, ptr %16, align 8
  %18 = load i8, ptr %17, align 1
  %conv14 = sext i8 %18 to i32
  %cmp15 = icmp eq i32 %conv14, 0
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.then12
  store i32 -1, ptr %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.then12
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.else
  br label %if.end20

if.end20:                                         ; preds = %if.end19
  %19 = load ptr, ptr %string.addr, align 8
  %20 = load ptr, ptr %19, align 8
  %incdec.ptr21 = getelementptr inbounds i8, ptr %20, i32 1
  store ptr %incdec.ptr21, ptr %19, align 8
  br label %while.cond, !llvm.loop !43

while.end:                                        ; preds = %while.cond
  %21 = load ptr, ptr %string.addr, align 8
  %22 = load ptr, ptr %21, align 8
  %incdec.ptr22 = getelementptr inbounds i8, ptr %22, i32 1
  store ptr %incdec.ptr22, ptr %21, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then17, %if.then8, %if.then
  %23 = load i32, ptr %retval, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @process_string(ptr noundef %input, i64 noundef %input_len, ptr noundef %output_len) #0 {
entry:
  %retval = alloca ptr, align 8
  %input.addr = alloca ptr, align 8
  %input_len.addr = alloca i64, align 8
  %output_len.addr = alloca ptr, align 8
  %input_ptr = alloca ptr, align 8
  %initial_size = alloca i64, align 8
  %final_size = alloca i64, align 8
  %output = alloca ptr, align 8
  %output_ptr = alloca ptr, align 8
  %resized_output = alloca ptr, align 8
  store ptr %input, ptr %input.addr, align 8
  store i64 %input_len, ptr %input_len.addr, align 8
  store ptr %output_len, ptr %output_len.addr, align 8
  %0 = load ptr, ptr %input.addr, align 8
  store ptr %0, ptr %input_ptr, align 8
  %1 = load i64, ptr %input_len.addr, align 8
  %add = add i64 %1, 1
  %mul = mul i64 %add, 1
  store i64 %mul, ptr %initial_size, align 8
  store i64 0, ptr %final_size, align 8
  store ptr null, ptr %output, align 8
  store ptr null, ptr %output_ptr, align 8
  store ptr null, ptr %resized_output, align 8
  %2 = load ptr, ptr @parson_malloc, align 8
  %3 = load i64, ptr %initial_size, align 8
  %call = call ptr %2(i64 noundef %3)
  store ptr %call, ptr %output, align 8
  %4 = load ptr, ptr %output, align 8
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %error

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %output, align 8
  store ptr %5, ptr %output_ptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end29, %if.end
  %6 = load ptr, ptr %input_ptr, align 8
  %7 = load i8, ptr %6, align 1
  %conv = sext i8 %7 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %8 = load ptr, ptr %input_ptr, align 8
  %9 = load ptr, ptr %input.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %8 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %10 = load i64, ptr %input_len.addr, align 8
  %cmp3 = icmp ult i64 %sub.ptr.sub, %10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load ptr, ptr %input_ptr, align 8
  %13 = load i8, ptr %12, align 1
  %conv5 = sext i8 %13 to i32
  %cmp6 = icmp eq i32 %conv5, 92
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %while.body
  %14 = load ptr, ptr %input_ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %14, i32 1
  store ptr %incdec.ptr, ptr %input_ptr, align 8
  %15 = load ptr, ptr %input_ptr, align 8
  %16 = load i8, ptr %15, align 1
  %conv9 = sext i8 %16 to i32
  switch i32 %conv9, label %sw.default [
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
  %17 = load ptr, ptr %output_ptr, align 8
  store i8 34, ptr %17, align 1
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.then8
  %18 = load ptr, ptr %output_ptr, align 8
  store i8 92, ptr %18, align 1
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.then8
  %19 = load ptr, ptr %output_ptr, align 8
  store i8 47, ptr %19, align 1
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.then8
  %20 = load ptr, ptr %output_ptr, align 8
  store i8 8, ptr %20, align 1
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.then8
  %21 = load ptr, ptr %output_ptr, align 8
  store i8 12, ptr %21, align 1
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.then8
  %22 = load ptr, ptr %output_ptr, align 8
  store i8 10, ptr %22, align 1
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.then8
  %23 = load ptr, ptr %output_ptr, align 8
  store i8 13, ptr %23, align 1
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.then8
  %24 = load ptr, ptr %output_ptr, align 8
  store i8 9, ptr %24, align 1
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.then8
  %call18 = call i32 @parse_utf16(ptr noundef %input_ptr, ptr noundef %output_ptr)
  %cmp19 = icmp ne i32 %call18, 0
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %sw.bb17
  br label %error

if.end22:                                         ; preds = %sw.bb17
  br label %sw.epilog

sw.default:                                       ; preds = %if.then8
  br label %error

sw.epilog:                                        ; preds = %if.end22, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb
  br label %if.end29

if.else:                                          ; preds = %while.body
  %25 = load ptr, ptr %input_ptr, align 8
  %26 = load i8, ptr %25, align 1
  %conv23 = zext i8 %26 to i32
  %cmp24 = icmp slt i32 %conv23, 32
  br i1 %cmp24, label %if.then26, label %if.else27

if.then26:                                        ; preds = %if.else
  br label %error

if.else27:                                        ; preds = %if.else
  %27 = load ptr, ptr %input_ptr, align 8
  %28 = load i8, ptr %27, align 1
  %29 = load ptr, ptr %output_ptr, align 8
  store i8 %28, ptr %29, align 1
  br label %if.end28

if.end28:                                         ; preds = %if.else27
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %sw.epilog
  %30 = load ptr, ptr %output_ptr, align 8
  %incdec.ptr30 = getelementptr inbounds i8, ptr %30, i32 1
  store ptr %incdec.ptr30, ptr %output_ptr, align 8
  %31 = load ptr, ptr %input_ptr, align 8
  %incdec.ptr31 = getelementptr inbounds i8, ptr %31, i32 1
  store ptr %incdec.ptr31, ptr %input_ptr, align 8
  br label %while.cond, !llvm.loop !44

while.end:                                        ; preds = %land.end
  %32 = load ptr, ptr %output_ptr, align 8
  store i8 0, ptr %32, align 1
  %33 = load ptr, ptr %output_ptr, align 8
  %34 = load ptr, ptr %output, align 8
  %sub.ptr.lhs.cast32 = ptrtoint ptr %33 to i64
  %sub.ptr.rhs.cast33 = ptrtoint ptr %34 to i64
  %sub.ptr.sub34 = sub i64 %sub.ptr.lhs.cast32, %sub.ptr.rhs.cast33
  %add35 = add i64 %sub.ptr.sub34, 1
  store i64 %add35, ptr %final_size, align 8
  %35 = load ptr, ptr @parson_malloc, align 8
  %36 = load i64, ptr %final_size, align 8
  %call36 = call ptr %35(i64 noundef %36)
  store ptr %call36, ptr %resized_output, align 8
  %37 = load ptr, ptr %resized_output, align 8
  %cmp37 = icmp eq ptr %37, null
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %while.end
  br label %error

if.end40:                                         ; preds = %while.end
  %38 = load ptr, ptr %resized_output, align 8
  %39 = load ptr, ptr %output, align 8
  %40 = load i64, ptr %final_size, align 8
  %41 = load ptr, ptr %resized_output, align 8
  %42 = call i64 @llvm.objectsize.i64.p0(ptr %41, i1 false, i1 true, i1 false)
  %call41 = call ptr @__memcpy_chk(ptr noundef %38, ptr noundef %39, i64 noundef %40, i64 noundef %42) #9
  %43 = load i64, ptr %final_size, align 8
  %sub = sub i64 %43, 1
  %44 = load ptr, ptr %output_len.addr, align 8
  store i64 %sub, ptr %44, align 8
  %45 = load ptr, ptr @parson_free, align 8
  %46 = load ptr, ptr %output, align 8
  call void %45(ptr noundef %46)
  %47 = load ptr, ptr %resized_output, align 8
  store ptr %47, ptr %retval, align 8
  br label %return

error:                                            ; preds = %if.then39, %if.then26, %sw.default, %if.then21, %if.then
  %48 = load ptr, ptr @parson_free, align 8
  %49 = load ptr, ptr %output, align 8
  call void %48(ptr noundef %49)
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %error, %if.end40
  %50 = load ptr, ptr %retval, align 8
  ret ptr %50
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %status = alloca i32, align 4
  store ptr %unprocessed, ptr %unprocessed.addr, align 8
  store ptr %processed, ptr %processed.addr, align 8
  %0 = load ptr, ptr %processed.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %processed_ptr, align 8
  %2 = load ptr, ptr %unprocessed.addr, align 8
  %3 = load ptr, ptr %2, align 8
  store ptr %3, ptr %unprocessed_ptr, align 8
  store i32 -1, ptr %status, align 4
  %4 = load ptr, ptr %unprocessed_ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %4, i32 1
  store ptr %incdec.ptr, ptr %unprocessed_ptr, align 8
  %5 = load ptr, ptr %unprocessed_ptr, align 8
  %call = call i32 @parse_utf16_hex(ptr noundef %5, ptr noundef %cp)
  store i32 %call, ptr %status, align 4
  %6 = load i32, ptr %status, align 4
  %cmp = icmp ne i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i32, ptr %cp, align 4
  %cmp1 = icmp ult i32 %7, 128
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %8 = load i32, ptr %cp, align 4
  %conv = trunc i32 %8 to i8
  %9 = load ptr, ptr %processed_ptr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %9, i64 0
  store i8 %conv, ptr %arrayidx, align 1
  br label %if.end90

if.else:                                          ; preds = %if.end
  %10 = load i32, ptr %cp, align 4
  %cmp3 = icmp ult i32 %10, 2048
  br i1 %cmp3, label %if.then5, label %if.else12

if.then5:                                         ; preds = %if.else
  %11 = load i32, ptr %cp, align 4
  %shr = lshr i32 %11, 6
  %and = and i32 %shr, 31
  %or = or i32 %and, 192
  %conv6 = trunc i32 %or to i8
  %12 = load ptr, ptr %processed_ptr, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %12, i64 0
  store i8 %conv6, ptr %arrayidx7, align 1
  %13 = load i32, ptr %cp, align 4
  %and8 = and i32 %13, 63
  %or9 = or i32 %and8, 128
  %conv10 = trunc i32 %or9 to i8
  %14 = load ptr, ptr %processed_ptr, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %14, i64 1
  store i8 %conv10, ptr %arrayidx11, align 1
  %15 = load ptr, ptr %processed_ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %15, i64 1
  store ptr %add.ptr, ptr %processed_ptr, align 8
  br label %if.end89

if.else12:                                        ; preds = %if.else
  %16 = load i32, ptr %cp, align 4
  %cmp13 = icmp ult i32 %16, 55296
  br i1 %cmp13, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else12
  %17 = load i32, ptr %cp, align 4
  %cmp15 = icmp ugt i32 %17, 57343
  br i1 %cmp15, label %if.then17, label %if.else33

if.then17:                                        ; preds = %lor.lhs.false, %if.else12
  %18 = load i32, ptr %cp, align 4
  %shr18 = lshr i32 %18, 12
  %and19 = and i32 %shr18, 15
  %or20 = or i32 %and19, 224
  %conv21 = trunc i32 %or20 to i8
  %19 = load ptr, ptr %processed_ptr, align 8
  %arrayidx22 = getelementptr inbounds i8, ptr %19, i64 0
  store i8 %conv21, ptr %arrayidx22, align 1
  %20 = load i32, ptr %cp, align 4
  %shr23 = lshr i32 %20, 6
  %and24 = and i32 %shr23, 63
  %or25 = or i32 %and24, 128
  %conv26 = trunc i32 %or25 to i8
  %21 = load ptr, ptr %processed_ptr, align 8
  %arrayidx27 = getelementptr inbounds i8, ptr %21, i64 1
  store i8 %conv26, ptr %arrayidx27, align 1
  %22 = load i32, ptr %cp, align 4
  %and28 = and i32 %22, 63
  %or29 = or i32 %and28, 128
  %conv30 = trunc i32 %or29 to i8
  %23 = load ptr, ptr %processed_ptr, align 8
  %arrayidx31 = getelementptr inbounds i8, ptr %23, i64 2
  store i8 %conv30, ptr %arrayidx31, align 1
  %24 = load ptr, ptr %processed_ptr, align 8
  %add.ptr32 = getelementptr inbounds i8, ptr %24, i64 2
  store ptr %add.ptr32, ptr %processed_ptr, align 8
  br label %if.end88

if.else33:                                        ; preds = %lor.lhs.false
  %25 = load i32, ptr %cp, align 4
  %cmp34 = icmp uge i32 %25, 55296
  br i1 %cmp34, label %land.lhs.true, label %if.else86

land.lhs.true:                                    ; preds = %if.else33
  %26 = load i32, ptr %cp, align 4
  %cmp36 = icmp ule i32 %26, 56319
  br i1 %cmp36, label %if.then38, label %if.else86

if.then38:                                        ; preds = %land.lhs.true
  %27 = load i32, ptr %cp, align 4
  store i32 %27, ptr %lead, align 4
  %28 = load ptr, ptr %unprocessed_ptr, align 8
  %add.ptr39 = getelementptr inbounds i8, ptr %28, i64 4
  store ptr %add.ptr39, ptr %unprocessed_ptr, align 8
  %29 = load ptr, ptr %unprocessed_ptr, align 8
  %incdec.ptr40 = getelementptr inbounds i8, ptr %29, i32 1
  store ptr %incdec.ptr40, ptr %unprocessed_ptr, align 8
  %30 = load i8, ptr %29, align 1
  %conv41 = sext i8 %30 to i32
  %cmp42 = icmp ne i32 %conv41, 92
  br i1 %cmp42, label %if.then49, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %if.then38
  %31 = load ptr, ptr %unprocessed_ptr, align 8
  %incdec.ptr45 = getelementptr inbounds i8, ptr %31, i32 1
  store ptr %incdec.ptr45, ptr %unprocessed_ptr, align 8
  %32 = load i8, ptr %31, align 1
  %conv46 = sext i8 %32 to i32
  %cmp47 = icmp ne i32 %conv46, 117
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %lor.lhs.false44, %if.then38
  store i32 -1, ptr %retval, align 4
  br label %return

if.end50:                                         ; preds = %lor.lhs.false44
  %33 = load ptr, ptr %unprocessed_ptr, align 8
  %call51 = call i32 @parse_utf16_hex(ptr noundef %33, ptr noundef %trail)
  store i32 %call51, ptr %status, align 4
  %34 = load i32, ptr %status, align 4
  %cmp52 = icmp ne i32 %34, 0
  br i1 %cmp52, label %if.then60, label %lor.lhs.false54

lor.lhs.false54:                                  ; preds = %if.end50
  %35 = load i32, ptr %trail, align 4
  %cmp55 = icmp ult i32 %35, 56320
  br i1 %cmp55, label %if.then60, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %lor.lhs.false54
  %36 = load i32, ptr %trail, align 4
  %cmp58 = icmp ugt i32 %36, 57343
  br i1 %cmp58, label %if.then60, label %if.end61

if.then60:                                        ; preds = %lor.lhs.false57, %lor.lhs.false54, %if.end50
  store i32 -1, ptr %retval, align 4
  br label %return

if.end61:                                         ; preds = %lor.lhs.false57
  %37 = load i32, ptr %lead, align 4
  %sub = sub i32 %37, 55296
  %and62 = and i32 %sub, 1023
  %shl = shl i32 %and62, 10
  %38 = load i32, ptr %trail, align 4
  %sub63 = sub i32 %38, 56320
  %and64 = and i32 %sub63, 1023
  %or65 = or i32 %shl, %and64
  %add = add i32 %or65, 65536
  store i32 %add, ptr %cp, align 4
  %39 = load i32, ptr %cp, align 4
  %shr66 = lshr i32 %39, 18
  %and67 = and i32 %shr66, 7
  %or68 = or i32 %and67, 240
  %conv69 = trunc i32 %or68 to i8
  %40 = load ptr, ptr %processed_ptr, align 8
  %arrayidx70 = getelementptr inbounds i8, ptr %40, i64 0
  store i8 %conv69, ptr %arrayidx70, align 1
  %41 = load i32, ptr %cp, align 4
  %shr71 = lshr i32 %41, 12
  %and72 = and i32 %shr71, 63
  %or73 = or i32 %and72, 128
  %conv74 = trunc i32 %or73 to i8
  %42 = load ptr, ptr %processed_ptr, align 8
  %arrayidx75 = getelementptr inbounds i8, ptr %42, i64 1
  store i8 %conv74, ptr %arrayidx75, align 1
  %43 = load i32, ptr %cp, align 4
  %shr76 = lshr i32 %43, 6
  %and77 = and i32 %shr76, 63
  %or78 = or i32 %and77, 128
  %conv79 = trunc i32 %or78 to i8
  %44 = load ptr, ptr %processed_ptr, align 8
  %arrayidx80 = getelementptr inbounds i8, ptr %44, i64 2
  store i8 %conv79, ptr %arrayidx80, align 1
  %45 = load i32, ptr %cp, align 4
  %and81 = and i32 %45, 63
  %or82 = or i32 %and81, 128
  %conv83 = trunc i32 %or82 to i8
  %46 = load ptr, ptr %processed_ptr, align 8
  %arrayidx84 = getelementptr inbounds i8, ptr %46, i64 3
  store i8 %conv83, ptr %arrayidx84, align 1
  %47 = load ptr, ptr %processed_ptr, align 8
  %add.ptr85 = getelementptr inbounds i8, ptr %47, i64 3
  store ptr %add.ptr85, ptr %processed_ptr, align 8
  br label %if.end87

if.else86:                                        ; preds = %land.lhs.true, %if.else33
  store i32 -1, ptr %retval, align 4
  br label %return

if.end87:                                         ; preds = %if.end61
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %if.then17
  br label %if.end89

if.end89:                                         ; preds = %if.end88, %if.then5
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %if.then2
  %48 = load ptr, ptr %unprocessed_ptr, align 8
  %add.ptr91 = getelementptr inbounds i8, ptr %48, i64 3
  store ptr %add.ptr91, ptr %unprocessed_ptr, align 8
  %49 = load ptr, ptr %processed_ptr, align 8
  %50 = load ptr, ptr %processed.addr, align 8
  store ptr %49, ptr %50, align 8
  %51 = load ptr, ptr %unprocessed_ptr, align 8
  %52 = load ptr, ptr %unprocessed.addr, align 8
  store ptr %51, ptr %52, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end90, %if.else86, %if.then60, %if.then49, %if.then
  %53 = load i32, ptr %retval, align 4
  ret i32 %53
}

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %0 = load ptr, ptr %s.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %s.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %2, i64 1
  %3 = load i8, ptr %arrayidx2, align 1
  %conv3 = sext i8 %3 to i32
  %cmp4 = icmp eq i32 %conv3, 0
  br i1 %cmp4, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %4 = load ptr, ptr %s.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %4, i64 2
  %5 = load i8, ptr %arrayidx7, align 1
  %conv8 = sext i8 %5 to i32
  %cmp9 = icmp eq i32 %conv8, 0
  br i1 %cmp9, label %if.then, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false6
  %6 = load ptr, ptr %s.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %6, i64 3
  %7 = load i8, ptr %arrayidx12, align 1
  %conv13 = sext i8 %7 to i32
  %cmp14 = icmp eq i32 %conv13, 0
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false11, %lor.lhs.false6, %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false11
  %8 = load ptr, ptr %s.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, ptr %8, i64 0
  %9 = load i8, ptr %arrayidx16, align 1
  %call = call i32 @hex_char_to_int(i8 noundef signext %9)
  store i32 %call, ptr %x1, align 4
  %10 = load ptr, ptr %s.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, ptr %10, i64 1
  %11 = load i8, ptr %arrayidx17, align 1
  %call18 = call i32 @hex_char_to_int(i8 noundef signext %11)
  store i32 %call18, ptr %x2, align 4
  %12 = load ptr, ptr %s.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %12, i64 2
  %13 = load i8, ptr %arrayidx19, align 1
  %call20 = call i32 @hex_char_to_int(i8 noundef signext %13)
  store i32 %call20, ptr %x3, align 4
  %14 = load ptr, ptr %s.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, ptr %14, i64 3
  %15 = load i8, ptr %arrayidx21, align 1
  %call22 = call i32 @hex_char_to_int(i8 noundef signext %15)
  store i32 %call22, ptr %x4, align 4
  %16 = load i32, ptr %x1, align 4
  %cmp23 = icmp eq i32 %16, -1
  br i1 %cmp23, label %if.then34, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %if.end
  %17 = load i32, ptr %x2, align 4
  %cmp26 = icmp eq i32 %17, -1
  br i1 %cmp26, label %if.then34, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false25
  %18 = load i32, ptr %x3, align 4
  %cmp29 = icmp eq i32 %18, -1
  br i1 %cmp29, label %if.then34, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %lor.lhs.false28
  %19 = load i32, ptr %x4, align 4
  %cmp32 = icmp eq i32 %19, -1
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %lor.lhs.false31, %lor.lhs.false28, %lor.lhs.false25, %if.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end35:                                         ; preds = %lor.lhs.false31
  %20 = load i32, ptr %x1, align 4
  %shl = shl i32 %20, 12
  %21 = load i32, ptr %x2, align 4
  %shl36 = shl i32 %21, 8
  %or = or i32 %shl, %shl36
  %22 = load i32, ptr %x3, align 4
  %shl37 = shl i32 %22, 4
  %or38 = or i32 %or, %shl37
  %23 = load i32, ptr %x4, align 4
  %or39 = or i32 %or38, %23
  %24 = load ptr, ptr %result.addr, align 8
  store i32 %or39, ptr %24, align 4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end35, %if.then34, %if.then
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @hex_char_to_int(i8 noundef signext %c) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i8, align 1
  store i8 %c, ptr %c.addr, align 1
  %0 = load i8, ptr %c.addr, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp sge i32 %conv, 48
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, ptr %c.addr, align 1
  %conv2 = sext i8 %1 to i32
  %cmp3 = icmp sle i32 %conv2, 57
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load i8, ptr %c.addr, align 1
  %conv5 = sext i8 %2 to i32
  %sub = sub nsw i32 %conv5, 48
  store i32 %sub, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i8, ptr %c.addr, align 1
  %conv6 = sext i8 %3 to i32
  %cmp7 = icmp sge i32 %conv6, 97
  br i1 %cmp7, label %land.lhs.true9, label %if.else16

land.lhs.true9:                                   ; preds = %if.else
  %4 = load i8, ptr %c.addr, align 1
  %conv10 = sext i8 %4 to i32
  %cmp11 = icmp sle i32 %conv10, 102
  br i1 %cmp11, label %if.then13, label %if.else16

if.then13:                                        ; preds = %land.lhs.true9
  %5 = load i8, ptr %c.addr, align 1
  %conv14 = sext i8 %5 to i32
  %sub15 = sub nsw i32 %conv14, 97
  %add = add nsw i32 %sub15, 10
  store i32 %add, ptr %retval, align 4
  br label %return

if.else16:                                        ; preds = %land.lhs.true9, %if.else
  %6 = load i8, ptr %c.addr, align 1
  %conv17 = sext i8 %6 to i32
  %cmp18 = icmp sge i32 %conv17, 65
  br i1 %cmp18, label %land.lhs.true20, label %if.end

land.lhs.true20:                                  ; preds = %if.else16
  %7 = load i8, ptr %c.addr, align 1
  %conv21 = sext i8 %7 to i32
  %cmp22 = icmp sle i32 %conv21, 70
  br i1 %cmp22, label %if.then24, label %if.end

if.then24:                                        ; preds = %land.lhs.true20
  %8 = load i8, ptr %c.addr, align 1
  %conv25 = sext i8 %8 to i32
  %sub26 = sub nsw i32 %conv25, 65
  %add27 = add nsw i32 %sub26, 10
  store i32 %add27, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true20, %if.else16
  br label %if.end28

if.end28:                                         ; preds = %if.end
  br label %if.end29

if.end29:                                         ; preds = %if.end28
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end29, %if.then24, %if.then13, %if.then
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @json_array_resize(ptr noundef %array, i64 noundef %new_capacity) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca ptr, align 8
  %new_capacity.addr = alloca i64, align 8
  %new_items = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8
  store i64 %new_capacity, ptr %new_capacity.addr, align 8
  store ptr null, ptr %new_items, align 8
  %0 = load i64, ptr %new_capacity.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @parson_malloc, align 8
  %2 = load i64, ptr %new_capacity.addr, align 8
  %mul = mul i64 %2, 8
  %call = call ptr %1(i64 noundef %mul)
  store ptr %call, ptr %new_items, align 8
  %3 = load ptr, ptr %new_items, align 8
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %array.addr, align 8
  %items = getelementptr inbounds %struct.json_array_t, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %items, align 8
  %cmp4 = icmp ne ptr %5, null
  br i1 %cmp4, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %if.end3
  %6 = load ptr, ptr %array.addr, align 8
  %count = getelementptr inbounds %struct.json_array_t, ptr %6, i32 0, i32 2
  %7 = load i64, ptr %count, align 8
  %cmp5 = icmp ugt i64 %7, 0
  br i1 %cmp5, label %if.then6, label %if.end11

if.then6:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %new_items, align 8
  %9 = load ptr, ptr %array.addr, align 8
  %items7 = getelementptr inbounds %struct.json_array_t, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %items7, align 8
  %11 = load ptr, ptr %array.addr, align 8
  %count8 = getelementptr inbounds %struct.json_array_t, ptr %11, i32 0, i32 2
  %12 = load i64, ptr %count8, align 8
  %mul9 = mul i64 %12, 8
  %13 = load ptr, ptr %new_items, align 8
  %14 = call i64 @llvm.objectsize.i64.p0(ptr %13, i1 false, i1 true, i1 false)
  %call10 = call ptr @__memcpy_chk(ptr noundef %8, ptr noundef %10, i64 noundef %mul9, i64 noundef %14) #9
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %land.lhs.true, %if.end3
  %15 = load ptr, ptr @parson_free, align 8
  %16 = load ptr, ptr %array.addr, align 8
  %items12 = getelementptr inbounds %struct.json_array_t, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %items12, align 8
  call void %15(ptr noundef %17)
  %18 = load ptr, ptr %new_items, align 8
  %19 = load ptr, ptr %array.addr, align 8
  %items13 = getelementptr inbounds %struct.json_array_t, ptr %19, i32 0, i32 1
  store ptr %18, ptr %items13, align 8
  %20 = load i64, ptr %new_capacity.addr, align 8
  %21 = load ptr, ptr %array.addr, align 8
  %capacity = getelementptr inbounds %struct.json_array_t, ptr %21, i32 0, i32 3
  store i64 %20, ptr %capacity, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end11, %if.then2, %if.then
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #1

declare ptr @__error() #1

declare double @"\01_strtod"(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @is_decimal(ptr noundef %string, i64 noundef %length) #0 {
entry:
  %retval = alloca i32, align 4
  %string.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  store ptr %string, ptr %string.addr, align 8
  store i64 %length, ptr %length.addr, align 8
  %0 = load i64, ptr %length.addr, align 8
  %cmp = icmp ugt i64 %0, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %string.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0
  %2 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 48
  br i1 %cmp1, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %3 = load ptr, ptr %string.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %3, i64 1
  %4 = load i8, ptr %arrayidx4, align 1
  %conv5 = sext i8 %4 to i32
  %cmp6 = icmp ne i32 %conv5, 46
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true3
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true3, %land.lhs.true, %entry
  %5 = load i64, ptr %length.addr, align 8
  %cmp8 = icmp ugt i64 %5, 2
  br i1 %cmp8, label %land.lhs.true10, label %if.end17

land.lhs.true10:                                  ; preds = %if.end
  %6 = load ptr, ptr %string.addr, align 8
  %call = call i32 @strncmp(ptr noundef %6, ptr noundef @.str.8, i64 noundef 2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end17, label %land.lhs.true11

land.lhs.true11:                                  ; preds = %land.lhs.true10
  %7 = load ptr, ptr %string.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %7, i64 2
  %8 = load i8, ptr %arrayidx12, align 1
  %conv13 = sext i8 %8 to i32
  %cmp14 = icmp ne i32 %conv13, 46
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %land.lhs.true11
  store i32 0, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %land.lhs.true11, %land.lhs.true10, %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end24, %if.end17
  %9 = load i64, ptr %length.addr, align 8
  %dec = add i64 %9, -1
  store i64 %dec, ptr %length.addr, align 8
  %tobool18 = icmp ne i64 %9, 0
  br i1 %tobool18, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load ptr, ptr %string.addr, align 8
  %11 = load i64, ptr %length.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %10, i64 %11
  %12 = load i8, ptr %arrayidx19, align 1
  %conv20 = sext i8 %12 to i32
  %call21 = call ptr @strchr(ptr noundef @.str.9, i32 noundef %conv20)
  %tobool22 = icmp ne ptr %call21, null
  br i1 %tobool22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %while.body
  store i32 0, ptr %retval, align 4
  br label %return

if.end24:                                         ; preds = %while.body
  br label %while.cond, !llvm.loop !45

while.end:                                        ; preds = %while.cond
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then23, %if.then16, %if.then
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

declare ptr @strstr(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @json_object_deinit(ptr noundef %object, i32 noundef %free_keys, i32 noundef %free_values) #0 {
entry:
  %object.addr = alloca ptr, align 8
  %free_keys.addr = alloca i32, align 4
  %free_values.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %object, ptr %object.addr, align 8
  store i32 %free_keys, ptr %free_keys.addr, align 4
  store i32 %free_values, ptr %free_values.addr, align 4
  store i32 0, ptr %i, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %conv = zext i32 %0 to i64
  %1 = load ptr, ptr %object.addr, align 8
  %count = getelementptr inbounds %struct.json_object_t, ptr %1, i32 0, i32 6
  %2 = load i64, ptr %count, align 8
  %cmp = icmp ult i64 %conv, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %free_keys.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load ptr, ptr @parson_free, align 8
  %5 = load ptr, ptr %object.addr, align 8
  %names = getelementptr inbounds %struct.json_object_t, ptr %5, i32 0, i32 3
  %6 = load ptr, ptr %names, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %idxprom
  %8 = load ptr, ptr %arrayidx, align 8
  call void %4(ptr noundef %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %9 = load i32, ptr %free_values.addr, align 4
  %tobool2 = icmp ne i32 %9, 0
  br i1 %tobool2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  %10 = load ptr, ptr %object.addr, align 8
  %values = getelementptr inbounds %struct.json_object_t, ptr %10, i32 0, i32 4
  %11 = load ptr, ptr %values, align 8
  %12 = load i32, ptr %i, align 4
  %idxprom4 = zext i32 %12 to i64
  %arrayidx5 = getelementptr inbounds ptr, ptr %11, i64 %idxprom4
  %13 = load ptr, ptr %arrayidx5, align 8
  call void @json_value_free(ptr noundef %13)
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end6
  %14 = load i32, ptr %i, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !46

for.end:                                          ; preds = %for.cond
  %15 = load ptr, ptr %object.addr, align 8
  %count7 = getelementptr inbounds %struct.json_object_t, ptr %15, i32 0, i32 6
  store i64 0, ptr %count7, align 8
  %16 = load ptr, ptr %object.addr, align 8
  %item_capacity = getelementptr inbounds %struct.json_object_t, ptr %16, i32 0, i32 7
  store i64 0, ptr %item_capacity, align 8
  %17 = load ptr, ptr %object.addr, align 8
  %cell_capacity = getelementptr inbounds %struct.json_object_t, ptr %17, i32 0, i32 8
  store i64 0, ptr %cell_capacity, align 8
  %18 = load ptr, ptr @parson_free, align 8
  %19 = load ptr, ptr %object.addr, align 8
  %cells = getelementptr inbounds %struct.json_object_t, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %cells, align 8
  call void %18(ptr noundef %20)
  %21 = load ptr, ptr @parson_free, align 8
  %22 = load ptr, ptr %object.addr, align 8
  %names8 = getelementptr inbounds %struct.json_object_t, ptr %22, i32 0, i32 3
  %23 = load ptr, ptr %names8, align 8
  call void %21(ptr noundef %23)
  %24 = load ptr, ptr @parson_free, align 8
  %25 = load ptr, ptr %object.addr, align 8
  %values9 = getelementptr inbounds %struct.json_object_t, ptr %25, i32 0, i32 4
  %26 = load ptr, ptr %values9, align 8
  call void %24(ptr noundef %26)
  %27 = load ptr, ptr @parson_free, align 8
  %28 = load ptr, ptr %object.addr, align 8
  %cell_ixs = getelementptr inbounds %struct.json_object_t, ptr %28, i32 0, i32 5
  %29 = load ptr, ptr %cell_ixs, align 8
  call void %27(ptr noundef %29)
  %30 = load ptr, ptr @parson_free, align 8
  %31 = load ptr, ptr %object.addr, align 8
  %hashes = getelementptr inbounds %struct.json_object_t, ptr %31, i32 0, i32 2
  %32 = load ptr, ptr %hashes, align 8
  call void %30(ptr noundef %32)
  %33 = load ptr, ptr %object.addr, align 8
  %cells10 = getelementptr inbounds %struct.json_object_t, ptr %33, i32 0, i32 1
  store ptr null, ptr %cells10, align 8
  %34 = load ptr, ptr %object.addr, align 8
  %names11 = getelementptr inbounds %struct.json_object_t, ptr %34, i32 0, i32 3
  store ptr null, ptr %names11, align 8
  %35 = load ptr, ptr %object.addr, align 8
  %values12 = getelementptr inbounds %struct.json_object_t, ptr %35, i32 0, i32 4
  store ptr null, ptr %values12, align 8
  %36 = load ptr, ptr %object.addr, align 8
  %cell_ixs13 = getelementptr inbounds %struct.json_object_t, ptr %36, i32 0, i32 5
  store ptr null, ptr %cell_ixs13, align 8
  %37 = load ptr, ptr %object.addr, align 8
  %hashes14 = getelementptr inbounds %struct.json_object_t, ptr %37, i32 0, i32 2
  store ptr null, ptr %hashes14, align 8
  ret void
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #5

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @json_object_init(ptr noundef %object, i64 noundef %capacity) #0 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca ptr, align 8
  %capacity.addr = alloca i64, align 8
  %i = alloca i32, align 4
  store ptr %object, ptr %object.addr, align 8
  store i64 %capacity, ptr %capacity.addr, align 8
  store i32 0, ptr %i, align 4
  %0 = load ptr, ptr %object.addr, align 8
  %cells = getelementptr inbounds %struct.json_object_t, ptr %0, i32 0, i32 1
  store ptr null, ptr %cells, align 8
  %1 = load ptr, ptr %object.addr, align 8
  %names = getelementptr inbounds %struct.json_object_t, ptr %1, i32 0, i32 3
  store ptr null, ptr %names, align 8
  %2 = load ptr, ptr %object.addr, align 8
  %values = getelementptr inbounds %struct.json_object_t, ptr %2, i32 0, i32 4
  store ptr null, ptr %values, align 8
  %3 = load ptr, ptr %object.addr, align 8
  %cell_ixs = getelementptr inbounds %struct.json_object_t, ptr %3, i32 0, i32 5
  store ptr null, ptr %cell_ixs, align 8
  %4 = load ptr, ptr %object.addr, align 8
  %hashes = getelementptr inbounds %struct.json_object_t, ptr %4, i32 0, i32 2
  store ptr null, ptr %hashes, align 8
  %5 = load ptr, ptr %object.addr, align 8
  %count = getelementptr inbounds %struct.json_object_t, ptr %5, i32 0, i32 6
  store i64 0, ptr %count, align 8
  %6 = load i64, ptr %capacity.addr, align 8
  %7 = load ptr, ptr %object.addr, align 8
  %cell_capacity = getelementptr inbounds %struct.json_object_t, ptr %7, i32 0, i32 8
  store i64 %6, ptr %cell_capacity, align 8
  %8 = load i64, ptr %capacity.addr, align 8
  %mul = mul i64 %8, 7
  %div = udiv i64 %mul, 10
  %conv = trunc i64 %div to i32
  %conv1 = zext i32 %conv to i64
  %9 = load ptr, ptr %object.addr, align 8
  %item_capacity = getelementptr inbounds %struct.json_object_t, ptr %9, i32 0, i32 7
  store i64 %conv1, ptr %item_capacity, align 8
  %10 = load i64, ptr %capacity.addr, align 8
  %cmp = icmp eq i64 %10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %11 = load ptr, ptr @parson_malloc, align 8
  %12 = load ptr, ptr %object.addr, align 8
  %cell_capacity3 = getelementptr inbounds %struct.json_object_t, ptr %12, i32 0, i32 8
  %13 = load i64, ptr %cell_capacity3, align 8
  %mul4 = mul i64 %13, 8
  %call = call ptr %11(i64 noundef %mul4)
  %14 = load ptr, ptr %object.addr, align 8
  %cells5 = getelementptr inbounds %struct.json_object_t, ptr %14, i32 0, i32 1
  store ptr %call, ptr %cells5, align 8
  %15 = load ptr, ptr @parson_malloc, align 8
  %16 = load ptr, ptr %object.addr, align 8
  %item_capacity6 = getelementptr inbounds %struct.json_object_t, ptr %16, i32 0, i32 7
  %17 = load i64, ptr %item_capacity6, align 8
  %mul7 = mul i64 %17, 8
  %call8 = call ptr %15(i64 noundef %mul7)
  %18 = load ptr, ptr %object.addr, align 8
  %names9 = getelementptr inbounds %struct.json_object_t, ptr %18, i32 0, i32 3
  store ptr %call8, ptr %names9, align 8
  %19 = load ptr, ptr @parson_malloc, align 8
  %20 = load ptr, ptr %object.addr, align 8
  %item_capacity10 = getelementptr inbounds %struct.json_object_t, ptr %20, i32 0, i32 7
  %21 = load i64, ptr %item_capacity10, align 8
  %mul11 = mul i64 %21, 8
  %call12 = call ptr %19(i64 noundef %mul11)
  %22 = load ptr, ptr %object.addr, align 8
  %values13 = getelementptr inbounds %struct.json_object_t, ptr %22, i32 0, i32 4
  store ptr %call12, ptr %values13, align 8
  %23 = load ptr, ptr @parson_malloc, align 8
  %24 = load ptr, ptr %object.addr, align 8
  %item_capacity14 = getelementptr inbounds %struct.json_object_t, ptr %24, i32 0, i32 7
  %25 = load i64, ptr %item_capacity14, align 8
  %mul15 = mul i64 %25, 8
  %call16 = call ptr %23(i64 noundef %mul15)
  %26 = load ptr, ptr %object.addr, align 8
  %cell_ixs17 = getelementptr inbounds %struct.json_object_t, ptr %26, i32 0, i32 5
  store ptr %call16, ptr %cell_ixs17, align 8
  %27 = load ptr, ptr @parson_malloc, align 8
  %28 = load ptr, ptr %object.addr, align 8
  %item_capacity18 = getelementptr inbounds %struct.json_object_t, ptr %28, i32 0, i32 7
  %29 = load i64, ptr %item_capacity18, align 8
  %mul19 = mul i64 %29, 8
  %call20 = call ptr %27(i64 noundef %mul19)
  %30 = load ptr, ptr %object.addr, align 8
  %hashes21 = getelementptr inbounds %struct.json_object_t, ptr %30, i32 0, i32 2
  store ptr %call20, ptr %hashes21, align 8
  %31 = load ptr, ptr %object.addr, align 8
  %cells22 = getelementptr inbounds %struct.json_object_t, ptr %31, i32 0, i32 1
  %32 = load ptr, ptr %cells22, align 8
  %cmp23 = icmp eq ptr %32, null
  br i1 %cmp23, label %if.then40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %33 = load ptr, ptr %object.addr, align 8
  %names25 = getelementptr inbounds %struct.json_object_t, ptr %33, i32 0, i32 3
  %34 = load ptr, ptr %names25, align 8
  %cmp26 = icmp eq ptr %34, null
  br i1 %cmp26, label %if.then40, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false
  %35 = load ptr, ptr %object.addr, align 8
  %values29 = getelementptr inbounds %struct.json_object_t, ptr %35, i32 0, i32 4
  %36 = load ptr, ptr %values29, align 8
  %cmp30 = icmp eq ptr %36, null
  br i1 %cmp30, label %if.then40, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false28
  %37 = load ptr, ptr %object.addr, align 8
  %cell_ixs33 = getelementptr inbounds %struct.json_object_t, ptr %37, i32 0, i32 5
  %38 = load ptr, ptr %cell_ixs33, align 8
  %cmp34 = icmp eq ptr %38, null
  br i1 %cmp34, label %if.then40, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %lor.lhs.false32
  %39 = load ptr, ptr %object.addr, align 8
  %hashes37 = getelementptr inbounds %struct.json_object_t, ptr %39, i32 0, i32 2
  %40 = load ptr, ptr %hashes37, align 8
  %cmp38 = icmp eq ptr %40, null
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %lor.lhs.false36, %lor.lhs.false32, %lor.lhs.false28, %lor.lhs.false, %if.end
  br label %error

if.end41:                                         ; preds = %lor.lhs.false36
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end41
  %41 = load i32, ptr %i, align 4
  %conv42 = zext i32 %41 to i64
  %42 = load ptr, ptr %object.addr, align 8
  %cell_capacity43 = getelementptr inbounds %struct.json_object_t, ptr %42, i32 0, i32 8
  %43 = load i64, ptr %cell_capacity43, align 8
  %cmp44 = icmp ult i64 %conv42, %43
  br i1 %cmp44, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %44 = load ptr, ptr %object.addr, align 8
  %cells46 = getelementptr inbounds %struct.json_object_t, ptr %44, i32 0, i32 1
  %45 = load ptr, ptr %cells46, align 8
  %46 = load i32, ptr %i, align 4
  %idxprom = zext i32 %46 to i64
  %arrayidx = getelementptr inbounds i64, ptr %45, i64 %idxprom
  store i64 -1, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %47 = load i32, ptr %i, align 4
  %inc = add i32 %47, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !47

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

error:                                            ; preds = %if.then40
  %48 = load ptr, ptr @parson_free, align 8
  %49 = load ptr, ptr %object.addr, align 8
  %cells47 = getelementptr inbounds %struct.json_object_t, ptr %49, i32 0, i32 1
  %50 = load ptr, ptr %cells47, align 8
  call void %48(ptr noundef %50)
  %51 = load ptr, ptr @parson_free, align 8
  %52 = load ptr, ptr %object.addr, align 8
  %names48 = getelementptr inbounds %struct.json_object_t, ptr %52, i32 0, i32 3
  %53 = load ptr, ptr %names48, align 8
  call void %51(ptr noundef %53)
  %54 = load ptr, ptr @parson_free, align 8
  %55 = load ptr, ptr %object.addr, align 8
  %values49 = getelementptr inbounds %struct.json_object_t, ptr %55, i32 0, i32 4
  %56 = load ptr, ptr %values49, align 8
  call void %54(ptr noundef %56)
  %57 = load ptr, ptr @parson_free, align 8
  %58 = load ptr, ptr %object.addr, align 8
  %cell_ixs50 = getelementptr inbounds %struct.json_object_t, ptr %58, i32 0, i32 5
  %59 = load ptr, ptr %cell_ixs50, align 8
  call void %57(ptr noundef %59)
  %60 = load ptr, ptr @parson_free, align 8
  %61 = load ptr, ptr %object.addr, align 8
  %hashes51 = getelementptr inbounds %struct.json_object_t, ptr %61, i32 0, i32 2
  %62 = load ptr, ptr %hashes51, align 8
  call void %60(ptr noundef %62)
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %error, %for.end, %if.then
  %63 = load i32, ptr %retval, align 4
  ret i32 %63
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @verify_utf8_sequence(ptr noundef %string, ptr noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %string.addr = alloca ptr, align 8
  %len.addr = alloca ptr, align 8
  %cp = alloca i32, align 4
  store ptr %string, ptr %string.addr, align 8
  store ptr %len, ptr %len.addr, align 8
  store i32 0, ptr %cp, align 4
  %0 = load ptr, ptr %string.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1
  %call = call i32 @num_bytes_in_utf8_sequence(i8 noundef zeroext %1)
  %2 = load ptr, ptr %len.addr, align 8
  store i32 %call, ptr %2, align 4
  %3 = load ptr, ptr %len.addr, align 8
  %4 = load i32, ptr %3, align 4
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %string.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %5, i64 0
  %6 = load i8, ptr %arrayidx1, align 1
  %conv = zext i8 %6 to i32
  store i32 %conv, ptr %cp, align 4
  br label %if.end87

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %len.addr, align 8
  %8 = load i32, ptr %7, align 4
  %cmp2 = icmp eq i32 %8, 2
  br i1 %cmp2, label %land.lhs.true, label %if.else15

land.lhs.true:                                    ; preds = %if.else
  %9 = load ptr, ptr %string.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %9, i64 1
  %10 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %10 to i32
  %and = and i32 %conv5, 192
  %cmp6 = icmp eq i32 %and, 128
  br i1 %cmp6, label %if.then8, label %if.else15

if.then8:                                         ; preds = %land.lhs.true
  %11 = load ptr, ptr %string.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %11, i64 0
  %12 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %12 to i32
  %and11 = and i32 %conv10, 31
  store i32 %and11, ptr %cp, align 4
  %13 = load i32, ptr %cp, align 4
  %shl = shl i32 %13, 6
  %14 = load ptr, ptr %string.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %14, i64 1
  %15 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %15 to i32
  %and14 = and i32 %conv13, 63
  %or = or i32 %shl, %and14
  store i32 %or, ptr %cp, align 4
  br label %if.end86

if.else15:                                        ; preds = %land.lhs.true, %if.else
  %16 = load ptr, ptr %len.addr, align 8
  %17 = load i32, ptr %16, align 4
  %cmp16 = icmp eq i32 %17, 3
  br i1 %cmp16, label %land.lhs.true18, label %if.else44

land.lhs.true18:                                  ; preds = %if.else15
  %18 = load ptr, ptr %string.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %18, i64 1
  %19 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %19 to i32
  %and21 = and i32 %conv20, 192
  %cmp22 = icmp eq i32 %and21, 128
  br i1 %cmp22, label %land.lhs.true24, label %if.else44

land.lhs.true24:                                  ; preds = %land.lhs.true18
  %20 = load ptr, ptr %string.addr, align 8
  %arrayidx25 = getelementptr inbounds i8, ptr %20, i64 2
  %21 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %21 to i32
  %and27 = and i32 %conv26, 192
  %cmp28 = icmp eq i32 %and27, 128
  br i1 %cmp28, label %if.then30, label %if.else44

if.then30:                                        ; preds = %land.lhs.true24
  %22 = load ptr, ptr %string.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, ptr %22, i64 0
  %23 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %23 to i32
  %and33 = and i32 %conv32, 15
  store i32 %and33, ptr %cp, align 4
  %24 = load i32, ptr %cp, align 4
  %shl34 = shl i32 %24, 6
  %25 = load ptr, ptr %string.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, ptr %25, i64 1
  %26 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %26 to i32
  %and37 = and i32 %conv36, 63
  %or38 = or i32 %shl34, %and37
  store i32 %or38, ptr %cp, align 4
  %27 = load i32, ptr %cp, align 4
  %shl39 = shl i32 %27, 6
  %28 = load ptr, ptr %string.addr, align 8
  %arrayidx40 = getelementptr inbounds i8, ptr %28, i64 2
  %29 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %29 to i32
  %and42 = and i32 %conv41, 63
  %or43 = or i32 %shl39, %and42
  store i32 %or43, ptr %cp, align 4
  br label %if.end85

if.else44:                                        ; preds = %land.lhs.true24, %land.lhs.true18, %if.else15
  %30 = load ptr, ptr %len.addr, align 8
  %31 = load i32, ptr %30, align 4
  %cmp45 = icmp eq i32 %31, 4
  br i1 %cmp45, label %land.lhs.true47, label %if.else84

land.lhs.true47:                                  ; preds = %if.else44
  %32 = load ptr, ptr %string.addr, align 8
  %arrayidx48 = getelementptr inbounds i8, ptr %32, i64 1
  %33 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %33 to i32
  %and50 = and i32 %conv49, 192
  %cmp51 = icmp eq i32 %and50, 128
  br i1 %cmp51, label %land.lhs.true53, label %if.else84

land.lhs.true53:                                  ; preds = %land.lhs.true47
  %34 = load ptr, ptr %string.addr, align 8
  %arrayidx54 = getelementptr inbounds i8, ptr %34, i64 2
  %35 = load i8, ptr %arrayidx54, align 1
  %conv55 = zext i8 %35 to i32
  %and56 = and i32 %conv55, 192
  %cmp57 = icmp eq i32 %and56, 128
  br i1 %cmp57, label %land.lhs.true59, label %if.else84

land.lhs.true59:                                  ; preds = %land.lhs.true53
  %36 = load ptr, ptr %string.addr, align 8
  %arrayidx60 = getelementptr inbounds i8, ptr %36, i64 3
  %37 = load i8, ptr %arrayidx60, align 1
  %conv61 = zext i8 %37 to i32
  %and62 = and i32 %conv61, 192
  %cmp63 = icmp eq i32 %and62, 128
  br i1 %cmp63, label %if.then65, label %if.else84

if.then65:                                        ; preds = %land.lhs.true59
  %38 = load ptr, ptr %string.addr, align 8
  %arrayidx66 = getelementptr inbounds i8, ptr %38, i64 0
  %39 = load i8, ptr %arrayidx66, align 1
  %conv67 = zext i8 %39 to i32
  %and68 = and i32 %conv67, 7
  store i32 %and68, ptr %cp, align 4
  %40 = load i32, ptr %cp, align 4
  %shl69 = shl i32 %40, 6
  %41 = load ptr, ptr %string.addr, align 8
  %arrayidx70 = getelementptr inbounds i8, ptr %41, i64 1
  %42 = load i8, ptr %arrayidx70, align 1
  %conv71 = zext i8 %42 to i32
  %and72 = and i32 %conv71, 63
  %or73 = or i32 %shl69, %and72
  store i32 %or73, ptr %cp, align 4
  %43 = load i32, ptr %cp, align 4
  %shl74 = shl i32 %43, 6
  %44 = load ptr, ptr %string.addr, align 8
  %arrayidx75 = getelementptr inbounds i8, ptr %44, i64 2
  %45 = load i8, ptr %arrayidx75, align 1
  %conv76 = zext i8 %45 to i32
  %and77 = and i32 %conv76, 63
  %or78 = or i32 %shl74, %and77
  store i32 %or78, ptr %cp, align 4
  %46 = load i32, ptr %cp, align 4
  %shl79 = shl i32 %46, 6
  %47 = load ptr, ptr %string.addr, align 8
  %arrayidx80 = getelementptr inbounds i8, ptr %47, i64 3
  %48 = load i8, ptr %arrayidx80, align 1
  %conv81 = zext i8 %48 to i32
  %and82 = and i32 %conv81, 63
  %or83 = or i32 %shl79, %and82
  store i32 %or83, ptr %cp, align 4
  br label %if.end

if.else84:                                        ; preds = %land.lhs.true59, %land.lhs.true53, %land.lhs.true47, %if.else44
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then65
  br label %if.end85

if.end85:                                         ; preds = %if.end, %if.then30
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %if.then8
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %if.then
  %49 = load i32, ptr %cp, align 4
  %cmp88 = icmp ult i32 %49, 128
  br i1 %cmp88, label %land.lhs.true90, label %lor.lhs.false

land.lhs.true90:                                  ; preds = %if.end87
  %50 = load ptr, ptr %len.addr, align 8
  %51 = load i32, ptr %50, align 4
  %cmp91 = icmp sgt i32 %51, 1
  br i1 %cmp91, label %if.then104, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true90, %if.end87
  %52 = load i32, ptr %cp, align 4
  %cmp93 = icmp ult i32 %52, 2048
  br i1 %cmp93, label %land.lhs.true95, label %lor.lhs.false98

land.lhs.true95:                                  ; preds = %lor.lhs.false
  %53 = load ptr, ptr %len.addr, align 8
  %54 = load i32, ptr %53, align 4
  %cmp96 = icmp sgt i32 %54, 2
  br i1 %cmp96, label %if.then104, label %lor.lhs.false98

lor.lhs.false98:                                  ; preds = %land.lhs.true95, %lor.lhs.false
  %55 = load i32, ptr %cp, align 4
  %cmp99 = icmp ult i32 %55, 65536
  br i1 %cmp99, label %land.lhs.true101, label %if.end105

land.lhs.true101:                                 ; preds = %lor.lhs.false98
  %56 = load ptr, ptr %len.addr, align 8
  %57 = load i32, ptr %56, align 4
  %cmp102 = icmp sgt i32 %57, 3
  br i1 %cmp102, label %if.then104, label %if.end105

if.then104:                                       ; preds = %land.lhs.true101, %land.lhs.true95, %land.lhs.true90
  store i32 -1, ptr %retval, align 4
  br label %return

if.end105:                                        ; preds = %land.lhs.true101, %lor.lhs.false98
  %58 = load i32, ptr %cp, align 4
  %cmp106 = icmp ugt i32 %58, 1114111
  br i1 %cmp106, label %if.then108, label %if.end109

if.then108:                                       ; preds = %if.end105
  store i32 -1, ptr %retval, align 4
  br label %return

if.end109:                                        ; preds = %if.end105
  %59 = load i32, ptr %cp, align 4
  %cmp110 = icmp uge i32 %59, 55296
  br i1 %cmp110, label %land.lhs.true112, label %if.end116

land.lhs.true112:                                 ; preds = %if.end109
  %60 = load i32, ptr %cp, align 4
  %cmp113 = icmp ule i32 %60, 57343
  br i1 %cmp113, label %if.then115, label %if.end116

if.then115:                                       ; preds = %land.lhs.true112
  store i32 -1, ptr %retval, align 4
  br label %return

if.end116:                                        ; preds = %land.lhs.true112, %if.end109
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end116, %if.then115, %if.then108, %if.then104, %if.else84
  %61 = load i32, ptr %retval, align 4
  ret i32 %61
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @num_bytes_in_utf8_sequence(i8 noundef zeroext %c) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i8, align 1
  store i8 %c, ptr %c.addr, align 1
  %0 = load i8, ptr %c.addr, align 1
  %conv = zext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 192
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, ptr %c.addr, align 1
  %conv2 = zext i8 %1 to i32
  %cmp3 = icmp eq i32 %conv2, 193
  br i1 %cmp3, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %2 = load i8, ptr %c.addr, align 1
  %conv6 = zext i8 %2 to i32
  %cmp7 = icmp sgt i32 %conv6, 244
  br i1 %cmp7, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %3 = load i8, ptr %c.addr, align 1
  %conv10 = zext i8 %3 to i32
  %and = and i32 %conv10, 192
  %cmp11 = icmp eq i32 %and, 128
  br i1 %cmp11, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false9, %lor.lhs.false5, %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %lor.lhs.false9
  %4 = load i8, ptr %c.addr, align 1
  %conv13 = zext i8 %4 to i32
  %and14 = and i32 %conv13, 128
  %cmp15 = icmp eq i32 %and14, 0
  br i1 %cmp15, label %if.then17, label %if.else18

if.then17:                                        ; preds = %if.else
  store i32 1, ptr %retval, align 4
  br label %return

if.else18:                                        ; preds = %if.else
  %5 = load i8, ptr %c.addr, align 1
  %conv19 = zext i8 %5 to i32
  %and20 = and i32 %conv19, 224
  %cmp21 = icmp eq i32 %and20, 192
  br i1 %cmp21, label %if.then23, label %if.else24

if.then23:                                        ; preds = %if.else18
  store i32 2, ptr %retval, align 4
  br label %return

if.else24:                                        ; preds = %if.else18
  %6 = load i8, ptr %c.addr, align 1
  %conv25 = zext i8 %6 to i32
  %and26 = and i32 %conv25, 240
  %cmp27 = icmp eq i32 %and26, 224
  br i1 %cmp27, label %if.then29, label %if.else30

if.then29:                                        ; preds = %if.else24
  store i32 3, ptr %retval, align 4
  br label %return

if.else30:                                        ; preds = %if.else24
  %7 = load i8, ptr %c.addr, align 1
  %conv31 = zext i8 %7 to i32
  %and32 = and i32 %conv31, 248
  %cmp33 = icmp eq i32 %and32, 240
  br i1 %cmp33, label %if.then35, label %if.end

if.then35:                                        ; preds = %if.else30
  store i32 4, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else30
  br label %if.end36

if.end36:                                         ; preds = %if.end
  br label %if.end37

if.end37:                                         ; preds = %if.end36
  br label %if.end38

if.end38:                                         ; preds = %if.end37
  br label %if.end39

if.end39:                                         ; preds = %if.end38
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end39, %if.then35, %if.then29, %if.then23, %if.then17, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  br label %do.body

do.body:                                          ; preds = %entry
  store i32 1, ptr %written, align 4
  %0 = load ptr, ptr %buf.addr, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr %buf.addr, align 8
  %2 = load i32, ptr %written, align 4
  %conv = sext i32 %2 to i64
  %3 = load ptr, ptr %buf.addr, align 8
  %4 = call i64 @llvm.objectsize.i64.p0(ptr %3, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %1, ptr noundef @.str.20, i64 noundef %conv, i64 noundef %4) #9
  %5 = load ptr, ptr %buf.addr, align 8
  %6 = load i32, ptr %written, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 %idxprom
  store i8 0, ptr %arrayidx, align 1
  %7 = load i32, ptr %written, align 4
  %8 = load ptr, ptr %buf.addr, align 8
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i8, ptr %8, i64 %idx.ext
  store ptr %add.ptr, ptr %buf.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %9 = load i32, ptr %written, align 4
  %10 = load i32, ptr %written_total, align 4
  %add = add nsw i32 %10, %9
  store i32 %add, ptr %written_total, align 4
  br label %do.end

do.end:                                           ; preds = %if.end
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %11 = load i64, ptr %i, align 8
  %12 = load i64, ptr %len.addr, align 8
  %cmp1 = icmp ult i64 %11, %12
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %string.addr, align 8
  %14 = load i64, ptr %i, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %13, i64 %14
  %15 = load i8, ptr %arrayidx3, align 1
  store i8 %15, ptr %c, align 1
  %16 = load i8, ptr %c, align 1
  %conv4 = sext i8 %16 to i32
  switch i32 %conv4, label %sw.default [
    i32 34, label %sw.bb
    i32 92, label %sw.bb18
    i32 8, label %sw.bb32
    i32 12, label %sw.bb46
    i32 10, label %sw.bb60
    i32 13, label %sw.bb74
    i32 9, label %sw.bb88
    i32 0, label %sw.bb102
    i32 1, label %sw.bb116
    i32 2, label %sw.bb130
    i32 3, label %sw.bb144
    i32 4, label %sw.bb158
    i32 5, label %sw.bb172
    i32 6, label %sw.bb186
    i32 7, label %sw.bb200
    i32 11, label %sw.bb214
    i32 14, label %sw.bb228
    i32 15, label %sw.bb242
    i32 16, label %sw.bb256
    i32 17, label %sw.bb270
    i32 18, label %sw.bb284
    i32 19, label %sw.bb298
    i32 20, label %sw.bb312
    i32 21, label %sw.bb326
    i32 22, label %sw.bb340
    i32 23, label %sw.bb354
    i32 24, label %sw.bb368
    i32 25, label %sw.bb382
    i32 26, label %sw.bb396
    i32 27, label %sw.bb410
    i32 28, label %sw.bb424
    i32 29, label %sw.bb438
    i32 30, label %sw.bb452
    i32 31, label %sw.bb466
    i32 47, label %sw.bb480
  ]

sw.bb:                                            ; preds = %for.body
  br label %do.body5

do.body5:                                         ; preds = %sw.bb
  store i32 2, ptr %written, align 4
  %17 = load ptr, ptr %buf.addr, align 8
  %cmp6 = icmp ne ptr %17, null
  br i1 %cmp6, label %if.then8, label %if.end15

if.then8:                                         ; preds = %do.body5
  %18 = load ptr, ptr %buf.addr, align 8
  %19 = load i32, ptr %written, align 4
  %conv9 = sext i32 %19 to i64
  %20 = load ptr, ptr %buf.addr, align 8
  %21 = call i64 @llvm.objectsize.i64.p0(ptr %20, i1 false, i1 true, i1 false)
  %call10 = call ptr @__memcpy_chk(ptr noundef %18, ptr noundef @.str.21, i64 noundef %conv9, i64 noundef %21) #9
  %22 = load ptr, ptr %buf.addr, align 8
  %23 = load i32, ptr %written, align 4
  %idxprom11 = sext i32 %23 to i64
  %arrayidx12 = getelementptr inbounds i8, ptr %22, i64 %idxprom11
  store i8 0, ptr %arrayidx12, align 1
  %24 = load i32, ptr %written, align 4
  %25 = load ptr, ptr %buf.addr, align 8
  %idx.ext13 = sext i32 %24 to i64
  %add.ptr14 = getelementptr inbounds i8, ptr %25, i64 %idx.ext13
  store ptr %add.ptr14, ptr %buf.addr, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then8, %do.body5
  %26 = load i32, ptr %written, align 4
  %27 = load i32, ptr %written_total, align 4
  %add16 = add nsw i32 %27, %26
  store i32 %add16, ptr %written_total, align 4
  br label %do.end17

do.end17:                                         ; preds = %if.end15
  br label %sw.epilog

sw.bb18:                                          ; preds = %for.body
  br label %do.body19

do.body19:                                        ; preds = %sw.bb18
  store i32 2, ptr %written, align 4
  %28 = load ptr, ptr %buf.addr, align 8
  %cmp20 = icmp ne ptr %28, null
  br i1 %cmp20, label %if.then22, label %if.end29

if.then22:                                        ; preds = %do.body19
  %29 = load ptr, ptr %buf.addr, align 8
  %30 = load i32, ptr %written, align 4
  %conv23 = sext i32 %30 to i64
  %31 = load ptr, ptr %buf.addr, align 8
  %32 = call i64 @llvm.objectsize.i64.p0(ptr %31, i1 false, i1 true, i1 false)
  %call24 = call ptr @__memcpy_chk(ptr noundef %29, ptr noundef @.str.22, i64 noundef %conv23, i64 noundef %32) #9
  %33 = load ptr, ptr %buf.addr, align 8
  %34 = load i32, ptr %written, align 4
  %idxprom25 = sext i32 %34 to i64
  %arrayidx26 = getelementptr inbounds i8, ptr %33, i64 %idxprom25
  store i8 0, ptr %arrayidx26, align 1
  %35 = load i32, ptr %written, align 4
  %36 = load ptr, ptr %buf.addr, align 8
  %idx.ext27 = sext i32 %35 to i64
  %add.ptr28 = getelementptr inbounds i8, ptr %36, i64 %idx.ext27
  store ptr %add.ptr28, ptr %buf.addr, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then22, %do.body19
  %37 = load i32, ptr %written, align 4
  %38 = load i32, ptr %written_total, align 4
  %add30 = add nsw i32 %38, %37
  store i32 %add30, ptr %written_total, align 4
  br label %do.end31

do.end31:                                         ; preds = %if.end29
  br label %sw.epilog

sw.bb32:                                          ; preds = %for.body
  br label %do.body33

do.body33:                                        ; preds = %sw.bb32
  store i32 2, ptr %written, align 4
  %39 = load ptr, ptr %buf.addr, align 8
  %cmp34 = icmp ne ptr %39, null
  br i1 %cmp34, label %if.then36, label %if.end43

if.then36:                                        ; preds = %do.body33
  %40 = load ptr, ptr %buf.addr, align 8
  %41 = load i32, ptr %written, align 4
  %conv37 = sext i32 %41 to i64
  %42 = load ptr, ptr %buf.addr, align 8
  %43 = call i64 @llvm.objectsize.i64.p0(ptr %42, i1 false, i1 true, i1 false)
  %call38 = call ptr @__memcpy_chk(ptr noundef %40, ptr noundef @.str.23, i64 noundef %conv37, i64 noundef %43) #9
  %44 = load ptr, ptr %buf.addr, align 8
  %45 = load i32, ptr %written, align 4
  %idxprom39 = sext i32 %45 to i64
  %arrayidx40 = getelementptr inbounds i8, ptr %44, i64 %idxprom39
  store i8 0, ptr %arrayidx40, align 1
  %46 = load i32, ptr %written, align 4
  %47 = load ptr, ptr %buf.addr, align 8
  %idx.ext41 = sext i32 %46 to i64
  %add.ptr42 = getelementptr inbounds i8, ptr %47, i64 %idx.ext41
  store ptr %add.ptr42, ptr %buf.addr, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.then36, %do.body33
  %48 = load i32, ptr %written, align 4
  %49 = load i32, ptr %written_total, align 4
  %add44 = add nsw i32 %49, %48
  store i32 %add44, ptr %written_total, align 4
  br label %do.end45

do.end45:                                         ; preds = %if.end43
  br label %sw.epilog

sw.bb46:                                          ; preds = %for.body
  br label %do.body47

do.body47:                                        ; preds = %sw.bb46
  store i32 2, ptr %written, align 4
  %50 = load ptr, ptr %buf.addr, align 8
  %cmp48 = icmp ne ptr %50, null
  br i1 %cmp48, label %if.then50, label %if.end57

if.then50:                                        ; preds = %do.body47
  %51 = load ptr, ptr %buf.addr, align 8
  %52 = load i32, ptr %written, align 4
  %conv51 = sext i32 %52 to i64
  %53 = load ptr, ptr %buf.addr, align 8
  %54 = call i64 @llvm.objectsize.i64.p0(ptr %53, i1 false, i1 true, i1 false)
  %call52 = call ptr @__memcpy_chk(ptr noundef %51, ptr noundef @.str.24, i64 noundef %conv51, i64 noundef %54) #9
  %55 = load ptr, ptr %buf.addr, align 8
  %56 = load i32, ptr %written, align 4
  %idxprom53 = sext i32 %56 to i64
  %arrayidx54 = getelementptr inbounds i8, ptr %55, i64 %idxprom53
  store i8 0, ptr %arrayidx54, align 1
  %57 = load i32, ptr %written, align 4
  %58 = load ptr, ptr %buf.addr, align 8
  %idx.ext55 = sext i32 %57 to i64
  %add.ptr56 = getelementptr inbounds i8, ptr %58, i64 %idx.ext55
  store ptr %add.ptr56, ptr %buf.addr, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.then50, %do.body47
  %59 = load i32, ptr %written, align 4
  %60 = load i32, ptr %written_total, align 4
  %add58 = add nsw i32 %60, %59
  store i32 %add58, ptr %written_total, align 4
  br label %do.end59

do.end59:                                         ; preds = %if.end57
  br label %sw.epilog

sw.bb60:                                          ; preds = %for.body
  br label %do.body61

do.body61:                                        ; preds = %sw.bb60
  store i32 2, ptr %written, align 4
  %61 = load ptr, ptr %buf.addr, align 8
  %cmp62 = icmp ne ptr %61, null
  br i1 %cmp62, label %if.then64, label %if.end71

if.then64:                                        ; preds = %do.body61
  %62 = load ptr, ptr %buf.addr, align 8
  %63 = load i32, ptr %written, align 4
  %conv65 = sext i32 %63 to i64
  %64 = load ptr, ptr %buf.addr, align 8
  %65 = call i64 @llvm.objectsize.i64.p0(ptr %64, i1 false, i1 true, i1 false)
  %call66 = call ptr @__memcpy_chk(ptr noundef %62, ptr noundef @.str.25, i64 noundef %conv65, i64 noundef %65) #9
  %66 = load ptr, ptr %buf.addr, align 8
  %67 = load i32, ptr %written, align 4
  %idxprom67 = sext i32 %67 to i64
  %arrayidx68 = getelementptr inbounds i8, ptr %66, i64 %idxprom67
  store i8 0, ptr %arrayidx68, align 1
  %68 = load i32, ptr %written, align 4
  %69 = load ptr, ptr %buf.addr, align 8
  %idx.ext69 = sext i32 %68 to i64
  %add.ptr70 = getelementptr inbounds i8, ptr %69, i64 %idx.ext69
  store ptr %add.ptr70, ptr %buf.addr, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.then64, %do.body61
  %70 = load i32, ptr %written, align 4
  %71 = load i32, ptr %written_total, align 4
  %add72 = add nsw i32 %71, %70
  store i32 %add72, ptr %written_total, align 4
  br label %do.end73

do.end73:                                         ; preds = %if.end71
  br label %sw.epilog

sw.bb74:                                          ; preds = %for.body
  br label %do.body75

do.body75:                                        ; preds = %sw.bb74
  store i32 2, ptr %written, align 4
  %72 = load ptr, ptr %buf.addr, align 8
  %cmp76 = icmp ne ptr %72, null
  br i1 %cmp76, label %if.then78, label %if.end85

if.then78:                                        ; preds = %do.body75
  %73 = load ptr, ptr %buf.addr, align 8
  %74 = load i32, ptr %written, align 4
  %conv79 = sext i32 %74 to i64
  %75 = load ptr, ptr %buf.addr, align 8
  %76 = call i64 @llvm.objectsize.i64.p0(ptr %75, i1 false, i1 true, i1 false)
  %call80 = call ptr @__memcpy_chk(ptr noundef %73, ptr noundef @.str.26, i64 noundef %conv79, i64 noundef %76) #9
  %77 = load ptr, ptr %buf.addr, align 8
  %78 = load i32, ptr %written, align 4
  %idxprom81 = sext i32 %78 to i64
  %arrayidx82 = getelementptr inbounds i8, ptr %77, i64 %idxprom81
  store i8 0, ptr %arrayidx82, align 1
  %79 = load i32, ptr %written, align 4
  %80 = load ptr, ptr %buf.addr, align 8
  %idx.ext83 = sext i32 %79 to i64
  %add.ptr84 = getelementptr inbounds i8, ptr %80, i64 %idx.ext83
  store ptr %add.ptr84, ptr %buf.addr, align 8
  br label %if.end85

if.end85:                                         ; preds = %if.then78, %do.body75
  %81 = load i32, ptr %written, align 4
  %82 = load i32, ptr %written_total, align 4
  %add86 = add nsw i32 %82, %81
  store i32 %add86, ptr %written_total, align 4
  br label %do.end87

do.end87:                                         ; preds = %if.end85
  br label %sw.epilog

sw.bb88:                                          ; preds = %for.body
  br label %do.body89

do.body89:                                        ; preds = %sw.bb88
  store i32 2, ptr %written, align 4
  %83 = load ptr, ptr %buf.addr, align 8
  %cmp90 = icmp ne ptr %83, null
  br i1 %cmp90, label %if.then92, label %if.end99

if.then92:                                        ; preds = %do.body89
  %84 = load ptr, ptr %buf.addr, align 8
  %85 = load i32, ptr %written, align 4
  %conv93 = sext i32 %85 to i64
  %86 = load ptr, ptr %buf.addr, align 8
  %87 = call i64 @llvm.objectsize.i64.p0(ptr %86, i1 false, i1 true, i1 false)
  %call94 = call ptr @__memcpy_chk(ptr noundef %84, ptr noundef @.str.27, i64 noundef %conv93, i64 noundef %87) #9
  %88 = load ptr, ptr %buf.addr, align 8
  %89 = load i32, ptr %written, align 4
  %idxprom95 = sext i32 %89 to i64
  %arrayidx96 = getelementptr inbounds i8, ptr %88, i64 %idxprom95
  store i8 0, ptr %arrayidx96, align 1
  %90 = load i32, ptr %written, align 4
  %91 = load ptr, ptr %buf.addr, align 8
  %idx.ext97 = sext i32 %90 to i64
  %add.ptr98 = getelementptr inbounds i8, ptr %91, i64 %idx.ext97
  store ptr %add.ptr98, ptr %buf.addr, align 8
  br label %if.end99

if.end99:                                         ; preds = %if.then92, %do.body89
  %92 = load i32, ptr %written, align 4
  %93 = load i32, ptr %written_total, align 4
  %add100 = add nsw i32 %93, %92
  store i32 %add100, ptr %written_total, align 4
  br label %do.end101

do.end101:                                        ; preds = %if.end99
  br label %sw.epilog

sw.bb102:                                         ; preds = %for.body
  br label %do.body103

do.body103:                                       ; preds = %sw.bb102
  store i32 6, ptr %written, align 4
  %94 = load ptr, ptr %buf.addr, align 8
  %cmp104 = icmp ne ptr %94, null
  br i1 %cmp104, label %if.then106, label %if.end113

if.then106:                                       ; preds = %do.body103
  %95 = load ptr, ptr %buf.addr, align 8
  %96 = load i32, ptr %written, align 4
  %conv107 = sext i32 %96 to i64
  %97 = load ptr, ptr %buf.addr, align 8
  %98 = call i64 @llvm.objectsize.i64.p0(ptr %97, i1 false, i1 true, i1 false)
  %call108 = call ptr @__memcpy_chk(ptr noundef %95, ptr noundef @.str.28, i64 noundef %conv107, i64 noundef %98) #9
  %99 = load ptr, ptr %buf.addr, align 8
  %100 = load i32, ptr %written, align 4
  %idxprom109 = sext i32 %100 to i64
  %arrayidx110 = getelementptr inbounds i8, ptr %99, i64 %idxprom109
  store i8 0, ptr %arrayidx110, align 1
  %101 = load i32, ptr %written, align 4
  %102 = load ptr, ptr %buf.addr, align 8
  %idx.ext111 = sext i32 %101 to i64
  %add.ptr112 = getelementptr inbounds i8, ptr %102, i64 %idx.ext111
  store ptr %add.ptr112, ptr %buf.addr, align 8
  br label %if.end113

if.end113:                                        ; preds = %if.then106, %do.body103
  %103 = load i32, ptr %written, align 4
  %104 = load i32, ptr %written_total, align 4
  %add114 = add nsw i32 %104, %103
  store i32 %add114, ptr %written_total, align 4
  br label %do.end115

do.end115:                                        ; preds = %if.end113
  br label %sw.epilog

sw.bb116:                                         ; preds = %for.body
  br label %do.body117

do.body117:                                       ; preds = %sw.bb116
  store i32 6, ptr %written, align 4
  %105 = load ptr, ptr %buf.addr, align 8
  %cmp118 = icmp ne ptr %105, null
  br i1 %cmp118, label %if.then120, label %if.end127

if.then120:                                       ; preds = %do.body117
  %106 = load ptr, ptr %buf.addr, align 8
  %107 = load i32, ptr %written, align 4
  %conv121 = sext i32 %107 to i64
  %108 = load ptr, ptr %buf.addr, align 8
  %109 = call i64 @llvm.objectsize.i64.p0(ptr %108, i1 false, i1 true, i1 false)
  %call122 = call ptr @__memcpy_chk(ptr noundef %106, ptr noundef @.str.29, i64 noundef %conv121, i64 noundef %109) #9
  %110 = load ptr, ptr %buf.addr, align 8
  %111 = load i32, ptr %written, align 4
  %idxprom123 = sext i32 %111 to i64
  %arrayidx124 = getelementptr inbounds i8, ptr %110, i64 %idxprom123
  store i8 0, ptr %arrayidx124, align 1
  %112 = load i32, ptr %written, align 4
  %113 = load ptr, ptr %buf.addr, align 8
  %idx.ext125 = sext i32 %112 to i64
  %add.ptr126 = getelementptr inbounds i8, ptr %113, i64 %idx.ext125
  store ptr %add.ptr126, ptr %buf.addr, align 8
  br label %if.end127

if.end127:                                        ; preds = %if.then120, %do.body117
  %114 = load i32, ptr %written, align 4
  %115 = load i32, ptr %written_total, align 4
  %add128 = add nsw i32 %115, %114
  store i32 %add128, ptr %written_total, align 4
  br label %do.end129

do.end129:                                        ; preds = %if.end127
  br label %sw.epilog

sw.bb130:                                         ; preds = %for.body
  br label %do.body131

do.body131:                                       ; preds = %sw.bb130
  store i32 6, ptr %written, align 4
  %116 = load ptr, ptr %buf.addr, align 8
  %cmp132 = icmp ne ptr %116, null
  br i1 %cmp132, label %if.then134, label %if.end141

if.then134:                                       ; preds = %do.body131
  %117 = load ptr, ptr %buf.addr, align 8
  %118 = load i32, ptr %written, align 4
  %conv135 = sext i32 %118 to i64
  %119 = load ptr, ptr %buf.addr, align 8
  %120 = call i64 @llvm.objectsize.i64.p0(ptr %119, i1 false, i1 true, i1 false)
  %call136 = call ptr @__memcpy_chk(ptr noundef %117, ptr noundef @.str.30, i64 noundef %conv135, i64 noundef %120) #9
  %121 = load ptr, ptr %buf.addr, align 8
  %122 = load i32, ptr %written, align 4
  %idxprom137 = sext i32 %122 to i64
  %arrayidx138 = getelementptr inbounds i8, ptr %121, i64 %idxprom137
  store i8 0, ptr %arrayidx138, align 1
  %123 = load i32, ptr %written, align 4
  %124 = load ptr, ptr %buf.addr, align 8
  %idx.ext139 = sext i32 %123 to i64
  %add.ptr140 = getelementptr inbounds i8, ptr %124, i64 %idx.ext139
  store ptr %add.ptr140, ptr %buf.addr, align 8
  br label %if.end141

if.end141:                                        ; preds = %if.then134, %do.body131
  %125 = load i32, ptr %written, align 4
  %126 = load i32, ptr %written_total, align 4
  %add142 = add nsw i32 %126, %125
  store i32 %add142, ptr %written_total, align 4
  br label %do.end143

do.end143:                                        ; preds = %if.end141
  br label %sw.epilog

sw.bb144:                                         ; preds = %for.body
  br label %do.body145

do.body145:                                       ; preds = %sw.bb144
  store i32 6, ptr %written, align 4
  %127 = load ptr, ptr %buf.addr, align 8
  %cmp146 = icmp ne ptr %127, null
  br i1 %cmp146, label %if.then148, label %if.end155

if.then148:                                       ; preds = %do.body145
  %128 = load ptr, ptr %buf.addr, align 8
  %129 = load i32, ptr %written, align 4
  %conv149 = sext i32 %129 to i64
  %130 = load ptr, ptr %buf.addr, align 8
  %131 = call i64 @llvm.objectsize.i64.p0(ptr %130, i1 false, i1 true, i1 false)
  %call150 = call ptr @__memcpy_chk(ptr noundef %128, ptr noundef @.str.31, i64 noundef %conv149, i64 noundef %131) #9
  %132 = load ptr, ptr %buf.addr, align 8
  %133 = load i32, ptr %written, align 4
  %idxprom151 = sext i32 %133 to i64
  %arrayidx152 = getelementptr inbounds i8, ptr %132, i64 %idxprom151
  store i8 0, ptr %arrayidx152, align 1
  %134 = load i32, ptr %written, align 4
  %135 = load ptr, ptr %buf.addr, align 8
  %idx.ext153 = sext i32 %134 to i64
  %add.ptr154 = getelementptr inbounds i8, ptr %135, i64 %idx.ext153
  store ptr %add.ptr154, ptr %buf.addr, align 8
  br label %if.end155

if.end155:                                        ; preds = %if.then148, %do.body145
  %136 = load i32, ptr %written, align 4
  %137 = load i32, ptr %written_total, align 4
  %add156 = add nsw i32 %137, %136
  store i32 %add156, ptr %written_total, align 4
  br label %do.end157

do.end157:                                        ; preds = %if.end155
  br label %sw.epilog

sw.bb158:                                         ; preds = %for.body
  br label %do.body159

do.body159:                                       ; preds = %sw.bb158
  store i32 6, ptr %written, align 4
  %138 = load ptr, ptr %buf.addr, align 8
  %cmp160 = icmp ne ptr %138, null
  br i1 %cmp160, label %if.then162, label %if.end169

if.then162:                                       ; preds = %do.body159
  %139 = load ptr, ptr %buf.addr, align 8
  %140 = load i32, ptr %written, align 4
  %conv163 = sext i32 %140 to i64
  %141 = load ptr, ptr %buf.addr, align 8
  %142 = call i64 @llvm.objectsize.i64.p0(ptr %141, i1 false, i1 true, i1 false)
  %call164 = call ptr @__memcpy_chk(ptr noundef %139, ptr noundef @.str.32, i64 noundef %conv163, i64 noundef %142) #9
  %143 = load ptr, ptr %buf.addr, align 8
  %144 = load i32, ptr %written, align 4
  %idxprom165 = sext i32 %144 to i64
  %arrayidx166 = getelementptr inbounds i8, ptr %143, i64 %idxprom165
  store i8 0, ptr %arrayidx166, align 1
  %145 = load i32, ptr %written, align 4
  %146 = load ptr, ptr %buf.addr, align 8
  %idx.ext167 = sext i32 %145 to i64
  %add.ptr168 = getelementptr inbounds i8, ptr %146, i64 %idx.ext167
  store ptr %add.ptr168, ptr %buf.addr, align 8
  br label %if.end169

if.end169:                                        ; preds = %if.then162, %do.body159
  %147 = load i32, ptr %written, align 4
  %148 = load i32, ptr %written_total, align 4
  %add170 = add nsw i32 %148, %147
  store i32 %add170, ptr %written_total, align 4
  br label %do.end171

do.end171:                                        ; preds = %if.end169
  br label %sw.epilog

sw.bb172:                                         ; preds = %for.body
  br label %do.body173

do.body173:                                       ; preds = %sw.bb172
  store i32 6, ptr %written, align 4
  %149 = load ptr, ptr %buf.addr, align 8
  %cmp174 = icmp ne ptr %149, null
  br i1 %cmp174, label %if.then176, label %if.end183

if.then176:                                       ; preds = %do.body173
  %150 = load ptr, ptr %buf.addr, align 8
  %151 = load i32, ptr %written, align 4
  %conv177 = sext i32 %151 to i64
  %152 = load ptr, ptr %buf.addr, align 8
  %153 = call i64 @llvm.objectsize.i64.p0(ptr %152, i1 false, i1 true, i1 false)
  %call178 = call ptr @__memcpy_chk(ptr noundef %150, ptr noundef @.str.33, i64 noundef %conv177, i64 noundef %153) #9
  %154 = load ptr, ptr %buf.addr, align 8
  %155 = load i32, ptr %written, align 4
  %idxprom179 = sext i32 %155 to i64
  %arrayidx180 = getelementptr inbounds i8, ptr %154, i64 %idxprom179
  store i8 0, ptr %arrayidx180, align 1
  %156 = load i32, ptr %written, align 4
  %157 = load ptr, ptr %buf.addr, align 8
  %idx.ext181 = sext i32 %156 to i64
  %add.ptr182 = getelementptr inbounds i8, ptr %157, i64 %idx.ext181
  store ptr %add.ptr182, ptr %buf.addr, align 8
  br label %if.end183

if.end183:                                        ; preds = %if.then176, %do.body173
  %158 = load i32, ptr %written, align 4
  %159 = load i32, ptr %written_total, align 4
  %add184 = add nsw i32 %159, %158
  store i32 %add184, ptr %written_total, align 4
  br label %do.end185

do.end185:                                        ; preds = %if.end183
  br label %sw.epilog

sw.bb186:                                         ; preds = %for.body
  br label %do.body187

do.body187:                                       ; preds = %sw.bb186
  store i32 6, ptr %written, align 4
  %160 = load ptr, ptr %buf.addr, align 8
  %cmp188 = icmp ne ptr %160, null
  br i1 %cmp188, label %if.then190, label %if.end197

if.then190:                                       ; preds = %do.body187
  %161 = load ptr, ptr %buf.addr, align 8
  %162 = load i32, ptr %written, align 4
  %conv191 = sext i32 %162 to i64
  %163 = load ptr, ptr %buf.addr, align 8
  %164 = call i64 @llvm.objectsize.i64.p0(ptr %163, i1 false, i1 true, i1 false)
  %call192 = call ptr @__memcpy_chk(ptr noundef %161, ptr noundef @.str.34, i64 noundef %conv191, i64 noundef %164) #9
  %165 = load ptr, ptr %buf.addr, align 8
  %166 = load i32, ptr %written, align 4
  %idxprom193 = sext i32 %166 to i64
  %arrayidx194 = getelementptr inbounds i8, ptr %165, i64 %idxprom193
  store i8 0, ptr %arrayidx194, align 1
  %167 = load i32, ptr %written, align 4
  %168 = load ptr, ptr %buf.addr, align 8
  %idx.ext195 = sext i32 %167 to i64
  %add.ptr196 = getelementptr inbounds i8, ptr %168, i64 %idx.ext195
  store ptr %add.ptr196, ptr %buf.addr, align 8
  br label %if.end197

if.end197:                                        ; preds = %if.then190, %do.body187
  %169 = load i32, ptr %written, align 4
  %170 = load i32, ptr %written_total, align 4
  %add198 = add nsw i32 %170, %169
  store i32 %add198, ptr %written_total, align 4
  br label %do.end199

do.end199:                                        ; preds = %if.end197
  br label %sw.epilog

sw.bb200:                                         ; preds = %for.body
  br label %do.body201

do.body201:                                       ; preds = %sw.bb200
  store i32 6, ptr %written, align 4
  %171 = load ptr, ptr %buf.addr, align 8
  %cmp202 = icmp ne ptr %171, null
  br i1 %cmp202, label %if.then204, label %if.end211

if.then204:                                       ; preds = %do.body201
  %172 = load ptr, ptr %buf.addr, align 8
  %173 = load i32, ptr %written, align 4
  %conv205 = sext i32 %173 to i64
  %174 = load ptr, ptr %buf.addr, align 8
  %175 = call i64 @llvm.objectsize.i64.p0(ptr %174, i1 false, i1 true, i1 false)
  %call206 = call ptr @__memcpy_chk(ptr noundef %172, ptr noundef @.str.35, i64 noundef %conv205, i64 noundef %175) #9
  %176 = load ptr, ptr %buf.addr, align 8
  %177 = load i32, ptr %written, align 4
  %idxprom207 = sext i32 %177 to i64
  %arrayidx208 = getelementptr inbounds i8, ptr %176, i64 %idxprom207
  store i8 0, ptr %arrayidx208, align 1
  %178 = load i32, ptr %written, align 4
  %179 = load ptr, ptr %buf.addr, align 8
  %idx.ext209 = sext i32 %178 to i64
  %add.ptr210 = getelementptr inbounds i8, ptr %179, i64 %idx.ext209
  store ptr %add.ptr210, ptr %buf.addr, align 8
  br label %if.end211

if.end211:                                        ; preds = %if.then204, %do.body201
  %180 = load i32, ptr %written, align 4
  %181 = load i32, ptr %written_total, align 4
  %add212 = add nsw i32 %181, %180
  store i32 %add212, ptr %written_total, align 4
  br label %do.end213

do.end213:                                        ; preds = %if.end211
  br label %sw.epilog

sw.bb214:                                         ; preds = %for.body
  br label %do.body215

do.body215:                                       ; preds = %sw.bb214
  store i32 6, ptr %written, align 4
  %182 = load ptr, ptr %buf.addr, align 8
  %cmp216 = icmp ne ptr %182, null
  br i1 %cmp216, label %if.then218, label %if.end225

if.then218:                                       ; preds = %do.body215
  %183 = load ptr, ptr %buf.addr, align 8
  %184 = load i32, ptr %written, align 4
  %conv219 = sext i32 %184 to i64
  %185 = load ptr, ptr %buf.addr, align 8
  %186 = call i64 @llvm.objectsize.i64.p0(ptr %185, i1 false, i1 true, i1 false)
  %call220 = call ptr @__memcpy_chk(ptr noundef %183, ptr noundef @.str.36, i64 noundef %conv219, i64 noundef %186) #9
  %187 = load ptr, ptr %buf.addr, align 8
  %188 = load i32, ptr %written, align 4
  %idxprom221 = sext i32 %188 to i64
  %arrayidx222 = getelementptr inbounds i8, ptr %187, i64 %idxprom221
  store i8 0, ptr %arrayidx222, align 1
  %189 = load i32, ptr %written, align 4
  %190 = load ptr, ptr %buf.addr, align 8
  %idx.ext223 = sext i32 %189 to i64
  %add.ptr224 = getelementptr inbounds i8, ptr %190, i64 %idx.ext223
  store ptr %add.ptr224, ptr %buf.addr, align 8
  br label %if.end225

if.end225:                                        ; preds = %if.then218, %do.body215
  %191 = load i32, ptr %written, align 4
  %192 = load i32, ptr %written_total, align 4
  %add226 = add nsw i32 %192, %191
  store i32 %add226, ptr %written_total, align 4
  br label %do.end227

do.end227:                                        ; preds = %if.end225
  br label %sw.epilog

sw.bb228:                                         ; preds = %for.body
  br label %do.body229

do.body229:                                       ; preds = %sw.bb228
  store i32 6, ptr %written, align 4
  %193 = load ptr, ptr %buf.addr, align 8
  %cmp230 = icmp ne ptr %193, null
  br i1 %cmp230, label %if.then232, label %if.end239

if.then232:                                       ; preds = %do.body229
  %194 = load ptr, ptr %buf.addr, align 8
  %195 = load i32, ptr %written, align 4
  %conv233 = sext i32 %195 to i64
  %196 = load ptr, ptr %buf.addr, align 8
  %197 = call i64 @llvm.objectsize.i64.p0(ptr %196, i1 false, i1 true, i1 false)
  %call234 = call ptr @__memcpy_chk(ptr noundef %194, ptr noundef @.str.37, i64 noundef %conv233, i64 noundef %197) #9
  %198 = load ptr, ptr %buf.addr, align 8
  %199 = load i32, ptr %written, align 4
  %idxprom235 = sext i32 %199 to i64
  %arrayidx236 = getelementptr inbounds i8, ptr %198, i64 %idxprom235
  store i8 0, ptr %arrayidx236, align 1
  %200 = load i32, ptr %written, align 4
  %201 = load ptr, ptr %buf.addr, align 8
  %idx.ext237 = sext i32 %200 to i64
  %add.ptr238 = getelementptr inbounds i8, ptr %201, i64 %idx.ext237
  store ptr %add.ptr238, ptr %buf.addr, align 8
  br label %if.end239

if.end239:                                        ; preds = %if.then232, %do.body229
  %202 = load i32, ptr %written, align 4
  %203 = load i32, ptr %written_total, align 4
  %add240 = add nsw i32 %203, %202
  store i32 %add240, ptr %written_total, align 4
  br label %do.end241

do.end241:                                        ; preds = %if.end239
  br label %sw.epilog

sw.bb242:                                         ; preds = %for.body
  br label %do.body243

do.body243:                                       ; preds = %sw.bb242
  store i32 6, ptr %written, align 4
  %204 = load ptr, ptr %buf.addr, align 8
  %cmp244 = icmp ne ptr %204, null
  br i1 %cmp244, label %if.then246, label %if.end253

if.then246:                                       ; preds = %do.body243
  %205 = load ptr, ptr %buf.addr, align 8
  %206 = load i32, ptr %written, align 4
  %conv247 = sext i32 %206 to i64
  %207 = load ptr, ptr %buf.addr, align 8
  %208 = call i64 @llvm.objectsize.i64.p0(ptr %207, i1 false, i1 true, i1 false)
  %call248 = call ptr @__memcpy_chk(ptr noundef %205, ptr noundef @.str.38, i64 noundef %conv247, i64 noundef %208) #9
  %209 = load ptr, ptr %buf.addr, align 8
  %210 = load i32, ptr %written, align 4
  %idxprom249 = sext i32 %210 to i64
  %arrayidx250 = getelementptr inbounds i8, ptr %209, i64 %idxprom249
  store i8 0, ptr %arrayidx250, align 1
  %211 = load i32, ptr %written, align 4
  %212 = load ptr, ptr %buf.addr, align 8
  %idx.ext251 = sext i32 %211 to i64
  %add.ptr252 = getelementptr inbounds i8, ptr %212, i64 %idx.ext251
  store ptr %add.ptr252, ptr %buf.addr, align 8
  br label %if.end253

if.end253:                                        ; preds = %if.then246, %do.body243
  %213 = load i32, ptr %written, align 4
  %214 = load i32, ptr %written_total, align 4
  %add254 = add nsw i32 %214, %213
  store i32 %add254, ptr %written_total, align 4
  br label %do.end255

do.end255:                                        ; preds = %if.end253
  br label %sw.epilog

sw.bb256:                                         ; preds = %for.body
  br label %do.body257

do.body257:                                       ; preds = %sw.bb256
  store i32 6, ptr %written, align 4
  %215 = load ptr, ptr %buf.addr, align 8
  %cmp258 = icmp ne ptr %215, null
  br i1 %cmp258, label %if.then260, label %if.end267

if.then260:                                       ; preds = %do.body257
  %216 = load ptr, ptr %buf.addr, align 8
  %217 = load i32, ptr %written, align 4
  %conv261 = sext i32 %217 to i64
  %218 = load ptr, ptr %buf.addr, align 8
  %219 = call i64 @llvm.objectsize.i64.p0(ptr %218, i1 false, i1 true, i1 false)
  %call262 = call ptr @__memcpy_chk(ptr noundef %216, ptr noundef @.str.39, i64 noundef %conv261, i64 noundef %219) #9
  %220 = load ptr, ptr %buf.addr, align 8
  %221 = load i32, ptr %written, align 4
  %idxprom263 = sext i32 %221 to i64
  %arrayidx264 = getelementptr inbounds i8, ptr %220, i64 %idxprom263
  store i8 0, ptr %arrayidx264, align 1
  %222 = load i32, ptr %written, align 4
  %223 = load ptr, ptr %buf.addr, align 8
  %idx.ext265 = sext i32 %222 to i64
  %add.ptr266 = getelementptr inbounds i8, ptr %223, i64 %idx.ext265
  store ptr %add.ptr266, ptr %buf.addr, align 8
  br label %if.end267

if.end267:                                        ; preds = %if.then260, %do.body257
  %224 = load i32, ptr %written, align 4
  %225 = load i32, ptr %written_total, align 4
  %add268 = add nsw i32 %225, %224
  store i32 %add268, ptr %written_total, align 4
  br label %do.end269

do.end269:                                        ; preds = %if.end267
  br label %sw.epilog

sw.bb270:                                         ; preds = %for.body
  br label %do.body271

do.body271:                                       ; preds = %sw.bb270
  store i32 6, ptr %written, align 4
  %226 = load ptr, ptr %buf.addr, align 8
  %cmp272 = icmp ne ptr %226, null
  br i1 %cmp272, label %if.then274, label %if.end281

if.then274:                                       ; preds = %do.body271
  %227 = load ptr, ptr %buf.addr, align 8
  %228 = load i32, ptr %written, align 4
  %conv275 = sext i32 %228 to i64
  %229 = load ptr, ptr %buf.addr, align 8
  %230 = call i64 @llvm.objectsize.i64.p0(ptr %229, i1 false, i1 true, i1 false)
  %call276 = call ptr @__memcpy_chk(ptr noundef %227, ptr noundef @.str.40, i64 noundef %conv275, i64 noundef %230) #9
  %231 = load ptr, ptr %buf.addr, align 8
  %232 = load i32, ptr %written, align 4
  %idxprom277 = sext i32 %232 to i64
  %arrayidx278 = getelementptr inbounds i8, ptr %231, i64 %idxprom277
  store i8 0, ptr %arrayidx278, align 1
  %233 = load i32, ptr %written, align 4
  %234 = load ptr, ptr %buf.addr, align 8
  %idx.ext279 = sext i32 %233 to i64
  %add.ptr280 = getelementptr inbounds i8, ptr %234, i64 %idx.ext279
  store ptr %add.ptr280, ptr %buf.addr, align 8
  br label %if.end281

if.end281:                                        ; preds = %if.then274, %do.body271
  %235 = load i32, ptr %written, align 4
  %236 = load i32, ptr %written_total, align 4
  %add282 = add nsw i32 %236, %235
  store i32 %add282, ptr %written_total, align 4
  br label %do.end283

do.end283:                                        ; preds = %if.end281
  br label %sw.epilog

sw.bb284:                                         ; preds = %for.body
  br label %do.body285

do.body285:                                       ; preds = %sw.bb284
  store i32 6, ptr %written, align 4
  %237 = load ptr, ptr %buf.addr, align 8
  %cmp286 = icmp ne ptr %237, null
  br i1 %cmp286, label %if.then288, label %if.end295

if.then288:                                       ; preds = %do.body285
  %238 = load ptr, ptr %buf.addr, align 8
  %239 = load i32, ptr %written, align 4
  %conv289 = sext i32 %239 to i64
  %240 = load ptr, ptr %buf.addr, align 8
  %241 = call i64 @llvm.objectsize.i64.p0(ptr %240, i1 false, i1 true, i1 false)
  %call290 = call ptr @__memcpy_chk(ptr noundef %238, ptr noundef @.str.41, i64 noundef %conv289, i64 noundef %241) #9
  %242 = load ptr, ptr %buf.addr, align 8
  %243 = load i32, ptr %written, align 4
  %idxprom291 = sext i32 %243 to i64
  %arrayidx292 = getelementptr inbounds i8, ptr %242, i64 %idxprom291
  store i8 0, ptr %arrayidx292, align 1
  %244 = load i32, ptr %written, align 4
  %245 = load ptr, ptr %buf.addr, align 8
  %idx.ext293 = sext i32 %244 to i64
  %add.ptr294 = getelementptr inbounds i8, ptr %245, i64 %idx.ext293
  store ptr %add.ptr294, ptr %buf.addr, align 8
  br label %if.end295

if.end295:                                        ; preds = %if.then288, %do.body285
  %246 = load i32, ptr %written, align 4
  %247 = load i32, ptr %written_total, align 4
  %add296 = add nsw i32 %247, %246
  store i32 %add296, ptr %written_total, align 4
  br label %do.end297

do.end297:                                        ; preds = %if.end295
  br label %sw.epilog

sw.bb298:                                         ; preds = %for.body
  br label %do.body299

do.body299:                                       ; preds = %sw.bb298
  store i32 6, ptr %written, align 4
  %248 = load ptr, ptr %buf.addr, align 8
  %cmp300 = icmp ne ptr %248, null
  br i1 %cmp300, label %if.then302, label %if.end309

if.then302:                                       ; preds = %do.body299
  %249 = load ptr, ptr %buf.addr, align 8
  %250 = load i32, ptr %written, align 4
  %conv303 = sext i32 %250 to i64
  %251 = load ptr, ptr %buf.addr, align 8
  %252 = call i64 @llvm.objectsize.i64.p0(ptr %251, i1 false, i1 true, i1 false)
  %call304 = call ptr @__memcpy_chk(ptr noundef %249, ptr noundef @.str.42, i64 noundef %conv303, i64 noundef %252) #9
  %253 = load ptr, ptr %buf.addr, align 8
  %254 = load i32, ptr %written, align 4
  %idxprom305 = sext i32 %254 to i64
  %arrayidx306 = getelementptr inbounds i8, ptr %253, i64 %idxprom305
  store i8 0, ptr %arrayidx306, align 1
  %255 = load i32, ptr %written, align 4
  %256 = load ptr, ptr %buf.addr, align 8
  %idx.ext307 = sext i32 %255 to i64
  %add.ptr308 = getelementptr inbounds i8, ptr %256, i64 %idx.ext307
  store ptr %add.ptr308, ptr %buf.addr, align 8
  br label %if.end309

if.end309:                                        ; preds = %if.then302, %do.body299
  %257 = load i32, ptr %written, align 4
  %258 = load i32, ptr %written_total, align 4
  %add310 = add nsw i32 %258, %257
  store i32 %add310, ptr %written_total, align 4
  br label %do.end311

do.end311:                                        ; preds = %if.end309
  br label %sw.epilog

sw.bb312:                                         ; preds = %for.body
  br label %do.body313

do.body313:                                       ; preds = %sw.bb312
  store i32 6, ptr %written, align 4
  %259 = load ptr, ptr %buf.addr, align 8
  %cmp314 = icmp ne ptr %259, null
  br i1 %cmp314, label %if.then316, label %if.end323

if.then316:                                       ; preds = %do.body313
  %260 = load ptr, ptr %buf.addr, align 8
  %261 = load i32, ptr %written, align 4
  %conv317 = sext i32 %261 to i64
  %262 = load ptr, ptr %buf.addr, align 8
  %263 = call i64 @llvm.objectsize.i64.p0(ptr %262, i1 false, i1 true, i1 false)
  %call318 = call ptr @__memcpy_chk(ptr noundef %260, ptr noundef @.str.43, i64 noundef %conv317, i64 noundef %263) #9
  %264 = load ptr, ptr %buf.addr, align 8
  %265 = load i32, ptr %written, align 4
  %idxprom319 = sext i32 %265 to i64
  %arrayidx320 = getelementptr inbounds i8, ptr %264, i64 %idxprom319
  store i8 0, ptr %arrayidx320, align 1
  %266 = load i32, ptr %written, align 4
  %267 = load ptr, ptr %buf.addr, align 8
  %idx.ext321 = sext i32 %266 to i64
  %add.ptr322 = getelementptr inbounds i8, ptr %267, i64 %idx.ext321
  store ptr %add.ptr322, ptr %buf.addr, align 8
  br label %if.end323

if.end323:                                        ; preds = %if.then316, %do.body313
  %268 = load i32, ptr %written, align 4
  %269 = load i32, ptr %written_total, align 4
  %add324 = add nsw i32 %269, %268
  store i32 %add324, ptr %written_total, align 4
  br label %do.end325

do.end325:                                        ; preds = %if.end323
  br label %sw.epilog

sw.bb326:                                         ; preds = %for.body
  br label %do.body327

do.body327:                                       ; preds = %sw.bb326
  store i32 6, ptr %written, align 4
  %270 = load ptr, ptr %buf.addr, align 8
  %cmp328 = icmp ne ptr %270, null
  br i1 %cmp328, label %if.then330, label %if.end337

if.then330:                                       ; preds = %do.body327
  %271 = load ptr, ptr %buf.addr, align 8
  %272 = load i32, ptr %written, align 4
  %conv331 = sext i32 %272 to i64
  %273 = load ptr, ptr %buf.addr, align 8
  %274 = call i64 @llvm.objectsize.i64.p0(ptr %273, i1 false, i1 true, i1 false)
  %call332 = call ptr @__memcpy_chk(ptr noundef %271, ptr noundef @.str.44, i64 noundef %conv331, i64 noundef %274) #9
  %275 = load ptr, ptr %buf.addr, align 8
  %276 = load i32, ptr %written, align 4
  %idxprom333 = sext i32 %276 to i64
  %arrayidx334 = getelementptr inbounds i8, ptr %275, i64 %idxprom333
  store i8 0, ptr %arrayidx334, align 1
  %277 = load i32, ptr %written, align 4
  %278 = load ptr, ptr %buf.addr, align 8
  %idx.ext335 = sext i32 %277 to i64
  %add.ptr336 = getelementptr inbounds i8, ptr %278, i64 %idx.ext335
  store ptr %add.ptr336, ptr %buf.addr, align 8
  br label %if.end337

if.end337:                                        ; preds = %if.then330, %do.body327
  %279 = load i32, ptr %written, align 4
  %280 = load i32, ptr %written_total, align 4
  %add338 = add nsw i32 %280, %279
  store i32 %add338, ptr %written_total, align 4
  br label %do.end339

do.end339:                                        ; preds = %if.end337
  br label %sw.epilog

sw.bb340:                                         ; preds = %for.body
  br label %do.body341

do.body341:                                       ; preds = %sw.bb340
  store i32 6, ptr %written, align 4
  %281 = load ptr, ptr %buf.addr, align 8
  %cmp342 = icmp ne ptr %281, null
  br i1 %cmp342, label %if.then344, label %if.end351

if.then344:                                       ; preds = %do.body341
  %282 = load ptr, ptr %buf.addr, align 8
  %283 = load i32, ptr %written, align 4
  %conv345 = sext i32 %283 to i64
  %284 = load ptr, ptr %buf.addr, align 8
  %285 = call i64 @llvm.objectsize.i64.p0(ptr %284, i1 false, i1 true, i1 false)
  %call346 = call ptr @__memcpy_chk(ptr noundef %282, ptr noundef @.str.45, i64 noundef %conv345, i64 noundef %285) #9
  %286 = load ptr, ptr %buf.addr, align 8
  %287 = load i32, ptr %written, align 4
  %idxprom347 = sext i32 %287 to i64
  %arrayidx348 = getelementptr inbounds i8, ptr %286, i64 %idxprom347
  store i8 0, ptr %arrayidx348, align 1
  %288 = load i32, ptr %written, align 4
  %289 = load ptr, ptr %buf.addr, align 8
  %idx.ext349 = sext i32 %288 to i64
  %add.ptr350 = getelementptr inbounds i8, ptr %289, i64 %idx.ext349
  store ptr %add.ptr350, ptr %buf.addr, align 8
  br label %if.end351

if.end351:                                        ; preds = %if.then344, %do.body341
  %290 = load i32, ptr %written, align 4
  %291 = load i32, ptr %written_total, align 4
  %add352 = add nsw i32 %291, %290
  store i32 %add352, ptr %written_total, align 4
  br label %do.end353

do.end353:                                        ; preds = %if.end351
  br label %sw.epilog

sw.bb354:                                         ; preds = %for.body
  br label %do.body355

do.body355:                                       ; preds = %sw.bb354
  store i32 6, ptr %written, align 4
  %292 = load ptr, ptr %buf.addr, align 8
  %cmp356 = icmp ne ptr %292, null
  br i1 %cmp356, label %if.then358, label %if.end365

if.then358:                                       ; preds = %do.body355
  %293 = load ptr, ptr %buf.addr, align 8
  %294 = load i32, ptr %written, align 4
  %conv359 = sext i32 %294 to i64
  %295 = load ptr, ptr %buf.addr, align 8
  %296 = call i64 @llvm.objectsize.i64.p0(ptr %295, i1 false, i1 true, i1 false)
  %call360 = call ptr @__memcpy_chk(ptr noundef %293, ptr noundef @.str.46, i64 noundef %conv359, i64 noundef %296) #9
  %297 = load ptr, ptr %buf.addr, align 8
  %298 = load i32, ptr %written, align 4
  %idxprom361 = sext i32 %298 to i64
  %arrayidx362 = getelementptr inbounds i8, ptr %297, i64 %idxprom361
  store i8 0, ptr %arrayidx362, align 1
  %299 = load i32, ptr %written, align 4
  %300 = load ptr, ptr %buf.addr, align 8
  %idx.ext363 = sext i32 %299 to i64
  %add.ptr364 = getelementptr inbounds i8, ptr %300, i64 %idx.ext363
  store ptr %add.ptr364, ptr %buf.addr, align 8
  br label %if.end365

if.end365:                                        ; preds = %if.then358, %do.body355
  %301 = load i32, ptr %written, align 4
  %302 = load i32, ptr %written_total, align 4
  %add366 = add nsw i32 %302, %301
  store i32 %add366, ptr %written_total, align 4
  br label %do.end367

do.end367:                                        ; preds = %if.end365
  br label %sw.epilog

sw.bb368:                                         ; preds = %for.body
  br label %do.body369

do.body369:                                       ; preds = %sw.bb368
  store i32 6, ptr %written, align 4
  %303 = load ptr, ptr %buf.addr, align 8
  %cmp370 = icmp ne ptr %303, null
  br i1 %cmp370, label %if.then372, label %if.end379

if.then372:                                       ; preds = %do.body369
  %304 = load ptr, ptr %buf.addr, align 8
  %305 = load i32, ptr %written, align 4
  %conv373 = sext i32 %305 to i64
  %306 = load ptr, ptr %buf.addr, align 8
  %307 = call i64 @llvm.objectsize.i64.p0(ptr %306, i1 false, i1 true, i1 false)
  %call374 = call ptr @__memcpy_chk(ptr noundef %304, ptr noundef @.str.47, i64 noundef %conv373, i64 noundef %307) #9
  %308 = load ptr, ptr %buf.addr, align 8
  %309 = load i32, ptr %written, align 4
  %idxprom375 = sext i32 %309 to i64
  %arrayidx376 = getelementptr inbounds i8, ptr %308, i64 %idxprom375
  store i8 0, ptr %arrayidx376, align 1
  %310 = load i32, ptr %written, align 4
  %311 = load ptr, ptr %buf.addr, align 8
  %idx.ext377 = sext i32 %310 to i64
  %add.ptr378 = getelementptr inbounds i8, ptr %311, i64 %idx.ext377
  store ptr %add.ptr378, ptr %buf.addr, align 8
  br label %if.end379

if.end379:                                        ; preds = %if.then372, %do.body369
  %312 = load i32, ptr %written, align 4
  %313 = load i32, ptr %written_total, align 4
  %add380 = add nsw i32 %313, %312
  store i32 %add380, ptr %written_total, align 4
  br label %do.end381

do.end381:                                        ; preds = %if.end379
  br label %sw.epilog

sw.bb382:                                         ; preds = %for.body
  br label %do.body383

do.body383:                                       ; preds = %sw.bb382
  store i32 6, ptr %written, align 4
  %314 = load ptr, ptr %buf.addr, align 8
  %cmp384 = icmp ne ptr %314, null
  br i1 %cmp384, label %if.then386, label %if.end393

if.then386:                                       ; preds = %do.body383
  %315 = load ptr, ptr %buf.addr, align 8
  %316 = load i32, ptr %written, align 4
  %conv387 = sext i32 %316 to i64
  %317 = load ptr, ptr %buf.addr, align 8
  %318 = call i64 @llvm.objectsize.i64.p0(ptr %317, i1 false, i1 true, i1 false)
  %call388 = call ptr @__memcpy_chk(ptr noundef %315, ptr noundef @.str.48, i64 noundef %conv387, i64 noundef %318) #9
  %319 = load ptr, ptr %buf.addr, align 8
  %320 = load i32, ptr %written, align 4
  %idxprom389 = sext i32 %320 to i64
  %arrayidx390 = getelementptr inbounds i8, ptr %319, i64 %idxprom389
  store i8 0, ptr %arrayidx390, align 1
  %321 = load i32, ptr %written, align 4
  %322 = load ptr, ptr %buf.addr, align 8
  %idx.ext391 = sext i32 %321 to i64
  %add.ptr392 = getelementptr inbounds i8, ptr %322, i64 %idx.ext391
  store ptr %add.ptr392, ptr %buf.addr, align 8
  br label %if.end393

if.end393:                                        ; preds = %if.then386, %do.body383
  %323 = load i32, ptr %written, align 4
  %324 = load i32, ptr %written_total, align 4
  %add394 = add nsw i32 %324, %323
  store i32 %add394, ptr %written_total, align 4
  br label %do.end395

do.end395:                                        ; preds = %if.end393
  br label %sw.epilog

sw.bb396:                                         ; preds = %for.body
  br label %do.body397

do.body397:                                       ; preds = %sw.bb396
  store i32 6, ptr %written, align 4
  %325 = load ptr, ptr %buf.addr, align 8
  %cmp398 = icmp ne ptr %325, null
  br i1 %cmp398, label %if.then400, label %if.end407

if.then400:                                       ; preds = %do.body397
  %326 = load ptr, ptr %buf.addr, align 8
  %327 = load i32, ptr %written, align 4
  %conv401 = sext i32 %327 to i64
  %328 = load ptr, ptr %buf.addr, align 8
  %329 = call i64 @llvm.objectsize.i64.p0(ptr %328, i1 false, i1 true, i1 false)
  %call402 = call ptr @__memcpy_chk(ptr noundef %326, ptr noundef @.str.49, i64 noundef %conv401, i64 noundef %329) #9
  %330 = load ptr, ptr %buf.addr, align 8
  %331 = load i32, ptr %written, align 4
  %idxprom403 = sext i32 %331 to i64
  %arrayidx404 = getelementptr inbounds i8, ptr %330, i64 %idxprom403
  store i8 0, ptr %arrayidx404, align 1
  %332 = load i32, ptr %written, align 4
  %333 = load ptr, ptr %buf.addr, align 8
  %idx.ext405 = sext i32 %332 to i64
  %add.ptr406 = getelementptr inbounds i8, ptr %333, i64 %idx.ext405
  store ptr %add.ptr406, ptr %buf.addr, align 8
  br label %if.end407

if.end407:                                        ; preds = %if.then400, %do.body397
  %334 = load i32, ptr %written, align 4
  %335 = load i32, ptr %written_total, align 4
  %add408 = add nsw i32 %335, %334
  store i32 %add408, ptr %written_total, align 4
  br label %do.end409

do.end409:                                        ; preds = %if.end407
  br label %sw.epilog

sw.bb410:                                         ; preds = %for.body
  br label %do.body411

do.body411:                                       ; preds = %sw.bb410
  store i32 6, ptr %written, align 4
  %336 = load ptr, ptr %buf.addr, align 8
  %cmp412 = icmp ne ptr %336, null
  br i1 %cmp412, label %if.then414, label %if.end421

if.then414:                                       ; preds = %do.body411
  %337 = load ptr, ptr %buf.addr, align 8
  %338 = load i32, ptr %written, align 4
  %conv415 = sext i32 %338 to i64
  %339 = load ptr, ptr %buf.addr, align 8
  %340 = call i64 @llvm.objectsize.i64.p0(ptr %339, i1 false, i1 true, i1 false)
  %call416 = call ptr @__memcpy_chk(ptr noundef %337, ptr noundef @.str.50, i64 noundef %conv415, i64 noundef %340) #9
  %341 = load ptr, ptr %buf.addr, align 8
  %342 = load i32, ptr %written, align 4
  %idxprom417 = sext i32 %342 to i64
  %arrayidx418 = getelementptr inbounds i8, ptr %341, i64 %idxprom417
  store i8 0, ptr %arrayidx418, align 1
  %343 = load i32, ptr %written, align 4
  %344 = load ptr, ptr %buf.addr, align 8
  %idx.ext419 = sext i32 %343 to i64
  %add.ptr420 = getelementptr inbounds i8, ptr %344, i64 %idx.ext419
  store ptr %add.ptr420, ptr %buf.addr, align 8
  br label %if.end421

if.end421:                                        ; preds = %if.then414, %do.body411
  %345 = load i32, ptr %written, align 4
  %346 = load i32, ptr %written_total, align 4
  %add422 = add nsw i32 %346, %345
  store i32 %add422, ptr %written_total, align 4
  br label %do.end423

do.end423:                                        ; preds = %if.end421
  br label %sw.epilog

sw.bb424:                                         ; preds = %for.body
  br label %do.body425

do.body425:                                       ; preds = %sw.bb424
  store i32 6, ptr %written, align 4
  %347 = load ptr, ptr %buf.addr, align 8
  %cmp426 = icmp ne ptr %347, null
  br i1 %cmp426, label %if.then428, label %if.end435

if.then428:                                       ; preds = %do.body425
  %348 = load ptr, ptr %buf.addr, align 8
  %349 = load i32, ptr %written, align 4
  %conv429 = sext i32 %349 to i64
  %350 = load ptr, ptr %buf.addr, align 8
  %351 = call i64 @llvm.objectsize.i64.p0(ptr %350, i1 false, i1 true, i1 false)
  %call430 = call ptr @__memcpy_chk(ptr noundef %348, ptr noundef @.str.51, i64 noundef %conv429, i64 noundef %351) #9
  %352 = load ptr, ptr %buf.addr, align 8
  %353 = load i32, ptr %written, align 4
  %idxprom431 = sext i32 %353 to i64
  %arrayidx432 = getelementptr inbounds i8, ptr %352, i64 %idxprom431
  store i8 0, ptr %arrayidx432, align 1
  %354 = load i32, ptr %written, align 4
  %355 = load ptr, ptr %buf.addr, align 8
  %idx.ext433 = sext i32 %354 to i64
  %add.ptr434 = getelementptr inbounds i8, ptr %355, i64 %idx.ext433
  store ptr %add.ptr434, ptr %buf.addr, align 8
  br label %if.end435

if.end435:                                        ; preds = %if.then428, %do.body425
  %356 = load i32, ptr %written, align 4
  %357 = load i32, ptr %written_total, align 4
  %add436 = add nsw i32 %357, %356
  store i32 %add436, ptr %written_total, align 4
  br label %do.end437

do.end437:                                        ; preds = %if.end435
  br label %sw.epilog

sw.bb438:                                         ; preds = %for.body
  br label %do.body439

do.body439:                                       ; preds = %sw.bb438
  store i32 6, ptr %written, align 4
  %358 = load ptr, ptr %buf.addr, align 8
  %cmp440 = icmp ne ptr %358, null
  br i1 %cmp440, label %if.then442, label %if.end449

if.then442:                                       ; preds = %do.body439
  %359 = load ptr, ptr %buf.addr, align 8
  %360 = load i32, ptr %written, align 4
  %conv443 = sext i32 %360 to i64
  %361 = load ptr, ptr %buf.addr, align 8
  %362 = call i64 @llvm.objectsize.i64.p0(ptr %361, i1 false, i1 true, i1 false)
  %call444 = call ptr @__memcpy_chk(ptr noundef %359, ptr noundef @.str.52, i64 noundef %conv443, i64 noundef %362) #9
  %363 = load ptr, ptr %buf.addr, align 8
  %364 = load i32, ptr %written, align 4
  %idxprom445 = sext i32 %364 to i64
  %arrayidx446 = getelementptr inbounds i8, ptr %363, i64 %idxprom445
  store i8 0, ptr %arrayidx446, align 1
  %365 = load i32, ptr %written, align 4
  %366 = load ptr, ptr %buf.addr, align 8
  %idx.ext447 = sext i32 %365 to i64
  %add.ptr448 = getelementptr inbounds i8, ptr %366, i64 %idx.ext447
  store ptr %add.ptr448, ptr %buf.addr, align 8
  br label %if.end449

if.end449:                                        ; preds = %if.then442, %do.body439
  %367 = load i32, ptr %written, align 4
  %368 = load i32, ptr %written_total, align 4
  %add450 = add nsw i32 %368, %367
  store i32 %add450, ptr %written_total, align 4
  br label %do.end451

do.end451:                                        ; preds = %if.end449
  br label %sw.epilog

sw.bb452:                                         ; preds = %for.body
  br label %do.body453

do.body453:                                       ; preds = %sw.bb452
  store i32 6, ptr %written, align 4
  %369 = load ptr, ptr %buf.addr, align 8
  %cmp454 = icmp ne ptr %369, null
  br i1 %cmp454, label %if.then456, label %if.end463

if.then456:                                       ; preds = %do.body453
  %370 = load ptr, ptr %buf.addr, align 8
  %371 = load i32, ptr %written, align 4
  %conv457 = sext i32 %371 to i64
  %372 = load ptr, ptr %buf.addr, align 8
  %373 = call i64 @llvm.objectsize.i64.p0(ptr %372, i1 false, i1 true, i1 false)
  %call458 = call ptr @__memcpy_chk(ptr noundef %370, ptr noundef @.str.53, i64 noundef %conv457, i64 noundef %373) #9
  %374 = load ptr, ptr %buf.addr, align 8
  %375 = load i32, ptr %written, align 4
  %idxprom459 = sext i32 %375 to i64
  %arrayidx460 = getelementptr inbounds i8, ptr %374, i64 %idxprom459
  store i8 0, ptr %arrayidx460, align 1
  %376 = load i32, ptr %written, align 4
  %377 = load ptr, ptr %buf.addr, align 8
  %idx.ext461 = sext i32 %376 to i64
  %add.ptr462 = getelementptr inbounds i8, ptr %377, i64 %idx.ext461
  store ptr %add.ptr462, ptr %buf.addr, align 8
  br label %if.end463

if.end463:                                        ; preds = %if.then456, %do.body453
  %378 = load i32, ptr %written, align 4
  %379 = load i32, ptr %written_total, align 4
  %add464 = add nsw i32 %379, %378
  store i32 %add464, ptr %written_total, align 4
  br label %do.end465

do.end465:                                        ; preds = %if.end463
  br label %sw.epilog

sw.bb466:                                         ; preds = %for.body
  br label %do.body467

do.body467:                                       ; preds = %sw.bb466
  store i32 6, ptr %written, align 4
  %380 = load ptr, ptr %buf.addr, align 8
  %cmp468 = icmp ne ptr %380, null
  br i1 %cmp468, label %if.then470, label %if.end477

if.then470:                                       ; preds = %do.body467
  %381 = load ptr, ptr %buf.addr, align 8
  %382 = load i32, ptr %written, align 4
  %conv471 = sext i32 %382 to i64
  %383 = load ptr, ptr %buf.addr, align 8
  %384 = call i64 @llvm.objectsize.i64.p0(ptr %383, i1 false, i1 true, i1 false)
  %call472 = call ptr @__memcpy_chk(ptr noundef %381, ptr noundef @.str.54, i64 noundef %conv471, i64 noundef %384) #9
  %385 = load ptr, ptr %buf.addr, align 8
  %386 = load i32, ptr %written, align 4
  %idxprom473 = sext i32 %386 to i64
  %arrayidx474 = getelementptr inbounds i8, ptr %385, i64 %idxprom473
  store i8 0, ptr %arrayidx474, align 1
  %387 = load i32, ptr %written, align 4
  %388 = load ptr, ptr %buf.addr, align 8
  %idx.ext475 = sext i32 %387 to i64
  %add.ptr476 = getelementptr inbounds i8, ptr %388, i64 %idx.ext475
  store ptr %add.ptr476, ptr %buf.addr, align 8
  br label %if.end477

if.end477:                                        ; preds = %if.then470, %do.body467
  %389 = load i32, ptr %written, align 4
  %390 = load i32, ptr %written_total, align 4
  %add478 = add nsw i32 %390, %389
  store i32 %add478, ptr %written_total, align 4
  br label %do.end479

do.end479:                                        ; preds = %if.end477
  br label %sw.epilog

sw.bb480:                                         ; preds = %for.body
  %391 = load i32, ptr @parson_escape_slashes, align 4
  %tobool = icmp ne i32 %391, 0
  br i1 %tobool, label %if.then481, label %if.else

if.then481:                                       ; preds = %sw.bb480
  br label %do.body482

do.body482:                                       ; preds = %if.then481
  store i32 2, ptr %written, align 4
  %392 = load ptr, ptr %buf.addr, align 8
  %cmp483 = icmp ne ptr %392, null
  br i1 %cmp483, label %if.then485, label %if.end492

if.then485:                                       ; preds = %do.body482
  %393 = load ptr, ptr %buf.addr, align 8
  %394 = load i32, ptr %written, align 4
  %conv486 = sext i32 %394 to i64
  %395 = load ptr, ptr %buf.addr, align 8
  %396 = call i64 @llvm.objectsize.i64.p0(ptr %395, i1 false, i1 true, i1 false)
  %call487 = call ptr @__memcpy_chk(ptr noundef %393, ptr noundef @.str.55, i64 noundef %conv486, i64 noundef %396) #9
  %397 = load ptr, ptr %buf.addr, align 8
  %398 = load i32, ptr %written, align 4
  %idxprom488 = sext i32 %398 to i64
  %arrayidx489 = getelementptr inbounds i8, ptr %397, i64 %idxprom488
  store i8 0, ptr %arrayidx489, align 1
  %399 = load i32, ptr %written, align 4
  %400 = load ptr, ptr %buf.addr, align 8
  %idx.ext490 = sext i32 %399 to i64
  %add.ptr491 = getelementptr inbounds i8, ptr %400, i64 %idx.ext490
  store ptr %add.ptr491, ptr %buf.addr, align 8
  br label %if.end492

if.end492:                                        ; preds = %if.then485, %do.body482
  %401 = load i32, ptr %written, align 4
  %402 = load i32, ptr %written_total, align 4
  %add493 = add nsw i32 %402, %401
  store i32 %add493, ptr %written_total, align 4
  br label %do.end494

do.end494:                                        ; preds = %if.end492
  br label %if.end508

if.else:                                          ; preds = %sw.bb480
  br label %do.body495

do.body495:                                       ; preds = %if.else
  store i32 1, ptr %written, align 4
  %403 = load ptr, ptr %buf.addr, align 8
  %cmp496 = icmp ne ptr %403, null
  br i1 %cmp496, label %if.then498, label %if.end505

if.then498:                                       ; preds = %do.body495
  %404 = load ptr, ptr %buf.addr, align 8
  %405 = load i32, ptr %written, align 4
  %conv499 = sext i32 %405 to i64
  %406 = load ptr, ptr %buf.addr, align 8
  %407 = call i64 @llvm.objectsize.i64.p0(ptr %406, i1 false, i1 true, i1 false)
  %call500 = call ptr @__memcpy_chk(ptr noundef %404, ptr noundef @.str.56, i64 noundef %conv499, i64 noundef %407) #9
  %408 = load ptr, ptr %buf.addr, align 8
  %409 = load i32, ptr %written, align 4
  %idxprom501 = sext i32 %409 to i64
  %arrayidx502 = getelementptr inbounds i8, ptr %408, i64 %idxprom501
  store i8 0, ptr %arrayidx502, align 1
  %410 = load i32, ptr %written, align 4
  %411 = load ptr, ptr %buf.addr, align 8
  %idx.ext503 = sext i32 %410 to i64
  %add.ptr504 = getelementptr inbounds i8, ptr %411, i64 %idx.ext503
  store ptr %add.ptr504, ptr %buf.addr, align 8
  br label %if.end505

if.end505:                                        ; preds = %if.then498, %do.body495
  %412 = load i32, ptr %written, align 4
  %413 = load i32, ptr %written_total, align 4
  %add506 = add nsw i32 %413, %412
  store i32 %add506, ptr %written_total, align 4
  br label %do.end507

do.end507:                                        ; preds = %if.end505
  br label %if.end508

if.end508:                                        ; preds = %do.end507, %do.end494
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  %414 = load ptr, ptr %buf.addr, align 8
  %cmp509 = icmp ne ptr %414, null
  br i1 %cmp509, label %if.then511, label %if.end514

if.then511:                                       ; preds = %sw.default
  %415 = load i8, ptr %c, align 1
  %416 = load ptr, ptr %buf.addr, align 8
  %arrayidx512 = getelementptr inbounds i8, ptr %416, i64 0
  store i8 %415, ptr %arrayidx512, align 1
  %417 = load ptr, ptr %buf.addr, align 8
  %add.ptr513 = getelementptr inbounds i8, ptr %417, i64 1
  store ptr %add.ptr513, ptr %buf.addr, align 8
  br label %if.end514

if.end514:                                        ; preds = %if.then511, %sw.default
  %418 = load i32, ptr %written_total, align 4
  %add515 = add nsw i32 %418, 1
  store i32 %add515, ptr %written_total, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end514, %if.end508, %do.end479, %do.end465, %do.end451, %do.end437, %do.end423, %do.end409, %do.end395, %do.end381, %do.end367, %do.end353, %do.end339, %do.end325, %do.end311, %do.end297, %do.end283, %do.end269, %do.end255, %do.end241, %do.end227, %do.end213, %do.end199, %do.end185, %do.end171, %do.end157, %do.end143, %do.end129, %do.end115, %do.end101, %do.end87, %do.end73, %do.end59, %do.end45, %do.end31, %do.end17
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %419 = load i64, ptr %i, align 8
  %inc = add i64 %419, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !48

for.end:                                          ; preds = %for.cond
  br label %do.body516

do.body516:                                       ; preds = %for.end
  store i32 1, ptr %written, align 4
  %420 = load ptr, ptr %buf.addr, align 8
  %cmp517 = icmp ne ptr %420, null
  br i1 %cmp517, label %if.then519, label %if.end526

if.then519:                                       ; preds = %do.body516
  %421 = load ptr, ptr %buf.addr, align 8
  %422 = load i32, ptr %written, align 4
  %conv520 = sext i32 %422 to i64
  %423 = load ptr, ptr %buf.addr, align 8
  %424 = call i64 @llvm.objectsize.i64.p0(ptr %423, i1 false, i1 true, i1 false)
  %call521 = call ptr @__memcpy_chk(ptr noundef %421, ptr noundef @.str.20, i64 noundef %conv520, i64 noundef %424) #9
  %425 = load ptr, ptr %buf.addr, align 8
  %426 = load i32, ptr %written, align 4
  %idxprom522 = sext i32 %426 to i64
  %arrayidx523 = getelementptr inbounds i8, ptr %425, i64 %idxprom522
  store i8 0, ptr %arrayidx523, align 1
  %427 = load i32, ptr %written, align 4
  %428 = load ptr, ptr %buf.addr, align 8
  %idx.ext524 = sext i32 %427 to i64
  %add.ptr525 = getelementptr inbounds i8, ptr %428, i64 %idx.ext524
  store ptr %add.ptr525, ptr %buf.addr, align 8
  br label %if.end526

if.end526:                                        ; preds = %if.then519, %do.body516
  %429 = load i32, ptr %written, align 4
  %430 = load i32, ptr %written_total, align 4
  %add527 = add nsw i32 %430, %429
  store i32 %add527, ptr %written_total, align 4
  br label %do.end528

do.end528:                                        ; preds = %if.end526
  %431 = load i32, ptr %written_total, align 4
  ret i32 %431
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @parson_sprintf(ptr noundef %s, ptr noundef %format, ...) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %format.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %args = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  store ptr %format, ptr %format.addr, align 8
  call void @llvm.va_start(ptr %args)
  %0 = load ptr, ptr %s.addr, align 8
  %1 = load ptr, ptr %s.addr, align 8
  %2 = call i64 @llvm.objectsize.i64.p0(ptr %1, i1 false, i1 true, i1 false)
  %3 = load ptr, ptr %format.addr, align 8
  %4 = load ptr, ptr %args, align 8
  %call = call i32 @__vsprintf_chk(ptr noundef %0, i32 noundef 0, i64 noundef %2, ptr noundef %3, ptr noundef %4)
  store i32 %call, ptr %result, align 4
  call void @llvm.va_end(ptr %args)
  %5 = load i32, ptr %result, align 4
  ret i32 %5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #6

declare i32 @__vsprintf_chk(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #6

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { argmemonly nocallback nofree nounwind willreturn }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind }

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
