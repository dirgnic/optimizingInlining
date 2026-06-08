; ModuleID = './out/real_reduction_probe/rewritten_ir/teacher_never_inline/source_snapshot_public_repos_cJSON_cJSON_Utils.prepared.ll'
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
  %cmp = icmp eq ptr %object, null
  %0 = load ptr, ptr %target.addr, align 8
  %cmp1 = icmp eq ptr %0, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %object.addr, align 8
  %2 = load ptr, ptr %target.addr, align 8
  %cmp2 = icmp eq ptr %1, %2
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %call = call ptr @cJSONUtils_strdup(ptr noundef nonnull @.str)
  store ptr %call, ptr %retval, align 8
  br label %return

if.end4:                                          ; preds = %if.end
  %3 = load ptr, ptr %object.addr, align 8
  %child = getelementptr inbounds %struct.cJSON, ptr %3, i64 0, i32 2
  %4 = load ptr, ptr %child, align 8
  store ptr %4, ptr %current_child, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end4
  %5 = load ptr, ptr %current_child, align 8
  %cmp5.not = icmp eq ptr %5, null
  br i1 %cmp5.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %current_child, align 8
  %7 = load ptr, ptr %target.addr, align 8
  %call6 = call ptr @cJSONUtils_FindPointerFromObjectTo(ptr noundef %6, ptr noundef %7)
  store ptr %call6, ptr %target_pointer, align 8
  %cmp7.not = icmp eq ptr %call6, null
  br i1 %cmp7.not, label %for.inc, label %if.then8

if.then8:                                         ; preds = %for.body
  %8 = load ptr, ptr %object.addr, align 8
  %call9 = call i32 @cJSON_IsArray(ptr noundef %8) #6
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end18, label %if.then10

if.then10:                                        ; preds = %if.then8
  %9 = load ptr, ptr %target_pointer, align 8
  %call11 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %9) #6
  %add12 = add i64 %call11, 22
  %call13 = call ptr @cJSON_malloc(i64 noundef %add12) #6
  store ptr %call13, ptr %full_pointer, align 8
  %10 = load ptr, ptr %full_pointer, align 8
  %11 = call i64 @llvm.objectsize.i64.p0(ptr %10, i1 false, i1 true, i1 false)
  %12 = load i64, ptr %child_index, align 8
  %13 = load ptr, ptr %target_pointer, align 8
  %call17 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %10, i32 noundef 0, i64 noundef %11, ptr noundef nonnull @.str.1, i64 noundef %12, ptr noundef %13) #6
  call void @cJSON_free(ptr noundef %13) #6
  store ptr %10, ptr %retval, align 8
  br label %return

if.end18:                                         ; preds = %if.then8
  %14 = load ptr, ptr %object.addr, align 8
  %call19 = call i32 @cJSON_IsObject(ptr noundef %14) #6
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end30, label %if.then21

if.then21:                                        ; preds = %if.end18
  %15 = load ptr, ptr %target_pointer, align 8
  %call23 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %15) #6
  %16 = load ptr, ptr %current_child, align 8
  %string = getelementptr inbounds %struct.cJSON, ptr %16, i64 0, i32 7
  %17 = load ptr, ptr %string, align 8
  %call24 = call i64 @pointer_encoded_length(ptr noundef %17)
  %add25 = add i64 %call23, %call24
  %add26 = add i64 %add25, 2
  %call27 = call ptr @cJSON_malloc(i64 noundef %add26) #6
  store ptr %call27, ptr %full_pointer22, align 8
  store i8 47, ptr %call27, align 1
  %add.ptr = getelementptr inbounds i8, ptr %call27, i64 1
  %18 = load ptr, ptr %current_child, align 8
  %string28 = getelementptr inbounds %struct.cJSON, ptr %18, i64 0, i32 7
  %19 = load ptr, ptr %string28, align 8
  call void @encode_string_as_pointer(ptr noundef nonnull %add.ptr, ptr noundef %19)
  %20 = load ptr, ptr %full_pointer22, align 8
  %21 = load ptr, ptr %target_pointer, align 8
  %22 = call i64 @llvm.objectsize.i64.p0(ptr %20, i1 false, i1 true, i1 false)
  %call29 = call ptr @__strcat_chk(ptr noundef %20, ptr noundef %21, i64 noundef %22) #6
  call void @cJSON_free(ptr noundef %21) #6
  store ptr %20, ptr %retval, align 8
  br label %return

if.end30:                                         ; preds = %if.end18
  %23 = load ptr, ptr %target_pointer, align 8
  call void @cJSON_free(ptr noundef %23) #6
  store ptr null, ptr %retval, align 8
  br label %return

for.inc:                                          ; preds = %for.body
  %24 = load ptr, ptr %current_child, align 8
  %25 = load ptr, ptr %24, align 8
  store ptr %25, ptr %current_child, align 8
  %26 = load i64, ptr %child_index, align 8
  %inc = add i64 %26, 1
  store i64 %inc, ptr %child_index, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.end30, %if.then21, %if.then10, %if.then3, %if.then
  %27 = load ptr, ptr %retval, align 8
  ret ptr %27
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @cJSONUtils_strdup(ptr noundef %string) #0 {
entry:
  %string.addr = alloca ptr, align 8
  %length = alloca i64, align 8
  %copy = alloca ptr, align 8
  store ptr %string, ptr %string.addr, align 8
  store i64 0, ptr %length, align 8
  store ptr null, ptr %copy, align 8
  %call = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %string) #6
  %add = add i64 %call, 1
  store i64 %add, ptr %length, align 8
  %call1 = call ptr @cJSON_malloc(i64 noundef %add) #6
  store ptr %call1, ptr %copy, align 8
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %copy, align 8
  %1 = load ptr, ptr %string.addr, align 8
  %2 = load i64, ptr %length, align 8
  %3 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false)
  %call2 = call ptr @__memcpy_chk(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) #6
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi ptr [ %0, %if.end ], [ null, %entry ]
  ret ptr %storemerge
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
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i64 [ 0, %entry ], [ %inc8, %for.inc ]
  store i64 %storemerge, ptr %length, align 8
  %0 = load ptr, ptr %string.addr, align 8
  %1 = load i8, ptr %0, align 1
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %string.addr, align 8
  %3 = load i8, ptr %2, align 1
  %cmp3 = icmp eq i8 %3, 126
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %4 = load ptr, ptr %string.addr, align 8
  %5 = load i8, ptr %4, align 1
  %cmp6 = icmp eq i8 %5, 47
  br i1 %cmp6, label %if.then, label %for.inc

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %6 = load i64, ptr %length, align 8
  %inc = add i64 %6, 1
  store i64 %inc, ptr %length, align 8
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false, %if.then
  %7 = load ptr, ptr %string.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %7, i64 1
  store ptr %incdec.ptr, ptr %string.addr, align 8
  %8 = load i64, ptr %length, align 8
  %inc8 = add i64 %8, 1
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
  %1 = load i8, ptr %0, align 1
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %source.addr, align 8
  %3 = load i8, ptr %2, align 1
  %cmp4 = icmp eq i8 %3, 47
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %4 = load ptr, ptr %destination.addr, align 8
  store i8 126, ptr %4, align 1
  %arrayidx7 = getelementptr inbounds i8, ptr %4, i64 1
  store i8 49, ptr %arrayidx7, align 1
  %incdec.ptr = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %incdec.ptr, ptr %destination.addr, align 8
  br label %for.inc

if.else:                                          ; preds = %for.body
  %5 = load ptr, ptr %source.addr, align 8
  %6 = load i8, ptr %5, align 1
  %cmp10 = icmp eq i8 %6, 126
  br i1 %cmp10, label %if.then12, label %if.else16

if.then12:                                        ; preds = %if.else
  %7 = load ptr, ptr %destination.addr, align 8
  store i8 126, ptr %7, align 1
  %arrayidx14 = getelementptr inbounds i8, ptr %7, i64 1
  store i8 48, ptr %arrayidx14, align 1
  %incdec.ptr15 = getelementptr inbounds i8, ptr %7, i64 1
  store ptr %incdec.ptr15, ptr %destination.addr, align 8
  br label %for.inc

if.else16:                                        ; preds = %if.else
  %8 = load ptr, ptr %source.addr, align 8
  %9 = load i8, ptr %8, align 1
  %10 = load ptr, ptr %destination.addr, align 8
  store i8 %9, ptr %10, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else16, %if.then12
  %11 = load ptr, ptr %source.addr, align 8
  %incdec.ptr20 = getelementptr inbounds i8, ptr %11, i64 1
  store ptr %incdec.ptr20, ptr %source.addr, align 8
  %12 = load ptr, ptr %destination.addr, align 8
  %incdec.ptr21 = getelementptr inbounds i8, ptr %12, i64 1
  store ptr %incdec.ptr21, ptr %destination.addr, align 8
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr %destination.addr, align 8
  store i8 0, ptr %13, align 1
  ret void
}

; Function Attrs: nounwind
declare ptr @__strcat_chk(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nounwind ssp uwtable
define ptr @cJSONUtils_GetPointer(ptr noundef %object, ptr noundef %pointer) #0 {
entry:
  %call = call ptr @get_item_from_pointer(ptr noundef %object, ptr noundef %pointer, i32 noundef 0)
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @get_item_from_pointer(ptr noundef %object, ptr noundef %pointer, i32 noundef %case_sensitive) #0 {
entry:
  %retval = alloca ptr, align 8
  %pointer.addr = alloca ptr, align 8
  %case_sensitive.addr = alloca i32, align 4
  %current_element = alloca ptr, align 8
  %index = alloca i64, align 8
  store ptr %pointer, ptr %pointer.addr, align 8
  store i32 %case_sensitive, ptr %case_sensitive.addr, align 4
  store ptr %object, ptr %current_element, align 8
  %cmp = icmp eq ptr %pointer, null
  br i1 %cmp, label %if.then, label %while.cond

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

while.cond:                                       ; preds = %entry, %while.end38
  %0 = load ptr, ptr %pointer.addr, align 8
  %1 = load i8, ptr %0, align 1
  %cmp1 = icmp eq i8 %1, 47
  %2 = load ptr, ptr %current_element, align 8
  %cmp3 = icmp ne ptr %2, null
  %3 = select i1 %cmp1, i1 %cmp3, i1 false
  br i1 %3, label %while.body, label %while.end39

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %pointer.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %incdec.ptr, ptr %pointer.addr, align 8
  %5 = load ptr, ptr %current_element, align 8
  %call = call i32 @cJSON_IsArray(ptr noundef %5) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %while.body
  store i64 0, ptr %index, align 8
  %6 = load ptr, ptr %pointer.addr, align 8
  %call6 = call i32 @decode_array_index_from_pointer(ptr noundef %6, ptr noundef nonnull %index)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.then5
  store ptr null, ptr %retval, align 8
  br label %return

if.end9:                                          ; preds = %if.then5
  %7 = load ptr, ptr %current_element, align 8
  %8 = load i64, ptr %index, align 8
  %call10 = call ptr @get_array_item(ptr noundef %7, i64 noundef %8)
  store ptr %call10, ptr %current_element, align 8
  br label %if.end24

if.else:                                          ; preds = %while.body
  %9 = load ptr, ptr %current_element, align 8
  %call11 = call i32 @cJSON_IsObject(ptr noundef %9) #6
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.else22, label %if.then13

if.then13:                                        ; preds = %if.else
  %10 = load ptr, ptr %current_element, align 8
  %child = getelementptr inbounds %struct.cJSON, ptr %10, i64 0, i32 2
  br label %while.cond14

while.cond14:                                     ; preds = %while.body21, %if.then13
  %storemerge.in = phi ptr [ %child, %if.then13 ], [ %15, %while.body21 ]
  %storemerge = load ptr, ptr %storemerge.in, align 8
  store ptr %storemerge, ptr %current_element, align 8
  %cmp15.not = icmp eq ptr %storemerge, null
  br i1 %cmp15.not, label %if.end24, label %land.rhs17

land.rhs17:                                       ; preds = %while.cond14
  %11 = load ptr, ptr %current_element, align 8
  %string = getelementptr inbounds %struct.cJSON, ptr %11, i64 0, i32 7
  %12 = load ptr, ptr %string, align 8
  %13 = load ptr, ptr %pointer.addr, align 8
  %14 = load i32, ptr %case_sensitive.addr, align 4
  %call18 = call i32 @compare_pointers(ptr noundef %12, ptr noundef %13, i32 noundef %14)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %while.body21, label %if.end24

while.body21:                                     ; preds = %land.rhs17
  %15 = load ptr, ptr %current_element, align 8
  br label %while.cond14, !llvm.loop !10

if.else22:                                        ; preds = %if.else
  store ptr null, ptr %retval, align 8
  br label %return

if.end24:                                         ; preds = %while.cond14, %land.rhs17, %if.end9
  br label %while.cond25

while.cond25:                                     ; preds = %while.body36, %if.end24
  %16 = load ptr, ptr %pointer.addr, align 8
  %17 = load i8, ptr %16, align 1
  %cmp28.not = icmp eq i8 %17, 0
  br i1 %cmp28.not, label %while.end38, label %land.rhs30

land.rhs30:                                       ; preds = %while.cond25
  %18 = load ptr, ptr %pointer.addr, align 8
  %19 = load i8, ptr %18, align 1
  %cmp33 = icmp ne i8 %19, 47
  br i1 %cmp33, label %while.body36, label %while.end38

while.body36:                                     ; preds = %land.rhs30
  %20 = load ptr, ptr %pointer.addr, align 8
  %incdec.ptr37 = getelementptr inbounds i8, ptr %20, i64 1
  store ptr %incdec.ptr37, ptr %pointer.addr, align 8
  br label %while.cond25, !llvm.loop !11

while.end38:                                      ; preds = %while.cond25, %land.rhs30
  br label %while.cond, !llvm.loop !12

while.end39:                                      ; preds = %while.cond
  %21 = load ptr, ptr %current_element, align 8
  store ptr %21, ptr %retval, align 8
  br label %return

return:                                           ; preds = %while.end39, %if.else22, %if.then8, %if.then
  %22 = load ptr, ptr %retval, align 8
  ret ptr %22
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSONUtils_GetPointerCaseSensitive(ptr noundef %object, ptr noundef %pointer) #0 {
entry:
  %call = call ptr @get_item_from_pointer(ptr noundef %object, ptr noundef %pointer, i32 noundef 1)
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
  %call = call i32 @cJSON_IsArray(ptr noundef %patches) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %patches.addr, align 8
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  %1 = load ptr, ptr %patches.addr, align 8
  %child = getelementptr inbounds %struct.cJSON, ptr %1, i64 0, i32 2
  %2 = load ptr, ptr %child, align 8
  store ptr %2, ptr %current_patch, align 8
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end7, %if.end2
  %3 = load ptr, ptr %current_patch, align 8
  %cmp3.not = icmp eq ptr %3, null
  br i1 %cmp3.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %object.addr, align 8
  %5 = load ptr, ptr %current_patch, align 8
  %call4 = call i32 @apply_patch(ptr noundef %4, ptr noundef %5, i32 noundef 0)
  store i32 %call4, ptr %status, align 4
  %cmp5.not = icmp eq i32 %call4, 0
  br i1 %cmp5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %while.body
  %6 = load i32, ptr %status, align 4
  store i32 %6, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %while.body
  %7 = load ptr, ptr %current_patch, align 8
  %8 = load ptr, ptr %7, align 8
  store ptr %8, ptr %current_patch, align 8
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then6, %if.then
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
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
  %call = call ptr @get_object_item(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %1)
  store ptr %call, ptr %path, align 8
  %call1 = call i32 @cJSON_IsString(ptr noundef %call) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2, ptr %status, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %patch.addr, align 8
  %3 = load i32, ptr %case_sensitive.addr, align 4
  %call2 = call i32 @decode_patch_operation(ptr noundef %2, i32 noundef %3)
  store i32 %call2, ptr %opcode, align 4
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  store i32 3, ptr %status, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  %4 = load i32, ptr %opcode, align 4
  %cmp4 = icmp eq i32 %4, 6
  br i1 %cmp4, label %if.then5, label %if.end11

if.then5:                                         ; preds = %if.else
  %5 = load ptr, ptr %object.addr, align 8
  %6 = load ptr, ptr %path, align 8
  %valuestring = getelementptr inbounds %struct.cJSON, ptr %6, i64 0, i32 4
  %7 = load ptr, ptr %valuestring, align 8
  %8 = load i32, ptr %case_sensitive.addr, align 4
  %call6 = call ptr @get_item_from_pointer(ptr noundef %5, ptr noundef %7, i32 noundef %8)
  %9 = load ptr, ptr %patch.addr, align 8
  %call7 = call ptr @get_object_item(ptr noundef %9, ptr noundef nonnull @.str.3, i32 noundef %8)
  %call8 = call i32 @compare_json(ptr noundef %call6, ptr noundef %call7, i32 noundef %8)
  %tobool9.not = icmp eq i32 %call8, 0
  %lnot.ext = zext i1 %tobool9.not to i32
  store i32 %lnot.ext, ptr %status, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.else
  %10 = load ptr, ptr %path, align 8
  %valuestring12 = getelementptr inbounds %struct.cJSON, ptr %10, i64 0, i32 4
  %11 = load ptr, ptr %valuestring12, align 8
  %12 = load i8, ptr %11, align 1
  %cmp13 = icmp eq i8 %12, 0
  br i1 %cmp13, label %if.then15, label %if.end43

if.then15:                                        ; preds = %if.end11
  %13 = load i32, ptr %opcode, align 4
  %cmp16 = icmp eq i32 %13, 2
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.then15
  %14 = load ptr, ptr %object.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %byval-temp, ptr noundef nonnull align 8 dereferenceable(64) @apply_patch.invalid, i64 64, i1 false)
  call void @overwrite_item(ptr noundef %14, ptr noundef nonnull %byval-temp)
  store i32 0, ptr %status, align 4
  br label %cleanup

