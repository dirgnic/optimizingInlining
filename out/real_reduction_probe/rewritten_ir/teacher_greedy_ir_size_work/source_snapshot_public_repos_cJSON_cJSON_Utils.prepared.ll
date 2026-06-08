; ModuleID = './source_snapshot/public_repos/cJSON/cJSON_Utils.c'
source_filename = "./source_snapshot/public_repos/cJSON/cJSON_Utils.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.cJSON = type { ptr, ptr, ptr, i32, ptr, i32, double, ptr }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"/%lu%s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@apply_patch.invalid = internal constant %struct.cJSON zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"op\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"replace\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"move\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%s/\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"%s/%lu\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1

; Function Attrs: nounwind ssp uwtable
define ptr @cJSONUtils_FindPointerFromObjectTo(ptr noundef %object, ptr noundef %target) #0 {
entry:
  %retval = alloca ptr, align 8
  %object.addr = alloca ptr, align 8
  %target.addr = alloca ptr, align 8
  %child_index = alloca i64, align 8
  %current_child = alloca ptr, align 8
  %target_pointer = alloca ptr, align 8
  %full_pointer = alloca ptr, align 8
  %full_pointer22 = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %target, ptr %target.addr, align 8
  store i64 0, ptr %child_index, align 8
  store ptr null, ptr %current_child, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %target.addr, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %object.addr, align 8
  %3 = load ptr, ptr %target.addr, align 8
  %cmp2 = icmp eq ptr %2, %3
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %call = call ptr @cJSONUtils_strdup(ptr noundef @.str)
  store ptr %call, ptr %retval, align 8
  br label %return

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %object.addr, align 8
  %child = getelementptr inbounds %struct.cJSON, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %child, align 8
  store ptr %5, ptr %current_child, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end4
  %6 = load ptr, ptr %current_child, align 8
  %cmp5 = icmp ne ptr %6, null
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %current_child, align 8
  %8 = load ptr, ptr %target.addr, align 8
  %call6 = call ptr @cJSONUtils_FindPointerFromObjectTo(ptr noundef %7, ptr noundef %8)
  store ptr %call6, ptr %target_pointer, align 8
  %9 = load ptr, ptr %target_pointer, align 8
  %cmp7 = icmp ne ptr %9, null
  br i1 %cmp7, label %if.then8, label %if.end31

if.then8:                                         ; preds = %for.body
  %10 = load ptr, ptr %object.addr, align 8
  %call9 = call i32 @cJSON_IsArray(ptr noundef %10)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.then10, label %if.end18

if.then10:                                        ; preds = %if.then8
  %11 = load ptr, ptr %target_pointer, align 8
  %call11 = call i64 @strlen(ptr noundef %11)
  %add = add i64 %call11, 20
  %add12 = add i64 %add, 2
  %call13 = call ptr @cJSON_malloc(i64 noundef %add12)
  store ptr %call13, ptr %full_pointer, align 8
  %12 = load i64, ptr %child_index, align 8
  %cmp14 = icmp ugt i64 %12, -1
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.then10
  %13 = load ptr, ptr %target_pointer, align 8
  call void @cJSON_free(ptr noundef %13)
  %14 = load ptr, ptr %full_pointer, align 8
  call void @cJSON_free(ptr noundef %14)
  store ptr null, ptr %retval, align 8
  br label %return

if.end16:                                         ; preds = %if.then10
  %15 = load ptr, ptr %full_pointer, align 8
  %16 = load ptr, ptr %full_pointer, align 8
  %17 = call i64 @llvm.objectsize.i64.p0(ptr %16, i1 false, i1 true, i1 false)
  %18 = load i64, ptr %child_index, align 8
  %19 = load ptr, ptr %target_pointer, align 8
  %call17 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %15, i32 noundef 0, i64 noundef %17, ptr noundef @.str.1, i64 noundef %18, ptr noundef %19)
  %20 = load ptr, ptr %target_pointer, align 8
  call void @cJSON_free(ptr noundef %20)
  %21 = load ptr, ptr %full_pointer, align 8
  store ptr %21, ptr %retval, align 8
  br label %return

if.end18:                                         ; preds = %if.then8
  %22 = load ptr, ptr %object.addr, align 8
  %call19 = call i32 @cJSON_IsObject(ptr noundef %22)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then21, label %if.end30

if.then21:                                        ; preds = %if.end18
  %23 = load ptr, ptr %target_pointer, align 8
  %call23 = call i64 @strlen(ptr noundef %23)
  %24 = load ptr, ptr %current_child, align 8
  %string = getelementptr inbounds %struct.cJSON, ptr %24, i32 0, i32 7
  %25 = load ptr, ptr %string, align 8
  %call24 = call i64 @pointer_encoded_length(ptr noundef %25)
  %add25 = add i64 %call23, %call24
  %add26 = add i64 %add25, 2
  %call27 = call ptr @cJSON_malloc(i64 noundef %add26)
  store ptr %call27, ptr %full_pointer22, align 8
  %26 = load ptr, ptr %full_pointer22, align 8
  %arrayidx = getelementptr inbounds i8, ptr %26, i64 0
  store i8 47, ptr %arrayidx, align 1
  %27 = load ptr, ptr %full_pointer22, align 8
  %add.ptr = getelementptr inbounds i8, ptr %27, i64 1
  %28 = load ptr, ptr %current_child, align 8
  %string28 = getelementptr inbounds %struct.cJSON, ptr %28, i32 0, i32 7
  %29 = load ptr, ptr %string28, align 8
  call void @encode_string_as_pointer(ptr noundef %add.ptr, ptr noundef %29)
  %30 = load ptr, ptr %full_pointer22, align 8
  %31 = load ptr, ptr %target_pointer, align 8
  %32 = load ptr, ptr %full_pointer22, align 8
  %33 = call i64 @llvm.objectsize.i64.p0(ptr %32, i1 false, i1 true, i1 false)
  %call29 = call ptr @__strcat_chk(ptr noundef %30, ptr noundef %31, i64 noundef %33) #6
  %34 = load ptr, ptr %target_pointer, align 8
  call void @cJSON_free(ptr noundef %34)
  %35 = load ptr, ptr %full_pointer22, align 8
  store ptr %35, ptr %retval, align 8
  br label %return

if.end30:                                         ; preds = %if.end18
  %36 = load ptr, ptr %target_pointer, align 8
  call void @cJSON_free(ptr noundef %36)
  store ptr null, ptr %retval, align 8
  br label %return

if.end31:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end31
  %37 = load ptr, ptr %current_child, align 8
  %next = getelementptr inbounds %struct.cJSON, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %next, align 8
  store ptr %38, ptr %current_child, align 8
  %39 = load i64, ptr %child_index, align 8
  %inc = add i64 %39, 1
  store i64 %inc, ptr %child_index, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.end30, %if.then21, %if.end16, %if.then15, %if.then3, %if.then
  %40 = load ptr, ptr %retval, align 8
  ret ptr %40
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @cJSONUtils_strdup(ptr noundef %string) #0 {
entry:
  %retval = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  %length = alloca i64, align 8
  %copy = alloca ptr, align 8
  store ptr %string, ptr %string.addr, align 8
  store i64 0, ptr %length, align 8
  store ptr null, ptr %copy, align 8
  %0 = load ptr, ptr %string.addr, align 8
  %call = call i64 @strlen(ptr noundef %0)
  %add = add i64 %call, 1
  store i64 %add, ptr %length, align 8
  %1 = load i64, ptr %length, align 8
  %call1 = call ptr @cJSON_malloc(i64 noundef %1)
  store ptr %call1, ptr %copy, align 8
  %2 = load ptr, ptr %copy, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %copy, align 8
  %4 = load ptr, ptr %string.addr, align 8
  %5 = load i64, ptr %length, align 8
  %6 = load ptr, ptr %copy, align 8
  %7 = call i64 @llvm.objectsize.i64.p0(ptr %6, i1 false, i1 true, i1 false)
  %call2 = call ptr @__memcpy_chk(ptr noundef %3, ptr noundef %4, i64 noundef %5, i64 noundef %7) #6
  %8 = load ptr, ptr %copy, align 8
  store ptr %8, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load ptr, ptr %retval, align 8
  ret ptr %9
}

declare i32 @cJSON_IsArray(ptr noundef) #1

declare ptr @cJSON_malloc(i64 noundef) #1

declare i64 @strlen(ptr noundef) #1

declare void @cJSON_free(ptr noundef) #1

declare i32 @__sprintf_chk(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ...) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #2

declare i32 @cJSON_IsObject(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i64 @pointer_encoded_length(ptr noundef %string) #0 {
entry:
  %string.addr = alloca ptr, align 8
  %length = alloca i64, align 8
  store ptr %string, ptr %string.addr, align 8
  store i64 0, ptr %length, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %string.addr, align 8
  %1 = load i8, ptr %0, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %string.addr, align 8
  %3 = load i8, ptr %2, align 1
  %conv2 = zext i8 %3 to i32
  %cmp3 = icmp eq i32 %conv2, 126
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %4 = load ptr, ptr %string.addr, align 8
  %5 = load i8, ptr %4, align 1
  %conv5 = zext i8 %5 to i32
  %cmp6 = icmp eq i32 %conv5, 47
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %6 = load i64, ptr %length, align 8
  %inc = add i64 %6, 1
  store i64 %inc, ptr %length, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load ptr, ptr %string.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %7, i32 1
  store ptr %incdec.ptr, ptr %string.addr, align 8
  %8 = load i64, ptr %length, align 8
  %inc8 = add i64 %8, 1
  store i64 %inc8, ptr %length, align 8
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %9 = load i64, ptr %length, align 8
  ret i64 %9
}

; Function Attrs: nounwind ssp uwtable
define internal void @encode_string_as_pointer(ptr noundef %destination, ptr noundef %source) #0 {
entry:
  %destination.addr = alloca ptr, align 8
  %source.addr = alloca ptr, align 8
  store ptr %destination, ptr %destination.addr, align 8
  store ptr %source, ptr %source.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %source.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %source.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %2, i64 0
  %3 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %3 to i32
  %cmp4 = icmp eq i32 %conv3, 47
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %4 = load ptr, ptr %destination.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %4, i64 0
  store i8 126, ptr %arrayidx6, align 1
  %5 = load ptr, ptr %destination.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %5, i64 1
  store i8 49, ptr %arrayidx7, align 1
  %6 = load ptr, ptr %destination.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i32 1
  store ptr %incdec.ptr, ptr %destination.addr, align 8
  br label %if.end19

if.else:                                          ; preds = %for.body
  %7 = load ptr, ptr %source.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %7, i64 0
  %8 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %8 to i32
  %cmp10 = icmp eq i32 %conv9, 126
  br i1 %cmp10, label %if.then12, label %if.else16

if.then12:                                        ; preds = %if.else
  %9 = load ptr, ptr %destination.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %9, i64 0
  store i8 126, ptr %arrayidx13, align 1
  %10 = load ptr, ptr %destination.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %10, i64 1
  store i8 48, ptr %arrayidx14, align 1
  %11 = load ptr, ptr %destination.addr, align 8
  %incdec.ptr15 = getelementptr inbounds i8, ptr %11, i32 1
  store ptr %incdec.ptr15, ptr %destination.addr, align 8
  br label %if.end

if.else16:                                        ; preds = %if.else
  %12 = load ptr, ptr %source.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, ptr %12, i64 0
  %13 = load i8, ptr %arrayidx17, align 1
  %14 = load ptr, ptr %destination.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, ptr %14, i64 0
  store i8 %13, ptr %arrayidx18, align 1
  br label %if.end

if.end:                                           ; preds = %if.else16, %if.then12
  br label %if.end19

if.end19:                                         ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end19
  %15 = load ptr, ptr %source.addr, align 8
  %incdec.ptr20 = getelementptr inbounds i8, ptr %15, i32 1
  store ptr %incdec.ptr20, ptr %source.addr, align 8
  %16 = load ptr, ptr %destination.addr, align 8
  %incdec.ptr21 = getelementptr inbounds i8, ptr %16, i32 1
  store ptr %incdec.ptr21, ptr %destination.addr, align 8
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %17 = load ptr, ptr %destination.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, ptr %17, i64 0
  store i8 0, ptr %arrayidx22, align 1
  ret void
}