if.end19:                                         ; preds = %if.then15
  %15 = load i32, ptr %opcode, align 4
  %cmp20 = icmp eq i32 %15, 3
  %16 = load i32, ptr %opcode, align 4
  %cmp22 = icmp eq i32 %16, 1
  %or.cond = select i1 %cmp20, i1 true, i1 %cmp22
  br i1 %or.cond, label %if.then24, label %if.end43

if.then24:                                        ; preds = %if.end19
  %17 = load ptr, ptr %patch.addr, align 8
  %18 = load i32, ptr %case_sensitive.addr, align 4
  %call25 = call ptr @get_object_item(ptr noundef %17, ptr noundef nonnull @.str.3, i32 noundef %18)
  store ptr %call25, ptr %value, align 8
  %cmp26 = icmp eq ptr %call25, null
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.then24
  store i32 7, ptr %status, align 4
  br label %cleanup

if.end29:                                         ; preds = %if.then24
  %19 = load ptr, ptr %value, align 8
  %call30 = call ptr @cJSON_Duplicate(ptr noundef %19, i32 noundef 1) #6
  store ptr %call30, ptr %value, align 8
  %cmp31 = icmp eq ptr %call30, null
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end29
  store i32 8, ptr %status, align 4
  br label %cleanup

if.end34:                                         ; preds = %if.end29
  %20 = load ptr, ptr %object.addr, align 8
  %21 = load ptr, ptr %value, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %byval-temp35, ptr noundef nonnull align 8 dereferenceable(64) %21, i64 64, i1 false)
  call void @overwrite_item(ptr noundef %20, ptr noundef nonnull %byval-temp35)
  call void @cJSON_free(ptr noundef %21) #6
  store ptr null, ptr %value, align 8
  %string = getelementptr inbounds %struct.cJSON, ptr %20, i64 0, i32 7
  %22 = load ptr, ptr %string, align 8
  %cmp36.not = icmp eq ptr %22, null
  br i1 %cmp36.not, label %if.end41, label %if.then38

if.then38:                                        ; preds = %if.end34
  %23 = load ptr, ptr %object.addr, align 8
  %string39 = getelementptr inbounds %struct.cJSON, ptr %23, i64 0, i32 7
  %24 = load ptr, ptr %string39, align 8
  call void @cJSON_free(ptr noundef %24) #6
  %string40 = getelementptr inbounds %struct.cJSON, ptr %23, i64 0, i32 7
  store ptr null, ptr %string40, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.end34
  store i32 0, ptr %status, align 4
  br label %cleanup

if.end43:                                         ; preds = %if.end19, %if.end11
  %25 = load i32, ptr %opcode, align 4
  %cmp44 = icmp eq i32 %25, 2
  %26 = load i32, ptr %opcode, align 4
  %cmp47 = icmp eq i32 %26, 3
  %or.cond1 = select i1 %cmp44, i1 true, i1 %cmp47
  br i1 %or.cond1, label %if.then49, label %if.end60

if.then49:                                        ; preds = %if.end43
  %27 = load ptr, ptr %object.addr, align 8
  %28 = load ptr, ptr %path, align 8
  %valuestring50 = getelementptr inbounds %struct.cJSON, ptr %28, i64 0, i32 4
  %29 = load ptr, ptr %valuestring50, align 8
  %30 = load i32, ptr %case_sensitive.addr, align 4
  %call51 = call ptr @detach_path(ptr noundef %27, ptr noundef %29, i32 noundef %30)
  store ptr %call51, ptr %old_item, align 8
  %cmp52 = icmp eq ptr %call51, null
  br i1 %cmp52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.then49
  store i32 13, ptr %status, align 4
  br label %cleanup

if.end55:                                         ; preds = %if.then49
  %31 = load ptr, ptr %old_item, align 8
  call void @cJSON_Delete(ptr noundef %31) #6
  %32 = load i32, ptr %opcode, align 4
  %cmp56 = icmp eq i32 %32, 2
  br i1 %cmp56, label %if.then58, label %if.end60

if.then58:                                        ; preds = %if.end55
  store i32 0, ptr %status, align 4
  br label %cleanup

if.end60:                                         ; preds = %if.end55, %if.end43
  %33 = load i32, ptr %opcode, align 4
  %cmp61 = icmp eq i32 %33, 4
  %34 = load i32, ptr %opcode, align 4
  %cmp64 = icmp eq i32 %34, 5
  %or.cond2 = select i1 %cmp61, i1 true, i1 %cmp64
  br i1 %or.cond2, label %if.then66, label %if.else97

if.then66:                                        ; preds = %if.end60
  %35 = load ptr, ptr %patch.addr, align 8
  %36 = load i32, ptr %case_sensitive.addr, align 4
  %call67 = call ptr @get_object_item(ptr noundef %35, ptr noundef nonnull @.str.4, i32 noundef %36)
  store ptr %call67, ptr %from, align 8
  %call68 = call i32 @cJSON_IsString(ptr noundef %call67) #6
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.then70, label %if.end71

if.then70:                                        ; preds = %if.then66
  store i32 4, ptr %status, align 4
  br label %cleanup

if.end71:                                         ; preds = %if.then66
  %37 = load i32, ptr %opcode, align 4
  %cmp72 = icmp eq i32 %37, 4
  br i1 %cmp72, label %if.then74, label %if.end77

if.then74:                                        ; preds = %if.end71
  %38 = load ptr, ptr %object.addr, align 8
  %39 = load ptr, ptr %from, align 8
  %valuestring75 = getelementptr inbounds %struct.cJSON, ptr %39, i64 0, i32 4
  %40 = load ptr, ptr %valuestring75, align 8
  %41 = load i32, ptr %case_sensitive.addr, align 4
  %call76 = call ptr @detach_path(ptr noundef %38, ptr noundef %40, i32 noundef %41)
  store ptr %call76, ptr %value, align 8
  br label %if.end77

if.end77:                                         ; preds = %if.then74, %if.end71
  %42 = load i32, ptr %opcode, align 4
  %cmp78 = icmp eq i32 %42, 5
  br i1 %cmp78, label %if.then80, label %if.end83

if.then80:                                        ; preds = %if.end77
  %43 = load ptr, ptr %object.addr, align 8
  %44 = load ptr, ptr %from, align 8
  %valuestring81 = getelementptr inbounds %struct.cJSON, ptr %44, i64 0, i32 4
  %45 = load ptr, ptr %valuestring81, align 8
  %46 = load i32, ptr %case_sensitive.addr, align 4
  %call82 = call ptr @get_item_from_pointer(ptr noundef %43, ptr noundef %45, i32 noundef %46)
  store ptr %call82, ptr %value, align 8
  br label %if.end83

if.end83:                                         ; preds = %if.then80, %if.end77
  %47 = load ptr, ptr %value, align 8
  %cmp84 = icmp eq ptr %47, null
  br i1 %cmp84, label %if.then86, label %if.end87

if.then86:                                        ; preds = %if.end83
  store i32 5, ptr %status, align 4
  br label %cleanup

if.end87:                                         ; preds = %if.end83
  %48 = load i32, ptr %opcode, align 4
  %cmp88 = icmp eq i32 %48, 5
  br i1 %cmp88, label %if.then90, label %if.end92

if.then90:                                        ; preds = %if.end87
  %49 = load ptr, ptr %value, align 8
  %call91 = call ptr @cJSON_Duplicate(ptr noundef %49, i32 noundef 1) #6
  store ptr %call91, ptr %value, align 8
  br label %if.end92

if.end92:                                         ; preds = %if.then90, %if.end87
  %50 = load ptr, ptr %value, align 8
  %cmp93 = icmp eq ptr %50, null
  br i1 %cmp93, label %if.then95, label %if.end108

if.then95:                                        ; preds = %if.end92
  store i32 6, ptr %status, align 4
  br label %cleanup

if.else97:                                        ; preds = %if.end60
  %51 = load ptr, ptr %patch.addr, align 8
  %52 = load i32, ptr %case_sensitive.addr, align 4
  %call98 = call ptr @get_object_item(ptr noundef %51, ptr noundef nonnull @.str.3, i32 noundef %52)
  store ptr %call98, ptr %value, align 8
  %cmp99 = icmp eq ptr %call98, null
  br i1 %cmp99, label %if.then101, label %if.end102

if.then101:                                       ; preds = %if.else97
  store i32 7, ptr %status, align 4
  br label %cleanup

if.end102:                                        ; preds = %if.else97
  %53 = load ptr, ptr %value, align 8
  %call103 = call ptr @cJSON_Duplicate(ptr noundef %53, i32 noundef 1) #6
  store ptr %call103, ptr %value, align 8
  %cmp104 = icmp eq ptr %call103, null
  br i1 %cmp104, label %if.then106, label %if.end108

if.then106:                                       ; preds = %if.end102
  store i32 8, ptr %status, align 4
  br label %cleanup

if.end108:                                        ; preds = %if.end102, %if.end92
  %54 = load ptr, ptr %path, align 8
  %valuestring109 = getelementptr inbounds %struct.cJSON, ptr %54, i64 0, i32 4
  %55 = load ptr, ptr %valuestring109, align 8
  %call110 = call ptr @cJSONUtils_strdup(ptr noundef %55)
  store ptr %call110, ptr %parent_pointer, align 8
  %tobool111.not = icmp eq ptr %call110, null
  br i1 %tobool111.not, label %if.end114, label %if.then112

if.then112:                                       ; preds = %if.end108
  %56 = load ptr, ptr %parent_pointer, align 8
  %call113 = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %56, i32 noundef 47) #6
  store ptr %call113, ptr %child_pointer, align 8
  br label %if.end114

if.end114:                                        ; preds = %if.then112, %if.end108
  %57 = load ptr, ptr %child_pointer, align 8
  %cmp115.not = icmp eq ptr %57, null
  br i1 %cmp115.not, label %if.end119, label %if.then117

if.then117:                                       ; preds = %if.end114
  %58 = load ptr, ptr %child_pointer, align 8
  store i8 0, ptr %58, align 1
  %incdec.ptr = getelementptr inbounds i8, ptr %58, i64 1
  store ptr %incdec.ptr, ptr %child_pointer, align 8
  br label %if.end119

if.end119:                                        ; preds = %if.then117, %if.end114
  %59 = load ptr, ptr %object.addr, align 8
  %60 = load ptr, ptr %parent_pointer, align 8
  %61 = load i32, ptr %case_sensitive.addr, align 4
  %call120 = call ptr @get_item_from_pointer(ptr noundef %59, ptr noundef %60, i32 noundef %61)
  store ptr %call120, ptr %parent, align 8
  %62 = load ptr, ptr %child_pointer, align 8
  call void @decode_pointer_inplace(ptr noundef %62)
  %cmp121 = icmp eq ptr %call120, null
  %63 = load ptr, ptr %child_pointer, align 8
  %cmp124 = icmp eq ptr %63, null
  %or.cond3 = select i1 %cmp121, i1 true, i1 %cmp124
  br i1 %or.cond3, label %if.then126, label %if.else127

if.then126:                                       ; preds = %if.end119
  store i32 9, ptr %status, align 4
  br label %cleanup

if.else127:                                       ; preds = %if.end119
  %64 = load ptr, ptr %parent, align 8
  %call128 = call i32 @cJSON_IsArray(ptr noundef %64) #6
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %if.else146, label %if.then130

if.then130:                                       ; preds = %if.else127
  %65 = load ptr, ptr %child_pointer, align 8
  %call131 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %65, ptr noundef nonnull dereferenceable(2) @.str.5) #6
  %cmp132 = icmp eq i32 %call131, 0
  br i1 %cmp132, label %if.then134, label %if.else136

if.then134:                                       ; preds = %if.then130
  %66 = load ptr, ptr %parent, align 8
  %67 = load ptr, ptr %value, align 8
  %call135 = call i32 @cJSON_AddItemToArray(ptr noundef %66, ptr noundef %67) #6
  br label %if.end145

if.else136:                                       ; preds = %if.then130
  store i64 0, ptr %index, align 8
  %68 = load ptr, ptr %child_pointer, align 8
  %call137 = call i32 @decode_array_index_from_pointer(ptr noundef %68, ptr noundef nonnull %index)
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %if.then139, label %if.end140

if.then139:                                       ; preds = %if.else136
  store i32 11, ptr %status, align 4
  br label %cleanup

if.end140:                                        ; preds = %if.else136
  %69 = load ptr, ptr %parent, align 8
  %70 = load i64, ptr %index, align 8
  %71 = load ptr, ptr %value, align 8
  %call141 = call i32 @insert_item_in_array(ptr noundef %69, i64 noundef %70, ptr noundef %71)
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %if.then143, label %if.end145

if.then143:                                       ; preds = %if.end140
  store i32 10, ptr %status, align 4
  br label %cleanup

if.end145:                                        ; preds = %if.end140, %if.then134
  store ptr null, ptr %value, align 8
  br label %cleanup