; Function Attrs: nounwind
declare ptr @__strcat_chk(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nounwind ssp uwtable
define ptr @cJSONUtils_GetPointer(ptr noundef %object, ptr noundef %pointer) #0 {
entry:
  %object.addr = alloca ptr, align 8
  %pointer.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %pointer, ptr %pointer.addr, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %1 = load ptr, ptr %pointer.addr, align 8
  %call = call ptr @get_item_from_pointer(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @get_item_from_pointer(ptr noundef %object, ptr noundef %pointer, i32 noundef %case_sensitive) #0 {
entry:
  %retval = alloca ptr, align 8
  %object.addr = alloca ptr, align 8
  %pointer.addr = alloca ptr, align 8
  %case_sensitive.addr = alloca i32, align 4
  %current_element = alloca ptr, align 8
  %index = alloca i64, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %pointer, ptr %pointer.addr, align 8
  store i32 %case_sensitive, ptr %case_sensitive.addr, align 4
  %0 = load ptr, ptr %object.addr, align 8
  store ptr %0, ptr %current_element, align 8
  %1 = load ptr, ptr %pointer.addr, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.end38, %if.end
  %2 = load ptr, ptr %pointer.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 0
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp1 = icmp eq i32 %conv, 47
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load ptr, ptr %current_element, align 8
  %cmp3 = icmp ne ptr %4, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %5, label %while.body, label %while.end39

while.body:                                       ; preds = %land.end
  %6 = load ptr, ptr %pointer.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i32 1
  store ptr %incdec.ptr, ptr %pointer.addr, align 8
  %7 = load ptr, ptr %current_element, align 8
  %call = call i32 @cJSON_IsArray(ptr noundef %7)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then5, label %if.else

if.then5:                                         ; preds = %while.body
  store i64 0, ptr %index, align 8
  %8 = load ptr, ptr %pointer.addr, align 8
  %call6 = call i32 @decode_array_index_from_pointer(ptr noundef %8, ptr noundef %index)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.then5
  store ptr null, ptr %retval, align 8
  br label %return

if.end9:                                          ; preds = %if.then5
  %9 = load ptr, ptr %current_element, align 8
  %10 = load i64, ptr %index, align 8
  %call10 = call ptr @get_array_item(ptr noundef %9, i64 noundef %10)
  store ptr %call10, ptr %current_element, align 8
  br label %if.end24

if.else:                                          ; preds = %while.body
  %11 = load ptr, ptr %current_element, align 8
  %call11 = call i32 @cJSON_IsObject(ptr noundef %11)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then13, label %if.else22

if.then13:                                        ; preds = %if.else
  %12 = load ptr, ptr %current_element, align 8
  %child = getelementptr inbounds %struct.cJSON, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %child, align 8
  store ptr %13, ptr %current_element, align 8
  br label %while.cond14

while.cond14:                                     ; preds = %while.body21, %if.then13
  %14 = load ptr, ptr %current_element, align 8
  %cmp15 = icmp ne ptr %14, null
  br i1 %cmp15, label %land.rhs17, label %land.end20

land.rhs17:                                       ; preds = %while.cond14
  %15 = load ptr, ptr %current_element, align 8
  %string = getelementptr inbounds %struct.cJSON, ptr %15, i32 0, i32 7
  %16 = load ptr, ptr %string, align 8
  %17 = load ptr, ptr %pointer.addr, align 8
  %18 = load i32, ptr %case_sensitive.addr, align 4
  %call18 = call i32 @compare_pointers(ptr noundef %16, ptr noundef %17, i32 noundef %18)
  %tobool19 = icmp ne i32 %call18, 0
  %lnot = xor i1 %tobool19, true
  br label %land.end20

land.end20:                                       ; preds = %land.rhs17, %while.cond14
  %19 = phi i1 [ false, %while.cond14 ], [ %lnot, %land.rhs17 ]
  br i1 %19, label %while.body21, label %while.end

while.body21:                                     ; preds = %land.end20
  %20 = load ptr, ptr %current_element, align 8
  %next = getelementptr inbounds %struct.cJSON, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %next, align 8
  store ptr %21, ptr %current_element, align 8
  br label %while.cond14, !llvm.loop !10

while.end:                                        ; preds = %land.end20
  br label %if.end23

if.else22:                                        ; preds = %if.else
  store ptr null, ptr %retval, align 8
  br label %return

if.end23:                                         ; preds = %while.end
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.end9
  br label %while.cond25

while.cond25:                                     ; preds = %while.body36, %if.end24
  %22 = load ptr, ptr %pointer.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, ptr %22, i64 0
  %23 = load i8, ptr %arrayidx26, align 1
  %conv27 = sext i8 %23 to i32
  %cmp28 = icmp ne i32 %conv27, 0
  br i1 %cmp28, label %land.rhs30, label %land.end35

land.rhs30:                                       ; preds = %while.cond25
  %24 = load ptr, ptr %pointer.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, ptr %24, i64 0
  %25 = load i8, ptr %arrayidx31, align 1
  %conv32 = sext i8 %25 to i32
  %cmp33 = icmp ne i32 %conv32, 47
  br label %land.end35

land.end35:                                       ; preds = %land.rhs30, %while.cond25
  %26 = phi i1 [ false, %while.cond25 ], [ %cmp33, %land.rhs30 ]
  br i1 %26, label %while.body36, label %while.end38

while.body36:                                     ; preds = %land.end35
  %27 = load ptr, ptr %pointer.addr, align 8
  %incdec.ptr37 = getelementptr inbounds i8, ptr %27, i32 1
  store ptr %incdec.ptr37, ptr %pointer.addr, align 8
  br label %while.cond25, !llvm.loop !11

while.end38:                                      ; preds = %land.end35
  br label %while.cond, !llvm.loop !12

while.end39:                                      ; preds = %land.end
  %28 = load ptr, ptr %current_element, align 8
  store ptr %28, ptr %retval, align 8
  br label %return

return:                                           ; preds = %while.end39, %if.else22, %if.then8, %if.then
  %29 = load ptr, ptr %retval, align 8
  ret ptr %29
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSONUtils_GetPointerCaseSensitive(ptr noundef %object, ptr noundef %pointer) #0 {
entry:
  %object.addr = alloca ptr, align 8
  %pointer.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %pointer, ptr %pointer.addr, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %1 = load ptr, ptr %pointer.addr, align 8
  %call = call ptr @get_item_from_pointer(ptr noundef %0, ptr noundef %1, i32 noundef 1)
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define i32 @cJSONUtils_ApplyPatches(ptr noundef %object, ptr noundef %patches) #0 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca ptr, align 8
  %patches.addr = alloca ptr, align 8
  %current_patch = alloca ptr, align 8
  %status = alloca i32, align 4
  store ptr %object, ptr %object.addr, align 8
  store ptr %patches, ptr %patches.addr, align 8
  store ptr null, ptr %current_patch, align 8
  store i32 0, ptr %status, align 4
  %0 = load ptr, ptr %patches.addr, align 8
  %call = call i32 @cJSON_IsArray(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %patches.addr, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  %2 = load ptr, ptr %patches.addr, align 8
  %child = getelementptr inbounds %struct.cJSON, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %child, align 8
  store ptr %3, ptr %current_patch, align 8
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end7, %if.end2
  %4 = load ptr, ptr %current_patch, align 8
  %cmp3 = icmp ne ptr %4, null
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %object.addr, align 8
  %6 = load ptr, ptr %current_patch, align 8
  %call4 = call i32 @apply_patch(ptr noundef %5, ptr noundef %6, i32 noundef 0)
  store i32 %call4, ptr %status, align 4
  %7 = load i32, ptr %status, align 4
  %cmp5 = icmp ne i32 %7, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %while.body
  %8 = load i32, ptr %status, align 4
  store i32 %8, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %while.body
  %9 = load ptr, ptr %current_patch, align 8
  %next = getelementptr inbounds %struct.cJSON, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %next, align 8
  store ptr %10, ptr %current_patch, align 8
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then6, %if.then
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @apply_patch(ptr noundef %object, ptr noundef %patch, i32 noundef %case_sensitive) #0 {
entry:
  %object.addr = alloca ptr, align 8
  %patch.addr = alloca ptr, align 8
  %case_sensitive.addr = alloca i32, align 4
  %path = alloca ptr, align 8
  %value = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %opcode = alloca i32, align 4
  %parent_pointer = alloca ptr, align 8
  %child_pointer = alloca ptr, align 8
  %status = alloca i32, align 4
  %byval-temp = alloca %struct.cJSON, align 8
  %byval-temp35 = alloca %struct.cJSON, align 8
  %old_item = alloca ptr, align 8
  %from = alloca ptr, align 8
  %index = alloca i64, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %patch, ptr %patch.addr, align 8
  store i32 %case_sensitive, ptr %case_sensitive.addr, align 4
  store ptr null, ptr %path, align 8
  store ptr null, ptr %value, align 8
  store ptr null, ptr %parent, align 8
  store i32 0, ptr %opcode, align 4
  store ptr null, ptr %parent_pointer, align 8
  store ptr null, ptr %child_pointer, align 8
  store i32 0, ptr %status, align 4
  %0 = load ptr, ptr %patch.addr, align 8
  %1 = load i32, ptr %case_sensitive.addr, align 4
  %call = call ptr @get_object_item(ptr noundef %0, ptr noundef @.str.2, i32 noundef %1)
  store ptr %call, ptr %path, align 8
  %2 = load ptr, ptr %path, align 8
  %call1 = call i32 @cJSON_IsString(ptr noundef %2)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 2, ptr %status, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %patch.addr, align 8
  %4 = load i32, ptr %case_sensitive.addr, align 4
  %call2 = call i32 @decode_patch_operation(ptr noundef %3, i32 noundef %4)
  store i32 %call2, ptr %opcode, align 4
  %5 = load i32, ptr %opcode, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  store i32 3, ptr %status, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  %6 = load i32, ptr %opcode, align 4
  %cmp4 = icmp eq i32 %6, 6
  br i1 %cmp4, label %if.then5, label %if.end10

if.then5:                                         ; preds = %if.else
  %7 = load ptr, ptr %object.addr, align 8
  %8 = load ptr, ptr %path, align 8
  %valuestring = getelementptr inbounds %struct.cJSON, ptr %8, i32 0, i32 4
  %9 = load ptr, ptr %valuestring, align 8
  %10 = load i32, ptr %case_sensitive.addr, align 4
  %call6 = call ptr @get_item_from_pointer(ptr noundef %7, ptr noundef %9, i32 noundef %10)
  %11 = load ptr, ptr %patch.addr, align 8
  %12 = load i32, ptr %case_sensitive.addr, align 4
  %call7 = call ptr @get_object_item(ptr noundef %11, ptr noundef @.str.3, i32 noundef %12)
  %13 = load i32, ptr %case_sensitive.addr, align 4
  %call8 = call i32 @compare_json(ptr noundef %call6, ptr noundef %call7, i32 noundef %13)
  %tobool9 = icmp ne i32 %call8, 0
  %lnot = xor i1 %tobool9, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, ptr %status, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.else
  br label %if.end11

if.end11:                                         ; preds = %if.end10
  %14 = load ptr, ptr %path, align 8
  %valuestring12 = getelementptr inbounds %struct.cJSON, ptr %14, i32 0, i32 4
  %15 = load ptr, ptr %valuestring12, align 8
  %arrayidx = getelementptr inbounds i8, ptr %15, i64 0
  %16 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %16 to i32
  %cmp13 = icmp eq i32 %conv, 0
  br i1 %cmp13, label %if.then15, label %if.end43

if.then15:                                        ; preds = %if.end11
  %17 = load i32, ptr %opcode, align 4
  %cmp16 = icmp eq i32 %17, 2
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.then15
  %18 = load ptr, ptr %object.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %byval-temp, ptr align 8 @apply_patch.invalid, i64 64, i1 false)
  call void @overwrite_item(ptr noundef %18, ptr noundef %byval-temp)
  store i32 0, ptr %status, align 4
  br label %cleanup

if.end19:                                         ; preds = %if.then15
  %19 = load i32, ptr %opcode, align 4
  %cmp20 = icmp eq i32 %19, 3
  br i1 %cmp20, label %if.then24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end19
  %20 = load i32, ptr %opcode, align 4
  %cmp22 = icmp eq i32 %20, 1
  br i1 %cmp22, label %if.then24, label %if.end42

if.then24:                                        ; preds = %lor.lhs.false, %if.end19
  %21 = load ptr, ptr %patch.addr, align 8
  %22 = load i32, ptr %case_sensitive.addr, align 4
  %call25 = call ptr @get_object_item(ptr noundef %21, ptr noundef @.str.3, i32 noundef %22)
  store ptr %call25, ptr %value, align 8
  %23 = load ptr, ptr %value, align 8
  %cmp26 = icmp eq ptr %23, null
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.then24
  store i32 7, ptr %status, align 4
  br label %cleanup

if.end29:                                         ; preds = %if.then24
  %24 = load ptr, ptr %value, align 8
  %call30 = call ptr @cJSON_Duplicate(ptr noundef %24, i32 noundef 1)
  store ptr %call30, ptr %value, align 8
  %25 = load ptr, ptr %value, align 8
  %cmp31 = icmp eq ptr %25, null
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end29
  store i32 8, ptr %status, align 4
  br label %cleanup

if.end34:                                         ; preds = %if.end29
  %26 = load ptr, ptr %object.addr, align 8
  %27 = load ptr, ptr %value, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %byval-temp35, ptr align 8 %27, i64 64, i1 false)
  call void @pc_inline_source_snapshot_public_repos_cJSON_cJSON_Utils_0(ptr noundef %26, ptr noundef %byval-temp35)
  %28 = load ptr, ptr %value, align 8
  call void @cJSON_free(ptr noundef %28)
  store ptr null, ptr %value, align 8
  %29 = load ptr, ptr %object.addr, align 8
  %string = getelementptr inbounds %struct.cJSON, ptr %29, i32 0, i32 7
  %30 = load ptr, ptr %string, align 8
  %cmp36 = icmp ne ptr %30, null
  br i1 %cmp36, label %if.then38, label %if.end41

if.then38:                                        ; preds = %if.end34
  %31 = load ptr, ptr %object.addr, align 8
  %string39 = getelementptr inbounds %struct.cJSON, ptr %31, i32 0, i32 7
  %32 = load ptr, ptr %string39, align 8
  call void @cJSON_free(ptr noundef %32)
  %33 = load ptr, ptr %object.addr, align 8
  %string40 = getelementptr inbounds %struct.cJSON, ptr %33, i32 0, i32 7
  store ptr null, ptr %string40, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.end34
  store i32 0, ptr %status, align 4
  br label %cleanup

if.end42:                                         ; preds = %lor.lhs.false
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.end11
  %34 = load i32, ptr %opcode, align 4
  %cmp44 = icmp eq i32 %34, 2
  br i1 %cmp44, label %if.then49, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %if.end43
  %35 = load i32, ptr %opcode, align 4
  %cmp47 = icmp eq i32 %35, 3
  br i1 %cmp47, label %if.then49, label %if.end60

if.then49:                                        ; preds = %lor.lhs.false46, %if.end43
  %36 = load ptr, ptr %object.addr, align 8
  %37 = load ptr, ptr %path, align 8
  %valuestring50 = getelementptr inbounds %struct.cJSON, ptr %37, i32 0, i32 4
  %38 = load ptr, ptr %valuestring50, align 8
  %39 = load i32, ptr %case_sensitive.addr, align 4
  %call51 = call ptr @detach_path(ptr noundef %36, ptr noundef %38, i32 noundef %39)
  store ptr %call51, ptr %old_item, align 8
  %40 = load ptr, ptr %old_item, align 8
  %cmp52 = icmp eq ptr %40, null
  br i1 %cmp52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.then49
  store i32 13, ptr %status, align 4
  br label %cleanup

if.end55:                                         ; preds = %if.then49
  %41 = load ptr, ptr %old_item, align 8
  call void @cJSON_Delete(ptr noundef %41)
  %42 = load i32, ptr %opcode, align 4
  %cmp56 = icmp eq i32 %42, 2
  br i1 %cmp56, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.end55
  store i32 0, ptr %status, align 4
  br label %cleanup

if.end59:                                         ; preds = %if.end55
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %lor.lhs.false46
  %43 = load i32, ptr %opcode, align 4
  %cmp61 = icmp eq i32 %43, 4
  br i1 %cmp61, label %if.then66, label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %if.end60
  %44 = load i32, ptr %opcode, align 4
  %cmp64 = icmp eq i32 %44, 5
  br i1 %cmp64, label %if.then66, label %if.else97

if.then66:                                        ; preds = %lor.lhs.false63, %if.end60
  %45 = load ptr, ptr %patch.addr, align 8
  %46 = load i32, ptr %case_sensitive.addr, align 4
  %call67 = call ptr @get_object_item(ptr noundef %45, ptr noundef @.str.4, i32 noundef %46)
  store ptr %call67, ptr %from, align 8
  %47 = load ptr, ptr %from, align 8
  %call68 = call i32 @cJSON_IsString(ptr noundef %47)
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.end71, label %if.then70

if.then70:                                        ; preds = %if.then66
  store i32 4, ptr %status, align 4
  br label %cleanup

if.end71:                                         ; preds = %if.then66
  %48 = load i32, ptr %opcode, align 4
  %cmp72 = icmp eq i32 %48, 4
  br i1 %cmp72, label %if.then74, label %if.end77

if.then74:                                        ; preds = %if.end71
  %49 = load ptr, ptr %object.addr, align 8
  %50 = load ptr, ptr %from, align 8
  %valuestring75 = getelementptr inbounds %struct.cJSON, ptr %50, i32 0, i32 4
  %51 = load ptr, ptr %valuestring75, align 8
  %52 = load i32, ptr %case_sensitive.addr, align 4
  %call76 = call ptr @detach_path(ptr noundef %49, ptr noundef %51, i32 noundef %52)
  store ptr %call76, ptr %value, align 8
  br label %if.end77

if.end77:                                         ; preds = %if.then74, %if.end71
  %53 = load i32, ptr %opcode, align 4
  %cmp78 = icmp eq i32 %53, 5
  br i1 %cmp78, label %if.then80, label %if.end83

if.then80:                                        ; preds = %if.end77
  %54 = load ptr, ptr %object.addr, align 8
  %55 = load ptr, ptr %from, align 8
  %valuestring81 = getelementptr inbounds %struct.cJSON, ptr %55, i32 0, i32 4
  %56 = load ptr, ptr %valuestring81, align 8
  %57 = load i32, ptr %case_sensitive.addr, align 4
  %call82 = call ptr @get_item_from_pointer(ptr noundef %54, ptr noundef %56, i32 noundef %57)
  store ptr %call82, ptr %value, align 8
  br label %if.end83

if.end83:                                         ; preds = %if.then80, %if.end77
  %58 = load ptr, ptr %value, align 8
  %cmp84 = icmp eq ptr %58, null
  br i1 %cmp84, label %if.then86, label %if.end87

if.then86:                                        ; preds = %if.end83
  store i32 5, ptr %status, align 4
  br label %cleanup

if.end87:                                         ; preds = %if.end83
  %59 = load i32, ptr %opcode, align 4
  %cmp88 = icmp eq i32 %59, 5
  br i1 %cmp88, label %if.then90, label %if.end92

if.then90:                                        ; preds = %if.end87
  %60 = load ptr, ptr %value, align 8
  %call91 = call ptr @cJSON_Duplicate(ptr noundef %60, i32 noundef 1)
  store ptr %call91, ptr %value, align 8
  br label %if.end92

if.end92:                                         ; preds = %if.then90, %if.end87
  %61 = load ptr, ptr %value, align 8
  %cmp93 = icmp eq ptr %61, null
  br i1 %cmp93, label %if.then95, label %if.end96

if.then95:                                        ; preds = %if.end92
  store i32 6, ptr %status, align 4
  br label %cleanup

if.end96:                                         ; preds = %if.end92
  br label %if.end108

if.else97:                                        ; preds = %lor.lhs.false63
  %62 = load ptr, ptr %patch.addr, align 8
  %63 = load i32, ptr %case_sensitive.addr, align 4
  %call98 = call ptr @get_object_item(ptr noundef %62, ptr noundef @.str.3, i32 noundef %63)
  store ptr %call98, ptr %value, align 8
  %64 = load ptr, ptr %value, align 8
  %cmp99 = icmp eq ptr %64, null
  br i1 %cmp99, label %if.then101, label %if.end102

if.then101:                                       ; preds = %if.else97
  store i32 7, ptr %status, align 4
  br label %cleanup

if.end102:                                        ; preds = %if.else97
  %65 = load ptr, ptr %value, align 8
  %call103 = call ptr @cJSON_Duplicate(ptr noundef %65, i32 noundef 1)
  store ptr %call103, ptr %value, align 8
  %66 = load ptr, ptr %value, align 8
  %cmp104 = icmp eq ptr %66, null
  br i1 %cmp104, label %if.then106, label %if.end107

if.then106:                                       ; preds = %if.end102
  store i32 8, ptr %status, align 4
  br label %cleanup

if.end107:                                        ; preds = %if.end102
  br label %if.end108

if.end108:                                        ; preds = %if.end107, %if.end96
  %67 = load ptr, ptr %path, align 8
  %valuestring109 = getelementptr inbounds %struct.cJSON, ptr %67, i32 0, i32 4
  %68 = load ptr, ptr %valuestring109, align 8
  %call110 = call ptr @cJSONUtils_strdup(ptr noundef %68)
  store ptr %call110, ptr %parent_pointer, align 8
  %69 = load ptr, ptr %parent_pointer, align 8
  %tobool111 = icmp ne ptr %69, null
  br i1 %tobool111, label %if.then112, label %if.end114

if.then112:                                       ; preds = %if.end108
  %70 = load ptr, ptr %parent_pointer, align 8
  %call113 = call ptr @strrchr(ptr noundef %70, i32 noundef 47)
  store ptr %call113, ptr %child_pointer, align 8
  br label %if.end114

if.end114:                                        ; preds = %if.then112, %if.end108
  %71 = load ptr, ptr %child_pointer, align 8
  %cmp115 = icmp ne ptr %71, null
  br i1 %cmp115, label %if.then117, label %if.end119

if.then117:                                       ; preds = %if.end114
  %72 = load ptr, ptr %child_pointer, align 8
  %arrayidx118 = getelementptr inbounds i8, ptr %72, i64 0
  store i8 0, ptr %arrayidx118, align 1
  %73 = load ptr, ptr %child_pointer, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %73, i32 1
  store ptr %incdec.ptr, ptr %child_pointer, align 8
  br label %if.end119

if.end119:                                        ; preds = %if.then117, %if.end114
  %74 = load ptr, ptr %object.addr, align 8
  %75 = load ptr, ptr %parent_pointer, align 8
  %76 = load i32, ptr %case_sensitive.addr, align 4
  %call120 = call ptr @get_item_from_pointer(ptr noundef %74, ptr noundef %75, i32 noundef %76)
  store ptr %call120, ptr %parent, align 8
  %77 = load ptr, ptr %child_pointer, align 8
  call void @decode_pointer_inplace(ptr noundef %77)
  %78 = load ptr, ptr %parent, align 8
  %cmp121 = icmp eq ptr %78, null
  br i1 %cmp121, label %if.then126, label %lor.lhs.false123

lor.lhs.false123:                                 ; preds = %if.end119
  %79 = load ptr, ptr %child_pointer, align 8
  %cmp124 = icmp eq ptr %79, null
  br i1 %cmp124, label %if.then126, label %if.else127

if.then126:                                       ; preds = %lor.lhs.false123, %if.end119
  store i32 9, ptr %status, align 4
  br label %cleanup

if.else127:                                       ; preds = %lor.lhs.false123
  %80 = load ptr, ptr %parent, align 8
  %call128 = call i32 @cJSON_IsArray(ptr noundef %80)
  %tobool129 = icmp ne i32 %call128, 0
  br i1 %tobool129, label %if.then130, label %if.else146

if.then130:                                       ; preds = %if.else127
  %81 = load ptr, ptr %child_pointer, align 8
  %call131 = call i32 @strcmp(ptr noundef %81, ptr noundef @.str.5)
  %cmp132 = icmp eq i32 %call131, 0
  br i1 %cmp132, label %if.then134, label %if.else136

if.then134:                                       ; preds = %if.then130
  %82 = load ptr, ptr %parent, align 8
  %83 = load ptr, ptr %value, align 8
  %call135 = call i32 @cJSON_AddItemToArray(ptr noundef %82, ptr noundef %83)
  store ptr null, ptr %value, align 8
  br label %if.end145

if.else136:                                       ; preds = %if.then130
  store i64 0, ptr %index, align 8
  %84 = load ptr, ptr %child_pointer, align 8
  %call137 = call i32 @decode_array_index_from_pointer(ptr noundef %84, ptr noundef %index)
  %tobool138 = icmp ne i32 %call137, 0
  br i1 %tobool138, label %if.end140, label %if.then139

if.then139:                                       ; preds = %if.else136
  store i32 11, ptr %status, align 4
  br label %cleanup

if.end140:                                        ; preds = %if.else136
  %85 = load ptr, ptr %parent, align 8
  %86 = load i64, ptr %index, align 8
  %87 = load ptr, ptr %value, align 8
  %call141 = call i32 @insert_item_in_array(ptr noundef %85, i64 noundef %86, ptr noundef %87)
  %tobool142 = icmp ne i32 %call141, 0
  br i1 %tobool142, label %if.end144, label %if.then143

if.then143:                                       ; preds = %if.end140
  store i32 10, ptr %status, align 4
  br label %cleanup

if.end144:                                        ; preds = %if.end140
  store ptr null, ptr %value, align 8
  br label %if.end145

if.end145:                                        ; preds = %if.end144, %if.then134
  br label %if.end157

if.else146:                                       ; preds = %if.else127
  %88 = load ptr, ptr %parent, align 8
  %call147 = call i32 @cJSON_IsObject(ptr noundef %88)
  %tobool148 = icmp ne i32 %call147, 0
  br i1 %tobool148, label %if.then149, label %if.else155

if.then149:                                       ; preds = %if.else146
  %89 = load i32, ptr %case_sensitive.addr, align 4
  %tobool150 = icmp ne i32 %89, 0
  br i1 %tobool150, label %if.then151, label %if.else152

if.then151:                                       ; preds = %if.then149
  %90 = load ptr, ptr %parent, align 8
  %91 = load ptr, ptr %child_pointer, align 8
  call void @cJSON_DeleteItemFromObjectCaseSensitive(ptr noundef %90, ptr noundef %91)
  br label %if.end153

if.else152:                                       ; preds = %if.then149
  %92 = load ptr, ptr %parent, align 8
  %93 = load ptr, ptr %child_pointer, align 8
  call void @cJSON_DeleteItemFromObject(ptr noundef %92, ptr noundef %93)
  br label %if.end153

if.end153:                                        ; preds = %if.else152, %if.then151
  %94 = load ptr, ptr %parent, align 8
  %95 = load ptr, ptr %child_pointer, align 8
  %96 = load ptr, ptr %value, align 8
  %call154 = call i32 @cJSON_AddItemToObject(ptr noundef %94, ptr noundef %95, ptr noundef %96)
  store ptr null, ptr %value, align 8
  br label %if.end156

if.else155:                                       ; preds = %if.else146
  store i32 9, ptr %status, align 4
  br label %cleanup

if.end156:                                        ; preds = %if.end153
  br label %if.end157

if.end157:                                        ; preds = %if.end156, %if.end145
  br label %if.end158

if.end158:                                        ; preds = %if.end157
  br label %cleanup

cleanup:                                          ; preds = %if.end158, %if.else155, %if.then143, %if.then139, %if.then126, %if.then106, %if.then101, %if.then95, %if.then86, %if.then70, %if.then58, %if.then54, %if.end41, %if.then33, %if.then28, %if.then18, %if.then5, %if.then3, %if.then
  %97 = load ptr, ptr %value, align 8
  %cmp159 = icmp ne ptr %97, null
  br i1 %cmp159, label %if.then161, label %if.end162

if.then161:                                       ; preds = %cleanup
  %98 = load ptr, ptr %value, align 8
  call void @cJSON_Delete(ptr noundef %98)
  br label %if.end162

if.end162:                                        ; preds = %if.then161, %cleanup
  %99 = load ptr, ptr %parent_pointer, align 8
  %cmp163 = icmp ne ptr %99, null
  br i1 %cmp163, label %if.then165, label %if.end166

if.then165:                                       ; preds = %if.end162
  %100 = load ptr, ptr %parent_pointer, align 8
  call void @cJSON_free(ptr noundef %100)
  br label %if.end166

if.end166:                                        ; preds = %if.then165, %if.end162
  %101 = load i32, ptr %status, align 4
  ret i32 %101
}

; Function Attrs: nounwind ssp uwtable
define i32 @cJSONUtils_ApplyPatchesCaseSensitive(ptr noundef %object, ptr noundef %patches) #0 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca ptr, align 8
  %patches.addr = alloca ptr, align 8
  %current_patch = alloca ptr, align 8
  %status = alloca i32, align 4
  store ptr %object, ptr %object.addr, align 8
  store ptr %patches, ptr %patches.addr, align 8
  store ptr null, ptr %current_patch, align 8
  store i32 0, ptr %status, align 4
  %0 = load ptr, ptr %patches.addr, align 8
  %call = call i32 @cJSON_IsArray(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %patches.addr, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  %2 = load ptr, ptr %patches.addr, align 8
  %child = getelementptr inbounds %struct.cJSON, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %child, align 8
  store ptr %3, ptr %current_patch, align 8
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end7, %if.end2
  %4 = load ptr, ptr %current_patch, align 8
  %cmp3 = icmp ne ptr %4, null
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %object.addr, align 8
  %6 = load ptr, ptr %current_patch, align 8
  %call4 = call i32 @apply_patch(ptr noundef %5, ptr noundef %6, i32 noundef 1)
  store i32 %call4, ptr %status, align 4
  %7 = load i32, ptr %status, align 4
  %cmp5 = icmp ne i32 %7, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %while.body
  %8 = load i32, ptr %status, align 4
  store i32 %8, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %while.body
  %9 = load ptr, ptr %current_patch, align 8
  %next = getelementptr inbounds %struct.cJSON, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %next, align 8
  store ptr %10, ptr %current_patch, align 8
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then6, %if.then
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

; Function Attrs: nounwind ssp uwtable
define void @cJSONUtils_AddPatchToArray(ptr noundef %array, ptr noundef %operation, ptr noundef %path, ptr noundef %value) #0 {
entry:
  %array.addr = alloca ptr, align 8
  %operation.addr = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8
  store ptr %operation, ptr %operation.addr, align 8
  store ptr %path, ptr %path.addr, align 8
  store ptr %value, ptr %value.addr, align 8
  %0 = load ptr, ptr %array.addr, align 8
  %1 = load ptr, ptr %operation.addr, align 8
  %2 = load ptr, ptr %path.addr, align 8
  %3 = load ptr, ptr %value.addr, align 8
  call void @compose_patch(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef %3)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @compose_patch(ptr noundef %patches, ptr noundef %operation, ptr noundef %path, ptr noundef %suffix, ptr noundef %value) #0 {
entry:
  %patches.addr = alloca ptr, align 8
  %operation.addr = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %suffix.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %patch = alloca ptr, align 8
  %suffix_length = alloca i64, align 8
  %path_length = alloca i64, align 8
  %full_path = alloca ptr, align 8
  store ptr %patches, ptr %patches.addr, align 8
  store ptr %operation, ptr %operation.addr, align 8
  store ptr %path, ptr %path.addr, align 8
  store ptr %suffix, ptr %suffix.addr, align 8
  store ptr %value, ptr %value.addr, align 8
  store ptr null, ptr %patch, align 8
  %0 = load ptr, ptr %patches.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %operation.addr, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %path.addr, align 8
  %cmp3 = icmp eq ptr %2, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %call = call ptr @cJSON_CreateObject()
  store ptr %call, ptr %patch, align 8
  %3 = load ptr, ptr %patch, align 8
  %cmp4 = icmp eq ptr %3, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  br label %return

if.end6:                                          ; preds = %if.end
  %4 = load ptr, ptr %patch, align 8
  %5 = load ptr, ptr %operation.addr, align 8
  %call7 = call ptr @cJSON_CreateString(ptr noundef %5)
  %call8 = call i32 @cJSON_AddItemToObject(ptr noundef %4, ptr noundef @.str.6, ptr noundef %call7)
  %6 = load ptr, ptr %suffix.addr, align 8
  %cmp9 = icmp eq ptr %6, null
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end6
  %7 = load ptr, ptr %patch, align 8
  %8 = load ptr, ptr %path.addr, align 8
  %call11 = call ptr @cJSON_CreateString(ptr noundef %8)
  %call12 = call i32 @cJSON_AddItemToObject(ptr noundef %7, ptr noundef @.str.2, ptr noundef %call11)
  br label %if.end21

if.else:                                          ; preds = %if.end6
  %9 = load ptr, ptr %suffix.addr, align 8
  %call13 = call i64 @pointer_encoded_length(ptr noundef %9)
  store i64 %call13, ptr %suffix_length, align 8
  %10 = load ptr, ptr %path.addr, align 8
  %call14 = call i64 @strlen(ptr noundef %10)
  store i64 %call14, ptr %path_length, align 8
  %11 = load i64, ptr %path_length, align 8
  %12 = load i64, ptr %suffix_length, align 8
  %add = add i64 %11, %12
  %add15 = add i64 %add, 2
  %call16 = call ptr @cJSON_malloc(i64 noundef %add15)
  store ptr %call16, ptr %full_path, align 8
  %13 = load ptr, ptr %full_path, align 8
  %14 = load ptr, ptr %full_path, align 8
  %15 = call i64 @llvm.objectsize.i64.p0(ptr %14, i1 false, i1 true, i1 false)
  %16 = load ptr, ptr %path.addr, align 8
  %call17 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %13, i32 noundef 0, i64 noundef %15, ptr noundef @.str.13, ptr noundef %16)
  %17 = load ptr, ptr %full_path, align 8
  %18 = load i64, ptr %path_length, align 8
  %add.ptr = getelementptr inbounds i8, ptr %17, i64 %18
  %add.ptr18 = getelementptr inbounds i8, ptr %add.ptr, i64 1
  %19 = load ptr, ptr %suffix.addr, align 8
  call void @encode_string_as_pointer(ptr noundef %add.ptr18, ptr noundef %19)
  %20 = load ptr, ptr %patch, align 8
  %21 = load ptr, ptr %full_path, align 8
  %call19 = call ptr @cJSON_CreateString(ptr noundef %21)
  %call20 = call i32 @cJSON_AddItemToObject(ptr noundef %20, ptr noundef @.str.2, ptr noundef %call19)
  %22 = load ptr, ptr %full_path, align 8
  call void @cJSON_free(ptr noundef %22)
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then10
  %23 = load ptr, ptr %value.addr, align 8
  %cmp22 = icmp ne ptr %23, null
  br i1 %cmp22, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end21
  %24 = load ptr, ptr %patch, align 8
  %25 = load ptr, ptr %value.addr, align 8
  %call24 = call ptr @cJSON_Duplicate(ptr noundef %25, i32 noundef 1)
  %call25 = call i32 @cJSON_AddItemToObject(ptr noundef %24, ptr noundef @.str.3, ptr noundef %call24)
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end21
  %26 = load ptr, ptr %patches.addr, align 8
  %27 = load ptr, ptr %patch, align 8
  %call27 = call i32 @cJSON_AddItemToArray(ptr noundef %26, ptr noundef %27)
  br label %return

return:                                           ; preds = %if.end26, %if.then5, %if.then
  ret void
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSONUtils_GeneratePatches(ptr noundef %from, ptr noundef %to) #0 {
entry:
  %retval = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %to.addr = alloca ptr, align 8
  %patches = alloca ptr, align 8
  store ptr %from, ptr %from.addr, align 8
  store ptr %to, ptr %to.addr, align 8
  store ptr null, ptr %patches, align 8
  %0 = load ptr, ptr %from.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %to.addr, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %call = call ptr @cJSON_CreateArray()
  store ptr %call, ptr %patches, align 8
  %2 = load ptr, ptr %patches, align 8
  %3 = load ptr, ptr %from.addr, align 8
  %4 = load ptr, ptr %to.addr, align 8
  call void @create_patches(ptr noundef %2, ptr noundef @.str, ptr noundef %3, ptr noundef %4, i32 noundef 0)
  %5 = load ptr, ptr %patches, align 8
  store ptr %5, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load ptr, ptr %retval, align 8
  ret ptr %6
}

declare ptr @cJSON_CreateArray() #1

; Function Attrs: nounwind ssp uwtable
define internal void @create_patches(ptr noundef %patches, ptr noundef %path, ptr noundef %from, ptr noundef %to, i32 noundef %case_sensitive) #0 {
entry:
  %patches.addr = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %to.addr = alloca ptr, align 8
  %case_sensitive.addr = alloca i32, align 4
  %index = alloca i64, align 8
  %from_child = alloca ptr, align 8
  %to_child = alloca ptr, align 8
  %new_path = alloca ptr, align 8
  %from_child51 = alloca ptr, align 8
  %to_child52 = alloca ptr, align 8
  %diff = alloca i32, align 4
  %path_length = alloca i64, align 8
  %from_child_name_length = alloca i64, align 8
  %new_path71 = alloca ptr, align 8
  store ptr %patches, ptr %patches.addr, align 8
  store ptr %path, ptr %path.addr, align 8
  store ptr %from, ptr %from.addr, align 8
  store ptr %to, ptr %to.addr, align 8
  store i32 %case_sensitive, ptr %case_sensitive.addr, align 4
  %0 = load ptr, ptr %from.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %to.addr, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %sw.epilog

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %from.addr, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %2, i32 0, i32 3
  %3 = load i32, ptr %type, align 8
  %and = and i32 %3, 255
  %4 = load ptr, ptr %to.addr, align 8
  %type2 = getelementptr inbounds %struct.cJSON, ptr %4, i32 0, i32 3
  %5 = load i32, ptr %type2, align 8
  %and3 = and i32 %5, 255
  %cmp4 = icmp ne i32 %and, %and3
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %patches.addr, align 8
  %7 = load ptr, ptr %path.addr, align 8
  %8 = load ptr, ptr %to.addr, align 8
  call void @compose_patch(ptr noundef %6, ptr noundef @.str.9, ptr noundef %7, ptr noundef null, ptr noundef %8)
  br label %sw.epilog

if.end6:                                          ; preds = %if.end
  %9 = load ptr, ptr %from.addr, align 8
  %type7 = getelementptr inbounds %struct.cJSON, ptr %9, i32 0, i32 3
  %10 = load i32, ptr %type7, align 8
  %and8 = and i32 %10, 255
  switch i32 %and8, label %sw.default [
    i32 8, label %sw.bb
    i32 16, label %sw.bb15
    i32 32, label %sw.bb21
    i32 64, label %sw.bb50
  ]

sw.bb:                                            ; preds = %if.end6
  %11 = load ptr, ptr %from.addr, align 8
  %valueint = getelementptr inbounds %struct.cJSON, ptr %11, i32 0, i32 5
  %12 = load i32, ptr %valueint, align 8
  %13 = load ptr, ptr %to.addr, align 8
  %valueint9 = getelementptr inbounds %struct.cJSON, ptr %13, i32 0, i32 5
  %14 = load i32, ptr %valueint9, align 8
  %cmp10 = icmp ne i32 %12, %14
  br i1 %cmp10, label %if.then13, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %sw.bb
  %15 = load ptr, ptr %from.addr, align 8
  %valuedouble = getelementptr inbounds %struct.cJSON, ptr %15, i32 0, i32 6
  %16 = load double, ptr %valuedouble, align 8
  %17 = load ptr, ptr %to.addr, align 8
  %valuedouble12 = getelementptr inbounds %struct.cJSON, ptr %17, i32 0, i32 6
  %18 = load double, ptr %valuedouble12, align 8
  %call = call i32 @compare_double(double noundef %16, double noundef %18)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end14, label %if.then13

if.then13:                                        ; preds = %lor.lhs.false11, %sw.bb
  %19 = load ptr, ptr %patches.addr, align 8
  %20 = load ptr, ptr %path.addr, align 8
  %21 = load ptr, ptr %to.addr, align 8
  call void @compose_patch(ptr noundef %19, ptr noundef @.str.9, ptr noundef %20, ptr noundef null, ptr noundef %21)
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %lor.lhs.false11
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end6
  %22 = load ptr, ptr %from.addr, align 8
  %valuestring = getelementptr inbounds %struct.cJSON, ptr %22, i32 0, i32 4
  %23 = load ptr, ptr %valuestring, align 8
  %24 = load ptr, ptr %to.addr, align 8
  %valuestring16 = getelementptr inbounds %struct.cJSON, ptr %24, i32 0, i32 4
  %25 = load ptr, ptr %valuestring16, align 8
  %call17 = call i32 @strcmp(ptr noundef %23, ptr noundef %25)
  %cmp18 = icmp ne i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %sw.bb15
  %26 = load ptr, ptr %patches.addr, align 8
  %27 = load ptr, ptr %path.addr, align 8
  %28 = load ptr, ptr %to.addr, align 8
  call void @compose_patch(ptr noundef %26, ptr noundef @.str.9, ptr noundef %27, ptr noundef null, ptr noundef %28)
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %sw.bb15
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end6
  store i64 0, ptr %index, align 8
  %29 = load ptr, ptr %from.addr, align 8
  %child = getelementptr inbounds %struct.cJSON, ptr %29, i32 0, i32 2
  %30 = load ptr, ptr %child, align 8
  store ptr %30, ptr %from_child, align 8
  %31 = load ptr, ptr %to.addr, align 8
  %child22 = getelementptr inbounds %struct.cJSON, ptr %31, i32 0, i32 2
  %32 = load ptr, ptr %child22, align 8
  store ptr %32, ptr %to_child, align 8
  %33 = load ptr, ptr %path.addr, align 8
  %call23 = call i64 @strlen(ptr noundef %33)
  %add = add i64 %call23, 20
  %add24 = add i64 %add, 2
  %call25 = call ptr @cJSON_malloc(i64 noundef %add24)
  store ptr %call25, ptr %new_path, align 8
  store i64 0, ptr %index, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb21
  %34 = load ptr, ptr %from_child, align 8
  %cmp26 = icmp ne ptr %34, null
  br i1 %cmp26, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %35 = load ptr, ptr %to_child, align 8
  %cmp27 = icmp ne ptr %35, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %36 = phi i1 [ false, %for.cond ], [ %cmp27, %land.rhs ]
  br i1 %36, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %37 = load i64, ptr %index, align 8
  %cmp28 = icmp ugt i64 %37, -1
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %for.body
  %38 = load ptr, ptr %new_path, align 8
  call void @cJSON_free(ptr noundef %38)
  br label %sw.epilog