if.else146:                                       ; preds = %if.else127
  %72 = load ptr, ptr %parent, align 8
  %call147 = call i32 @cJSON_IsObject(ptr noundef %72) #6
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %if.else155, label %if.then149

if.then149:                                       ; preds = %if.else146
  %73 = load i32, ptr %case_sensitive.addr, align 4
  %tobool150.not = icmp eq i32 %73, 0
  br i1 %tobool150.not, label %if.else152, label %if.then151

if.then151:                                       ; preds = %if.then149
  %74 = load ptr, ptr %parent, align 8
  %75 = load ptr, ptr %child_pointer, align 8
  call void @cJSON_DeleteItemFromObjectCaseSensitive(ptr noundef %74, ptr noundef %75) #6
  br label %if.end153

if.else152:                                       ; preds = %if.then149
  %76 = load ptr, ptr %parent, align 8
  %77 = load ptr, ptr %child_pointer, align 8
  call void @cJSON_DeleteItemFromObject(ptr noundef %76, ptr noundef %77) #6
  br label %if.end153

if.end153:                                        ; preds = %if.else152, %if.then151
  %78 = load ptr, ptr %parent, align 8
  %79 = load ptr, ptr %child_pointer, align 8
  %80 = load ptr, ptr %value, align 8
  %call154 = call i32 @cJSON_AddItemToObject(ptr noundef %78, ptr noundef %79, ptr noundef %80) #6
  store ptr null, ptr %value, align 8
  br label %cleanup

if.else155:                                       ; preds = %if.else146
  store i32 9, ptr %status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end153, %if.end145, %if.else155, %if.then143, %if.then139, %if.then126, %if.then106, %if.then101, %if.then95, %if.then86, %if.then70, %if.then58, %if.then54, %if.end41, %if.then33, %if.then28, %if.then18, %if.then5, %if.then3, %if.then
  %81 = load ptr, ptr %value, align 8
  %cmp159.not = icmp eq ptr %81, null
  br i1 %cmp159.not, label %if.end162, label %if.then161

if.then161:                                       ; preds = %cleanup
  %82 = load ptr, ptr %value, align 8
  call void @cJSON_Delete(ptr noundef %82) #6
  br label %if.end162

if.end162:                                        ; preds = %if.then161, %cleanup
  %83 = load ptr, ptr %parent_pointer, align 8
  %cmp163.not = icmp eq ptr %83, null
  br i1 %cmp163.not, label %if.end166, label %if.then165

if.then165:                                       ; preds = %if.end162
  %84 = load ptr, ptr %parent_pointer, align 8
  call void @cJSON_free(ptr noundef %84) #6
  br label %if.end166

if.end166:                                        ; preds = %if.then165, %if.end162
  %85 = load i32, ptr %status, align 4
  ret i32 %85
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
  %call = call i32 @cJSON_IsArray(ptr noundef %patches) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %patches.addr, align 8
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  %1 = load ptr, ptr %patches.addr, align 8
  %child = getelementptr inbounds %struct.cJSON, ptr %1, i64 0, i32 2
  %2 = load ptr, ptr %child, align 8
  store ptr %2, ptr %current_patch, align 8
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end7, %if.end2
  %3 = load ptr, ptr %current_patch, align 8
  %cmp3.not = icmp eq ptr %3, null
  br i1 %cmp3.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %object.addr, align 8
  %5 = load ptr, ptr %current_patch, align 8
  %call4 = call i32 @apply_patch(ptr noundef %4, ptr noundef %5, i32 noundef 1)
  store i32 %call4, ptr %status, align 4
  %cmp5.not = icmp eq i32 %call4, 0
  br i1 %cmp5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %while.body
  %6 = load i32, ptr %status, align 4
  store i32 %6, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %while.body
  %7 = load ptr, ptr %current_patch, align 8
  %8 = load ptr, ptr %7, align 8
  store ptr %8, ptr %current_patch, align 8
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then6, %if.then
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: nounwind ssp uwtable
define void @cJSONUtils_AddPatchToArray(ptr noundef %array, ptr noundef %operation, ptr noundef %path, ptr noundef %value) #0 {
entry:
  call void @compose_patch(ptr noundef %array, ptr noundef %operation, ptr noundef %path, ptr noundef null, ptr noundef %value)
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
  %path_length = alloca i64, align 8
  %full_path = alloca ptr, align 8
  store ptr %patches, ptr %patches.addr, align 8
  store ptr %operation, ptr %operation.addr, align 8
  store ptr %path, ptr %path.addr, align 8
  store ptr %suffix, ptr %suffix.addr, align 8
  store ptr %value, ptr %value.addr, align 8
  store ptr null, ptr %patch, align 8
  %cmp = icmp eq ptr %patches, null
  %0 = load ptr, ptr %operation.addr, align 8
  %cmp1 = icmp eq ptr %0, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  %1 = load ptr, ptr %path.addr, align 8
  %cmp3 = icmp eq ptr %1, null
  %or.cond1 = select i1 %or.cond, i1 true, i1 %cmp3
  br i1 %or.cond1, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call ptr @cJSON_CreateObject() #6
  store ptr %call, ptr %patch, align 8
  %cmp4 = icmp eq ptr %call, null
  br i1 %cmp4, label %return, label %if.end6

if.end6:                                          ; preds = %if.end
  %2 = load ptr, ptr %patch, align 8
  %3 = load ptr, ptr %operation.addr, align 8
  %call7 = call ptr @cJSON_CreateString(ptr noundef %3) #6
  %call8 = call i32 @cJSON_AddItemToObject(ptr noundef %2, ptr noundef nonnull @.str.6, ptr noundef %call7) #6
  %4 = load ptr, ptr %suffix.addr, align 8
  %cmp9 = icmp eq ptr %4, null
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end6
  %5 = load ptr, ptr %patch, align 8
  %6 = load ptr, ptr %path.addr, align 8
  %call11 = call ptr @cJSON_CreateString(ptr noundef %6) #6
  %call12 = call i32 @cJSON_AddItemToObject(ptr noundef %5, ptr noundef nonnull @.str.2, ptr noundef %call11) #6
  br label %if.end21

if.else:                                          ; preds = %if.end6
  %7 = load ptr, ptr %suffix.addr, align 8
  %call13 = call i64 @pointer_encoded_length(ptr noundef %7)
  %8 = load ptr, ptr %path.addr, align 8
  %call14 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #6
  store i64 %call14, ptr %path_length, align 8
  %add = add i64 %call14, %call13
  %add15 = add i64 %add, 2
  %call16 = call ptr @cJSON_malloc(i64 noundef %add15) #6
  store ptr %call16, ptr %full_path, align 8
  %9 = call i64 @llvm.objectsize.i64.p0(ptr %call16, i1 false, i1 true, i1 false)
  %10 = load ptr, ptr %path.addr, align 8
  %call17 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %call16, i32 noundef 0, i64 noundef %9, ptr noundef nonnull @.str.13, ptr noundef %10) #6
  %11 = load i64, ptr %path_length, align 8
  %add.ptr = getelementptr inbounds i8, ptr %call16, i64 %11
  %add.ptr18 = getelementptr inbounds i8, ptr %add.ptr, i64 1
  %12 = load ptr, ptr %suffix.addr, align 8
  call void @encode_string_as_pointer(ptr noundef nonnull %add.ptr18, ptr noundef %12)
  %13 = load ptr, ptr %patch, align 8
  %14 = load ptr, ptr %full_path, align 8
  %call19 = call ptr @cJSON_CreateString(ptr noundef %14) #6
  %call20 = call i32 @cJSON_AddItemToObject(ptr noundef %13, ptr noundef nonnull @.str.2, ptr noundef %call19) #6
  call void @cJSON_free(ptr noundef %14) #6
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then10
  %15 = load ptr, ptr %value.addr, align 8
  %cmp22.not = icmp eq ptr %15, null
  br i1 %cmp22.not, label %if.end26, label %if.then23

if.then23:                                        ; preds = %if.end21
  %16 = load ptr, ptr %patch, align 8
  %17 = load ptr, ptr %value.addr, align 8
  %call24 = call ptr @cJSON_Duplicate(ptr noundef %17, i32 noundef 1) #6
  %call25 = call i32 @cJSON_AddItemToObject(ptr noundef %16, ptr noundef nonnull @.str.3, ptr noundef %call24) #6
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end21
  %18 = load ptr, ptr %patches.addr, align 8
  %19 = load ptr, ptr %patch, align 8
  %call27 = call i32 @cJSON_AddItemToArray(ptr noundef %18, ptr noundef %19) #6
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end26
  ret void
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSONUtils_GeneratePatches(ptr noundef %from, ptr noundef %to) #0 {
entry:
  %from.addr = alloca ptr, align 8
  %to.addr = alloca ptr, align 8
  store ptr %from, ptr %from.addr, align 8
  store ptr %to, ptr %to.addr, align 8
  %cmp = icmp eq ptr %from, null
  %0 = load ptr, ptr %to.addr, align 8
  %cmp1 = icmp eq ptr %0, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call ptr @cJSON_CreateArray() #6
  %1 = load ptr, ptr %from.addr, align 8
  %2 = load ptr, ptr %to.addr, align 8
  call void @create_patches(ptr noundef %call, ptr noundef nonnull @.str, ptr noundef %1, ptr noundef %2, i32 noundef 0)
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi ptr [ %call, %if.end ], [ null, %entry ]
  ret ptr %storemerge
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
  %new_path71 = alloca ptr, align 8
  store ptr %patches, ptr %patches.addr, align 8
  store ptr %path, ptr %path.addr, align 8
  store ptr %from, ptr %from.addr, align 8
  store ptr %to, ptr %to.addr, align 8
  store i32 %case_sensitive, ptr %case_sensitive.addr, align 4
  %cmp = icmp eq ptr %from, null
  %0 = load ptr, ptr %to.addr, align 8
  %cmp1 = icmp eq ptr %0, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %sw.epilog, label %if.end

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %from.addr, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %1, i64 0, i32 3
  %2 = load i32, ptr %type, align 8
  %3 = load ptr, ptr %to.addr, align 8
  %type2 = getelementptr inbounds %struct.cJSON, ptr %3, i64 0, i32 3
  %4 = load i32, ptr %type2, align 8
  %5 = xor i32 %2, %4
  %6 = and i32 %5, 255
  %cmp4.not = icmp eq i32 %6, 0
  br i1 %cmp4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  %7 = load ptr, ptr %patches.addr, align 8
  %8 = load ptr, ptr %path.addr, align 8
  %9 = load ptr, ptr %to.addr, align 8
  call void @compose_patch(ptr noundef %7, ptr noundef nonnull @.str.9, ptr noundef %8, ptr noundef null, ptr noundef %9)
  br label %sw.epilog

if.end6:                                          ; preds = %if.end
  %10 = load ptr, ptr %from.addr, align 8
  %type7 = getelementptr inbounds %struct.cJSON, ptr %10, i64 0, i32 3
  %11 = load i32, ptr %type7, align 8
  %trunc = trunc i32 %11 to i8
  %12 = sub i8 %trunc, 8
  %13 = lshr i8 %12, 3
  %14 = shl i8 %12, 5
  %15 = or i8 %13, %14
  switch i8 %15, label %sw.epilog [
    i8 0, label %sw.bb
    i8 1, label %sw.bb15
    i8 3, label %sw.bb21
    i8 7, label %sw.bb50
  ]

sw.bb:                                            ; preds = %if.end6
  %16 = load ptr, ptr %from.addr, align 8
  %valueint = getelementptr inbounds %struct.cJSON, ptr %16, i64 0, i32 5
  %17 = load i32, ptr %valueint, align 8
  %18 = load ptr, ptr %to.addr, align 8
  %valueint9 = getelementptr inbounds %struct.cJSON, ptr %18, i64 0, i32 5
  %19 = load i32, ptr %valueint9, align 8
  %cmp10.not = icmp eq i32 %17, %19
  br i1 %cmp10.not, label %lor.lhs.false11, label %if.then13

lor.lhs.false11:                                  ; preds = %sw.bb
  %20 = load ptr, ptr %from.addr, align 8
  %valuedouble = getelementptr inbounds %struct.cJSON, ptr %20, i64 0, i32 6
  %21 = load double, ptr %valuedouble, align 8
  %22 = load ptr, ptr %to.addr, align 8
  %valuedouble12 = getelementptr inbounds %struct.cJSON, ptr %22, i64 0, i32 6
  %23 = load double, ptr %valuedouble12, align 8
  %call = call i32 @compare_double(double noundef %21, double noundef %23)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then13, label %sw.epilog

if.then13:                                        ; preds = %lor.lhs.false11, %sw.bb
  %24 = load ptr, ptr %patches.addr, align 8
  %25 = load ptr, ptr %path.addr, align 8
  %26 = load ptr, ptr %to.addr, align 8
  call void @compose_patch(ptr noundef %24, ptr noundef nonnull @.str.9, ptr noundef %25, ptr noundef null, ptr noundef %26)
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end6
  %27 = load ptr, ptr %from.addr, align 8
  %valuestring = getelementptr inbounds %struct.cJSON, ptr %27, i64 0, i32 4
  %28 = load ptr, ptr %valuestring, align 8
  %29 = load ptr, ptr %to.addr, align 8
  %valuestring16 = getelementptr inbounds %struct.cJSON, ptr %29, i64 0, i32 4
  %30 = load ptr, ptr %valuestring16, align 8
  %call17 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(1) %30) #6
  %cmp18.not = icmp eq i32 %call17, 0
  br i1 %cmp18.not, label %sw.epilog, label %if.then19

if.then19:                                        ; preds = %sw.bb15
  %31 = load ptr, ptr %patches.addr, align 8
  %32 = load ptr, ptr %path.addr, align 8
  %33 = load ptr, ptr %to.addr, align 8
  call void @compose_patch(ptr noundef %31, ptr noundef nonnull @.str.9, ptr noundef %32, ptr noundef null, ptr noundef %33)
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end6
  store i64 0, ptr %index, align 8
  %34 = load ptr, ptr %from.addr, align 8
  %child = getelementptr inbounds %struct.cJSON, ptr %34, i64 0, i32 2
  %35 = load ptr, ptr %child, align 8
  store ptr %35, ptr %from_child, align 8
  %36 = load ptr, ptr %to.addr, align 8
  %child22 = getelementptr inbounds %struct.cJSON, ptr %36, i64 0, i32 2
  %37 = load ptr, ptr %child22, align 8
  store ptr %37, ptr %to_child, align 8
  %38 = load ptr, ptr %path.addr, align 8
  %call23 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %38) #6
  %add24 = add i64 %call23, 22
  %call25 = call ptr @cJSON_malloc(i64 noundef %add24) #6
  store ptr %call25, ptr %new_path, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end30, %sw.bb21
  %storemerge2 = phi i64 [ 0, %sw.bb21 ], [ %inc, %if.end30 ]
  store i64 %storemerge2, ptr %index, align 8
  %39 = load ptr, ptr %from_child, align 8
  %cmp26.not = icmp eq ptr %39, null
  %40 = load ptr, ptr %to_child, align 8
  %cmp27 = icmp ne ptr %40, null
  %41 = select i1 %cmp26.not, i1 false, i1 %cmp27
  br i1 %41, label %if.end30, label %for.cond33