if.end30:                                         ; preds = %for.body
  %39 = load ptr, ptr %new_path, align 8
  %40 = load ptr, ptr %new_path, align 8
  %41 = call i64 @llvm.objectsize.i64.p0(ptr %40, i1 false, i1 true, i1 false)
  %42 = load ptr, ptr %path.addr, align 8
  %43 = load i64, ptr %index, align 8
  %call31 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %39, i32 noundef 0, i64 noundef %41, ptr noundef @.str.14, ptr noundef %42, i64 noundef %43)
  %44 = load ptr, ptr %patches.addr, align 8
  %45 = load ptr, ptr %new_path, align 8
  %46 = load ptr, ptr %from_child, align 8
  %47 = load ptr, ptr %to_child, align 8
  %48 = load i32, ptr %case_sensitive.addr, align 4
  call void @create_patches(ptr noundef %44, ptr noundef %45, ptr noundef %46, ptr noundef %47, i32 noundef %48)
  br label %for.inc

for.inc:                                          ; preds = %if.end30
  %49 = load ptr, ptr %from_child, align 8
  %next = getelementptr inbounds %struct.cJSON, ptr %49, i32 0, i32 0
  %50 = load ptr, ptr %next, align 8
  store ptr %50, ptr %from_child, align 8
  %51 = load ptr, ptr %to_child, align 8
  %next32 = getelementptr inbounds %struct.cJSON, ptr %51, i32 0, i32 0
  %52 = load ptr, ptr %next32, align 8
  store ptr %52, ptr %to_child, align 8
  %53 = load i64, ptr %index, align 8
  %inc = add i64 %53, 1
  store i64 %inc, ptr %index, align 8
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %land.end
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc40, %for.end
  %54 = load ptr, ptr %from_child, align 8
  %cmp34 = icmp ne ptr %54, null
  br i1 %cmp34, label %for.body35, label %for.end42

for.body35:                                       ; preds = %for.cond33
  %55 = load i64, ptr %index, align 8
  %cmp36 = icmp ugt i64 %55, -1
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %for.body35
  %56 = load ptr, ptr %new_path, align 8
  call void @cJSON_free(ptr noundef %56)
  br label %sw.epilog

if.end38:                                         ; preds = %for.body35
  %57 = load ptr, ptr %new_path, align 8
  %58 = load ptr, ptr %new_path, align 8
  %59 = call i64 @llvm.objectsize.i64.p0(ptr %58, i1 false, i1 true, i1 false)
  %60 = load i64, ptr %index, align 8
  %call39 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %57, i32 noundef 0, i64 noundef %59, ptr noundef @.str.15, i64 noundef %60)
  %61 = load ptr, ptr %patches.addr, align 8
  %62 = load ptr, ptr %path.addr, align 8
  %63 = load ptr, ptr %new_path, align 8
  call void @compose_patch(ptr noundef %61, ptr noundef @.str.8, ptr noundef %62, ptr noundef %63, ptr noundef null)
  br label %for.inc40

for.inc40:                                        ; preds = %if.end38
  %64 = load ptr, ptr %from_child, align 8
  %next41 = getelementptr inbounds %struct.cJSON, ptr %64, i32 0, i32 0
  %65 = load ptr, ptr %next41, align 8
  store ptr %65, ptr %from_child, align 8
  br label %for.cond33, !llvm.loop !16

for.end42:                                        ; preds = %for.cond33
  br label %for.cond43

for.cond43:                                       ; preds = %for.inc46, %for.end42
  %66 = load ptr, ptr %to_child, align 8
  %cmp44 = icmp ne ptr %66, null
  br i1 %cmp44, label %for.body45, label %for.end49

for.body45:                                       ; preds = %for.cond43
  %67 = load ptr, ptr %patches.addr, align 8
  %68 = load ptr, ptr %path.addr, align 8
  %69 = load ptr, ptr %to_child, align 8
  call void @compose_patch(ptr noundef %67, ptr noundef @.str.7, ptr noundef %68, ptr noundef @.str.5, ptr noundef %69)
  br label %for.inc46

for.inc46:                                        ; preds = %for.body45
  %70 = load ptr, ptr %to_child, align 8
  %next47 = getelementptr inbounds %struct.cJSON, ptr %70, i32 0, i32 0
  %71 = load ptr, ptr %next47, align 8
  store ptr %71, ptr %to_child, align 8
  %72 = load i64, ptr %index, align 8
  %inc48 = add i64 %72, 1
  store i64 %inc48, ptr %index, align 8
  br label %for.cond43, !llvm.loop !17

for.end49:                                        ; preds = %for.cond43
  %73 = load ptr, ptr %new_path, align 8
  call void @cJSON_free(ptr noundef %73)
  br label %sw.epilog

sw.bb50:                                          ; preds = %if.end6
  store ptr null, ptr %from_child51, align 8
  store ptr null, ptr %to_child52, align 8
  %74 = load ptr, ptr %from.addr, align 8
  %75 = load i32, ptr %case_sensitive.addr, align 4
  call void @sort_object(ptr noundef %74, i32 noundef %75)
  %76 = load ptr, ptr %to.addr, align 8
  %77 = load i32, ptr %case_sensitive.addr, align 4
  call void @sort_object(ptr noundef %76, i32 noundef %77)
  %78 = load ptr, ptr %from.addr, align 8
  %child53 = getelementptr inbounds %struct.cJSON, ptr %78, i32 0, i32 2
  %79 = load ptr, ptr %child53, align 8
  store ptr %79, ptr %from_child51, align 8
  %80 = load ptr, ptr %to.addr, align 8
  %child54 = getelementptr inbounds %struct.cJSON, ptr %80, i32 0, i32 2
  %81 = load ptr, ptr %child54, align 8
  store ptr %81, ptr %to_child52, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end89, %sw.bb50
  %82 = load ptr, ptr %from_child51, align 8
  %cmp55 = icmp ne ptr %82, null
  br i1 %cmp55, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %83 = load ptr, ptr %to_child52, align 8
  %cmp56 = icmp ne ptr %83, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %84 = phi i1 [ true, %while.cond ], [ %cmp56, %lor.rhs ]
  br i1 %84, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %85 = load ptr, ptr %from_child51, align 8
  %cmp57 = icmp eq ptr %85, null
  br i1 %cmp57, label %if.then58, label %if.else

if.then58:                                        ; preds = %while.body
  store i32 1, ptr %diff, align 4
  br label %if.end65

if.else:                                          ; preds = %while.body
  %86 = load ptr, ptr %to_child52, align 8
  %cmp59 = icmp eq ptr %86, null
  br i1 %cmp59, label %if.then60, label %if.else61

if.then60:                                        ; preds = %if.else
  store i32 -1, ptr %diff, align 4
  br label %if.end64

if.else61:                                        ; preds = %if.else
  %87 = load ptr, ptr %from_child51, align 8
  %string = getelementptr inbounds %struct.cJSON, ptr %87, i32 0, i32 7
  %88 = load ptr, ptr %string, align 8
  %89 = load ptr, ptr %to_child52, align 8
  %string62 = getelementptr inbounds %struct.cJSON, ptr %89, i32 0, i32 7
  %90 = load ptr, ptr %string62, align 8
  %91 = load i32, ptr %case_sensitive.addr, align 4
  %call63 = call i32 @compare_strings(ptr noundef %88, ptr noundef %90, i32 noundef %91)
  store i32 %call63, ptr %diff, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.else61, %if.then60
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.then58
  %92 = load i32, ptr %diff, align 4
  %cmp66 = icmp eq i32 %92, 0
  br i1 %cmp66, label %if.then67, label %if.else80

if.then67:                                        ; preds = %if.end65
  %93 = load ptr, ptr %path.addr, align 8
  %call68 = call i64 @strlen(ptr noundef %93)
  store i64 %call68, ptr %path_length, align 8
  %94 = load ptr, ptr %from_child51, align 8
  %string69 = getelementptr inbounds %struct.cJSON, ptr %94, i32 0, i32 7
  %95 = load ptr, ptr %string69, align 8
  %call70 = call i64 @pointer_encoded_length(ptr noundef %95)
  store i64 %call70, ptr %from_child_name_length, align 8
  %96 = load i64, ptr %path_length, align 8
  %97 = load i64, ptr %from_child_name_length, align 8
  %add72 = add i64 %96, %97
  %add73 = add i64 %add72, 2
  %call74 = call ptr @cJSON_malloc(i64 noundef %add73)
  store ptr %call74, ptr %new_path71, align 8
  %98 = load ptr, ptr %new_path71, align 8
  %99 = load ptr, ptr %new_path71, align 8
  %100 = call i64 @llvm.objectsize.i64.p0(ptr %99, i1 false, i1 true, i1 false)
  %101 = load ptr, ptr %path.addr, align 8
  %call75 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %98, i32 noundef 0, i64 noundef %100, ptr noundef @.str.13, ptr noundef %101)
  %102 = load ptr, ptr %new_path71, align 8
  %103 = load i64, ptr %path_length, align 8
  %add.ptr = getelementptr inbounds i8, ptr %102, i64 %103
  %add.ptr76 = getelementptr inbounds i8, ptr %add.ptr, i64 1
  %104 = load ptr, ptr %from_child51, align 8
  %string77 = getelementptr inbounds %struct.cJSON, ptr %104, i32 0, i32 7
  %105 = load ptr, ptr %string77, align 8
  call void @encode_string_as_pointer(ptr noundef %add.ptr76, ptr noundef %105)
  %106 = load ptr, ptr %patches.addr, align 8
  %107 = load ptr, ptr %new_path71, align 8
  %108 = load ptr, ptr %from_child51, align 8
  %109 = load ptr, ptr %to_child52, align 8
  %110 = load i32, ptr %case_sensitive.addr, align 4
  call void @create_patches(ptr noundef %106, ptr noundef %107, ptr noundef %108, ptr noundef %109, i32 noundef %110)
  %111 = load ptr, ptr %new_path71, align 8
  call void @cJSON_free(ptr noundef %111)
  %112 = load ptr, ptr %from_child51, align 8
  %next78 = getelementptr inbounds %struct.cJSON, ptr %112, i32 0, i32 0
  %113 = load ptr, ptr %next78, align 8
  store ptr %113, ptr %from_child51, align 8
  %114 = load ptr, ptr %to_child52, align 8
  %next79 = getelementptr inbounds %struct.cJSON, ptr %114, i32 0, i32 0
  %115 = load ptr, ptr %next79, align 8
  store ptr %115, ptr %to_child52, align 8
  br label %if.end89

if.else80:                                        ; preds = %if.end65
  %116 = load i32, ptr %diff, align 4
  %cmp81 = icmp slt i32 %116, 0
  br i1 %cmp81, label %if.then82, label %if.else85

if.then82:                                        ; preds = %if.else80
  %117 = load ptr, ptr %patches.addr, align 8
  %118 = load ptr, ptr %path.addr, align 8
  %119 = load ptr, ptr %from_child51, align 8
  %string83 = getelementptr inbounds %struct.cJSON, ptr %119, i32 0, i32 7
  %120 = load ptr, ptr %string83, align 8
  call void @compose_patch(ptr noundef %117, ptr noundef @.str.8, ptr noundef %118, ptr noundef %120, ptr noundef null)
  %121 = load ptr, ptr %from_child51, align 8
  %next84 = getelementptr inbounds %struct.cJSON, ptr %121, i32 0, i32 0
  %122 = load ptr, ptr %next84, align 8
  store ptr %122, ptr %from_child51, align 8
  br label %if.end88

if.else85:                                        ; preds = %if.else80
  %123 = load ptr, ptr %patches.addr, align 8
  %124 = load ptr, ptr %path.addr, align 8
  %125 = load ptr, ptr %to_child52, align 8
  %string86 = getelementptr inbounds %struct.cJSON, ptr %125, i32 0, i32 7
  %126 = load ptr, ptr %string86, align 8
  %127 = load ptr, ptr %to_child52, align 8
  call void @compose_patch(ptr noundef %123, ptr noundef @.str.7, ptr noundef %124, ptr noundef %126, ptr noundef %127)
  %128 = load ptr, ptr %to_child52, align 8
  %next87 = getelementptr inbounds %struct.cJSON, ptr %128, i32 0, i32 0
  %129 = load ptr, ptr %next87, align 8
  store ptr %129, ptr %to_child52, align 8
  br label %if.end88

if.end88:                                         ; preds = %if.else85, %if.then82
  br label %if.end89

if.end89:                                         ; preds = %if.end88, %if.then67
  br label %while.cond, !llvm.loop !18

while.end:                                        ; preds = %lor.end
  br label %sw.epilog

sw.default:                                       ; preds = %if.end6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %if.then5, %if.end14, %if.end20, %if.then29, %if.then37, %for.end49, %while.end, %sw.default
  ret void
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSONUtils_GeneratePatchesCaseSensitive(ptr noundef %from, ptr noundef %to) #0 {
entry:
  %retval = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %to.addr = alloca ptr, align 8
  %patches = alloca ptr, align 8
  store ptr %from, ptr %from.addr, align 8
  store ptr %to, ptr %to.addr, align 8
  store ptr null, ptr %patches, align 8
  %0 = load ptr, ptr %from.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %to.addr, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %call = call ptr @cJSON_CreateArray()
  store ptr %call, ptr %patches, align 8
  %2 = load ptr, ptr %patches, align 8
  %3 = load ptr, ptr %from.addr, align 8
  %4 = load ptr, ptr %to.addr, align 8
  call void @create_patches(ptr noundef %2, ptr noundef @.str, ptr noundef %3, ptr noundef %4, i32 noundef 1)
  %5 = load ptr, ptr %patches, align 8
  store ptr %5, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load ptr, ptr %retval, align 8
  ret ptr %6
}

; Function Attrs: nounwind ssp uwtable
define void @cJSONUtils_SortObject(ptr noundef %object) #0 {
entry:
  %object.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  %0 = load ptr, ptr %object.addr, align 8
  call void @sort_object(ptr noundef %0, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @sort_object(ptr noundef %object, i32 noundef %case_sensitive) #0 {
entry:
  %object.addr = alloca ptr, align 8
  %case_sensitive.addr = alloca i32, align 4
  store ptr %object, ptr %object.addr, align 8
  store i32 %case_sensitive, ptr %case_sensitive.addr, align 4
  %0 = load ptr, ptr %object.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %object.addr, align 8
  %child = getelementptr inbounds %struct.cJSON, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %child, align 8
  %3 = load i32, ptr %case_sensitive.addr, align 4
  %call = call ptr @sort_list(ptr noundef %2, i32 noundef %3)
  %4 = load ptr, ptr %object.addr, align 8
  %child1 = getelementptr inbounds %struct.cJSON, ptr %4, i32 0, i32 2
  store ptr %call, ptr %child1, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @cJSONUtils_SortObjectCaseSensitive(ptr noundef %object) #0 {
entry:
  %object.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  %0 = load ptr, ptr %object.addr, align 8
  call void @sort_object(ptr noundef %0, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSONUtils_MergePatch(ptr noundef %target, ptr noundef %patch) #0 {
entry:
  %target.addr = alloca ptr, align 8
  %patch.addr = alloca ptr, align 8
  store ptr %target, ptr %target.addr, align 8
  store ptr %patch, ptr %patch.addr, align 8
  %0 = load ptr, ptr %target.addr, align 8
  %1 = load ptr, ptr %patch.addr, align 8
  %call = call ptr @merge_patch(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @merge_patch(ptr noundef %target, ptr noundef %patch, i32 noundef %case_sensitive) #0 {
entry:
  %retval = alloca ptr, align 8
  %target.addr = alloca ptr, align 8
  %patch.addr = alloca ptr, align 8
  %case_sensitive.addr = alloca i32, align 4
  %patch_child = alloca ptr, align 8
  %replace_me = alloca ptr, align 8
  %replacement = alloca ptr, align 8
  store ptr %target, ptr %target.addr, align 8
  store ptr %patch, ptr %patch.addr, align 8
  store i32 %case_sensitive, ptr %case_sensitive.addr, align 4
  store ptr null, ptr %patch_child, align 8
  %0 = load ptr, ptr %patch.addr, align 8
  %call = call i32 @cJSON_IsObject(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %target.addr, align 8
  call void @cJSON_Delete(ptr noundef %1)
  %2 = load ptr, ptr %patch.addr, align 8
  %call1 = call ptr @cJSON_Duplicate(ptr noundef %2, i32 noundef 1)
  store ptr %call1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %target.addr, align 8
  %call2 = call i32 @cJSON_IsObject(ptr noundef %3)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  %4 = load ptr, ptr %target.addr, align 8
  call void @cJSON_Delete(ptr noundef %4)
  %call5 = call ptr @cJSON_CreateObject()
  store ptr %call5, ptr %target.addr, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %5 = load ptr, ptr %patch.addr, align 8
  %child = getelementptr inbounds %struct.cJSON, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %child, align 8
  store ptr %6, ptr %patch_child, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end29, %if.end6
  %7 = load ptr, ptr %patch_child, align 8
  %cmp = icmp ne ptr %7, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load ptr, ptr %patch_child, align 8
  %call7 = call i32 @cJSON_IsNull(ptr noundef %8)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then9, label %if.else14

if.then9:                                         ; preds = %while.body
  %9 = load i32, ptr %case_sensitive.addr, align 4
  %tobool10 = icmp ne i32 %9, 0
  br i1 %tobool10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then9
  %10 = load ptr, ptr %target.addr, align 8
  %11 = load ptr, ptr %patch_child, align 8
  %string = getelementptr inbounds %struct.cJSON, ptr %11, i32 0, i32 7
  %12 = load ptr, ptr %string, align 8
  call void @cJSON_DeleteItemFromObjectCaseSensitive(ptr noundef %10, ptr noundef %12)
  br label %if.end13

if.else:                                          ; preds = %if.then9
  %13 = load ptr, ptr %target.addr, align 8
  %14 = load ptr, ptr %patch_child, align 8
  %string12 = getelementptr inbounds %struct.cJSON, ptr %14, i32 0, i32 7
  %15 = load ptr, ptr %string12, align 8
  call void @cJSON_DeleteItemFromObject(ptr noundef %13, ptr noundef %15)
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then11
  br label %if.end29

if.else14:                                        ; preds = %while.body
  store ptr null, ptr %replace_me, align 8
  store ptr null, ptr %replacement, align 8
  %16 = load i32, ptr %case_sensitive.addr, align 4
  %tobool15 = icmp ne i32 %16, 0
  br i1 %tobool15, label %if.then16, label %if.else19

if.then16:                                        ; preds = %if.else14
  %17 = load ptr, ptr %target.addr, align 8
  %18 = load ptr, ptr %patch_child, align 8
  %string17 = getelementptr inbounds %struct.cJSON, ptr %18, i32 0, i32 7
  %19 = load ptr, ptr %string17, align 8
  %call18 = call ptr @cJSON_DetachItemFromObjectCaseSensitive(ptr noundef %17, ptr noundef %19)
  store ptr %call18, ptr %replace_me, align 8
  br label %if.end22

if.else19:                                        ; preds = %if.else14
  %20 = load ptr, ptr %target.addr, align 8
  %21 = load ptr, ptr %patch_child, align 8
  %string20 = getelementptr inbounds %struct.cJSON, ptr %21, i32 0, i32 7
  %22 = load ptr, ptr %string20, align 8
  %call21 = call ptr @cJSON_DetachItemFromObject(ptr noundef %20, ptr noundef %22)
  store ptr %call21, ptr %replace_me, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.else19, %if.then16
  %23 = load ptr, ptr %replace_me, align 8
  %24 = load ptr, ptr %patch_child, align 8
  %25 = load i32, ptr %case_sensitive.addr, align 4
  %call23 = call ptr @merge_patch(ptr noundef %23, ptr noundef %24, i32 noundef %25)
  store ptr %call23, ptr %replacement, align 8
  %26 = load ptr, ptr %replacement, align 8
  %cmp24 = icmp eq ptr %26, null
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end22
  %27 = load ptr, ptr %target.addr, align 8
  call void @cJSON_Delete(ptr noundef %27)
  store ptr null, ptr %retval, align 8
  br label %return

if.end26:                                         ; preds = %if.end22
  %28 = load ptr, ptr %target.addr, align 8
  %29 = load ptr, ptr %patch_child, align 8
  %string27 = getelementptr inbounds %struct.cJSON, ptr %29, i32 0, i32 7
  %30 = load ptr, ptr %string27, align 8
  %31 = load ptr, ptr %replacement, align 8
  %call28 = call i32 @cJSON_AddItemToObject(ptr noundef %28, ptr noundef %30, ptr noundef %31)
  br label %if.end29

if.end29:                                         ; preds = %if.end26, %if.end13
  %32 = load ptr, ptr %patch_child, align 8
  %next = getelementptr inbounds %struct.cJSON, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %next, align 8
  store ptr %33, ptr %patch_child, align 8
  br label %while.cond, !llvm.loop !19

while.end:                                        ; preds = %while.cond
  %34 = load ptr, ptr %target.addr, align 8
  store ptr %34, ptr %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then25, %if.then
  %35 = load ptr, ptr %retval, align 8
  ret ptr %35
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSONUtils_MergePatchCaseSensitive(ptr noundef %target, ptr noundef %patch) #0 {
entry:
  %target.addr = alloca ptr, align 8
  %patch.addr = alloca ptr, align 8
  store ptr %target, ptr %target.addr, align 8
  store ptr %patch, ptr %patch.addr, align 8
  %0 = load ptr, ptr %target.addr, align 8
  %1 = load ptr, ptr %patch.addr, align 8
  %call = call ptr @merge_patch(ptr noundef %0, ptr noundef %1, i32 noundef 1)
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSONUtils_GenerateMergePatch(ptr noundef %from, ptr noundef %to) #0 {
entry:
  %from.addr = alloca ptr, align 8
  %to.addr = alloca ptr, align 8
  store ptr %from, ptr %from.addr, align 8
  store ptr %to, ptr %to.addr, align 8
  %0 = load ptr, ptr %from.addr, align 8
  %1 = load ptr, ptr %to.addr, align 8
  %call = call ptr @generate_merge_patch(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @generate_merge_patch(ptr noundef %from, ptr noundef %to, i32 noundef %case_sensitive) #0 {
entry:
  %retval = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %to.addr = alloca ptr, align 8
  %case_sensitive.addr = alloca i32, align 4
  %from_child = alloca ptr, align 8
  %to_child = alloca ptr, align 8
  %patch = alloca ptr, align 8
  %diff = alloca i32, align 4
  store ptr %from, ptr %from.addr, align 8
  store ptr %to, ptr %to.addr, align 8
  store i32 %case_sensitive, ptr %case_sensitive.addr, align 4
  store ptr null, ptr %from_child, align 8
  store ptr null, ptr %to_child, align 8
  store ptr null, ptr %patch, align 8
  %0 = load ptr, ptr %to.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call ptr @cJSON_CreateNull()
  store ptr %call, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %to.addr, align 8
  %call1 = call i32 @cJSON_IsObject(ptr noundef %1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then4

lor.lhs.false:                                    ; preds = %if.end
  %2 = load ptr, ptr %from.addr, align 8
  %call2 = call i32 @cJSON_IsObject(ptr noundef %2)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end6, label %if.then4

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  %3 = load ptr, ptr %to.addr, align 8
  %call5 = call ptr @cJSON_Duplicate(ptr noundef %3, i32 noundef 1)
  store ptr %call5, ptr %retval, align 8
  br label %return

if.end6:                                          ; preds = %lor.lhs.false
  %4 = load ptr, ptr %from.addr, align 8
  %5 = load i32, ptr %case_sensitive.addr, align 4
  call void @sort_object(ptr noundef %4, i32 noundef %5)
  %6 = load ptr, ptr %to.addr, align 8
  %7 = load i32, ptr %case_sensitive.addr, align 4
  call void @sort_object(ptr noundef %6, i32 noundef %7)
  %8 = load ptr, ptr %from.addr, align 8
  %child = getelementptr inbounds %struct.cJSON, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %child, align 8
  store ptr %9, ptr %from_child, align 8
  %10 = load ptr, ptr %to.addr, align 8
  %child7 = getelementptr inbounds %struct.cJSON, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %child7, align 8
  store ptr %11, ptr %to_child, align 8
  %call8 = call ptr @cJSON_CreateObject()
  store ptr %call8, ptr %patch, align 8
  %12 = load ptr, ptr %patch, align 8
  %cmp9 = icmp eq ptr %12, null
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end6
  store ptr null, ptr %retval, align 8
  br label %return

if.end11:                                         ; preds = %if.end6
  br label %while.cond

while.cond:                                       ; preds = %if.end46, %if.end11
  %13 = load ptr, ptr %from_child, align 8
  %tobool12 = icmp ne ptr %13, null
  br i1 %tobool12, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %14 = load ptr, ptr %to_child, align 8
  %tobool13 = icmp ne ptr %14, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %15 = phi i1 [ true, %while.cond ], [ %tobool13, %lor.rhs ]
  br i1 %15, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %16 = load ptr, ptr %from_child, align 8
  %cmp14 = icmp ne ptr %16, null
  br i1 %cmp14, label %if.then15, label %if.else21

if.then15:                                        ; preds = %while.body
  %17 = load ptr, ptr %to_child, align 8
  %cmp16 = icmp ne ptr %17, null
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.then15
  %18 = load ptr, ptr %from_child, align 8
  %string = getelementptr inbounds %struct.cJSON, ptr %18, i32 0, i32 7
  %19 = load ptr, ptr %string, align 8
  %20 = load ptr, ptr %to_child, align 8
  %string18 = getelementptr inbounds %struct.cJSON, ptr %20, i32 0, i32 7
  %21 = load ptr, ptr %string18, align 8
  %call19 = call i32 @strcmp(ptr noundef %19, ptr noundef %21)
  store i32 %call19, ptr %diff, align 4
  br label %if.end20

if.else:                                          ; preds = %if.then15
  store i32 -1, ptr %diff, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then17
  br label %if.end22

if.else21:                                        ; preds = %while.body
  store i32 1, ptr %diff, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.else21, %if.end20
  %22 = load i32, ptr %diff, align 4
  %cmp23 = icmp slt i32 %22, 0
  br i1 %cmp23, label %if.then24, label %if.else28

if.then24:                                        ; preds = %if.end22
  %23 = load ptr, ptr %patch, align 8
  %24 = load ptr, ptr %from_child, align 8
  %string25 = getelementptr inbounds %struct.cJSON, ptr %24, i32 0, i32 7
  %25 = load ptr, ptr %string25, align 8
  %call26 = call ptr @cJSON_CreateNull()
  %call27 = call i32 @cJSON_AddItemToObject(ptr noundef %23, ptr noundef %25, ptr noundef %call26)
  %26 = load ptr, ptr %from_child, align 8
  %next = getelementptr inbounds %struct.cJSON, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %next, align 8
  store ptr %27, ptr %from_child, align 8
  br label %if.end46

if.else28:                                        ; preds = %if.end22
  %28 = load i32, ptr %diff, align 4
  %cmp29 = icmp sgt i32 %28, 0
  br i1 %cmp29, label %if.then30, label %if.else35

if.then30:                                        ; preds = %if.else28
  %29 = load ptr, ptr %patch, align 8
  %30 = load ptr, ptr %to_child, align 8
  %string31 = getelementptr inbounds %struct.cJSON, ptr %30, i32 0, i32 7
  %31 = load ptr, ptr %string31, align 8
  %32 = load ptr, ptr %to_child, align 8
  %call32 = call ptr @cJSON_Duplicate(ptr noundef %32, i32 noundef 1)
  %call33 = call i32 @cJSON_AddItemToObject(ptr noundef %29, ptr noundef %31, ptr noundef %call32)
  %33 = load ptr, ptr %to_child, align 8
  %next34 = getelementptr inbounds %struct.cJSON, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %next34, align 8
  store ptr %34, ptr %to_child, align 8
  br label %if.end45

if.else35:                                        ; preds = %if.else28
  %35 = load ptr, ptr %from_child, align 8
  %36 = load ptr, ptr %to_child, align 8
  %37 = load i32, ptr %case_sensitive.addr, align 4
  %call36 = call i32 @compare_json(ptr noundef %35, ptr noundef %36, i32 noundef %37)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.end42, label %if.then38

if.then38:                                        ; preds = %if.else35
  %38 = load ptr, ptr %patch, align 8
  %39 = load ptr, ptr %to_child, align 8
  %string39 = getelementptr inbounds %struct.cJSON, ptr %39, i32 0, i32 7
  %40 = load ptr, ptr %string39, align 8
  %41 = load ptr, ptr %from_child, align 8
  %42 = load ptr, ptr %to_child, align 8
  %call40 = call ptr @cJSONUtils_GenerateMergePatch(ptr noundef %41, ptr noundef %42)
  %call41 = call i32 @cJSON_AddItemToObject(ptr noundef %38, ptr noundef %40, ptr noundef %call40)
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %if.else35
  %43 = load ptr, ptr %from_child, align 8
  %next43 = getelementptr inbounds %struct.cJSON, ptr %43, i32 0, i32 0
  %44 = load ptr, ptr %next43, align 8
  store ptr %44, ptr %from_child, align 8
  %45 = load ptr, ptr %to_child, align 8
  %next44 = getelementptr inbounds %struct.cJSON, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %next44, align 8
  store ptr %46, ptr %to_child, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.end42, %if.then30
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then24
  br label %while.cond, !llvm.loop !20

while.end:                                        ; preds = %lor.end
  %47 = load ptr, ptr %patch, align 8
  %child47 = getelementptr inbounds %struct.cJSON, ptr %47, i32 0, i32 2
  %48 = load ptr, ptr %child47, align 8
  %cmp48 = icmp eq ptr %48, null
  br i1 %cmp48, label %if.then49, label %if.end50

if.then49:                                        ; preds = %while.end
  %49 = load ptr, ptr %patch, align 8
  call void @cJSON_Delete(ptr noundef %49)
  store ptr null, ptr %retval, align 8
  br label %return

if.end50:                                         ; preds = %while.end
  %50 = load ptr, ptr %patch, align 8
  store ptr %50, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end50, %if.then49, %if.then10, %if.then4, %if.then
  %51 = load ptr, ptr %retval, align 8
  ret ptr %51
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSONUtils_GenerateMergePatchCaseSensitive(ptr noundef %from, ptr noundef %to) #0 {
entry:
  %from.addr = alloca ptr, align 8
  %to.addr = alloca ptr, align 8
  store ptr %from, ptr %from.addr, align 8
  store ptr %to, ptr %to.addr, align 8
  %0 = load ptr, ptr %from.addr, align 8
  %1 = load ptr, ptr %to.addr, align 8
  %call = call ptr @generate_merge_patch(ptr noundef %0, ptr noundef %1, i32 noundef 1)
  ret ptr %call
}

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #3

; Function Attrs: nounwind ssp uwtable
define internal i32 @decode_array_index_from_pointer(ptr noundef %pointer, ptr noundef %index) #0 {
entry:
  %retval = alloca i32, align 4
  %pointer.addr = alloca ptr, align 8
  %index.addr = alloca ptr, align 8
  %parsed_index = alloca i64, align 8
  %position = alloca i64, align 8
  store ptr %pointer, ptr %pointer.addr, align 8
  store ptr %index, ptr %index.addr, align 8
  store i64 0, ptr %parsed_index, align 8
  store i64 0, ptr %position, align 8
  %0 = load ptr, ptr %pointer.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 48
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %pointer.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %2, i64 1
  %3 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %3 to i32
  %cmp4 = icmp ne i32 %conv3, 0
  br i1 %cmp4, label %land.lhs.true6, label %if.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %4 = load ptr, ptr %pointer.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %4, i64 1
  %5 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %5 to i32
  %cmp9 = icmp ne i32 %conv8, 47
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true6
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true6, %land.lhs.true, %entry
  store i64 0, ptr %position, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load ptr, ptr %pointer.addr, align 8
  %7 = load i64, ptr %position, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %6, i64 %7
  %8 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %8 to i32
  %cmp13 = icmp sge i32 %conv12, 48
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %9 = load ptr, ptr %pointer.addr, align 8
  %10 = load i64, ptr %position, align 8
  %arrayidx15 = getelementptr inbounds i8, ptr %9, i64 %10
  %11 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %11 to i32
  %cmp17 = icmp sle i32 %conv16, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %12 = phi i1 [ false, %for.cond ], [ %cmp17, %land.rhs ]
  br i1 %12, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %13 = load i64, ptr %parsed_index, align 8
  %mul = mul i64 10, %13
  %14 = load ptr, ptr %pointer.addr, align 8
  %15 = load i64, ptr %position, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %14, i64 %15
  %16 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %16 to i32
  %sub = sub nsw i32 %conv20, 48
  %conv21 = sext i32 %sub to i64
  %add = add i64 %mul, %conv21
  store i64 %add, ptr %parsed_index, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i64, ptr %position, align 8
  %inc = add i64 %17, 1
  store i64 %inc, ptr %position, align 8
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %land.end
  %18 = load ptr, ptr %pointer.addr, align 8
  %19 = load i64, ptr %position, align 8
  %arrayidx22 = getelementptr inbounds i8, ptr %18, i64 %19
  %20 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %20 to i32
  %cmp24 = icmp ne i32 %conv23, 0
  br i1 %cmp24, label %land.lhs.true26, label %if.end32

land.lhs.true26:                                  ; preds = %for.end
  %21 = load ptr, ptr %pointer.addr, align 8
  %22 = load i64, ptr %position, align 8
  %arrayidx27 = getelementptr inbounds i8, ptr %21, i64 %22
  %23 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %23 to i32
  %cmp29 = icmp ne i32 %conv28, 47
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %land.lhs.true26
  store i32 0, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %land.lhs.true26, %for.end
  %24 = load i64, ptr %parsed_index, align 8
  %25 = load ptr, ptr %index.addr, align 8
  store i64 %24, ptr %25, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end32, %if.then31, %if.then
  %26 = load i32, ptr %retval, align 4
  ret i32 %26
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @get_array_item(ptr noundef %array, i64 noundef %item) #0 {
entry:
  %array.addr = alloca ptr, align 8
  %item.addr = alloca i64, align 8
  %child = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8
  store i64 %item, ptr %item.addr, align 8
  %0 = load ptr, ptr %array.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %array.addr, align 8
  %child1 = getelementptr inbounds %struct.cJSON, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %child1, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %2, %cond.true ], [ null, %cond.false ]
  store ptr %cond, ptr %child, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %3 = load ptr, ptr %child, align 8
  %cmp = icmp ne ptr %3, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i64, ptr %item.addr, align 8
  %cmp2 = icmp ugt i64 %4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load i64, ptr %item.addr, align 8
  %dec = add i64 %6, -1
  store i64 %dec, ptr %item.addr, align 8
  %7 = load ptr, ptr %child, align 8
  %next = getelementptr inbounds %struct.cJSON, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %next, align 8
  store ptr %8, ptr %child, align 8
  br label %while.cond, !llvm.loop !22

while.end:                                        ; preds = %land.end
  %9 = load ptr, ptr %child, align 8
  ret ptr %9
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @compare_pointers(ptr noundef %name, ptr noundef %pointer, i32 noundef %case_sensitive) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %pointer.addr = alloca ptr, align 8
  %case_sensitive.addr = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  store ptr %pointer, ptr %pointer.addr, align 8
  store i32 %case_sensitive, ptr %case_sensitive.addr, align 4
  %0 = load ptr, ptr %name.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %pointer.addr, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load ptr, ptr %name.addr, align 8
  %3 = load i8, ptr %2, align 1
  %conv = zext i8 %3 to i32
  %cmp2 = icmp ne i32 %conv, 0
  br i1 %cmp2, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.cond
  %4 = load ptr, ptr %pointer.addr, align 8
  %5 = load i8, ptr %4, align 1
  %conv4 = zext i8 %5 to i32
  %cmp5 = icmp ne i32 %conv4, 0
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %6 = load ptr, ptr %pointer.addr, align 8
  %7 = load i8, ptr %6, align 1
  %conv7 = zext i8 %7 to i32
  %cmp8 = icmp ne i32 %conv7, 47
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %for.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %for.cond ], [ %cmp8, %land.rhs ]
  br i1 %8, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %9 = load ptr, ptr %pointer.addr, align 8
  %10 = load i8, ptr %9, align 1
  %conv10 = zext i8 %10 to i32
  %cmp11 = icmp eq i32 %conv10, 126
  br i1 %cmp11, label %if.then13, label %if.else32

if.then13:                                        ; preds = %for.body
  %11 = load ptr, ptr %pointer.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %11, i64 1
  %12 = load i8, ptr %arrayidx, align 1
  %conv14 = zext i8 %12 to i32
  %cmp15 = icmp ne i32 %conv14, 48
  br i1 %cmp15, label %land.lhs.true21, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %if.then13
  %13 = load ptr, ptr %name.addr, align 8
  %14 = load i8, ptr %13, align 1
  %conv18 = zext i8 %14 to i32
  %cmp19 = icmp ne i32 %conv18, 126
  br i1 %cmp19, label %land.lhs.true21, label %if.else

land.lhs.true21:                                  ; preds = %lor.lhs.false17, %if.then13
  %15 = load ptr, ptr %pointer.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, ptr %15, i64 1
  %16 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %16 to i32
  %cmp24 = icmp ne i32 %conv23, 49
  br i1 %cmp24, label %if.then30, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %land.lhs.true21
  %17 = load ptr, ptr %name.addr, align 8
  %18 = load i8, ptr %17, align 1
  %conv27 = zext i8 %18 to i32
  %cmp28 = icmp ne i32 %conv27, 47
  br i1 %cmp28, label %if.then30, label %if.else

if.then30:                                        ; preds = %lor.lhs.false26, %land.lhs.true21
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %lor.lhs.false26, %lor.lhs.false17
  %19 = load ptr, ptr %pointer.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %19, i32 1
  store ptr %incdec.ptr, ptr %pointer.addr, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.else
  br label %if.end48

if.else32:                                        ; preds = %for.body
  %20 = load i32, ptr %case_sensitive.addr, align 4
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %lor.lhs.false39, label %land.lhs.true33

land.lhs.true33:                                  ; preds = %if.else32
  %21 = load ptr, ptr %name.addr, align 8
  %22 = load i8, ptr %21, align 1
  %conv34 = zext i8 %22 to i32
  %call = call i32 @tolower(i32 noundef %conv34) #7
  %23 = load ptr, ptr %pointer.addr, align 8
  %24 = load i8, ptr %23, align 1
  %conv35 = zext i8 %24 to i32
  %call36 = call i32 @tolower(i32 noundef %conv35) #7
  %cmp37 = icmp ne i32 %call, %call36
  br i1 %cmp37, label %if.then46, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %land.lhs.true33, %if.else32
  %25 = load i32, ptr %case_sensitive.addr, align 4
  %tobool40 = icmp ne i32 %25, 0
  br i1 %tobool40, label %land.lhs.true41, label %if.end47

land.lhs.true41:                                  ; preds = %lor.lhs.false39
  %26 = load ptr, ptr %name.addr, align 8
  %27 = load i8, ptr %26, align 1
  %conv42 = zext i8 %27 to i32
  %28 = load ptr, ptr %pointer.addr, align 8
  %29 = load i8, ptr %28, align 1
  %conv43 = zext i8 %29 to i32
  %cmp44 = icmp ne i32 %conv42, %conv43
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %land.lhs.true41, %land.lhs.true33
  store i32 0, ptr %retval, align 4
  br label %return

if.end47:                                         ; preds = %land.lhs.true41, %lor.lhs.false39
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.end31
  br label %for.inc

for.inc:                                          ; preds = %if.end48
  %30 = load ptr, ptr %name.addr, align 8
  %incdec.ptr49 = getelementptr inbounds i8, ptr %30, i32 1
  store ptr %incdec.ptr49, ptr %name.addr, align 8
  %31 = load ptr, ptr %pointer.addr, align 8
  %incdec.ptr50 = getelementptr inbounds i8, ptr %31, i32 1
  store ptr %incdec.ptr50, ptr %pointer.addr, align 8
  br label %for.cond, !llvm.loop !23

for.end:                                          ; preds = %land.end
  %32 = load ptr, ptr %pointer.addr, align 8
  %33 = load i8, ptr %32, align 1
  %conv51 = zext i8 %33 to i32
  %cmp52 = icmp ne i32 %conv51, 0
  br i1 %cmp52, label %land.rhs54, label %land.end58

land.rhs54:                                       ; preds = %for.end
  %34 = load ptr, ptr %pointer.addr, align 8
  %35 = load i8, ptr %34, align 1
  %conv55 = zext i8 %35 to i32
  %cmp56 = icmp ne i32 %conv55, 47
  br label %land.end58

land.end58:                                       ; preds = %land.rhs54, %for.end
  %36 = phi i1 [ false, %for.end ], [ %cmp56, %land.rhs54 ]
  %land.ext = zext i1 %36 to i32
  %37 = load ptr, ptr %name.addr, align 8
  %38 = load i8, ptr %37, align 1
  %conv59 = zext i8 %38 to i32
  %cmp60 = icmp ne i32 %conv59, 0
  %conv61 = zext i1 %cmp60 to i32
  %cmp62 = icmp ne i32 %land.ext, %conv61
  br i1 %cmp62, label %if.then64, label %if.end65

if.then64:                                        ; preds = %land.end58
  store i32 0, ptr %retval, align 4
  br label %return

if.end65:                                         ; preds = %land.end58
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end65, %if.then64, %if.then46, %if.then30, %if.then
  %39 = load i32, ptr %retval, align 4
  ret i32 %39
}

; Function Attrs: nounwind readonly willreturn
declare i32 @tolower(i32 noundef) #4

; Function Attrs: nounwind ssp uwtable
define internal ptr @get_object_item(ptr noundef %object, ptr noundef %name, i32 noundef %case_sensitive) #0 {
entry:
  %retval = alloca ptr, align 8
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %case_sensitive.addr = alloca i32, align 4
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store i32 %case_sensitive, ptr %case_sensitive.addr, align 4
  %0 = load i32, ptr %case_sensitive.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %object.addr, align 8
  %2 = load ptr, ptr %name.addr, align 8
  %call = call ptr @cJSON_GetObjectItemCaseSensitive(ptr noundef %1, ptr noundef %2)
  store ptr %call, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %object.addr, align 8
  %4 = load ptr, ptr %name.addr, align 8
  %call1 = call ptr @cJSON_GetObjectItem(ptr noundef %3, ptr noundef %4)
  store ptr %call1, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8
  ret ptr %5
}

declare i32 @cJSON_IsString(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @decode_patch_operation(ptr noundef %patch, i32 noundef %case_sensitive) #0 {
entry:
  %retval = alloca i32, align 4
  %patch.addr = alloca ptr, align 8
  %case_sensitive.addr = alloca i32, align 4
  %operation = alloca ptr, align 8
  store ptr %patch, ptr %patch.addr, align 8
  store i32 %case_sensitive, ptr %case_sensitive.addr, align 4
  %0 = load ptr, ptr %patch.addr, align 8
  %1 = load i32, ptr %case_sensitive.addr, align 4
  %call = call ptr @get_object_item(ptr noundef %0, ptr noundef @.str.6, i32 noundef %1)
  store ptr %call, ptr %operation, align 8
  %2 = load ptr, ptr %operation, align 8
  %call1 = call i32 @cJSON_IsString(ptr noundef %2)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %operation, align 8
  %valuestring = getelementptr inbounds %struct.cJSON, ptr %3, i32 0, i32 4
  %4 = load ptr, ptr %valuestring, align 8
  %call2 = call i32 @strcmp(ptr noundef %4, ptr noundef @.str.7)
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %5 = load ptr, ptr %operation, align 8
  %valuestring5 = getelementptr inbounds %struct.cJSON, ptr %5, i32 0, i32 4
  %6 = load ptr, ptr %valuestring5, align 8
  %call6 = call i32 @strcmp(ptr noundef %6, ptr noundef @.str.8)
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end4
  store i32 2, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end4
  %7 = load ptr, ptr %operation, align 8
  %valuestring10 = getelementptr inbounds %struct.cJSON, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %valuestring10, align 8
  %call11 = call i32 @strcmp(ptr noundef %8, ptr noundef @.str.9)
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  store i32 3, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end9
  %9 = load ptr, ptr %operation, align 8
  %valuestring15 = getelementptr inbounds %struct.cJSON, ptr %9, i32 0, i32 4
  %10 = load ptr, ptr %valuestring15, align 8
  %call16 = call i32 @strcmp(ptr noundef %10, ptr noundef @.str.10)
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end14
  %11 = load ptr, ptr %operation, align 8
  %valuestring20 = getelementptr inbounds %struct.cJSON, ptr %11, i32 0, i32 4
  %12 = load ptr, ptr %valuestring20, align 8
  %call21 = call i32 @strcmp(ptr noundef %12, ptr noundef @.str.11)
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end19
  store i32 5, ptr %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.end19
  %13 = load ptr, ptr %operation, align 8
  %valuestring25 = getelementptr inbounds %struct.cJSON, ptr %13, i32 0, i32 4
  %14 = load ptr, ptr %valuestring25, align 8
  %call26 = call i32 @strcmp(ptr noundef %14, ptr noundef @.str.12)
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end24
  store i32 6, ptr %retval, align 4
  br label %return

if.end29:                                         ; preds = %if.end24
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end29, %if.then28, %if.then23, %if.then18, %if.then13, %if.then8, %if.then3, %if.then
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @compare_json(ptr noundef %a, ptr noundef %b, i32 noundef %case_sensitive) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %case_sensitive.addr = alloca i32, align 4
  %identical = alloca i32, align 4
  %identical42 = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store i32 %case_sensitive, ptr %case_sensitive.addr, align 4
  %0 = load ptr, ptr %a.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %b.addr, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %a.addr, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %2, i32 0, i32 3
  %3 = load i32, ptr %type, align 8
  %and = and i32 %3, 255
  %4 = load ptr, ptr %b.addr, align 8
  %type3 = getelementptr inbounds %struct.cJSON, ptr %4, i32 0, i32 3
  %5 = load i32, ptr %type3, align 8
  %and4 = and i32 %5, 255
  %cmp5 = icmp ne i32 %and, %and4
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %6 = load ptr, ptr %a.addr, align 8
  %type6 = getelementptr inbounds %struct.cJSON, ptr %6, i32 0, i32 3
  %7 = load i32, ptr %type6, align 8
  %and7 = and i32 %7, 255
  switch i32 %and7, label %sw.default [
    i32 8, label %sw.bb
    i32 16, label %sw.bb13
    i32 32, label %sw.bb19
    i32 64, label %sw.bb33
  ]

sw.bb:                                            ; preds = %if.end
  %8 = load ptr, ptr %a.addr, align 8
  %valueint = getelementptr inbounds %struct.cJSON, ptr %8, i32 0, i32 5
  %9 = load i32, ptr %valueint, align 8
  %10 = load ptr, ptr %b.addr, align 8
  %valueint8 = getelementptr inbounds %struct.cJSON, ptr %10, i32 0, i32 5
  %11 = load i32, ptr %valueint8, align 8
  %cmp9 = icmp ne i32 %9, %11
  br i1 %cmp9, label %if.then12, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %sw.bb
  %12 = load ptr, ptr %a.addr, align 8
  %valuedouble = getelementptr inbounds %struct.cJSON, ptr %12, i32 0, i32 6
  %13 = load double, ptr %valuedouble, align 8
  %14 = load ptr, ptr %b.addr, align 8
  %valuedouble11 = getelementptr inbounds %struct.cJSON, ptr %14, i32 0, i32 6
  %15 = load double, ptr %valuedouble11, align 8
  %call = call i32 @compare_double(double noundef %13, double noundef %15)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then12

if.then12:                                        ; preds = %lor.lhs.false10, %sw.bb
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %lor.lhs.false10
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb13:                                          ; preds = %if.end
  %16 = load ptr, ptr %a.addr, align 8
  %valuestring = getelementptr inbounds %struct.cJSON, ptr %16, i32 0, i32 4
  %17 = load ptr, ptr %valuestring, align 8
  %18 = load ptr, ptr %b.addr, align 8
  %valuestring14 = getelementptr inbounds %struct.cJSON, ptr %18, i32 0, i32 4
  %19 = load ptr, ptr %valuestring14, align 8
  %call15 = call i32 @strcmp(ptr noundef %17, ptr noundef %19)
  %cmp16 = icmp ne i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.else18

if.then17:                                        ; preds = %sw.bb13
  store i32 0, ptr %retval, align 4
  br label %return

if.else18:                                        ; preds = %sw.bb13
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb19:                                          ; preds = %if.end
  %20 = load ptr, ptr %a.addr, align 8
  %child = getelementptr inbounds %struct.cJSON, ptr %20, i32 0, i32 2
  %21 = load ptr, ptr %child, align 8
  store ptr %21, ptr %a.addr, align 8
  %22 = load ptr, ptr %b.addr, align 8
  %child20 = getelementptr inbounds %struct.cJSON, ptr %22, i32 0, i32 2
  %23 = load ptr, ptr %child20, align 8
  store ptr %23, ptr %b.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb19
  %24 = load ptr, ptr %a.addr, align 8
  %cmp21 = icmp ne ptr %24, null
  br i1 %cmp21, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %25 = load ptr, ptr %b.addr, align 8
  %cmp22 = icmp ne ptr %25, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %26 = phi i1 [ false, %for.cond ], [ %cmp22, %land.rhs ]
  br i1 %26, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %27 = load ptr, ptr %a.addr, align 8
  %28 = load ptr, ptr %b.addr, align 8
  %29 = load i32, ptr %case_sensitive.addr, align 4
  %call23 = call i32 @compare_json(ptr noundef %27, ptr noundef %28, i32 noundef %29)
  store i32 %call23, ptr %identical, align 4
  %30 = load i32, ptr %identical, align 4
  %tobool24 = icmp ne i32 %30, 0
  br i1 %tobool24, label %if.end26, label %if.then25

if.then25:                                        ; preds = %for.body
  store i32 0, ptr %retval, align 4
  br label %return

if.end26:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end26
  %31 = load ptr, ptr %a.addr, align 8
  %next = getelementptr inbounds %struct.cJSON, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %next, align 8
  store ptr %32, ptr %a.addr, align 8
  %33 = load ptr, ptr %b.addr, align 8
  %next27 = getelementptr inbounds %struct.cJSON, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %next27, align 8
  store ptr %34, ptr %b.addr, align 8
  br label %for.cond, !llvm.loop !24

for.end:                                          ; preds = %land.end
  %35 = load ptr, ptr %a.addr, align 8
  %cmp28 = icmp ne ptr %35, null
  br i1 %cmp28, label %if.then31, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %for.end
  %36 = load ptr, ptr %b.addr, align 8
  %cmp30 = icmp ne ptr %36, null
  br i1 %cmp30, label %if.then31, label %if.else32

if.then31:                                        ; preds = %lor.lhs.false29, %for.end
  store i32 0, ptr %retval, align 4
  br label %return

if.else32:                                        ; preds = %lor.lhs.false29
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb33:                                          ; preds = %if.end
  %37 = load ptr, ptr %a.addr, align 8
  %38 = load i32, ptr %case_sensitive.addr, align 4
  call void @sort_object(ptr noundef %37, i32 noundef %38)
  %39 = load ptr, ptr %b.addr, align 8
  %40 = load i32, ptr %case_sensitive.addr, align 4
  call void @sort_object(ptr noundef %39, i32 noundef %40)
  %41 = load ptr, ptr %a.addr, align 8
  %child34 = getelementptr inbounds %struct.cJSON, ptr %41, i32 0, i32 2
  %42 = load ptr, ptr %child34, align 8
  store ptr %42, ptr %a.addr, align 8
  %43 = load ptr, ptr %b.addr, align 8
  %child35 = getelementptr inbounds %struct.cJSON, ptr %43, i32 0, i32 2
  %44 = load ptr, ptr %child35, align 8
  store ptr %44, ptr %b.addr, align 8
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc52, %sw.bb33
  %45 = load ptr, ptr %a.addr, align 8
  %cmp37 = icmp ne ptr %45, null
  br i1 %cmp37, label %land.rhs38, label %land.end40

land.rhs38:                                       ; preds = %for.cond36
  %46 = load ptr, ptr %b.addr, align 8
  %cmp39 = icmp ne ptr %46, null
  br label %land.end40

land.end40:                                       ; preds = %land.rhs38, %for.cond36
  %47 = phi i1 [ false, %for.cond36 ], [ %cmp39, %land.rhs38 ]
  br i1 %47, label %for.body41, label %for.end55

for.body41:                                       ; preds = %land.end40
  store i32 0, ptr %identical42, align 4
  %48 = load ptr, ptr %a.addr, align 8
  %string = getelementptr inbounds %struct.cJSON, ptr %48, i32 0, i32 7
  %49 = load ptr, ptr %string, align 8
  %50 = load ptr, ptr %b.addr, align 8
  %string43 = getelementptr inbounds %struct.cJSON, ptr %50, i32 0, i32 7
  %51 = load ptr, ptr %string43, align 8
  %52 = load i32, ptr %case_sensitive.addr, align 4
  %call44 = call i32 @compare_strings(ptr noundef %49, ptr noundef %51, i32 noundef %52)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %for.body41
  store i32 0, ptr %retval, align 4
  br label %return

if.end47:                                         ; preds = %for.body41
  %53 = load ptr, ptr %a.addr, align 8
  %54 = load ptr, ptr %b.addr, align 8
  %55 = load i32, ptr %case_sensitive.addr, align 4
  %call48 = call i32 @compare_json(ptr noundef %53, ptr noundef %54, i32 noundef %55)
  store i32 %call48, ptr %identical42, align 4
  %56 = load i32, ptr %identical42, align 4
  %tobool49 = icmp ne i32 %56, 0
  br i1 %tobool49, label %if.end51, label %if.then50

if.then50:                                        ; preds = %if.end47
  store i32 0, ptr %retval, align 4
  br label %return

if.end51:                                         ; preds = %if.end47
  br label %for.inc52

for.inc52:                                        ; preds = %if.end51
  %57 = load ptr, ptr %a.addr, align 8
  %next53 = getelementptr inbounds %struct.cJSON, ptr %57, i32 0, i32 0
  %58 = load ptr, ptr %next53, align 8
  store ptr %58, ptr %a.addr, align 8
  %59 = load ptr, ptr %b.addr, align 8
  %next54 = getelementptr inbounds %struct.cJSON, ptr %59, i32 0, i32 0
  %60 = load ptr, ptr %next54, align 8
  store ptr %60, ptr %b.addr, align 8
  br label %for.cond36, !llvm.loop !25

for.end55:                                        ; preds = %land.end40
  %61 = load ptr, ptr %a.addr, align 8
  %cmp56 = icmp ne ptr %61, null
  br i1 %cmp56, label %if.then59, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %for.end55
  %62 = load ptr, ptr %b.addr, align 8
  %cmp58 = icmp ne ptr %62, null
  br i1 %cmp58, label %if.then59, label %if.else60

if.then59:                                        ; preds = %lor.lhs.false57, %for.end55
  store i32 0, ptr %retval, align 4
  br label %return

if.else60:                                        ; preds = %lor.lhs.false57
  store i32 1, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %if.else60, %if.then59, %if.then50, %if.then46, %if.else32, %if.then31, %if.then25, %if.else18, %if.then17, %if.else, %if.then12, %if.then
  %63 = load i32, ptr %retval, align 4
  ret i32 %63
}

; Function Attrs: nounwind ssp uwtable
define internal void @overwrite_item(ptr noundef %root, ptr noundef %replacement) #0 {
entry:
  %root.addr = alloca ptr, align 8
  store ptr %root, ptr %root.addr, align 8
  %0 = load ptr, ptr %root.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %root.addr, align 8
  %string = getelementptr inbounds %struct.cJSON, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %string, align 8
  %cmp1 = icmp ne ptr %2, null
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %root.addr, align 8
  %string3 = getelementptr inbounds %struct.cJSON, ptr %3, i32 0, i32 7
  %4 = load ptr, ptr %string3, align 8
  call void @cJSON_free(ptr noundef %4)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %5 = load ptr, ptr %root.addr, align 8
  %valuestring = getelementptr inbounds %struct.cJSON, ptr %5, i32 0, i32 4
  %6 = load ptr, ptr %valuestring, align 8
  %cmp5 = icmp ne ptr %6, null
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  %7 = load ptr, ptr %root.addr, align 8
  %valuestring7 = getelementptr inbounds %struct.cJSON, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %valuestring7, align 8
  call void @cJSON_free(ptr noundef %8)
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4
  %9 = load ptr, ptr %root.addr, align 8
  %child = getelementptr inbounds %struct.cJSON, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %child, align 8
  %cmp9 = icmp ne ptr %10, null
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end8
  %11 = load ptr, ptr %root.addr, align 8
  %child11 = getelementptr inbounds %struct.cJSON, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %child11, align 8
  call void @cJSON_Delete(ptr noundef %12)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8
  %13 = load ptr, ptr %root.addr, align 8
  %14 = load ptr, ptr %root.addr, align 8
  %15 = call i64 @llvm.objectsize.i64.p0(ptr %14, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %13, ptr noundef %replacement, i64 noundef 64, i64 noundef %15) #6
  br label %return

return:                                           ; preds = %if.end12, %if.then
  ret void
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare ptr @cJSON_Duplicate(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal ptr @detach_path(ptr noundef %object, ptr noundef %path, i32 noundef %case_sensitive) #0 {
entry:
  %object.addr = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %case_sensitive.addr = alloca i32, align 4
  %parent_pointer = alloca ptr, align 8
  %child_pointer = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %detached_item = alloca ptr, align 8
  %index = alloca i64, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %path, ptr %path.addr, align 8
  store i32 %case_sensitive, ptr %case_sensitive.addr, align 4
  store ptr null, ptr %parent_pointer, align 8
  store ptr null, ptr %child_pointer, align 8
  store ptr null, ptr %parent, align 8
  store ptr null, ptr %detached_item, align 8
  %0 = load ptr, ptr %path.addr, align 8
  %call = call ptr @cJSONUtils_strdup(ptr noundef %0)
  store ptr %call, ptr %parent_pointer, align 8
  %1 = load ptr, ptr %parent_pointer, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %parent_pointer, align 8
  %call1 = call ptr @strrchr(ptr noundef %2, i32 noundef 47)
  store ptr %call1, ptr %child_pointer, align 8
  %3 = load ptr, ptr %child_pointer, align 8
  %cmp2 = icmp eq ptr %3, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %child_pointer, align 8
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 0
  store i8 0, ptr %arrayidx, align 1
  %5 = load ptr, ptr %child_pointer, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %child_pointer, align 8
  %6 = load ptr, ptr %object.addr, align 8
  %7 = load ptr, ptr %parent_pointer, align 8
  %8 = load i32, ptr %case_sensitive.addr, align 4
  %call5 = call ptr @get_item_from_pointer(ptr noundef %6, ptr noundef %7, i32 noundef %8)
  store ptr %call5, ptr %parent, align 8
  %9 = load ptr, ptr %child_pointer, align 8
  call void @decode_pointer_inplace(ptr noundef %9)
  %10 = load ptr, ptr %parent, align 8
  %call6 = call i32 @cJSON_IsArray(ptr noundef %10)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end4
  store i64 0, ptr %index, align 8
  %11 = load ptr, ptr %child_pointer, align 8
  %call8 = call i32 @decode_array_index_from_pointer(ptr noundef %11, ptr noundef %index)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.then7
  br label %cleanup

if.end11:                                         ; preds = %if.then7
  %12 = load ptr, ptr %parent, align 8
  %13 = load i64, ptr %index, align 8
  %call12 = call ptr @detach_item_from_array(ptr noundef %12, i64 noundef %13)
  store ptr %call12, ptr %detached_item, align 8
  br label %if.end19

if.else:                                          ; preds = %if.end4
  %14 = load ptr, ptr %parent, align 8
  %call13 = call i32 @cJSON_IsObject(ptr noundef %14)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then15, label %if.else17

if.then15:                                        ; preds = %if.else
  %15 = load ptr, ptr %parent, align 8
  %16 = load ptr, ptr %child_pointer, align 8
  %call16 = call ptr @cJSON_DetachItemFromObject(ptr noundef %15, ptr noundef %16)
  store ptr %call16, ptr %detached_item, align 8
  br label %if.end18

if.else17:                                        ; preds = %if.else
  br label %cleanup

if.end18:                                         ; preds = %if.then15
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end11
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.else17, %if.then10, %if.then3, %if.then
  %17 = load ptr, ptr %parent_pointer, align 8
  %cmp20 = icmp ne ptr %17, null
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %cleanup
  %18 = load ptr, ptr %parent_pointer, align 8
  call void @cJSON_free(ptr noundef %18)
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %cleanup
  %19 = load ptr, ptr %detached_item, align 8
  ret ptr %19
}

declare void @cJSON_Delete(ptr noundef) #1

declare ptr @strrchr(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @decode_pointer_inplace(ptr noundef %string) #0 {
entry:
  %string.addr = alloca ptr, align 8
  %decoded_string = alloca ptr, align 8
  store ptr %string, ptr %string.addr, align 8
  %0 = load ptr, ptr %string.addr, align 8
  store ptr %0, ptr %decoded_string, align 8
  %1 = load ptr, ptr %string.addr, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load ptr, ptr %string.addr, align 8
  %3 = load i8, ptr %2, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %string.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 0
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %cmp1 = icmp eq i32 %conv, 126
  br i1 %cmp1, label %if.then3, label %if.end19

if.then3:                                         ; preds = %for.body
  %6 = load ptr, ptr %string.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %6, i64 1
  %7 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %7 to i32
  %cmp6 = icmp eq i32 %conv5, 48
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then3
  %8 = load ptr, ptr %decoded_string, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %8, i64 0
  store i8 126, ptr %arrayidx9, align 1
  br label %if.end18

if.else:                                          ; preds = %if.then3
  %9 = load ptr, ptr %string.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %9, i64 1
  %10 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %10 to i32
  %cmp12 = icmp eq i32 %conv11, 49
  br i1 %cmp12, label %if.then14, label %if.else16

if.then14:                                        ; preds = %if.else
  %11 = load ptr, ptr %decoded_string, align 8
  %arrayidx15 = getelementptr inbounds i8, ptr %11, i64 1
  store i8 47, ptr %arrayidx15, align 1
  br label %if.end17

if.else16:                                        ; preds = %if.else
  br label %return

if.end17:                                         ; preds = %if.then14
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then8
  %12 = load ptr, ptr %string.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %12, i32 1
  store ptr %incdec.ptr, ptr %string.addr, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end19
  %13 = load ptr, ptr %decoded_string, align 8
  %incdec.ptr20 = getelementptr inbounds i8, ptr %13, i32 1
  store ptr %incdec.ptr20, ptr %decoded_string, align 8
  %14 = load ptr, ptr %string.addr, align 8
  %incdec.ptr21 = getelementptr inbounds i8, ptr %14, i32 1
  store ptr %incdec.ptr21, ptr %string.addr, align 8
  br label %for.cond, !llvm.loop !26

for.end:                                          ; preds = %for.cond
  %15 = load ptr, ptr %decoded_string, align 8
  %arrayidx22 = getelementptr inbounds i8, ptr %15, i64 0
  store i8 0, ptr %arrayidx22, align 1
  br label %return

return:                                           ; preds = %for.end, %if.else16, %if.then
  ret void
}

declare i32 @strcmp(ptr noundef, ptr noundef) #1

declare i32 @cJSON_AddItemToArray(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @insert_item_in_array(ptr noundef %array, i64 noundef %which, ptr noundef %newitem) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca ptr, align 8
  %which.addr = alloca i64, align 8
  %newitem.addr = alloca ptr, align 8
  %child = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8
  store i64 %which, ptr %which.addr, align 8
  store ptr %newitem, ptr %newitem.addr, align 8
  %0 = load ptr, ptr %array.addr, align 8
  %child1 = getelementptr inbounds %struct.cJSON, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %child1, align 8
  store ptr %1, ptr %child, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load ptr, ptr %child, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load i64, ptr %which.addr, align 8
  %cmp = icmp ugt i64 %3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load ptr, ptr %child, align 8
  %next = getelementptr inbounds %struct.cJSON, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %next, align 8
  store ptr %6, ptr %child, align 8
  %7 = load i64, ptr %which.addr, align 8
  %dec = add i64 %7, -1
  store i64 %dec, ptr %which.addr, align 8
  br label %while.cond, !llvm.loop !27

while.end:                                        ; preds = %land.end
  %8 = load i64, ptr %which.addr, align 8
  %cmp2 = icmp ugt i64 %8, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.end
  %9 = load ptr, ptr %child, align 8
  %cmp3 = icmp eq ptr %9, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %10 = load ptr, ptr %array.addr, align 8
  %11 = load ptr, ptr %newitem.addr, align 8
  %call = call i32 @cJSON_AddItemToArray(ptr noundef %10, ptr noundef %11)
  store i32 1, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %12 = load ptr, ptr %child, align 8
  %13 = load ptr, ptr %newitem.addr, align 8
  %next6 = getelementptr inbounds %struct.cJSON, ptr %13, i32 0, i32 0
  store ptr %12, ptr %next6, align 8
  %14 = load ptr, ptr %child, align 8
  %prev = getelementptr inbounds %struct.cJSON, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %prev, align 8
  %16 = load ptr, ptr %newitem.addr, align 8
  %prev7 = getelementptr inbounds %struct.cJSON, ptr %16, i32 0, i32 1
  store ptr %15, ptr %prev7, align 8
  %17 = load ptr, ptr %newitem.addr, align 8
  %18 = load ptr, ptr %child, align 8
  %prev8 = getelementptr inbounds %struct.cJSON, ptr %18, i32 0, i32 1
  store ptr %17, ptr %prev8, align 8
  %19 = load ptr, ptr %child, align 8
  %20 = load ptr, ptr %array.addr, align 8
  %child9 = getelementptr inbounds %struct.cJSON, ptr %20, i32 0, i32 2
  %21 = load ptr, ptr %child9, align 8
  %cmp10 = icmp eq ptr %19, %21
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end5
  %22 = load ptr, ptr %newitem.addr, align 8
  %23 = load ptr, ptr %array.addr, align 8
  %child12 = getelementptr inbounds %struct.cJSON, ptr %23, i32 0, i32 2
  store ptr %22, ptr %child12, align 8
  br label %if.end15

if.else:                                          ; preds = %if.end5
  %24 = load ptr, ptr %newitem.addr, align 8
  %25 = load ptr, ptr %newitem.addr, align 8
  %prev13 = getelementptr inbounds %struct.cJSON, ptr %25, i32 0, i32 1
  %26 = load ptr, ptr %prev13, align 8
  %next14 = getelementptr inbounds %struct.cJSON, ptr %26, i32 0, i32 0
  store ptr %24, ptr %next14, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then11
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end15, %if.then4, %if.then
  %27 = load i32, ptr %retval, align 4
  ret i32 %27
}

declare void @cJSON_DeleteItemFromObjectCaseSensitive(ptr noundef, ptr noundef) #1

declare void @cJSON_DeleteItemFromObject(ptr noundef, ptr noundef) #1

declare i32 @cJSON_AddItemToObject(ptr noundef, ptr noundef, ptr noundef) #1

declare ptr @cJSON_GetObjectItemCaseSensitive(ptr noundef, ptr noundef) #1

declare ptr @cJSON_GetObjectItem(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @compare_double(double noundef %a, double noundef %b) #0 {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  %maxVal = alloca double, align 8
  store double %a, ptr %a.addr, align 8
  store double %b, ptr %b.addr, align 8
  %0 = load double, ptr %a.addr, align 8
  %1 = call double @llvm.fabs.f64(double %0)
  %2 = load double, ptr %b.addr, align 8
  %3 = call double @llvm.fabs.f64(double %2)
  %cmp = fcmp ogt double %1, %3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load double, ptr %a.addr, align 8
  %5 = call double @llvm.fabs.f64(double %4)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load double, ptr %b.addr, align 8
  %7 = call double @llvm.fabs.f64(double %6)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %5, %cond.true ], [ %7, %cond.false ]
  store double %cond, ptr %maxVal, align 8
  %8 = load double, ptr %a.addr, align 8
  %9 = load double, ptr %b.addr, align 8
  %sub = fsub double %8, %9
  %10 = call double @llvm.fabs.f64(double %sub)
  %11 = load double, ptr %maxVal, align 8
  %mul = fmul double %11, 0x3CB0000000000000
  %cmp1 = fcmp ole double %10, %mul
  %conv = zext i1 %cmp1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @compare_strings(ptr noundef %string1, ptr noundef %string2, i32 noundef %case_sensitive) #0 {
entry:
  %retval = alloca i32, align 4
  %string1.addr = alloca ptr, align 8
  %string2.addr = alloca ptr, align 8
  %case_sensitive.addr = alloca i32, align 4
  store ptr %string1, ptr %string1.addr, align 8
  store ptr %string2, ptr %string2.addr, align 8
  store i32 %case_sensitive, ptr %case_sensitive.addr, align 4
  %0 = load ptr, ptr %string1.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %string2.addr, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %string1.addr, align 8
  %3 = load ptr, ptr %string2.addr, align 8
  %cmp2 = icmp eq ptr %2, %3
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %4 = load i32, ptr %case_sensitive.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end4
  %5 = load ptr, ptr %string1.addr, align 8
  %6 = load ptr, ptr %string2.addr, align 8
  %call = call i32 @strcmp(ptr noundef %5, ptr noundef %6)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end6
  %7 = load ptr, ptr %string1.addr, align 8
  %8 = load i8, ptr %7, align 1
  %conv = zext i8 %8 to i32
  %call7 = call i32 @tolower(i32 noundef %conv) #7
  %9 = load ptr, ptr %string2.addr, align 8
  %10 = load i8, ptr %9, align 1
  %conv8 = zext i8 %10 to i32
  %call9 = call i32 @tolower(i32 noundef %conv8) #7
  %cmp10 = icmp eq i32 %call7, %call9
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %string1.addr, align 8
  %12 = load i8, ptr %11, align 1
  %conv12 = zext i8 %12 to i32
  %cmp13 = icmp eq i32 %conv12, 0
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %for.body
  store i32 0, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end16
  %13 = load ptr, ptr %string1.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %13, i32 1
  store ptr %incdec.ptr, ptr %string1.addr, align 8
  %14 = load ptr, ptr %string2.addr, align 8
  %incdec.ptr17 = getelementptr inbounds i8, ptr %14, i32 1
  store ptr %incdec.ptr17, ptr %string2.addr, align 8
  br label %for.cond, !llvm.loop !28

for.end:                                          ; preds = %for.cond
  %15 = load ptr, ptr %string1.addr, align 8
  %16 = load i8, ptr %15, align 1
  %conv18 = zext i8 %16 to i32
  %call19 = call i32 @tolower(i32 noundef %conv18) #7
  %17 = load ptr, ptr %string2.addr, align 8
  %18 = load i8, ptr %17, align 1
  %conv20 = zext i8 %18 to i32
  %call21 = call i32 @tolower(i32 noundef %conv20) #7
  %sub = sub nsw i32 %call19, %call21
  store i32 %sub, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then15, %if.then5, %if.then3, %if.then
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nounwind ssp uwtable
define internal ptr @detach_item_from_array(ptr noundef %array, i64 noundef %which) #0 {
entry:
  %retval = alloca ptr, align 8
  %array.addr = alloca ptr, align 8
  %which.addr = alloca i64, align 8
  %c = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8
  store i64 %which, ptr %which.addr, align 8
  %0 = load ptr, ptr %array.addr, align 8
  %child = getelementptr inbounds %struct.cJSON, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %child, align 8
  store ptr %1, ptr %c, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load ptr, ptr %c, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load i64, ptr %which.addr, align 8
  %cmp = icmp ugt i64 %3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load ptr, ptr %c, align 8
  %next = getelementptr inbounds %struct.cJSON, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %next, align 8
  store ptr %6, ptr %c, align 8
  %7 = load i64, ptr %which.addr, align 8
  %dec = add i64 %7, -1
  store i64 %dec, ptr %which.addr, align 8
  br label %while.cond, !llvm.loop !29

while.end:                                        ; preds = %land.end
  %8 = load ptr, ptr %c, align 8
  %tobool1 = icmp ne ptr %8, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %while.end
  %9 = load ptr, ptr %c, align 8
  %10 = load ptr, ptr %array.addr, align 8
  %child2 = getelementptr inbounds %struct.cJSON, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %child2, align 8
  %cmp3 = icmp ne ptr %9, %11
  br i1 %cmp3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %12 = load ptr, ptr %c, align 8
  %next5 = getelementptr inbounds %struct.cJSON, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %next5, align 8
  %14 = load ptr, ptr %c, align 8
  %prev = getelementptr inbounds %struct.cJSON, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %prev, align 8
  %next6 = getelementptr inbounds %struct.cJSON, ptr %15, i32 0, i32 0
  store ptr %13, ptr %next6, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end
  %16 = load ptr, ptr %c, align 8
  %next8 = getelementptr inbounds %struct.cJSON, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %next8, align 8
  %tobool9 = icmp ne ptr %17, null
  br i1 %tobool9, label %if.then10, label %if.end14

if.then10:                                        ; preds = %if.end7
  %18 = load ptr, ptr %c, align 8
  %prev11 = getelementptr inbounds %struct.cJSON, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %prev11, align 8
  %20 = load ptr, ptr %c, align 8
  %next12 = getelementptr inbounds %struct.cJSON, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %next12, align 8
  %prev13 = getelementptr inbounds %struct.cJSON, ptr %21, i32 0, i32 1
  store ptr %19, ptr %prev13, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end7
  %22 = load ptr, ptr %c, align 8
  %23 = load ptr, ptr %array.addr, align 8
  %child15 = getelementptr inbounds %struct.cJSON, ptr %23, i32 0, i32 2
  %24 = load ptr, ptr %child15, align 8
  %cmp16 = icmp eq ptr %22, %24
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end14
  %25 = load ptr, ptr %c, align 8
  %next18 = getelementptr inbounds %struct.cJSON, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %next18, align 8
  %27 = load ptr, ptr %array.addr, align 8
  %child19 = getelementptr inbounds %struct.cJSON, ptr %27, i32 0, i32 2
  store ptr %26, ptr %child19, align 8
  br label %if.end27

if.else:                                          ; preds = %if.end14
  %28 = load ptr, ptr %c, align 8
  %next20 = getelementptr inbounds %struct.cJSON, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %next20, align 8
  %cmp21 = icmp eq ptr %29, null
  br i1 %cmp21, label %if.then22, label %if.end26

if.then22:                                        ; preds = %if.else
  %30 = load ptr, ptr %c, align 8
  %prev23 = getelementptr inbounds %struct.cJSON, ptr %30, i32 0, i32 1
  %31 = load ptr, ptr %prev23, align 8
  %32 = load ptr, ptr %array.addr, align 8
  %child24 = getelementptr inbounds %struct.cJSON, ptr %32, i32 0, i32 2
  %33 = load ptr, ptr %child24, align 8
  %prev25 = getelementptr inbounds %struct.cJSON, ptr %33, i32 0, i32 1
  store ptr %31, ptr %prev25, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %if.else
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.then17
  %34 = load ptr, ptr %c, align 8
  %next28 = getelementptr inbounds %struct.cJSON, ptr %34, i32 0, i32 0
  store ptr null, ptr %next28, align 8
  %35 = load ptr, ptr %c, align 8
  %prev29 = getelementptr inbounds %struct.cJSON, ptr %35, i32 0, i32 1
  store ptr null, ptr %prev29, align 8
  %36 = load ptr, ptr %c, align 8
  store ptr %36, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end27, %if.then
  %37 = load ptr, ptr %retval, align 8
  ret ptr %37
}