if.end30:                                         ; preds = %for.cond
  %42 = load ptr, ptr %new_path, align 8
  %43 = call i64 @llvm.objectsize.i64.p0(ptr %42, i1 false, i1 true, i1 false)
  %44 = load ptr, ptr %path.addr, align 8
  %45 = load i64, ptr %index, align 8
  %call31 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %42, i32 noundef 0, i64 noundef %43, ptr noundef nonnull @.str.14, ptr noundef %44, i64 noundef %45) #6
  %46 = load ptr, ptr %patches.addr, align 8
  %47 = load ptr, ptr %from_child, align 8
  %48 = load ptr, ptr %to_child, align 8
  %49 = load i32, ptr %case_sensitive.addr, align 4
  call void @create_patches(ptr noundef %46, ptr noundef %42, ptr noundef %47, ptr noundef %48, i32 noundef %49)
  %50 = load ptr, ptr %from_child, align 8
  %51 = load ptr, ptr %50, align 8
  store ptr %51, ptr %from_child, align 8
  %52 = load ptr, ptr %to_child, align 8
  %53 = load ptr, ptr %52, align 8
  store ptr %53, ptr %to_child, align 8
  %54 = load i64, ptr %index, align 8
  %inc = add i64 %54, 1
  br label %for.cond, !llvm.loop !15

for.cond33:                                       ; preds = %for.cond, %if.end38
  %55 = load ptr, ptr %from_child, align 8
  %cmp34.not = icmp eq ptr %55, null
  br i1 %cmp34.not, label %for.cond43, label %if.end38

if.end38:                                         ; preds = %for.cond33
  %56 = load ptr, ptr %new_path, align 8
  %57 = call i64 @llvm.objectsize.i64.p0(ptr %56, i1 false, i1 true, i1 false)
  %58 = load i64, ptr %index, align 8
  %call39 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %56, i32 noundef 0, i64 noundef %57, ptr noundef nonnull @.str.15, i64 noundef %58) #6
  %59 = load ptr, ptr %patches.addr, align 8
  %60 = load ptr, ptr %path.addr, align 8
  call void @compose_patch(ptr noundef %59, ptr noundef nonnull @.str.8, ptr noundef %60, ptr noundef %56, ptr noundef null)
  %61 = load ptr, ptr %from_child, align 8
  %62 = load ptr, ptr %61, align 8
  store ptr %62, ptr %from_child, align 8
  br label %for.cond33, !llvm.loop !16

for.cond43:                                       ; preds = %for.cond33, %for.body45
  %63 = load ptr, ptr %to_child, align 8
  %cmp44.not = icmp eq ptr %63, null
  br i1 %cmp44.not, label %for.end49, label %for.body45

for.body45:                                       ; preds = %for.cond43
  %64 = load ptr, ptr %patches.addr, align 8
  %65 = load ptr, ptr %path.addr, align 8
  %66 = load ptr, ptr %to_child, align 8
  call void @compose_patch(ptr noundef %64, ptr noundef nonnull @.str.7, ptr noundef %65, ptr noundef nonnull @.str.5, ptr noundef %66)
  %67 = load ptr, ptr %to_child, align 8
  %68 = load ptr, ptr %67, align 8
  store ptr %68, ptr %to_child, align 8
  %69 = load i64, ptr %index, align 8
  %inc48 = add i64 %69, 1
  store i64 %inc48, ptr %index, align 8
  br label %for.cond43, !llvm.loop !17

for.end49:                                        ; preds = %for.cond43
  %70 = load ptr, ptr %new_path, align 8
  call void @cJSON_free(ptr noundef %70) #6
  br label %sw.epilog

sw.bb50:                                          ; preds = %if.end6
  store ptr null, ptr %from_child51, align 8
  store ptr null, ptr %to_child52, align 8
  %71 = load ptr, ptr %from.addr, align 8
  %72 = load i32, ptr %case_sensitive.addr, align 4
  call void @sort_object(ptr noundef %71, i32 noundef %72)
  %73 = load ptr, ptr %to.addr, align 8
  call void @sort_object(ptr noundef %73, i32 noundef %72)
  %child53 = getelementptr inbounds %struct.cJSON, ptr %71, i64 0, i32 2
  %74 = load ptr, ptr %child53, align 8
  store ptr %74, ptr %from_child51, align 8
  %child54 = getelementptr inbounds %struct.cJSON, ptr %73, i64 0, i32 2
  %75 = load ptr, ptr %child54, align 8
  store ptr %75, ptr %to_child52, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end89, %sw.bb50
  %76 = load ptr, ptr %from_child51, align 8
  %cmp55.not = icmp eq ptr %76, null
  %77 = load ptr, ptr %to_child52, align 8
  %cmp56 = icmp ne ptr %77, null
  %78 = select i1 %cmp55.not, i1 %cmp56, i1 true
  br i1 %78, label %while.body, label %sw.epilog

while.body:                                       ; preds = %while.cond
  %79 = load ptr, ptr %from_child51, align 8
  %cmp57 = icmp eq ptr %79, null
  br i1 %cmp57, label %if.end65, label %if.else

if.else:                                          ; preds = %while.body
  %80 = load ptr, ptr %to_child52, align 8
  %cmp59 = icmp eq ptr %80, null
  br i1 %cmp59, label %if.end65, label %if.else61

if.else61:                                        ; preds = %if.else
  %81 = load ptr, ptr %from_child51, align 8
  %string = getelementptr inbounds %struct.cJSON, ptr %81, i64 0, i32 7
  %82 = load ptr, ptr %string, align 8
  %83 = load ptr, ptr %to_child52, align 8
  %string62 = getelementptr inbounds %struct.cJSON, ptr %83, i64 0, i32 7
  %84 = load ptr, ptr %string62, align 8
  %85 = load i32, ptr %case_sensitive.addr, align 4
  %call63 = call i32 @compare_strings(ptr noundef %82, ptr noundef %84, i32 noundef %85)
  br label %if.end65

if.end65:                                         ; preds = %if.else61, %if.else, %while.body
  %storemerge1 = phi i32 [ 1, %while.body ], [ %call63, %if.else61 ], [ -1, %if.else ]
  store i32 %storemerge1, ptr %diff, align 4
  %cmp66 = icmp eq i32 %storemerge1, 0
  br i1 %cmp66, label %if.then67, label %if.else80

if.then67:                                        ; preds = %if.end65
  %86 = load ptr, ptr %path.addr, align 8
  %call68 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %86) #6
  store i64 %call68, ptr %path_length, align 8
  %87 = load ptr, ptr %from_child51, align 8
  %string69 = getelementptr inbounds %struct.cJSON, ptr %87, i64 0, i32 7
  %88 = load ptr, ptr %string69, align 8
  %call70 = call i64 @pointer_encoded_length(ptr noundef %88)
  %add72 = add i64 %call68, %call70
  %add73 = add i64 %add72, 2
  %call74 = call ptr @cJSON_malloc(i64 noundef %add73) #6
  store ptr %call74, ptr %new_path71, align 8
  %89 = call i64 @llvm.objectsize.i64.p0(ptr %call74, i1 false, i1 true, i1 false)
  %90 = load ptr, ptr %path.addr, align 8
  %call75 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %call74, i32 noundef 0, i64 noundef %89, ptr noundef nonnull @.str.13, ptr noundef %90) #6
  %91 = load i64, ptr %path_length, align 8
  %add.ptr = getelementptr inbounds i8, ptr %call74, i64 %91
  %add.ptr76 = getelementptr inbounds i8, ptr %add.ptr, i64 1
  %92 = load ptr, ptr %from_child51, align 8
  %string77 = getelementptr inbounds %struct.cJSON, ptr %92, i64 0, i32 7
  %93 = load ptr, ptr %string77, align 8
  call void @encode_string_as_pointer(ptr noundef nonnull %add.ptr76, ptr noundef %93)
  %94 = load ptr, ptr %patches.addr, align 8
  %95 = load ptr, ptr %new_path71, align 8
  %96 = load ptr, ptr %to_child52, align 8
  %97 = load i32, ptr %case_sensitive.addr, align 4
  call void @create_patches(ptr noundef %94, ptr noundef %95, ptr noundef %92, ptr noundef %96, i32 noundef %97)
  call void @cJSON_free(ptr noundef %95) #6
  %98 = load ptr, ptr %from_child51, align 8
  %99 = load ptr, ptr %98, align 8
  store ptr %99, ptr %from_child51, align 8
  %100 = load ptr, ptr %to_child52, align 8
  %101 = load ptr, ptr %100, align 8
  store ptr %101, ptr %to_child52, align 8
  br label %if.end89

if.else80:                                        ; preds = %if.end65
  %102 = load i32, ptr %diff, align 4
  %cmp81 = icmp slt i32 %102, 0
  br i1 %cmp81, label %if.then82, label %if.else85

if.then82:                                        ; preds = %if.else80
  %103 = load ptr, ptr %patches.addr, align 8
  %104 = load ptr, ptr %path.addr, align 8
  %105 = load ptr, ptr %from_child51, align 8
  %string83 = getelementptr inbounds %struct.cJSON, ptr %105, i64 0, i32 7
  %106 = load ptr, ptr %string83, align 8
  call void @compose_patch(ptr noundef %103, ptr noundef nonnull @.str.8, ptr noundef %104, ptr noundef %106, ptr noundef null)
  %107 = load ptr, ptr %105, align 8
  store ptr %107, ptr %from_child51, align 8
  br label %if.end89

if.else85:                                        ; preds = %if.else80
  %108 = load ptr, ptr %patches.addr, align 8
  %109 = load ptr, ptr %path.addr, align 8
  %110 = load ptr, ptr %to_child52, align 8
  %string86 = getelementptr inbounds %struct.cJSON, ptr %110, i64 0, i32 7
  %111 = load ptr, ptr %string86, align 8
  call void @compose_patch(ptr noundef %108, ptr noundef nonnull @.str.7, ptr noundef %109, ptr noundef %111, ptr noundef %110)
  %112 = load ptr, ptr %110, align 8
  store ptr %112, ptr %to_child52, align 8
  br label %if.end89

if.end89:                                         ; preds = %if.then82, %if.else85, %if.then67
  br label %while.cond, !llvm.loop !18