declare ptr @cJSON_DetachItemFromObject(ptr noundef, ptr noundef) #1

declare ptr @cJSON_CreateObject() #1

declare ptr @cJSON_CreateString(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal ptr @sort_list(ptr noundef %list, i32 noundef %case_sensitive) #0 {
entry:
  %retval = alloca ptr, align 8
  %list.addr = alloca ptr, align 8
  %case_sensitive.addr = alloca i32, align 4
  %first = alloca ptr, align 8
  %second = alloca ptr, align 8
  %current_item = alloca ptr, align 8
  %result = alloca ptr, align 8
  %result_tail = alloca ptr, align 8
  %smaller = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  store i32 %case_sensitive, ptr %case_sensitive.addr, align 4
  %0 = load ptr, ptr %list.addr, align 8
  store ptr %0, ptr %first, align 8
  %1 = load ptr, ptr %list.addr, align 8
  store ptr %1, ptr %second, align 8
  %2 = load ptr, ptr %list.addr, align 8
  store ptr %2, ptr %current_item, align 8
  %3 = load ptr, ptr %list.addr, align 8
  store ptr %3, ptr %result, align 8
  store ptr null, ptr %result_tail, align 8
  %4 = load ptr, ptr %list.addr, align 8
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load ptr, ptr %list.addr, align 8
  %next = getelementptr inbounds %struct.cJSON, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %next, align 8
  %cmp1 = icmp eq ptr %6, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load ptr, ptr %result, align 8
  store ptr %7, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %8 = load ptr, ptr %current_item, align 8
  %cmp2 = icmp ne ptr %8, null
  br i1 %cmp2, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %9 = load ptr, ptr %current_item, align 8
  %next3 = getelementptr inbounds %struct.cJSON, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %next3, align 8
  %cmp4 = icmp ne ptr %10, null
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %11 = load ptr, ptr %current_item, align 8
  %string = getelementptr inbounds %struct.cJSON, ptr %11, i32 0, i32 7
  %12 = load ptr, ptr %string, align 8
  %13 = load ptr, ptr %current_item, align 8
  %next5 = getelementptr inbounds %struct.cJSON, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %next5, align 8
  %string6 = getelementptr inbounds %struct.cJSON, ptr %14, i32 0, i32 7
  %15 = load ptr, ptr %string6, align 8
  %16 = load i32, ptr %case_sensitive.addr, align 4
  %call = call i32 @compare_strings(ptr noundef %12, ptr noundef %15, i32 noundef %16)
  %cmp7 = icmp slt i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %17 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp7, %land.rhs ]
  br i1 %17, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %18 = load ptr, ptr %current_item, align 8
  %next8 = getelementptr inbounds %struct.cJSON, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %next8, align 8
  store ptr %19, ptr %current_item, align 8
  br label %while.cond, !llvm.loop !30