sw.epilog:                                        ; preds = %if.end6, %while.cond, %sw.bb15, %if.then19, %lor.lhs.false11, %if.then13, %entry, %for.end49, %if.then5
  ret void
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSONUtils_GeneratePatchesCaseSensitive(ptr noundef %from, ptr noundef %to) #0 {
entry:
  %from.addr = alloca ptr, align 8
  %to.addr = alloca ptr, align 8
  store ptr %from, ptr %from.addr, align 8
  store ptr %to, ptr %to.addr, align 8
  %cmp = icmp eq ptr %from, null
  %0 = load ptr, ptr %to.addr, align 8
  %cmp1 = icmp eq ptr %0, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call ptr @cJSON_CreateArray() #6
  %1 = load ptr, ptr %from.addr, align 8
  %2 = load ptr, ptr %to.addr, align 8
  call void @create_patches(ptr noundef %call, ptr noundef nonnull @.str, ptr noundef %1, ptr noundef %2, i32 noundef 1)
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi ptr [ %call, %if.end ], [ null, %entry ]
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define void @cJSONUtils_SortObject(ptr noundef %object) #0 {
entry:
  call void @sort_object(ptr noundef %object, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @sort_object(ptr noundef %object, i32 noundef %case_sensitive) #0 {
entry:
  %object.addr = alloca ptr, align 8
  %case_sensitive.addr = alloca i32, align 4
  store ptr %object, ptr %object.addr, align 8
  store i32 %case_sensitive, ptr %case_sensitive.addr, align 4
  %cmp = icmp eq ptr %object, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %object.addr, align 8
  %child = getelementptr inbounds %struct.cJSON, ptr %0, i64 0, i32 2
  %1 = load ptr, ptr %child, align 8
  %2 = load i32, ptr %case_sensitive.addr, align 4
  %call = call ptr @sort_list(ptr noundef %1, i32 noundef %2)
  %child1 = getelementptr inbounds %struct.cJSON, ptr %0, i64 0, i32 2
  store ptr %call, ptr %child1, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @cJSONUtils_SortObjectCaseSensitive(ptr noundef %object) #0 {
entry:
  call void @sort_object(ptr noundef %object, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSONUtils_MergePatch(ptr noundef %target, ptr noundef %patch) #0 {
entry:
  %call = call ptr @merge_patch(ptr noundef %target, ptr noundef %patch, i32 noundef 0)
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
  %replacement = alloca ptr, align 8
  store ptr %target, ptr %target.addr, align 8
  store ptr %patch, ptr %patch.addr, align 8
  store i32 %case_sensitive, ptr %case_sensitive.addr, align 4
  store ptr null, ptr %patch_child, align 8
  %call = call i32 @cJSON_IsObject(ptr noundef %patch) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %target.addr, align 8
  call void @cJSON_Delete(ptr noundef %0) #6
  %1 = load ptr, ptr %patch.addr, align 8
  %call1 = call ptr @cJSON_Duplicate(ptr noundef %1, i32 noundef 1) #6
  store ptr %call1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %target.addr, align 8
  %call2 = call i32 @cJSON_IsObject(ptr noundef %2) #6
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %3 = load ptr, ptr %target.addr, align 8
  call void @cJSON_Delete(ptr noundef %3) #6
  %call5 = call ptr @cJSON_CreateObject() #6
  store ptr %call5, ptr %target.addr, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %4 = load ptr, ptr %patch.addr, align 8
  %child = getelementptr inbounds %struct.cJSON, ptr %4, i64 0, i32 2
  br label %while.cond

while.cond:                                       ; preds = %if.end29, %if.end6
  %storemerge.in = phi ptr [ %child, %if.end6 ], [ %27, %if.end29 ]
  %storemerge = load ptr, ptr %storemerge.in, align 8
  store ptr %storemerge, ptr %patch_child, align 8
  %cmp.not = icmp eq ptr %storemerge, null
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %patch_child, align 8
  %call7 = call i32 @cJSON_IsNull(ptr noundef %5) #6
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.else14, label %if.then9

if.then9:                                         ; preds = %while.body
  %6 = load i32, ptr %case_sensitive.addr, align 4
  %tobool10.not = icmp eq i32 %6, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.then9
  %7 = load ptr, ptr %target.addr, align 8
  %8 = load ptr, ptr %patch_child, align 8
  %string = getelementptr inbounds %struct.cJSON, ptr %8, i64 0, i32 7
  %9 = load ptr, ptr %string, align 8
  call void @cJSON_DeleteItemFromObjectCaseSensitive(ptr noundef %7, ptr noundef %9) #6
  br label %if.end29

if.else:                                          ; preds = %if.then9
  %10 = load ptr, ptr %target.addr, align 8
  %11 = load ptr, ptr %patch_child, align 8
  %string12 = getelementptr inbounds %struct.cJSON, ptr %11, i64 0, i32 7
  %12 = load ptr, ptr %string12, align 8
  call void @cJSON_DeleteItemFromObject(ptr noundef %10, ptr noundef %12) #6
  br label %if.end29

if.else14:                                        ; preds = %while.body
  store ptr null, ptr %replacement, align 8
  %13 = load i32, ptr %case_sensitive.addr, align 4
  %tobool15.not = icmp eq i32 %13, 0
  br i1 %tobool15.not, label %if.else19, label %if.then16

if.then16:                                        ; preds = %if.else14
  %14 = load ptr, ptr %target.addr, align 8
  %15 = load ptr, ptr %patch_child, align 8
  %string17 = getelementptr inbounds %struct.cJSON, ptr %15, i64 0, i32 7
  %16 = load ptr, ptr %string17, align 8
  %call18 = call ptr @cJSON_DetachItemFromObjectCaseSensitive(ptr noundef %14, ptr noundef %16) #6
  br label %if.end22

if.else19:                                        ; preds = %if.else14
  %17 = load ptr, ptr %target.addr, align 8
  %18 = load ptr, ptr %patch_child, align 8
  %string20 = getelementptr inbounds %struct.cJSON, ptr %18, i64 0, i32 7
  %19 = load ptr, ptr %string20, align 8
  %call21 = call ptr @cJSON_DetachItemFromObject(ptr noundef %17, ptr noundef %19) #6
  br label %if.end22

if.end22:                                         ; preds = %if.else19, %if.then16
  %storemerge1 = phi ptr [ %call21, %if.else19 ], [ %call18, %if.then16 ]
  %20 = load ptr, ptr %patch_child, align 8
  %21 = load i32, ptr %case_sensitive.addr, align 4
  %call23 = call ptr @merge_patch(ptr noundef %storemerge1, ptr noundef %20, i32 noundef %21)
  store ptr %call23, ptr %replacement, align 8
  %cmp24 = icmp eq ptr %call23, null
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end22
  %22 = load ptr, ptr %target.addr, align 8
  call void @cJSON_Delete(ptr noundef %22) #6
  store ptr null, ptr %retval, align 8
  br label %return

if.end26:                                         ; preds = %if.end22
  %23 = load ptr, ptr %target.addr, align 8
  %24 = load ptr, ptr %patch_child, align 8
  %string27 = getelementptr inbounds %struct.cJSON, ptr %24, i64 0, i32 7
  %25 = load ptr, ptr %string27, align 8
  %26 = load ptr, ptr %replacement, align 8
  %call28 = call i32 @cJSON_AddItemToObject(ptr noundef %23, ptr noundef %25, ptr noundef %26) #6
  br label %if.end29

if.end29:                                         ; preds = %if.then11, %if.else, %if.end26
  %27 = load ptr, ptr %patch_child, align 8
  br label %while.cond, !llvm.loop !19

while.end:                                        ; preds = %while.cond
  %28 = load ptr, ptr %target.addr, align 8
  store ptr %28, ptr %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then25, %if.then
  %29 = load ptr, ptr %retval, align 8
  ret ptr %29
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSONUtils_MergePatchCaseSensitive(ptr noundef %target, ptr noundef %patch) #0 {
entry:
  %call = call ptr @merge_patch(ptr noundef %target, ptr noundef %patch, i32 noundef 1)
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSONUtils_GenerateMergePatch(ptr noundef %from, ptr noundef %to) #0 {
entry:
  %call = call ptr @generate_merge_patch(ptr noundef %from, ptr noundef %to, i32 noundef 0)
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
  %cmp = icmp eq ptr %to, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call ptr @cJSON_CreateNull() #6
  store ptr %call, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %to.addr, align 8
  %call1 = call i32 @cJSON_IsObject(ptr noundef %0) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %1 = load ptr, ptr %from.addr, align 8
  %call2 = call i32 @cJSON_IsObject(ptr noundef %1) #6
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  %2 = load ptr, ptr %to.addr, align 8
  %call5 = call ptr @cJSON_Duplicate(ptr noundef %2, i32 noundef 1) #6
  store ptr %call5, ptr %retval, align 8
  br label %return

if.end6:                                          ; preds = %lor.lhs.false
  %3 = load ptr, ptr %from.addr, align 8
  %4 = load i32, ptr %case_sensitive.addr, align 4
  call void @sort_object(ptr noundef %3, i32 noundef %4)
  %5 = load ptr, ptr %to.addr, align 8
  call void @sort_object(ptr noundef %5, i32 noundef %4)
  %child = getelementptr inbounds %struct.cJSON, ptr %3, i64 0, i32 2
  %6 = load ptr, ptr %child, align 8
  store ptr %6, ptr %from_child, align 8
  %child7 = getelementptr inbounds %struct.cJSON, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %child7, align 8
  store ptr %7, ptr %to_child, align 8
  %call8 = call ptr @cJSON_CreateObject() #6
  store ptr %call8, ptr %patch, align 8
  %cmp9 = icmp eq ptr %call8, null
  br i1 %cmp9, label %if.then10, label %while.cond

if.then10:                                        ; preds = %if.end6
  store ptr null, ptr %retval, align 8
  br label %return

while.cond:                                       ; preds = %if.end6, %if.end46
  %8 = load ptr, ptr %from_child, align 8
  %tobool12.not = icmp eq ptr %8, null
  %9 = load ptr, ptr %to_child, align 8
  %tobool13 = icmp ne ptr %9, null
  %10 = select i1 %tobool12.not, i1 %tobool13, i1 true
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load ptr, ptr %from_child, align 8
  %cmp14.not = icmp eq ptr %11, null
  br i1 %cmp14.not, label %if.end22, label %if.then15

if.then15:                                        ; preds = %while.body
  %12 = load ptr, ptr %to_child, align 8
  %cmp16.not = icmp eq ptr %12, null
  br i1 %cmp16.not, label %if.end22, label %if.then17

if.then17:                                        ; preds = %if.then15
  %13 = load ptr, ptr %from_child, align 8
  %string = getelementptr inbounds %struct.cJSON, ptr %13, i64 0, i32 7
  %14 = load ptr, ptr %string, align 8
  %15 = load ptr, ptr %to_child, align 8
  %string18 = getelementptr inbounds %struct.cJSON, ptr %15, i64 0, i32 7
  %16 = load ptr, ptr %string18, align 8
  %call19 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %16) #6
  br label %if.end22

if.end22:                                         ; preds = %while.body, %if.then17, %if.then15
  %storemerge2 = phi i32 [ %call19, %if.then17 ], [ -1, %if.then15 ], [ 1, %while.body ]
  store i32 %storemerge2, ptr %diff, align 4
  %cmp23 = icmp slt i32 %storemerge2, 0
  br i1 %cmp23, label %if.then24, label %if.else28

if.then24:                                        ; preds = %if.end22
  %17 = load ptr, ptr %patch, align 8
  %18 = load ptr, ptr %from_child, align 8
  %string25 = getelementptr inbounds %struct.cJSON, ptr %18, i64 0, i32 7
  %19 = load ptr, ptr %string25, align 8
  %call26 = call ptr @cJSON_CreateNull() #6
  %call27 = call i32 @cJSON_AddItemToObject(ptr noundef %17, ptr noundef %19, ptr noundef %call26) #6
  %20 = load ptr, ptr %18, align 8
  store ptr %20, ptr %from_child, align 8
  br label %if.end46

if.else28:                                        ; preds = %if.end22
  %21 = load i32, ptr %diff, align 4
  %cmp29 = icmp sgt i32 %21, 0
  br i1 %cmp29, label %if.then30, label %if.else35

if.then30:                                        ; preds = %if.else28
  %22 = load ptr, ptr %patch, align 8
  %23 = load ptr, ptr %to_child, align 8
  %string31 = getelementptr inbounds %struct.cJSON, ptr %23, i64 0, i32 7
  %24 = load ptr, ptr %string31, align 8
  %call32 = call ptr @cJSON_Duplicate(ptr noundef %23, i32 noundef 1) #6
  %call33 = call i32 @cJSON_AddItemToObject(ptr noundef %22, ptr noundef %24, ptr noundef %call32) #6
  br label %if.end45

if.else35:                                        ; preds = %if.else28
  %25 = load ptr, ptr %from_child, align 8
  %26 = load ptr, ptr %to_child, align 8
  %27 = load i32, ptr %case_sensitive.addr, align 4
  %call36 = call i32 @compare_json(ptr noundef %25, ptr noundef %26, i32 noundef %27)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then38, label %if.end42

if.then38:                                        ; preds = %if.else35
  %28 = load ptr, ptr %patch, align 8
  %29 = load ptr, ptr %to_child, align 8
  %string39 = getelementptr inbounds %struct.cJSON, ptr %29, i64 0, i32 7
  %30 = load ptr, ptr %string39, align 8
  %31 = load ptr, ptr %from_child, align 8
  %call40 = call ptr @cJSONUtils_GenerateMergePatch(ptr noundef %31, ptr noundef %29)
  %call41 = call i32 @cJSON_AddItemToObject(ptr noundef %28, ptr noundef %30, ptr noundef %call40) #6
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %if.else35
  %32 = load ptr, ptr %from_child, align 8
  %33 = load ptr, ptr %32, align 8
  store ptr %33, ptr %from_child, align 8
  %34 = load ptr, ptr %to_child, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.end42, %if.then30
  %storemerge.in = phi ptr [ %34, %if.end42 ], [ %23, %if.then30 ]
  %storemerge = load ptr, ptr %storemerge.in, align 8
  store ptr %storemerge, ptr %to_child, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then24
  br label %while.cond, !llvm.loop !20

while.end:                                        ; preds = %while.cond
  %35 = load ptr, ptr %patch, align 8
  %child47 = getelementptr inbounds %struct.cJSON, ptr %35, i64 0, i32 2
  %36 = load ptr, ptr %child47, align 8
  %cmp48 = icmp eq ptr %36, null
  br i1 %cmp48, label %if.then49, label %if.end50

if.then49:                                        ; preds = %while.end
  %37 = load ptr, ptr %patch, align 8
  call void @cJSON_Delete(ptr noundef %37) #6
  store ptr null, ptr %retval, align 8
  br label %return

if.end50:                                         ; preds = %while.end
  %38 = load ptr, ptr %patch, align 8
  store ptr %38, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end50, %if.then49, %if.then10, %if.then4, %if.then
  %39 = load ptr, ptr %retval, align 8
  ret ptr %39
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSONUtils_GenerateMergePatchCaseSensitive(ptr noundef %from, ptr noundef %to) #0 {
entry:
  %call = call ptr @generate_merge_patch(ptr noundef %from, ptr noundef %to, i32 noundef 1)
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
  %0 = load i8, ptr %pointer, align 1
  %cmp = icmp eq i8 %0, 48
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %pointer.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %1, i64 1
  %2 = load i8, ptr %arrayidx2, align 1
  %cmp4.not = icmp eq i8 %2, 0
  br i1 %cmp4.not, label %if.end, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %land.lhs.true
  %3 = load ptr, ptr %pointer.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %3, i64 1
  %4 = load i8, ptr %arrayidx7, align 1
  %cmp9.not = icmp eq i8 %4, 47
  br i1 %cmp9.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true6
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true6, %land.lhs.true, %entry
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end
  %storemerge = phi i64 [ 0, %if.end ], [ %inc, %for.body ]
  store i64 %storemerge, ptr %position, align 8
  %5 = load ptr, ptr %pointer.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %5, i64 %storemerge
  %6 = load i8, ptr %arrayidx11, align 1
  %cmp13 = icmp ugt i8 %6, 47
  br i1 %cmp13, label %land.rhs, label %for.end

land.rhs:                                         ; preds = %for.cond
  %7 = load ptr, ptr %pointer.addr, align 8
  %8 = load i64, ptr %position, align 8
  %arrayidx15 = getelementptr inbounds i8, ptr %7, i64 %8
  %9 = load i8, ptr %arrayidx15, align 1
  %cmp17 = icmp ult i8 %9, 58
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %land.rhs
  %10 = load i64, ptr %parsed_index, align 8
  %mul = mul i64 %10, 10
  %11 = load ptr, ptr %pointer.addr, align 8
  %12 = load i64, ptr %position, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %11, i64 %12
  %13 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %13 to i64
  %sub = add nsw i64 %conv20, -48
  %add = add i64 %mul, %sub
  store i64 %add, ptr %parsed_index, align 8
  %14 = load i64, ptr %position, align 8
  %inc = add i64 %14, 1
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %for.cond, %land.rhs
  %15 = load ptr, ptr %pointer.addr, align 8
  %16 = load i64, ptr %position, align 8
  %arrayidx22 = getelementptr inbounds i8, ptr %15, i64 %16
  %17 = load i8, ptr %arrayidx22, align 1
  %cmp24.not = icmp eq i8 %17, 0
  br i1 %cmp24.not, label %if.end32, label %land.lhs.true26

land.lhs.true26:                                  ; preds = %for.end
  %18 = load ptr, ptr %pointer.addr, align 8
  %19 = load i64, ptr %position, align 8
  %arrayidx27 = getelementptr inbounds i8, ptr %18, i64 %19
  %20 = load i8, ptr %arrayidx27, align 1
  %cmp29.not = icmp eq i8 %20, 47
  br i1 %cmp29.not, label %if.end32, label %if.then31

if.then31:                                        ; preds = %land.lhs.true26
  store i32 0, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %land.lhs.true26, %for.end
  %21 = load i64, ptr %parsed_index, align 8
  %22 = load ptr, ptr %index.addr, align 8
  store i64 %21, ptr %22, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end32, %if.then31, %if.then
  %23 = load i32, ptr %retval, align 4
  ret i32 %23
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @get_array_item(ptr noundef %array, i64 noundef %item) #0 {
entry:
  %array.addr = alloca ptr, align 8
  %item.addr = alloca i64, align 8
  %child = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8
  store i64 %item, ptr %item.addr, align 8
  %tobool.not = icmp eq ptr %array, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %0 = load ptr, ptr %array.addr, align 8
  %child1 = getelementptr inbounds %struct.cJSON, ptr %0, i64 0, i32 2
  %1 = load ptr, ptr %child1, align 8
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi ptr [ %1, %cond.true ], [ null, %entry ]
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %storemerge = phi ptr [ %cond, %cond.end ], [ %6, %while.body ]
  store ptr %storemerge, ptr %child, align 8
  %cmp.not = icmp eq ptr %storemerge, null
  %2 = load i64, ptr %item.addr, align 8
  %cmp2 = icmp ne i64 %2, 0
  %3 = select i1 %cmp.not, i1 false, i1 %cmp2
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i64, ptr %item.addr, align 8
  %dec = add i64 %4, -1
  store i64 %dec, ptr %item.addr, align 8
  %5 = load ptr, ptr %child, align 8
  %6 = load ptr, ptr %5, align 8
  br label %while.cond, !llvm.loop !22

while.end:                                        ; preds = %while.cond
  %7 = load ptr, ptr %child, align 8
  ret ptr %7
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
  %cmp = icmp eq ptr %name, null
  %0 = load ptr, ptr %pointer.addr, align 8
  %cmp1 = icmp eq ptr %0, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %if.then, label %for.cond

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

for.cond:                                         ; preds = %entry, %for.inc
  %1 = load ptr, ptr %name.addr, align 8
  %2 = load i8, ptr %1, align 1
  %cmp2.not = icmp eq i8 %2, 0
  br i1 %cmp2.not, label %for.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.cond
  %3 = load ptr, ptr %pointer.addr, align 8
  %4 = load i8, ptr %3, align 1
  %cmp5.not = icmp eq i8 %4, 0
  br i1 %cmp5.not, label %for.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load ptr, ptr %pointer.addr, align 8
  %6 = load i8, ptr %5, align 1
  %cmp8 = icmp ne i8 %6, 47
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %land.rhs
  %7 = load ptr, ptr %pointer.addr, align 8
  %8 = load i8, ptr %7, align 1
  %cmp11 = icmp eq i8 %8, 126
  br i1 %cmp11, label %if.then13, label %if.else32

if.then13:                                        ; preds = %for.body
  %9 = load ptr, ptr %pointer.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %9, i64 1
  %10 = load i8, ptr %arrayidx, align 1
  %cmp15.not = icmp eq i8 %10, 48
  br i1 %cmp15.not, label %lor.lhs.false17, label %land.lhs.true21

lor.lhs.false17:                                  ; preds = %if.then13
  %11 = load ptr, ptr %name.addr, align 8
  %12 = load i8, ptr %11, align 1
  %cmp19.not = icmp eq i8 %12, 126
  br i1 %cmp19.not, label %if.else, label %land.lhs.true21

land.lhs.true21:                                  ; preds = %lor.lhs.false17, %if.then13
  %13 = load ptr, ptr %pointer.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, ptr %13, i64 1
  %14 = load i8, ptr %arrayidx22, align 1
  %cmp24.not = icmp eq i8 %14, 49
  br i1 %cmp24.not, label %lor.lhs.false26, label %if.then30

lor.lhs.false26:                                  ; preds = %land.lhs.true21
  %15 = load ptr, ptr %name.addr, align 8
  %16 = load i8, ptr %15, align 1
  %cmp28.not = icmp eq i8 %16, 47
  br i1 %cmp28.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %lor.lhs.false26, %land.lhs.true21
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %lor.lhs.false26, %lor.lhs.false17
  %17 = load ptr, ptr %pointer.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %17, i64 1
  store ptr %incdec.ptr, ptr %pointer.addr, align 8
  br label %for.inc

if.else32:                                        ; preds = %for.body
  %18 = load i32, ptr %case_sensitive.addr, align 4
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %land.lhs.true33, label %lor.lhs.false39

land.lhs.true33:                                  ; preds = %if.else32
  %19 = load ptr, ptr %name.addr, align 8
  %20 = load i8, ptr %19, align 1
  %conv34 = zext i8 %20 to i32
  %call = call i32 @tolower(i32 noundef %conv34) #7
  %21 = load ptr, ptr %pointer.addr, align 8
  %22 = load i8, ptr %21, align 1
  %conv35 = zext i8 %22 to i32
  %call36 = call i32 @tolower(i32 noundef %conv35) #7
  %cmp37.not = icmp eq i32 %call, %call36
  br i1 %cmp37.not, label %lor.lhs.false39, label %if.then46

lor.lhs.false39:                                  ; preds = %land.lhs.true33, %if.else32
  %23 = load i32, ptr %case_sensitive.addr, align 4
  %tobool40.not = icmp eq i32 %23, 0
  br i1 %tobool40.not, label %for.inc, label %land.lhs.true41

land.lhs.true41:                                  ; preds = %lor.lhs.false39
  %24 = load ptr, ptr %name.addr, align 8
  %25 = load i8, ptr %24, align 1
  %26 = load ptr, ptr %pointer.addr, align 8
  %27 = load i8, ptr %26, align 1
  %cmp44.not = icmp eq i8 %25, %27
  br i1 %cmp44.not, label %for.inc, label %if.then46

if.then46:                                        ; preds = %land.lhs.true41, %land.lhs.true33
  store i32 0, ptr %retval, align 4
  br label %return

for.inc:                                          ; preds = %if.else, %land.lhs.true41, %lor.lhs.false39
  %28 = load ptr, ptr %name.addr, align 8
  %incdec.ptr49 = getelementptr inbounds i8, ptr %28, i64 1
  store ptr %incdec.ptr49, ptr %name.addr, align 8
  %29 = load ptr, ptr %pointer.addr, align 8
  %incdec.ptr50 = getelementptr inbounds i8, ptr %29, i64 1
  store ptr %incdec.ptr50, ptr %pointer.addr, align 8
  br label %for.cond, !llvm.loop !23

for.end:                                          ; preds = %land.lhs.true, %for.cond, %land.rhs
  %30 = load ptr, ptr %pointer.addr, align 8
  %31 = load i8, ptr %30, align 1
  %cmp52.not = icmp eq i8 %31, 0
  br i1 %cmp52.not, label %land.end58, label %land.rhs54

land.rhs54:                                       ; preds = %for.end
  %32 = load ptr, ptr %pointer.addr, align 8
  %33 = load i8, ptr %32, align 1
  %cmp56 = icmp ne i8 %33, 47
  %phi.cast = zext i1 %cmp56 to i32
  br label %land.end58

land.end58:                                       ; preds = %land.rhs54, %for.end
  %34 = phi i32 [ 0, %for.end ], [ %phi.cast, %land.rhs54 ]
  %35 = load ptr, ptr %name.addr, align 8
  %36 = load i8, ptr %35, align 1
  %cmp60 = icmp ne i8 %36, 0
  %conv61 = zext i1 %cmp60 to i32
  %cmp62.not = icmp eq i32 %34, %conv61
  br i1 %cmp62.not, label %if.end65, label %if.then64

if.then64:                                        ; preds = %land.end58
  store i32 0, ptr %retval, align 4
  br label %return

if.end65:                                         ; preds = %land.end58
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end65, %if.then64, %if.then46, %if.then30, %if.then
  %37 = load i32, ptr %retval, align 4
  ret i32 %37
}

; Function Attrs: nounwind readonly willreturn
declare i32 @tolower(i32 noundef) #4

; Function Attrs: nounwind ssp uwtable
define internal ptr @get_object_item(ptr noundef %object, ptr noundef %name, i32 noundef %case_sensitive) #0 {
entry:
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  %tobool.not = icmp eq i32 %case_sensitive, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %object.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %call = call ptr @cJSON_GetObjectItemCaseSensitive(ptr noundef %0, ptr noundef %1) #6
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %object.addr, align 8
  %3 = load ptr, ptr %name.addr, align 8
  %call1 = call ptr @cJSON_GetObjectItem(ptr noundef %2, ptr noundef %3) #6
  br label %return

return:                                           ; preds = %if.end, %if.then
  %storemerge = phi ptr [ %call1, %if.end ], [ %call, %if.then ]
  ret ptr %storemerge
}

declare i32 @cJSON_IsString(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @decode_patch_operation(ptr noundef %patch, i32 noundef %case_sensitive) #0 {
entry:
  %retval = alloca i32, align 4
  %operation = alloca ptr, align 8
  %call = call ptr @get_object_item(ptr noundef %patch, ptr noundef nonnull @.str.6, i32 noundef %case_sensitive)
  store ptr %call, ptr %operation, align 8
  %call1 = call i32 @cJSON_IsString(ptr noundef %call) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %operation, align 8
  %valuestring = getelementptr inbounds %struct.cJSON, ptr %0, i64 0, i32 4
  %1 = load ptr, ptr %valuestring, align 8
  %call2 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(4) @.str.7) #6
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %2 = load ptr, ptr %operation, align 8
  %valuestring5 = getelementptr inbounds %struct.cJSON, ptr %2, i64 0, i32 4
  %3 = load ptr, ptr %valuestring5, align 8
  %call6 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(7) @.str.8) #6
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end4
  store i32 2, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end4
  %4 = load ptr, ptr %operation, align 8
  %valuestring10 = getelementptr inbounds %struct.cJSON, ptr %4, i64 0, i32 4
  %5 = load ptr, ptr %valuestring10, align 8
  %call11 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(8) @.str.9) #6
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  store i32 3, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end9
  %6 = load ptr, ptr %operation, align 8
  %valuestring15 = getelementptr inbounds %struct.cJSON, ptr %6, i64 0, i32 4
  %7 = load ptr, ptr %valuestring15, align 8
  %call16 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(5) @.str.10) #6
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end14
  %8 = load ptr, ptr %operation, align 8
  %valuestring20 = getelementptr inbounds %struct.cJSON, ptr %8, i64 0, i32 4
  %9 = load ptr, ptr %valuestring20, align 8
  %call21 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(5) @.str.11) #6
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end19
  store i32 5, ptr %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.end19
  %10 = load ptr, ptr %operation, align 8
  %valuestring25 = getelementptr inbounds %struct.cJSON, ptr %10, i64 0, i32 4
  %11 = load ptr, ptr %valuestring25, align 8
  %call26 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(5) @.str.12) #6
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end24
  store i32 6, ptr %retval, align 4
  br label %return

if.end29:                                         ; preds = %if.end24
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end29, %if.then28, %if.then23, %if.then18, %if.then13, %if.then8, %if.then3, %if.then
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @compare_json(ptr noundef %a, ptr noundef %b, i32 noundef %case_sensitive) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %case_sensitive.addr = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store i32 %case_sensitive, ptr %case_sensitive.addr, align 4
  %cmp = icmp eq ptr %a, null
  %0 = load ptr, ptr %b.addr, align 8
  %cmp1 = icmp eq ptr %0, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %1 = load ptr, ptr %a.addr, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %1, i64 0, i32 3
  %2 = load i32, ptr %type, align 8
  %3 = load ptr, ptr %b.addr, align 8
  %type3 = getelementptr inbounds %struct.cJSON, ptr %3, i64 0, i32 3
  %4 = load i32, ptr %type3, align 8
  %5 = xor i32 %2, %4
  %6 = and i32 %5, 255
  %cmp5.not = icmp eq i32 %6, 0
  br i1 %cmp5.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false2, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %7 = load ptr, ptr %a.addr, align 8
  %type6 = getelementptr inbounds %struct.cJSON, ptr %7, i64 0, i32 3
  %8 = load i32, ptr %type6, align 8
  %trunc = trunc i32 %8 to i8
  %9 = sub i8 %trunc, 8
  %10 = lshr i8 %9, 3
  %11 = shl i8 %9, 5
  %12 = or i8 %10, %11
  switch i8 %12, label %sw.epilog [
    i8 0, label %sw.bb
    i8 1, label %sw.bb13
    i8 3, label %sw.bb19
    i8 7, label %sw.bb33
  ]

sw.bb:                                            ; preds = %if.end
  %13 = load ptr, ptr %a.addr, align 8
  %valueint = getelementptr inbounds %struct.cJSON, ptr %13, i64 0, i32 5
  %14 = load i32, ptr %valueint, align 8
  %15 = load ptr, ptr %b.addr, align 8
  %valueint8 = getelementptr inbounds %struct.cJSON, ptr %15, i64 0, i32 5
  %16 = load i32, ptr %valueint8, align 8
  %cmp9.not = icmp eq i32 %14, %16
  br i1 %cmp9.not, label %lor.lhs.false10, label %if.then12

lor.lhs.false10:                                  ; preds = %sw.bb
  %17 = load ptr, ptr %a.addr, align 8
  %valuedouble = getelementptr inbounds %struct.cJSON, ptr %17, i64 0, i32 6
  %18 = load double, ptr %valuedouble, align 8
  %19 = load ptr, ptr %b.addr, align 8
  %valuedouble11 = getelementptr inbounds %struct.cJSON, ptr %19, i64 0, i32 6
  %20 = load double, ptr %valuedouble11, align 8
  %call = call i32 @compare_double(double noundef %18, double noundef %20)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then12, label %if.else

if.then12:                                        ; preds = %lor.lhs.false10, %sw.bb
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %lor.lhs.false10
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb13:                                          ; preds = %if.end
  %21 = load ptr, ptr %a.addr, align 8
  %valuestring = getelementptr inbounds %struct.cJSON, ptr %21, i64 0, i32 4
  %22 = load ptr, ptr %valuestring, align 8
  %23 = load ptr, ptr %b.addr, align 8
  %valuestring14 = getelementptr inbounds %struct.cJSON, ptr %23, i64 0, i32 4
  %24 = load ptr, ptr %valuestring14, align 8
  %call15 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(1) %24) #6
  %cmp16.not = icmp eq i32 %call15, 0
  br i1 %cmp16.not, label %if.else18, label %if.then17

if.then17:                                        ; preds = %sw.bb13
  store i32 0, ptr %retval, align 4
  br label %return

if.else18:                                        ; preds = %sw.bb13
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb19:                                          ; preds = %if.end
  %25 = load ptr, ptr %a.addr, align 8
  %child = getelementptr inbounds %struct.cJSON, ptr %25, i64 0, i32 2
  %26 = load ptr, ptr %child, align 8
  store ptr %26, ptr %a.addr, align 8
  %27 = load ptr, ptr %b.addr, align 8
  %child20 = getelementptr inbounds %struct.cJSON, ptr %27, i64 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb19
  %storemerge1.in = phi ptr [ %child20, %sw.bb19 ], [ %36, %for.inc ]
  %storemerge1 = load ptr, ptr %storemerge1.in, align 8
  store ptr %storemerge1, ptr %b.addr, align 8
  %28 = load ptr, ptr %a.addr, align 8
  %cmp21.not = icmp eq ptr %28, null
  %29 = load ptr, ptr %b.addr, align 8
  %cmp22 = icmp ne ptr %29, null
  %30 = select i1 %cmp21.not, i1 false, i1 %cmp22
  br i1 %30, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load ptr, ptr %a.addr, align 8
  %32 = load ptr, ptr %b.addr, align 8
  %33 = load i32, ptr %case_sensitive.addr, align 4
  %call23 = call i32 @compare_json(ptr noundef %31, ptr noundef %32, i32 noundef %33)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then25, label %for.inc

if.then25:                                        ; preds = %for.body
  store i32 0, ptr %retval, align 4
  br label %return

for.inc:                                          ; preds = %for.body
  %34 = load ptr, ptr %a.addr, align 8
  %35 = load ptr, ptr %34, align 8
  store ptr %35, ptr %a.addr, align 8
  %36 = load ptr, ptr %b.addr, align 8
  br label %for.cond, !llvm.loop !24

for.end:                                          ; preds = %for.cond
  %37 = load ptr, ptr %a.addr, align 8
  %cmp28.not = icmp eq ptr %37, null
  %38 = load ptr, ptr %b.addr, align 8
  %cmp30.not = icmp eq ptr %38, null
  %or.cond2 = select i1 %cmp28.not, i1 %cmp30.not, i1 false
  br i1 %or.cond2, label %if.else32, label %if.then31

if.then31:                                        ; preds = %for.end
  store i32 0, ptr %retval, align 4
  br label %return

if.else32:                                        ; preds = %for.end
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb33:                                          ; preds = %if.end
  %39 = load ptr, ptr %a.addr, align 8
  %40 = load i32, ptr %case_sensitive.addr, align 4
  call void @sort_object(ptr noundef %39, i32 noundef %40)
  %41 = load ptr, ptr %b.addr, align 8
  call void @sort_object(ptr noundef %41, i32 noundef %40)
  %child34 = getelementptr inbounds %struct.cJSON, ptr %39, i64 0, i32 2
  %42 = load ptr, ptr %child34, align 8
  store ptr %42, ptr %a.addr, align 8
  %child35 = getelementptr inbounds %struct.cJSON, ptr %41, i64 0, i32 2
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc52, %sw.bb33
  %storemerge.in = phi ptr [ %child35, %sw.bb33 ], [ %56, %for.inc52 ]
  %storemerge = load ptr, ptr %storemerge.in, align 8
  store ptr %storemerge, ptr %b.addr, align 8
  %43 = load ptr, ptr %a.addr, align 8
  %cmp37.not = icmp eq ptr %43, null
  %44 = load ptr, ptr %b.addr, align 8
  %cmp39 = icmp ne ptr %44, null
  %45 = select i1 %cmp37.not, i1 false, i1 %cmp39
  br i1 %45, label %for.body41, label %for.end55