while.end:                                        ; preds = %land.end
  %20 = load ptr, ptr %current_item, align 8
  %cmp9 = icmp eq ptr %20, null
  br i1 %cmp9, label %if.then13, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %while.end
  %21 = load ptr, ptr %current_item, align 8
  %next11 = getelementptr inbounds %struct.cJSON, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %next11, align 8
  %cmp12 = icmp eq ptr %22, null
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %lor.lhs.false10, %while.end
  %23 = load ptr, ptr %result, align 8
  store ptr %23, ptr %retval, align 8
  br label %return

if.end14:                                         ; preds = %lor.lhs.false10
  %24 = load ptr, ptr %list.addr, align 8
  store ptr %24, ptr %current_item, align 8
  br label %while.cond15

while.cond15:                                     ; preds = %if.end23, %if.end14
  %25 = load ptr, ptr %current_item, align 8
  %cmp16 = icmp ne ptr %25, null
  br i1 %cmp16, label %while.body17, label %while.end24

while.body17:                                     ; preds = %while.cond15
  %26 = load ptr, ptr %second, align 8
  %next18 = getelementptr inbounds %struct.cJSON, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %next18, align 8
  store ptr %27, ptr %second, align 8
  %28 = load ptr, ptr %current_item, align 8
  %next19 = getelementptr inbounds %struct.cJSON, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %next19, align 8
  store ptr %29, ptr %current_item, align 8
  %30 = load ptr, ptr %current_item, align 8
  %cmp20 = icmp ne ptr %30, null
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %while.body17
  %31 = load ptr, ptr %current_item, align 8
  %next22 = getelementptr inbounds %struct.cJSON, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %next22, align 8
  store ptr %32, ptr %current_item, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %while.body17
  br label %while.cond15, !llvm.loop !31