for.body41:                                       ; preds = %for.cond36
  %46 = load ptr, ptr %a.addr, align 8
  %string = getelementptr inbounds %struct.cJSON, ptr %46, i64 0, i32 7
  %47 = load ptr, ptr %string, align 8
  %48 = load ptr, ptr %b.addr, align 8
  %string43 = getelementptr inbounds %struct.cJSON, ptr %48, i64 0, i32 7
  %49 = load ptr, ptr %string43, align 8
  %50 = load i32, ptr %case_sensitive.addr, align 4
  %call44 = call i32 @compare_strings(ptr noundef %47, ptr noundef %49, i32 noundef %50)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.then46

if.then46:                                        ; preds = %for.body41
  store i32 0, ptr %retval, align 4
  br label %return

if.end47:                                         ; preds = %for.body41
  %51 = load ptr, ptr %a.addr, align 8
  %52 = load ptr, ptr %b.addr, align 8
  %53 = load i32, ptr %case_sensitive.addr, align 4
  %call48 = call i32 @compare_json(ptr noundef %51, ptr noundef %52, i32 noundef %53)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.then50, label %for.inc52

if.then50:                                        ; preds = %if.end47
  store i32 0, ptr %retval, align 4
  br label %return

for.inc52:                                        ; preds = %if.end47
  %54 = load ptr, ptr %a.addr, align 8
  %55 = load ptr, ptr %54, align 8
  store ptr %55, ptr %a.addr, align 8
  %56 = load ptr, ptr %b.addr, align 8
  br label %for.cond36, !llvm.loop !25

for.end55:                                        ; preds = %for.cond36
  %57 = load ptr, ptr %a.addr, align 8
  %cmp56.not = icmp eq ptr %57, null
  %58 = load ptr, ptr %b.addr, align 8
  %cmp58.not = icmp eq ptr %58, null
  %or.cond3 = select i1 %cmp56.not, i1 %cmp58.not, i1 false
  br i1 %or.cond3, label %if.else60, label %if.then59

if.then59:                                        ; preds = %for.end55
  store i32 0, ptr %retval, align 4
  br label %return

if.else60:                                        ; preds = %for.end55
  store i32 1, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %if.else60, %if.then59, %if.then50, %if.then46, %if.else32, %if.then31, %if.then25, %if.else18, %if.then17, %if.else, %if.then12, %if.then
  %59 = load i32, ptr %retval, align 4
  ret i32 %59
}

; Function Attrs: nounwind ssp uwtable
define internal void @overwrite_item(ptr noundef %root, ptr noundef %replacement) #0 {
entry:
  %root.addr = alloca ptr, align 8
  store ptr %root, ptr %root.addr, align 8
  %cmp = icmp eq ptr %root, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %root.addr, align 8
  %string = getelementptr inbounds %struct.cJSON, ptr %0, i64 0, i32 7
  %1 = load ptr, ptr %string, align 8
  %cmp1.not = icmp eq ptr %1, null
  br i1 %cmp1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr %root.addr, align 8
  %string3 = getelementptr inbounds %struct.cJSON, ptr %2, i64 0, i32 7
  %3 = load ptr, ptr %string3, align 8
  call void @cJSON_free(ptr noundef %3) #6
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %4 = load ptr, ptr %root.addr, align 8
  %valuestring = getelementptr inbounds %struct.cJSON, ptr %4, i64 0, i32 4
  %5 = load ptr, ptr %valuestring, align 8
  %cmp5.not = icmp eq ptr %5, null
  br i1 %cmp5.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end4
  %6 = load ptr, ptr %root.addr, align 8
  %valuestring7 = getelementptr inbounds %struct.cJSON, ptr %6, i64 0, i32 4
  %7 = load ptr, ptr %valuestring7, align 8
  call void @cJSON_free(ptr noundef %7) #6
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4
  %8 = load ptr, ptr %root.addr, align 8
  %child = getelementptr inbounds %struct.cJSON, ptr %8, i64 0, i32 2
  %9 = load ptr, ptr %child, align 8
  %cmp9.not = icmp eq ptr %9, null
  br i1 %cmp9.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end8
  %10 = load ptr, ptr %root.addr, align 8
  %child11 = getelementptr inbounds %struct.cJSON, ptr %10, i64 0, i32 2
  %11 = load ptr, ptr %child11, align 8
  call void @cJSON_Delete(ptr noundef %11) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8
  %12 = load ptr, ptr %root.addr, align 8
  %13 = call i64 @llvm.objectsize.i64.p0(ptr %12, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %12, ptr noundef %replacement, i64 noundef 64, i64 noundef %13) #6
  br label %return

return:                                           ; preds = %entry, %if.end12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare ptr @cJSON_Duplicate(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal ptr @detach_path(ptr noundef %object, ptr noundef %path, i32 noundef %case_sensitive) #0 {
entry:
  %object.addr = alloca ptr, align 8
  %case_sensitive.addr = alloca i32, align 4
  %parent_pointer = alloca ptr, align 8
  %child_pointer = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %detached_item = alloca ptr, align 8
  %index = alloca i64, align 8
  store ptr %object, ptr %object.addr, align 8
  store i32 %case_sensitive, ptr %case_sensitive.addr, align 4
  store ptr null, ptr %parent_pointer, align 8
  store ptr null, ptr %child_pointer, align 8
  store ptr null, ptr %parent, align 8
  store ptr null, ptr %detached_item, align 8
  %call = call ptr @cJSONUtils_strdup(ptr noundef %path)
  store ptr %call, ptr %parent_pointer, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %parent_pointer, align 8
  %call1 = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #6
  store ptr %call1, ptr %child_pointer, align 8
  %cmp2 = icmp eq ptr %call1, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %1 = load ptr, ptr %child_pointer, align 8
  store i8 0, ptr %1, align 1
  %incdec.ptr = getelementptr inbounds i8, ptr %1, i64 1
  store ptr %incdec.ptr, ptr %child_pointer, align 8
  %2 = load ptr, ptr %object.addr, align 8
  %3 = load ptr, ptr %parent_pointer, align 8
  %4 = load i32, ptr %case_sensitive.addr, align 4
  %call5 = call ptr @get_item_from_pointer(ptr noundef %2, ptr noundef %3, i32 noundef %4)
  store ptr %call5, ptr %parent, align 8
  call void @decode_pointer_inplace(ptr noundef nonnull %incdec.ptr)
  %call6 = call i32 @cJSON_IsArray(ptr noundef %call5) #6
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end4
  store i64 0, ptr %index, align 8
  %5 = load ptr, ptr %child_pointer, align 8
  %call8 = call i32 @decode_array_index_from_pointer(ptr noundef %5, ptr noundef nonnull %index)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.then7
  %6 = load ptr, ptr %parent, align 8
  %7 = load i64, ptr %index, align 8
  %call12 = call ptr @detach_item_from_array(ptr noundef %6, i64 noundef %7)
  store ptr %call12, ptr %detached_item, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end4
  %8 = load ptr, ptr %parent, align 8
  %call13 = call i32 @cJSON_IsObject(ptr noundef %8) #6
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %cleanup, label %if.then15

if.then15:                                        ; preds = %if.else
  %9 = load ptr, ptr %parent, align 8
  %10 = load ptr, ptr %child_pointer, align 8
  %call16 = call ptr @cJSON_DetachItemFromObject(ptr noundef %9, ptr noundef %10) #6
  store ptr %call16, ptr %detached_item, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then15, %if.else, %if.then7, %if.end, %entry
  %11 = load ptr, ptr %parent_pointer, align 8
  %cmp20.not = icmp eq ptr %11, null
  br i1 %cmp20.not, label %if.end22, label %if.then21

if.then21:                                        ; preds = %cleanup
  %12 = load ptr, ptr %parent_pointer, align 8
  call void @cJSON_free(ptr noundef %12) #6
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %cleanup
  %13 = load ptr, ptr %detached_item, align 8
  ret ptr %13
}

declare void @cJSON_Delete(ptr noundef) #1

declare ptr @strrchr(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @decode_pointer_inplace(ptr noundef %string) #0 {
entry:
  %string.addr = alloca ptr, align 8
  %decoded_string = alloca ptr, align 8
  store ptr %string, ptr %string.addr, align 8
  store ptr %string, ptr %decoded_string, align 8
  %cmp = icmp eq ptr %string, null
  br i1 %cmp, label %return, label %for.cond

for.cond:                                         ; preds = %entry, %for.inc
  %0 = load ptr, ptr %string.addr, align 8
  %1 = load i8, ptr %0, align 1
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %string.addr, align 8
  %3 = load i8, ptr %2, align 1
  %cmp1 = icmp eq i8 %3, 126
  br i1 %cmp1, label %if.then3, label %for.inc

if.then3:                                         ; preds = %for.body
  %4 = load ptr, ptr %string.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %4, i64 1
  %5 = load i8, ptr %arrayidx4, align 1
  %cmp6 = icmp eq i8 %5, 48
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then3
  %6 = load ptr, ptr %decoded_string, align 8
  store i8 126, ptr %6, align 1
  br label %if.end18

if.else:                                          ; preds = %if.then3
  %7 = load ptr, ptr %string.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %7, i64 1
  %8 = load i8, ptr %arrayidx10, align 1
  %cmp12 = icmp eq i8 %8, 49
  br i1 %cmp12, label %if.then14, label %return

if.then14:                                        ; preds = %if.else
  %9 = load ptr, ptr %decoded_string, align 8
  %arrayidx15 = getelementptr inbounds i8, ptr %9, i64 1
  store i8 47, ptr %arrayidx15, align 1
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.then8
  %10 = load ptr, ptr %string.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %incdec.ptr, ptr %string.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.end18
  %11 = load ptr, ptr %decoded_string, align 8
  %incdec.ptr20 = getelementptr inbounds i8, ptr %11, i64 1
  store ptr %incdec.ptr20, ptr %decoded_string, align 8
  %12 = load ptr, ptr %string.addr, align 8
  %incdec.ptr21 = getelementptr inbounds i8, ptr %12, i64 1
  store ptr %incdec.ptr21, ptr %string.addr, align 8
  br label %for.cond, !llvm.loop !26

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr %decoded_string, align 8
  store i8 0, ptr %13, align 1
  br label %return

return:                                           ; preds = %if.else, %entry, %for.end
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
  %child1 = getelementptr inbounds %struct.cJSON, ptr %array, i64 0, i32 2
  %0 = load ptr, ptr %child1, align 8
  store ptr %0, ptr %child, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %child, align 8
  %tobool.not = icmp eq ptr %1, null
  %2 = load i64, ptr %which.addr, align 8
  %cmp = icmp ne i64 %2, 0
  %3 = select i1 %tobool.not, i1 false, i1 %cmp
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %child, align 8
  %5 = load ptr, ptr %4, align 8
  store ptr %5, ptr %child, align 8
  %6 = load i64, ptr %which.addr, align 8
  %dec = add i64 %6, -1
  store i64 %dec, ptr %which.addr, align 8
  br label %while.cond, !llvm.loop !27

while.end:                                        ; preds = %while.cond
  %7 = load i64, ptr %which.addr, align 8
  %cmp2.not = icmp eq i64 %7, 0
  br i1 %cmp2.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.end
  %8 = load ptr, ptr %child, align 8
  %cmp3 = icmp eq ptr %8, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %9 = load ptr, ptr %array.addr, align 8
  %10 = load ptr, ptr %newitem.addr, align 8
  %call = call i32 @cJSON_AddItemToArray(ptr noundef %9, ptr noundef %10) #6
  store i32 1, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %11 = load ptr, ptr %child, align 8
  %12 = load ptr, ptr %newitem.addr, align 8
  store ptr %11, ptr %12, align 8
  %prev = getelementptr inbounds %struct.cJSON, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %prev, align 8
  %prev7 = getelementptr inbounds %struct.cJSON, ptr %12, i64 0, i32 1
  store ptr %13, ptr %prev7, align 8
  %14 = load ptr, ptr %child, align 8
  %prev8 = getelementptr inbounds %struct.cJSON, ptr %14, i64 0, i32 1
  store ptr %12, ptr %prev8, align 8
  %15 = load ptr, ptr %array.addr, align 8
  %child9 = getelementptr inbounds %struct.cJSON, ptr %15, i64 0, i32 2
  %16 = load ptr, ptr %child9, align 8
  %cmp10 = icmp eq ptr %14, %16
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end5
  %17 = load ptr, ptr %newitem.addr, align 8
  %18 = load ptr, ptr %array.addr, align 8
  %child12 = getelementptr inbounds %struct.cJSON, ptr %18, i64 0, i32 2
  store ptr %17, ptr %child12, align 8
  br label %if.end15

if.else:                                          ; preds = %if.end5
  %19 = load ptr, ptr %newitem.addr, align 8
  %prev13 = getelementptr inbounds %struct.cJSON, ptr %19, i64 0, i32 1
  %20 = load ptr, ptr %prev13, align 8
  store ptr %19, ptr %20, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then11
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end15, %if.then4, %if.then
  %21 = load i32, ptr %retval, align 4
  ret i32 %21
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
  store double %a, ptr %a.addr, align 8
  store double %b, ptr %b.addr, align 8
  %0 = call double @llvm.fabs.f64(double %a)
  %1 = call double @llvm.fabs.f64(double %b)
  %cmp = fcmp ogt double %0, %1
  %2 = load double, ptr %a.addr, align 8
  %3 = call double @llvm.fabs.f64(double %2)
  %4 = load double, ptr %b.addr, align 8
  %5 = call double @llvm.fabs.f64(double %4)
  %cond = select i1 %cmp, double %3, double %5
  %6 = load double, ptr %a.addr, align 8
  %7 = load double, ptr %b.addr, align 8
  %sub = fsub double %6, %7
  %8 = call double @llvm.fabs.f64(double %sub)
  %mul = fmul double %cond, 0x3CB0000000000000
  %cmp1 = fcmp ole double %8, %mul
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
  %cmp = icmp eq ptr %string1, null
  %0 = load ptr, ptr %string2.addr, align 8
  %cmp1 = icmp eq ptr %0, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %string1.addr, align 8
  %2 = load ptr, ptr %string2.addr, align 8
  %cmp2 = icmp eq ptr %1, %2
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %3 = load i32, ptr %case_sensitive.addr, align 4
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %for.cond, label %if.then5

if.then5:                                         ; preds = %if.end4
  %4 = load ptr, ptr %string1.addr, align 8
  %5 = load ptr, ptr %string2.addr, align 8
  %call = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %5) #6
  store i32 %call, ptr %retval, align 4
  br label %return

for.cond:                                         ; preds = %if.end4, %for.inc
  %6 = load ptr, ptr %string1.addr, align 8
  %7 = load i8, ptr %6, align 1
  %conv = zext i8 %7 to i32
  %call7 = call i32 @tolower(i32 noundef %conv) #7
  %8 = load ptr, ptr %string2.addr, align 8
  %9 = load i8, ptr %8, align 1
  %conv8 = zext i8 %9 to i32
  %call9 = call i32 @tolower(i32 noundef %conv8) #7
  %cmp10 = icmp eq i32 %call7, %call9
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %string1.addr, align 8
  %11 = load i8, ptr %10, align 1
  %cmp13 = icmp eq i8 %11, 0
  br i1 %cmp13, label %if.then15, label %for.inc

if.then15:                                        ; preds = %for.body
  store i32 0, ptr %retval, align 4
  br label %return

for.inc:                                          ; preds = %for.body
  %12 = load ptr, ptr %string1.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %12, i64 1
  store ptr %incdec.ptr, ptr %string1.addr, align 8
  %13 = load ptr, ptr %string2.addr, align 8
  %incdec.ptr17 = getelementptr inbounds i8, ptr %13, i64 1
  store ptr %incdec.ptr17, ptr %string2.addr, align 8
  br label %for.cond, !llvm.loop !28

for.end:                                          ; preds = %for.cond
  %14 = load ptr, ptr %string1.addr, align 8
  %15 = load i8, ptr %14, align 1
  %conv18 = zext i8 %15 to i32
  %call19 = call i32 @tolower(i32 noundef %conv18) #7
  %16 = load ptr, ptr %string2.addr, align 8
  %17 = load i8, ptr %16, align 1
  %conv20 = zext i8 %17 to i32
  %call21 = call i32 @tolower(i32 noundef %conv20) #7
  %sub = sub nsw i32 %call19, %call21
  store i32 %sub, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then15, %if.then5, %if.then3, %if.then
  %18 = load i32, ptr %retval, align 4
  ret i32 %18
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nounwind ssp uwtable
define internal ptr @detach_item_from_array(ptr noundef %array, i64 noundef %which) #0 {
entry:
  %array.addr = alloca ptr, align 8
  %which.addr = alloca i64, align 8
  %c = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8
  store i64 %which, ptr %which.addr, align 8
  %child = getelementptr inbounds %struct.cJSON, ptr %array, i64 0, i32 2
  %0 = load ptr, ptr %child, align 8
  store ptr %0, ptr %c, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %c, align 8
  %tobool.not = icmp eq ptr %1, null
  %2 = load i64, ptr %which.addr, align 8
  %cmp = icmp ne i64 %2, 0
  %3 = select i1 %tobool.not, i1 false, i1 %cmp
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %c, align 8
  %5 = load ptr, ptr %4, align 8
  store ptr %5, ptr %c, align 8
  %6 = load i64, ptr %which.addr, align 8
  %dec = add i64 %6, -1
  store i64 %dec, ptr %which.addr, align 8
  br label %while.cond, !llvm.loop !29

while.end:                                        ; preds = %while.cond
  %7 = load ptr, ptr %c, align 8
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %return, label %if.end

if.end:                                           ; preds = %while.end
  %8 = load ptr, ptr %c, align 8
  %9 = load ptr, ptr %array.addr, align 8
  %child2 = getelementptr inbounds %struct.cJSON, ptr %9, i64 0, i32 2
  %10 = load ptr, ptr %child2, align 8
  %cmp3.not = icmp eq ptr %8, %10
  br i1 %cmp3.not, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  %11 = load ptr, ptr %c, align 8
  %12 = load ptr, ptr %11, align 8
  %prev = getelementptr inbounds %struct.cJSON, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %prev, align 8
  store ptr %12, ptr %13, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end
  %14 = load ptr, ptr %c, align 8
  %15 = load ptr, ptr %14, align 8
  %tobool9.not = icmp eq ptr %15, null
  br i1 %tobool9.not, label %if.end14, label %if.then10

if.then10:                                        ; preds = %if.end7
  %16 = load ptr, ptr %c, align 8
  %prev11 = getelementptr inbounds %struct.cJSON, ptr %16, i64 0, i32 1
  %17 = load ptr, ptr %prev11, align 8
  %18 = load ptr, ptr %16, align 8
  %prev13 = getelementptr inbounds %struct.cJSON, ptr %18, i64 0, i32 1
  store ptr %17, ptr %prev13, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end7
  %19 = load ptr, ptr %c, align 8
  %20 = load ptr, ptr %array.addr, align 8
  %child15 = getelementptr inbounds %struct.cJSON, ptr %20, i64 0, i32 2
  %21 = load ptr, ptr %child15, align 8
  %cmp16 = icmp eq ptr %19, %21
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end14
  %22 = load ptr, ptr %c, align 8
  %23 = load ptr, ptr %22, align 8
  %24 = load ptr, ptr %array.addr, align 8
  %child19 = getelementptr inbounds %struct.cJSON, ptr %24, i64 0, i32 2
  store ptr %23, ptr %child19, align 8
  br label %if.end27

if.else:                                          ; preds = %if.end14
  %25 = load ptr, ptr %c, align 8
  %26 = load ptr, ptr %25, align 8
  %cmp21 = icmp eq ptr %26, null
  br i1 %cmp21, label %if.then22, label %if.end27

if.then22:                                        ; preds = %if.else
  %27 = load ptr, ptr %c, align 8
  %prev23 = getelementptr inbounds %struct.cJSON, ptr %27, i64 0, i32 1
  %28 = load ptr, ptr %prev23, align 8
  %29 = load ptr, ptr %array.addr, align 8
  %child24 = getelementptr inbounds %struct.cJSON, ptr %29, i64 0, i32 2
  %30 = load ptr, ptr %child24, align 8
  %prev25 = getelementptr inbounds %struct.cJSON, ptr %30, i64 0, i32 1
  store ptr %28, ptr %prev25, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then22, %if.then17
  %31 = load ptr, ptr %c, align 8
  store ptr null, ptr %31, align 8
  %prev29 = getelementptr inbounds %struct.cJSON, ptr %31, i64 0, i32 1
  store ptr null, ptr %prev29, align 8
  br label %return

return:                                           ; preds = %while.end, %if.end27
  %storemerge = phi ptr [ %31, %if.end27 ], [ null, %while.end ]
  ret ptr %storemerge
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
  store ptr %list, ptr %first, align 8
  store ptr %list, ptr %second, align 8
  store ptr %list, ptr %current_item, align 8
  store ptr %list, ptr %result, align 8
  store ptr null, ptr %result_tail, align 8
  %0 = load ptr, ptr %list.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %list.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %if.then, label %while.cond

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load ptr, ptr %result, align 8
  store ptr %3, ptr %retval, align 8
  br label %return

while.cond:                                       ; preds = %lor.lhs.false, %while.body
  %4 = load ptr, ptr %current_item, align 8
  %cmp2.not = icmp eq ptr %4, null
  br i1 %cmp2.not, label %while.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.cond
  %5 = load ptr, ptr %current_item, align 8
  %6 = load ptr, ptr %5, align 8
  %cmp4.not = icmp eq ptr %6, null
  br i1 %cmp4.not, label %while.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %7 = load ptr, ptr %current_item, align 8
  %string = getelementptr inbounds %struct.cJSON, ptr %7, i64 0, i32 7
  %8 = load ptr, ptr %string, align 8
  %9 = load ptr, ptr %7, align 8
  %string6 = getelementptr inbounds %struct.cJSON, ptr %9, i64 0, i32 7
  %10 = load ptr, ptr %string6, align 8
  %11 = load i32, ptr %case_sensitive.addr, align 4
  %call = call i32 @compare_strings(ptr noundef %8, ptr noundef %10, i32 noundef %11)
  %cmp7 = icmp slt i32 %call, 0
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %12 = load ptr, ptr %current_item, align 8
  %13 = load ptr, ptr %12, align 8
  store ptr %13, ptr %current_item, align 8
  br label %while.cond, !llvm.loop !30

while.end:                                        ; preds = %land.lhs.true, %while.cond, %land.rhs
  %14 = load ptr, ptr %current_item, align 8
  %cmp9 = icmp eq ptr %14, null
  br i1 %cmp9, label %if.then13, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %while.end
  %15 = load ptr, ptr %current_item, align 8
  %16 = load ptr, ptr %15, align 8
  %cmp12 = icmp eq ptr %16, null
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %lor.lhs.false10, %while.end
  %17 = load ptr, ptr %result, align 8
  store ptr %17, ptr %retval, align 8
  br label %return

if.end14:                                         ; preds = %lor.lhs.false10
  %18 = load ptr, ptr %list.addr, align 8
  store ptr %18, ptr %current_item, align 8
  br label %while.cond15

while.cond15:                                     ; preds = %if.end23, %if.end14
  %19 = load ptr, ptr %current_item, align 8
  %cmp16.not = icmp eq ptr %19, null
  br i1 %cmp16.not, label %while.end24, label %while.body17

while.body17:                                     ; preds = %while.cond15
  %20 = load ptr, ptr %second, align 8
  %21 = load ptr, ptr %20, align 8
  store ptr %21, ptr %second, align 8
  %22 = load ptr, ptr %current_item, align 8
  %23 = load ptr, ptr %22, align 8
  store ptr %23, ptr %current_item, align 8
  %cmp20.not = icmp eq ptr %23, null
  br i1 %cmp20.not, label %if.end23, label %if.then21

if.then21:                                        ; preds = %while.body17
  %24 = load ptr, ptr %current_item, align 8
  %25 = load ptr, ptr %24, align 8
  store ptr %25, ptr %current_item, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %while.body17
  br label %while.cond15, !llvm.loop !31

while.end24:                                      ; preds = %while.cond15
  %26 = load ptr, ptr %second, align 8
  %cmp25.not = icmp eq ptr %26, null
  br i1 %cmp25.not, label %if.end32, label %land.lhs.true26

land.lhs.true26:                                  ; preds = %while.end24
  %27 = load ptr, ptr %second, align 8
  %prev = getelementptr inbounds %struct.cJSON, ptr %27, i64 0, i32 1
  %28 = load ptr, ptr %prev, align 8
  %cmp27.not = icmp eq ptr %28, null
  br i1 %cmp27.not, label %if.end32, label %if.then28

if.then28:                                        ; preds = %land.lhs.true26
  %29 = load ptr, ptr %second, align 8
  %prev29 = getelementptr inbounds %struct.cJSON, ptr %29, i64 0, i32 1
  %30 = load ptr, ptr %prev29, align 8
  store ptr null, ptr %30, align 8
  %prev31 = getelementptr inbounds %struct.cJSON, ptr %29, i64 0, i32 1
  store ptr null, ptr %prev31, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %land.lhs.true26, %while.end24
  %31 = load ptr, ptr %first, align 8
  %32 = load i32, ptr %case_sensitive.addr, align 4
  %call33 = call ptr @sort_list(ptr noundef %31, i32 noundef %32)
  store ptr %call33, ptr %first, align 8
  %33 = load ptr, ptr %second, align 8
  %call34 = call ptr @sort_list(ptr noundef %33, i32 noundef %32)
  store ptr %call34, ptr %second, align 8
  store ptr null, ptr %result, align 8
  br label %while.cond35

while.cond35:                                     ; preds = %if.end58, %if.end32
  %34 = load ptr, ptr %first, align 8
  %cmp36.not = icmp eq ptr %34, null
  %35 = load ptr, ptr %second, align 8
  %cmp38 = icmp ne ptr %35, null
  %36 = select i1 %cmp36.not, i1 false, i1 %cmp38
  br i1 %36, label %while.body40, label %while.end59

while.body40:                                     ; preds = %while.cond35
  store ptr null, ptr %smaller, align 8
  %37 = load ptr, ptr %first, align 8
  %string41 = getelementptr inbounds %struct.cJSON, ptr %37, i64 0, i32 7
  %38 = load ptr, ptr %string41, align 8
  %39 = load ptr, ptr %second, align 8
  %string42 = getelementptr inbounds %struct.cJSON, ptr %39, i64 0, i32 7
  %40 = load ptr, ptr %string42, align 8
  %41 = load i32, ptr %case_sensitive.addr, align 4
  %call43 = call i32 @compare_strings(ptr noundef %38, ptr noundef %40, i32 noundef %41)
  %cmp44 = icmp slt i32 %call43, 0
  %42 = load ptr, ptr %second, align 8
  %43 = load ptr, ptr %first, align 8
  %storemerge = select i1 %cmp44, ptr %43, ptr %42
  store ptr %storemerge, ptr %smaller, align 8
  %44 = load ptr, ptr %result, align 8
  %cmp47 = icmp eq ptr %44, null
  br i1 %cmp47, label %if.then48, label %if.else49

if.then48:                                        ; preds = %while.body40
  %45 = load ptr, ptr %smaller, align 8
  store ptr %45, ptr %result_tail, align 8
  store ptr %45, ptr %result, align 8
  br label %if.end52

if.else49:                                        ; preds = %while.body40
  %46 = load ptr, ptr %smaller, align 8
  %47 = load ptr, ptr %result_tail, align 8
  store ptr %46, ptr %47, align 8
  %prev51 = getelementptr inbounds %struct.cJSON, ptr %46, i64 0, i32 1
  store ptr %47, ptr %prev51, align 8
  store ptr %46, ptr %result_tail, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.else49, %if.then48
  %48 = load ptr, ptr %first, align 8
  %49 = load ptr, ptr %smaller, align 8
  %cmp53 = icmp eq ptr %48, %49
  br i1 %cmp53, label %if.then54, label %if.else56

if.then54:                                        ; preds = %if.end52
  %50 = load ptr, ptr %first, align 8
  %51 = load ptr, ptr %50, align 8
  store ptr %51, ptr %first, align 8
  br label %if.end58

if.else56:                                        ; preds = %if.end52
  %52 = load ptr, ptr %second, align 8
  %53 = load ptr, ptr %52, align 8
  store ptr %53, ptr %second, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.else56, %if.then54
  br label %while.cond35, !llvm.loop !32

while.end59:                                      ; preds = %while.cond35
  %54 = load ptr, ptr %first, align 8
  %cmp60.not = icmp eq ptr %54, null
  br i1 %cmp60.not, label %if.end67, label %if.then61

if.then61:                                        ; preds = %while.end59
  %55 = load ptr, ptr %result, align 8
  %cmp62 = icmp eq ptr %55, null
  br i1 %cmp62, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.then61
  %56 = load ptr, ptr %first, align 8
  store ptr %56, ptr %retval, align 8
  br label %return

if.end64:                                         ; preds = %if.then61
  %57 = load ptr, ptr %first, align 8
  %58 = load ptr, ptr %result_tail, align 8
  store ptr %57, ptr %58, align 8
  %prev66 = getelementptr inbounds %struct.cJSON, ptr %57, i64 0, i32 1
  store ptr %58, ptr %prev66, align 8
  br label %if.end67

if.end67:                                         ; preds = %if.end64, %while.end59
  %59 = load ptr, ptr %second, align 8
  %cmp68.not = icmp eq ptr %59, null
  br i1 %cmp68.not, label %if.end75, label %if.then69

if.then69:                                        ; preds = %if.end67
  %60 = load ptr, ptr %result, align 8
  %cmp70 = icmp eq ptr %60, null
  br i1 %cmp70, label %if.then71, label %if.end72

if.then71:                                        ; preds = %if.then69
  %61 = load ptr, ptr %second, align 8
  store ptr %61, ptr %retval, align 8
  br label %return

if.end72:                                         ; preds = %if.then69
  %62 = load ptr, ptr %second, align 8
  %63 = load ptr, ptr %result_tail, align 8
  store ptr %62, ptr %63, align 8
  %prev74 = getelementptr inbounds %struct.cJSON, ptr %62, i64 0, i32 1
  store ptr %63, ptr %prev74, align 8
  br label %if.end75

if.end75:                                         ; preds = %if.end72, %if.end67
  %64 = load ptr, ptr %result, align 8
  store ptr %64, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end75, %if.then71, %if.then63, %if.then13, %if.then
  %65 = load ptr, ptr %retval, align 8
  ret ptr %65
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