while.end24:                                      ; preds = %while.cond15
  %33 = load ptr, ptr %second, align 8
  %cmp25 = icmp ne ptr %33, null
  br i1 %cmp25, label %land.lhs.true26, label %if.end32

land.lhs.true26:                                  ; preds = %while.end24
  %34 = load ptr, ptr %second, align 8
  %prev = getelementptr inbounds %struct.cJSON, ptr %34, i32 0, i32 1
  %35 = load ptr, ptr %prev, align 8
  %cmp27 = icmp ne ptr %35, null
  br i1 %cmp27, label %if.then28, label %if.end32

if.then28:                                        ; preds = %land.lhs.true26
  %36 = load ptr, ptr %second, align 8
  %prev29 = getelementptr inbounds %struct.cJSON, ptr %36, i32 0, i32 1
  %37 = load ptr, ptr %prev29, align 8
  %next30 = getelementptr inbounds %struct.cJSON, ptr %37, i32 0, i32 0
  store ptr null, ptr %next30, align 8
  %38 = load ptr, ptr %second, align 8
  %prev31 = getelementptr inbounds %struct.cJSON, ptr %38, i32 0, i32 1
  store ptr null, ptr %prev31, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %land.lhs.true26, %while.end24
  %39 = load ptr, ptr %first, align 8
  %40 = load i32, ptr %case_sensitive.addr, align 4
  %call33 = call ptr @sort_list(ptr noundef %39, i32 noundef %40)
  store ptr %call33, ptr %first, align 8
  %41 = load ptr, ptr %second, align 8
  %42 = load i32, ptr %case_sensitive.addr, align 4
  %call34 = call ptr @sort_list(ptr noundef %41, i32 noundef %42)
  store ptr %call34, ptr %second, align 8
  store ptr null, ptr %result, align 8
  br label %while.cond35

while.cond35:                                     ; preds = %if.end58, %if.end32
  %43 = load ptr, ptr %first, align 8
  %cmp36 = icmp ne ptr %43, null
  br i1 %cmp36, label %land.rhs37, label %land.end39

land.rhs37:                                       ; preds = %while.cond35
  %44 = load ptr, ptr %second, align 8
  %cmp38 = icmp ne ptr %44, null
  br label %land.end39

land.end39:                                       ; preds = %land.rhs37, %while.cond35
  %45 = phi i1 [ false, %while.cond35 ], [ %cmp38, %land.rhs37 ]
  br i1 %45, label %while.body40, label %while.end59

while.body40:                                     ; preds = %land.end39
  store ptr null, ptr %smaller, align 8
  %46 = load ptr, ptr %first, align 8
  %string41 = getelementptr inbounds %struct.cJSON, ptr %46, i32 0, i32 7
  %47 = load ptr, ptr %string41, align 8
  %48 = load ptr, ptr %second, align 8
  %string42 = getelementptr inbounds %struct.cJSON, ptr %48, i32 0, i32 7
  %49 = load ptr, ptr %string42, align 8
  %50 = load i32, ptr %case_sensitive.addr, align 4
  %call43 = call i32 @compare_strings(ptr noundef %47, ptr noundef %49, i32 noundef %50)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.then45, label %if.else

if.then45:                                        ; preds = %while.body40
  %51 = load ptr, ptr %first, align 8
  store ptr %51, ptr %smaller, align 8
  br label %if.end46

if.else:                                          ; preds = %while.body40
  %52 = load ptr, ptr %second, align 8
  store ptr %52, ptr %smaller, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.else, %if.then45
  %53 = load ptr, ptr %result, align 8
  %cmp47 = icmp eq ptr %53, null
  br i1 %cmp47, label %if.then48, label %if.else49

if.then48:                                        ; preds = %if.end46
  %54 = load ptr, ptr %smaller, align 8
  store ptr %54, ptr %result_tail, align 8
  %55 = load ptr, ptr %smaller, align 8
  store ptr %55, ptr %result, align 8
  br label %if.end52

if.else49:                                        ; preds = %if.end46
  %56 = load ptr, ptr %smaller, align 8
  %57 = load ptr, ptr %result_tail, align 8
  %next50 = getelementptr inbounds %struct.cJSON, ptr %57, i32 0, i32 0
  store ptr %56, ptr %next50, align 8
  %58 = load ptr, ptr %result_tail, align 8
  %59 = load ptr, ptr %smaller, align 8
  %prev51 = getelementptr inbounds %struct.cJSON, ptr %59, i32 0, i32 1
  store ptr %58, ptr %prev51, align 8
  %60 = load ptr, ptr %smaller, align 8
  store ptr %60, ptr %result_tail, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.else49, %if.then48
  %61 = load ptr, ptr %first, align 8
  %62 = load ptr, ptr %smaller, align 8
  %cmp53 = icmp eq ptr %61, %62
  br i1 %cmp53, label %if.then54, label %if.else56

if.then54:                                        ; preds = %if.end52
  %63 = load ptr, ptr %first, align 8
  %next55 = getelementptr inbounds %struct.cJSON, ptr %63, i32 0, i32 0
  %64 = load ptr, ptr %next55, align 8
  store ptr %64, ptr %first, align 8
  br label %if.end58

if.else56:                                        ; preds = %if.end52
  %65 = load ptr, ptr %second, align 8
  %next57 = getelementptr inbounds %struct.cJSON, ptr %65, i32 0, i32 0
  %66 = load ptr, ptr %next57, align 8
  store ptr %66, ptr %second, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.else56, %if.then54
  br label %while.cond35, !llvm.loop !32

while.end59:                                      ; preds = %land.end39
  %67 = load ptr, ptr %first, align 8
  %cmp60 = icmp ne ptr %67, null
  br i1 %cmp60, label %if.then61, label %if.end67

if.then61:                                        ; preds = %while.end59
  %68 = load ptr, ptr %result, align 8
  %cmp62 = icmp eq ptr %68, null
  br i1 %cmp62, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.then61
  %69 = load ptr, ptr %first, align 8
  store ptr %69, ptr %retval, align 8
  br label %return

if.end64:                                         ; preds = %if.then61
  %70 = load ptr, ptr %first, align 8
  %71 = load ptr, ptr %result_tail, align 8
  %next65 = getelementptr inbounds %struct.cJSON, ptr %71, i32 0, i32 0
  store ptr %70, ptr %next65, align 8
  %72 = load ptr, ptr %result_tail, align 8
  %73 = load ptr, ptr %first, align 8
  %prev66 = getelementptr inbounds %struct.cJSON, ptr %73, i32 0, i32 1
  store ptr %72, ptr %prev66, align 8
  br label %if.end67

if.end67:                                         ; preds = %if.end64, %while.end59
  %74 = load ptr, ptr %second, align 8
  %cmp68 = icmp ne ptr %74, null
  br i1 %cmp68, label %if.then69, label %if.end75

if.then69:                                        ; preds = %if.end67
  %75 = load ptr, ptr %result, align 8
  %cmp70 = icmp eq ptr %75, null
  br i1 %cmp70, label %if.then71, label %if.end72

if.then71:                                        ; preds = %if.then69
  %76 = load ptr, ptr %second, align 8
  store ptr %76, ptr %retval, align 8
  br label %return

if.end72:                                         ; preds = %if.then69
  %77 = load ptr, ptr %second, align 8
  %78 = load ptr, ptr %result_tail, align 8
  %next73 = getelementptr inbounds %struct.cJSON, ptr %78, i32 0, i32 0
  store ptr %77, ptr %next73, align 8
  %79 = load ptr, ptr %result_tail, align 8
  %80 = load ptr, ptr %second, align 8
  %prev74 = getelementptr inbounds %struct.cJSON, ptr %80, i32 0, i32 1
  store ptr %79, ptr %prev74, align 8
  br label %if.end75

if.end75:                                         ; preds = %if.end72, %if.end67
  %81 = load ptr, ptr %result, align 8
  store ptr %81, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end75, %if.then71, %if.then63, %if.then13, %if.then
  %82 = load ptr, ptr %retval, align 8
  ret ptr %82
}

declare i32 @cJSON_IsNull(ptr noundef) #1

declare ptr @cJSON_DetachItemFromObjectCaseSensitive(ptr noundef, ptr noundef) #1

declare ptr @cJSON_CreateNull() #1

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { argmemonly nocallback nofree nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define internal void @pc_inline_source_snapshot_public_repos_cJSON_cJSON_Utils_0(ptr noundef %root, ptr noundef %replacement)  alwaysinline#0 {
entry:
  %root.addr = alloca ptr, align 8
  store ptr %root, ptr %root.addr, align 8
  %0 = load ptr, ptr %root.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %root.addr, align 8
  %string = getelementptr inbounds %struct.cJSON, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %string, align 8
  %cmp1 = icmp ne ptr %2, null
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %root.addr, align 8
  %string3 = getelementptr inbounds %struct.cJSON, ptr %3, i32 0, i32 7
  %4 = load ptr, ptr %string3, align 8
  call void @cJSON_free(ptr noundef %4)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %5 = load ptr, ptr %root.addr, align 8
  %valuestring = getelementptr inbounds %struct.cJSON, ptr %5, i32 0, i32 4
  %6 = load ptr, ptr %valuestring, align 8
  %cmp5 = icmp ne ptr %6, null
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  %7 = load ptr, ptr %root.addr, align 8
  %valuestring7 = getelementptr inbounds %struct.cJSON, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %valuestring7, align 8
  call void @cJSON_free(ptr noundef %8)
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4
  %9 = load ptr, ptr %root.addr, align 8
  %child = getelementptr inbounds %struct.cJSON, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %child, align 8
  %cmp9 = icmp ne ptr %10, null
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end8
  %11 = load ptr, ptr %root.addr, align 8
  %child11 = getelementptr inbounds %struct.cJSON, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %child11, align 8
  call void @cJSON_Delete(ptr noundef %12)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8
  %13 = load ptr, ptr %root.addr, align 8
  %14 = load ptr, ptr %root.addr, align 8
  %15 = call i64 @llvm.objectsize.i64.p0(ptr %14, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %13, ptr noundef %replacement, i64 noundef 64, i64 noundef %15) #6
  br label %return

return:                                           ; preds = %if.end12, %if.then
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
