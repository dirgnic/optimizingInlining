; ModuleID = './source_snapshot/public_repos/cJSON/tests/misc_utils_tests.c'
source_filename = "./source_snapshot/public_repos/cJSON/tests/misc_utils_tests.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.error = type { ptr, i64 }
%struct.internal_hooks = type { ptr, ptr, ptr }
%struct.cJSON = type { ptr, ptr, ptr, i32, ptr, i32, double, ptr }
%struct.cJSON_Hooks = type { ptr, ptr }
%struct.parse_buffer = type { ptr, i64, i64, i64, %struct.internal_hooks }
%struct.printbuffer = type { ptr, i64, i64, i64, i32, i32, %struct.internal_hooks }

@global_error = internal global %struct.error zeroinitializer, align 8
@cJSON_Version.version = internal global [15 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [9 x i8] c"%i.%i.%i\00", align 1
@global_hooks = internal global %struct.internal_hooks { ptr @malloc, ptr @free, ptr @realloc }, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [112 x i8] c"./source_snapshot/public_repos/cJSON/tests/misc_utils_tests.c\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"cjson_utils_functions_shouldnt_crash_with_null_pointers\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"\EF\BB\BF\00", align 1
@print.default_buffer_size = internal constant i64 256, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"%1.15g\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%lg\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"%1.17g\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"\22\22\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"u%04x\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"item\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c" Expected Non-NULL\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c" Expected NULL\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"pointer\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"add\00", align 1

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_GetErrorPtr() #0 {
entry:
  %0 = load ptr, ptr @global_error, align 8
  %1 = load i64, ptr getelementptr inbounds (%struct.error, ptr @global_error, i32 0, i32 1), align 8
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %1
  ret ptr %add.ptr
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_GetStringValue(ptr noundef %item) #0 {
entry:
  %retval = alloca ptr, align 8
  %item.addr = alloca ptr, align 8
  store ptr %item, ptr %item.addr, align 8
  %0 = load ptr, ptr %item.addr, align 8
  %call = call i32 @pc_inline_source_snapshot_public_repos_cJSON_tests_misc_utils_tests_0(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %item.addr, align 8
  %valuestring = getelementptr inbounds %struct.cJSON, ptr %1, i32 0, i32 4
  %2 = load ptr, ptr %valuestring, align 8
  store ptr %2, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load ptr, ptr %retval, align 8
  ret ptr %3
}

; Function Attrs: nounwind ssp uwtable
define i32 @cJSON_IsString(ptr noundef %item) #0 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca ptr, align 8
  store ptr %item, ptr %item.addr, align 8
  %0 = load ptr, ptr %item.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %item.addr, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %type, align 8
  %and = and i32 %2, 255
  %cmp1 = icmp eq i32 %and, 16
  %conv = zext i1 %cmp1 to i32
  store i32 %conv, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

; Function Attrs: nounwind ssp uwtable
define double @cJSON_GetNumberValue(ptr noundef %item) #0 {
entry:
  %retval = alloca double, align 8
  %item.addr = alloca ptr, align 8
  store ptr %item, ptr %item.addr, align 8
  %0 = load ptr, ptr %item.addr, align 8
  %call = call i32 @pc_inline_source_snapshot_public_repos_cJSON_tests_misc_utils_tests_1(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store double 0x7FF8000000000000, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %item.addr, align 8
  %valuedouble = getelementptr inbounds %struct.cJSON, ptr %1, i32 0, i32 6
  %2 = load double, ptr %valuedouble, align 8
  store double %2, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load double, ptr %retval, align 8
  ret double %3
}

; Function Attrs: nounwind ssp uwtable
define i32 @cJSON_IsNumber(ptr noundef %item) #0 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca ptr, align 8
  store ptr %item, ptr %item.addr, align 8
  %0 = load ptr, ptr %item.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %item.addr, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %type, align 8
  %and = and i32 %2, 255
  %cmp1 = icmp eq i32 %and, 8
  %conv = zext i1 %cmp1 to i32
  store i32 %conv, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_Version() #0 {
entry:
  %call = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef @cJSON_Version.version, i32 noundef 0, i64 noundef 15, ptr noundef @.str, i32 noundef 1, i32 noundef 7, i32 noundef 19)
  ret ptr @cJSON_Version.version
}

declare i32 @__sprintf_chk(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ...) #1

; Function Attrs: nounwind ssp uwtable
define void @cJSON_InitHooks(ptr noundef %hooks) #0 {
entry:
  %hooks.addr = alloca ptr, align 8
  store ptr %hooks, ptr %hooks.addr, align 8
  %0 = load ptr, ptr %hooks.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr @malloc, ptr @global_hooks, align 8
  store ptr @free, ptr getelementptr inbounds (%struct.internal_hooks, ptr @global_hooks, i32 0, i32 1), align 8
  store ptr @realloc, ptr getelementptr inbounds (%struct.internal_hooks, ptr @global_hooks, i32 0, i32 2), align 8
  br label %if.end12

if.end:                                           ; preds = %entry
  store ptr @malloc, ptr @global_hooks, align 8
  %1 = load ptr, ptr %hooks.addr, align 8
  %malloc_fn = getelementptr inbounds %struct.cJSON_Hooks, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %malloc_fn, align 8
  %cmp1 = icmp ne ptr %2, null
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %hooks.addr, align 8
  %malloc_fn3 = getelementptr inbounds %struct.cJSON_Hooks, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %malloc_fn3, align 8
  store ptr %4, ptr @global_hooks, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  store ptr @free, ptr getelementptr inbounds (%struct.internal_hooks, ptr @global_hooks, i32 0, i32 1), align 8
  %5 = load ptr, ptr %hooks.addr, align 8
  %free_fn = getelementptr inbounds %struct.cJSON_Hooks, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %free_fn, align 8
  %cmp5 = icmp ne ptr %6, null
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  %7 = load ptr, ptr %hooks.addr, align 8
  %free_fn7 = getelementptr inbounds %struct.cJSON_Hooks, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %free_fn7, align 8
  store ptr %8, ptr getelementptr inbounds (%struct.internal_hooks, ptr @global_hooks, i32 0, i32 1), align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4
  store ptr null, ptr getelementptr inbounds (%struct.internal_hooks, ptr @global_hooks, i32 0, i32 2), align 8
  %9 = load ptr, ptr @global_hooks, align 8
  %cmp9 = icmp eq ptr %9, @malloc
  br i1 %cmp9, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %if.end8
  %10 = load ptr, ptr getelementptr inbounds (%struct.internal_hooks, ptr @global_hooks, i32 0, i32 1), align 8
  %cmp10 = icmp eq ptr %10, @free
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %land.lhs.true
  store ptr @realloc, ptr getelementptr inbounds (%struct.internal_hooks, ptr @global_hooks, i32 0, i32 2), align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then, %if.then11, %land.lhs.true, %if.end8
  ret void
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #2

declare void @free(ptr noundef) #1

; Function Attrs: allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #3

; Function Attrs: nounwind ssp uwtable
define void @cJSON_Delete(ptr noundef %item) #0 {
entry:
  %item.addr = alloca ptr, align 8
  %next = alloca ptr, align 8
  store ptr %item, ptr %item.addr, align 8
  store ptr null, ptr %next, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end21, %entry
  %0 = load ptr, ptr %item.addr, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %item.addr, align 8
  %next1 = getelementptr inbounds %struct.cJSON, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %next1, align 8
  store ptr %2, ptr %next, align 8
  %3 = load ptr, ptr %item.addr, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %3, i32 0, i32 3
  %4 = load i32, ptr %type, align 8
  %and = and i32 %4, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %5 = load ptr, ptr %item.addr, align 8
  %child = getelementptr inbounds %struct.cJSON, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %child, align 8
  %cmp2 = icmp ne ptr %6, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load ptr, ptr %item.addr, align 8
  %child3 = getelementptr inbounds %struct.cJSON, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %child3, align 8
  call void @cJSON_Delete(ptr noundef %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.body
  %9 = load ptr, ptr %item.addr, align 8
  %type4 = getelementptr inbounds %struct.cJSON, ptr %9, i32 0, i32 3
  %10 = load i32, ptr %type4, align 8
  %and5 = and i32 %10, 256
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.end12, label %land.lhs.true7

land.lhs.true7:                                   ; preds = %if.end
  %11 = load ptr, ptr %item.addr, align 8
  %valuestring = getelementptr inbounds %struct.cJSON, ptr %11, i32 0, i32 4
  %12 = load ptr, ptr %valuestring, align 8
  %cmp8 = icmp ne ptr %12, null
  br i1 %cmp8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %land.lhs.true7
  %13 = load ptr, ptr getelementptr inbounds (%struct.internal_hooks, ptr @global_hooks, i32 0, i32 1), align 8
  %14 = load ptr, ptr %item.addr, align 8
  %valuestring10 = getelementptr inbounds %struct.cJSON, ptr %14, i32 0, i32 4
  %15 = load ptr, ptr %valuestring10, align 8
  call void %13(ptr noundef %15)
  %16 = load ptr, ptr %item.addr, align 8
  %valuestring11 = getelementptr inbounds %struct.cJSON, ptr %16, i32 0, i32 4
  store ptr null, ptr %valuestring11, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %land.lhs.true7, %if.end
  %17 = load ptr, ptr %item.addr, align 8
  %type13 = getelementptr inbounds %struct.cJSON, ptr %17, i32 0, i32 3
  %18 = load i32, ptr %type13, align 8
  %and14 = and i32 %18, 512
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %if.end21, label %land.lhs.true16

land.lhs.true16:                                  ; preds = %if.end12
  %19 = load ptr, ptr %item.addr, align 8
  %string = getelementptr inbounds %struct.cJSON, ptr %19, i32 0, i32 7
  %20 = load ptr, ptr %string, align 8
  %cmp17 = icmp ne ptr %20, null
  br i1 %cmp17, label %if.then18, label %if.end21

if.then18:                                        ; preds = %land.lhs.true16
  %21 = load ptr, ptr getelementptr inbounds (%struct.internal_hooks, ptr @global_hooks, i32 0, i32 1), align 8
  %22 = load ptr, ptr %item.addr, align 8
  %string19 = getelementptr inbounds %struct.cJSON, ptr %22, i32 0, i32 7
  %23 = load ptr, ptr %string19, align 8
  call void %21(ptr noundef %23)
  %24 = load ptr, ptr %item.addr, align 8
  %string20 = getelementptr inbounds %struct.cJSON, ptr %24, i32 0, i32 7
  store ptr null, ptr %string20, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %land.lhs.true16, %if.end12
  %25 = load ptr, ptr getelementptr inbounds (%struct.internal_hooks, ptr @global_hooks, i32 0, i32 1), align 8
  %26 = load ptr, ptr %item.addr, align 8
  call void %25(ptr noundef %26)
  %27 = load ptr, ptr %next, align 8
  store ptr %27, ptr %item.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define double @cJSON_SetNumberHelper(ptr noundef %object, double noundef %number) #0 {
entry:
  %retval = alloca double, align 8
  %object.addr = alloca ptr, align 8
  %number.addr = alloca double, align 8
  store ptr %object, ptr %object.addr, align 8
  store double %number, ptr %number.addr, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store double 0x7FF8000000000000, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load double, ptr %number.addr, align 8
  %cmp1 = fcmp oge double %1, 0x41DFFFFFFFC00000
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr %object.addr, align 8
  %valueint = getelementptr inbounds %struct.cJSON, ptr %2, i32 0, i32 5
  store i32 2147483647, ptr %valueint, align 8
  br label %if.end9

if.else:                                          ; preds = %if.end
  %3 = load double, ptr %number.addr, align 8
  %cmp3 = fcmp ole double %3, 0xC1E0000000000000
  br i1 %cmp3, label %if.then4, label %if.else6

if.then4:                                         ; preds = %if.else
  %4 = load ptr, ptr %object.addr, align 8
  %valueint5 = getelementptr inbounds %struct.cJSON, ptr %4, i32 0, i32 5
  store i32 -2147483648, ptr %valueint5, align 8
  br label %if.end8

if.else6:                                         ; preds = %if.else
  %5 = load double, ptr %number.addr, align 8
  %conv = fptosi double %5 to i32
  %6 = load ptr, ptr %object.addr, align 8
  %valueint7 = getelementptr inbounds %struct.cJSON, ptr %6, i32 0, i32 5
  store i32 %conv, ptr %valueint7, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.else6, %if.then4
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.then2
  %7 = load double, ptr %number.addr, align 8
  %8 = load ptr, ptr %object.addr, align 8
  %valuedouble = getelementptr inbounds %struct.cJSON, ptr %8, i32 0, i32 6
  store double %7, ptr %valuedouble, align 8
  store double %7, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end9, %if.then
  %9 = load double, ptr %retval, align 8
  ret double %9
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_SetValuestring(ptr noundef %object, ptr noundef %valuestring) #0 {
entry:
  %retval = alloca ptr, align 8
  %object.addr = alloca ptr, align 8
  %valuestring.addr = alloca ptr, align 8
  %copy = alloca ptr, align 8
  %v1_len = alloca i64, align 8
  %v2_len = alloca i64, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %valuestring, ptr %valuestring.addr, align 8
  store ptr null, ptr %copy, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %object.addr, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %type, align 8
  %and = and i32 %2, 16
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %lor.lhs.false1, label %if.then

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %object.addr, align 8
  %type2 = getelementptr inbounds %struct.cJSON, ptr %3, i32 0, i32 3
  %4 = load i32, ptr %type2, align 8
  %and3 = and i32 %4, 256
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false1, %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false1
  %5 = load ptr, ptr %object.addr, align 8
  %valuestring5 = getelementptr inbounds %struct.cJSON, ptr %5, i32 0, i32 4
  %6 = load ptr, ptr %valuestring5, align 8
  %cmp6 = icmp eq ptr %6, null
  br i1 %cmp6, label %if.then9, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %if.end
  %7 = load ptr, ptr %valuestring.addr, align 8
  %cmp8 = icmp eq ptr %7, null
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false7, %if.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end10:                                         ; preds = %lor.lhs.false7
  %8 = load ptr, ptr %valuestring.addr, align 8
  %call = call i64 @strlen(ptr noundef %8)
  store i64 %call, ptr %v1_len, align 8
  %9 = load ptr, ptr %object.addr, align 8
  %valuestring11 = getelementptr inbounds %struct.cJSON, ptr %9, i32 0, i32 4
  %10 = load ptr, ptr %valuestring11, align 8
  %call12 = call i64 @strlen(ptr noundef %10)
  store i64 %call12, ptr %v2_len, align 8
  %11 = load i64, ptr %v1_len, align 8
  %12 = load i64, ptr %v2_len, align 8
  %cmp13 = icmp ule i64 %11, %12
  br i1 %cmp13, label %if.then14, label %if.end27

if.then14:                                        ; preds = %if.end10
  %13 = load ptr, ptr %valuestring.addr, align 8
  %14 = load i64, ptr %v1_len, align 8
  %add.ptr = getelementptr inbounds i8, ptr %13, i64 %14
  %15 = load ptr, ptr %object.addr, align 8
  %valuestring15 = getelementptr inbounds %struct.cJSON, ptr %15, i32 0, i32 4
  %16 = load ptr, ptr %valuestring15, align 8
  %cmp16 = icmp ult ptr %add.ptr, %16
  br i1 %cmp16, label %if.end22, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %if.then14
  %17 = load ptr, ptr %object.addr, align 8
  %valuestring18 = getelementptr inbounds %struct.cJSON, ptr %17, i32 0, i32 4
  %18 = load ptr, ptr %valuestring18, align 8
  %19 = load i64, ptr %v2_len, align 8
  %add.ptr19 = getelementptr inbounds i8, ptr %18, i64 %19
  %20 = load ptr, ptr %valuestring.addr, align 8
  %cmp20 = icmp ult ptr %add.ptr19, %20
  br i1 %cmp20, label %if.end22, label %if.then21

if.then21:                                        ; preds = %lor.lhs.false17
  store ptr null, ptr %retval, align 8
  br label %return

if.end22:                                         ; preds = %lor.lhs.false17, %if.then14
  %21 = load ptr, ptr %object.addr, align 8
  %valuestring23 = getelementptr inbounds %struct.cJSON, ptr %21, i32 0, i32 4
  %22 = load ptr, ptr %valuestring23, align 8
  %23 = load ptr, ptr %valuestring.addr, align 8
  %24 = load ptr, ptr %object.addr, align 8
  %valuestring24 = getelementptr inbounds %struct.cJSON, ptr %24, i32 0, i32 4
  %25 = load ptr, ptr %valuestring24, align 8
  %26 = call i64 @llvm.objectsize.i64.p0(ptr %25, i1 false, i1 true, i1 false)
  %call25 = call ptr @__strcpy_chk(ptr noundef %22, ptr noundef %23, i64 noundef %26) #9
  %27 = load ptr, ptr %object.addr, align 8
  %valuestring26 = getelementptr inbounds %struct.cJSON, ptr %27, i32 0, i32 4
  %28 = load ptr, ptr %valuestring26, align 8
  store ptr %28, ptr %retval, align 8
  br label %return

if.end27:                                         ; preds = %if.end10
  %29 = load ptr, ptr %valuestring.addr, align 8
  %call28 = call ptr @cJSON_strdup(ptr noundef %29, ptr noundef @global_hooks)
  store ptr %call28, ptr %copy, align 8
  %30 = load ptr, ptr %copy, align 8
  %cmp29 = icmp eq ptr %30, null
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end27
  store ptr null, ptr %retval, align 8
  br label %return

if.end31:                                         ; preds = %if.end27
  %31 = load ptr, ptr %object.addr, align 8
  %valuestring32 = getelementptr inbounds %struct.cJSON, ptr %31, i32 0, i32 4
  %32 = load ptr, ptr %valuestring32, align 8
  %cmp33 = icmp ne ptr %32, null
  br i1 %cmp33, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.end31
  %33 = load ptr, ptr %object.addr, align 8
  %valuestring35 = getelementptr inbounds %struct.cJSON, ptr %33, i32 0, i32 4
  %34 = load ptr, ptr %valuestring35, align 8
  call void @cJSON_free(ptr noundef %34)
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end31
  %35 = load ptr, ptr %copy, align 8
  %36 = load ptr, ptr %object.addr, align 8
  %valuestring37 = getelementptr inbounds %struct.cJSON, ptr %36, i32 0, i32 4
  store ptr %35, ptr %valuestring37, align 8
  %37 = load ptr, ptr %copy, align 8
  store ptr %37, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end36, %if.then30, %if.end22, %if.then21, %if.then9, %if.then
  %38 = load ptr, ptr %retval, align 8
  ret ptr %38
}

declare i64 @strlen(ptr noundef) #1

; Function Attrs: nounwind
declare ptr @__strcpy_chk(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #5

; Function Attrs: nounwind ssp uwtable
define internal ptr @cJSON_strdup(ptr noundef %string, ptr noundef %hooks) #0 {
entry:
  %retval = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  %hooks.addr = alloca ptr, align 8
  %length = alloca i64, align 8
  %copy = alloca ptr, align 8
  store ptr %string, ptr %string.addr, align 8
  store ptr %hooks, ptr %hooks.addr, align 8
  store i64 0, ptr %length, align 8
  store ptr null, ptr %copy, align 8
  %0 = load ptr, ptr %string.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %string.addr, align 8
  %call = call i64 @strlen(ptr noundef %1)
  %add = add i64 %call, 1
  store i64 %add, ptr %length, align 8
  %2 = load ptr, ptr %hooks.addr, align 8
  %allocate = getelementptr inbounds %struct.internal_hooks, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %allocate, align 8
  %4 = load i64, ptr %length, align 8
  %call1 = call ptr %3(i64 noundef %4)
  store ptr %call1, ptr %copy, align 8
  %5 = load ptr, ptr %copy, align 8
  %cmp2 = icmp eq ptr %5, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end4:                                          ; preds = %if.end
  %6 = load ptr, ptr %copy, align 8
  %7 = load ptr, ptr %string.addr, align 8
  %8 = load i64, ptr %length, align 8
  %9 = load ptr, ptr %copy, align 8
  %10 = call i64 @llvm.objectsize.i64.p0(ptr %9, i1 false, i1 true, i1 false)
  %call5 = call ptr @__memcpy_chk(ptr noundef %6, ptr noundef %7, i64 noundef %8, i64 noundef %10) #9
  %11 = load ptr, ptr %copy, align 8
  store ptr %11, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %12 = load ptr, ptr %retval, align 8
  ret ptr %12
}

; Function Attrs: nounwind ssp uwtable
define void @cJSON_free(ptr noundef %object) #0 {
entry:
  %object.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  %0 = load ptr, ptr getelementptr inbounds (%struct.internal_hooks, ptr @global_hooks, i32 0, i32 1), align 8
  %1 = load ptr, ptr %object.addr, align 8
  call void %0(ptr noundef %1)
  store ptr null, ptr %object.addr, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_ParseWithOpts(ptr noundef %value, ptr noundef %return_parse_end, i32 noundef %require_null_terminated) #0 {
entry:
  %retval = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %return_parse_end.addr = alloca ptr, align 8
  %require_null_terminated.addr = alloca i32, align 4
  %buffer_length = alloca i64, align 8
  store ptr %value, ptr %value.addr, align 8
  store ptr %return_parse_end, ptr %return_parse_end.addr, align 8
  store i32 %require_null_terminated, ptr %require_null_terminated.addr, align 4
  %0 = load ptr, ptr %value.addr, align 8
  %cmp = icmp eq ptr null, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %value.addr, align 8
  %call = call i64 @strlen(ptr noundef %1)
  %add = add i64 %call, 1
  store i64 %add, ptr %buffer_length, align 8
  %2 = load ptr, ptr %value.addr, align 8
  %3 = load i64, ptr %buffer_length, align 8
  %4 = load ptr, ptr %return_parse_end.addr, align 8
  %5 = load i32, ptr %require_null_terminated.addr, align 4
  %call1 = call ptr @cJSON_ParseWithLengthOpts(ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5)
  store ptr %call1, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load ptr, ptr %retval, align 8
  ret ptr %6
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_ParseWithLengthOpts(ptr noundef %value, i64 noundef %buffer_length, ptr noundef %return_parse_end, i32 noundef %require_null_terminated) #0 {
entry:
  %retval = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %buffer_length.addr = alloca i64, align 8
  %return_parse_end.addr = alloca ptr, align 8
  %require_null_terminated.addr = alloca i32, align 4
  %buffer = alloca %struct.parse_buffer, align 8
  %item = alloca ptr, align 8
  %local_error = alloca %struct.error, align 8
  store ptr %value, ptr %value.addr, align 8
  store i64 %buffer_length, ptr %buffer_length.addr, align 8
  store ptr %return_parse_end, ptr %return_parse_end.addr, align 8
  store i32 %require_null_terminated, ptr %require_null_terminated.addr, align 4
  call void @llvm.memset.p0.i64(ptr align 8 %buffer, i8 0, i64 56, i1 false)
  store ptr null, ptr %item, align 8
  store ptr null, ptr @global_error, align 8
  store i64 0, ptr getelementptr inbounds (%struct.error, ptr @global_error, i32 0, i32 1), align 8
  %0 = load ptr, ptr %value.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, ptr %buffer_length.addr, align 8
  %cmp1 = icmp eq i64 0, %1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %fail

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %value.addr, align 8
  %content = getelementptr inbounds %struct.parse_buffer, ptr %buffer, i32 0, i32 0
  store ptr %2, ptr %content, align 8
  %3 = load i64, ptr %buffer_length.addr, align 8
  %length = getelementptr inbounds %struct.parse_buffer, ptr %buffer, i32 0, i32 1
  store i64 %3, ptr %length, align 8
  %offset = getelementptr inbounds %struct.parse_buffer, ptr %buffer, i32 0, i32 2
  store i64 0, ptr %offset, align 8
  %hooks = getelementptr inbounds %struct.parse_buffer, ptr %buffer, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %hooks, ptr align 8 @global_hooks, i64 24, i1 false)
  %call = call ptr @cJSON_New_Item(ptr noundef @global_hooks)
  store ptr %call, ptr %item, align 8
  %4 = load ptr, ptr %item, align 8
  %cmp2 = icmp eq ptr %4, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  br label %fail

if.end4:                                          ; preds = %if.end
  %5 = load ptr, ptr %item, align 8
  %call5 = call ptr @skip_utf8_bom(ptr noundef %buffer)
  %call6 = call ptr @buffer_skip_whitespace(ptr noundef %call5)
  %call7 = call i32 @parse_value(ptr noundef %5, ptr noundef %call6)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end4
  br label %fail

if.end9:                                          ; preds = %if.end4
  %6 = load i32, ptr %require_null_terminated.addr, align 4
  %tobool10 = icmp ne i32 %6, 0
  br i1 %tobool10, label %if.then11, label %if.end23

if.then11:                                        ; preds = %if.end9
  %call12 = call ptr @buffer_skip_whitespace(ptr noundef %buffer)
  %offset13 = getelementptr inbounds %struct.parse_buffer, ptr %buffer, i32 0, i32 2
  %7 = load i64, ptr %offset13, align 8
  %length14 = getelementptr inbounds %struct.parse_buffer, ptr %buffer, i32 0, i32 1
  %8 = load i64, ptr %length14, align 8
  %cmp15 = icmp uge i64 %7, %8
  br i1 %cmp15, label %if.then21, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %if.then11
  %content17 = getelementptr inbounds %struct.parse_buffer, ptr %buffer, i32 0, i32 0
  %9 = load ptr, ptr %content17, align 8
  %offset18 = getelementptr inbounds %struct.parse_buffer, ptr %buffer, i32 0, i32 2
  %10 = load i64, ptr %offset18, align 8
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %10
  %arrayidx = getelementptr inbounds i8, ptr %add.ptr, i64 0
  %11 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %11 to i32
  %cmp19 = icmp ne i32 %conv, 0
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %lor.lhs.false16, %if.then11
  br label %fail

if.end22:                                         ; preds = %lor.lhs.false16
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.end9
  %12 = load ptr, ptr %return_parse_end.addr, align 8
  %tobool24 = icmp ne ptr %12, null
  br i1 %tobool24, label %if.then25, label %if.end29

if.then25:                                        ; preds = %if.end23
  %content26 = getelementptr inbounds %struct.parse_buffer, ptr %buffer, i32 0, i32 0
  %13 = load ptr, ptr %content26, align 8
  %offset27 = getelementptr inbounds %struct.parse_buffer, ptr %buffer, i32 0, i32 2
  %14 = load i64, ptr %offset27, align 8
  %add.ptr28 = getelementptr inbounds i8, ptr %13, i64 %14
  %15 = load ptr, ptr %return_parse_end.addr, align 8
  store ptr %add.ptr28, ptr %15, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.end23
  %16 = load ptr, ptr %item, align 8
  store ptr %16, ptr %retval, align 8
  br label %return

fail:                                             ; preds = %if.then21, %if.then8, %if.then3, %if.then
  %17 = load ptr, ptr %item, align 8
  %cmp30 = icmp ne ptr %17, null
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %fail
  %18 = load ptr, ptr %item, align 8
  call void @cJSON_Delete(ptr noundef %18)
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %fail
  %19 = load ptr, ptr %value.addr, align 8
  %cmp34 = icmp ne ptr %19, null
  br i1 %cmp34, label %if.then36, label %if.end59

if.then36:                                        ; preds = %if.end33
  %20 = load ptr, ptr %value.addr, align 8
  %json = getelementptr inbounds %struct.error, ptr %local_error, i32 0, i32 0
  store ptr %20, ptr %json, align 8
  %position = getelementptr inbounds %struct.error, ptr %local_error, i32 0, i32 1
  store i64 0, ptr %position, align 8
  %offset37 = getelementptr inbounds %struct.parse_buffer, ptr %buffer, i32 0, i32 2
  %21 = load i64, ptr %offset37, align 8
  %length38 = getelementptr inbounds %struct.parse_buffer, ptr %buffer, i32 0, i32 1
  %22 = load i64, ptr %length38, align 8
  %cmp39 = icmp ult i64 %21, %22
  br i1 %cmp39, label %if.then41, label %if.else

if.then41:                                        ; preds = %if.then36
  %offset42 = getelementptr inbounds %struct.parse_buffer, ptr %buffer, i32 0, i32 2
  %23 = load i64, ptr %offset42, align 8
  %position43 = getelementptr inbounds %struct.error, ptr %local_error, i32 0, i32 1
  store i64 %23, ptr %position43, align 8
  br label %if.end51

if.else:                                          ; preds = %if.then36
  %length44 = getelementptr inbounds %struct.parse_buffer, ptr %buffer, i32 0, i32 1
  %24 = load i64, ptr %length44, align 8
  %cmp45 = icmp ugt i64 %24, 0
  br i1 %cmp45, label %if.then47, label %if.end50

if.then47:                                        ; preds = %if.else
  %length48 = getelementptr inbounds %struct.parse_buffer, ptr %buffer, i32 0, i32 1
  %25 = load i64, ptr %length48, align 8
  %sub = sub i64 %25, 1
  %position49 = getelementptr inbounds %struct.error, ptr %local_error, i32 0, i32 1
  store i64 %sub, ptr %position49, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %if.else
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.then41
  %26 = load ptr, ptr %return_parse_end.addr, align 8
  %cmp52 = icmp ne ptr %26, null
  br i1 %cmp52, label %if.then54, label %if.end58

if.then54:                                        ; preds = %if.end51
  %json55 = getelementptr inbounds %struct.error, ptr %local_error, i32 0, i32 0
  %27 = load ptr, ptr %json55, align 8
  %position56 = getelementptr inbounds %struct.error, ptr %local_error, i32 0, i32 1
  %28 = load i64, ptr %position56, align 8
  %add.ptr57 = getelementptr inbounds i8, ptr %27, i64 %28
  %29 = load ptr, ptr %return_parse_end.addr, align 8
  store ptr %add.ptr57, ptr %29, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.then54, %if.end51
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 @global_error, ptr align 8 %local_error, i64 16, i1 false)
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.end33
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end59, %if.end29
  %30 = load ptr, ptr %retval, align 8
  ret ptr %30
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nounwind ssp uwtable
define internal ptr @cJSON_New_Item(ptr noundef %hooks) #0 {
entry:
  %hooks.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  store ptr %hooks, ptr %hooks.addr, align 8
  %0 = load ptr, ptr %hooks.addr, align 8
  %allocate = getelementptr inbounds %struct.internal_hooks, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %allocate, align 8
  %call = call ptr %1(i64 noundef 64)
  store ptr %call, ptr %node, align 8
  %2 = load ptr, ptr %node, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %node, align 8
  %4 = load ptr, ptr %node, align 8
  %5 = call i64 @llvm.objectsize.i64.p0(ptr %4, i1 false, i1 true, i1 false)
  %call1 = call ptr @__memset_chk(ptr noundef %3, i32 noundef 0, i64 noundef 64, i64 noundef %5) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %node, align 8
  ret ptr %6
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @parse_value(ptr noundef %item, ptr noundef %input_buffer) #0 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca ptr, align 8
  %input_buffer.addr = alloca ptr, align 8
  store ptr %item, ptr %item.addr, align 8
  store ptr %input_buffer, ptr %input_buffer.addr, align 8
  %0 = load ptr, ptr %input_buffer.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %input_buffer.addr, align 8
  %content = getelementptr inbounds %struct.parse_buffer, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %content, align 8
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %input_buffer.addr, align 8
  %cmp2 = icmp ne ptr %3, null
  br i1 %cmp2, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %4 = load ptr, ptr %input_buffer.addr, align 8
  %offset = getelementptr inbounds %struct.parse_buffer, ptr %4, i32 0, i32 2
  %5 = load i64, ptr %offset, align 8
  %add = add i64 %5, 4
  %6 = load ptr, ptr %input_buffer.addr, align 8
  %length = getelementptr inbounds %struct.parse_buffer, ptr %6, i32 0, i32 1
  %7 = load i64, ptr %length, align 8
  %cmp3 = icmp ule i64 %add, %7
  br i1 %cmp3, label %land.lhs.true4, label %if.end11

land.lhs.true4:                                   ; preds = %land.lhs.true
  %8 = load ptr, ptr %input_buffer.addr, align 8
  %content5 = getelementptr inbounds %struct.parse_buffer, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %content5, align 8
  %10 = load ptr, ptr %input_buffer.addr, align 8
  %offset6 = getelementptr inbounds %struct.parse_buffer, ptr %10, i32 0, i32 2
  %11 = load i64, ptr %offset6, align 8
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %11
  %call = call i32 @strncmp(ptr noundef %add.ptr, ptr noundef @.str.5, i64 noundef 4)
  %cmp7 = icmp eq i32 %call, 0
  br i1 %cmp7, label %if.then8, label %if.end11

if.then8:                                         ; preds = %land.lhs.true4
  %12 = load ptr, ptr %item.addr, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %12, i32 0, i32 3
  store i32 4, ptr %type, align 8
  %13 = load ptr, ptr %input_buffer.addr, align 8
  %offset9 = getelementptr inbounds %struct.parse_buffer, ptr %13, i32 0, i32 2
  %14 = load i64, ptr %offset9, align 8
  %add10 = add i64 %14, 4
  store i64 %add10, ptr %offset9, align 8
  store i32 1, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %land.lhs.true4, %land.lhs.true, %if.end
  %15 = load ptr, ptr %input_buffer.addr, align 8
  %cmp12 = icmp ne ptr %15, null
  br i1 %cmp12, label %land.lhs.true13, label %if.end28

land.lhs.true13:                                  ; preds = %if.end11
  %16 = load ptr, ptr %input_buffer.addr, align 8
  %offset14 = getelementptr inbounds %struct.parse_buffer, ptr %16, i32 0, i32 2
  %17 = load i64, ptr %offset14, align 8
  %add15 = add i64 %17, 5
  %18 = load ptr, ptr %input_buffer.addr, align 8
  %length16 = getelementptr inbounds %struct.parse_buffer, ptr %18, i32 0, i32 1
  %19 = load i64, ptr %length16, align 8
  %cmp17 = icmp ule i64 %add15, %19
  br i1 %cmp17, label %land.lhs.true18, label %if.end28

land.lhs.true18:                                  ; preds = %land.lhs.true13
  %20 = load ptr, ptr %input_buffer.addr, align 8
  %content19 = getelementptr inbounds %struct.parse_buffer, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %content19, align 8
  %22 = load ptr, ptr %input_buffer.addr, align 8
  %offset20 = getelementptr inbounds %struct.parse_buffer, ptr %22, i32 0, i32 2
  %23 = load i64, ptr %offset20, align 8
  %add.ptr21 = getelementptr inbounds i8, ptr %21, i64 %23
  %call22 = call i32 @strncmp(ptr noundef %add.ptr21, ptr noundef @.str.6, i64 noundef 5)
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then24, label %if.end28

if.then24:                                        ; preds = %land.lhs.true18
  %24 = load ptr, ptr %item.addr, align 8
  %type25 = getelementptr inbounds %struct.cJSON, ptr %24, i32 0, i32 3
  store i32 1, ptr %type25, align 8
  %25 = load ptr, ptr %input_buffer.addr, align 8
  %offset26 = getelementptr inbounds %struct.parse_buffer, ptr %25, i32 0, i32 2
  %26 = load i64, ptr %offset26, align 8
  %add27 = add i64 %26, 5
  store i64 %add27, ptr %offset26, align 8
  store i32 1, ptr %retval, align 4
  br label %return

if.end28:                                         ; preds = %land.lhs.true18, %land.lhs.true13, %if.end11
  %27 = load ptr, ptr %input_buffer.addr, align 8
  %cmp29 = icmp ne ptr %27, null
  br i1 %cmp29, label %land.lhs.true30, label %if.end45

land.lhs.true30:                                  ; preds = %if.end28
  %28 = load ptr, ptr %input_buffer.addr, align 8
  %offset31 = getelementptr inbounds %struct.parse_buffer, ptr %28, i32 0, i32 2
  %29 = load i64, ptr %offset31, align 8
  %add32 = add i64 %29, 4
  %30 = load ptr, ptr %input_buffer.addr, align 8
  %length33 = getelementptr inbounds %struct.parse_buffer, ptr %30, i32 0, i32 1
  %31 = load i64, ptr %length33, align 8
  %cmp34 = icmp ule i64 %add32, %31
  br i1 %cmp34, label %land.lhs.true35, label %if.end45

land.lhs.true35:                                  ; preds = %land.lhs.true30
  %32 = load ptr, ptr %input_buffer.addr, align 8
  %content36 = getelementptr inbounds %struct.parse_buffer, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %content36, align 8
  %34 = load ptr, ptr %input_buffer.addr, align 8
  %offset37 = getelementptr inbounds %struct.parse_buffer, ptr %34, i32 0, i32 2
  %35 = load i64, ptr %offset37, align 8
  %add.ptr38 = getelementptr inbounds i8, ptr %33, i64 %35
  %call39 = call i32 @strncmp(ptr noundef %add.ptr38, ptr noundef @.str.7, i64 noundef 4)
  %cmp40 = icmp eq i32 %call39, 0
  br i1 %cmp40, label %if.then41, label %if.end45

if.then41:                                        ; preds = %land.lhs.true35
  %36 = load ptr, ptr %item.addr, align 8
  %type42 = getelementptr inbounds %struct.cJSON, ptr %36, i32 0, i32 3
  store i32 2, ptr %type42, align 8
  %37 = load ptr, ptr %item.addr, align 8
  %valueint = getelementptr inbounds %struct.cJSON, ptr %37, i32 0, i32 5
  store i32 1, ptr %valueint, align 8
  %38 = load ptr, ptr %input_buffer.addr, align 8
  %offset43 = getelementptr inbounds %struct.parse_buffer, ptr %38, i32 0, i32 2
  %39 = load i64, ptr %offset43, align 8
  %add44 = add i64 %39, 4
  store i64 %add44, ptr %offset43, align 8
  store i32 1, ptr %retval, align 4
  br label %return

if.end45:                                         ; preds = %land.lhs.true35, %land.lhs.true30, %if.end28
  %40 = load ptr, ptr %input_buffer.addr, align 8
  %cmp46 = icmp ne ptr %40, null
  br i1 %cmp46, label %land.lhs.true47, label %if.end60

land.lhs.true47:                                  ; preds = %if.end45
  %41 = load ptr, ptr %input_buffer.addr, align 8
  %offset48 = getelementptr inbounds %struct.parse_buffer, ptr %41, i32 0, i32 2
  %42 = load i64, ptr %offset48, align 8
  %add49 = add i64 %42, 0
  %43 = load ptr, ptr %input_buffer.addr, align 8
  %length50 = getelementptr inbounds %struct.parse_buffer, ptr %43, i32 0, i32 1
  %44 = load i64, ptr %length50, align 8
  %cmp51 = icmp ult i64 %add49, %44
  br i1 %cmp51, label %land.lhs.true52, label %if.end60

land.lhs.true52:                                  ; preds = %land.lhs.true47
  %45 = load ptr, ptr %input_buffer.addr, align 8
  %content53 = getelementptr inbounds %struct.parse_buffer, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %content53, align 8
  %47 = load ptr, ptr %input_buffer.addr, align 8
  %offset54 = getelementptr inbounds %struct.parse_buffer, ptr %47, i32 0, i32 2
  %48 = load i64, ptr %offset54, align 8
  %add.ptr55 = getelementptr inbounds i8, ptr %46, i64 %48
  %arrayidx = getelementptr inbounds i8, ptr %add.ptr55, i64 0
  %49 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %49 to i32
  %cmp56 = icmp eq i32 %conv, 34
  br i1 %cmp56, label %if.then58, label %if.end60

if.then58:                                        ; preds = %land.lhs.true52
  %50 = load ptr, ptr %item.addr, align 8
  %51 = load ptr, ptr %input_buffer.addr, align 8
  %call59 = call i32 @parse_string(ptr noundef %50, ptr noundef %51)
  store i32 %call59, ptr %retval, align 4
  br label %return

if.end60:                                         ; preds = %land.lhs.true52, %land.lhs.true47, %if.end45
  %52 = load ptr, ptr %input_buffer.addr, align 8
  %cmp61 = icmp ne ptr %52, null
  br i1 %cmp61, label %land.lhs.true63, label %if.end95

land.lhs.true63:                                  ; preds = %if.end60
  %53 = load ptr, ptr %input_buffer.addr, align 8
  %offset64 = getelementptr inbounds %struct.parse_buffer, ptr %53, i32 0, i32 2
  %54 = load i64, ptr %offset64, align 8
  %add65 = add i64 %54, 0
  %55 = load ptr, ptr %input_buffer.addr, align 8
  %length66 = getelementptr inbounds %struct.parse_buffer, ptr %55, i32 0, i32 1
  %56 = load i64, ptr %length66, align 8
  %cmp67 = icmp ult i64 %add65, %56
  br i1 %cmp67, label %land.lhs.true69, label %if.end95

land.lhs.true69:                                  ; preds = %land.lhs.true63
  %57 = load ptr, ptr %input_buffer.addr, align 8
  %content70 = getelementptr inbounds %struct.parse_buffer, ptr %57, i32 0, i32 0
  %58 = load ptr, ptr %content70, align 8
  %59 = load ptr, ptr %input_buffer.addr, align 8
  %offset71 = getelementptr inbounds %struct.parse_buffer, ptr %59, i32 0, i32 2
  %60 = load i64, ptr %offset71, align 8
  %add.ptr72 = getelementptr inbounds i8, ptr %58, i64 %60
  %arrayidx73 = getelementptr inbounds i8, ptr %add.ptr72, i64 0
  %61 = load i8, ptr %arrayidx73, align 1
  %conv74 = zext i8 %61 to i32
  %cmp75 = icmp eq i32 %conv74, 45
  br i1 %cmp75, label %if.then93, label %lor.lhs.false77

lor.lhs.false77:                                  ; preds = %land.lhs.true69
  %62 = load ptr, ptr %input_buffer.addr, align 8
  %content78 = getelementptr inbounds %struct.parse_buffer, ptr %62, i32 0, i32 0
  %63 = load ptr, ptr %content78, align 8
  %64 = load ptr, ptr %input_buffer.addr, align 8
  %offset79 = getelementptr inbounds %struct.parse_buffer, ptr %64, i32 0, i32 2
  %65 = load i64, ptr %offset79, align 8
  %add.ptr80 = getelementptr inbounds i8, ptr %63, i64 %65
  %arrayidx81 = getelementptr inbounds i8, ptr %add.ptr80, i64 0
  %66 = load i8, ptr %arrayidx81, align 1
  %conv82 = zext i8 %66 to i32
  %cmp83 = icmp sge i32 %conv82, 48
  br i1 %cmp83, label %land.lhs.true85, label %if.end95

land.lhs.true85:                                  ; preds = %lor.lhs.false77
  %67 = load ptr, ptr %input_buffer.addr, align 8
  %content86 = getelementptr inbounds %struct.parse_buffer, ptr %67, i32 0, i32 0
  %68 = load ptr, ptr %content86, align 8
  %69 = load ptr, ptr %input_buffer.addr, align 8
  %offset87 = getelementptr inbounds %struct.parse_buffer, ptr %69, i32 0, i32 2
  %70 = load i64, ptr %offset87, align 8
  %add.ptr88 = getelementptr inbounds i8, ptr %68, i64 %70
  %arrayidx89 = getelementptr inbounds i8, ptr %add.ptr88, i64 0
  %71 = load i8, ptr %arrayidx89, align 1
  %conv90 = zext i8 %71 to i32
  %cmp91 = icmp sle i32 %conv90, 57
  br i1 %cmp91, label %if.then93, label %if.end95

if.then93:                                        ; preds = %land.lhs.true85, %land.lhs.true69
  %72 = load ptr, ptr %item.addr, align 8
  %73 = load ptr, ptr %input_buffer.addr, align 8
  %call94 = call i32 @parse_number(ptr noundef %72, ptr noundef %73)
  store i32 %call94, ptr %retval, align 4
  br label %return

if.end95:                                         ; preds = %land.lhs.true85, %lor.lhs.false77, %land.lhs.true63, %if.end60
  %74 = load ptr, ptr %input_buffer.addr, align 8
  %cmp96 = icmp ne ptr %74, null
  br i1 %cmp96, label %land.lhs.true98, label %if.end114

land.lhs.true98:                                  ; preds = %if.end95
  %75 = load ptr, ptr %input_buffer.addr, align 8
  %offset99 = getelementptr inbounds %struct.parse_buffer, ptr %75, i32 0, i32 2
  %76 = load i64, ptr %offset99, align 8
  %add100 = add i64 %76, 0
  %77 = load ptr, ptr %input_buffer.addr, align 8
  %length101 = getelementptr inbounds %struct.parse_buffer, ptr %77, i32 0, i32 1
  %78 = load i64, ptr %length101, align 8
  %cmp102 = icmp ult i64 %add100, %78
  br i1 %cmp102, label %land.lhs.true104, label %if.end114

land.lhs.true104:                                 ; preds = %land.lhs.true98
  %79 = load ptr, ptr %input_buffer.addr, align 8
  %content105 = getelementptr inbounds %struct.parse_buffer, ptr %79, i32 0, i32 0
  %80 = load ptr, ptr %content105, align 8
  %81 = load ptr, ptr %input_buffer.addr, align 8
  %offset106 = getelementptr inbounds %struct.parse_buffer, ptr %81, i32 0, i32 2
  %82 = load i64, ptr %offset106, align 8
  %add.ptr107 = getelementptr inbounds i8, ptr %80, i64 %82
  %arrayidx108 = getelementptr inbounds i8, ptr %add.ptr107, i64 0
  %83 = load i8, ptr %arrayidx108, align 1
  %conv109 = zext i8 %83 to i32
  %cmp110 = icmp eq i32 %conv109, 91
  br i1 %cmp110, label %if.then112, label %if.end114

if.then112:                                       ; preds = %land.lhs.true104
  %84 = load ptr, ptr %item.addr, align 8
  %85 = load ptr, ptr %input_buffer.addr, align 8
  %call113 = call i32 @parse_array(ptr noundef %84, ptr noundef %85)
  store i32 %call113, ptr %retval, align 4
  br label %return

if.end114:                                        ; preds = %land.lhs.true104, %land.lhs.true98, %if.end95
  %86 = load ptr, ptr %input_buffer.addr, align 8
  %cmp115 = icmp ne ptr %86, null
  br i1 %cmp115, label %land.lhs.true117, label %if.end133

land.lhs.true117:                                 ; preds = %if.end114
  %87 = load ptr, ptr %input_buffer.addr, align 8
  %offset118 = getelementptr inbounds %struct.parse_buffer, ptr %87, i32 0, i32 2
  %88 = load i64, ptr %offset118, align 8
  %add119 = add i64 %88, 0
  %89 = load ptr, ptr %input_buffer.addr, align 8
  %length120 = getelementptr inbounds %struct.parse_buffer, ptr %89, i32 0, i32 1
  %90 = load i64, ptr %length120, align 8
  %cmp121 = icmp ult i64 %add119, %90
  br i1 %cmp121, label %land.lhs.true123, label %if.end133

land.lhs.true123:                                 ; preds = %land.lhs.true117
  %91 = load ptr, ptr %input_buffer.addr, align 8
  %content124 = getelementptr inbounds %struct.parse_buffer, ptr %91, i32 0, i32 0
  %92 = load ptr, ptr %content124, align 8
  %93 = load ptr, ptr %input_buffer.addr, align 8
  %offset125 = getelementptr inbounds %struct.parse_buffer, ptr %93, i32 0, i32 2
  %94 = load i64, ptr %offset125, align 8
  %add.ptr126 = getelementptr inbounds i8, ptr %92, i64 %94
  %arrayidx127 = getelementptr inbounds i8, ptr %add.ptr126, i64 0
  %95 = load i8, ptr %arrayidx127, align 1
  %conv128 = zext i8 %95 to i32
  %cmp129 = icmp eq i32 %conv128, 123
  br i1 %cmp129, label %if.then131, label %if.end133

if.then131:                                       ; preds = %land.lhs.true123
  %96 = load ptr, ptr %item.addr, align 8
  %97 = load ptr, ptr %input_buffer.addr, align 8
  %call132 = call i32 @parse_object(ptr noundef %96, ptr noundef %97)
  store i32 %call132, ptr %retval, align 4
  br label %return

if.end133:                                        ; preds = %land.lhs.true123, %land.lhs.true117, %if.end114
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end133, %if.then131, %if.then112, %if.then93, %if.then58, %if.then41, %if.then24, %if.then8, %if.then
  %98 = load i32, ptr %retval, align 4
  ret i32 %98
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @buffer_skip_whitespace(ptr noundef %buffer) #0 {
entry:
  %retval = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  %0 = load ptr, ptr %buffer.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %buffer.addr, align 8
  %content = getelementptr inbounds %struct.parse_buffer, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %content, align 8
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %buffer.addr, align 8
  %cmp2 = icmp ne ptr %3, null
  br i1 %cmp2, label %land.lhs.true, label %if.then4

land.lhs.true:                                    ; preds = %if.end
  %4 = load ptr, ptr %buffer.addr, align 8
  %offset = getelementptr inbounds %struct.parse_buffer, ptr %4, i32 0, i32 2
  %5 = load i64, ptr %offset, align 8
  %add = add i64 %5, 0
  %6 = load ptr, ptr %buffer.addr, align 8
  %length = getelementptr inbounds %struct.parse_buffer, ptr %6, i32 0, i32 1
  %7 = load i64, ptr %length, align 8
  %cmp3 = icmp ult i64 %add, %7
  br i1 %cmp3, label %if.end5, label %if.then4

if.then4:                                         ; preds = %land.lhs.true, %if.end
  %8 = load ptr, ptr %buffer.addr, align 8
  store ptr %8, ptr %retval, align 8
  br label %return

if.end5:                                          ; preds = %land.lhs.true
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end5
  %9 = load ptr, ptr %buffer.addr, align 8
  %cmp6 = icmp ne ptr %9, null
  br i1 %cmp6, label %land.lhs.true7, label %land.end

land.lhs.true7:                                   ; preds = %while.cond
  %10 = load ptr, ptr %buffer.addr, align 8
  %offset8 = getelementptr inbounds %struct.parse_buffer, ptr %10, i32 0, i32 2
  %11 = load i64, ptr %offset8, align 8
  %add9 = add i64 %11, 0
  %12 = load ptr, ptr %buffer.addr, align 8
  %length10 = getelementptr inbounds %struct.parse_buffer, ptr %12, i32 0, i32 1
  %13 = load i64, ptr %length10, align 8
  %cmp11 = icmp ult i64 %add9, %13
  br i1 %cmp11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true7
  %14 = load ptr, ptr %buffer.addr, align 8
  %content12 = getelementptr inbounds %struct.parse_buffer, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %content12, align 8
  %16 = load ptr, ptr %buffer.addr, align 8
  %offset13 = getelementptr inbounds %struct.parse_buffer, ptr %16, i32 0, i32 2
  %17 = load i64, ptr %offset13, align 8
  %add.ptr = getelementptr inbounds i8, ptr %15, i64 %17
  %arrayidx = getelementptr inbounds i8, ptr %add.ptr, i64 0
  %18 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %18 to i32
  %cmp14 = icmp sle i32 %conv, 32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true7, %while.cond
  %19 = phi i1 [ false, %land.lhs.true7 ], [ false, %while.cond ], [ %cmp14, %land.rhs ]
  br i1 %19, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %20 = load ptr, ptr %buffer.addr, align 8
  %offset16 = getelementptr inbounds %struct.parse_buffer, ptr %20, i32 0, i32 2
  %21 = load i64, ptr %offset16, align 8
  %inc = add i64 %21, 1
  store i64 %inc, ptr %offset16, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %land.end
  %22 = load ptr, ptr %buffer.addr, align 8
  %offset17 = getelementptr inbounds %struct.parse_buffer, ptr %22, i32 0, i32 2
  %23 = load i64, ptr %offset17, align 8
  %24 = load ptr, ptr %buffer.addr, align 8
  %length18 = getelementptr inbounds %struct.parse_buffer, ptr %24, i32 0, i32 1
  %25 = load i64, ptr %length18, align 8
  %cmp19 = icmp eq i64 %23, %25
  br i1 %cmp19, label %if.then21, label %if.end23

if.then21:                                        ; preds = %while.end
  %26 = load ptr, ptr %buffer.addr, align 8
  %offset22 = getelementptr inbounds %struct.parse_buffer, ptr %26, i32 0, i32 2
  %27 = load i64, ptr %offset22, align 8
  %dec = add i64 %27, -1
  store i64 %dec, ptr %offset22, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %while.end
  %28 = load ptr, ptr %buffer.addr, align 8
  store ptr %28, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end23, %if.then4, %if.then
  %29 = load ptr, ptr %retval, align 8
  ret ptr %29
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @skip_utf8_bom(ptr noundef %buffer) #0 {
entry:
  %retval = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  %0 = load ptr, ptr %buffer.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %buffer.addr, align 8
  %content = getelementptr inbounds %struct.parse_buffer, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %content, align 8
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %buffer.addr, align 8
  %offset = getelementptr inbounds %struct.parse_buffer, ptr %3, i32 0, i32 2
  %4 = load i64, ptr %offset, align 8
  %cmp3 = icmp ne i64 %4, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %5 = load ptr, ptr %buffer.addr, align 8
  %cmp4 = icmp ne ptr %5, null
  br i1 %cmp4, label %land.lhs.true, label %if.end14

land.lhs.true:                                    ; preds = %if.end
  %6 = load ptr, ptr %buffer.addr, align 8
  %offset5 = getelementptr inbounds %struct.parse_buffer, ptr %6, i32 0, i32 2
  %7 = load i64, ptr %offset5, align 8
  %add = add i64 %7, 4
  %8 = load ptr, ptr %buffer.addr, align 8
  %length = getelementptr inbounds %struct.parse_buffer, ptr %8, i32 0, i32 1
  %9 = load i64, ptr %length, align 8
  %cmp6 = icmp ult i64 %add, %9
  br i1 %cmp6, label %land.lhs.true7, label %if.end14

land.lhs.true7:                                   ; preds = %land.lhs.true
  %10 = load ptr, ptr %buffer.addr, align 8
  %content8 = getelementptr inbounds %struct.parse_buffer, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %content8, align 8
  %12 = load ptr, ptr %buffer.addr, align 8
  %offset9 = getelementptr inbounds %struct.parse_buffer, ptr %12, i32 0, i32 2
  %13 = load i64, ptr %offset9, align 8
  %add.ptr = getelementptr inbounds i8, ptr %11, i64 %13
  %call = call i32 @strncmp(ptr noundef %add.ptr, ptr noundef @.str.4, i64 noundef 3)
  %cmp10 = icmp eq i32 %call, 0
  br i1 %cmp10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %land.lhs.true7
  %14 = load ptr, ptr %buffer.addr, align 8
  %offset12 = getelementptr inbounds %struct.parse_buffer, ptr %14, i32 0, i32 2
  %15 = load i64, ptr %offset12, align 8
  %add13 = add i64 %15, 3
  store i64 %add13, ptr %offset12, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %land.lhs.true7, %land.lhs.true, %if.end
  %16 = load ptr, ptr %buffer.addr, align 8
  store ptr %16, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end14, %if.then
  %17 = load ptr, ptr %retval, align 8
  ret ptr %17
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_Parse(ptr noundef %value) #0 {
entry:
  %value.addr = alloca ptr, align 8
  store ptr %value, ptr %value.addr, align 8
  %0 = load ptr, ptr %value.addr, align 8
  %call = call ptr @pc_inline_source_snapshot_public_repos_cJSON_tests_misc_utils_tests_2(ptr noundef %0, ptr noundef null, i32 noundef 0)
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_ParseWithLength(ptr noundef %value, i64 noundef %buffer_length) #0 {
entry:
  %value.addr = alloca ptr, align 8
  %buffer_length.addr = alloca i64, align 8
  store ptr %value, ptr %value.addr, align 8
  store i64 %buffer_length, ptr %buffer_length.addr, align 8
  %0 = load ptr, ptr %value.addr, align 8
  %1 = load i64, ptr %buffer_length.addr, align 8
  %call = call ptr @cJSON_ParseWithLengthOpts(ptr noundef %0, i64 noundef %1, ptr noundef null, i32 noundef 0)
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_Print(ptr noundef %item) #0 {
entry:
  %item.addr = alloca ptr, align 8
  store ptr %item, ptr %item.addr, align 8
  %0 = load ptr, ptr %item.addr, align 8
  %call = call ptr @print(ptr noundef %0, i32 noundef 1, ptr noundef @global_hooks)
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @print(ptr noundef %item, i32 noundef %format, ptr noundef %hooks) #0 {
entry:
  %retval = alloca ptr, align 8
  %item.addr = alloca ptr, align 8
  %format.addr = alloca i32, align 4
  %hooks.addr = alloca ptr, align 8
  %buffer = alloca [1 x %struct.printbuffer], align 8
  %printed = alloca ptr, align 8
  store ptr %item, ptr %item.addr, align 8
  store i32 %format, ptr %format.addr, align 4
  store ptr %hooks, ptr %hooks.addr, align 8
  store ptr null, ptr %printed, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.printbuffer], ptr %buffer, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 8 %arraydecay, i8 0, i64 64, i1 false)
  %0 = load ptr, ptr %hooks.addr, align 8
  %allocate = getelementptr inbounds %struct.internal_hooks, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %allocate, align 8
  %call = call ptr %1(i64 noundef 256)
  %arraydecay1 = getelementptr inbounds [1 x %struct.printbuffer], ptr %buffer, i64 0, i64 0
  %buffer2 = getelementptr inbounds %struct.printbuffer, ptr %arraydecay1, i32 0, i32 0
  store ptr %call, ptr %buffer2, align 8
  %arraydecay3 = getelementptr inbounds [1 x %struct.printbuffer], ptr %buffer, i64 0, i64 0
  %length = getelementptr inbounds %struct.printbuffer, ptr %arraydecay3, i32 0, i32 1
  store i64 256, ptr %length, align 8
  %2 = load i32, ptr %format.addr, align 4
  %arraydecay4 = getelementptr inbounds [1 x %struct.printbuffer], ptr %buffer, i64 0, i64 0
  %format5 = getelementptr inbounds %struct.printbuffer, ptr %arraydecay4, i32 0, i32 5
  store i32 %2, ptr %format5, align 4
  %arraydecay6 = getelementptr inbounds [1 x %struct.printbuffer], ptr %buffer, i64 0, i64 0
  %hooks7 = getelementptr inbounds %struct.printbuffer, ptr %arraydecay6, i32 0, i32 6
  %3 = load ptr, ptr %hooks.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %hooks7, ptr align 8 %3, i64 24, i1 false)
  %arraydecay8 = getelementptr inbounds [1 x %struct.printbuffer], ptr %buffer, i64 0, i64 0
  %buffer9 = getelementptr inbounds %struct.printbuffer, ptr %arraydecay8, i32 0, i32 0
  %4 = load ptr, ptr %buffer9, align 8
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %fail

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %item.addr, align 8
  %arraydecay10 = getelementptr inbounds [1 x %struct.printbuffer], ptr %buffer, i64 0, i64 0
  %call11 = call i32 @print_value(ptr noundef %5, ptr noundef %arraydecay10)
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end
  br label %fail

if.end13:                                         ; preds = %if.end
  %arraydecay14 = getelementptr inbounds [1 x %struct.printbuffer], ptr %buffer, i64 0, i64 0
  call void @update_offset(ptr noundef %arraydecay14)
  %6 = load ptr, ptr %hooks.addr, align 8
  %reallocate = getelementptr inbounds %struct.internal_hooks, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %reallocate, align 8
  %cmp15 = icmp ne ptr %7, null
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end13
  %8 = load ptr, ptr %hooks.addr, align 8
  %reallocate17 = getelementptr inbounds %struct.internal_hooks, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %reallocate17, align 8
  %arraydecay18 = getelementptr inbounds [1 x %struct.printbuffer], ptr %buffer, i64 0, i64 0
  %buffer19 = getelementptr inbounds %struct.printbuffer, ptr %arraydecay18, i32 0, i32 0
  %10 = load ptr, ptr %buffer19, align 8
  %arraydecay20 = getelementptr inbounds [1 x %struct.printbuffer], ptr %buffer, i64 0, i64 0
  %offset = getelementptr inbounds %struct.printbuffer, ptr %arraydecay20, i32 0, i32 2
  %11 = load i64, ptr %offset, align 8
  %add = add i64 %11, 1
  %call21 = call ptr %9(ptr noundef %10, i64 noundef %add)
  store ptr %call21, ptr %printed, align 8
  %12 = load ptr, ptr %printed, align 8
  %cmp22 = icmp eq ptr %12, null
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.then16
  br label %fail

if.end24:                                         ; preds = %if.then16
  %arraydecay25 = getelementptr inbounds [1 x %struct.printbuffer], ptr %buffer, i64 0, i64 0
  %buffer26 = getelementptr inbounds %struct.printbuffer, ptr %arraydecay25, i32 0, i32 0
  store ptr null, ptr %buffer26, align 8
  br label %if.end55

if.else:                                          ; preds = %if.end13
  %13 = load ptr, ptr %hooks.addr, align 8
  %allocate27 = getelementptr inbounds %struct.internal_hooks, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %allocate27, align 8
  %arraydecay28 = getelementptr inbounds [1 x %struct.printbuffer], ptr %buffer, i64 0, i64 0
  %offset29 = getelementptr inbounds %struct.printbuffer, ptr %arraydecay28, i32 0, i32 2
  %15 = load i64, ptr %offset29, align 8
  %add30 = add i64 %15, 1
  %call31 = call ptr %14(i64 noundef %add30)
  store ptr %call31, ptr %printed, align 8
  %16 = load ptr, ptr %printed, align 8
  %cmp32 = icmp eq ptr %16, null
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.else
  br label %fail

if.end34:                                         ; preds = %if.else
  %17 = load ptr, ptr %printed, align 8
  %arraydecay35 = getelementptr inbounds [1 x %struct.printbuffer], ptr %buffer, i64 0, i64 0
  %buffer36 = getelementptr inbounds %struct.printbuffer, ptr %arraydecay35, i32 0, i32 0
  %18 = load ptr, ptr %buffer36, align 8
  %arraydecay37 = getelementptr inbounds [1 x %struct.printbuffer], ptr %buffer, i64 0, i64 0
  %length38 = getelementptr inbounds %struct.printbuffer, ptr %arraydecay37, i32 0, i32 1
  %19 = load i64, ptr %length38, align 8
  %arraydecay39 = getelementptr inbounds [1 x %struct.printbuffer], ptr %buffer, i64 0, i64 0
  %offset40 = getelementptr inbounds %struct.printbuffer, ptr %arraydecay39, i32 0, i32 2
  %20 = load i64, ptr %offset40, align 8
  %add41 = add i64 %20, 1
  %cmp42 = icmp ult i64 %19, %add41
  br i1 %cmp42, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end34
  %arraydecay43 = getelementptr inbounds [1 x %struct.printbuffer], ptr %buffer, i64 0, i64 0
  %length44 = getelementptr inbounds %struct.printbuffer, ptr %arraydecay43, i32 0, i32 1
  %21 = load i64, ptr %length44, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end34
  %arraydecay45 = getelementptr inbounds [1 x %struct.printbuffer], ptr %buffer, i64 0, i64 0
  %offset46 = getelementptr inbounds %struct.printbuffer, ptr %arraydecay45, i32 0, i32 2
  %22 = load i64, ptr %offset46, align 8
  %add47 = add i64 %22, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %21, %cond.true ], [ %add47, %cond.false ]
  %23 = load ptr, ptr %printed, align 8
  %24 = call i64 @llvm.objectsize.i64.p0(ptr %23, i1 false, i1 true, i1 false)
  %call48 = call ptr @__memcpy_chk(ptr noundef %17, ptr noundef %18, i64 noundef %cond, i64 noundef %24) #9
  %25 = load ptr, ptr %printed, align 8
  %arraydecay49 = getelementptr inbounds [1 x %struct.printbuffer], ptr %buffer, i64 0, i64 0
  %offset50 = getelementptr inbounds %struct.printbuffer, ptr %arraydecay49, i32 0, i32 2
  %26 = load i64, ptr %offset50, align 8
  %arrayidx = getelementptr inbounds i8, ptr %25, i64 %26
  store i8 0, ptr %arrayidx, align 1
  %27 = load ptr, ptr %hooks.addr, align 8
  %deallocate = getelementptr inbounds %struct.internal_hooks, ptr %27, i32 0, i32 1
  %28 = load ptr, ptr %deallocate, align 8
  %arraydecay51 = getelementptr inbounds [1 x %struct.printbuffer], ptr %buffer, i64 0, i64 0
  %buffer52 = getelementptr inbounds %struct.printbuffer, ptr %arraydecay51, i32 0, i32 0
  %29 = load ptr, ptr %buffer52, align 8
  call void %28(ptr noundef %29)
  %arraydecay53 = getelementptr inbounds [1 x %struct.printbuffer], ptr %buffer, i64 0, i64 0
  %buffer54 = getelementptr inbounds %struct.printbuffer, ptr %arraydecay53, i32 0, i32 0
  store ptr null, ptr %buffer54, align 8
  br label %if.end55

if.end55:                                         ; preds = %cond.end, %if.end24
  %30 = load ptr, ptr %printed, align 8
  store ptr %30, ptr %retval, align 8
  br label %return

fail:                                             ; preds = %if.then33, %if.then23, %if.then12, %if.then
  %arraydecay56 = getelementptr inbounds [1 x %struct.printbuffer], ptr %buffer, i64 0, i64 0
  %buffer57 = getelementptr inbounds %struct.printbuffer, ptr %arraydecay56, i32 0, i32 0
  %31 = load ptr, ptr %buffer57, align 8
  %cmp58 = icmp ne ptr %31, null
  br i1 %cmp58, label %if.then59, label %if.end65

if.then59:                                        ; preds = %fail
  %32 = load ptr, ptr %hooks.addr, align 8
  %deallocate60 = getelementptr inbounds %struct.internal_hooks, ptr %32, i32 0, i32 1
  %33 = load ptr, ptr %deallocate60, align 8
  %arraydecay61 = getelementptr inbounds [1 x %struct.printbuffer], ptr %buffer, i64 0, i64 0
  %buffer62 = getelementptr inbounds %struct.printbuffer, ptr %arraydecay61, i32 0, i32 0
  %34 = load ptr, ptr %buffer62, align 8
  call void %33(ptr noundef %34)
  %arraydecay63 = getelementptr inbounds [1 x %struct.printbuffer], ptr %buffer, i64 0, i64 0
  %buffer64 = getelementptr inbounds %struct.printbuffer, ptr %arraydecay63, i32 0, i32 0
  store ptr null, ptr %buffer64, align 8
  br label %if.end65

if.end65:                                         ; preds = %if.then59, %fail
  %35 = load ptr, ptr %printed, align 8
  %cmp66 = icmp ne ptr %35, null
  br i1 %cmp66, label %if.then67, label %if.end69

if.then67:                                        ; preds = %if.end65
  %36 = load ptr, ptr %hooks.addr, align 8
  %deallocate68 = getelementptr inbounds %struct.internal_hooks, ptr %36, i32 0, i32 1
  %37 = load ptr, ptr %deallocate68, align 8
  %38 = load ptr, ptr %printed, align 8
  call void %37(ptr noundef %38)
  store ptr null, ptr %printed, align 8
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %if.end65
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end69, %if.end55
  %39 = load ptr, ptr %retval, align 8
  ret ptr %39
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_PrintUnformatted(ptr noundef %item) #0 {
entry:
  %item.addr = alloca ptr, align 8
  store ptr %item, ptr %item.addr, align 8
  %0 = load ptr, ptr %item.addr, align 8
  %call = call ptr @print(ptr noundef %0, i32 noundef 0, ptr noundef @global_hooks)
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_PrintBuffered(ptr noundef %item, i32 noundef %prebuffer, i32 noundef %fmt) #0 {
entry:
  %retval = alloca ptr, align 8
  %item.addr = alloca ptr, align 8
  %prebuffer.addr = alloca i32, align 4
  %fmt.addr = alloca i32, align 4
  %p = alloca %struct.printbuffer, align 8
  store ptr %item, ptr %item.addr, align 8
  store i32 %prebuffer, ptr %prebuffer.addr, align 4
  store i32 %fmt, ptr %fmt.addr, align 4
  call void @llvm.memset.p0.i64(ptr align 8 %p, i8 0, i64 64, i1 false)
  %0 = load i32, ptr %prebuffer.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @global_hooks, align 8
  %2 = load i32, ptr %prebuffer.addr, align 4
  %conv = sext i32 %2 to i64
  %call = call ptr %1(i64 noundef %conv)
  %buffer = getelementptr inbounds %struct.printbuffer, ptr %p, i32 0, i32 0
  store ptr %call, ptr %buffer, align 8
  %buffer1 = getelementptr inbounds %struct.printbuffer, ptr %p, i32 0, i32 0
  %3 = load ptr, ptr %buffer1, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %4 = load i32, ptr %prebuffer.addr, align 4
  %conv4 = sext i32 %4 to i64
  %length = getelementptr inbounds %struct.printbuffer, ptr %p, i32 0, i32 1
  store i64 %conv4, ptr %length, align 8
  %offset = getelementptr inbounds %struct.printbuffer, ptr %p, i32 0, i32 2
  store i64 0, ptr %offset, align 8
  %noalloc = getelementptr inbounds %struct.printbuffer, ptr %p, i32 0, i32 4
  store i32 0, ptr %noalloc, align 8
  %5 = load i32, ptr %fmt.addr, align 4
  %format = getelementptr inbounds %struct.printbuffer, ptr %p, i32 0, i32 5
  store i32 %5, ptr %format, align 4
  %hooks = getelementptr inbounds %struct.printbuffer, ptr %p, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %hooks, ptr align 8 @global_hooks, i64 24, i1 false)
  %6 = load ptr, ptr %item.addr, align 8
  %call5 = call i32 @print_value(ptr noundef %6, ptr noundef %p)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end10, label %if.then7

if.then7:                                         ; preds = %if.end3
  %7 = load ptr, ptr getelementptr inbounds (%struct.internal_hooks, ptr @global_hooks, i32 0, i32 1), align 8
  %buffer8 = getelementptr inbounds %struct.printbuffer, ptr %p, i32 0, i32 0
  %8 = load ptr, ptr %buffer8, align 8
  call void %7(ptr noundef %8)
  %buffer9 = getelementptr inbounds %struct.printbuffer, ptr %p, i32 0, i32 0
  store ptr null, ptr %buffer9, align 8
  store ptr null, ptr %retval, align 8
  br label %return

if.end10:                                         ; preds = %if.end3
  %buffer11 = getelementptr inbounds %struct.printbuffer, ptr %p, i32 0, i32 0
  %9 = load ptr, ptr %buffer11, align 8
  store ptr %9, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end10, %if.then7, %if.then2, %if.then
  %10 = load ptr, ptr %retval, align 8
  ret ptr %10
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @print_value(ptr noundef %item, ptr noundef %output_buffer) #0 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca ptr, align 8
  %output_buffer.addr = alloca ptr, align 8
  %output = alloca ptr, align 8
  %raw_length = alloca i64, align 8
  store ptr %item, ptr %item.addr, align 8
  store ptr %output_buffer, ptr %output_buffer.addr, align 8
  store ptr null, ptr %output, align 8
  %0 = load ptr, ptr %item.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %output_buffer.addr, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %item.addr, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %2, i32 0, i32 3
  %3 = load i32, ptr %type, align 8
  %and = and i32 %3, 255
  switch i32 %and, label %sw.default [
    i32 4, label %sw.bb
    i32 1, label %sw.bb6
    i32 2, label %sw.bb12
    i32 8, label %sw.bb18
    i32 128, label %sw.bb20
    i32 16, label %sw.bb32
    i32 32, label %sw.bb34
    i32 64, label %sw.bb36
  ]

sw.bb:                                            ; preds = %if.end
  %4 = load ptr, ptr %output_buffer.addr, align 8
  %call = call ptr @ensure(ptr noundef %4, i64 noundef 5)
  store ptr %call, ptr %output, align 8
  %5 = load ptr, ptr %output, align 8
  %cmp2 = icmp eq ptr %5, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %sw.bb
  store i32 0, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %sw.bb
  %6 = load ptr, ptr %output, align 8
  %7 = load ptr, ptr %output, align 8
  %8 = call i64 @llvm.objectsize.i64.p0(ptr %7, i1 false, i1 true, i1 false)
  %call5 = call ptr @__strcpy_chk(ptr noundef %6, ptr noundef @.str.5, i64 noundef %8) #9
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb6:                                           ; preds = %if.end
  %9 = load ptr, ptr %output_buffer.addr, align 8
  %call7 = call ptr @ensure(ptr noundef %9, i64 noundef 6)
  store ptr %call7, ptr %output, align 8
  %10 = load ptr, ptr %output, align 8
  %cmp8 = icmp eq ptr %10, null
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %sw.bb6
  store i32 0, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %sw.bb6
  %11 = load ptr, ptr %output, align 8
  %12 = load ptr, ptr %output, align 8
  %13 = call i64 @llvm.objectsize.i64.p0(ptr %12, i1 false, i1 true, i1 false)
  %call11 = call ptr @__strcpy_chk(ptr noundef %11, ptr noundef @.str.6, i64 noundef %13) #9
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb12:                                          ; preds = %if.end
  %14 = load ptr, ptr %output_buffer.addr, align 8
  %call13 = call ptr @ensure(ptr noundef %14, i64 noundef 5)
  store ptr %call13, ptr %output, align 8
  %15 = load ptr, ptr %output, align 8
  %cmp14 = icmp eq ptr %15, null
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %sw.bb12
  store i32 0, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %sw.bb12
  %16 = load ptr, ptr %output, align 8
  %17 = load ptr, ptr %output, align 8
  %18 = call i64 @llvm.objectsize.i64.p0(ptr %17, i1 false, i1 true, i1 false)
  %call17 = call ptr @__strcpy_chk(ptr noundef %16, ptr noundef @.str.7, i64 noundef %18) #9
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb18:                                          ; preds = %if.end
  %19 = load ptr, ptr %item.addr, align 8
  %20 = load ptr, ptr %output_buffer.addr, align 8
  %call19 = call i32 @print_number(ptr noundef %19, ptr noundef %20)
  store i32 %call19, ptr %retval, align 4
  br label %return

sw.bb20:                                          ; preds = %if.end
  store i64 0, ptr %raw_length, align 8
  %21 = load ptr, ptr %item.addr, align 8
  %valuestring = getelementptr inbounds %struct.cJSON, ptr %21, i32 0, i32 4
  %22 = load ptr, ptr %valuestring, align 8
  %cmp21 = icmp eq ptr %22, null
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %sw.bb20
  store i32 0, ptr %retval, align 4
  br label %return

if.end23:                                         ; preds = %sw.bb20
  %23 = load ptr, ptr %item.addr, align 8
  %valuestring24 = getelementptr inbounds %struct.cJSON, ptr %23, i32 0, i32 4
  %24 = load ptr, ptr %valuestring24, align 8
  %call25 = call i64 @strlen(ptr noundef %24)
  %add = add i64 %call25, 1
  store i64 %add, ptr %raw_length, align 8
  %25 = load ptr, ptr %output_buffer.addr, align 8
  %26 = load i64, ptr %raw_length, align 8
  %call26 = call ptr @ensure(ptr noundef %25, i64 noundef %26)
  store ptr %call26, ptr %output, align 8
  %27 = load ptr, ptr %output, align 8
  %cmp27 = icmp eq ptr %27, null
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end23
  store i32 0, ptr %retval, align 4
  br label %return

if.end29:                                         ; preds = %if.end23
  %28 = load ptr, ptr %output, align 8
  %29 = load ptr, ptr %item.addr, align 8
  %valuestring30 = getelementptr inbounds %struct.cJSON, ptr %29, i32 0, i32 4
  %30 = load ptr, ptr %valuestring30, align 8
  %31 = load i64, ptr %raw_length, align 8
  %32 = load ptr, ptr %output, align 8
  %33 = call i64 @llvm.objectsize.i64.p0(ptr %32, i1 false, i1 true, i1 false)
  %call31 = call ptr @__memcpy_chk(ptr noundef %28, ptr noundef %30, i64 noundef %31, i64 noundef %33) #9
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb32:                                          ; preds = %if.end
  %34 = load ptr, ptr %item.addr, align 8
  %35 = load ptr, ptr %output_buffer.addr, align 8
  %call33 = call i32 @pc_inline_source_snapshot_public_repos_cJSON_tests_misc_utils_tests_3(ptr noundef %34, ptr noundef %35)
  store i32 %call33, ptr %retval, align 4
  br label %return

sw.bb34:                                          ; preds = %if.end
  %36 = load ptr, ptr %item.addr, align 8
  %37 = load ptr, ptr %output_buffer.addr, align 8
  %call35 = call i32 @print_array(ptr noundef %36, ptr noundef %37)
  store i32 %call35, ptr %retval, align 4
  br label %return

sw.bb36:                                          ; preds = %if.end
  %38 = load ptr, ptr %item.addr, align 8
  %39 = load ptr, ptr %output_buffer.addr, align 8
  %call37 = call i32 @print_object(ptr noundef %38, ptr noundef %39)
  store i32 %call37, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb36, %sw.bb34, %sw.bb32, %if.end29, %if.then28, %if.then22, %sw.bb18, %if.end16, %if.then15, %if.end10, %if.then9, %if.end4, %if.then3, %if.then
  %40 = load i32, ptr %retval, align 4
  ret i32 %40
}

; Function Attrs: nounwind ssp uwtable
define i32 @cJSON_PrintPreallocated(ptr noundef %item, ptr noundef %buffer, i32 noundef %length, i32 noundef %format) #0 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %format.addr = alloca i32, align 4
  %p = alloca %struct.printbuffer, align 8
  store ptr %item, ptr %item.addr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  store i32 %length, ptr %length.addr, align 4
  store i32 %format, ptr %format.addr, align 4
  call void @llvm.memset.p0.i64(ptr align 8 %p, i8 0, i64 64, i1 false)
  %0 = load i32, ptr %length.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %buffer.addr, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %buffer.addr, align 8
  %buffer2 = getelementptr inbounds %struct.printbuffer, ptr %p, i32 0, i32 0
  store ptr %2, ptr %buffer2, align 8
  %3 = load i32, ptr %length.addr, align 4
  %conv = sext i32 %3 to i64
  %length3 = getelementptr inbounds %struct.printbuffer, ptr %p, i32 0, i32 1
  store i64 %conv, ptr %length3, align 8
  %offset = getelementptr inbounds %struct.printbuffer, ptr %p, i32 0, i32 2
  store i64 0, ptr %offset, align 8
  %noalloc = getelementptr inbounds %struct.printbuffer, ptr %p, i32 0, i32 4
  store i32 1, ptr %noalloc, align 8
  %4 = load i32, ptr %format.addr, align 4
  %format4 = getelementptr inbounds %struct.printbuffer, ptr %p, i32 0, i32 5
  store i32 %4, ptr %format4, align 4
  %hooks = getelementptr inbounds %struct.printbuffer, ptr %p, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %hooks, ptr align 8 @global_hooks, i64 24, i1 false)
  %5 = load ptr, ptr %item.addr, align 8
  %call = call i32 @print_value(ptr noundef %5, ptr noundef %p)
  store i32 %call, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind ssp uwtable
define i32 @cJSON_GetArraySize(ptr noundef %array) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca ptr, align 8
  %child = alloca ptr, align 8
  %size = alloca i64, align 8
  store ptr %array, ptr %array.addr, align 8
  store ptr null, ptr %child, align 8
  store i64 0, ptr %size, align 8
  %0 = load ptr, ptr %array.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %array.addr, align 8
  %child1 = getelementptr inbounds %struct.cJSON, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %child1, align 8
  store ptr %2, ptr %child, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load ptr, ptr %child, align 8
  %cmp2 = icmp ne ptr %3, null
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i64, ptr %size, align 8
  %inc = add i64 %4, 1
  store i64 %inc, ptr %size, align 8
  %5 = load ptr, ptr %child, align 8
  %next = getelementptr inbounds %struct.cJSON, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %next, align 8
  store ptr %6, ptr %child, align 8
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %7 = load i64, ptr %size, align 8
  %conv = trunc i64 %7 to i32
  store i32 %conv, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_GetArrayItem(ptr noundef %array, i32 noundef %index) #0 {
entry:
  %retval = alloca ptr, align 8
  %array.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  store ptr %array, ptr %array.addr, align 8
  store i32 %index, ptr %index.addr, align 4
  %0 = load i32, ptr %index.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %array.addr, align 8
  %2 = load i32, ptr %index.addr, align 4
  %conv = sext i32 %2 to i64
  %call = call ptr @get_array_item(ptr noundef %1, i64 noundef %conv)
  store ptr %call, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load ptr, ptr %retval, align 8
  ret ptr %3
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @get_array_item(ptr noundef %array, i64 noundef %index) #0 {
entry:
  %retval = alloca ptr, align 8
  %array.addr = alloca ptr, align 8
  %index.addr = alloca i64, align 8
  %current_child = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8
  store i64 %index, ptr %index.addr, align 8
  store ptr null, ptr %current_child, align 8
  %0 = load ptr, ptr %array.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %array.addr, align 8
  %child = getelementptr inbounds %struct.cJSON, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %child, align 8
  store ptr %2, ptr %current_child, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load ptr, ptr %current_child, align 8
  %cmp1 = icmp ne ptr %3, null
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i64, ptr %index.addr, align 8
  %cmp2 = icmp ugt i64 %4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load i64, ptr %index.addr, align 8
  %dec = add i64 %6, -1
  store i64 %dec, ptr %index.addr, align 8
  %7 = load ptr, ptr %current_child, align 8
  %next = getelementptr inbounds %struct.cJSON, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %next, align 8
  store ptr %8, ptr %current_child, align 8
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %land.end
  %9 = load ptr, ptr %current_child, align 8
  store ptr %9, ptr %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then
  %10 = load ptr, ptr %retval, align 8
  ret ptr %10
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_GetObjectItem(ptr noundef %object, ptr noundef %string) #0 {
entry:
  %object.addr = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %string, ptr %string.addr, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %1 = load ptr, ptr %string.addr, align 8
  %call = call ptr @get_object_item(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @get_object_item(ptr noundef %object, ptr noundef %name, i32 noundef %case_sensitive) #0 {
entry:
  %retval = alloca ptr, align 8
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %case_sensitive.addr = alloca i32, align 4
  %current_element = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store i32 %case_sensitive, ptr %case_sensitive.addr, align 4
  store ptr null, ptr %current_element, align 8
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
  %child = getelementptr inbounds %struct.cJSON, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %child, align 8
  store ptr %3, ptr %current_element, align 8
  %4 = load i32, ptr %case_sensitive.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then2
  %5 = load ptr, ptr %current_element, align 8
  %cmp3 = icmp ne ptr %5, null
  br i1 %cmp3, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %6 = load ptr, ptr %current_element, align 8
  %string = getelementptr inbounds %struct.cJSON, ptr %6, i32 0, i32 7
  %7 = load ptr, ptr %string, align 8
  %cmp4 = icmp ne ptr %7, null
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %name.addr, align 8
  %9 = load ptr, ptr %current_element, align 8
  %string5 = getelementptr inbounds %struct.cJSON, ptr %9, i32 0, i32 7
  %10 = load ptr, ptr %string5, align 8
  %call = call i32 @strcmp(ptr noundef %8, ptr noundef %10)
  %cmp6 = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %11 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp6, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load ptr, ptr %current_element, align 8
  %next = getelementptr inbounds %struct.cJSON, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %next, align 8
  store ptr %13, ptr %current_element, align 8
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %land.end
  br label %if.end17

if.else:                                          ; preds = %if.end
  br label %while.cond7

while.cond7:                                      ; preds = %while.body14, %if.else
  %14 = load ptr, ptr %current_element, align 8
  %cmp8 = icmp ne ptr %14, null
  br i1 %cmp8, label %land.rhs9, label %land.end13

land.rhs9:                                        ; preds = %while.cond7
  %15 = load ptr, ptr %name.addr, align 8
  %16 = load ptr, ptr %current_element, align 8
  %string10 = getelementptr inbounds %struct.cJSON, ptr %16, i32 0, i32 7
  %17 = load ptr, ptr %string10, align 8
  %call11 = call i32 @case_insensitive_strcmp(ptr noundef %15, ptr noundef %17)
  %cmp12 = icmp ne i32 %call11, 0
  br label %land.end13

land.end13:                                       ; preds = %land.rhs9, %while.cond7
  %18 = phi i1 [ false, %while.cond7 ], [ %cmp12, %land.rhs9 ]
  br i1 %18, label %while.body14, label %while.end16

while.body14:                                     ; preds = %land.end13
  %19 = load ptr, ptr %current_element, align 8
  %next15 = getelementptr inbounds %struct.cJSON, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %next15, align 8
  store ptr %20, ptr %current_element, align 8
  br label %while.cond7, !llvm.loop !12

while.end16:                                      ; preds = %land.end13
  br label %if.end17

if.end17:                                         ; preds = %while.end16, %while.end
  %21 = load ptr, ptr %current_element, align 8
  %cmp18 = icmp eq ptr %21, null
  br i1 %cmp18, label %if.then22, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %if.end17
  %22 = load ptr, ptr %current_element, align 8
  %string20 = getelementptr inbounds %struct.cJSON, ptr %22, i32 0, i32 7
  %23 = load ptr, ptr %string20, align 8
  %cmp21 = icmp eq ptr %23, null
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %lor.lhs.false19, %if.end17
  store ptr null, ptr %retval, align 8
  br label %return

if.end23:                                         ; preds = %lor.lhs.false19
  %24 = load ptr, ptr %current_element, align 8
  store ptr %24, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end23, %if.then22, %if.then
  %25 = load ptr, ptr %retval, align 8
  ret ptr %25
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_GetObjectItemCaseSensitive(ptr noundef %object, ptr noundef %string) #0 {
entry:
  %object.addr = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %string, ptr %string.addr, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %1 = load ptr, ptr %string.addr, align 8
  %call = call ptr @get_object_item(ptr noundef %0, ptr noundef %1, i32 noundef 1)
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define i32 @cJSON_HasObjectItem(ptr noundef %object, ptr noundef %string) #0 {
entry:
  %object.addr = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %string, ptr %string.addr, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %1 = load ptr, ptr %string.addr, align 8
  %call = call ptr @cJSON_GetObjectItem(ptr noundef %0, ptr noundef %1)
  %tobool = icmp ne ptr %call, null
  %2 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 1, i32 0
  ret i32 %cond
}

; Function Attrs: nounwind ssp uwtable
define i32 @cJSON_AddItemToArray(ptr noundef %array, ptr noundef %item) #0 {
entry:
  %array.addr = alloca ptr, align 8
  %item.addr = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8
  store ptr %item, ptr %item.addr, align 8
  %0 = load ptr, ptr %array.addr, align 8
  %1 = load ptr, ptr %item.addr, align 8
  %call = call i32 @add_item_to_array(ptr noundef %0, ptr noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @add_item_to_array(ptr noundef %array, ptr noundef %item) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca ptr, align 8
  %item.addr = alloca ptr, align 8
  %child = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8
  store ptr %item, ptr %item.addr, align 8
  store ptr null, ptr %child, align 8
  %0 = load ptr, ptr %item.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %array.addr, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %array.addr, align 8
  %3 = load ptr, ptr %item.addr, align 8
  %cmp3 = icmp eq ptr %2, %3
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %4 = load ptr, ptr %array.addr, align 8
  %child4 = getelementptr inbounds %struct.cJSON, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %child4, align 8
  store ptr %5, ptr %child, align 8
  %6 = load ptr, ptr %child, align 8
  %cmp5 = icmp eq ptr %6, null
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %7 = load ptr, ptr %item.addr, align 8
  %8 = load ptr, ptr %array.addr, align 8
  %child7 = getelementptr inbounds %struct.cJSON, ptr %8, i32 0, i32 2
  store ptr %7, ptr %child7, align 8
  %9 = load ptr, ptr %item.addr, align 8
  %10 = load ptr, ptr %item.addr, align 8
  %prev = getelementptr inbounds %struct.cJSON, ptr %10, i32 0, i32 1
  store ptr %9, ptr %prev, align 8
  %11 = load ptr, ptr %item.addr, align 8
  %next = getelementptr inbounds %struct.cJSON, ptr %11, i32 0, i32 0
  store ptr null, ptr %next, align 8
  br label %if.end14

if.else:                                          ; preds = %if.end
  %12 = load ptr, ptr %child, align 8
  %prev8 = getelementptr inbounds %struct.cJSON, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %prev8, align 8
  %tobool = icmp ne ptr %13, null
  br i1 %tobool, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.else
  %14 = load ptr, ptr %child, align 8
  %prev10 = getelementptr inbounds %struct.cJSON, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %prev10, align 8
  %16 = load ptr, ptr %item.addr, align 8
  call void @suffix_object(ptr noundef %15, ptr noundef %16)
  %17 = load ptr, ptr %item.addr, align 8
  %18 = load ptr, ptr %array.addr, align 8
  %child11 = getelementptr inbounds %struct.cJSON, ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %child11, align 8
  %prev12 = getelementptr inbounds %struct.cJSON, ptr %19, i32 0, i32 1
  store ptr %17, ptr %prev12, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.else
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then6
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end14, %if.then
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
}

; Function Attrs: nounwind ssp uwtable
define i32 @cJSON_AddItemToObject(ptr noundef %object, ptr noundef %string, ptr noundef %item) #0 {
entry:
  %object.addr = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  %item.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %string, ptr %string.addr, align 8
  store ptr %item, ptr %item.addr, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %1 = load ptr, ptr %string.addr, align 8
  %2 = load ptr, ptr %item.addr, align 8
  %call = call i32 @add_item_to_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef @global_hooks, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @add_item_to_object(ptr noundef %object, ptr noundef %string, ptr noundef %item, ptr noundef %hooks, i32 noundef %constant_key) #0 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  %item.addr = alloca ptr, align 8
  %hooks.addr = alloca ptr, align 8
  %constant_key.addr = alloca i32, align 4
  %new_key = alloca ptr, align 8
  %new_type = alloca i32, align 4
  store ptr %object, ptr %object.addr, align 8
  store ptr %string, ptr %string.addr, align 8
  store ptr %item, ptr %item.addr, align 8
  store ptr %hooks, ptr %hooks.addr, align 8
  store i32 %constant_key, ptr %constant_key.addr, align 4
  store ptr null, ptr %new_key, align 8
  store i32 0, ptr %new_type, align 4
  %0 = load ptr, ptr %object.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %string.addr, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %item.addr, align 8
  %cmp3 = icmp eq ptr %2, null
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %3 = load ptr, ptr %object.addr, align 8
  %4 = load ptr, ptr %item.addr, align 8
  %cmp5 = icmp eq ptr %3, %4
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false4
  %5 = load i32, ptr %constant_key.addr, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %6 = load ptr, ptr %string.addr, align 8
  %call = call ptr @cast_away_const(ptr noundef %6)
  store ptr %call, ptr %new_key, align 8
  %7 = load ptr, ptr %item.addr, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %7, i32 0, i32 3
  %8 = load i32, ptr %type, align 8
  %or = or i32 %8, 512
  store i32 %or, ptr %new_type, align 4
  br label %if.end12

if.else:                                          ; preds = %if.end
  %9 = load ptr, ptr %string.addr, align 8
  %10 = load ptr, ptr %hooks.addr, align 8
  %call7 = call ptr @cJSON_strdup(ptr noundef %9, ptr noundef %10)
  store ptr %call7, ptr %new_key, align 8
  %11 = load ptr, ptr %new_key, align 8
  %cmp8 = icmp eq ptr %11, null
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.else
  store i32 0, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.else
  %12 = load ptr, ptr %item.addr, align 8
  %type11 = getelementptr inbounds %struct.cJSON, ptr %12, i32 0, i32 3
  %13 = load i32, ptr %type11, align 8
  %and = and i32 %13, -513
  store i32 %and, ptr %new_type, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end10, %if.then6
  %14 = load ptr, ptr %item.addr, align 8
  %type13 = getelementptr inbounds %struct.cJSON, ptr %14, i32 0, i32 3
  %15 = load i32, ptr %type13, align 8
  %and14 = and i32 %15, 512
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %if.end20, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end12
  %16 = load ptr, ptr %item.addr, align 8
  %string16 = getelementptr inbounds %struct.cJSON, ptr %16, i32 0, i32 7
  %17 = load ptr, ptr %string16, align 8
  %cmp17 = icmp ne ptr %17, null
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %land.lhs.true
  %18 = load ptr, ptr %hooks.addr, align 8
  %deallocate = getelementptr inbounds %struct.internal_hooks, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %deallocate, align 8
  %20 = load ptr, ptr %item.addr, align 8
  %string19 = getelementptr inbounds %struct.cJSON, ptr %20, i32 0, i32 7
  %21 = load ptr, ptr %string19, align 8
  call void %19(ptr noundef %21)
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %land.lhs.true, %if.end12
  %22 = load ptr, ptr %new_key, align 8
  %23 = load ptr, ptr %item.addr, align 8
  %string21 = getelementptr inbounds %struct.cJSON, ptr %23, i32 0, i32 7
  store ptr %22, ptr %string21, align 8
  %24 = load i32, ptr %new_type, align 4
  %25 = load ptr, ptr %item.addr, align 8
  %type22 = getelementptr inbounds %struct.cJSON, ptr %25, i32 0, i32 3
  store i32 %24, ptr %type22, align 8
  %26 = load ptr, ptr %object.addr, align 8
  %27 = load ptr, ptr %item.addr, align 8
  %call23 = call i32 @add_item_to_array(ptr noundef %26, ptr noundef %27)
  store i32 %call23, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end20, %if.then9, %if.then
  %28 = load i32, ptr %retval, align 4
  ret i32 %28
}

; Function Attrs: nounwind ssp uwtable
define i32 @cJSON_AddItemToObjectCS(ptr noundef %object, ptr noundef %string, ptr noundef %item) #0 {
entry:
  %object.addr = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  %item.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %string, ptr %string.addr, align 8
  store ptr %item, ptr %item.addr, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %1 = load ptr, ptr %string.addr, align 8
  %2 = load ptr, ptr %item.addr, align 8
  %call = call i32 @add_item_to_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef @global_hooks, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind ssp uwtable
define i32 @cJSON_AddItemReferenceToArray(ptr noundef %array, ptr noundef %item) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca ptr, align 8
  %item.addr = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8
  store ptr %item, ptr %item.addr, align 8
  %0 = load ptr, ptr %array.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %array.addr, align 8
  %2 = load ptr, ptr %item.addr, align 8
  %call = call ptr @create_reference(ptr noundef %2, ptr noundef @global_hooks)
  %call1 = call i32 @add_item_to_array(ptr noundef %1, ptr noundef %call)
  store i32 %call1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @create_reference(ptr noundef %item, ptr noundef %hooks) #0 {
entry:
  %retval = alloca ptr, align 8
  %item.addr = alloca ptr, align 8
  %hooks.addr = alloca ptr, align 8
  %reference = alloca ptr, align 8
  store ptr %item, ptr %item.addr, align 8
  store ptr %hooks, ptr %hooks.addr, align 8
  store ptr null, ptr %reference, align 8
  %0 = load ptr, ptr %item.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %hooks.addr, align 8
  %call = call ptr @cJSON_New_Item(ptr noundef %1)
  store ptr %call, ptr %reference, align 8
  %2 = load ptr, ptr %reference, align 8
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %reference, align 8
  %4 = load ptr, ptr %item.addr, align 8
  %5 = load ptr, ptr %reference, align 8
  %6 = call i64 @llvm.objectsize.i64.p0(ptr %5, i1 false, i1 true, i1 false)
  %call4 = call ptr @__memcpy_chk(ptr noundef %3, ptr noundef %4, i64 noundef 64, i64 noundef %6) #9
  %7 = load ptr, ptr %reference, align 8
  %string = getelementptr inbounds %struct.cJSON, ptr %7, i32 0, i32 7
  store ptr null, ptr %string, align 8
  %8 = load ptr, ptr %reference, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %8, i32 0, i32 3
  %9 = load i32, ptr %type, align 8
  %or = or i32 %9, 256
  store i32 %or, ptr %type, align 8
  %10 = load ptr, ptr %reference, align 8
  %prev = getelementptr inbounds %struct.cJSON, ptr %10, i32 0, i32 1
  store ptr null, ptr %prev, align 8
  %11 = load ptr, ptr %reference, align 8
  %next = getelementptr inbounds %struct.cJSON, ptr %11, i32 0, i32 0
  store ptr null, ptr %next, align 8
  %12 = load ptr, ptr %reference, align 8
  store ptr %12, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %13 = load ptr, ptr %retval, align 8
  ret ptr %13
}

; Function Attrs: nounwind ssp uwtable
define i32 @cJSON_AddItemReferenceToObject(ptr noundef %object, ptr noundef %string, ptr noundef %item) #0 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  %item.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %string, ptr %string.addr, align 8
  store ptr %item, ptr %item.addr, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %string.addr, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %object.addr, align 8
  %3 = load ptr, ptr %string.addr, align 8
  %4 = load ptr, ptr %item.addr, align 8
  %call = call ptr @create_reference(ptr noundef %4, ptr noundef @global_hooks)
  %call2 = call i32 @add_item_to_object(ptr noundef %2, ptr noundef %3, ptr noundef %call, ptr noundef @global_hooks, i32 noundef 0)
  store i32 %call2, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_AddNullToObject(ptr noundef %object, ptr noundef %name) #0 {
entry:
  %retval = alloca ptr, align 8
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %null = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  %call = call ptr @pc_inline_source_snapshot_public_repos_cJSON_tests_misc_utils_tests_4()
  store ptr %call, ptr %null, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %2 = load ptr, ptr %null, align 8
  %call1 = call i32 @add_item_to_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef @global_hooks, i32 noundef 0)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %null, align 8
  store ptr %3, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %null, align 8
  call void @cJSON_Delete(ptr noundef %4)
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8
  ret ptr %5
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_CreateNull() #0 {
entry:
  %item = alloca ptr, align 8
  %call = call ptr @cJSON_New_Item(ptr noundef @global_hooks)
  store ptr %call, ptr %item, align 8
  %0 = load ptr, ptr %item, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %item, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %1, i32 0, i32 3
  store i32 4, ptr %type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %item, align 8
  ret ptr %2
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_AddTrueToObject(ptr noundef %object, ptr noundef %name) #0 {
entry:
  %retval = alloca ptr, align 8
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %true_item = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  %call = call ptr @pc_inline_source_snapshot_public_repos_cJSON_tests_misc_utils_tests_5()
  store ptr %call, ptr %true_item, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %2 = load ptr, ptr %true_item, align 8
  %call1 = call i32 @add_item_to_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef @global_hooks, i32 noundef 0)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %true_item, align 8
  store ptr %3, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %true_item, align 8
  call void @cJSON_Delete(ptr noundef %4)
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8
  ret ptr %5
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_CreateTrue() #0 {
entry:
  %item = alloca ptr, align 8
  %call = call ptr @cJSON_New_Item(ptr noundef @global_hooks)
  store ptr %call, ptr %item, align 8
  %0 = load ptr, ptr %item, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %item, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %1, i32 0, i32 3
  store i32 2, ptr %type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %item, align 8
  ret ptr %2
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_AddFalseToObject(ptr noundef %object, ptr noundef %name) #0 {
entry:
  %retval = alloca ptr, align 8
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %false_item = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  %call = call ptr @pc_inline_source_snapshot_public_repos_cJSON_tests_misc_utils_tests_6()
  store ptr %call, ptr %false_item, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %2 = load ptr, ptr %false_item, align 8
  %call1 = call i32 @add_item_to_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef @global_hooks, i32 noundef 0)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %false_item, align 8
  store ptr %3, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %false_item, align 8
  call void @cJSON_Delete(ptr noundef %4)
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8
  ret ptr %5
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_CreateFalse() #0 {
entry:
  %item = alloca ptr, align 8
  %call = call ptr @cJSON_New_Item(ptr noundef @global_hooks)
  store ptr %call, ptr %item, align 8
  %0 = load ptr, ptr %item, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %item, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %1, i32 0, i32 3
  store i32 1, ptr %type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %item, align 8
  ret ptr %2
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_AddBoolToObject(ptr noundef %object, ptr noundef %name, i32 noundef %boolean) #0 {
entry:
  %retval = alloca ptr, align 8
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %boolean.addr = alloca i32, align 4
  %bool_item = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store i32 %boolean, ptr %boolean.addr, align 4
  %0 = load i32, ptr %boolean.addr, align 4
  %call = call ptr @pc_inline_source_snapshot_public_repos_cJSON_tests_misc_utils_tests_7(i32 noundef %0)
  store ptr %call, ptr %bool_item, align 8
  %1 = load ptr, ptr %object.addr, align 8
  %2 = load ptr, ptr %name.addr, align 8
  %3 = load ptr, ptr %bool_item, align 8
  %call1 = call i32 @add_item_to_object(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef @global_hooks, i32 noundef 0)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %bool_item, align 8
  store ptr %4, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %bool_item, align 8
  call void @cJSON_Delete(ptr noundef %5)
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load ptr, ptr %retval, align 8
  ret ptr %6
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_CreateBool(i32 noundef %boolean) #0 {
entry:
  %boolean.addr = alloca i32, align 4
  %item = alloca ptr, align 8
  store i32 %boolean, ptr %boolean.addr, align 4
  %call = call ptr @cJSON_New_Item(ptr noundef @global_hooks)
  store ptr %call, ptr %item, align 8
  %0 = load ptr, ptr %item, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %boolean.addr, align 4
  %tobool1 = icmp ne i32 %1, 0
  %2 = zext i1 %tobool1 to i64
  %cond = select i1 %tobool1, i32 2, i32 1
  %3 = load ptr, ptr %item, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %3, i32 0, i32 3
  store i32 %cond, ptr %type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %item, align 8
  ret ptr %4
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_AddNumberToObject(ptr noundef %object, ptr noundef %name, double noundef %number) #0 {
entry:
  %retval = alloca ptr, align 8
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %number.addr = alloca double, align 8
  %number_item = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store double %number, ptr %number.addr, align 8
  %0 = load double, ptr %number.addr, align 8
  %call = call ptr @cJSON_CreateNumber(double noundef %0)
  store ptr %call, ptr %number_item, align 8
  %1 = load ptr, ptr %object.addr, align 8
  %2 = load ptr, ptr %name.addr, align 8
  %3 = load ptr, ptr %number_item, align 8
  %call1 = call i32 @add_item_to_object(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef @global_hooks, i32 noundef 0)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %number_item, align 8
  store ptr %4, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %number_item, align 8
  call void @cJSON_Delete(ptr noundef %5)
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load ptr, ptr %retval, align 8
  ret ptr %6
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_CreateNumber(double noundef %num) #0 {
entry:
  %num.addr = alloca double, align 8
  %item = alloca ptr, align 8
  store double %num, ptr %num.addr, align 8
  %call = call ptr @cJSON_New_Item(ptr noundef @global_hooks)
  store ptr %call, ptr %item, align 8
  %0 = load ptr, ptr %item, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %item, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %1, i32 0, i32 3
  store i32 8, ptr %type, align 8
  %2 = load double, ptr %num.addr, align 8
  %3 = load ptr, ptr %item, align 8
  %valuedouble = getelementptr inbounds %struct.cJSON, ptr %3, i32 0, i32 6
  store double %2, ptr %valuedouble, align 8
  %4 = load double, ptr %num.addr, align 8
  %cmp = fcmp oge double %4, 0x41DFFFFFFFC00000
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  %5 = load ptr, ptr %item, align 8
  %valueint = getelementptr inbounds %struct.cJSON, ptr %5, i32 0, i32 5
  store i32 2147483647, ptr %valueint, align 8
  br label %if.end7

if.else:                                          ; preds = %if.then
  %6 = load double, ptr %num.addr, align 8
  %cmp2 = fcmp ole double %6, 0xC1E0000000000000
  br i1 %cmp2, label %if.then3, label %if.else5

if.then3:                                         ; preds = %if.else
  %7 = load ptr, ptr %item, align 8
  %valueint4 = getelementptr inbounds %struct.cJSON, ptr %7, i32 0, i32 5
  store i32 -2147483648, ptr %valueint4, align 8
  br label %if.end

if.else5:                                         ; preds = %if.else
  %8 = load double, ptr %num.addr, align 8
  %conv = fptosi double %8 to i32
  %9 = load ptr, ptr %item, align 8
  %valueint6 = getelementptr inbounds %struct.cJSON, ptr %9, i32 0, i32 5
  store i32 %conv, ptr %valueint6, align 8
  br label %if.end

if.end:                                           ; preds = %if.else5, %if.then3
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then1
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %entry
  %10 = load ptr, ptr %item, align 8
  ret ptr %10
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_AddStringToObject(ptr noundef %object, ptr noundef %name, ptr noundef %string) #0 {
entry:
  %retval = alloca ptr, align 8
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  %string_item = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store ptr %string, ptr %string.addr, align 8
  %0 = load ptr, ptr %string.addr, align 8
  %call = call ptr @cJSON_CreateString(ptr noundef %0)
  store ptr %call, ptr %string_item, align 8
  %1 = load ptr, ptr %object.addr, align 8
  %2 = load ptr, ptr %name.addr, align 8
  %3 = load ptr, ptr %string_item, align 8
  %call1 = call i32 @add_item_to_object(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef @global_hooks, i32 noundef 0)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %string_item, align 8
  store ptr %4, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %string_item, align 8
  call void @cJSON_Delete(ptr noundef %5)
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load ptr, ptr %retval, align 8
  ret ptr %6
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_CreateString(ptr noundef %string) #0 {
entry:
  %retval = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  %item = alloca ptr, align 8
  store ptr %string, ptr %string.addr, align 8
  %call = call ptr @cJSON_New_Item(ptr noundef @global_hooks)
  store ptr %call, ptr %item, align 8
  %0 = load ptr, ptr %item, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %item, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %1, i32 0, i32 3
  store i32 16, ptr %type, align 8
  %2 = load ptr, ptr %string.addr, align 8
  %call1 = call ptr @cJSON_strdup(ptr noundef %2, ptr noundef @global_hooks)
  %3 = load ptr, ptr %item, align 8
  %valuestring = getelementptr inbounds %struct.cJSON, ptr %3, i32 0, i32 4
  store ptr %call1, ptr %valuestring, align 8
  %4 = load ptr, ptr %item, align 8
  %valuestring2 = getelementptr inbounds %struct.cJSON, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %valuestring2, align 8
  %tobool3 = icmp ne ptr %5, null
  br i1 %tobool3, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  %6 = load ptr, ptr %item, align 8
  call void @cJSON_Delete(ptr noundef %6)
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %7 = load ptr, ptr %item, align 8
  store ptr %7, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end5, %if.then4
  %8 = load ptr, ptr %retval, align 8
  ret ptr %8
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_AddRawToObject(ptr noundef %object, ptr noundef %name, ptr noundef %raw) #0 {
entry:
  %retval = alloca ptr, align 8
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %raw.addr = alloca ptr, align 8
  %raw_item = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store ptr %raw, ptr %raw.addr, align 8
  %0 = load ptr, ptr %raw.addr, align 8
  %call = call ptr @pc_inline_source_snapshot_public_repos_cJSON_tests_misc_utils_tests_8(ptr noundef %0)
  store ptr %call, ptr %raw_item, align 8
  %1 = load ptr, ptr %object.addr, align 8
  %2 = load ptr, ptr %name.addr, align 8
  %3 = load ptr, ptr %raw_item, align 8
  %call1 = call i32 @add_item_to_object(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef @global_hooks, i32 noundef 0)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %raw_item, align 8
  store ptr %4, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %raw_item, align 8
  call void @cJSON_Delete(ptr noundef %5)
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load ptr, ptr %retval, align 8
  ret ptr %6
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_CreateRaw(ptr noundef %raw) #0 {
entry:
  %retval = alloca ptr, align 8
  %raw.addr = alloca ptr, align 8
  %item = alloca ptr, align 8
  store ptr %raw, ptr %raw.addr, align 8
  %call = call ptr @cJSON_New_Item(ptr noundef @global_hooks)
  store ptr %call, ptr %item, align 8
  %0 = load ptr, ptr %item, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %item, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %1, i32 0, i32 3
  store i32 128, ptr %type, align 8
  %2 = load ptr, ptr %raw.addr, align 8
  %call1 = call ptr @cJSON_strdup(ptr noundef %2, ptr noundef @global_hooks)
  %3 = load ptr, ptr %item, align 8
  %valuestring = getelementptr inbounds %struct.cJSON, ptr %3, i32 0, i32 4
  store ptr %call1, ptr %valuestring, align 8
  %4 = load ptr, ptr %item, align 8
  %valuestring2 = getelementptr inbounds %struct.cJSON, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %valuestring2, align 8
  %tobool3 = icmp ne ptr %5, null
  br i1 %tobool3, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  %6 = load ptr, ptr %item, align 8
  call void @cJSON_Delete(ptr noundef %6)
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %7 = load ptr, ptr %item, align 8
  store ptr %7, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end5, %if.then4
  %8 = load ptr, ptr %retval, align 8
  ret ptr %8
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_AddObjectToObject(ptr noundef %object, ptr noundef %name) #0 {
entry:
  %retval = alloca ptr, align 8
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %object_item = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  %call = call ptr @pc_inline_source_snapshot_public_repos_cJSON_tests_misc_utils_tests_9()
  store ptr %call, ptr %object_item, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %2 = load ptr, ptr %object_item, align 8
  %call1 = call i32 @add_item_to_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef @global_hooks, i32 noundef 0)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %object_item, align 8
  store ptr %3, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %object_item, align 8
  call void @cJSON_Delete(ptr noundef %4)
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8
  ret ptr %5
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_CreateObject() #0 {
entry:
  %item = alloca ptr, align 8
  %call = call ptr @cJSON_New_Item(ptr noundef @global_hooks)
  store ptr %call, ptr %item, align 8
  %0 = load ptr, ptr %item, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %item, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %1, i32 0, i32 3
  store i32 64, ptr %type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %item, align 8
  ret ptr %2
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_AddArrayToObject(ptr noundef %object, ptr noundef %name) #0 {
entry:
  %retval = alloca ptr, align 8
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %array = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  %call = call ptr @cJSON_CreateArray()
  store ptr %call, ptr %array, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %2 = load ptr, ptr %array, align 8
  %call1 = call i32 @add_item_to_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef @global_hooks, i32 noundef 0)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %array, align 8
  store ptr %3, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %array, align 8
  call void @cJSON_Delete(ptr noundef %4)
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8
  ret ptr %5
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_CreateArray() #0 {
entry:
  %item = alloca ptr, align 8
  %call = call ptr @cJSON_New_Item(ptr noundef @global_hooks)
  store ptr %call, ptr %item, align 8
  %0 = load ptr, ptr %item, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %item, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %1, i32 0, i32 3
  store i32 32, ptr %type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %item, align 8
  ret ptr %2
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_DetachItemViaPointer(ptr noundef %parent, ptr noundef %item) #0 {
entry:
  %retval = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %item.addr = alloca ptr, align 8
  store ptr %parent, ptr %parent.addr, align 8
  store ptr %item, ptr %item.addr, align 8
  %0 = load ptr, ptr %parent.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %item.addr, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %item.addr, align 8
  %3 = load ptr, ptr %parent.addr, align 8
  %child = getelementptr inbounds %struct.cJSON, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %child, align 8
  %cmp3 = icmp ne ptr %2, %4
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false2
  %5 = load ptr, ptr %item.addr, align 8
  %prev = getelementptr inbounds %struct.cJSON, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %prev, align 8
  %cmp4 = icmp eq ptr %6, null
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false2
  %7 = load ptr, ptr %item.addr, align 8
  %8 = load ptr, ptr %parent.addr, align 8
  %child5 = getelementptr inbounds %struct.cJSON, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %child5, align 8
  %cmp6 = icmp ne ptr %7, %9
  br i1 %cmp6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  %10 = load ptr, ptr %item.addr, align 8
  %next = getelementptr inbounds %struct.cJSON, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %next, align 8
  %12 = load ptr, ptr %item.addr, align 8
  %prev8 = getelementptr inbounds %struct.cJSON, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %prev8, align 8
  %next9 = getelementptr inbounds %struct.cJSON, ptr %13, i32 0, i32 0
  store ptr %11, ptr %next9, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end
  %14 = load ptr, ptr %item.addr, align 8
  %next11 = getelementptr inbounds %struct.cJSON, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %next11, align 8
  %cmp12 = icmp ne ptr %15, null
  br i1 %cmp12, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.end10
  %16 = load ptr, ptr %item.addr, align 8
  %prev14 = getelementptr inbounds %struct.cJSON, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %prev14, align 8
  %18 = load ptr, ptr %item.addr, align 8
  %next15 = getelementptr inbounds %struct.cJSON, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %next15, align 8
  %prev16 = getelementptr inbounds %struct.cJSON, ptr %19, i32 0, i32 1
  store ptr %17, ptr %prev16, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end10
  %20 = load ptr, ptr %item.addr, align 8
  %21 = load ptr, ptr %parent.addr, align 8
  %child18 = getelementptr inbounds %struct.cJSON, ptr %21, i32 0, i32 2
  %22 = load ptr, ptr %child18, align 8
  %cmp19 = icmp eq ptr %20, %22
  br i1 %cmp19, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end17
  %23 = load ptr, ptr %item.addr, align 8
  %next21 = getelementptr inbounds %struct.cJSON, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %next21, align 8
  %25 = load ptr, ptr %parent.addr, align 8
  %child22 = getelementptr inbounds %struct.cJSON, ptr %25, i32 0, i32 2
  store ptr %24, ptr %child22, align 8
  br label %if.end30

if.else:                                          ; preds = %if.end17
  %26 = load ptr, ptr %item.addr, align 8
  %next23 = getelementptr inbounds %struct.cJSON, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %next23, align 8
  %cmp24 = icmp eq ptr %27, null
  br i1 %cmp24, label %if.then25, label %if.end29

if.then25:                                        ; preds = %if.else
  %28 = load ptr, ptr %item.addr, align 8
  %prev26 = getelementptr inbounds %struct.cJSON, ptr %28, i32 0, i32 1
  %29 = load ptr, ptr %prev26, align 8
  %30 = load ptr, ptr %parent.addr, align 8
  %child27 = getelementptr inbounds %struct.cJSON, ptr %30, i32 0, i32 2
  %31 = load ptr, ptr %child27, align 8
  %prev28 = getelementptr inbounds %struct.cJSON, ptr %31, i32 0, i32 1
  store ptr %29, ptr %prev28, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.else
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then20
  %32 = load ptr, ptr %item.addr, align 8
  %prev31 = getelementptr inbounds %struct.cJSON, ptr %32, i32 0, i32 1
  store ptr null, ptr %prev31, align 8
  %33 = load ptr, ptr %item.addr, align 8
  %next32 = getelementptr inbounds %struct.cJSON, ptr %33, i32 0, i32 0
  store ptr null, ptr %next32, align 8
  %34 = load ptr, ptr %item.addr, align 8
  store ptr %34, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end30, %if.then
  %35 = load ptr, ptr %retval, align 8
  ret ptr %35
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_DetachItemFromArray(ptr noundef %array, i32 noundef %which) #0 {
entry:
  %retval = alloca ptr, align 8
  %array.addr = alloca ptr, align 8
  %which.addr = alloca i32, align 4
  store ptr %array, ptr %array.addr, align 8
  store i32 %which, ptr %which.addr, align 4
  %0 = load i32, ptr %which.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %array.addr, align 8
  %2 = load ptr, ptr %array.addr, align 8
  %3 = load i32, ptr %which.addr, align 4
  %conv = sext i32 %3 to i64
  %call = call ptr @get_array_item(ptr noundef %2, i64 noundef %conv)
  %call1 = call ptr @cJSON_DetachItemViaPointer(ptr noundef %1, ptr noundef %call)
  store ptr %call1, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load ptr, ptr %retval, align 8
  ret ptr %4
}

; Function Attrs: nounwind ssp uwtable
define void @cJSON_DeleteItemFromArray(ptr noundef %array, i32 noundef %which) #0 {
entry:
  %array.addr = alloca ptr, align 8
  %which.addr = alloca i32, align 4
  store ptr %array, ptr %array.addr, align 8
  store i32 %which, ptr %which.addr, align 4
  %0 = load ptr, ptr %array.addr, align 8
  %1 = load i32, ptr %which.addr, align 4
  %call = call ptr @pc_inline_source_snapshot_public_repos_cJSON_tests_misc_utils_tests_10(ptr noundef %0, i32 noundef %1)
  call void @cJSON_Delete(ptr noundef %call)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_DetachItemFromObject(ptr noundef %object, ptr noundef %string) #0 {
entry:
  %object.addr = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  %to_detach = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %string, ptr %string.addr, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %1 = load ptr, ptr %string.addr, align 8
  %call = call ptr @cJSON_GetObjectItem(ptr noundef %0, ptr noundef %1)
  store ptr %call, ptr %to_detach, align 8
  %2 = load ptr, ptr %object.addr, align 8
  %3 = load ptr, ptr %to_detach, align 8
  %call1 = call ptr @cJSON_DetachItemViaPointer(ptr noundef %2, ptr noundef %3)
  ret ptr %call1
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_DetachItemFromObjectCaseSensitive(ptr noundef %object, ptr noundef %string) #0 {
entry:
  %object.addr = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  %to_detach = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %string, ptr %string.addr, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %1 = load ptr, ptr %string.addr, align 8
  %call = call ptr @pc_inline_source_snapshot_public_repos_cJSON_tests_misc_utils_tests_11(ptr noundef %0, ptr noundef %1)
  store ptr %call, ptr %to_detach, align 8
  %2 = load ptr, ptr %object.addr, align 8
  %3 = load ptr, ptr %to_detach, align 8
  %call1 = call ptr @cJSON_DetachItemViaPointer(ptr noundef %2, ptr noundef %3)
  ret ptr %call1
}

; Function Attrs: nounwind ssp uwtable
define void @cJSON_DeleteItemFromObject(ptr noundef %object, ptr noundef %string) #0 {
entry:
  %object.addr = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %string, ptr %string.addr, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %1 = load ptr, ptr %string.addr, align 8
  %call = call ptr @pc_inline_source_snapshot_public_repos_cJSON_tests_misc_utils_tests_12(ptr noundef %0, ptr noundef %1)
  call void @cJSON_Delete(ptr noundef %call)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @cJSON_DeleteItemFromObjectCaseSensitive(ptr noundef %object, ptr noundef %string) #0 {
entry:
  %object.addr = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %string, ptr %string.addr, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %1 = load ptr, ptr %string.addr, align 8
  %call = call ptr @pc_inline_source_snapshot_public_repos_cJSON_tests_misc_utils_tests_13(ptr noundef %0, ptr noundef %1)
  call void @cJSON_Delete(ptr noundef %call)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @cJSON_InsertItemInArray(ptr noundef %array, i32 noundef %which, ptr noundef %newitem) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca ptr, align 8
  %which.addr = alloca i32, align 4
  %newitem.addr = alloca ptr, align 8
  %after_inserted = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8
  store i32 %which, ptr %which.addr, align 4
  store ptr %newitem, ptr %newitem.addr, align 8
  store ptr null, ptr %after_inserted, align 8
  %0 = load i32, ptr %which.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %newitem.addr, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %array.addr, align 8
  %3 = load i32, ptr %which.addr, align 4
  %conv = sext i32 %3 to i64
  %call = call ptr @get_array_item(ptr noundef %2, i64 noundef %conv)
  store ptr %call, ptr %after_inserted, align 8
  %4 = load ptr, ptr %after_inserted, align 8
  %cmp2 = icmp eq ptr %4, null
  br i1 %cmp2, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %5 = load ptr, ptr %array.addr, align 8
  %6 = load ptr, ptr %newitem.addr, align 8
  %call5 = call i32 @add_item_to_array(ptr noundef %5, ptr noundef %6)
  store i32 %call5, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %7 = load ptr, ptr %after_inserted, align 8
  %8 = load ptr, ptr %array.addr, align 8
  %child = getelementptr inbounds %struct.cJSON, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %child, align 8
  %cmp7 = icmp ne ptr %7, %9
  br i1 %cmp7, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %if.end6
  %10 = load ptr, ptr %after_inserted, align 8
  %prev = getelementptr inbounds %struct.cJSON, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %prev, align 8
  %cmp9 = icmp eq ptr %11, null
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %land.lhs.true, %if.end6
  %12 = load ptr, ptr %after_inserted, align 8
  %13 = load ptr, ptr %newitem.addr, align 8
  %next = getelementptr inbounds %struct.cJSON, ptr %13, i32 0, i32 0
  store ptr %12, ptr %next, align 8
  %14 = load ptr, ptr %after_inserted, align 8
  %prev13 = getelementptr inbounds %struct.cJSON, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %prev13, align 8
  %16 = load ptr, ptr %newitem.addr, align 8
  %prev14 = getelementptr inbounds %struct.cJSON, ptr %16, i32 0, i32 1
  store ptr %15, ptr %prev14, align 8
  %17 = load ptr, ptr %newitem.addr, align 8
  %18 = load ptr, ptr %after_inserted, align 8
  %prev15 = getelementptr inbounds %struct.cJSON, ptr %18, i32 0, i32 1
  store ptr %17, ptr %prev15, align 8
  %19 = load ptr, ptr %after_inserted, align 8
  %20 = load ptr, ptr %array.addr, align 8
  %child16 = getelementptr inbounds %struct.cJSON, ptr %20, i32 0, i32 2
  %21 = load ptr, ptr %child16, align 8
  %cmp17 = icmp eq ptr %19, %21
  br i1 %cmp17, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end12
  %22 = load ptr, ptr %newitem.addr, align 8
  %23 = load ptr, ptr %array.addr, align 8
  %child20 = getelementptr inbounds %struct.cJSON, ptr %23, i32 0, i32 2
  store ptr %22, ptr %child20, align 8
  br label %if.end23

if.else:                                          ; preds = %if.end12
  %24 = load ptr, ptr %newitem.addr, align 8
  %25 = load ptr, ptr %newitem.addr, align 8
  %prev21 = getelementptr inbounds %struct.cJSON, ptr %25, i32 0, i32 1
  %26 = load ptr, ptr %prev21, align 8
  %next22 = getelementptr inbounds %struct.cJSON, ptr %26, i32 0, i32 0
  store ptr %24, ptr %next22, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then19
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end23, %if.then11, %if.then4, %if.then
  %27 = load i32, ptr %retval, align 4
  ret i32 %27
}

; Function Attrs: nounwind ssp uwtable
define i32 @cJSON_ReplaceItemViaPointer(ptr noundef %parent, ptr noundef %item, ptr noundef %replacement) #0 {
entry:
  %retval = alloca i32, align 4
  %parent.addr = alloca ptr, align 8
  %item.addr = alloca ptr, align 8
  %replacement.addr = alloca ptr, align 8
  store ptr %parent, ptr %parent.addr, align 8
  store ptr %item, ptr %item.addr, align 8
  store ptr %replacement, ptr %replacement.addr, align 8
  %0 = load ptr, ptr %parent.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %parent.addr, align 8
  %child = getelementptr inbounds %struct.cJSON, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %child, align 8
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %replacement.addr, align 8
  %cmp3 = icmp eq ptr %3, null
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %4 = load ptr, ptr %item.addr, align 8
  %cmp5 = icmp eq ptr %4, null
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false4
  %5 = load ptr, ptr %replacement.addr, align 8
  %6 = load ptr, ptr %item.addr, align 8
  %cmp6 = icmp eq ptr %5, %6
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  %7 = load ptr, ptr %item.addr, align 8
  %next = getelementptr inbounds %struct.cJSON, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %next, align 8
  %9 = load ptr, ptr %replacement.addr, align 8
  %next9 = getelementptr inbounds %struct.cJSON, ptr %9, i32 0, i32 0
  store ptr %8, ptr %next9, align 8
  %10 = load ptr, ptr %item.addr, align 8
  %prev = getelementptr inbounds %struct.cJSON, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %prev, align 8
  %12 = load ptr, ptr %replacement.addr, align 8
  %prev10 = getelementptr inbounds %struct.cJSON, ptr %12, i32 0, i32 1
  store ptr %11, ptr %prev10, align 8
  %13 = load ptr, ptr %replacement.addr, align 8
  %next11 = getelementptr inbounds %struct.cJSON, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %next11, align 8
  %cmp12 = icmp ne ptr %14, null
  br i1 %cmp12, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end8
  %15 = load ptr, ptr %replacement.addr, align 8
  %16 = load ptr, ptr %replacement.addr, align 8
  %next14 = getelementptr inbounds %struct.cJSON, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %next14, align 8
  %prev15 = getelementptr inbounds %struct.cJSON, ptr %17, i32 0, i32 1
  store ptr %15, ptr %prev15, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end8
  %18 = load ptr, ptr %parent.addr, align 8
  %child17 = getelementptr inbounds %struct.cJSON, ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %child17, align 8
  %20 = load ptr, ptr %item.addr, align 8
  %cmp18 = icmp eq ptr %19, %20
  br i1 %cmp18, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end16
  %21 = load ptr, ptr %parent.addr, align 8
  %child20 = getelementptr inbounds %struct.cJSON, ptr %21, i32 0, i32 2
  %22 = load ptr, ptr %child20, align 8
  %prev21 = getelementptr inbounds %struct.cJSON, ptr %22, i32 0, i32 1
  %23 = load ptr, ptr %prev21, align 8
  %24 = load ptr, ptr %parent.addr, align 8
  %child22 = getelementptr inbounds %struct.cJSON, ptr %24, i32 0, i32 2
  %25 = load ptr, ptr %child22, align 8
  %cmp23 = icmp eq ptr %23, %25
  br i1 %cmp23, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.then19
  %26 = load ptr, ptr %replacement.addr, align 8
  %27 = load ptr, ptr %replacement.addr, align 8
  %prev25 = getelementptr inbounds %struct.cJSON, ptr %27, i32 0, i32 1
  store ptr %26, ptr %prev25, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.then19
  %28 = load ptr, ptr %replacement.addr, align 8
  %29 = load ptr, ptr %parent.addr, align 8
  %child27 = getelementptr inbounds %struct.cJSON, ptr %29, i32 0, i32 2
  store ptr %28, ptr %child27, align 8
  br label %if.end40

if.else:                                          ; preds = %if.end16
  %30 = load ptr, ptr %replacement.addr, align 8
  %prev28 = getelementptr inbounds %struct.cJSON, ptr %30, i32 0, i32 1
  %31 = load ptr, ptr %prev28, align 8
  %cmp29 = icmp ne ptr %31, null
  br i1 %cmp29, label %if.then30, label %if.end33

if.then30:                                        ; preds = %if.else
  %32 = load ptr, ptr %replacement.addr, align 8
  %33 = load ptr, ptr %replacement.addr, align 8
  %prev31 = getelementptr inbounds %struct.cJSON, ptr %33, i32 0, i32 1
  %34 = load ptr, ptr %prev31, align 8
  %next32 = getelementptr inbounds %struct.cJSON, ptr %34, i32 0, i32 0
  store ptr %32, ptr %next32, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.else
  %35 = load ptr, ptr %replacement.addr, align 8
  %next34 = getelementptr inbounds %struct.cJSON, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %next34, align 8
  %cmp35 = icmp eq ptr %36, null
  br i1 %cmp35, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.end33
  %37 = load ptr, ptr %replacement.addr, align 8
  %38 = load ptr, ptr %parent.addr, align 8
  %child37 = getelementptr inbounds %struct.cJSON, ptr %38, i32 0, i32 2
  %39 = load ptr, ptr %child37, align 8
  %prev38 = getelementptr inbounds %struct.cJSON, ptr %39, i32 0, i32 1
  store ptr %37, ptr %prev38, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end33
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.end26
  %40 = load ptr, ptr %item.addr, align 8
  %next41 = getelementptr inbounds %struct.cJSON, ptr %40, i32 0, i32 0
  store ptr null, ptr %next41, align 8
  %41 = load ptr, ptr %item.addr, align 8
  %prev42 = getelementptr inbounds %struct.cJSON, ptr %41, i32 0, i32 1
  store ptr null, ptr %prev42, align 8
  %42 = load ptr, ptr %item.addr, align 8
  call void @cJSON_Delete(ptr noundef %42)
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end40, %if.then7, %if.then
  %43 = load i32, ptr %retval, align 4
  ret i32 %43
}

; Function Attrs: nounwind ssp uwtable
define i32 @cJSON_ReplaceItemInArray(ptr noundef %array, i32 noundef %which, ptr noundef %newitem) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca ptr, align 8
  %which.addr = alloca i32, align 4
  %newitem.addr = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8
  store i32 %which, ptr %which.addr, align 4
  store ptr %newitem, ptr %newitem.addr, align 8
  %0 = load i32, ptr %which.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %array.addr, align 8
  %2 = load ptr, ptr %array.addr, align 8
  %3 = load i32, ptr %which.addr, align 4
  %conv = sext i32 %3 to i64
  %call = call ptr @get_array_item(ptr noundef %2, i64 noundef %conv)
  %4 = load ptr, ptr %newitem.addr, align 8
  %call1 = call i32 @cJSON_ReplaceItemViaPointer(ptr noundef %1, ptr noundef %call, ptr noundef %4)
  store i32 %call1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

; Function Attrs: nounwind ssp uwtable
define i32 @cJSON_ReplaceItemInObject(ptr noundef %object, ptr noundef %string, ptr noundef %newitem) #0 {
entry:
  %object.addr = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  %newitem.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %string, ptr %string.addr, align 8
  store ptr %newitem, ptr %newitem.addr, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %1 = load ptr, ptr %string.addr, align 8
  %2 = load ptr, ptr %newitem.addr, align 8
  %call = call i32 @replace_item_in_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @replace_item_in_object(ptr noundef %object, ptr noundef %string, ptr noundef %replacement, i32 noundef %case_sensitive) #0 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  %replacement.addr = alloca ptr, align 8
  %case_sensitive.addr = alloca i32, align 4
  store ptr %object, ptr %object.addr, align 8
  store ptr %string, ptr %string.addr, align 8
  store ptr %replacement, ptr %replacement.addr, align 8
  store i32 %case_sensitive, ptr %case_sensitive.addr, align 4
  %0 = load ptr, ptr %replacement.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %string.addr, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %replacement.addr, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %2, i32 0, i32 3
  %3 = load i32, ptr %type, align 8
  %and = and i32 %3, 512
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end6, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %4 = load ptr, ptr %replacement.addr, align 8
  %string2 = getelementptr inbounds %struct.cJSON, ptr %4, i32 0, i32 7
  %5 = load ptr, ptr %string2, align 8
  %cmp3 = icmp ne ptr %5, null
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %land.lhs.true
  %6 = load ptr, ptr %replacement.addr, align 8
  %string5 = getelementptr inbounds %struct.cJSON, ptr %6, i32 0, i32 7
  %7 = load ptr, ptr %string5, align 8
  call void @cJSON_free(ptr noundef %7)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %land.lhs.true, %if.end
  %8 = load ptr, ptr %string.addr, align 8
  %call = call ptr @cJSON_strdup(ptr noundef %8, ptr noundef @global_hooks)
  %9 = load ptr, ptr %replacement.addr, align 8
  %string7 = getelementptr inbounds %struct.cJSON, ptr %9, i32 0, i32 7
  store ptr %call, ptr %string7, align 8
  %10 = load ptr, ptr %replacement.addr, align 8
  %string8 = getelementptr inbounds %struct.cJSON, ptr %10, i32 0, i32 7
  %11 = load ptr, ptr %string8, align 8
  %cmp9 = icmp eq ptr %11, null
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end6
  store i32 0, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end6
  %12 = load ptr, ptr %replacement.addr, align 8
  %type12 = getelementptr inbounds %struct.cJSON, ptr %12, i32 0, i32 3
  %13 = load i32, ptr %type12, align 8
  %and13 = and i32 %13, -513
  store i32 %and13, ptr %type12, align 8
  %14 = load ptr, ptr %object.addr, align 8
  %15 = load ptr, ptr %object.addr, align 8
  %16 = load ptr, ptr %string.addr, align 8
  %17 = load i32, ptr %case_sensitive.addr, align 4
  %call14 = call ptr @get_object_item(ptr noundef %15, ptr noundef %16, i32 noundef %17)
  %18 = load ptr, ptr %replacement.addr, align 8
  %call15 = call i32 @cJSON_ReplaceItemViaPointer(ptr noundef %14, ptr noundef %call14, ptr noundef %18)
  store i32 %call15, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end11, %if.then10, %if.then
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

; Function Attrs: nounwind ssp uwtable
define i32 @cJSON_ReplaceItemInObjectCaseSensitive(ptr noundef %object, ptr noundef %string, ptr noundef %newitem) #0 {
entry:
  %object.addr = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  %newitem.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %string, ptr %string.addr, align 8
  store ptr %newitem, ptr %newitem.addr, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %1 = load ptr, ptr %string.addr, align 8
  %2 = load ptr, ptr %newitem.addr, align 8
  %call = call i32 @replace_item_in_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_CreateStringReference(ptr noundef %string) #0 {
entry:
  %string.addr = alloca ptr, align 8
  %item = alloca ptr, align 8
  store ptr %string, ptr %string.addr, align 8
  %call = call ptr @cJSON_New_Item(ptr noundef @global_hooks)
  store ptr %call, ptr %item, align 8
  %0 = load ptr, ptr %item, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %item, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %1, i32 0, i32 3
  store i32 272, ptr %type, align 8
  %2 = load ptr, ptr %string.addr, align 8
  %call1 = call ptr @cast_away_const(ptr noundef %2)
  %3 = load ptr, ptr %item, align 8
  %valuestring = getelementptr inbounds %struct.cJSON, ptr %3, i32 0, i32 4
  store ptr %call1, ptr %valuestring, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %item, align 8
  ret ptr %4
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @cast_away_const(ptr noundef %string) #0 {
entry:
  %string.addr = alloca ptr, align 8
  store ptr %string, ptr %string.addr, align 8
  %0 = load ptr, ptr %string.addr, align 8
  ret ptr %0
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_CreateObjectReference(ptr noundef %child) #0 {
entry:
  %child.addr = alloca ptr, align 8
  %item = alloca ptr, align 8
  store ptr %child, ptr %child.addr, align 8
  %call = call ptr @cJSON_New_Item(ptr noundef @global_hooks)
  store ptr %call, ptr %item, align 8
  %0 = load ptr, ptr %item, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %item, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %1, i32 0, i32 3
  store i32 320, ptr %type, align 8
  %2 = load ptr, ptr %child.addr, align 8
  %call1 = call ptr @cast_away_const(ptr noundef %2)
  %3 = load ptr, ptr %item, align 8
  %child2 = getelementptr inbounds %struct.cJSON, ptr %3, i32 0, i32 2
  store ptr %call1, ptr %child2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %item, align 8
  ret ptr %4
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_CreateArrayReference(ptr noundef %child) #0 {
entry:
  %child.addr = alloca ptr, align 8
  %item = alloca ptr, align 8
  store ptr %child, ptr %child.addr, align 8
  %call = call ptr @cJSON_New_Item(ptr noundef @global_hooks)
  store ptr %call, ptr %item, align 8
  %0 = load ptr, ptr %item, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %item, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %1, i32 0, i32 3
  store i32 288, ptr %type, align 8
  %2 = load ptr, ptr %child.addr, align 8
  %call1 = call ptr @cast_away_const(ptr noundef %2)
  %3 = load ptr, ptr %item, align 8
  %child2 = getelementptr inbounds %struct.cJSON, ptr %3, i32 0, i32 2
  store ptr %call1, ptr %child2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %item, align 8
  ret ptr %4
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_CreateIntArray(ptr noundef %numbers, i32 noundef %count) #0 {
entry:
  %retval = alloca ptr, align 8
  %numbers.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  %i = alloca i64, align 8
  %n = alloca ptr, align 8
  %p = alloca ptr, align 8
  %a = alloca ptr, align 8
  store ptr %numbers, ptr %numbers.addr, align 8
  store i32 %count, ptr %count.addr, align 4
  store i64 0, ptr %i, align 8
  store ptr null, ptr %n, align 8
  store ptr null, ptr %p, align 8
  store ptr null, ptr %a, align 8
  %0 = load i32, ptr %count.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %numbers.addr, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %call = call ptr @cJSON_CreateArray()
  store ptr %call, ptr %a, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load ptr, ptr %a, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load i64, ptr %i, align 8
  %4 = load i32, ptr %count.addr, align 4
  %conv = sext i32 %4 to i64
  %cmp2 = icmp ult i64 %3, %conv
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp2, %land.rhs ]
  br i1 %5, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %6 = load ptr, ptr %numbers.addr, align 8
  %7 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds i32, ptr %6, i64 %7
  %8 = load i32, ptr %arrayidx, align 4
  %conv4 = sitofp i32 %8 to double
  %call5 = call ptr @cJSON_CreateNumber(double noundef %conv4)
  store ptr %call5, ptr %n, align 8
  %9 = load ptr, ptr %n, align 8
  %tobool6 = icmp ne ptr %9, null
  br i1 %tobool6, label %if.end8, label %if.then7

if.then7:                                         ; preds = %for.body
  %10 = load ptr, ptr %a, align 8
  call void @cJSON_Delete(ptr noundef %10)
  store ptr null, ptr %retval, align 8
  br label %return

if.end8:                                          ; preds = %for.body
  %11 = load i64, ptr %i, align 8
  %tobool9 = icmp ne i64 %11, 0
  br i1 %tobool9, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end8
  %12 = load ptr, ptr %n, align 8
  %13 = load ptr, ptr %a, align 8
  %child = getelementptr inbounds %struct.cJSON, ptr %13, i32 0, i32 2
  store ptr %12, ptr %child, align 8
  br label %if.end11

if.else:                                          ; preds = %if.end8
  %14 = load ptr, ptr %p, align 8
  %15 = load ptr, ptr %n, align 8
  call void @suffix_object(ptr noundef %14, ptr noundef %15)
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then10
  %16 = load ptr, ptr %n, align 8
  store ptr %16, ptr %p, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end11
  %17 = load i64, ptr %i, align 8
  %inc = add i64 %17, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %land.end
  %18 = load ptr, ptr %a, align 8
  %tobool12 = icmp ne ptr %18, null
  br i1 %tobool12, label %land.lhs.true, label %if.end17

land.lhs.true:                                    ; preds = %for.end
  %19 = load ptr, ptr %a, align 8
  %child13 = getelementptr inbounds %struct.cJSON, ptr %19, i32 0, i32 2
  %20 = load ptr, ptr %child13, align 8
  %tobool14 = icmp ne ptr %20, null
  br i1 %tobool14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %land.lhs.true
  %21 = load ptr, ptr %n, align 8
  %22 = load ptr, ptr %a, align 8
  %child16 = getelementptr inbounds %struct.cJSON, ptr %22, i32 0, i32 2
  %23 = load ptr, ptr %child16, align 8
  %prev = getelementptr inbounds %struct.cJSON, ptr %23, i32 0, i32 1
  store ptr %21, ptr %prev, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %land.lhs.true, %for.end
  %24 = load ptr, ptr %a, align 8
  store ptr %24, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end17, %if.then7, %if.then
  %25 = load ptr, ptr %retval, align 8
  ret ptr %25
}

; Function Attrs: nounwind ssp uwtable
define internal void @suffix_object(ptr noundef %prev, ptr noundef %item) #0 {
entry:
  %prev.addr = alloca ptr, align 8
  %item.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  store ptr %item, ptr %item.addr, align 8
  %0 = load ptr, ptr %item.addr, align 8
  %1 = load ptr, ptr %prev.addr, align 8
  %next = getelementptr inbounds %struct.cJSON, ptr %1, i32 0, i32 0
  store ptr %0, ptr %next, align 8
  %2 = load ptr, ptr %prev.addr, align 8
  %3 = load ptr, ptr %item.addr, align 8
  %prev1 = getelementptr inbounds %struct.cJSON, ptr %3, i32 0, i32 1
  store ptr %2, ptr %prev1, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_CreateFloatArray(ptr noundef %numbers, i32 noundef %count) #0 {
entry:
  %retval = alloca ptr, align 8
  %numbers.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  %i = alloca i64, align 8
  %n = alloca ptr, align 8
  %p = alloca ptr, align 8
  %a = alloca ptr, align 8
  store ptr %numbers, ptr %numbers.addr, align 8
  store i32 %count, ptr %count.addr, align 4
  store i64 0, ptr %i, align 8
  store ptr null, ptr %n, align 8
  store ptr null, ptr %p, align 8
  store ptr null, ptr %a, align 8
  %0 = load i32, ptr %count.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %numbers.addr, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %call = call ptr @cJSON_CreateArray()
  store ptr %call, ptr %a, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load ptr, ptr %a, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load i64, ptr %i, align 8
  %4 = load i32, ptr %count.addr, align 4
  %conv = sext i32 %4 to i64
  %cmp2 = icmp ult i64 %3, %conv
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp2, %land.rhs ]
  br i1 %5, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %6 = load ptr, ptr %numbers.addr, align 8
  %7 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds float, ptr %6, i64 %7
  %8 = load float, ptr %arrayidx, align 4
  %conv4 = fpext float %8 to double
  %call5 = call ptr @cJSON_CreateNumber(double noundef %conv4)
  store ptr %call5, ptr %n, align 8
  %9 = load ptr, ptr %n, align 8
  %tobool6 = icmp ne ptr %9, null
  br i1 %tobool6, label %if.end8, label %if.then7

if.then7:                                         ; preds = %for.body
  %10 = load ptr, ptr %a, align 8
  call void @cJSON_Delete(ptr noundef %10)
  store ptr null, ptr %retval, align 8
  br label %return

if.end8:                                          ; preds = %for.body
  %11 = load i64, ptr %i, align 8
  %tobool9 = icmp ne i64 %11, 0
  br i1 %tobool9, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end8
  %12 = load ptr, ptr %n, align 8
  %13 = load ptr, ptr %a, align 8
  %child = getelementptr inbounds %struct.cJSON, ptr %13, i32 0, i32 2
  store ptr %12, ptr %child, align 8
  br label %if.end11

if.else:                                          ; preds = %if.end8
  %14 = load ptr, ptr %p, align 8
  %15 = load ptr, ptr %n, align 8
  call void @suffix_object(ptr noundef %14, ptr noundef %15)
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then10
  %16 = load ptr, ptr %n, align 8
  store ptr %16, ptr %p, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end11
  %17 = load i64, ptr %i, align 8
  %inc = add i64 %17, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %land.end
  %18 = load ptr, ptr %a, align 8
  %tobool12 = icmp ne ptr %18, null
  br i1 %tobool12, label %land.lhs.true, label %if.end17

land.lhs.true:                                    ; preds = %for.end
  %19 = load ptr, ptr %a, align 8
  %child13 = getelementptr inbounds %struct.cJSON, ptr %19, i32 0, i32 2
  %20 = load ptr, ptr %child13, align 8
  %tobool14 = icmp ne ptr %20, null
  br i1 %tobool14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %land.lhs.true
  %21 = load ptr, ptr %n, align 8
  %22 = load ptr, ptr %a, align 8
  %child16 = getelementptr inbounds %struct.cJSON, ptr %22, i32 0, i32 2
  %23 = load ptr, ptr %child16, align 8
  %prev = getelementptr inbounds %struct.cJSON, ptr %23, i32 0, i32 1
  store ptr %21, ptr %prev, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %land.lhs.true, %for.end
  %24 = load ptr, ptr %a, align 8
  store ptr %24, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end17, %if.then7, %if.then
  %25 = load ptr, ptr %retval, align 8
  ret ptr %25
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_CreateDoubleArray(ptr noundef %numbers, i32 noundef %count) #0 {
entry:
  %retval = alloca ptr, align 8
  %numbers.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  %i = alloca i64, align 8
  %n = alloca ptr, align 8
  %p = alloca ptr, align 8
  %a = alloca ptr, align 8
  store ptr %numbers, ptr %numbers.addr, align 8
  store i32 %count, ptr %count.addr, align 4
  store i64 0, ptr %i, align 8
  store ptr null, ptr %n, align 8
  store ptr null, ptr %p, align 8
  store ptr null, ptr %a, align 8
  %0 = load i32, ptr %count.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %numbers.addr, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %call = call ptr @cJSON_CreateArray()
  store ptr %call, ptr %a, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load ptr, ptr %a, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load i64, ptr %i, align 8
  %4 = load i32, ptr %count.addr, align 4
  %conv = sext i32 %4 to i64
  %cmp2 = icmp ult i64 %3, %conv
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp2, %land.rhs ]
  br i1 %5, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %6 = load ptr, ptr %numbers.addr, align 8
  %7 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds double, ptr %6, i64 %7
  %8 = load double, ptr %arrayidx, align 8
  %call4 = call ptr @cJSON_CreateNumber(double noundef %8)
  store ptr %call4, ptr %n, align 8
  %9 = load ptr, ptr %n, align 8
  %tobool5 = icmp ne ptr %9, null
  br i1 %tobool5, label %if.end7, label %if.then6

if.then6:                                         ; preds = %for.body
  %10 = load ptr, ptr %a, align 8
  call void @cJSON_Delete(ptr noundef %10)
  store ptr null, ptr %retval, align 8
  br label %return

if.end7:                                          ; preds = %for.body
  %11 = load i64, ptr %i, align 8
  %tobool8 = icmp ne i64 %11, 0
  br i1 %tobool8, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end7
  %12 = load ptr, ptr %n, align 8
  %13 = load ptr, ptr %a, align 8
  %child = getelementptr inbounds %struct.cJSON, ptr %13, i32 0, i32 2
  store ptr %12, ptr %child, align 8
  br label %if.end10

if.else:                                          ; preds = %if.end7
  %14 = load ptr, ptr %p, align 8
  %15 = load ptr, ptr %n, align 8
  call void @suffix_object(ptr noundef %14, ptr noundef %15)
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then9
  %16 = load ptr, ptr %n, align 8
  store ptr %16, ptr %p, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %17 = load i64, ptr %i, align 8
  %inc = add i64 %17, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %land.end
  %18 = load ptr, ptr %a, align 8
  %tobool11 = icmp ne ptr %18, null
  br i1 %tobool11, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %for.end
  %19 = load ptr, ptr %a, align 8
  %child12 = getelementptr inbounds %struct.cJSON, ptr %19, i32 0, i32 2
  %20 = load ptr, ptr %child12, align 8
  %tobool13 = icmp ne ptr %20, null
  br i1 %tobool13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %land.lhs.true
  %21 = load ptr, ptr %n, align 8
  %22 = load ptr, ptr %a, align 8
  %child15 = getelementptr inbounds %struct.cJSON, ptr %22, i32 0, i32 2
  %23 = load ptr, ptr %child15, align 8
  %prev = getelementptr inbounds %struct.cJSON, ptr %23, i32 0, i32 1
  store ptr %21, ptr %prev, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %land.lhs.true, %for.end
  %24 = load ptr, ptr %a, align 8
  store ptr %24, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end16, %if.then6, %if.then
  %25 = load ptr, ptr %retval, align 8
  ret ptr %25
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_CreateStringArray(ptr noundef %strings, i32 noundef %count) #0 {
entry:
  %retval = alloca ptr, align 8
  %strings.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  %i = alloca i64, align 8
  %n = alloca ptr, align 8
  %p = alloca ptr, align 8
  %a = alloca ptr, align 8
  store ptr %strings, ptr %strings.addr, align 8
  store i32 %count, ptr %count.addr, align 4
  store i64 0, ptr %i, align 8
  store ptr null, ptr %n, align 8
  store ptr null, ptr %p, align 8
  store ptr null, ptr %a, align 8
  %0 = load i32, ptr %count.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %strings.addr, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %call = call ptr @cJSON_CreateArray()
  store ptr %call, ptr %a, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load ptr, ptr %a, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load i64, ptr %i, align 8
  %4 = load i32, ptr %count.addr, align 4
  %conv = sext i32 %4 to i64
  %cmp2 = icmp ult i64 %3, %conv
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp2, %land.rhs ]
  br i1 %5, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %6 = load ptr, ptr %strings.addr, align 8
  %7 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %7
  %8 = load ptr, ptr %arrayidx, align 8
  %call4 = call ptr @cJSON_CreateString(ptr noundef %8)
  store ptr %call4, ptr %n, align 8
  %9 = load ptr, ptr %n, align 8
  %tobool5 = icmp ne ptr %9, null
  br i1 %tobool5, label %if.end7, label %if.then6

if.then6:                                         ; preds = %for.body
  %10 = load ptr, ptr %a, align 8
  call void @cJSON_Delete(ptr noundef %10)
  store ptr null, ptr %retval, align 8
  br label %return

if.end7:                                          ; preds = %for.body
  %11 = load i64, ptr %i, align 8
  %tobool8 = icmp ne i64 %11, 0
  br i1 %tobool8, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end7
  %12 = load ptr, ptr %n, align 8
  %13 = load ptr, ptr %a, align 8
  %child = getelementptr inbounds %struct.cJSON, ptr %13, i32 0, i32 2
  store ptr %12, ptr %child, align 8
  br label %if.end10

if.else:                                          ; preds = %if.end7
  %14 = load ptr, ptr %p, align 8
  %15 = load ptr, ptr %n, align 8
  call void @suffix_object(ptr noundef %14, ptr noundef %15)
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then9
  %16 = load ptr, ptr %n, align 8
  store ptr %16, ptr %p, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %17 = load i64, ptr %i, align 8
  %inc = add i64 %17, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %land.end
  %18 = load ptr, ptr %a, align 8
  %tobool11 = icmp ne ptr %18, null
  br i1 %tobool11, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %for.end
  %19 = load ptr, ptr %a, align 8
  %child12 = getelementptr inbounds %struct.cJSON, ptr %19, i32 0, i32 2
  %20 = load ptr, ptr %child12, align 8
  %tobool13 = icmp ne ptr %20, null
  br i1 %tobool13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %land.lhs.true
  %21 = load ptr, ptr %n, align 8
  %22 = load ptr, ptr %a, align 8
  %child15 = getelementptr inbounds %struct.cJSON, ptr %22, i32 0, i32 2
  %23 = load ptr, ptr %child15, align 8
  %prev = getelementptr inbounds %struct.cJSON, ptr %23, i32 0, i32 1
  store ptr %21, ptr %prev, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %land.lhs.true, %for.end
  %24 = load ptr, ptr %a, align 8
  store ptr %24, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end16, %if.then6, %if.then
  %25 = load ptr, ptr %retval, align 8
  ret ptr %25
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_Duplicate(ptr noundef %item, i32 noundef %recurse) #0 {
entry:
  %item.addr = alloca ptr, align 8
  %recurse.addr = alloca i32, align 4
  store ptr %item, ptr %item.addr, align 8
  store i32 %recurse, ptr %recurse.addr, align 4
  %0 = load ptr, ptr %item.addr, align 8
  %1 = load i32, ptr %recurse.addr, align 4
  %call = call ptr @cJSON_Duplicate_rec(ptr noundef %0, i64 noundef 0, i32 noundef %1)
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_Duplicate_rec(ptr noundef %item, i64 noundef %depth, i32 noundef %recurse) #0 {
entry:
  %retval = alloca ptr, align 8
  %item.addr = alloca ptr, align 8
  %depth.addr = alloca i64, align 8
  %recurse.addr = alloca i32, align 4
  %newitem = alloca ptr, align 8
  %child = alloca ptr, align 8
  %next = alloca ptr, align 8
  %newchild = alloca ptr, align 8
  store ptr %item, ptr %item.addr, align 8
  store i64 %depth, ptr %depth.addr, align 8
  store i32 %recurse, ptr %recurse.addr, align 4
  store ptr null, ptr %newitem, align 8
  store ptr null, ptr %child, align 8
  store ptr null, ptr %next, align 8
  store ptr null, ptr %newchild, align 8
  %0 = load ptr, ptr %item.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %fail

if.end:                                           ; preds = %entry
  %call = call ptr @cJSON_New_Item(ptr noundef @global_hooks)
  store ptr %call, ptr %newitem, align 8
  %1 = load ptr, ptr %newitem, align 8
  %tobool1 = icmp ne ptr %1, null
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  br label %fail

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %item.addr, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %2, i32 0, i32 3
  %3 = load i32, ptr %type, align 8
  %and = and i32 %3, -257
  %4 = load ptr, ptr %newitem, align 8
  %type4 = getelementptr inbounds %struct.cJSON, ptr %4, i32 0, i32 3
  store i32 %and, ptr %type4, align 8
  %5 = load ptr, ptr %item.addr, align 8
  %valueint = getelementptr inbounds %struct.cJSON, ptr %5, i32 0, i32 5
  %6 = load i32, ptr %valueint, align 8
  %7 = load ptr, ptr %newitem, align 8
  %valueint5 = getelementptr inbounds %struct.cJSON, ptr %7, i32 0, i32 5
  store i32 %6, ptr %valueint5, align 8
  %8 = load ptr, ptr %item.addr, align 8
  %valuedouble = getelementptr inbounds %struct.cJSON, ptr %8, i32 0, i32 6
  %9 = load double, ptr %valuedouble, align 8
  %10 = load ptr, ptr %newitem, align 8
  %valuedouble6 = getelementptr inbounds %struct.cJSON, ptr %10, i32 0, i32 6
  store double %9, ptr %valuedouble6, align 8
  %11 = load ptr, ptr %item.addr, align 8
  %valuestring = getelementptr inbounds %struct.cJSON, ptr %11, i32 0, i32 4
  %12 = load ptr, ptr %valuestring, align 8
  %tobool7 = icmp ne ptr %12, null
  br i1 %tobool7, label %if.then8, label %if.end16

if.then8:                                         ; preds = %if.end3
  %13 = load ptr, ptr %item.addr, align 8
  %valuestring9 = getelementptr inbounds %struct.cJSON, ptr %13, i32 0, i32 4
  %14 = load ptr, ptr %valuestring9, align 8
  %call10 = call ptr @cJSON_strdup(ptr noundef %14, ptr noundef @global_hooks)
  %15 = load ptr, ptr %newitem, align 8
  %valuestring11 = getelementptr inbounds %struct.cJSON, ptr %15, i32 0, i32 4
  store ptr %call10, ptr %valuestring11, align 8
  %16 = load ptr, ptr %newitem, align 8
  %valuestring12 = getelementptr inbounds %struct.cJSON, ptr %16, i32 0, i32 4
  %17 = load ptr, ptr %valuestring12, align 8
  %tobool13 = icmp ne ptr %17, null
  br i1 %tobool13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.then8
  br label %fail

if.end15:                                         ; preds = %if.then8
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end3
  %18 = load ptr, ptr %item.addr, align 8
  %string = getelementptr inbounds %struct.cJSON, ptr %18, i32 0, i32 7
  %19 = load ptr, ptr %string, align 8
  %tobool17 = icmp ne ptr %19, null
  br i1 %tobool17, label %if.then18, label %if.end30

if.then18:                                        ; preds = %if.end16
  %20 = load ptr, ptr %item.addr, align 8
  %type19 = getelementptr inbounds %struct.cJSON, ptr %20, i32 0, i32 3
  %21 = load i32, ptr %type19, align 8
  %and20 = and i32 %21, 512
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then18
  %22 = load ptr, ptr %item.addr, align 8
  %string22 = getelementptr inbounds %struct.cJSON, ptr %22, i32 0, i32 7
  %23 = load ptr, ptr %string22, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then18
  %24 = load ptr, ptr %item.addr, align 8
  %string23 = getelementptr inbounds %struct.cJSON, ptr %24, i32 0, i32 7
  %25 = load ptr, ptr %string23, align 8
  %call24 = call ptr @cJSON_strdup(ptr noundef %25, ptr noundef @global_hooks)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %23, %cond.true ], [ %call24, %cond.false ]
  %26 = load ptr, ptr %newitem, align 8
  %string25 = getelementptr inbounds %struct.cJSON, ptr %26, i32 0, i32 7
  store ptr %cond, ptr %string25, align 8
  %27 = load ptr, ptr %newitem, align 8
  %string26 = getelementptr inbounds %struct.cJSON, ptr %27, i32 0, i32 7
  %28 = load ptr, ptr %string26, align 8
  %tobool27 = icmp ne ptr %28, null
  br i1 %tobool27, label %if.end29, label %if.then28

if.then28:                                        ; preds = %cond.end
  br label %fail

if.end29:                                         ; preds = %cond.end
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.end16
  %29 = load i32, ptr %recurse.addr, align 4
  %tobool31 = icmp ne i32 %29, 0
  br i1 %tobool31, label %if.end33, label %if.then32

if.then32:                                        ; preds = %if.end30
  %30 = load ptr, ptr %newitem, align 8
  store ptr %30, ptr %retval, align 8
  br label %return

if.end33:                                         ; preds = %if.end30
  %31 = load ptr, ptr %item.addr, align 8
  %child34 = getelementptr inbounds %struct.cJSON, ptr %31, i32 0, i32 2
  %32 = load ptr, ptr %child34, align 8
  store ptr %32, ptr %child, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end46, %if.end33
  %33 = load ptr, ptr %child, align 8
  %cmp = icmp ne ptr %33, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %34 = load i64, ptr %depth.addr, align 8
  %cmp35 = icmp uge i64 %34, 10000
  br i1 %cmp35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %while.body
  br label %fail

if.end37:                                         ; preds = %while.body
  %35 = load ptr, ptr %child, align 8
  %36 = load i64, ptr %depth.addr, align 8
  %add = add i64 %36, 1
  %call38 = call ptr @cJSON_Duplicate_rec(ptr noundef %35, i64 noundef %add, i32 noundef 1)
  store ptr %call38, ptr %newchild, align 8
  %37 = load ptr, ptr %newchild, align 8
  %tobool39 = icmp ne ptr %37, null
  br i1 %tobool39, label %if.end41, label %if.then40

if.then40:                                        ; preds = %if.end37
  br label %fail

if.end41:                                         ; preds = %if.end37
  %38 = load ptr, ptr %next, align 8
  %cmp42 = icmp ne ptr %38, null
  br i1 %cmp42, label %if.then43, label %if.else

if.then43:                                        ; preds = %if.end41
  %39 = load ptr, ptr %newchild, align 8
  %40 = load ptr, ptr %next, align 8
  %next44 = getelementptr inbounds %struct.cJSON, ptr %40, i32 0, i32 0
  store ptr %39, ptr %next44, align 8
  %41 = load ptr, ptr %next, align 8
  %42 = load ptr, ptr %newchild, align 8
  %prev = getelementptr inbounds %struct.cJSON, ptr %42, i32 0, i32 1
  store ptr %41, ptr %prev, align 8
  %43 = load ptr, ptr %newchild, align 8
  store ptr %43, ptr %next, align 8
  br label %if.end46

if.else:                                          ; preds = %if.end41
  %44 = load ptr, ptr %newchild, align 8
  %45 = load ptr, ptr %newitem, align 8
  %child45 = getelementptr inbounds %struct.cJSON, ptr %45, i32 0, i32 2
  store ptr %44, ptr %child45, align 8
  %46 = load ptr, ptr %newchild, align 8
  store ptr %46, ptr %next, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.else, %if.then43
  %47 = load ptr, ptr %child, align 8
  %next47 = getelementptr inbounds %struct.cJSON, ptr %47, i32 0, i32 0
  %48 = load ptr, ptr %next47, align 8
  store ptr %48, ptr %child, align 8
  br label %while.cond, !llvm.loop !17

while.end:                                        ; preds = %while.cond
  %49 = load ptr, ptr %newitem, align 8
  %tobool48 = icmp ne ptr %49, null
  br i1 %tobool48, label %land.lhs.true, label %if.end54

land.lhs.true:                                    ; preds = %while.end
  %50 = load ptr, ptr %newitem, align 8
  %child49 = getelementptr inbounds %struct.cJSON, ptr %50, i32 0, i32 2
  %51 = load ptr, ptr %child49, align 8
  %tobool50 = icmp ne ptr %51, null
  br i1 %tobool50, label %if.then51, label %if.end54

if.then51:                                        ; preds = %land.lhs.true
  %52 = load ptr, ptr %newchild, align 8
  %53 = load ptr, ptr %newitem, align 8
  %child52 = getelementptr inbounds %struct.cJSON, ptr %53, i32 0, i32 2
  %54 = load ptr, ptr %child52, align 8
  %prev53 = getelementptr inbounds %struct.cJSON, ptr %54, i32 0, i32 1
  store ptr %52, ptr %prev53, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %land.lhs.true, %while.end
  %55 = load ptr, ptr %newitem, align 8
  store ptr %55, ptr %retval, align 8
  br label %return

fail:                                             ; preds = %if.then40, %if.then36, %if.then28, %if.then14, %if.then2, %if.then
  %56 = load ptr, ptr %newitem, align 8
  %cmp55 = icmp ne ptr %56, null
  br i1 %cmp55, label %if.then56, label %if.end57

if.then56:                                        ; preds = %fail
  %57 = load ptr, ptr %newitem, align 8
  call void @cJSON_Delete(ptr noundef %57)
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %fail
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end57, %if.end54, %if.then32
  %58 = load ptr, ptr %retval, align 8
  ret ptr %58
}

; Function Attrs: nounwind ssp uwtable
define void @cJSON_Minify(ptr noundef %json) #0 {
entry:
  %json.addr = alloca ptr, align 8
  %into = alloca ptr, align 8
  store ptr %json, ptr %json.addr, align 8
  %0 = load ptr, ptr %json.addr, align 8
  store ptr %0, ptr %into, align 8
  %1 = load ptr, ptr %json.addr, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end
  %2 = load ptr, ptr %json.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 0
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %json.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %4, i64 0
  %5 = load i8, ptr %arrayidx3, align 1
  %conv4 = sext i8 %5 to i32
  switch i32 %conv4, label %sw.default [
    i32 32, label %sw.bb
    i32 9, label %sw.bb
    i32 13, label %sw.bb
    i32 10, label %sw.bb
    i32 47, label %sw.bb5
    i32 34, label %sw.bb20
  ]

sw.bb:                                            ; preds = %while.body, %while.body, %while.body, %while.body
  %6 = load ptr, ptr %json.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i32 1
  store ptr %incdec.ptr, ptr %json.addr, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %while.body
  %7 = load ptr, ptr %json.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %7, i64 1
  %8 = load i8, ptr %arrayidx6, align 1
  %conv7 = sext i8 %8 to i32
  %cmp8 = icmp eq i32 %conv7, 47
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %sw.bb5
  call void @pc_inline_source_snapshot_public_repos_cJSON_tests_misc_utils_tests_14(ptr noundef %json.addr)
  br label %if.end19

if.else:                                          ; preds = %sw.bb5
  %9 = load ptr, ptr %json.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %9, i64 1
  %10 = load i8, ptr %arrayidx11, align 1
  %conv12 = sext i8 %10 to i32
  %cmp13 = icmp eq i32 %conv12, 42
  br i1 %cmp13, label %if.then15, label %if.else16

if.then15:                                        ; preds = %if.else
  call void @skip_multiline_comment(ptr noundef %json.addr)
  br label %if.end18

if.else16:                                        ; preds = %if.else
  %11 = load ptr, ptr %json.addr, align 8
  %incdec.ptr17 = getelementptr inbounds i8, ptr %11, i32 1
  store ptr %incdec.ptr17, ptr %json.addr, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.else16, %if.then15
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then10
  br label %sw.epilog

sw.bb20:                                          ; preds = %while.body
  call void @minify_string(ptr noundef %json.addr, ptr noundef %into)
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %12 = load ptr, ptr %json.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, ptr %12, i64 0
  %13 = load i8, ptr %arrayidx21, align 1
  %14 = load ptr, ptr %into, align 8
  %arrayidx22 = getelementptr inbounds i8, ptr %14, i64 0
  store i8 %13, ptr %arrayidx22, align 1
  %15 = load ptr, ptr %json.addr, align 8
  %incdec.ptr23 = getelementptr inbounds i8, ptr %15, i32 1
  store ptr %incdec.ptr23, ptr %json.addr, align 8
  %16 = load ptr, ptr %into, align 8
  %incdec.ptr24 = getelementptr inbounds i8, ptr %16, i32 1
  store ptr %incdec.ptr24, ptr %into, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb20, %if.end19, %sw.bb
  br label %while.cond, !llvm.loop !18

while.end:                                        ; preds = %while.cond
  %17 = load ptr, ptr %into, align 8
  store i8 0, ptr %17, align 1
  br label %return

return:                                           ; preds = %while.end, %if.then
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @skip_oneline_comment(ptr noundef %input) #0 {
entry:
  %input.addr = alloca ptr, align 8
  store ptr %input, ptr %input.addr, align 8
  %0 = load ptr, ptr %input.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 2
  store ptr %add.ptr, ptr %0, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %input.addr, align 8
  %3 = load ptr, ptr %2, align 8
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 0
  %4 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %input.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %6, i64 0
  %7 = load i8, ptr %arrayidx2, align 1
  %conv3 = sext i8 %7 to i32
  %cmp4 = icmp eq i32 %conv3, 10
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load ptr, ptr %input.addr, align 8
  %9 = load ptr, ptr %8, align 8
  %add.ptr6 = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %add.ptr6, ptr %8, align 8
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load ptr, ptr %input.addr, align 8
  %11 = load ptr, ptr %10, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %11, i32 1
  store ptr %incdec.ptr, ptr %10, align 8
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @skip_multiline_comment(ptr noundef %input) #0 {
entry:
  %input.addr = alloca ptr, align 8
  store ptr %input, ptr %input.addr, align 8
  %0 = load ptr, ptr %input.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 2
  store ptr %add.ptr, ptr %0, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %input.addr, align 8
  %3 = load ptr, ptr %2, align 8
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 0
  %4 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %input.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %6, i64 0
  %7 = load i8, ptr %arrayidx2, align 1
  %conv3 = sext i8 %7 to i32
  %cmp4 = icmp eq i32 %conv3, 42
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %8 = load ptr, ptr %input.addr, align 8
  %9 = load ptr, ptr %8, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %9, i64 1
  %10 = load i8, ptr %arrayidx6, align 1
  %conv7 = sext i8 %10 to i32
  %cmp8 = icmp eq i32 %conv7, 47
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %11 = load ptr, ptr %input.addr, align 8
  %12 = load ptr, ptr %11, align 8
  %add.ptr10 = getelementptr inbounds i8, ptr %12, i64 2
  store ptr %add.ptr10, ptr %11, align 8
  br label %for.end

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load ptr, ptr %input.addr, align 8
  %14 = load ptr, ptr %13, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %14, i32 1
  store ptr %incdec.ptr, ptr %13, align 8
  br label %for.cond, !llvm.loop !20

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @minify_string(ptr noundef %input, ptr noundef %output) #0 {
entry:
  %input.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  store ptr %input, ptr %input.addr, align 8
  store ptr %output, ptr %output.addr, align 8
  %0 = load ptr, ptr %input.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0
  %2 = load i8, ptr %arrayidx, align 1
  %3 = load ptr, ptr %output.addr, align 8
  %4 = load ptr, ptr %3, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %4, i64 0
  store i8 %2, ptr %arrayidx1, align 1
  %5 = load ptr, ptr %input.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %add.ptr, ptr %5, align 8
  %7 = load ptr, ptr %output.addr, align 8
  %8 = load ptr, ptr %7, align 8
  %add.ptr2 = getelementptr inbounds i8, ptr %8, i64 1
  store ptr %add.ptr2, ptr %7, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load ptr, ptr %input.addr, align 8
  %10 = load ptr, ptr %9, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %10, i64 0
  %11 = load i8, ptr %arrayidx3, align 1
  %conv = sext i8 %11 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %input.addr, align 8
  %13 = load ptr, ptr %12, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %13, i64 0
  %14 = load i8, ptr %arrayidx5, align 1
  %15 = load ptr, ptr %output.addr, align 8
  %16 = load ptr, ptr %15, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %16, i64 0
  store i8 %14, ptr %arrayidx6, align 1
  %17 = load ptr, ptr %input.addr, align 8
  %18 = load ptr, ptr %17, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %18, i64 0
  %19 = load i8, ptr %arrayidx7, align 1
  %conv8 = sext i8 %19 to i32
  %cmp9 = icmp eq i32 %conv8, 34
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %20 = load ptr, ptr %output.addr, align 8
  %21 = load ptr, ptr %20, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %21, i64 0
  store i8 34, ptr %arrayidx11, align 1
  %22 = load ptr, ptr %input.addr, align 8
  %23 = load ptr, ptr %22, align 8
  %add.ptr12 = getelementptr inbounds i8, ptr %23, i64 1
  store ptr %add.ptr12, ptr %22, align 8
  %24 = load ptr, ptr %output.addr, align 8
  %25 = load ptr, ptr %24, align 8
  %add.ptr13 = getelementptr inbounds i8, ptr %25, i64 1
  store ptr %add.ptr13, ptr %24, align 8
  br label %for.end

if.else:                                          ; preds = %for.body
  %26 = load ptr, ptr %input.addr, align 8
  %27 = load ptr, ptr %26, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %27, i64 0
  %28 = load i8, ptr %arrayidx14, align 1
  %conv15 = sext i8 %28 to i32
  %cmp16 = icmp eq i32 %conv15, 92
  br i1 %cmp16, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else
  %29 = load ptr, ptr %input.addr, align 8
  %30 = load ptr, ptr %29, align 8
  %arrayidx18 = getelementptr inbounds i8, ptr %30, i64 1
  %31 = load i8, ptr %arrayidx18, align 1
  %conv19 = sext i8 %31 to i32
  %cmp20 = icmp eq i32 %conv19, 34
  br i1 %cmp20, label %if.then22, label %if.end

if.then22:                                        ; preds = %land.lhs.true
  %32 = load ptr, ptr %input.addr, align 8
  %33 = load ptr, ptr %32, align 8
  %arrayidx23 = getelementptr inbounds i8, ptr %33, i64 1
  %34 = load i8, ptr %arrayidx23, align 1
  %35 = load ptr, ptr %output.addr, align 8
  %36 = load ptr, ptr %35, align 8
  %arrayidx24 = getelementptr inbounds i8, ptr %36, i64 1
  store i8 %34, ptr %arrayidx24, align 1
  %37 = load ptr, ptr %input.addr, align 8
  %38 = load ptr, ptr %37, align 8
  %add.ptr25 = getelementptr inbounds i8, ptr %38, i64 1
  store ptr %add.ptr25, ptr %37, align 8
  %39 = load ptr, ptr %output.addr, align 8
  %40 = load ptr, ptr %39, align 8
  %add.ptr26 = getelementptr inbounds i8, ptr %40, i64 1
  store ptr %add.ptr26, ptr %39, align 8
  br label %if.end

if.end:                                           ; preds = %if.then22, %land.lhs.true, %if.else
  br label %if.end27

if.end27:                                         ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end27
  %41 = load ptr, ptr %input.addr, align 8
  %42 = load ptr, ptr %41, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %42, i32 1
  store ptr %incdec.ptr, ptr %41, align 8
  %43 = load ptr, ptr %output.addr, align 8
  %44 = load ptr, ptr %43, align 8
  %incdec.ptr28 = getelementptr inbounds i8, ptr %44, i32 1
  store ptr %incdec.ptr28, ptr %43, align 8
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @cJSON_IsInvalid(ptr noundef %item) #0 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca ptr, align 8
  store ptr %item, ptr %item.addr, align 8
  %0 = load ptr, ptr %item.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %item.addr, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %type, align 8
  %and = and i32 %2, 255
  %cmp1 = icmp eq i32 %and, 0
  %conv = zext i1 %cmp1 to i32
  store i32 %conv, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

; Function Attrs: nounwind ssp uwtable
define i32 @cJSON_IsFalse(ptr noundef %item) #0 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca ptr, align 8
  store ptr %item, ptr %item.addr, align 8
  %0 = load ptr, ptr %item.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %item.addr, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %type, align 8
  %and = and i32 %2, 255
  %cmp1 = icmp eq i32 %and, 1
  %conv = zext i1 %cmp1 to i32
  store i32 %conv, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

; Function Attrs: nounwind ssp uwtable
define i32 @cJSON_IsTrue(ptr noundef %item) #0 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca ptr, align 8
  store ptr %item, ptr %item.addr, align 8
  %0 = load ptr, ptr %item.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %item.addr, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %type, align 8
  %and = and i32 %2, 255
  %cmp1 = icmp eq i32 %and, 2
  %conv = zext i1 %cmp1 to i32
  store i32 %conv, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

; Function Attrs: nounwind ssp uwtable
define i32 @cJSON_IsBool(ptr noundef %item) #0 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca ptr, align 8
  store ptr %item, ptr %item.addr, align 8
  %0 = load ptr, ptr %item.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %item.addr, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %type, align 8
  %and = and i32 %2, 3
  %cmp1 = icmp ne i32 %and, 0
  %conv = zext i1 %cmp1 to i32
  store i32 %conv, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

; Function Attrs: nounwind ssp uwtable
define i32 @cJSON_IsNull(ptr noundef %item) #0 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca ptr, align 8
  store ptr %item, ptr %item.addr, align 8
  %0 = load ptr, ptr %item.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %item.addr, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %type, align 8
  %and = and i32 %2, 255
  %cmp1 = icmp eq i32 %and, 4
  %conv = zext i1 %cmp1 to i32
  store i32 %conv, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

; Function Attrs: nounwind ssp uwtable
define i32 @cJSON_IsArray(ptr noundef %item) #0 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca ptr, align 8
  store ptr %item, ptr %item.addr, align 8
  %0 = load ptr, ptr %item.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %item.addr, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %type, align 8
  %and = and i32 %2, 255
  %cmp1 = icmp eq i32 %and, 32
  %conv = zext i1 %cmp1 to i32
  store i32 %conv, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

; Function Attrs: nounwind ssp uwtable
define i32 @cJSON_IsObject(ptr noundef %item) #0 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca ptr, align 8
  store ptr %item, ptr %item.addr, align 8
  %0 = load ptr, ptr %item.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %item.addr, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %type, align 8
  %and = and i32 %2, 255
  %cmp1 = icmp eq i32 %and, 64
  %conv = zext i1 %cmp1 to i32
  store i32 %conv, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

; Function Attrs: nounwind ssp uwtable
define i32 @cJSON_IsRaw(ptr noundef %item) #0 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca ptr, align 8
  store ptr %item, ptr %item.addr, align 8
  %0 = load ptr, ptr %item.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %item.addr, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %type, align 8
  %and = and i32 %2, 255
  %cmp1 = icmp eq i32 %and, 128
  %conv = zext i1 %cmp1 to i32
  store i32 %conv, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

; Function Attrs: nounwind ssp uwtable
define i32 @cJSON_Compare(ptr noundef %a, ptr noundef %b, i32 noundef %case_sensitive) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %case_sensitive.addr = alloca i32, align 4
  %a_element = alloca ptr, align 8
  %b_element = alloca ptr, align 8
  %a_element44 = alloca ptr, align 8
  %b_element45 = alloca ptr, align 8
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
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 4, label %sw.bb
    i32 8, label %sw.bb
    i32 16, label %sw.bb
    i32 128, label %sw.bb
    i32 32, label %sw.bb
    i32 64, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb
  %8 = load ptr, ptr %a.addr, align 8
  %9 = load ptr, ptr %b.addr, align 8
  %cmp8 = icmp eq ptr %8, %9
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %sw.epilog
  store i32 1, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %sw.epilog
  %10 = load ptr, ptr %a.addr, align 8
  %type11 = getelementptr inbounds %struct.cJSON, ptr %10, i32 0, i32 3
  %11 = load i32, ptr %type11, align 8
  %and12 = and i32 %11, 255
  switch i32 %and12, label %sw.default82 [
    i32 1, label %sw.bb13
    i32 2, label %sw.bb13
    i32 4, label %sw.bb13
    i32 8, label %sw.bb14
    i32 16, label %sw.bb18
    i32 128, label %sw.bb18
    i32 32, label %sw.bb31
    i32 64, label %sw.bb43
  ]

sw.bb13:                                          ; preds = %if.end10, %if.end10, %if.end10
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb14:                                          ; preds = %if.end10
  %12 = load ptr, ptr %a.addr, align 8
  %valuedouble = getelementptr inbounds %struct.cJSON, ptr %12, i32 0, i32 6
  %13 = load double, ptr %valuedouble, align 8
  %14 = load ptr, ptr %b.addr, align 8
  %valuedouble15 = getelementptr inbounds %struct.cJSON, ptr %14, i32 0, i32 6
  %15 = load double, ptr %valuedouble15, align 8
  %call = call i32 @compare_double(double noundef %13, double noundef %15)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then16, label %if.end17

if.then16:                                        ; preds = %sw.bb14
  store i32 1, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %sw.bb14
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb18:                                          ; preds = %if.end10, %if.end10
  %16 = load ptr, ptr %a.addr, align 8
  %valuestring = getelementptr inbounds %struct.cJSON, ptr %16, i32 0, i32 4
  %17 = load ptr, ptr %valuestring, align 8
  %cmp19 = icmp eq ptr %17, null
  br i1 %cmp19, label %if.then23, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %sw.bb18
  %18 = load ptr, ptr %b.addr, align 8
  %valuestring21 = getelementptr inbounds %struct.cJSON, ptr %18, i32 0, i32 4
  %19 = load ptr, ptr %valuestring21, align 8
  %cmp22 = icmp eq ptr %19, null
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %lor.lhs.false20, %sw.bb18
  store i32 0, ptr %retval, align 4
  br label %return

if.end24:                                         ; preds = %lor.lhs.false20
  %20 = load ptr, ptr %a.addr, align 8
  %valuestring25 = getelementptr inbounds %struct.cJSON, ptr %20, i32 0, i32 4
  %21 = load ptr, ptr %valuestring25, align 8
  %22 = load ptr, ptr %b.addr, align 8
  %valuestring26 = getelementptr inbounds %struct.cJSON, ptr %22, i32 0, i32 4
  %23 = load ptr, ptr %valuestring26, align 8
  %call27 = call i32 @strcmp(ptr noundef %21, ptr noundef %23)
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end24
  store i32 1, ptr %retval, align 4
  br label %return

if.end30:                                         ; preds = %if.end24
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb31:                                          ; preds = %if.end10
  %24 = load ptr, ptr %a.addr, align 8
  %child = getelementptr inbounds %struct.cJSON, ptr %24, i32 0, i32 2
  %25 = load ptr, ptr %child, align 8
  store ptr %25, ptr %a_element, align 8
  %26 = load ptr, ptr %b.addr, align 8
  %child32 = getelementptr inbounds %struct.cJSON, ptr %26, i32 0, i32 2
  %27 = load ptr, ptr %child32, align 8
  store ptr %27, ptr %b_element, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end38, %sw.bb31
  %28 = load ptr, ptr %a_element, align 8
  %cmp33 = icmp ne ptr %28, null
  br i1 %cmp33, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %29 = load ptr, ptr %b_element, align 8
  %cmp34 = icmp ne ptr %29, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %30 = phi i1 [ false, %for.cond ], [ %cmp34, %land.rhs ]
  br i1 %30, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %31 = load ptr, ptr %a_element, align 8
  %32 = load ptr, ptr %b_element, align 8
  %33 = load i32, ptr %case_sensitive.addr, align 4
  %call35 = call i32 @cJSON_Compare(ptr noundef %31, ptr noundef %32, i32 noundef %33)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.end38, label %if.then37

if.then37:                                        ; preds = %for.body
  store i32 0, ptr %retval, align 4
  br label %return

if.end38:                                         ; preds = %for.body
  %34 = load ptr, ptr %a_element, align 8
  %next = getelementptr inbounds %struct.cJSON, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %next, align 8
  store ptr %35, ptr %a_element, align 8
  %36 = load ptr, ptr %b_element, align 8
  %next39 = getelementptr inbounds %struct.cJSON, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %next39, align 8
  store ptr %37, ptr %b_element, align 8
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %land.end
  %38 = load ptr, ptr %a_element, align 8
  %39 = load ptr, ptr %b_element, align 8
  %cmp40 = icmp ne ptr %38, %39
  br i1 %cmp40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %for.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end42:                                         ; preds = %for.end
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb43:                                          ; preds = %if.end10
  store ptr null, ptr %a_element44, align 8
  store ptr null, ptr %b_element45, align 8
  %40 = load ptr, ptr %a.addr, align 8
  %cmp46 = icmp ne ptr %40, null
  br i1 %cmp46, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb43
  %41 = load ptr, ptr %a.addr, align 8
  %child47 = getelementptr inbounds %struct.cJSON, ptr %41, i32 0, i32 2
  %42 = load ptr, ptr %child47, align 8
  br label %cond.end

cond.false:                                       ; preds = %sw.bb43
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %42, %cond.true ], [ null, %cond.false ]
  store ptr %cond, ptr %a_element44, align 8
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc, %cond.end
  %43 = load ptr, ptr %a_element44, align 8
  %cmp49 = icmp ne ptr %43, null
  br i1 %cmp49, label %for.body50, label %for.end60

for.body50:                                       ; preds = %for.cond48
  %44 = load ptr, ptr %b.addr, align 8
  %45 = load ptr, ptr %a_element44, align 8
  %string = getelementptr inbounds %struct.cJSON, ptr %45, i32 0, i32 7
  %46 = load ptr, ptr %string, align 8
  %47 = load i32, ptr %case_sensitive.addr, align 4
  %call51 = call ptr @get_object_item(ptr noundef %44, ptr noundef %46, i32 noundef %47)
  store ptr %call51, ptr %b_element45, align 8
  %48 = load ptr, ptr %b_element45, align 8
  %cmp52 = icmp eq ptr %48, null
  br i1 %cmp52, label %if.then53, label %if.end54

if.then53:                                        ; preds = %for.body50
  store i32 0, ptr %retval, align 4
  br label %return

if.end54:                                         ; preds = %for.body50
  %49 = load ptr, ptr %a_element44, align 8
  %50 = load ptr, ptr %b_element45, align 8
  %51 = load i32, ptr %case_sensitive.addr, align 4
  %call55 = call i32 @cJSON_Compare(ptr noundef %49, ptr noundef %50, i32 noundef %51)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.end58, label %if.then57

if.then57:                                        ; preds = %if.end54
  store i32 0, ptr %retval, align 4
  br label %return

if.end58:                                         ; preds = %if.end54
  br label %for.inc

for.inc:                                          ; preds = %if.end58
  %52 = load ptr, ptr %a_element44, align 8
  %next59 = getelementptr inbounds %struct.cJSON, ptr %52, i32 0, i32 0
  %53 = load ptr, ptr %next59, align 8
  store ptr %53, ptr %a_element44, align 8
  br label %for.cond48, !llvm.loop !23

for.end60:                                        ; preds = %for.cond48
  %54 = load ptr, ptr %b.addr, align 8
  %cmp61 = icmp ne ptr %54, null
  br i1 %cmp61, label %cond.true62, label %cond.false64

cond.true62:                                      ; preds = %for.end60
  %55 = load ptr, ptr %b.addr, align 8
  %child63 = getelementptr inbounds %struct.cJSON, ptr %55, i32 0, i32 2
  %56 = load ptr, ptr %child63, align 8
  br label %cond.end65

cond.false64:                                     ; preds = %for.end60
  br label %cond.end65

cond.end65:                                       ; preds = %cond.false64, %cond.true62
  %cond66 = phi ptr [ %56, %cond.true62 ], [ null, %cond.false64 ]
  store ptr %cond66, ptr %b_element45, align 8
  br label %for.cond67

for.cond67:                                       ; preds = %for.inc79, %cond.end65
  %57 = load ptr, ptr %b_element45, align 8
  %cmp68 = icmp ne ptr %57, null
  br i1 %cmp68, label %for.body69, label %for.end81

for.body69:                                       ; preds = %for.cond67
  %58 = load ptr, ptr %a.addr, align 8
  %59 = load ptr, ptr %b_element45, align 8
  %string70 = getelementptr inbounds %struct.cJSON, ptr %59, i32 0, i32 7
  %60 = load ptr, ptr %string70, align 8
  %61 = load i32, ptr %case_sensitive.addr, align 4
  %call71 = call ptr @get_object_item(ptr noundef %58, ptr noundef %60, i32 noundef %61)
  store ptr %call71, ptr %a_element44, align 8
  %62 = load ptr, ptr %a_element44, align 8
  %cmp72 = icmp eq ptr %62, null
  br i1 %cmp72, label %if.then73, label %if.end74

if.then73:                                        ; preds = %for.body69
  store i32 0, ptr %retval, align 4
  br label %return

if.end74:                                         ; preds = %for.body69
  %63 = load ptr, ptr %b_element45, align 8
  %64 = load ptr, ptr %a_element44, align 8
  %65 = load i32, ptr %case_sensitive.addr, align 4
  %call75 = call i32 @cJSON_Compare(ptr noundef %63, ptr noundef %64, i32 noundef %65)
  %tobool76 = icmp ne i32 %call75, 0
  br i1 %tobool76, label %if.end78, label %if.then77

if.then77:                                        ; preds = %if.end74
  store i32 0, ptr %retval, align 4
  br label %return

if.end78:                                         ; preds = %if.end74
  br label %for.inc79

for.inc79:                                        ; preds = %if.end78
  %66 = load ptr, ptr %b_element45, align 8
  %next80 = getelementptr inbounds %struct.cJSON, ptr %66, i32 0, i32 0
  %67 = load ptr, ptr %next80, align 8
  store ptr %67, ptr %b_element45, align 8
  br label %for.cond67, !llvm.loop !24

for.end81:                                        ; preds = %for.cond67
  store i32 1, ptr %retval, align 4
  br label %return

sw.default82:                                     ; preds = %if.end10
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.default82, %for.end81, %if.then77, %if.then73, %if.then57, %if.then53, %if.end42, %if.then41, %if.then37, %if.end30, %if.then29, %if.then23, %if.end17, %if.then16, %sw.bb13, %if.then9, %sw.default, %if.then
  %68 = load i32, ptr %retval, align 4
  ret i32 %68
}

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

declare i32 @strcmp(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_malloc(i64 noundef %size) #0 {
entry:
  %size.addr = alloca i64, align 8
  store i64 %size, ptr %size.addr, align 8
  %0 = load ptr, ptr @global_hooks, align 8
  %1 = load i64, ptr %size.addr, align 8
  %call = call ptr %0(i64 noundef %1)
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define void @reset(ptr noundef %item) #0 {
entry:
  %item.addr = alloca ptr, align 8
  store ptr %item, ptr %item.addr, align 8
  %0 = load ptr, ptr %item.addr, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %item.addr, align 8
  %child = getelementptr inbounds %struct.cJSON, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %child, align 8
  %cmp1 = icmp ne ptr %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %item.addr, align 8
  %child2 = getelementptr inbounds %struct.cJSON, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %child2, align 8
  call void @cJSON_Delete(ptr noundef %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %5 = load ptr, ptr %item.addr, align 8
  %valuestring = getelementptr inbounds %struct.cJSON, ptr %5, i32 0, i32 4
  %6 = load ptr, ptr %valuestring, align 8
  %cmp3 = icmp ne ptr %6, null
  br i1 %cmp3, label %land.lhs.true4, label %if.end7

land.lhs.true4:                                   ; preds = %if.end
  %7 = load ptr, ptr %item.addr, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %7, i32 0, i32 3
  %8 = load i32, ptr %type, align 8
  %and = and i32 %8, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end7, label %if.then5

if.then5:                                         ; preds = %land.lhs.true4
  %9 = load ptr, ptr getelementptr inbounds (%struct.internal_hooks, ptr @global_hooks, i32 0, i32 1), align 8
  %10 = load ptr, ptr %item.addr, align 8
  %valuestring6 = getelementptr inbounds %struct.cJSON, ptr %10, i32 0, i32 4
  %11 = load ptr, ptr %valuestring6, align 8
  call void %9(ptr noundef %11)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %land.lhs.true4, %if.end
  %12 = load ptr, ptr %item.addr, align 8
  %string = getelementptr inbounds %struct.cJSON, ptr %12, i32 0, i32 7
  %13 = load ptr, ptr %string, align 8
  %cmp8 = icmp ne ptr %13, null
  br i1 %cmp8, label %land.lhs.true9, label %if.end15

land.lhs.true9:                                   ; preds = %if.end7
  %14 = load ptr, ptr %item.addr, align 8
  %type10 = getelementptr inbounds %struct.cJSON, ptr %14, i32 0, i32 3
  %15 = load i32, ptr %type10, align 8
  %and11 = and i32 %15, 512
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %if.end15, label %if.then13

if.then13:                                        ; preds = %land.lhs.true9
  %16 = load ptr, ptr getelementptr inbounds (%struct.internal_hooks, ptr @global_hooks, i32 0, i32 1), align 8
  %17 = load ptr, ptr %item.addr, align 8
  %string14 = getelementptr inbounds %struct.cJSON, ptr %17, i32 0, i32 7
  %18 = load ptr, ptr %string14, align 8
  call void %16(ptr noundef %18)
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %land.lhs.true9, %if.end7
  %19 = load ptr, ptr %item.addr, align 8
  %20 = load ptr, ptr %item.addr, align 8
  %21 = call i64 @llvm.objectsize.i64.p0(ptr %20, i1 false, i1 true, i1 false)
  %call = call ptr @__memset_chk(ptr noundef %19, i32 noundef 0, i64 noundef 64, i64 noundef %21) #9
  ret void
}

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #4

; Function Attrs: nounwind ssp uwtable
define ptr @read_file(ptr noundef %filename) #0 {
entry:
  %filename.addr = alloca ptr, align 8
  %file = alloca ptr, align 8
  %length = alloca i64, align 8
  %content = alloca ptr, align 8
  %read_chars = alloca i64, align 8
  store ptr %filename, ptr %filename.addr, align 8
  store ptr null, ptr %file, align 8
  store i64 0, ptr %length, align 8
  store ptr null, ptr %content, align 8
  store i64 0, ptr %read_chars, align 8
  %0 = load ptr, ptr %filename.addr, align 8
  %call = call ptr @"\01_fopen"(ptr noundef %0, ptr noundef @.str.1)
  store ptr %call, ptr %file, align 8
  %1 = load ptr, ptr %file, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %file, align 8
  %call1 = call i32 @fseek(ptr noundef %2, i64 noundef 0, i32 noundef 2)
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %3 = load ptr, ptr %file, align 8
  %call5 = call i64 @ftell(ptr noundef %3)
  store i64 %call5, ptr %length, align 8
  %4 = load i64, ptr %length, align 8
  %cmp6 = icmp slt i64 %4, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %5 = load ptr, ptr %file, align 8
  %call9 = call i32 @fseek(ptr noundef %5, i64 noundef 0, i32 noundef 0)
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %6 = load i64, ptr %length, align 8
  %add = add i64 %6, 1
  %call13 = call ptr @malloc(i64 noundef %add) #10
  store ptr %call13, ptr %content, align 8
  %7 = load ptr, ptr %content, align 8
  %cmp14 = icmp eq ptr %7, null
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %8 = load ptr, ptr %content, align 8
  %9 = load i64, ptr %length, align 8
  %10 = load ptr, ptr %file, align 8
  %call17 = call i64 @fread(ptr noundef %8, i64 noundef 1, i64 noundef %9, ptr noundef %10)
  store i64 %call17, ptr %read_chars, align 8
  %11 = load i64, ptr %read_chars, align 8
  %12 = load i64, ptr %length, align 8
  %cmp18 = icmp ne i64 %11, %12
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  %13 = load ptr, ptr %content, align 8
  call void @free(ptr noundef %13)
  store ptr null, ptr %content, align 8
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %14 = load ptr, ptr %content, align 8
  %15 = load i64, ptr %read_chars, align 8
  %arrayidx = getelementptr inbounds i8, ptr %14, i64 %15
  store i8 0, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then19, %if.then15, %if.then11, %if.then7, %if.then3, %if.then
  %16 = load ptr, ptr %file, align 8
  %cmp21 = icmp ne ptr %16, null
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %cleanup
  %17 = load ptr, ptr %file, align 8
  %call23 = call i32 @fclose(ptr noundef %17)
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %cleanup
  %18 = load ptr, ptr %content, align 8
  ret ptr %18
}

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

declare i32 @fseek(ptr noundef, i64 noundef, i32 noundef) #1

declare i64 @ftell(ptr noundef) #1

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

declare i32 @fclose(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @UnityBegin(ptr noundef @.str.2)
  call void @UnityDefaultTestRun(ptr noundef @cjson_utils_functions_shouldnt_crash_with_null_pointers, ptr noundef @.str.3, i32 noundef 77)
  %call = call i32 @UnityEnd()
  ret i32 %call
}

declare void @UnityBegin(ptr noundef) #1

declare void @UnityDefaultTestRun(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @cjson_utils_functions_shouldnt_crash_with_null_pointers() #0 {
entry:
  %item = alloca ptr, align 8
  %call = call ptr @cJSON_CreateString(ptr noundef @.str.14)
  store ptr %call, ptr %item, align 8
  %0 = load ptr, ptr %item, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @UnityFail(ptr noundef @.str.15, i64 noundef 35)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load ptr, ptr %item, align 8
  %call1 = call ptr @cJSONUtils_GetPointer(ptr noundef %1, ptr noundef null)
  %cmp2 = icmp eq ptr %call1, null
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.end
  br label %if.end5

if.else4:                                         ; preds = %if.end
  call void @UnityFail(ptr noundef @.str.16, i64 noundef 37)
  br label %if.end5

if.end5:                                          ; preds = %if.else4, %if.then3
  %call6 = call ptr @cJSONUtils_GetPointer(ptr noundef null, ptr noundef @.str.17)
  %cmp7 = icmp eq ptr %call6, null
  br i1 %cmp7, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.end5
  br label %if.end10

if.else9:                                         ; preds = %if.end5
  call void @UnityFail(ptr noundef @.str.16, i64 noundef 38)
  br label %if.end10

if.end10:                                         ; preds = %if.else9, %if.then8
  %call11 = call ptr @cJSONUtils_GetPointerCaseSensitive(ptr noundef null, ptr noundef @.str.17)
  %cmp12 = icmp eq ptr %call11, null
  br i1 %cmp12, label %if.then13, label %if.else14

if.then13:                                        ; preds = %if.end10
  br label %if.end15

if.else14:                                        ; preds = %if.end10
  call void @UnityFail(ptr noundef @.str.16, i64 noundef 39)
  br label %if.end15

if.end15:                                         ; preds = %if.else14, %if.then13
  %2 = load ptr, ptr %item, align 8
  %call16 = call ptr @cJSONUtils_GetPointerCaseSensitive(ptr noundef %2, ptr noundef null)
  %cmp17 = icmp eq ptr %call16, null
  br i1 %cmp17, label %if.then18, label %if.else19

if.then18:                                        ; preds = %if.end15
  br label %if.end20

if.else19:                                        ; preds = %if.end15
  call void @UnityFail(ptr noundef @.str.16, i64 noundef 40)
  br label %if.end20

if.end20:                                         ; preds = %if.else19, %if.then18
  %3 = load ptr, ptr %item, align 8
  %call21 = call ptr @cJSONUtils_GeneratePatches(ptr noundef %3, ptr noundef null)
  %cmp22 = icmp eq ptr %call21, null
  br i1 %cmp22, label %if.then23, label %if.else24

if.then23:                                        ; preds = %if.end20
  br label %if.end25

if.else24:                                        ; preds = %if.end20
  call void @UnityFail(ptr noundef @.str.16, i64 noundef 41)
  br label %if.end25

if.end25:                                         ; preds = %if.else24, %if.then23
  %4 = load ptr, ptr %item, align 8
  %call26 = call ptr @cJSONUtils_GeneratePatches(ptr noundef null, ptr noundef %4)
  %cmp27 = icmp eq ptr %call26, null
  br i1 %cmp27, label %if.then28, label %if.else29

if.then28:                                        ; preds = %if.end25
  br label %if.end30

if.else29:                                        ; preds = %if.end25
  call void @UnityFail(ptr noundef @.str.16, i64 noundef 42)
  br label %if.end30

if.end30:                                         ; preds = %if.else29, %if.then28
  %5 = load ptr, ptr %item, align 8
  %call31 = call ptr @cJSONUtils_GeneratePatchesCaseSensitive(ptr noundef %5, ptr noundef null)
  %cmp32 = icmp eq ptr %call31, null
  br i1 %cmp32, label %if.then33, label %if.else34

if.then33:                                        ; preds = %if.end30
  br label %if.end35

if.else34:                                        ; preds = %if.end30
  call void @UnityFail(ptr noundef @.str.16, i64 noundef 43)
  br label %if.end35

if.end35:                                         ; preds = %if.else34, %if.then33
  %6 = load ptr, ptr %item, align 8
  %call36 = call ptr @cJSONUtils_GeneratePatchesCaseSensitive(ptr noundef null, ptr noundef %6)
  %cmp37 = icmp eq ptr %call36, null
  br i1 %cmp37, label %if.then38, label %if.else39

if.then38:                                        ; preds = %if.end35
  br label %if.end40

if.else39:                                        ; preds = %if.end35
  call void @UnityFail(ptr noundef @.str.16, i64 noundef 44)
  br label %if.end40

if.end40:                                         ; preds = %if.else39, %if.then38
  %7 = load ptr, ptr %item, align 8
  call void @cJSONUtils_AddPatchToArray(ptr noundef %7, ptr noundef @.str.18, ptr noundef @.str.19, ptr noundef null)
  %8 = load ptr, ptr %item, align 8
  %9 = load ptr, ptr %item, align 8
  call void @cJSONUtils_AddPatchToArray(ptr noundef %8, ptr noundef @.str.18, ptr noundef null, ptr noundef %9)
  %10 = load ptr, ptr %item, align 8
  %11 = load ptr, ptr %item, align 8
  call void @cJSONUtils_AddPatchToArray(ptr noundef %10, ptr noundef null, ptr noundef @.str.19, ptr noundef %11)
  %12 = load ptr, ptr %item, align 8
  call void @cJSONUtils_AddPatchToArray(ptr noundef null, ptr noundef @.str.18, ptr noundef @.str.19, ptr noundef %12)
  %13 = load ptr, ptr %item, align 8
  %call41 = call i32 @cJSONUtils_ApplyPatches(ptr noundef %13, ptr noundef null)
  %14 = load ptr, ptr %item, align 8
  %call42 = call i32 @cJSONUtils_ApplyPatches(ptr noundef null, ptr noundef %14)
  %15 = load ptr, ptr %item, align 8
  %call43 = call i32 @cJSONUtils_ApplyPatchesCaseSensitive(ptr noundef %15, ptr noundef null)
  %16 = load ptr, ptr %item, align 8
  %call44 = call i32 @cJSONUtils_ApplyPatchesCaseSensitive(ptr noundef null, ptr noundef %16)
  %17 = load ptr, ptr %item, align 8
  %call45 = call ptr @cJSONUtils_MergePatch(ptr noundef %17, ptr noundef null)
  %cmp46 = icmp eq ptr %call45, null
  br i1 %cmp46, label %if.then47, label %if.else48

if.then47:                                        ; preds = %if.end40
  br label %if.end49

if.else48:                                        ; preds = %if.end40
  call void @UnityFail(ptr noundef @.str.16, i64 noundef 53)
  br label %if.end49

if.end49:                                         ; preds = %if.else48, %if.then47
  %call50 = call ptr @cJSON_CreateString(ptr noundef @.str.14)
  store ptr %call50, ptr %item, align 8
  %18 = load ptr, ptr %item, align 8
  %call51 = call ptr @cJSONUtils_MergePatchCaseSensitive(ptr noundef %18, ptr noundef null)
  %cmp52 = icmp eq ptr %call51, null
  br i1 %cmp52, label %if.then53, label %if.else54

if.then53:                                        ; preds = %if.end49
  br label %if.end55

if.else54:                                        ; preds = %if.end49
  call void @UnityFail(ptr noundef @.str.16, i64 noundef 55)
  br label %if.end55

if.end55:                                         ; preds = %if.else54, %if.then53
  %call56 = call ptr @cJSON_CreateString(ptr noundef @.str.14)
  store ptr %call56, ptr %item, align 8
  %19 = load ptr, ptr %item, align 8
  %call57 = call ptr @cJSONUtils_FindPointerFromObjectTo(ptr noundef %19, ptr noundef null)
  %cmp58 = icmp eq ptr %call57, null
  br i1 %cmp58, label %if.then59, label %if.else60

if.then59:                                        ; preds = %if.end55
  br label %if.end61

if.else60:                                        ; preds = %if.end55
  call void @UnityFail(ptr noundef @.str.16, i64 noundef 65)
  br label %if.end61

if.end61:                                         ; preds = %if.else60, %if.then59
  %20 = load ptr, ptr %item, align 8
  %call62 = call ptr @cJSONUtils_FindPointerFromObjectTo(ptr noundef null, ptr noundef %20)
  %cmp63 = icmp eq ptr %call62, null
  br i1 %cmp63, label %if.then64, label %if.else65

if.then64:                                        ; preds = %if.end61
  br label %if.end66

if.else65:                                        ; preds = %if.end61
  call void @UnityFail(ptr noundef @.str.16, i64 noundef 66)
  br label %if.end66

if.end66:                                         ; preds = %if.else65, %if.then64
  call void @cJSONUtils_SortObject(ptr noundef null)
  call void @cJSONUtils_SortObjectCaseSensitive(ptr noundef null)
  %21 = load ptr, ptr %item, align 8
  call void @cJSON_Delete(ptr noundef %21)
  ret void
}

declare i32 @UnityEnd() #1

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #4

declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @update_offset(ptr noundef %buffer) #0 {
entry:
  %buffer.addr = alloca ptr, align 8
  %buffer_pointer = alloca ptr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  store ptr null, ptr %buffer_pointer, align 8
  %0 = load ptr, ptr %buffer.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %buffer.addr, align 8
  %buffer1 = getelementptr inbounds %struct.printbuffer, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %buffer1, align 8
  %cmp2 = icmp eq ptr %2, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %buffer.addr, align 8
  %buffer3 = getelementptr inbounds %struct.printbuffer, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %buffer3, align 8
  %5 = load ptr, ptr %buffer.addr, align 8
  %offset = getelementptr inbounds %struct.printbuffer, ptr %5, i32 0, i32 2
  %6 = load i64, ptr %offset, align 8
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 %6
  store ptr %add.ptr, ptr %buffer_pointer, align 8
  %7 = load ptr, ptr %buffer_pointer, align 8
  %call = call i64 @strlen(ptr noundef %7)
  %8 = load ptr, ptr %buffer.addr, align 8
  %offset4 = getelementptr inbounds %struct.printbuffer, ptr %8, i32 0, i32 2
  %9 = load i64, ptr %offset4, align 8
  %add = add i64 %9, %call
  store i64 %add, ptr %offset4, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @parse_string(ptr noundef %item, ptr noundef %input_buffer) #0 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca ptr, align 8
  %input_buffer.addr = alloca ptr, align 8
  %input_pointer = alloca ptr, align 8
  %input_end = alloca ptr, align 8
  %output_pointer = alloca ptr, align 8
  %output = alloca ptr, align 8
  %allocation_length = alloca i64, align 8
  %skipped_bytes = alloca i64, align 8
  %sequence_length = alloca i8, align 1
  store ptr %item, ptr %item.addr, align 8
  store ptr %input_buffer, ptr %input_buffer.addr, align 8
  %0 = load ptr, ptr %input_buffer.addr, align 8
  %content = getelementptr inbounds %struct.parse_buffer, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %content, align 8
  %2 = load ptr, ptr %input_buffer.addr, align 8
  %offset = getelementptr inbounds %struct.parse_buffer, ptr %2, i32 0, i32 2
  %3 = load i64, ptr %offset, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %3
  %add.ptr1 = getelementptr inbounds i8, ptr %add.ptr, i64 1
  store ptr %add.ptr1, ptr %input_pointer, align 8
  %4 = load ptr, ptr %input_buffer.addr, align 8
  %content2 = getelementptr inbounds %struct.parse_buffer, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %content2, align 8
  %6 = load ptr, ptr %input_buffer.addr, align 8
  %offset3 = getelementptr inbounds %struct.parse_buffer, ptr %6, i32 0, i32 2
  %7 = load i64, ptr %offset3, align 8
  %add.ptr4 = getelementptr inbounds i8, ptr %5, i64 %7
  %add.ptr5 = getelementptr inbounds i8, ptr %add.ptr4, i64 1
  store ptr %add.ptr5, ptr %input_end, align 8
  store ptr null, ptr %output_pointer, align 8
  store ptr null, ptr %output, align 8
  %8 = load ptr, ptr %input_buffer.addr, align 8
  %content6 = getelementptr inbounds %struct.parse_buffer, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %content6, align 8
  %10 = load ptr, ptr %input_buffer.addr, align 8
  %offset7 = getelementptr inbounds %struct.parse_buffer, ptr %10, i32 0, i32 2
  %11 = load i64, ptr %offset7, align 8
  %add.ptr8 = getelementptr inbounds i8, ptr %9, i64 %11
  %arrayidx = getelementptr inbounds i8, ptr %add.ptr8, i64 0
  %12 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %12 to i32
  %cmp = icmp ne i32 %conv, 34
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %fail

if.end:                                           ; preds = %entry
  store i64 0, ptr %allocation_length, align 8
  store i64 0, ptr %skipped_bytes, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end31, %if.end
  %13 = load ptr, ptr %input_end, align 8
  %14 = load ptr, ptr %input_buffer.addr, align 8
  %content10 = getelementptr inbounds %struct.parse_buffer, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %content10, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %13 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %15 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %16 = load ptr, ptr %input_buffer.addr, align 8
  %length = getelementptr inbounds %struct.parse_buffer, ptr %16, i32 0, i32 1
  %17 = load i64, ptr %length, align 8
  %cmp11 = icmp ult i64 %sub.ptr.sub, %17
  br i1 %cmp11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %18 = load ptr, ptr %input_end, align 8
  %19 = load i8, ptr %18, align 1
  %conv13 = zext i8 %19 to i32
  %cmp14 = icmp ne i32 %conv13, 34
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %20 = phi i1 [ false, %while.cond ], [ %cmp14, %land.rhs ]
  br i1 %20, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %21 = load ptr, ptr %input_end, align 8
  %arrayidx16 = getelementptr inbounds i8, ptr %21, i64 0
  %22 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %22 to i32
  %cmp18 = icmp eq i32 %conv17, 92
  br i1 %cmp18, label %if.then20, label %if.end31

if.then20:                                        ; preds = %while.body
  %23 = load ptr, ptr %input_end, align 8
  %add.ptr21 = getelementptr inbounds i8, ptr %23, i64 1
  %24 = load ptr, ptr %input_buffer.addr, align 8
  %content22 = getelementptr inbounds %struct.parse_buffer, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %content22, align 8
  %sub.ptr.lhs.cast23 = ptrtoint ptr %add.ptr21 to i64
  %sub.ptr.rhs.cast24 = ptrtoint ptr %25 to i64
  %sub.ptr.sub25 = sub i64 %sub.ptr.lhs.cast23, %sub.ptr.rhs.cast24
  %26 = load ptr, ptr %input_buffer.addr, align 8
  %length26 = getelementptr inbounds %struct.parse_buffer, ptr %26, i32 0, i32 1
  %27 = load i64, ptr %length26, align 8
  %cmp27 = icmp uge i64 %sub.ptr.sub25, %27
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.then20
  br label %fail

if.end30:                                         ; preds = %if.then20
  %28 = load i64, ptr %skipped_bytes, align 8
  %inc = add i64 %28, 1
  store i64 %inc, ptr %skipped_bytes, align 8
  %29 = load ptr, ptr %input_end, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %29, i32 1
  store ptr %incdec.ptr, ptr %input_end, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %while.body
  %30 = load ptr, ptr %input_end, align 8
  %incdec.ptr32 = getelementptr inbounds i8, ptr %30, i32 1
  store ptr %incdec.ptr32, ptr %input_end, align 8
  br label %while.cond, !llvm.loop !25

while.end:                                        ; preds = %land.end
  %31 = load ptr, ptr %input_end, align 8
  %32 = load ptr, ptr %input_buffer.addr, align 8
  %content33 = getelementptr inbounds %struct.parse_buffer, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %content33, align 8
  %sub.ptr.lhs.cast34 = ptrtoint ptr %31 to i64
  %sub.ptr.rhs.cast35 = ptrtoint ptr %33 to i64
  %sub.ptr.sub36 = sub i64 %sub.ptr.lhs.cast34, %sub.ptr.rhs.cast35
  %34 = load ptr, ptr %input_buffer.addr, align 8
  %length37 = getelementptr inbounds %struct.parse_buffer, ptr %34, i32 0, i32 1
  %35 = load i64, ptr %length37, align 8
  %cmp38 = icmp uge i64 %sub.ptr.sub36, %35
  br i1 %cmp38, label %if.then43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %36 = load ptr, ptr %input_end, align 8
  %37 = load i8, ptr %36, align 1
  %conv40 = zext i8 %37 to i32
  %cmp41 = icmp ne i32 %conv40, 34
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %lor.lhs.false, %while.end
  br label %fail

if.end44:                                         ; preds = %lor.lhs.false
  %38 = load ptr, ptr %input_end, align 8
  %39 = load ptr, ptr %input_buffer.addr, align 8
  %content45 = getelementptr inbounds %struct.parse_buffer, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %content45, align 8
  %41 = load ptr, ptr %input_buffer.addr, align 8
  %offset46 = getelementptr inbounds %struct.parse_buffer, ptr %41, i32 0, i32 2
  %42 = load i64, ptr %offset46, align 8
  %add.ptr47 = getelementptr inbounds i8, ptr %40, i64 %42
  %sub.ptr.lhs.cast48 = ptrtoint ptr %38 to i64
  %sub.ptr.rhs.cast49 = ptrtoint ptr %add.ptr47 to i64
  %sub.ptr.sub50 = sub i64 %sub.ptr.lhs.cast48, %sub.ptr.rhs.cast49
  %43 = load i64, ptr %skipped_bytes, align 8
  %sub = sub i64 %sub.ptr.sub50, %43
  store i64 %sub, ptr %allocation_length, align 8
  %44 = load ptr, ptr %input_buffer.addr, align 8
  %hooks = getelementptr inbounds %struct.parse_buffer, ptr %44, i32 0, i32 4
  %allocate = getelementptr inbounds %struct.internal_hooks, ptr %hooks, i32 0, i32 0
  %45 = load ptr, ptr %allocate, align 8
  %46 = load i64, ptr %allocation_length, align 8
  %add = add i64 %46, 1
  %call = call ptr %45(i64 noundef %add)
  store ptr %call, ptr %output, align 8
  %47 = load ptr, ptr %output, align 8
  %cmp51 = icmp eq ptr %47, null
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.end44
  br label %fail

if.end54:                                         ; preds = %if.end44
  %48 = load ptr, ptr %output, align 8
  store ptr %48, ptr %output_pointer, align 8
  br label %while.cond55

while.cond55:                                     ; preds = %if.end95, %if.end54
  %49 = load ptr, ptr %input_pointer, align 8
  %50 = load ptr, ptr %input_end, align 8
  %cmp56 = icmp ult ptr %49, %50
  br i1 %cmp56, label %while.body58, label %while.end96

while.body58:                                     ; preds = %while.cond55
  %51 = load ptr, ptr %input_pointer, align 8
  %52 = load i8, ptr %51, align 1
  %conv59 = zext i8 %52 to i32
  %cmp60 = icmp ne i32 %conv59, 92
  br i1 %cmp60, label %if.then62, label %if.else

if.then62:                                        ; preds = %while.body58
  %53 = load ptr, ptr %input_pointer, align 8
  %incdec.ptr63 = getelementptr inbounds i8, ptr %53, i32 1
  store ptr %incdec.ptr63, ptr %input_pointer, align 8
  %54 = load i8, ptr %53, align 1
  %55 = load ptr, ptr %output_pointer, align 8
  %incdec.ptr64 = getelementptr inbounds i8, ptr %55, i32 1
  store ptr %incdec.ptr64, ptr %output_pointer, align 8
  store i8 %54, ptr %55, align 1
  br label %if.end95

if.else:                                          ; preds = %while.body58
  store i8 2, ptr %sequence_length, align 1
  %56 = load ptr, ptr %input_end, align 8
  %57 = load ptr, ptr %input_pointer, align 8
  %sub.ptr.lhs.cast65 = ptrtoint ptr %56 to i64
  %sub.ptr.rhs.cast66 = ptrtoint ptr %57 to i64
  %sub.ptr.sub67 = sub i64 %sub.ptr.lhs.cast65, %sub.ptr.rhs.cast66
  %cmp68 = icmp slt i64 %sub.ptr.sub67, 1
  br i1 %cmp68, label %if.then70, label %if.end71

if.then70:                                        ; preds = %if.else
  br label %fail

if.end71:                                         ; preds = %if.else
  %58 = load ptr, ptr %input_pointer, align 8
  %arrayidx72 = getelementptr inbounds i8, ptr %58, i64 1
  %59 = load i8, ptr %arrayidx72, align 1
  %conv73 = zext i8 %59 to i32
  switch i32 %conv73, label %sw.default [
    i32 98, label %sw.bb
    i32 102, label %sw.bb75
    i32 110, label %sw.bb77
    i32 114, label %sw.bb79
    i32 116, label %sw.bb81
    i32 34, label %sw.bb83
    i32 92, label %sw.bb83
    i32 47, label %sw.bb83
    i32 117, label %sw.bb86
  ]

sw.bb:                                            ; preds = %if.end71
  %60 = load ptr, ptr %output_pointer, align 8
  %incdec.ptr74 = getelementptr inbounds i8, ptr %60, i32 1
  store ptr %incdec.ptr74, ptr %output_pointer, align 8
  store i8 8, ptr %60, align 1
  br label %sw.epilog

sw.bb75:                                          ; preds = %if.end71
  %61 = load ptr, ptr %output_pointer, align 8
  %incdec.ptr76 = getelementptr inbounds i8, ptr %61, i32 1
  store ptr %incdec.ptr76, ptr %output_pointer, align 8
  store i8 12, ptr %61, align 1
  br label %sw.epilog

sw.bb77:                                          ; preds = %if.end71
  %62 = load ptr, ptr %output_pointer, align 8
  %incdec.ptr78 = getelementptr inbounds i8, ptr %62, i32 1
  store ptr %incdec.ptr78, ptr %output_pointer, align 8
  store i8 10, ptr %62, align 1
  br label %sw.epilog

sw.bb79:                                          ; preds = %if.end71
  %63 = load ptr, ptr %output_pointer, align 8
  %incdec.ptr80 = getelementptr inbounds i8, ptr %63, i32 1
  store ptr %incdec.ptr80, ptr %output_pointer, align 8
  store i8 13, ptr %63, align 1
  br label %sw.epilog

sw.bb81:                                          ; preds = %if.end71
  %64 = load ptr, ptr %output_pointer, align 8
  %incdec.ptr82 = getelementptr inbounds i8, ptr %64, i32 1
  store ptr %incdec.ptr82, ptr %output_pointer, align 8
  store i8 9, ptr %64, align 1
  br label %sw.epilog

sw.bb83:                                          ; preds = %if.end71, %if.end71, %if.end71
  %65 = load ptr, ptr %input_pointer, align 8
  %arrayidx84 = getelementptr inbounds i8, ptr %65, i64 1
  %66 = load i8, ptr %arrayidx84, align 1
  %67 = load ptr, ptr %output_pointer, align 8
  %incdec.ptr85 = getelementptr inbounds i8, ptr %67, i32 1
  store ptr %incdec.ptr85, ptr %output_pointer, align 8
  store i8 %66, ptr %67, align 1
  br label %sw.epilog

sw.bb86:                                          ; preds = %if.end71
  %68 = load ptr, ptr %input_pointer, align 8
  %69 = load ptr, ptr %input_end, align 8
  %call87 = call zeroext i8 @utf16_literal_to_utf8(ptr noundef %68, ptr noundef %69, ptr noundef %output_pointer)
  store i8 %call87, ptr %sequence_length, align 1
  %70 = load i8, ptr %sequence_length, align 1
  %conv88 = zext i8 %70 to i32
  %cmp89 = icmp eq i32 %conv88, 0
  br i1 %cmp89, label %if.then91, label %if.end92

if.then91:                                        ; preds = %sw.bb86
  br label %fail

if.end92:                                         ; preds = %sw.bb86
  br label %sw.epilog

sw.default:                                       ; preds = %if.end71
  br label %fail

sw.epilog:                                        ; preds = %if.end92, %sw.bb83, %sw.bb81, %sw.bb79, %sw.bb77, %sw.bb75, %sw.bb
  %71 = load i8, ptr %sequence_length, align 1
  %conv93 = zext i8 %71 to i32
  %72 = load ptr, ptr %input_pointer, align 8
  %idx.ext = sext i32 %conv93 to i64
  %add.ptr94 = getelementptr inbounds i8, ptr %72, i64 %idx.ext
  store ptr %add.ptr94, ptr %input_pointer, align 8
  br label %if.end95

if.end95:                                         ; preds = %sw.epilog, %if.then62
  br label %while.cond55, !llvm.loop !26

while.end96:                                      ; preds = %while.cond55
  %73 = load ptr, ptr %output_pointer, align 8
  store i8 0, ptr %73, align 1
  %74 = load ptr, ptr %item.addr, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %74, i32 0, i32 3
  store i32 16, ptr %type, align 8
  %75 = load ptr, ptr %output, align 8
  %76 = load ptr, ptr %item.addr, align 8
  %valuestring = getelementptr inbounds %struct.cJSON, ptr %76, i32 0, i32 4
  store ptr %75, ptr %valuestring, align 8
  %77 = load ptr, ptr %input_end, align 8
  %78 = load ptr, ptr %input_buffer.addr, align 8
  %content97 = getelementptr inbounds %struct.parse_buffer, ptr %78, i32 0, i32 0
  %79 = load ptr, ptr %content97, align 8
  %sub.ptr.lhs.cast98 = ptrtoint ptr %77 to i64
  %sub.ptr.rhs.cast99 = ptrtoint ptr %79 to i64
  %sub.ptr.sub100 = sub i64 %sub.ptr.lhs.cast98, %sub.ptr.rhs.cast99
  %80 = load ptr, ptr %input_buffer.addr, align 8
  %offset101 = getelementptr inbounds %struct.parse_buffer, ptr %80, i32 0, i32 2
  store i64 %sub.ptr.sub100, ptr %offset101, align 8
  %81 = load ptr, ptr %input_buffer.addr, align 8
  %offset102 = getelementptr inbounds %struct.parse_buffer, ptr %81, i32 0, i32 2
  %82 = load i64, ptr %offset102, align 8
  %inc103 = add i64 %82, 1
  store i64 %inc103, ptr %offset102, align 8
  store i32 1, ptr %retval, align 4
  br label %return

fail:                                             ; preds = %sw.default, %if.then91, %if.then70, %if.then53, %if.then43, %if.then29, %if.then
  %83 = load ptr, ptr %output, align 8
  %cmp104 = icmp ne ptr %83, null
  br i1 %cmp104, label %if.then106, label %if.end108

if.then106:                                       ; preds = %fail
  %84 = load ptr, ptr %input_buffer.addr, align 8
  %hooks107 = getelementptr inbounds %struct.parse_buffer, ptr %84, i32 0, i32 4
  %deallocate = getelementptr inbounds %struct.internal_hooks, ptr %hooks107, i32 0, i32 1
  %85 = load ptr, ptr %deallocate, align 8
  %86 = load ptr, ptr %output, align 8
  call void %85(ptr noundef %86)
  store ptr null, ptr %output, align 8
  br label %if.end108

if.end108:                                        ; preds = %if.then106, %fail
  %87 = load ptr, ptr %input_pointer, align 8
  %cmp109 = icmp ne ptr %87, null
  br i1 %cmp109, label %if.then111, label %if.end117

if.then111:                                       ; preds = %if.end108
  %88 = load ptr, ptr %input_pointer, align 8
  %89 = load ptr, ptr %input_buffer.addr, align 8
  %content112 = getelementptr inbounds %struct.parse_buffer, ptr %89, i32 0, i32 0
  %90 = load ptr, ptr %content112, align 8
  %sub.ptr.lhs.cast113 = ptrtoint ptr %88 to i64
  %sub.ptr.rhs.cast114 = ptrtoint ptr %90 to i64
  %sub.ptr.sub115 = sub i64 %sub.ptr.lhs.cast113, %sub.ptr.rhs.cast114
  %91 = load ptr, ptr %input_buffer.addr, align 8
  %offset116 = getelementptr inbounds %struct.parse_buffer, ptr %91, i32 0, i32 2
  store i64 %sub.ptr.sub115, ptr %offset116, align 8
  br label %if.end117

if.end117:                                        ; preds = %if.then111, %if.end108
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end117, %while.end96
  %92 = load i32, ptr %retval, align 4
  ret i32 %92
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @parse_number(ptr noundef %item, ptr noundef %input_buffer) #0 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca ptr, align 8
  %input_buffer.addr = alloca ptr, align 8
  %number = alloca double, align 8
  %after_end = alloca ptr, align 8
  %number_c_string = alloca ptr, align 8
  %decimal_point = alloca i8, align 1
  %i = alloca i64, align 8
  %number_string_length = alloca i64, align 8
  %has_decimal_point = alloca i32, align 4
  store ptr %item, ptr %item.addr, align 8
  store ptr %input_buffer, ptr %input_buffer.addr, align 8
  store double 0.000000e+00, ptr %number, align 8
  store ptr null, ptr %after_end, align 8
  %call = call zeroext i8 @get_decimal_point()
  store i8 %call, ptr %decimal_point, align 1
  store i64 0, ptr %i, align 8
  store i64 0, ptr %number_string_length, align 8
  store i32 0, ptr %has_decimal_point, align 4
  %0 = load ptr, ptr %input_buffer.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %input_buffer.addr, align 8
  %content = getelementptr inbounds %struct.parse_buffer, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %content, align 8
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load ptr, ptr %input_buffer.addr, align 8
  %cmp2 = icmp ne ptr %3, null
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %4 = load ptr, ptr %input_buffer.addr, align 8
  %offset = getelementptr inbounds %struct.parse_buffer, ptr %4, i32 0, i32 2
  %5 = load i64, ptr %offset, align 8
  %6 = load i64, ptr %i, align 8
  %add = add i64 %5, %6
  %7 = load ptr, ptr %input_buffer.addr, align 8
  %length = getelementptr inbounds %struct.parse_buffer, ptr %7, i32 0, i32 1
  %8 = load i64, ptr %length, align 8
  %cmp3 = icmp ult i64 %add, %8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %9 = phi i1 [ false, %for.cond ], [ %cmp3, %land.rhs ]
  br i1 %9, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %10 = load ptr, ptr %input_buffer.addr, align 8
  %content4 = getelementptr inbounds %struct.parse_buffer, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %content4, align 8
  %12 = load ptr, ptr %input_buffer.addr, align 8
  %offset5 = getelementptr inbounds %struct.parse_buffer, ptr %12, i32 0, i32 2
  %13 = load i64, ptr %offset5, align 8
  %add.ptr = getelementptr inbounds i8, ptr %11, i64 %13
  %14 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds i8, ptr %add.ptr, i64 %14
  %15 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %15 to i32
  switch i32 %conv, label %sw.default [
    i32 48, label %sw.bb
    i32 49, label %sw.bb
    i32 50, label %sw.bb
    i32 51, label %sw.bb
    i32 52, label %sw.bb
    i32 53, label %sw.bb
    i32 54, label %sw.bb
    i32 55, label %sw.bb
    i32 56, label %sw.bb
    i32 57, label %sw.bb
    i32 43, label %sw.bb
    i32 45, label %sw.bb
    i32 101, label %sw.bb
    i32 69, label %sw.bb
    i32 46, label %sw.bb6
  ]

sw.bb:                                            ; preds = %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body
  %16 = load i64, ptr %number_string_length, align 8
  %inc = add i64 %16, 1
  store i64 %inc, ptr %number_string_length, align 8
  br label %sw.epilog

sw.bb6:                                           ; preds = %for.body
  %17 = load i64, ptr %number_string_length, align 8
  %inc7 = add i64 %17, 1
  store i64 %inc7, ptr %number_string_length, align 8
  store i32 1, ptr %has_decimal_point, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  br label %loop_end

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %18 = load i64, ptr %i, align 8
  %inc8 = add i64 %18, 1
  store i64 %inc8, ptr %i, align 8
  br label %for.cond, !llvm.loop !27

for.end:                                          ; preds = %land.end
  br label %loop_end

loop_end:                                         ; preds = %for.end, %sw.default
  %19 = load ptr, ptr %input_buffer.addr, align 8
  %hooks = getelementptr inbounds %struct.parse_buffer, ptr %19, i32 0, i32 4
  %allocate = getelementptr inbounds %struct.internal_hooks, ptr %hooks, i32 0, i32 0
  %20 = load ptr, ptr %allocate, align 8
  %21 = load i64, ptr %number_string_length, align 8
  %add9 = add i64 %21, 1
  %call10 = call ptr %20(i64 noundef %add9)
  store ptr %call10, ptr %number_c_string, align 8
  %22 = load ptr, ptr %number_c_string, align 8
  %cmp11 = icmp eq ptr %22, null
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %loop_end
  store i32 0, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %loop_end
  %23 = load ptr, ptr %number_c_string, align 8
  %24 = load ptr, ptr %input_buffer.addr, align 8
  %content15 = getelementptr inbounds %struct.parse_buffer, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %content15, align 8
  %26 = load ptr, ptr %input_buffer.addr, align 8
  %offset16 = getelementptr inbounds %struct.parse_buffer, ptr %26, i32 0, i32 2
  %27 = load i64, ptr %offset16, align 8
  %add.ptr17 = getelementptr inbounds i8, ptr %25, i64 %27
  %28 = load i64, ptr %number_string_length, align 8
  %29 = load ptr, ptr %number_c_string, align 8
  %30 = call i64 @llvm.objectsize.i64.p0(ptr %29, i1 false, i1 true, i1 false)
  %call18 = call ptr @__memcpy_chk(ptr noundef %23, ptr noundef %add.ptr17, i64 noundef %28, i64 noundef %30) #9
  %31 = load ptr, ptr %number_c_string, align 8
  %32 = load i64, ptr %number_string_length, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %31, i64 %32
  store i8 0, ptr %arrayidx19, align 1
  %33 = load i32, ptr %has_decimal_point, align 4
  %tobool = icmp ne i32 %33, 0
  br i1 %tobool, label %if.then20, label %if.end35

if.then20:                                        ; preds = %if.end14
  store i64 0, ptr %i, align 8
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc32, %if.then20
  %34 = load i64, ptr %i, align 8
  %35 = load i64, ptr %number_string_length, align 8
  %cmp22 = icmp ult i64 %34, %35
  br i1 %cmp22, label %for.body24, label %for.end34

for.body24:                                       ; preds = %for.cond21
  %36 = load ptr, ptr %number_c_string, align 8
  %37 = load i64, ptr %i, align 8
  %arrayidx25 = getelementptr inbounds i8, ptr %36, i64 %37
  %38 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %38 to i32
  %cmp27 = icmp eq i32 %conv26, 46
  br i1 %cmp27, label %if.then29, label %if.end31

if.then29:                                        ; preds = %for.body24
  %39 = load i8, ptr %decimal_point, align 1
  %40 = load ptr, ptr %number_c_string, align 8
  %41 = load i64, ptr %i, align 8
  %arrayidx30 = getelementptr inbounds i8, ptr %40, i64 %41
  store i8 %39, ptr %arrayidx30, align 1
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %for.body24
  br label %for.inc32

for.inc32:                                        ; preds = %if.end31
  %42 = load i64, ptr %i, align 8
  %inc33 = add i64 %42, 1
  store i64 %inc33, ptr %i, align 8
  br label %for.cond21, !llvm.loop !28

for.end34:                                        ; preds = %for.cond21
  br label %if.end35

if.end35:                                         ; preds = %for.end34, %if.end14
  %43 = load ptr, ptr %number_c_string, align 8
  %call36 = call double @"\01_strtod"(ptr noundef %43, ptr noundef %after_end)
  store double %call36, ptr %number, align 8
  %44 = load ptr, ptr %number_c_string, align 8
  %45 = load ptr, ptr %after_end, align 8
  %cmp37 = icmp eq ptr %44, %45
  br i1 %cmp37, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.end35
  %46 = load ptr, ptr %input_buffer.addr, align 8
  %hooks40 = getelementptr inbounds %struct.parse_buffer, ptr %46, i32 0, i32 4
  %deallocate = getelementptr inbounds %struct.internal_hooks, ptr %hooks40, i32 0, i32 1
  %47 = load ptr, ptr %deallocate, align 8
  %48 = load ptr, ptr %number_c_string, align 8
  call void %47(ptr noundef %48)
  store i32 0, ptr %retval, align 4
  br label %return

if.end41:                                         ; preds = %if.end35
  %49 = load double, ptr %number, align 8
  %50 = load ptr, ptr %item.addr, align 8
  %valuedouble = getelementptr inbounds %struct.cJSON, ptr %50, i32 0, i32 6
  store double %49, ptr %valuedouble, align 8
  %51 = load double, ptr %number, align 8
  %cmp42 = fcmp oge double %51, 0x41DFFFFFFFC00000
  br i1 %cmp42, label %if.then44, label %if.else

if.then44:                                        ; preds = %if.end41
  %52 = load ptr, ptr %item.addr, align 8
  %valueint = getelementptr inbounds %struct.cJSON, ptr %52, i32 0, i32 5
  store i32 2147483647, ptr %valueint, align 8
  br label %if.end53

if.else:                                          ; preds = %if.end41
  %53 = load double, ptr %number, align 8
  %cmp45 = fcmp ole double %53, 0xC1E0000000000000
  br i1 %cmp45, label %if.then47, label %if.else49

if.then47:                                        ; preds = %if.else
  %54 = load ptr, ptr %item.addr, align 8
  %valueint48 = getelementptr inbounds %struct.cJSON, ptr %54, i32 0, i32 5
  store i32 -2147483648, ptr %valueint48, align 8
  br label %if.end52

if.else49:                                        ; preds = %if.else
  %55 = load double, ptr %number, align 8
  %conv50 = fptosi double %55 to i32
  %56 = load ptr, ptr %item.addr, align 8
  %valueint51 = getelementptr inbounds %struct.cJSON, ptr %56, i32 0, i32 5
  store i32 %conv50, ptr %valueint51, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.else49, %if.then47
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then44
  %57 = load ptr, ptr %item.addr, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %57, i32 0, i32 3
  store i32 8, ptr %type, align 8
  %58 = load ptr, ptr %after_end, align 8
  %59 = load ptr, ptr %number_c_string, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %58 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %59 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %60 = load ptr, ptr %input_buffer.addr, align 8
  %offset54 = getelementptr inbounds %struct.parse_buffer, ptr %60, i32 0, i32 2
  %61 = load i64, ptr %offset54, align 8
  %add55 = add i64 %61, %sub.ptr.sub
  store i64 %add55, ptr %offset54, align 8
  %62 = load ptr, ptr %input_buffer.addr, align 8
  %hooks56 = getelementptr inbounds %struct.parse_buffer, ptr %62, i32 0, i32 4
  %deallocate57 = getelementptr inbounds %struct.internal_hooks, ptr %hooks56, i32 0, i32 1
  %63 = load ptr, ptr %deallocate57, align 8
  %64 = load ptr, ptr %number_c_string, align 8
  call void %63(ptr noundef %64)
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end53, %if.then39, %if.then13, %if.then
  %65 = load i32, ptr %retval, align 4
  ret i32 %65
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @parse_array(ptr noundef %item, ptr noundef %input_buffer) #0 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca ptr, align 8
  %input_buffer.addr = alloca ptr, align 8
  %head = alloca ptr, align 8
  %current_item = alloca ptr, align 8
  %new_item = alloca ptr, align 8
  store ptr %item, ptr %item.addr, align 8
  store ptr %input_buffer, ptr %input_buffer.addr, align 8
  store ptr null, ptr %head, align 8
  store ptr null, ptr %current_item, align 8
  %0 = load ptr, ptr %input_buffer.addr, align 8
  %depth = getelementptr inbounds %struct.parse_buffer, ptr %0, i32 0, i32 3
  %1 = load i64, ptr %depth, align 8
  %cmp = icmp uge i64 %1, 1000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %input_buffer.addr, align 8
  %depth1 = getelementptr inbounds %struct.parse_buffer, ptr %2, i32 0, i32 3
  %3 = load i64, ptr %depth1, align 8
  %inc = add i64 %3, 1
  store i64 %inc, ptr %depth1, align 8
  %4 = load ptr, ptr %input_buffer.addr, align 8
  %content = getelementptr inbounds %struct.parse_buffer, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %content, align 8
  %6 = load ptr, ptr %input_buffer.addr, align 8
  %offset = getelementptr inbounds %struct.parse_buffer, ptr %6, i32 0, i32 2
  %7 = load i64, ptr %offset, align 8
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 %7
  %arrayidx = getelementptr inbounds i8, ptr %add.ptr, i64 0
  %8 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %cmp2 = icmp ne i32 %conv, 91
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  br label %fail

if.end5:                                          ; preds = %if.end
  %9 = load ptr, ptr %input_buffer.addr, align 8
  %offset6 = getelementptr inbounds %struct.parse_buffer, ptr %9, i32 0, i32 2
  %10 = load i64, ptr %offset6, align 8
  %inc7 = add i64 %10, 1
  store i64 %inc7, ptr %offset6, align 8
  %11 = load ptr, ptr %input_buffer.addr, align 8
  %call = call ptr @buffer_skip_whitespace(ptr noundef %11)
  %12 = load ptr, ptr %input_buffer.addr, align 8
  %cmp8 = icmp ne ptr %12, null
  br i1 %cmp8, label %land.lhs.true, label %if.end22

land.lhs.true:                                    ; preds = %if.end5
  %13 = load ptr, ptr %input_buffer.addr, align 8
  %offset10 = getelementptr inbounds %struct.parse_buffer, ptr %13, i32 0, i32 2
  %14 = load i64, ptr %offset10, align 8
  %add = add i64 %14, 0
  %15 = load ptr, ptr %input_buffer.addr, align 8
  %length = getelementptr inbounds %struct.parse_buffer, ptr %15, i32 0, i32 1
  %16 = load i64, ptr %length, align 8
  %cmp11 = icmp ult i64 %add, %16
  br i1 %cmp11, label %land.lhs.true13, label %if.end22

land.lhs.true13:                                  ; preds = %land.lhs.true
  %17 = load ptr, ptr %input_buffer.addr, align 8
  %content14 = getelementptr inbounds %struct.parse_buffer, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %content14, align 8
  %19 = load ptr, ptr %input_buffer.addr, align 8
  %offset15 = getelementptr inbounds %struct.parse_buffer, ptr %19, i32 0, i32 2
  %20 = load i64, ptr %offset15, align 8
  %add.ptr16 = getelementptr inbounds i8, ptr %18, i64 %20
  %arrayidx17 = getelementptr inbounds i8, ptr %add.ptr16, i64 0
  %21 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %21 to i32
  %cmp19 = icmp eq i32 %conv18, 93
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %land.lhs.true13
  br label %success

if.end22:                                         ; preds = %land.lhs.true13, %land.lhs.true, %if.end5
  %22 = load ptr, ptr %input_buffer.addr, align 8
  %cmp23 = icmp ne ptr %22, null
  br i1 %cmp23, label %land.lhs.true25, label %if.then31

land.lhs.true25:                                  ; preds = %if.end22
  %23 = load ptr, ptr %input_buffer.addr, align 8
  %offset26 = getelementptr inbounds %struct.parse_buffer, ptr %23, i32 0, i32 2
  %24 = load i64, ptr %offset26, align 8
  %add27 = add i64 %24, 0
  %25 = load ptr, ptr %input_buffer.addr, align 8
  %length28 = getelementptr inbounds %struct.parse_buffer, ptr %25, i32 0, i32 1
  %26 = load i64, ptr %length28, align 8
  %cmp29 = icmp ult i64 %add27, %26
  br i1 %cmp29, label %if.end33, label %if.then31

if.then31:                                        ; preds = %land.lhs.true25, %if.end22
  %27 = load ptr, ptr %input_buffer.addr, align 8
  %offset32 = getelementptr inbounds %struct.parse_buffer, ptr %27, i32 0, i32 2
  %28 = load i64, ptr %offset32, align 8
  %dec = add i64 %28, -1
  store i64 %dec, ptr %offset32, align 8
  br label %fail

if.end33:                                         ; preds = %land.lhs.true25
  %29 = load ptr, ptr %input_buffer.addr, align 8
  %offset34 = getelementptr inbounds %struct.parse_buffer, ptr %29, i32 0, i32 2
  %30 = load i64, ptr %offset34, align 8
  %dec35 = add i64 %30, -1
  store i64 %dec35, ptr %offset34, align 8
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end33
  %31 = load ptr, ptr %input_buffer.addr, align 8
  %hooks = getelementptr inbounds %struct.parse_buffer, ptr %31, i32 0, i32 4
  %call36 = call ptr @cJSON_New_Item(ptr noundef %hooks)
  store ptr %call36, ptr %new_item, align 8
  %32 = load ptr, ptr %new_item, align 8
  %cmp37 = icmp eq ptr %32, null
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %do.body
  br label %fail

if.end40:                                         ; preds = %do.body
  %33 = load ptr, ptr %head, align 8
  %cmp41 = icmp eq ptr %33, null
  br i1 %cmp41, label %if.then43, label %if.else

if.then43:                                        ; preds = %if.end40
  %34 = load ptr, ptr %new_item, align 8
  store ptr %34, ptr %head, align 8
  store ptr %34, ptr %current_item, align 8
  br label %if.end44

if.else:                                          ; preds = %if.end40
  %35 = load ptr, ptr %new_item, align 8
  %36 = load ptr, ptr %current_item, align 8
  %next = getelementptr inbounds %struct.cJSON, ptr %36, i32 0, i32 0
  store ptr %35, ptr %next, align 8
  %37 = load ptr, ptr %current_item, align 8
  %38 = load ptr, ptr %new_item, align 8
  %prev = getelementptr inbounds %struct.cJSON, ptr %38, i32 0, i32 1
  store ptr %37, ptr %prev, align 8
  %39 = load ptr, ptr %new_item, align 8
  store ptr %39, ptr %current_item, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.else, %if.then43
  %40 = load ptr, ptr %input_buffer.addr, align 8
  %offset45 = getelementptr inbounds %struct.parse_buffer, ptr %40, i32 0, i32 2
  %41 = load i64, ptr %offset45, align 8
  %inc46 = add i64 %41, 1
  store i64 %inc46, ptr %offset45, align 8
  %42 = load ptr, ptr %input_buffer.addr, align 8
  %call47 = call ptr @buffer_skip_whitespace(ptr noundef %42)
  %43 = load ptr, ptr %current_item, align 8
  %44 = load ptr, ptr %input_buffer.addr, align 8
  %call48 = call i32 @parse_value(ptr noundef %43, ptr noundef %44)
  %tobool = icmp ne i32 %call48, 0
  br i1 %tobool, label %if.end50, label %if.then49

if.then49:                                        ; preds = %if.end44
  br label %fail

if.end50:                                         ; preds = %if.end44
  %45 = load ptr, ptr %input_buffer.addr, align 8
  %call51 = call ptr @buffer_skip_whitespace(ptr noundef %45)
  br label %do.cond

do.cond:                                          ; preds = %if.end50
  %46 = load ptr, ptr %input_buffer.addr, align 8
  %cmp52 = icmp ne ptr %46, null
  br i1 %cmp52, label %land.lhs.true54, label %land.end

land.lhs.true54:                                  ; preds = %do.cond
  %47 = load ptr, ptr %input_buffer.addr, align 8
  %offset55 = getelementptr inbounds %struct.parse_buffer, ptr %47, i32 0, i32 2
  %48 = load i64, ptr %offset55, align 8
  %add56 = add i64 %48, 0
  %49 = load ptr, ptr %input_buffer.addr, align 8
  %length57 = getelementptr inbounds %struct.parse_buffer, ptr %49, i32 0, i32 1
  %50 = load i64, ptr %length57, align 8
  %cmp58 = icmp ult i64 %add56, %50
  br i1 %cmp58, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true54
  %51 = load ptr, ptr %input_buffer.addr, align 8
  %content60 = getelementptr inbounds %struct.parse_buffer, ptr %51, i32 0, i32 0
  %52 = load ptr, ptr %content60, align 8
  %53 = load ptr, ptr %input_buffer.addr, align 8
  %offset61 = getelementptr inbounds %struct.parse_buffer, ptr %53, i32 0, i32 2
  %54 = load i64, ptr %offset61, align 8
  %add.ptr62 = getelementptr inbounds i8, ptr %52, i64 %54
  %arrayidx63 = getelementptr inbounds i8, ptr %add.ptr62, i64 0
  %55 = load i8, ptr %arrayidx63, align 1
  %conv64 = zext i8 %55 to i32
  %cmp65 = icmp eq i32 %conv64, 44
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true54, %do.cond
  %56 = phi i1 [ false, %land.lhs.true54 ], [ false, %do.cond ], [ %cmp65, %land.rhs ]
  br i1 %56, label %do.body, label %do.end, !llvm.loop !29

do.end:                                           ; preds = %land.end
  %57 = load ptr, ptr %input_buffer.addr, align 8
  %cmp67 = icmp ne ptr %57, null
  br i1 %cmp67, label %land.lhs.true69, label %if.then82

land.lhs.true69:                                  ; preds = %do.end
  %58 = load ptr, ptr %input_buffer.addr, align 8
  %offset70 = getelementptr inbounds %struct.parse_buffer, ptr %58, i32 0, i32 2
  %59 = load i64, ptr %offset70, align 8
  %add71 = add i64 %59, 0
  %60 = load ptr, ptr %input_buffer.addr, align 8
  %length72 = getelementptr inbounds %struct.parse_buffer, ptr %60, i32 0, i32 1
  %61 = load i64, ptr %length72, align 8
  %cmp73 = icmp ult i64 %add71, %61
  br i1 %cmp73, label %lor.lhs.false, label %if.then82

lor.lhs.false:                                    ; preds = %land.lhs.true69
  %62 = load ptr, ptr %input_buffer.addr, align 8
  %content75 = getelementptr inbounds %struct.parse_buffer, ptr %62, i32 0, i32 0
  %63 = load ptr, ptr %content75, align 8
  %64 = load ptr, ptr %input_buffer.addr, align 8
  %offset76 = getelementptr inbounds %struct.parse_buffer, ptr %64, i32 0, i32 2
  %65 = load i64, ptr %offset76, align 8
  %add.ptr77 = getelementptr inbounds i8, ptr %63, i64 %65
  %arrayidx78 = getelementptr inbounds i8, ptr %add.ptr77, i64 0
  %66 = load i8, ptr %arrayidx78, align 1
  %conv79 = zext i8 %66 to i32
  %cmp80 = icmp ne i32 %conv79, 93
  br i1 %cmp80, label %if.then82, label %if.end83

if.then82:                                        ; preds = %lor.lhs.false, %land.lhs.true69, %do.end
  br label %fail

if.end83:                                         ; preds = %lor.lhs.false
  br label %success

success:                                          ; preds = %if.end83, %if.then21
  %67 = load ptr, ptr %input_buffer.addr, align 8
  %depth84 = getelementptr inbounds %struct.parse_buffer, ptr %67, i32 0, i32 3
  %68 = load i64, ptr %depth84, align 8
  %dec85 = add i64 %68, -1
  store i64 %dec85, ptr %depth84, align 8
  %69 = load ptr, ptr %head, align 8
  %cmp86 = icmp ne ptr %69, null
  br i1 %cmp86, label %if.then88, label %if.end90

if.then88:                                        ; preds = %success
  %70 = load ptr, ptr %current_item, align 8
  %71 = load ptr, ptr %head, align 8
  %prev89 = getelementptr inbounds %struct.cJSON, ptr %71, i32 0, i32 1
  store ptr %70, ptr %prev89, align 8
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %success
  %72 = load ptr, ptr %item.addr, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %72, i32 0, i32 3
  store i32 32, ptr %type, align 8
  %73 = load ptr, ptr %head, align 8
  %74 = load ptr, ptr %item.addr, align 8
  %child = getelementptr inbounds %struct.cJSON, ptr %74, i32 0, i32 2
  store ptr %73, ptr %child, align 8
  %75 = load ptr, ptr %input_buffer.addr, align 8
  %offset91 = getelementptr inbounds %struct.parse_buffer, ptr %75, i32 0, i32 2
  %76 = load i64, ptr %offset91, align 8
  %inc92 = add i64 %76, 1
  store i64 %inc92, ptr %offset91, align 8
  store i32 1, ptr %retval, align 4
  br label %return

fail:                                             ; preds = %if.then82, %if.then49, %if.then39, %if.then31, %if.then4
  %77 = load ptr, ptr %head, align 8
  %cmp93 = icmp ne ptr %77, null
  br i1 %cmp93, label %if.then95, label %if.end96

if.then95:                                        ; preds = %fail
  %78 = load ptr, ptr %head, align 8
  call void @cJSON_Delete(ptr noundef %78)
  br label %if.end96

if.end96:                                         ; preds = %if.then95, %fail
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end96, %if.end90, %if.then
  %79 = load i32, ptr %retval, align 4
  ret i32 %79
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @parse_object(ptr noundef %item, ptr noundef %input_buffer) #0 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca ptr, align 8
  %input_buffer.addr = alloca ptr, align 8
  %head = alloca ptr, align 8
  %current_item = alloca ptr, align 8
  %new_item = alloca ptr, align 8
  store ptr %item, ptr %item.addr, align 8
  store ptr %input_buffer, ptr %input_buffer.addr, align 8
  store ptr null, ptr %head, align 8
  store ptr null, ptr %current_item, align 8
  %0 = load ptr, ptr %input_buffer.addr, align 8
  %depth = getelementptr inbounds %struct.parse_buffer, ptr %0, i32 0, i32 3
  %1 = load i64, ptr %depth, align 8
  %cmp = icmp uge i64 %1, 1000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %input_buffer.addr, align 8
  %depth1 = getelementptr inbounds %struct.parse_buffer, ptr %2, i32 0, i32 3
  %3 = load i64, ptr %depth1, align 8
  %inc = add i64 %3, 1
  store i64 %inc, ptr %depth1, align 8
  %4 = load ptr, ptr %input_buffer.addr, align 8
  %cmp2 = icmp ne ptr %4, null
  br i1 %cmp2, label %land.lhs.true, label %if.then7

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %input_buffer.addr, align 8
  %offset = getelementptr inbounds %struct.parse_buffer, ptr %5, i32 0, i32 2
  %6 = load i64, ptr %offset, align 8
  %add = add i64 %6, 0
  %7 = load ptr, ptr %input_buffer.addr, align 8
  %length = getelementptr inbounds %struct.parse_buffer, ptr %7, i32 0, i32 1
  %8 = load i64, ptr %length, align 8
  %cmp3 = icmp ult i64 %add, %8
  br i1 %cmp3, label %lor.lhs.false, label %if.then7

lor.lhs.false:                                    ; preds = %land.lhs.true
  %9 = load ptr, ptr %input_buffer.addr, align 8
  %content = getelementptr inbounds %struct.parse_buffer, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %content, align 8
  %11 = load ptr, ptr %input_buffer.addr, align 8
  %offset4 = getelementptr inbounds %struct.parse_buffer, ptr %11, i32 0, i32 2
  %12 = load i64, ptr %offset4, align 8
  %add.ptr = getelementptr inbounds i8, ptr %10, i64 %12
  %arrayidx = getelementptr inbounds i8, ptr %add.ptr, i64 0
  %13 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %13 to i32
  %cmp5 = icmp ne i32 %conv, 123
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false, %land.lhs.true, %if.end
  br label %fail

if.end8:                                          ; preds = %lor.lhs.false
  %14 = load ptr, ptr %input_buffer.addr, align 8
  %offset9 = getelementptr inbounds %struct.parse_buffer, ptr %14, i32 0, i32 2
  %15 = load i64, ptr %offset9, align 8
  %inc10 = add i64 %15, 1
  store i64 %inc10, ptr %offset9, align 8
  %16 = load ptr, ptr %input_buffer.addr, align 8
  %call = call ptr @buffer_skip_whitespace(ptr noundef %16)
  %17 = load ptr, ptr %input_buffer.addr, align 8
  %cmp11 = icmp ne ptr %17, null
  br i1 %cmp11, label %land.lhs.true13, label %if.end28

land.lhs.true13:                                  ; preds = %if.end8
  %18 = load ptr, ptr %input_buffer.addr, align 8
  %offset14 = getelementptr inbounds %struct.parse_buffer, ptr %18, i32 0, i32 2
  %19 = load i64, ptr %offset14, align 8
  %add15 = add i64 %19, 0
  %20 = load ptr, ptr %input_buffer.addr, align 8
  %length16 = getelementptr inbounds %struct.parse_buffer, ptr %20, i32 0, i32 1
  %21 = load i64, ptr %length16, align 8
  %cmp17 = icmp ult i64 %add15, %21
  br i1 %cmp17, label %land.lhs.true19, label %if.end28

land.lhs.true19:                                  ; preds = %land.lhs.true13
  %22 = load ptr, ptr %input_buffer.addr, align 8
  %content20 = getelementptr inbounds %struct.parse_buffer, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %content20, align 8
  %24 = load ptr, ptr %input_buffer.addr, align 8
  %offset21 = getelementptr inbounds %struct.parse_buffer, ptr %24, i32 0, i32 2
  %25 = load i64, ptr %offset21, align 8
  %add.ptr22 = getelementptr inbounds i8, ptr %23, i64 %25
  %arrayidx23 = getelementptr inbounds i8, ptr %add.ptr22, i64 0
  %26 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %26 to i32
  %cmp25 = icmp eq i32 %conv24, 125
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %land.lhs.true19
  br label %success

if.end28:                                         ; preds = %land.lhs.true19, %land.lhs.true13, %if.end8
  %27 = load ptr, ptr %input_buffer.addr, align 8
  %cmp29 = icmp ne ptr %27, null
  br i1 %cmp29, label %land.lhs.true31, label %if.then37

land.lhs.true31:                                  ; preds = %if.end28
  %28 = load ptr, ptr %input_buffer.addr, align 8
  %offset32 = getelementptr inbounds %struct.parse_buffer, ptr %28, i32 0, i32 2
  %29 = load i64, ptr %offset32, align 8
  %add33 = add i64 %29, 0
  %30 = load ptr, ptr %input_buffer.addr, align 8
  %length34 = getelementptr inbounds %struct.parse_buffer, ptr %30, i32 0, i32 1
  %31 = load i64, ptr %length34, align 8
  %cmp35 = icmp ult i64 %add33, %31
  br i1 %cmp35, label %if.end39, label %if.then37

if.then37:                                        ; preds = %land.lhs.true31, %if.end28
  %32 = load ptr, ptr %input_buffer.addr, align 8
  %offset38 = getelementptr inbounds %struct.parse_buffer, ptr %32, i32 0, i32 2
  %33 = load i64, ptr %offset38, align 8
  %dec = add i64 %33, -1
  store i64 %dec, ptr %offset38, align 8
  br label %fail

if.end39:                                         ; preds = %land.lhs.true31
  %34 = load ptr, ptr %input_buffer.addr, align 8
  %offset40 = getelementptr inbounds %struct.parse_buffer, ptr %34, i32 0, i32 2
  %35 = load i64, ptr %offset40, align 8
  %dec41 = add i64 %35, -1
  store i64 %dec41, ptr %offset40, align 8
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end39
  %36 = load ptr, ptr %input_buffer.addr, align 8
  %hooks = getelementptr inbounds %struct.parse_buffer, ptr %36, i32 0, i32 4
  %call42 = call ptr @cJSON_New_Item(ptr noundef %hooks)
  store ptr %call42, ptr %new_item, align 8
  %37 = load ptr, ptr %new_item, align 8
  %cmp43 = icmp eq ptr %37, null
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %do.body
  br label %fail

if.end46:                                         ; preds = %do.body
  %38 = load ptr, ptr %head, align 8
  %cmp47 = icmp eq ptr %38, null
  br i1 %cmp47, label %if.then49, label %if.else

if.then49:                                        ; preds = %if.end46
  %39 = load ptr, ptr %new_item, align 8
  store ptr %39, ptr %head, align 8
  store ptr %39, ptr %current_item, align 8
  br label %if.end50

if.else:                                          ; preds = %if.end46
  %40 = load ptr, ptr %new_item, align 8
  %41 = load ptr, ptr %current_item, align 8
  %next = getelementptr inbounds %struct.cJSON, ptr %41, i32 0, i32 0
  store ptr %40, ptr %next, align 8
  %42 = load ptr, ptr %current_item, align 8
  %43 = load ptr, ptr %new_item, align 8
  %prev = getelementptr inbounds %struct.cJSON, ptr %43, i32 0, i32 1
  store ptr %42, ptr %prev, align 8
  %44 = load ptr, ptr %new_item, align 8
  store ptr %44, ptr %current_item, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.else, %if.then49
  %45 = load ptr, ptr %input_buffer.addr, align 8
  %cmp51 = icmp ne ptr %45, null
  br i1 %cmp51, label %land.lhs.true53, label %if.then59

land.lhs.true53:                                  ; preds = %if.end50
  %46 = load ptr, ptr %input_buffer.addr, align 8
  %offset54 = getelementptr inbounds %struct.parse_buffer, ptr %46, i32 0, i32 2
  %47 = load i64, ptr %offset54, align 8
  %add55 = add i64 %47, 1
  %48 = load ptr, ptr %input_buffer.addr, align 8
  %length56 = getelementptr inbounds %struct.parse_buffer, ptr %48, i32 0, i32 1
  %49 = load i64, ptr %length56, align 8
  %cmp57 = icmp ult i64 %add55, %49
  br i1 %cmp57, label %if.end60, label %if.then59

if.then59:                                        ; preds = %land.lhs.true53, %if.end50
  br label %fail

if.end60:                                         ; preds = %land.lhs.true53
  %50 = load ptr, ptr %input_buffer.addr, align 8
  %offset61 = getelementptr inbounds %struct.parse_buffer, ptr %50, i32 0, i32 2
  %51 = load i64, ptr %offset61, align 8
  %inc62 = add i64 %51, 1
  store i64 %inc62, ptr %offset61, align 8
  %52 = load ptr, ptr %input_buffer.addr, align 8
  %call63 = call ptr @buffer_skip_whitespace(ptr noundef %52)
  %53 = load ptr, ptr %current_item, align 8
  %54 = load ptr, ptr %input_buffer.addr, align 8
  %call64 = call i32 @parse_string(ptr noundef %53, ptr noundef %54)
  %tobool = icmp ne i32 %call64, 0
  br i1 %tobool, label %if.end66, label %if.then65

if.then65:                                        ; preds = %if.end60
  br label %fail

if.end66:                                         ; preds = %if.end60
  %55 = load ptr, ptr %input_buffer.addr, align 8
  %call67 = call ptr @buffer_skip_whitespace(ptr noundef %55)
  %56 = load ptr, ptr %current_item, align 8
  %valuestring = getelementptr inbounds %struct.cJSON, ptr %56, i32 0, i32 4
  %57 = load ptr, ptr %valuestring, align 8
  %58 = load ptr, ptr %current_item, align 8
  %string = getelementptr inbounds %struct.cJSON, ptr %58, i32 0, i32 7
  store ptr %57, ptr %string, align 8
  %59 = load ptr, ptr %current_item, align 8
  %valuestring68 = getelementptr inbounds %struct.cJSON, ptr %59, i32 0, i32 4
  store ptr null, ptr %valuestring68, align 8
  %60 = load ptr, ptr %input_buffer.addr, align 8
  %cmp69 = icmp ne ptr %60, null
  br i1 %cmp69, label %land.lhs.true71, label %if.then85

land.lhs.true71:                                  ; preds = %if.end66
  %61 = load ptr, ptr %input_buffer.addr, align 8
  %offset72 = getelementptr inbounds %struct.parse_buffer, ptr %61, i32 0, i32 2
  %62 = load i64, ptr %offset72, align 8
  %add73 = add i64 %62, 0
  %63 = load ptr, ptr %input_buffer.addr, align 8
  %length74 = getelementptr inbounds %struct.parse_buffer, ptr %63, i32 0, i32 1
  %64 = load i64, ptr %length74, align 8
  %cmp75 = icmp ult i64 %add73, %64
  br i1 %cmp75, label %lor.lhs.false77, label %if.then85

lor.lhs.false77:                                  ; preds = %land.lhs.true71
  %65 = load ptr, ptr %input_buffer.addr, align 8
  %content78 = getelementptr inbounds %struct.parse_buffer, ptr %65, i32 0, i32 0
  %66 = load ptr, ptr %content78, align 8
  %67 = load ptr, ptr %input_buffer.addr, align 8
  %offset79 = getelementptr inbounds %struct.parse_buffer, ptr %67, i32 0, i32 2
  %68 = load i64, ptr %offset79, align 8
  %add.ptr80 = getelementptr inbounds i8, ptr %66, i64 %68
  %arrayidx81 = getelementptr inbounds i8, ptr %add.ptr80, i64 0
  %69 = load i8, ptr %arrayidx81, align 1
  %conv82 = zext i8 %69 to i32
  %cmp83 = icmp ne i32 %conv82, 58
  br i1 %cmp83, label %if.then85, label %if.end86

if.then85:                                        ; preds = %lor.lhs.false77, %land.lhs.true71, %if.end66
  br label %fail

if.end86:                                         ; preds = %lor.lhs.false77
  %70 = load ptr, ptr %input_buffer.addr, align 8
  %offset87 = getelementptr inbounds %struct.parse_buffer, ptr %70, i32 0, i32 2
  %71 = load i64, ptr %offset87, align 8
  %inc88 = add i64 %71, 1
  store i64 %inc88, ptr %offset87, align 8
  %72 = load ptr, ptr %input_buffer.addr, align 8
  %call89 = call ptr @buffer_skip_whitespace(ptr noundef %72)
  %73 = load ptr, ptr %current_item, align 8
  %74 = load ptr, ptr %input_buffer.addr, align 8
  %call90 = call i32 @parse_value(ptr noundef %73, ptr noundef %74)
  %tobool91 = icmp ne i32 %call90, 0
  br i1 %tobool91, label %if.end93, label %if.then92

if.then92:                                        ; preds = %if.end86
  br label %fail

if.end93:                                         ; preds = %if.end86
  %75 = load ptr, ptr %input_buffer.addr, align 8
  %call94 = call ptr @buffer_skip_whitespace(ptr noundef %75)
  br label %do.cond

do.cond:                                          ; preds = %if.end93
  %76 = load ptr, ptr %input_buffer.addr, align 8
  %cmp95 = icmp ne ptr %76, null
  br i1 %cmp95, label %land.lhs.true97, label %land.end

land.lhs.true97:                                  ; preds = %do.cond
  %77 = load ptr, ptr %input_buffer.addr, align 8
  %offset98 = getelementptr inbounds %struct.parse_buffer, ptr %77, i32 0, i32 2
  %78 = load i64, ptr %offset98, align 8
  %add99 = add i64 %78, 0
  %79 = load ptr, ptr %input_buffer.addr, align 8
  %length100 = getelementptr inbounds %struct.parse_buffer, ptr %79, i32 0, i32 1
  %80 = load i64, ptr %length100, align 8
  %cmp101 = icmp ult i64 %add99, %80
  br i1 %cmp101, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true97
  %81 = load ptr, ptr %input_buffer.addr, align 8
  %content103 = getelementptr inbounds %struct.parse_buffer, ptr %81, i32 0, i32 0
  %82 = load ptr, ptr %content103, align 8
  %83 = load ptr, ptr %input_buffer.addr, align 8
  %offset104 = getelementptr inbounds %struct.parse_buffer, ptr %83, i32 0, i32 2
  %84 = load i64, ptr %offset104, align 8
  %add.ptr105 = getelementptr inbounds i8, ptr %82, i64 %84
  %arrayidx106 = getelementptr inbounds i8, ptr %add.ptr105, i64 0
  %85 = load i8, ptr %arrayidx106, align 1
  %conv107 = zext i8 %85 to i32
  %cmp108 = icmp eq i32 %conv107, 44
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true97, %do.cond
  %86 = phi i1 [ false, %land.lhs.true97 ], [ false, %do.cond ], [ %cmp108, %land.rhs ]
  br i1 %86, label %do.body, label %do.end, !llvm.loop !30

do.end:                                           ; preds = %land.end
  %87 = load ptr, ptr %input_buffer.addr, align 8
  %cmp110 = icmp ne ptr %87, null
  br i1 %cmp110, label %land.lhs.true112, label %if.then126

land.lhs.true112:                                 ; preds = %do.end
  %88 = load ptr, ptr %input_buffer.addr, align 8
  %offset113 = getelementptr inbounds %struct.parse_buffer, ptr %88, i32 0, i32 2
  %89 = load i64, ptr %offset113, align 8
  %add114 = add i64 %89, 0
  %90 = load ptr, ptr %input_buffer.addr, align 8
  %length115 = getelementptr inbounds %struct.parse_buffer, ptr %90, i32 0, i32 1
  %91 = load i64, ptr %length115, align 8
  %cmp116 = icmp ult i64 %add114, %91
  br i1 %cmp116, label %lor.lhs.false118, label %if.then126

lor.lhs.false118:                                 ; preds = %land.lhs.true112
  %92 = load ptr, ptr %input_buffer.addr, align 8
  %content119 = getelementptr inbounds %struct.parse_buffer, ptr %92, i32 0, i32 0
  %93 = load ptr, ptr %content119, align 8
  %94 = load ptr, ptr %input_buffer.addr, align 8
  %offset120 = getelementptr inbounds %struct.parse_buffer, ptr %94, i32 0, i32 2
  %95 = load i64, ptr %offset120, align 8
  %add.ptr121 = getelementptr inbounds i8, ptr %93, i64 %95
  %arrayidx122 = getelementptr inbounds i8, ptr %add.ptr121, i64 0
  %96 = load i8, ptr %arrayidx122, align 1
  %conv123 = zext i8 %96 to i32
  %cmp124 = icmp ne i32 %conv123, 125
  br i1 %cmp124, label %if.then126, label %if.end127

if.then126:                                       ; preds = %lor.lhs.false118, %land.lhs.true112, %do.end
  br label %fail

if.end127:                                        ; preds = %lor.lhs.false118
  br label %success

success:                                          ; preds = %if.end127, %if.then27
  %97 = load ptr, ptr %input_buffer.addr, align 8
  %depth128 = getelementptr inbounds %struct.parse_buffer, ptr %97, i32 0, i32 3
  %98 = load i64, ptr %depth128, align 8
  %dec129 = add i64 %98, -1
  store i64 %dec129, ptr %depth128, align 8
  %99 = load ptr, ptr %head, align 8
  %cmp130 = icmp ne ptr %99, null
  br i1 %cmp130, label %if.then132, label %if.end134

if.then132:                                       ; preds = %success
  %100 = load ptr, ptr %current_item, align 8
  %101 = load ptr, ptr %head, align 8
  %prev133 = getelementptr inbounds %struct.cJSON, ptr %101, i32 0, i32 1
  store ptr %100, ptr %prev133, align 8
  br label %if.end134

if.end134:                                        ; preds = %if.then132, %success
  %102 = load ptr, ptr %item.addr, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %102, i32 0, i32 3
  store i32 64, ptr %type, align 8
  %103 = load ptr, ptr %head, align 8
  %104 = load ptr, ptr %item.addr, align 8
  %child = getelementptr inbounds %struct.cJSON, ptr %104, i32 0, i32 2
  store ptr %103, ptr %child, align 8
  %105 = load ptr, ptr %input_buffer.addr, align 8
  %offset135 = getelementptr inbounds %struct.parse_buffer, ptr %105, i32 0, i32 2
  %106 = load i64, ptr %offset135, align 8
  %inc136 = add i64 %106, 1
  store i64 %inc136, ptr %offset135, align 8
  store i32 1, ptr %retval, align 4
  br label %return

fail:                                             ; preds = %if.then126, %if.then92, %if.then85, %if.then65, %if.then59, %if.then45, %if.then37, %if.then7
  %107 = load ptr, ptr %head, align 8
  %cmp137 = icmp ne ptr %107, null
  br i1 %cmp137, label %if.then139, label %if.end140

if.then139:                                       ; preds = %fail
  %108 = load ptr, ptr %head, align 8
  call void @cJSON_Delete(ptr noundef %108)
  br label %if.end140

if.end140:                                        ; preds = %if.then139, %fail
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end140, %if.end134, %if.then
  %109 = load i32, ptr %retval, align 4
  ret i32 %109
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @utf16_literal_to_utf8(ptr noundef %input_pointer, ptr noundef %input_end, ptr noundef %output_pointer) #0 {
entry:
  %retval = alloca i8, align 1
  %input_pointer.addr = alloca ptr, align 8
  %input_end.addr = alloca ptr, align 8
  %output_pointer.addr = alloca ptr, align 8
  %codepoint = alloca i64, align 8
  %first_code = alloca i32, align 4
  %first_sequence = alloca ptr, align 8
  %utf8_length = alloca i8, align 1
  %utf8_position = alloca i8, align 1
  %sequence_length = alloca i8, align 1
  %first_byte_mark = alloca i8, align 1
  %second_sequence = alloca ptr, align 8
  %second_code = alloca i32, align 4
  store ptr %input_pointer, ptr %input_pointer.addr, align 8
  store ptr %input_end, ptr %input_end.addr, align 8
  store ptr %output_pointer, ptr %output_pointer.addr, align 8
  store i64 0, ptr %codepoint, align 8
  store i32 0, ptr %first_code, align 4
  %0 = load ptr, ptr %input_pointer.addr, align 8
  store ptr %0, ptr %first_sequence, align 8
  store i8 0, ptr %utf8_length, align 1
  store i8 0, ptr %utf8_position, align 1
  store i8 0, ptr %sequence_length, align 1
  store i8 0, ptr %first_byte_mark, align 1
  %1 = load ptr, ptr %input_end.addr, align 8
  %2 = load ptr, ptr %first_sequence, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp slt i64 %sub.ptr.sub, 6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %fail

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %first_sequence, align 8
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 2
  %call = call i32 @parse_hex4(ptr noundef %add.ptr)
  store i32 %call, ptr %first_code, align 4
  %4 = load i32, ptr %first_code, align 4
  %cmp1 = icmp uge i32 %4, 56320
  br i1 %cmp1, label %land.lhs.true, label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %5 = load i32, ptr %first_code, align 4
  %cmp2 = icmp ule i32 %5, 57343
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %land.lhs.true
  br label %fail

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %6 = load i32, ptr %first_code, align 4
  %cmp5 = icmp uge i32 %6, 55296
  br i1 %cmp5, label %land.lhs.true6, label %if.else

land.lhs.true6:                                   ; preds = %if.end4
  %7 = load i32, ptr %first_code, align 4
  %cmp7 = icmp ule i32 %7, 56319
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %land.lhs.true6
  %8 = load ptr, ptr %first_sequence, align 8
  %add.ptr9 = getelementptr inbounds i8, ptr %8, i64 6
  store ptr %add.ptr9, ptr %second_sequence, align 8
  store i32 0, ptr %second_code, align 4
  store i8 12, ptr %sequence_length, align 1
  %9 = load ptr, ptr %input_end.addr, align 8
  %10 = load ptr, ptr %second_sequence, align 8
  %sub.ptr.lhs.cast10 = ptrtoint ptr %9 to i64
  %sub.ptr.rhs.cast11 = ptrtoint ptr %10 to i64
  %sub.ptr.sub12 = sub i64 %sub.ptr.lhs.cast10, %sub.ptr.rhs.cast11
  %cmp13 = icmp slt i64 %sub.ptr.sub12, 6
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.then8
  br label %fail

if.end15:                                         ; preds = %if.then8
  %11 = load ptr, ptr %second_sequence, align 8
  %arrayidx = getelementptr inbounds i8, ptr %11, i64 0
  %12 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %12 to i32
  %cmp16 = icmp ne i32 %conv, 92
  br i1 %cmp16, label %if.then22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end15
  %13 = load ptr, ptr %second_sequence, align 8
  %arrayidx18 = getelementptr inbounds i8, ptr %13, i64 1
  %14 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %14 to i32
  %cmp20 = icmp ne i32 %conv19, 117
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %lor.lhs.false, %if.end15
  br label %fail

if.end23:                                         ; preds = %lor.lhs.false
  %15 = load ptr, ptr %second_sequence, align 8
  %add.ptr24 = getelementptr inbounds i8, ptr %15, i64 2
  %call25 = call i32 @parse_hex4(ptr noundef %add.ptr24)
  store i32 %call25, ptr %second_code, align 4
  %16 = load i32, ptr %second_code, align 4
  %cmp26 = icmp ult i32 %16, 56320
  br i1 %cmp26, label %if.then31, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %if.end23
  %17 = load i32, ptr %second_code, align 4
  %cmp29 = icmp ugt i32 %17, 57343
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %lor.lhs.false28, %if.end23
  br label %fail

if.end32:                                         ; preds = %lor.lhs.false28
  %18 = load i32, ptr %first_code, align 4
  %and = and i32 %18, 1023
  %shl = shl i32 %and, 10
  %19 = load i32, ptr %second_code, align 4
  %and33 = and i32 %19, 1023
  %or = or i32 %shl, %and33
  %add = add i32 65536, %or
  %conv34 = zext i32 %add to i64
  store i64 %conv34, ptr %codepoint, align 8
  br label %if.end36

if.else:                                          ; preds = %land.lhs.true6, %if.end4
  store i8 6, ptr %sequence_length, align 1
  %20 = load i32, ptr %first_code, align 4
  %conv35 = zext i32 %20 to i64
  store i64 %conv35, ptr %codepoint, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.end32
  %21 = load i64, ptr %codepoint, align 8
  %cmp37 = icmp ult i64 %21, 128
  br i1 %cmp37, label %if.then39, label %if.else40

if.then39:                                        ; preds = %if.end36
  store i8 1, ptr %utf8_length, align 1
  br label %if.end56

if.else40:                                        ; preds = %if.end36
  %22 = load i64, ptr %codepoint, align 8
  %cmp41 = icmp ult i64 %22, 2048
  br i1 %cmp41, label %if.then43, label %if.else44

if.then43:                                        ; preds = %if.else40
  store i8 2, ptr %utf8_length, align 1
  store i8 -64, ptr %first_byte_mark, align 1
  br label %if.end55

if.else44:                                        ; preds = %if.else40
  %23 = load i64, ptr %codepoint, align 8
  %cmp45 = icmp ult i64 %23, 65536
  br i1 %cmp45, label %if.then47, label %if.else48

if.then47:                                        ; preds = %if.else44
  store i8 3, ptr %utf8_length, align 1
  store i8 -32, ptr %first_byte_mark, align 1
  br label %if.end54

if.else48:                                        ; preds = %if.else44
  %24 = load i64, ptr %codepoint, align 8
  %cmp49 = icmp ule i64 %24, 1114111
  br i1 %cmp49, label %if.then51, label %if.else52

if.then51:                                        ; preds = %if.else48
  store i8 4, ptr %utf8_length, align 1
  store i8 -16, ptr %first_byte_mark, align 1
  br label %if.end53

if.else52:                                        ; preds = %if.else48
  br label %fail

if.end53:                                         ; preds = %if.then51
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.then47
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.then43
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.then39
  %25 = load i8, ptr %utf8_length, align 1
  %conv57 = zext i8 %25 to i32
  %sub = sub nsw i32 %conv57, 1
  %conv58 = trunc i32 %sub to i8
  store i8 %conv58, ptr %utf8_position, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end56
  %26 = load i8, ptr %utf8_position, align 1
  %conv59 = zext i8 %26 to i32
  %cmp60 = icmp sgt i32 %conv59, 0
  br i1 %cmp60, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i64, ptr %codepoint, align 8
  %or62 = or i64 %27, 128
  %and63 = and i64 %or62, 191
  %conv64 = trunc i64 %and63 to i8
  %28 = load ptr, ptr %output_pointer.addr, align 8
  %29 = load ptr, ptr %28, align 8
  %30 = load i8, ptr %utf8_position, align 1
  %idxprom = zext i8 %30 to i64
  %arrayidx65 = getelementptr inbounds i8, ptr %29, i64 %idxprom
  store i8 %conv64, ptr %arrayidx65, align 1
  %31 = load i64, ptr %codepoint, align 8
  %shr = lshr i64 %31, 6
  store i64 %shr, ptr %codepoint, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i8, ptr %utf8_position, align 1
  %dec = add i8 %32, -1
  store i8 %dec, ptr %utf8_position, align 1
  br label %for.cond, !llvm.loop !31

for.end:                                          ; preds = %for.cond
  %33 = load i8, ptr %utf8_length, align 1
  %conv66 = zext i8 %33 to i32
  %cmp67 = icmp sgt i32 %conv66, 1
  br i1 %cmp67, label %if.then69, label %if.else75

if.then69:                                        ; preds = %for.end
  %34 = load i64, ptr %codepoint, align 8
  %35 = load i8, ptr %first_byte_mark, align 1
  %conv70 = zext i8 %35 to i64
  %or71 = or i64 %34, %conv70
  %and72 = and i64 %or71, 255
  %conv73 = trunc i64 %and72 to i8
  %36 = load ptr, ptr %output_pointer.addr, align 8
  %37 = load ptr, ptr %36, align 8
  %arrayidx74 = getelementptr inbounds i8, ptr %37, i64 0
  store i8 %conv73, ptr %arrayidx74, align 1
  br label %if.end79

if.else75:                                        ; preds = %for.end
  %38 = load i64, ptr %codepoint, align 8
  %and76 = and i64 %38, 127
  %conv77 = trunc i64 %and76 to i8
  %39 = load ptr, ptr %output_pointer.addr, align 8
  %40 = load ptr, ptr %39, align 8
  %arrayidx78 = getelementptr inbounds i8, ptr %40, i64 0
  store i8 %conv77, ptr %arrayidx78, align 1
  br label %if.end79

if.end79:                                         ; preds = %if.else75, %if.then69
  %41 = load i8, ptr %utf8_length, align 1
  %conv80 = zext i8 %41 to i32
  %42 = load ptr, ptr %output_pointer.addr, align 8
  %43 = load ptr, ptr %42, align 8
  %idx.ext = sext i32 %conv80 to i64
  %add.ptr81 = getelementptr inbounds i8, ptr %43, i64 %idx.ext
  store ptr %add.ptr81, ptr %42, align 8
  %44 = load i8, ptr %sequence_length, align 1
  store i8 %44, ptr %retval, align 1
  br label %return

fail:                                             ; preds = %if.else52, %if.then31, %if.then22, %if.then14, %if.then3, %if.then
  store i8 0, ptr %retval, align 1
  br label %return

return:                                           ; preds = %fail, %if.end79
  %45 = load i8, ptr %retval, align 1
  ret i8 %45
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @parse_hex4(ptr noundef %input) #0 {
entry:
  %retval = alloca i32, align 4
  %input.addr = alloca ptr, align 8
  %h = alloca i32, align 4
  %i = alloca i64, align 8
  store ptr %input, ptr %input.addr, align 8
  store i32 0, ptr %h, align 4
  store i64 0, ptr %i, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8
  %cmp = icmp ult i64 %0, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %input.addr, align 8
  %2 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %2
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %cmp1 = icmp sge i32 %conv, 48
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %4 = load ptr, ptr %input.addr, align 8
  %5 = load i64, ptr %i, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %4, i64 %5
  %6 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %6 to i32
  %cmp5 = icmp sle i32 %conv4, 57
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %7 = load ptr, ptr %input.addr, align 8
  %8 = load i64, ptr %i, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %7, i64 %8
  %9 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %9 to i32
  %sub = sub i32 %conv8, 48
  %10 = load i32, ptr %h, align 4
  %add = add i32 %10, %sub
  store i32 %add, ptr %h, align 4
  br label %if.end42

if.else:                                          ; preds = %land.lhs.true, %for.body
  %11 = load ptr, ptr %input.addr, align 8
  %12 = load i64, ptr %i, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %11, i64 %12
  %13 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %13 to i32
  %cmp11 = icmp sge i32 %conv10, 65
  br i1 %cmp11, label %land.lhs.true13, label %if.else24

land.lhs.true13:                                  ; preds = %if.else
  %14 = load ptr, ptr %input.addr, align 8
  %15 = load i64, ptr %i, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %14, i64 %15
  %16 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %16 to i32
  %cmp16 = icmp sle i32 %conv15, 70
  br i1 %cmp16, label %if.then18, label %if.else24

if.then18:                                        ; preds = %land.lhs.true13
  %17 = load ptr, ptr %input.addr, align 8
  %18 = load i64, ptr %i, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %17, i64 %18
  %19 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %19 to i32
  %add21 = add i32 10, %conv20
  %sub22 = sub i32 %add21, 65
  %20 = load i32, ptr %h, align 4
  %add23 = add i32 %20, %sub22
  store i32 %add23, ptr %h, align 4
  br label %if.end41

if.else24:                                        ; preds = %land.lhs.true13, %if.else
  %21 = load ptr, ptr %input.addr, align 8
  %22 = load i64, ptr %i, align 8
  %arrayidx25 = getelementptr inbounds i8, ptr %21, i64 %22
  %23 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %23 to i32
  %cmp27 = icmp sge i32 %conv26, 97
  br i1 %cmp27, label %land.lhs.true29, label %if.else40

land.lhs.true29:                                  ; preds = %if.else24
  %24 = load ptr, ptr %input.addr, align 8
  %25 = load i64, ptr %i, align 8
  %arrayidx30 = getelementptr inbounds i8, ptr %24, i64 %25
  %26 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %26 to i32
  %cmp32 = icmp sle i32 %conv31, 102
  br i1 %cmp32, label %if.then34, label %if.else40

if.then34:                                        ; preds = %land.lhs.true29
  %27 = load ptr, ptr %input.addr, align 8
  %28 = load i64, ptr %i, align 8
  %arrayidx35 = getelementptr inbounds i8, ptr %27, i64 %28
  %29 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %29 to i32
  %add37 = add i32 10, %conv36
  %sub38 = sub i32 %add37, 97
  %30 = load i32, ptr %h, align 4
  %add39 = add i32 %30, %sub38
  store i32 %add39, ptr %h, align 4
  br label %if.end

if.else40:                                        ; preds = %land.lhs.true29, %if.else24
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then34
  br label %if.end41

if.end41:                                         ; preds = %if.end, %if.then18
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.then
  %31 = load i64, ptr %i, align 8
  %cmp43 = icmp ult i64 %31, 3
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end42
  %32 = load i32, ptr %h, align 4
  %shl = shl i32 %32, 4
  store i32 %shl, ptr %h, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end42
  br label %for.inc

for.inc:                                          ; preds = %if.end46
  %33 = load i64, ptr %i, align 8
  %inc = add i64 %33, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !32

for.end:                                          ; preds = %for.cond
  %34 = load i32, ptr %h, align 4
  store i32 %34, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.else40
  %35 = load i32, ptr %retval, align 4
  ret i32 %35
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @get_decimal_point() #0 {
entry:
  ret i8 46
}

declare double @"\01_strtod"(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal ptr @ensure(ptr noundef %p, i64 noundef %needed) #0 {
entry:
  %retval = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %needed.addr = alloca i64, align 8
  %newbuffer = alloca ptr, align 8
  %newsize = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  store i64 %needed, ptr %needed.addr, align 8
  store ptr null, ptr %newbuffer, align 8
  store i64 0, ptr %newsize, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8
  %buffer = getelementptr inbounds %struct.printbuffer, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %buffer, align 8
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %p.addr, align 8
  %length = getelementptr inbounds %struct.printbuffer, ptr %3, i32 0, i32 1
  %4 = load i64, ptr %length, align 8
  %cmp2 = icmp ugt i64 %4, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %p.addr, align 8
  %offset = getelementptr inbounds %struct.printbuffer, ptr %5, i32 0, i32 2
  %6 = load i64, ptr %offset, align 8
  %7 = load ptr, ptr %p.addr, align 8
  %length3 = getelementptr inbounds %struct.printbuffer, ptr %7, i32 0, i32 1
  %8 = load i64, ptr %length3, align 8
  %cmp4 = icmp uge i64 %6, %8
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %land.lhs.true
  store ptr null, ptr %retval, align 8
  br label %return

if.end6:                                          ; preds = %land.lhs.true, %if.end
  %9 = load i64, ptr %needed.addr, align 8
  %cmp7 = icmp ugt i64 %9, 2147483647
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  store ptr null, ptr %retval, align 8
  br label %return

if.end9:                                          ; preds = %if.end6
  %10 = load ptr, ptr %p.addr, align 8
  %offset10 = getelementptr inbounds %struct.printbuffer, ptr %10, i32 0, i32 2
  %11 = load i64, ptr %offset10, align 8
  %add = add i64 %11, 1
  %12 = load i64, ptr %needed.addr, align 8
  %add11 = add i64 %12, %add
  store i64 %add11, ptr %needed.addr, align 8
  %13 = load i64, ptr %needed.addr, align 8
  %14 = load ptr, ptr %p.addr, align 8
  %length12 = getelementptr inbounds %struct.printbuffer, ptr %14, i32 0, i32 1
  %15 = load i64, ptr %length12, align 8
  %cmp13 = icmp ule i64 %13, %15
  br i1 %cmp13, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end9
  %16 = load ptr, ptr %p.addr, align 8
  %buffer15 = getelementptr inbounds %struct.printbuffer, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %buffer15, align 8
  %18 = load ptr, ptr %p.addr, align 8
  %offset16 = getelementptr inbounds %struct.printbuffer, ptr %18, i32 0, i32 2
  %19 = load i64, ptr %offset16, align 8
  %add.ptr = getelementptr inbounds i8, ptr %17, i64 %19
  store ptr %add.ptr, ptr %retval, align 8
  br label %return

if.end17:                                         ; preds = %if.end9
  %20 = load ptr, ptr %p.addr, align 8
  %noalloc = getelementptr inbounds %struct.printbuffer, ptr %20, i32 0, i32 4
  %21 = load i32, ptr %noalloc, align 8
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end17
  store ptr null, ptr %retval, align 8
  br label %return

if.end19:                                         ; preds = %if.end17
  %22 = load i64, ptr %needed.addr, align 8
  %cmp20 = icmp ugt i64 %22, 1073741823
  br i1 %cmp20, label %if.then21, label %if.else25

if.then21:                                        ; preds = %if.end19
  %23 = load i64, ptr %needed.addr, align 8
  %cmp22 = icmp ule i64 %23, 2147483647
  br i1 %cmp22, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.then21
  store i64 2147483647, ptr %newsize, align 8
  br label %if.end24

if.else:                                          ; preds = %if.then21
  store ptr null, ptr %retval, align 8
  br label %return

if.end24:                                         ; preds = %if.then23
  br label %if.end26

if.else25:                                        ; preds = %if.end19
  %24 = load i64, ptr %needed.addr, align 8
  %mul = mul i64 %24, 2
  store i64 %mul, ptr %newsize, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.else25, %if.end24
  %25 = load ptr, ptr %p.addr, align 8
  %hooks = getelementptr inbounds %struct.printbuffer, ptr %25, i32 0, i32 6
  %reallocate = getelementptr inbounds %struct.internal_hooks, ptr %hooks, i32 0, i32 2
  %26 = load ptr, ptr %reallocate, align 8
  %cmp27 = icmp ne ptr %26, null
  br i1 %cmp27, label %if.then28, label %if.else39

if.then28:                                        ; preds = %if.end26
  %27 = load ptr, ptr %p.addr, align 8
  %hooks29 = getelementptr inbounds %struct.printbuffer, ptr %27, i32 0, i32 6
  %reallocate30 = getelementptr inbounds %struct.internal_hooks, ptr %hooks29, i32 0, i32 2
  %28 = load ptr, ptr %reallocate30, align 8
  %29 = load ptr, ptr %p.addr, align 8
  %buffer31 = getelementptr inbounds %struct.printbuffer, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %buffer31, align 8
  %31 = load i64, ptr %newsize, align 8
  %call = call ptr %28(ptr noundef %30, i64 noundef %31)
  store ptr %call, ptr %newbuffer, align 8
  %32 = load ptr, ptr %newbuffer, align 8
  %cmp32 = icmp eq ptr %32, null
  br i1 %cmp32, label %if.then33, label %if.end38

if.then33:                                        ; preds = %if.then28
  %33 = load ptr, ptr %p.addr, align 8
  %hooks34 = getelementptr inbounds %struct.printbuffer, ptr %33, i32 0, i32 6
  %deallocate = getelementptr inbounds %struct.internal_hooks, ptr %hooks34, i32 0, i32 1
  %34 = load ptr, ptr %deallocate, align 8
  %35 = load ptr, ptr %p.addr, align 8
  %buffer35 = getelementptr inbounds %struct.printbuffer, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %buffer35, align 8
  call void %34(ptr noundef %36)
  %37 = load ptr, ptr %p.addr, align 8
  %length36 = getelementptr inbounds %struct.printbuffer, ptr %37, i32 0, i32 1
  store i64 0, ptr %length36, align 8
  %38 = load ptr, ptr %p.addr, align 8
  %buffer37 = getelementptr inbounds %struct.printbuffer, ptr %38, i32 0, i32 0
  store ptr null, ptr %buffer37, align 8
  store ptr null, ptr %retval, align 8
  br label %return

if.end38:                                         ; preds = %if.then28
  br label %if.end57

if.else39:                                        ; preds = %if.end26
  %39 = load ptr, ptr %p.addr, align 8
  %hooks40 = getelementptr inbounds %struct.printbuffer, ptr %39, i32 0, i32 6
  %allocate = getelementptr inbounds %struct.internal_hooks, ptr %hooks40, i32 0, i32 0
  %40 = load ptr, ptr %allocate, align 8
  %41 = load i64, ptr %newsize, align 8
  %call41 = call ptr %40(i64 noundef %41)
  store ptr %call41, ptr %newbuffer, align 8
  %42 = load ptr, ptr %newbuffer, align 8
  %tobool42 = icmp ne ptr %42, null
  br i1 %tobool42, label %if.end49, label %if.then43

if.then43:                                        ; preds = %if.else39
  %43 = load ptr, ptr %p.addr, align 8
  %hooks44 = getelementptr inbounds %struct.printbuffer, ptr %43, i32 0, i32 6
  %deallocate45 = getelementptr inbounds %struct.internal_hooks, ptr %hooks44, i32 0, i32 1
  %44 = load ptr, ptr %deallocate45, align 8
  %45 = load ptr, ptr %p.addr, align 8
  %buffer46 = getelementptr inbounds %struct.printbuffer, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %buffer46, align 8
  call void %44(ptr noundef %46)
  %47 = load ptr, ptr %p.addr, align 8
  %length47 = getelementptr inbounds %struct.printbuffer, ptr %47, i32 0, i32 1
  store i64 0, ptr %length47, align 8
  %48 = load ptr, ptr %p.addr, align 8
  %buffer48 = getelementptr inbounds %struct.printbuffer, ptr %48, i32 0, i32 0
  store ptr null, ptr %buffer48, align 8
  store ptr null, ptr %retval, align 8
  br label %return

if.end49:                                         ; preds = %if.else39
  %49 = load ptr, ptr %newbuffer, align 8
  %50 = load ptr, ptr %p.addr, align 8
  %buffer50 = getelementptr inbounds %struct.printbuffer, ptr %50, i32 0, i32 0
  %51 = load ptr, ptr %buffer50, align 8
  %52 = load ptr, ptr %p.addr, align 8
  %offset51 = getelementptr inbounds %struct.printbuffer, ptr %52, i32 0, i32 2
  %53 = load i64, ptr %offset51, align 8
  %add52 = add i64 %53, 1
  %54 = load ptr, ptr %newbuffer, align 8
  %55 = call i64 @llvm.objectsize.i64.p0(ptr %54, i1 false, i1 true, i1 false)
  %call53 = call ptr @__memcpy_chk(ptr noundef %49, ptr noundef %51, i64 noundef %add52, i64 noundef %55) #9
  %56 = load ptr, ptr %p.addr, align 8
  %hooks54 = getelementptr inbounds %struct.printbuffer, ptr %56, i32 0, i32 6
  %deallocate55 = getelementptr inbounds %struct.internal_hooks, ptr %hooks54, i32 0, i32 1
  %57 = load ptr, ptr %deallocate55, align 8
  %58 = load ptr, ptr %p.addr, align 8
  %buffer56 = getelementptr inbounds %struct.printbuffer, ptr %58, i32 0, i32 0
  %59 = load ptr, ptr %buffer56, align 8
  call void %57(ptr noundef %59)
  br label %if.end57

if.end57:                                         ; preds = %if.end49, %if.end38
  %60 = load i64, ptr %newsize, align 8
  %61 = load ptr, ptr %p.addr, align 8
  %length58 = getelementptr inbounds %struct.printbuffer, ptr %61, i32 0, i32 1
  store i64 %60, ptr %length58, align 8
  %62 = load ptr, ptr %newbuffer, align 8
  %63 = load ptr, ptr %p.addr, align 8
  %buffer59 = getelementptr inbounds %struct.printbuffer, ptr %63, i32 0, i32 0
  store ptr %62, ptr %buffer59, align 8
  %64 = load ptr, ptr %newbuffer, align 8
  %65 = load ptr, ptr %p.addr, align 8
  %offset60 = getelementptr inbounds %struct.printbuffer, ptr %65, i32 0, i32 2
  %66 = load i64, ptr %offset60, align 8
  %add.ptr61 = getelementptr inbounds i8, ptr %64, i64 %66
  store ptr %add.ptr61, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end57, %if.then43, %if.then33, %if.else, %if.then18, %if.then14, %if.then8, %if.then5, %if.then
  %67 = load ptr, ptr %retval, align 8
  ret ptr %67
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @print_number(ptr noundef %item, ptr noundef %output_buffer) #0 {
entry:
  %__x.addr.i84 = alloca double, align 8
  %__x.addr.i81 = alloca double, align 8
  %__x.addr.i78 = alloca float, align 4
  %__x.addr.i75 = alloca double, align 8
  %__x.addr.i72 = alloca double, align 8
  %__x.addr.i = alloca float, align 4
  %retval = alloca i32, align 4
  %item.addr = alloca ptr, align 8
  %output_buffer.addr = alloca ptr, align 8
  %output_pointer = alloca ptr, align 8
  %d = alloca double, align 8
  %length = alloca i32, align 4
  %i = alloca i64, align 8
  %number_buffer = alloca [26 x i8], align 1
  %decimal_point = alloca i8, align 1
  %test = alloca double, align 8
  store ptr %item, ptr %item.addr, align 8
  store ptr %output_buffer, ptr %output_buffer.addr, align 8
  store ptr null, ptr %output_pointer, align 8
  %0 = load ptr, ptr %item.addr, align 8
  %valuedouble = getelementptr inbounds %struct.cJSON, ptr %0, i32 0, i32 6
  %1 = load double, ptr %valuedouble, align 8
  store double %1, ptr %d, align 8
  store i32 0, ptr %length, align 4
  store i64 0, ptr %i, align 8
  call void @llvm.memset.p0.i64(ptr align 1 %number_buffer, i8 0, i64 26, i1 false)
  %call = call zeroext i8 @get_decimal_point()
  store i8 %call, ptr %decimal_point, align 1
  store double 0.000000e+00, ptr %test, align 8
  %2 = load ptr, ptr %output_buffer.addr, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br i1 false, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %3 = load double, ptr %d, align 8
  %conv = fptrunc double %3 to float
  store float %conv, ptr %__x.addr.i, align 4
  %4 = load float, ptr %__x.addr.i, align 4
  %5 = load float, ptr %__x.addr.i, align 4
  %cmp.i = fcmp une float %4, %5
  %conv.i = zext i1 %cmp.i to i32
  %tobool = icmp ne i32 %conv.i, 0
  br i1 %tobool, label %if.then19, label %lor.lhs.false

cond.false:                                       ; preds = %if.end
  br i1 true, label %cond.true2, label %cond.false5

cond.true2:                                       ; preds = %cond.false
  %6 = load double, ptr %d, align 8
  store double %6, ptr %__x.addr.i72, align 8
  %7 = load double, ptr %__x.addr.i72, align 8
  %8 = load double, ptr %__x.addr.i72, align 8
  %cmp.i73 = fcmp une double %7, %8
  %conv.i74 = zext i1 %cmp.i73 to i32
  %tobool4 = icmp ne i32 %conv.i74, 0
  br i1 %tobool4, label %if.then19, label %lor.lhs.false

cond.false5:                                      ; preds = %cond.false
  %9 = load double, ptr %d, align 8
  store double %9, ptr %__x.addr.i75, align 8
  %10 = load double, ptr %__x.addr.i75, align 8
  %11 = load double, ptr %__x.addr.i75, align 8
  %cmp.i76 = fcmp une double %10, %11
  %conv.i77 = zext i1 %cmp.i76 to i32
  %tobool7 = icmp ne i32 %conv.i77, 0
  br i1 %tobool7, label %if.then19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.false5, %cond.true2, %cond.true
  br i1 false, label %cond.true8, label %cond.false12

cond.true8:                                       ; preds = %lor.lhs.false
  %12 = load double, ptr %d, align 8
  %conv9 = fptrunc double %12 to float
  store float %conv9, ptr %__x.addr.i78, align 4
  %13 = load float, ptr %__x.addr.i78, align 4
  %14 = call float @llvm.fabs.f32(float %13)
  %cmp.i79 = fcmp oeq float %14, 0x7FF0000000000000
  %conv.i80 = zext i1 %cmp.i79 to i32
  %tobool11 = icmp ne i32 %conv.i80, 0
  br i1 %tobool11, label %if.then19, label %if.else

cond.false12:                                     ; preds = %lor.lhs.false
  br i1 true, label %cond.true13, label %cond.false16

cond.true13:                                      ; preds = %cond.false12
  %15 = load double, ptr %d, align 8
  store double %15, ptr %__x.addr.i81, align 8
  %16 = load double, ptr %__x.addr.i81, align 8
  %17 = call double @llvm.fabs.f64(double %16)
  %cmp.i82 = fcmp oeq double %17, 0x7FF0000000000000
  %conv.i83 = zext i1 %cmp.i82 to i32
  %tobool15 = icmp ne i32 %conv.i83, 0
  br i1 %tobool15, label %if.then19, label %if.else

cond.false16:                                     ; preds = %cond.false12
  %18 = load double, ptr %d, align 8
  store double %18, ptr %__x.addr.i84, align 8
  %19 = load double, ptr %__x.addr.i84, align 8
  %20 = call double @llvm.fabs.f64(double %19)
  %cmp.i85 = fcmp oeq double %20, 0x7FF0000000000000
  %conv.i86 = zext i1 %cmp.i85 to i32
  %tobool18 = icmp ne i32 %conv.i86, 0
  br i1 %tobool18, label %if.then19, label %if.else

if.then19:                                        ; preds = %cond.false16, %cond.true13, %cond.true8, %cond.false5, %cond.true2, %cond.true
  %arraydecay = getelementptr inbounds [26 x i8], ptr %number_buffer, i64 0, i64 0
  %call20 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %arraydecay, i32 noundef 0, i64 noundef 26, ptr noundef @.str.5)
  store i32 %call20, ptr %length, align 4
  br label %if.end43

if.else:                                          ; preds = %cond.false16, %cond.true13, %cond.true8
  %21 = load double, ptr %d, align 8
  %22 = load ptr, ptr %item.addr, align 8
  %valueint = getelementptr inbounds %struct.cJSON, ptr %22, i32 0, i32 5
  %23 = load i32, ptr %valueint, align 8
  %conv21 = sitofp i32 %23 to double
  %cmp22 = fcmp oeq double %21, %conv21
  br i1 %cmp22, label %if.then24, label %if.else28

if.then24:                                        ; preds = %if.else
  %arraydecay25 = getelementptr inbounds [26 x i8], ptr %number_buffer, i64 0, i64 0
  %24 = load ptr, ptr %item.addr, align 8
  %valueint26 = getelementptr inbounds %struct.cJSON, ptr %24, i32 0, i32 5
  %25 = load i32, ptr %valueint26, align 8
  %call27 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %arraydecay25, i32 noundef 0, i64 noundef 26, ptr noundef @.str.8, i32 noundef %25)
  store i32 %call27, ptr %length, align 4
  br label %if.end42

if.else28:                                        ; preds = %if.else
  %arraydecay29 = getelementptr inbounds [26 x i8], ptr %number_buffer, i64 0, i64 0
  %26 = load double, ptr %d, align 8
  %call30 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %arraydecay29, i32 noundef 0, i64 noundef 26, ptr noundef @.str.9, double noundef %26)
  store i32 %call30, ptr %length, align 4
  %arraydecay31 = getelementptr inbounds [26 x i8], ptr %number_buffer, i64 0, i64 0
  %call32 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %arraydecay31, ptr noundef @.str.10, ptr noundef %test)
  %cmp33 = icmp ne i32 %call32, 1
  br i1 %cmp33, label %if.then38, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %if.else28
  %27 = load double, ptr %test, align 8
  %28 = load double, ptr %d, align 8
  %call36 = call i32 @compare_double(double noundef %27, double noundef %28)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.end41, label %if.then38

if.then38:                                        ; preds = %lor.lhs.false35, %if.else28
  %arraydecay39 = getelementptr inbounds [26 x i8], ptr %number_buffer, i64 0, i64 0
  %29 = load double, ptr %d, align 8
  %call40 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %arraydecay39, i32 noundef 0, i64 noundef 26, ptr noundef @.str.11, double noundef %29)
  store i32 %call40, ptr %length, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %lor.lhs.false35
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.then24
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.then19
  %30 = load i32, ptr %length, align 4
  %cmp44 = icmp slt i32 %30, 0
  br i1 %cmp44, label %if.then49, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %if.end43
  %31 = load i32, ptr %length, align 4
  %cmp47 = icmp sgt i32 %31, 25
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %lor.lhs.false46, %if.end43
  store i32 0, ptr %retval, align 4
  br label %return

if.end50:                                         ; preds = %lor.lhs.false46
  %32 = load ptr, ptr %output_buffer.addr, align 8
  %33 = load i32, ptr %length, align 4
  %conv51 = sext i32 %33 to i64
  %add = add i64 %conv51, 1
  %call52 = call ptr @ensure(ptr noundef %32, i64 noundef %add)
  store ptr %call52, ptr %output_pointer, align 8
  %34 = load ptr, ptr %output_pointer, align 8
  %cmp53 = icmp eq ptr %34, null
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.end50
  store i32 0, ptr %retval, align 4
  br label %return

if.end56:                                         ; preds = %if.end50
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end56
  %35 = load i64, ptr %i, align 8
  %36 = load i32, ptr %length, align 4
  %conv57 = sext i32 %36 to i64
  %cmp58 = icmp ult i64 %35, %conv57
  br i1 %cmp58, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %37 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds [26 x i8], ptr %number_buffer, i64 0, i64 %37
  %38 = load i8, ptr %arrayidx, align 1
  %conv60 = zext i8 %38 to i32
  %39 = load i8, ptr %decimal_point, align 1
  %conv61 = zext i8 %39 to i32
  %cmp62 = icmp eq i32 %conv60, %conv61
  br i1 %cmp62, label %if.then64, label %if.end66

if.then64:                                        ; preds = %for.body
  %40 = load ptr, ptr %output_pointer, align 8
  %41 = load i64, ptr %i, align 8
  %arrayidx65 = getelementptr inbounds i8, ptr %40, i64 %41
  store i8 46, ptr %arrayidx65, align 1
  br label %for.inc

if.end66:                                         ; preds = %for.body
  %42 = load i64, ptr %i, align 8
  %arrayidx67 = getelementptr inbounds [26 x i8], ptr %number_buffer, i64 0, i64 %42
  %43 = load i8, ptr %arrayidx67, align 1
  %44 = load ptr, ptr %output_pointer, align 8
  %45 = load i64, ptr %i, align 8
  %arrayidx68 = getelementptr inbounds i8, ptr %44, i64 %45
  store i8 %43, ptr %arrayidx68, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end66, %if.then64
  %46 = load i64, ptr %i, align 8
  %inc = add i64 %46, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !33

for.end:                                          ; preds = %for.cond
  %47 = load ptr, ptr %output_pointer, align 8
  %48 = load i64, ptr %i, align 8
  %arrayidx69 = getelementptr inbounds i8, ptr %47, i64 %48
  store i8 0, ptr %arrayidx69, align 1
  %49 = load i32, ptr %length, align 4
  %conv70 = sext i32 %49 to i64
  %50 = load ptr, ptr %output_buffer.addr, align 8
  %offset = getelementptr inbounds %struct.printbuffer, ptr %50, i32 0, i32 2
  %51 = load i64, ptr %offset, align 8
  %add71 = add i64 %51, %conv70
  store i64 %add71, ptr %offset, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then55, %if.then49, %if.then
  %52 = load i32, ptr %retval, align 4
  ret i32 %52
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @print_string(ptr noundef %item, ptr noundef %p) #0 {
entry:
  %item.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  store ptr %item, ptr %item.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %item.addr, align 8
  %valuestring = getelementptr inbounds %struct.cJSON, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %valuestring, align 8
  %2 = load ptr, ptr %p.addr, align 8
  %call = call i32 @print_string_ptr(ptr noundef %1, ptr noundef %2)
  ret i32 %call
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @print_array(ptr noundef %item, ptr noundef %output_buffer) #0 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca ptr, align 8
  %output_buffer.addr = alloca ptr, align 8
  %output_pointer = alloca ptr, align 8
  %length = alloca i64, align 8
  %current_element = alloca ptr, align 8
  store ptr %item, ptr %item.addr, align 8
  store ptr %output_buffer, ptr %output_buffer.addr, align 8
  store ptr null, ptr %output_pointer, align 8
  store i64 0, ptr %length, align 8
  %0 = load ptr, ptr %item.addr, align 8
  %child = getelementptr inbounds %struct.cJSON, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %child, align 8
  store ptr %1, ptr %current_element, align 8
  %2 = load ptr, ptr %output_buffer.addr, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %output_buffer.addr, align 8
  %depth = getelementptr inbounds %struct.printbuffer, ptr %3, i32 0, i32 3
  %4 = load i64, ptr %depth, align 8
  %cmp1 = icmp uge i64 %4, 1000
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %output_buffer.addr, align 8
  %call = call ptr @ensure(ptr noundef %5, i64 noundef 1)
  store ptr %call, ptr %output_pointer, align 8
  %6 = load ptr, ptr %output_pointer, align 8
  %cmp4 = icmp eq ptr %6, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  store i32 0, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end3
  %7 = load ptr, ptr %output_pointer, align 8
  store i8 91, ptr %7, align 1
  %8 = load ptr, ptr %output_buffer.addr, align 8
  %offset = getelementptr inbounds %struct.printbuffer, ptr %8, i32 0, i32 2
  %9 = load i64, ptr %offset, align 8
  %inc = add i64 %9, 1
  store i64 %inc, ptr %offset, align 8
  %10 = load ptr, ptr %output_buffer.addr, align 8
  %depth7 = getelementptr inbounds %struct.printbuffer, ptr %10, i32 0, i32 3
  %11 = load i64, ptr %depth7, align 8
  %inc8 = add i64 %11, 1
  store i64 %inc8, ptr %depth7, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end28, %if.end6
  %12 = load ptr, ptr %current_element, align 8
  %cmp9 = icmp ne ptr %12, null
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load ptr, ptr %current_element, align 8
  %14 = load ptr, ptr %output_buffer.addr, align 8
  %call10 = call i32 @print_value(ptr noundef %13, ptr noundef %14)
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %if.end12, label %if.then11

if.then11:                                        ; preds = %while.body
  store i32 0, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %while.body
  %15 = load ptr, ptr %output_buffer.addr, align 8
  call void @update_offset(ptr noundef %15)
  %16 = load ptr, ptr %current_element, align 8
  %next = getelementptr inbounds %struct.cJSON, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %next, align 8
  %tobool13 = icmp ne ptr %17, null
  br i1 %tobool13, label %if.then14, label %if.end28

if.then14:                                        ; preds = %if.end12
  %18 = load ptr, ptr %output_buffer.addr, align 8
  %format = getelementptr inbounds %struct.printbuffer, ptr %18, i32 0, i32 5
  %19 = load i32, ptr %format, align 4
  %tobool15 = icmp ne i32 %19, 0
  %20 = zext i1 %tobool15 to i64
  %cond = select i1 %tobool15, i32 2, i32 1
  %conv = sext i32 %cond to i64
  store i64 %conv, ptr %length, align 8
  %21 = load ptr, ptr %output_buffer.addr, align 8
  %22 = load i64, ptr %length, align 8
  %add = add i64 %22, 1
  %call16 = call ptr @ensure(ptr noundef %21, i64 noundef %add)
  store ptr %call16, ptr %output_pointer, align 8
  %23 = load ptr, ptr %output_pointer, align 8
  %cmp17 = icmp eq ptr %23, null
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.then14
  store i32 0, ptr %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.then14
  %24 = load ptr, ptr %output_pointer, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %24, i32 1
  store ptr %incdec.ptr, ptr %output_pointer, align 8
  store i8 44, ptr %24, align 1
  %25 = load ptr, ptr %output_buffer.addr, align 8
  %format21 = getelementptr inbounds %struct.printbuffer, ptr %25, i32 0, i32 5
  %26 = load i32, ptr %format21, align 4
  %tobool22 = icmp ne i32 %26, 0
  br i1 %tobool22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end20
  %27 = load ptr, ptr %output_pointer, align 8
  %incdec.ptr24 = getelementptr inbounds i8, ptr %27, i32 1
  store ptr %incdec.ptr24, ptr %output_pointer, align 8
  store i8 32, ptr %27, align 1
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end20
  %28 = load ptr, ptr %output_pointer, align 8
  store i8 0, ptr %28, align 1
  %29 = load i64, ptr %length, align 8
  %30 = load ptr, ptr %output_buffer.addr, align 8
  %offset26 = getelementptr inbounds %struct.printbuffer, ptr %30, i32 0, i32 2
  %31 = load i64, ptr %offset26, align 8
  %add27 = add i64 %31, %29
  store i64 %add27, ptr %offset26, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.end25, %if.end12
  %32 = load ptr, ptr %current_element, align 8
  %next29 = getelementptr inbounds %struct.cJSON, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %next29, align 8
  store ptr %33, ptr %current_element, align 8
  br label %while.cond, !llvm.loop !34

while.end:                                        ; preds = %while.cond
  %34 = load ptr, ptr %output_buffer.addr, align 8
  %call30 = call ptr @ensure(ptr noundef %34, i64 noundef 2)
  store ptr %call30, ptr %output_pointer, align 8
  %35 = load ptr, ptr %output_pointer, align 8
  %cmp31 = icmp eq ptr %35, null
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %while.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end34:                                         ; preds = %while.end
  %36 = load ptr, ptr %output_pointer, align 8
  %incdec.ptr35 = getelementptr inbounds i8, ptr %36, i32 1
  store ptr %incdec.ptr35, ptr %output_pointer, align 8
  store i8 93, ptr %36, align 1
  %37 = load ptr, ptr %output_pointer, align 8
  store i8 0, ptr %37, align 1
  %38 = load ptr, ptr %output_buffer.addr, align 8
  %depth36 = getelementptr inbounds %struct.printbuffer, ptr %38, i32 0, i32 3
  %39 = load i64, ptr %depth36, align 8
  %dec = add i64 %39, -1
  store i64 %dec, ptr %depth36, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end34, %if.then33, %if.then19, %if.then11, %if.then5, %if.then2, %if.then
  %40 = load i32, ptr %retval, align 4
  ret i32 %40
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @print_object(ptr noundef %item, ptr noundef %output_buffer) #0 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca ptr, align 8
  %output_buffer.addr = alloca ptr, align 8
  %output_pointer = alloca ptr, align 8
  %length = alloca i64, align 8
  %current_item = alloca ptr, align 8
  %i = alloca i64, align 8
  %i99 = alloca i64, align 8
  store ptr %item, ptr %item.addr, align 8
  store ptr %output_buffer, ptr %output_buffer.addr, align 8
  store ptr null, ptr %output_pointer, align 8
  store i64 0, ptr %length, align 8
  %0 = load ptr, ptr %item.addr, align 8
  %child = getelementptr inbounds %struct.cJSON, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %child, align 8
  store ptr %1, ptr %current_item, align 8
  %2 = load ptr, ptr %output_buffer.addr, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %output_buffer.addr, align 8
  %depth = getelementptr inbounds %struct.printbuffer, ptr %3, i32 0, i32 3
  %4 = load i64, ptr %depth, align 8
  %cmp1 = icmp uge i64 %4, 1000
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %output_buffer.addr, align 8
  %format = getelementptr inbounds %struct.printbuffer, ptr %5, i32 0, i32 5
  %6 = load i32, ptr %format, align 4
  %tobool = icmp ne i32 %6, 0
  %7 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 2, i32 1
  %conv = sext i32 %cond to i64
  store i64 %conv, ptr %length, align 8
  %8 = load ptr, ptr %output_buffer.addr, align 8
  %9 = load i64, ptr %length, align 8
  %add = add i64 %9, 1
  %call = call ptr @ensure(ptr noundef %8, i64 noundef %add)
  store ptr %call, ptr %output_pointer, align 8
  %10 = load ptr, ptr %output_pointer, align 8
  %cmp4 = icmp eq ptr %10, null
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  store i32 0, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end3
  %11 = load ptr, ptr %output_pointer, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %11, i32 1
  store ptr %incdec.ptr, ptr %output_pointer, align 8
  store i8 123, ptr %11, align 1
  %12 = load ptr, ptr %output_buffer.addr, align 8
  %depth8 = getelementptr inbounds %struct.printbuffer, ptr %12, i32 0, i32 3
  %13 = load i64, ptr %depth8, align 8
  %inc = add i64 %13, 1
  store i64 %inc, ptr %depth8, align 8
  %14 = load ptr, ptr %output_buffer.addr, align 8
  %format9 = getelementptr inbounds %struct.printbuffer, ptr %14, i32 0, i32 5
  %15 = load i32, ptr %format9, align 4
  %tobool10 = icmp ne i32 %15, 0
  br i1 %tobool10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end7
  %16 = load ptr, ptr %output_pointer, align 8
  %incdec.ptr12 = getelementptr inbounds i8, ptr %16, i32 1
  store ptr %incdec.ptr12, ptr %output_pointer, align 8
  store i8 10, ptr %16, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end7
  %17 = load i64, ptr %length, align 8
  %18 = load ptr, ptr %output_buffer.addr, align 8
  %offset = getelementptr inbounds %struct.printbuffer, ptr %18, i32 0, i32 2
  %19 = load i64, ptr %offset, align 8
  %add14 = add i64 %19, %17
  store i64 %add14, ptr %offset, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end82, %if.end13
  %20 = load ptr, ptr %current_item, align 8
  %tobool15 = icmp ne ptr %20, null
  br i1 %tobool15, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load ptr, ptr %output_buffer.addr, align 8
  %format16 = getelementptr inbounds %struct.printbuffer, ptr %21, i32 0, i32 5
  %22 = load i32, ptr %format16, align 4
  %tobool17 = icmp ne i32 %22, 0
  br i1 %tobool17, label %if.then18, label %if.end33

if.then18:                                        ; preds = %while.body
  %23 = load ptr, ptr %output_buffer.addr, align 8
  %24 = load ptr, ptr %output_buffer.addr, align 8
  %depth19 = getelementptr inbounds %struct.printbuffer, ptr %24, i32 0, i32 3
  %25 = load i64, ptr %depth19, align 8
  %call20 = call ptr @ensure(ptr noundef %23, i64 noundef %25)
  store ptr %call20, ptr %output_pointer, align 8
  %26 = load ptr, ptr %output_pointer, align 8
  %cmp21 = icmp eq ptr %26, null
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.then18
  store i32 0, ptr %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.then18
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end24
  %27 = load i64, ptr %i, align 8
  %28 = load ptr, ptr %output_buffer.addr, align 8
  %depth25 = getelementptr inbounds %struct.printbuffer, ptr %28, i32 0, i32 3
  %29 = load i64, ptr %depth25, align 8
  %cmp26 = icmp ult i64 %27, %29
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load ptr, ptr %output_pointer, align 8
  %incdec.ptr28 = getelementptr inbounds i8, ptr %30, i32 1
  store ptr %incdec.ptr28, ptr %output_pointer, align 8
  store i8 9, ptr %30, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i64, ptr %i, align 8
  %inc29 = add i64 %31, 1
  store i64 %inc29, ptr %i, align 8
  br label %for.cond, !llvm.loop !35

for.end:                                          ; preds = %for.cond
  %32 = load ptr, ptr %output_buffer.addr, align 8
  %depth30 = getelementptr inbounds %struct.printbuffer, ptr %32, i32 0, i32 3
  %33 = load i64, ptr %depth30, align 8
  %34 = load ptr, ptr %output_buffer.addr, align 8
  %offset31 = getelementptr inbounds %struct.printbuffer, ptr %34, i32 0, i32 2
  %35 = load i64, ptr %offset31, align 8
  %add32 = add i64 %35, %33
  store i64 %add32, ptr %offset31, align 8
  br label %if.end33

if.end33:                                         ; preds = %for.end, %while.body
  %36 = load ptr, ptr %current_item, align 8
  %string = getelementptr inbounds %struct.cJSON, ptr %36, i32 0, i32 7
  %37 = load ptr, ptr %string, align 8
  %38 = load ptr, ptr %output_buffer.addr, align 8
  %call34 = call i32 @print_string_ptr(ptr noundef %37, ptr noundef %38)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.end37, label %if.then36

if.then36:                                        ; preds = %if.end33
  store i32 0, ptr %retval, align 4
  br label %return

if.end37:                                         ; preds = %if.end33
  %39 = load ptr, ptr %output_buffer.addr, align 8
  call void @update_offset(ptr noundef %39)
  %40 = load ptr, ptr %output_buffer.addr, align 8
  %format38 = getelementptr inbounds %struct.printbuffer, ptr %40, i32 0, i32 5
  %41 = load i32, ptr %format38, align 4
  %tobool39 = icmp ne i32 %41, 0
  %42 = zext i1 %tobool39 to i64
  %cond40 = select i1 %tobool39, i32 2, i32 1
  %conv41 = sext i32 %cond40 to i64
  store i64 %conv41, ptr %length, align 8
  %43 = load ptr, ptr %output_buffer.addr, align 8
  %44 = load i64, ptr %length, align 8
  %call42 = call ptr @ensure(ptr noundef %43, i64 noundef %44)
  store ptr %call42, ptr %output_pointer, align 8
  %45 = load ptr, ptr %output_pointer, align 8
  %cmp43 = icmp eq ptr %45, null
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end37
  store i32 0, ptr %retval, align 4
  br label %return

if.end46:                                         ; preds = %if.end37
  %46 = load ptr, ptr %output_pointer, align 8
  %incdec.ptr47 = getelementptr inbounds i8, ptr %46, i32 1
  store ptr %incdec.ptr47, ptr %output_pointer, align 8
  store i8 58, ptr %46, align 1
  %47 = load ptr, ptr %output_buffer.addr, align 8
  %format48 = getelementptr inbounds %struct.printbuffer, ptr %47, i32 0, i32 5
  %48 = load i32, ptr %format48, align 4
  %tobool49 = icmp ne i32 %48, 0
  br i1 %tobool49, label %if.then50, label %if.end52

if.then50:                                        ; preds = %if.end46
  %49 = load ptr, ptr %output_pointer, align 8
  %incdec.ptr51 = getelementptr inbounds i8, ptr %49, i32 1
  store ptr %incdec.ptr51, ptr %output_pointer, align 8
  store i8 9, ptr %49, align 1
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.end46
  %50 = load i64, ptr %length, align 8
  %51 = load ptr, ptr %output_buffer.addr, align 8
  %offset53 = getelementptr inbounds %struct.printbuffer, ptr %51, i32 0, i32 2
  %52 = load i64, ptr %offset53, align 8
  %add54 = add i64 %52, %50
  store i64 %add54, ptr %offset53, align 8
  %53 = load ptr, ptr %current_item, align 8
  %54 = load ptr, ptr %output_buffer.addr, align 8
  %call55 = call i32 @print_value(ptr noundef %53, ptr noundef %54)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.end58, label %if.then57

if.then57:                                        ; preds = %if.end52
  store i32 0, ptr %retval, align 4
  br label %return

if.end58:                                         ; preds = %if.end52
  %55 = load ptr, ptr %output_buffer.addr, align 8
  call void @update_offset(ptr noundef %55)
  %56 = load ptr, ptr %output_buffer.addr, align 8
  %format59 = getelementptr inbounds %struct.printbuffer, ptr %56, i32 0, i32 5
  %57 = load i32, ptr %format59, align 4
  %tobool60 = icmp ne i32 %57, 0
  %58 = zext i1 %tobool60 to i64
  %cond61 = select i1 %tobool60, i32 1, i32 0
  %conv62 = sext i32 %cond61 to i64
  %59 = load ptr, ptr %current_item, align 8
  %next = getelementptr inbounds %struct.cJSON, ptr %59, i32 0, i32 0
  %60 = load ptr, ptr %next, align 8
  %tobool63 = icmp ne ptr %60, null
  %61 = zext i1 %tobool63 to i64
  %cond64 = select i1 %tobool63, i32 1, i32 0
  %conv65 = sext i32 %cond64 to i64
  %add66 = add i64 %conv62, %conv65
  store i64 %add66, ptr %length, align 8
  %62 = load ptr, ptr %output_buffer.addr, align 8
  %63 = load i64, ptr %length, align 8
  %add67 = add i64 %63, 1
  %call68 = call ptr @ensure(ptr noundef %62, i64 noundef %add67)
  store ptr %call68, ptr %output_pointer, align 8
  %64 = load ptr, ptr %output_pointer, align 8
  %cmp69 = icmp eq ptr %64, null
  br i1 %cmp69, label %if.then71, label %if.end72

if.then71:                                        ; preds = %if.end58
  store i32 0, ptr %retval, align 4
  br label %return

if.end72:                                         ; preds = %if.end58
  %65 = load ptr, ptr %current_item, align 8
  %next73 = getelementptr inbounds %struct.cJSON, ptr %65, i32 0, i32 0
  %66 = load ptr, ptr %next73, align 8
  %tobool74 = icmp ne ptr %66, null
  br i1 %tobool74, label %if.then75, label %if.end77

if.then75:                                        ; preds = %if.end72
  %67 = load ptr, ptr %output_pointer, align 8
  %incdec.ptr76 = getelementptr inbounds i8, ptr %67, i32 1
  store ptr %incdec.ptr76, ptr %output_pointer, align 8
  store i8 44, ptr %67, align 1
  br label %if.end77

if.end77:                                         ; preds = %if.then75, %if.end72
  %68 = load ptr, ptr %output_buffer.addr, align 8
  %format78 = getelementptr inbounds %struct.printbuffer, ptr %68, i32 0, i32 5
  %69 = load i32, ptr %format78, align 4
  %tobool79 = icmp ne i32 %69, 0
  br i1 %tobool79, label %if.then80, label %if.end82

if.then80:                                        ; preds = %if.end77
  %70 = load ptr, ptr %output_pointer, align 8
  %incdec.ptr81 = getelementptr inbounds i8, ptr %70, i32 1
  store ptr %incdec.ptr81, ptr %output_pointer, align 8
  store i8 10, ptr %70, align 1
  br label %if.end82

if.end82:                                         ; preds = %if.then80, %if.end77
  %71 = load ptr, ptr %output_pointer, align 8
  store i8 0, ptr %71, align 1
  %72 = load i64, ptr %length, align 8
  %73 = load ptr, ptr %output_buffer.addr, align 8
  %offset83 = getelementptr inbounds %struct.printbuffer, ptr %73, i32 0, i32 2
  %74 = load i64, ptr %offset83, align 8
  %add84 = add i64 %74, %72
  store i64 %add84, ptr %offset83, align 8
  %75 = load ptr, ptr %current_item, align 8
  %next85 = getelementptr inbounds %struct.cJSON, ptr %75, i32 0, i32 0
  %76 = load ptr, ptr %next85, align 8
  store ptr %76, ptr %current_item, align 8
  br label %while.cond, !llvm.loop !36

while.end:                                        ; preds = %while.cond
  %77 = load ptr, ptr %output_buffer.addr, align 8
  %78 = load ptr, ptr %output_buffer.addr, align 8
  %format86 = getelementptr inbounds %struct.printbuffer, ptr %78, i32 0, i32 5
  %79 = load i32, ptr %format86, align 4
  %tobool87 = icmp ne i32 %79, 0
  br i1 %tobool87, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end
  %80 = load ptr, ptr %output_buffer.addr, align 8
  %depth88 = getelementptr inbounds %struct.printbuffer, ptr %80, i32 0, i32 3
  %81 = load i64, ptr %depth88, align 8
  %add89 = add i64 %81, 1
  br label %cond.end

cond.false:                                       ; preds = %while.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond90 = phi i64 [ %add89, %cond.true ], [ 2, %cond.false ]
  %call91 = call ptr @ensure(ptr noundef %77, i64 noundef %cond90)
  store ptr %call91, ptr %output_pointer, align 8
  %82 = load ptr, ptr %output_pointer, align 8
  %cmp92 = icmp eq ptr %82, null
  br i1 %cmp92, label %if.then94, label %if.end95

if.then94:                                        ; preds = %cond.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end95:                                         ; preds = %cond.end
  %83 = load ptr, ptr %output_buffer.addr, align 8
  %format96 = getelementptr inbounds %struct.printbuffer, ptr %83, i32 0, i32 5
  %84 = load i32, ptr %format96, align 4
  %tobool97 = icmp ne i32 %84, 0
  br i1 %tobool97, label %if.then98, label %if.end109

if.then98:                                        ; preds = %if.end95
  store i64 0, ptr %i99, align 8
  br label %for.cond100

for.cond100:                                      ; preds = %for.inc106, %if.then98
  %85 = load i64, ptr %i99, align 8
  %86 = load ptr, ptr %output_buffer.addr, align 8
  %depth101 = getelementptr inbounds %struct.printbuffer, ptr %86, i32 0, i32 3
  %87 = load i64, ptr %depth101, align 8
  %sub = sub i64 %87, 1
  %cmp102 = icmp ult i64 %85, %sub
  br i1 %cmp102, label %for.body104, label %for.end108

for.body104:                                      ; preds = %for.cond100
  %88 = load ptr, ptr %output_pointer, align 8
  %incdec.ptr105 = getelementptr inbounds i8, ptr %88, i32 1
  store ptr %incdec.ptr105, ptr %output_pointer, align 8
  store i8 9, ptr %88, align 1
  br label %for.inc106

for.inc106:                                       ; preds = %for.body104
  %89 = load i64, ptr %i99, align 8
  %inc107 = add i64 %89, 1
  store i64 %inc107, ptr %i99, align 8
  br label %for.cond100, !llvm.loop !37

for.end108:                                       ; preds = %for.cond100
  br label %if.end109

if.end109:                                        ; preds = %for.end108, %if.end95
  %90 = load ptr, ptr %output_pointer, align 8
  %incdec.ptr110 = getelementptr inbounds i8, ptr %90, i32 1
  store ptr %incdec.ptr110, ptr %output_pointer, align 8
  store i8 125, ptr %90, align 1
  %91 = load ptr, ptr %output_pointer, align 8
  store i8 0, ptr %91, align 1
  %92 = load ptr, ptr %output_buffer.addr, align 8
  %depth111 = getelementptr inbounds %struct.printbuffer, ptr %92, i32 0, i32 3
  %93 = load i64, ptr %depth111, align 8
  %dec = add i64 %93, -1
  store i64 %dec, ptr %depth111, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end109, %if.then94, %if.then71, %if.then57, %if.then45, %if.then36, %if.then23, %if.then6, %if.then2, %if.then
  %94 = load i32, ptr %retval, align 4
  ret i32 %94
}

declare i32 @sscanf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #5

; Function Attrs: nounwind ssp uwtable
define internal i32 @print_string_ptr(ptr noundef %input, ptr noundef %output_buffer) #0 {
entry:
  %retval = alloca i32, align 4
  %input.addr = alloca ptr, align 8
  %output_buffer.addr = alloca ptr, align 8
  %input_pointer = alloca ptr, align 8
  %output = alloca ptr, align 8
  %output_pointer = alloca ptr, align 8
  %output_length = alloca i64, align 8
  %escape_characters = alloca i64, align 8
  store ptr %input, ptr %input.addr, align 8
  store ptr %output_buffer, ptr %output_buffer.addr, align 8
  store ptr null, ptr %input_pointer, align 8
  store ptr null, ptr %output, align 8
  store ptr null, ptr %output_pointer, align 8
  store i64 0, ptr %output_length, align 8
  store i64 0, ptr %escape_characters, align 8
  %0 = load ptr, ptr %output_buffer.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %input.addr, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr %output_buffer.addr, align 8
  %call = call ptr @ensure(ptr noundef %2, i64 noundef 3)
  store ptr %call, ptr %output, align 8
  %3 = load ptr, ptr %output, align 8
  %cmp3 = icmp eq ptr %3, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.then2
  store i32 0, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.then2
  %4 = load ptr, ptr %output, align 8
  %5 = load ptr, ptr %output, align 8
  %6 = call i64 @llvm.objectsize.i64.p0(ptr %5, i1 false, i1 true, i1 false)
  %call6 = call ptr @__strcpy_chk(ptr noundef %4, ptr noundef @.str.12, i64 noundef %6) #9
  store i32 1, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %7 = load ptr, ptr %input.addr, align 8
  store ptr %7, ptr %input_pointer, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %8 = load ptr, ptr %input_pointer, align 8
  %9 = load i8, ptr %8, align 1
  %tobool = icmp ne i8 %9, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %input_pointer, align 8
  %11 = load i8, ptr %10, align 1
  %conv = zext i8 %11 to i32
  switch i32 %conv, label %sw.default [
    i32 34, label %sw.bb
    i32 92, label %sw.bb
    i32 8, label %sw.bb
    i32 12, label %sw.bb
    i32 10, label %sw.bb
    i32 13, label %sw.bb
    i32 9, label %sw.bb
  ]

sw.bb:                                            ; preds = %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body
  %12 = load i64, ptr %escape_characters, align 8
  %inc = add i64 %12, 1
  store i64 %inc, ptr %escape_characters, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  %13 = load ptr, ptr %input_pointer, align 8
  %14 = load i8, ptr %13, align 1
  %conv8 = zext i8 %14 to i32
  %cmp9 = icmp slt i32 %conv8, 32
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %sw.default
  %15 = load i64, ptr %escape_characters, align 8
  %add = add i64 %15, 5
  store i64 %add, ptr %escape_characters, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end12, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %16 = load ptr, ptr %input_pointer, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %16, i32 1
  store ptr %incdec.ptr, ptr %input_pointer, align 8
  br label %for.cond, !llvm.loop !38

for.end:                                          ; preds = %for.cond
  %17 = load ptr, ptr %input_pointer, align 8
  %18 = load ptr, ptr %input.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %17 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %18 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %19 = load i64, ptr %escape_characters, align 8
  %add13 = add i64 %sub.ptr.sub, %19
  store i64 %add13, ptr %output_length, align 8
  %20 = load ptr, ptr %output_buffer.addr, align 8
  %21 = load i64, ptr %output_length, align 8
  %add14 = add i64 %21, 3
  %call15 = call ptr @ensure(ptr noundef %20, i64 noundef %add14)
  store ptr %call15, ptr %output, align 8
  %22 = load ptr, ptr %output, align 8
  %cmp16 = icmp eq ptr %22, null
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %for.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %for.end
  %23 = load i64, ptr %escape_characters, align 8
  %cmp20 = icmp eq i64 %23, 0
  br i1 %cmp20, label %if.then22, label %if.end29

if.then22:                                        ; preds = %if.end19
  %24 = load ptr, ptr %output, align 8
  %arrayidx = getelementptr inbounds i8, ptr %24, i64 0
  store i8 34, ptr %arrayidx, align 1
  %25 = load ptr, ptr %output, align 8
  %add.ptr = getelementptr inbounds i8, ptr %25, i64 1
  %26 = load ptr, ptr %input.addr, align 8
  %27 = load i64, ptr %output_length, align 8
  %28 = load ptr, ptr %output, align 8
  %add.ptr23 = getelementptr inbounds i8, ptr %28, i64 1
  %29 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr23, i1 false, i1 true, i1 false)
  %call24 = call ptr @__memcpy_chk(ptr noundef %add.ptr, ptr noundef %26, i64 noundef %27, i64 noundef %29) #9
  %30 = load ptr, ptr %output, align 8
  %31 = load i64, ptr %output_length, align 8
  %add25 = add i64 %31, 1
  %arrayidx26 = getelementptr inbounds i8, ptr %30, i64 %add25
  store i8 34, ptr %arrayidx26, align 1
  %32 = load ptr, ptr %output, align 8
  %33 = load i64, ptr %output_length, align 8
  %add27 = add i64 %33, 2
  %arrayidx28 = getelementptr inbounds i8, ptr %32, i64 %add27
  store i8 0, ptr %arrayidx28, align 1
  store i32 1, ptr %retval, align 4
  br label %return

if.end29:                                         ; preds = %if.end19
  %34 = load ptr, ptr %output, align 8
  %arrayidx30 = getelementptr inbounds i8, ptr %34, i64 0
  store i8 34, ptr %arrayidx30, align 1
  %35 = load ptr, ptr %output, align 8
  %add.ptr31 = getelementptr inbounds i8, ptr %35, i64 1
  store ptr %add.ptr31, ptr %output_pointer, align 8
  %36 = load ptr, ptr %input.addr, align 8
  store ptr %36, ptr %input_pointer, align 8
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc63, %if.end29
  %37 = load ptr, ptr %input_pointer, align 8
  %38 = load i8, ptr %37, align 1
  %conv33 = zext i8 %38 to i32
  %cmp34 = icmp ne i32 %conv33, 0
  br i1 %cmp34, label %for.body36, label %for.end66

for.body36:                                       ; preds = %for.cond32
  %39 = load ptr, ptr %input_pointer, align 8
  %40 = load i8, ptr %39, align 1
  %conv37 = zext i8 %40 to i32
  %cmp38 = icmp sgt i32 %conv37, 31
  br i1 %cmp38, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body36
  %41 = load ptr, ptr %input_pointer, align 8
  %42 = load i8, ptr %41, align 1
  %conv40 = zext i8 %42 to i32
  %cmp41 = icmp ne i32 %conv40, 34
  br i1 %cmp41, label %land.lhs.true43, label %if.else

land.lhs.true43:                                  ; preds = %land.lhs.true
  %43 = load ptr, ptr %input_pointer, align 8
  %44 = load i8, ptr %43, align 1
  %conv44 = zext i8 %44 to i32
  %cmp45 = icmp ne i32 %conv44, 92
  br i1 %cmp45, label %if.then47, label %if.else

if.then47:                                        ; preds = %land.lhs.true43
  %45 = load ptr, ptr %input_pointer, align 8
  %46 = load i8, ptr %45, align 1
  %47 = load ptr, ptr %output_pointer, align 8
  store i8 %46, ptr %47, align 1
  br label %if.end62

if.else:                                          ; preds = %land.lhs.true43, %land.lhs.true, %for.body36
  %48 = load ptr, ptr %output_pointer, align 8
  %incdec.ptr48 = getelementptr inbounds i8, ptr %48, i32 1
  store ptr %incdec.ptr48, ptr %output_pointer, align 8
  store i8 92, ptr %48, align 1
  %49 = load ptr, ptr %input_pointer, align 8
  %50 = load i8, ptr %49, align 1
  %conv49 = zext i8 %50 to i32
  switch i32 %conv49, label %sw.default57 [
    i32 92, label %sw.bb50
    i32 34, label %sw.bb51
    i32 8, label %sw.bb52
    i32 12, label %sw.bb53
    i32 10, label %sw.bb54
    i32 13, label %sw.bb55
    i32 9, label %sw.bb56
  ]

sw.bb50:                                          ; preds = %if.else
  %51 = load ptr, ptr %output_pointer, align 8
  store i8 92, ptr %51, align 1
  br label %sw.epilog61

sw.bb51:                                          ; preds = %if.else
  %52 = load ptr, ptr %output_pointer, align 8
  store i8 34, ptr %52, align 1
  br label %sw.epilog61

sw.bb52:                                          ; preds = %if.else
  %53 = load ptr, ptr %output_pointer, align 8
  store i8 98, ptr %53, align 1
  br label %sw.epilog61

sw.bb53:                                          ; preds = %if.else
  %54 = load ptr, ptr %output_pointer, align 8
  store i8 102, ptr %54, align 1
  br label %sw.epilog61

sw.bb54:                                          ; preds = %if.else
  %55 = load ptr, ptr %output_pointer, align 8
  store i8 110, ptr %55, align 1
  br label %sw.epilog61

sw.bb55:                                          ; preds = %if.else
  %56 = load ptr, ptr %output_pointer, align 8
  store i8 114, ptr %56, align 1
  br label %sw.epilog61

sw.bb56:                                          ; preds = %if.else
  %57 = load ptr, ptr %output_pointer, align 8
  store i8 116, ptr %57, align 1
  br label %sw.epilog61

sw.default57:                                     ; preds = %if.else
  %58 = load ptr, ptr %output_pointer, align 8
  %59 = load ptr, ptr %output_pointer, align 8
  %60 = call i64 @llvm.objectsize.i64.p0(ptr %59, i1 false, i1 true, i1 false)
  %61 = load ptr, ptr %input_pointer, align 8
  %62 = load i8, ptr %61, align 1
  %conv58 = zext i8 %62 to i32
  %call59 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %58, i32 noundef 0, i64 noundef %60, ptr noundef @.str.13, i32 noundef %conv58)
  %63 = load ptr, ptr %output_pointer, align 8
  %add.ptr60 = getelementptr inbounds i8, ptr %63, i64 4
  store ptr %add.ptr60, ptr %output_pointer, align 8
  br label %sw.epilog61

sw.epilog61:                                      ; preds = %sw.default57, %sw.bb56, %sw.bb55, %sw.bb54, %sw.bb53, %sw.bb52, %sw.bb51, %sw.bb50
  br label %if.end62

if.end62:                                         ; preds = %sw.epilog61, %if.then47
  br label %for.inc63

for.inc63:                                        ; preds = %if.end62
  %64 = load ptr, ptr %input_pointer, align 8
  %incdec.ptr64 = getelementptr inbounds i8, ptr %64, i32 1
  store ptr %incdec.ptr64, ptr %input_pointer, align 8
  %65 = load ptr, ptr %output_pointer, align 8
  %incdec.ptr65 = getelementptr inbounds i8, ptr %65, i32 1
  store ptr %incdec.ptr65, ptr %output_pointer, align 8
  br label %for.cond32, !llvm.loop !39

for.end66:                                        ; preds = %for.cond32
  %66 = load ptr, ptr %output, align 8
  %67 = load i64, ptr %output_length, align 8
  %add67 = add i64 %67, 1
  %arrayidx68 = getelementptr inbounds i8, ptr %66, i64 %add67
  store i8 34, ptr %arrayidx68, align 1
  %68 = load ptr, ptr %output, align 8
  %69 = load i64, ptr %output_length, align 8
  %add69 = add i64 %69, 2
  %arrayidx70 = getelementptr inbounds i8, ptr %68, i64 %add69
  store i8 0, ptr %arrayidx70, align 1
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end66, %if.then22, %if.then18, %if.end5, %if.then4, %if.then
  %70 = load i32, ptr %retval, align 4
  ret i32 %70
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @case_insensitive_strcmp(ptr noundef %string1, ptr noundef %string2) #0 {
entry:
  %retval = alloca i32, align 4
  %string1.addr = alloca ptr, align 8
  %string2.addr = alloca ptr, align 8
  store ptr %string1, ptr %string1.addr, align 8
  store ptr %string2, ptr %string2.addr, align 8
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
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end4
  %4 = load ptr, ptr %string1.addr, align 8
  %5 = load i8, ptr %4, align 1
  %conv = zext i8 %5 to i32
  %call = call i32 @tolower(i32 noundef %conv) #11
  %6 = load ptr, ptr %string2.addr, align 8
  %7 = load i8, ptr %6, align 1
  %conv5 = zext i8 %7 to i32
  %call6 = call i32 @tolower(i32 noundef %conv5) #11
  %cmp7 = icmp eq i32 %call, %call6
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %string1.addr, align 8
  %9 = load i8, ptr %8, align 1
  %conv9 = zext i8 %9 to i32
  %cmp10 = icmp eq i32 %conv9, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.body
  store i32 0, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end13
  %10 = load ptr, ptr %string1.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %10, i32 1
  store ptr %incdec.ptr, ptr %string1.addr, align 8
  %11 = load ptr, ptr %string2.addr, align 8
  %incdec.ptr14 = getelementptr inbounds i8, ptr %11, i32 1
  store ptr %incdec.ptr14, ptr %string2.addr, align 8
  br label %for.cond, !llvm.loop !40

for.end:                                          ; preds = %for.cond
  %12 = load ptr, ptr %string1.addr, align 8
  %13 = load i8, ptr %12, align 1
  %conv15 = zext i8 %13 to i32
  %call16 = call i32 @tolower(i32 noundef %conv15) #11
  %14 = load ptr, ptr %string2.addr, align 8
  %15 = load i8, ptr %14, align 1
  %conv17 = zext i8 %15 to i32
  %call18 = call i32 @tolower(i32 noundef %conv17) #11
  %sub = sub nsw i32 %call16, %call18
  store i32 %sub, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then12, %if.then3, %if.then
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

; Function Attrs: nounwind readonly willreturn
declare i32 @tolower(i32 noundef) #8

declare void @UnityFail(ptr noundef, i64 noundef) #1

declare ptr @cJSONUtils_GetPointer(ptr noundef, ptr noundef) #1

declare ptr @cJSONUtils_GetPointerCaseSensitive(ptr noundef, ptr noundef) #1

declare ptr @cJSONUtils_GeneratePatches(ptr noundef, ptr noundef) #1

declare ptr @cJSONUtils_GeneratePatchesCaseSensitive(ptr noundef, ptr noundef) #1

declare void @cJSONUtils_AddPatchToArray(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @cJSONUtils_ApplyPatches(ptr noundef, ptr noundef) #1

declare i32 @cJSONUtils_ApplyPatchesCaseSensitive(ptr noundef, ptr noundef) #1

declare ptr @cJSONUtils_MergePatch(ptr noundef, ptr noundef) #1

declare ptr @cJSONUtils_MergePatchCaseSensitive(ptr noundef, ptr noundef) #1

declare ptr @cJSONUtils_FindPointerFromObjectTo(ptr noundef, ptr noundef) #1

declare void @cJSONUtils_SortObject(ptr noundef) #1

declare void @cJSONUtils_SortObjectCaseSensitive(ptr noundef) #1

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { allocsize(1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly nocallback nofree nounwind willreturn }
attributes #8 = { nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #9 = { nounwind }
attributes #10 = { allocsize(0) }
attributes #11 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define i32 @pc_inline_source_snapshot_public_repos_cJSON_tests_misc_utils_tests_0(ptr noundef %item)  alwaysinline#0 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca ptr, align 8
  store ptr %item, ptr %item.addr, align 8
  %0 = load ptr, ptr %item.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %item.addr, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %type, align 8
  %and = and i32 %2, 255
  %cmp1 = icmp eq i32 %and, 16
  %conv = zext i1 %cmp1 to i32
  store i32 %conv, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

define i32 @pc_inline_source_snapshot_public_repos_cJSON_tests_misc_utils_tests_1(ptr noundef %item)  alwaysinline#0 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca ptr, align 8
  store ptr %item, ptr %item.addr, align 8
  %0 = load ptr, ptr %item.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %item.addr, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %type, align 8
  %and = and i32 %2, 255
  %cmp1 = icmp eq i32 %and, 8
  %conv = zext i1 %cmp1 to i32
  store i32 %conv, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

define ptr @pc_inline_source_snapshot_public_repos_cJSON_tests_misc_utils_tests_2(ptr noundef %value, ptr noundef %return_parse_end, i32 noundef %require_null_terminated)  alwaysinline#0 {
entry:
  %retval = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %return_parse_end.addr = alloca ptr, align 8
  %require_null_terminated.addr = alloca i32, align 4
  %buffer_length = alloca i64, align 8
  store ptr %value, ptr %value.addr, align 8
  store ptr %return_parse_end, ptr %return_parse_end.addr, align 8
  store i32 %require_null_terminated, ptr %require_null_terminated.addr, align 4
  %0 = load ptr, ptr %value.addr, align 8
  %cmp = icmp eq ptr null, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %value.addr, align 8
  %call = call i64 @strlen(ptr noundef %1)
  %add = add i64 %call, 1
  store i64 %add, ptr %buffer_length, align 8
  %2 = load ptr, ptr %value.addr, align 8
  %3 = load i64, ptr %buffer_length, align 8
  %4 = load ptr, ptr %return_parse_end.addr, align 8
  %5 = load i32, ptr %require_null_terminated.addr, align 4
  %call1 = call ptr @cJSON_ParseWithLengthOpts(ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5)
  store ptr %call1, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load ptr, ptr %retval, align 8
  ret ptr %6
}

define internal i32 @pc_inline_source_snapshot_public_repos_cJSON_tests_misc_utils_tests_3(ptr noundef %item, ptr noundef %p)  alwaysinline#0 {
entry:
  %item.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  store ptr %item, ptr %item.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %item.addr, align 8
  %valuestring = getelementptr inbounds %struct.cJSON, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %valuestring, align 8
  %2 = load ptr, ptr %p.addr, align 8
  %call = call i32 @pc_inline_source_snapshot_public_repos_cJSON_tests_misc_utils_tests_3_ptr(ptr noundef %1, ptr noundef %2)
  ret i32 %call
}

define ptr @pc_inline_source_snapshot_public_repos_cJSON_tests_misc_utils_tests_4()  alwaysinline#0 {
entry:
  %item = alloca ptr, align 8
  %call = call ptr @cJSON_New_Item(ptr noundef @global_hooks)
  store ptr %call, ptr %item, align 8
  %0 = load ptr, ptr %item, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %item, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %1, i32 0, i32 3
  store i32 4, ptr %type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %item, align 8
  ret ptr %2
}

define ptr @pc_inline_source_snapshot_public_repos_cJSON_tests_misc_utils_tests_5()  alwaysinline#0 {
entry:
  %item = alloca ptr, align 8
  %call = call ptr @cJSON_New_Item(ptr noundef @global_hooks)
  store ptr %call, ptr %item, align 8
  %0 = load ptr, ptr %item, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %item, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %1, i32 0, i32 3
  store i32 2, ptr %type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %item, align 8
  ret ptr %2
}

define ptr @pc_inline_source_snapshot_public_repos_cJSON_tests_misc_utils_tests_6()  alwaysinline#0 {
entry:
  %item = alloca ptr, align 8
  %call = call ptr @cJSON_New_Item(ptr noundef @global_hooks)
  store ptr %call, ptr %item, align 8
  %0 = load ptr, ptr %item, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %item, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %1, i32 0, i32 3
  store i32 1, ptr %type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %item, align 8
  ret ptr %2
}

define ptr @pc_inline_source_snapshot_public_repos_cJSON_tests_misc_utils_tests_7(i32 noundef %boolean)  alwaysinline#0 {
entry:
  %boolean.addr = alloca i32, align 4
  %item = alloca ptr, align 8
  store i32 %boolean, ptr %boolean.addr, align 4
  %call = call ptr @cJSON_New_Item(ptr noundef @global_hooks)
  store ptr %call, ptr %item, align 8
  %0 = load ptr, ptr %item, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %boolean.addr, align 4
  %tobool1 = icmp ne i32 %1, 0
  %2 = zext i1 %tobool1 to i64
  %cond = select i1 %tobool1, i32 2, i32 1
  %3 = load ptr, ptr %item, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %3, i32 0, i32 3
  store i32 %cond, ptr %type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %item, align 8
  ret ptr %4
}

define ptr @pc_inline_source_snapshot_public_repos_cJSON_tests_misc_utils_tests_8(ptr noundef %raw)  alwaysinline#0 {
entry:
  %retval = alloca ptr, align 8
  %raw.addr = alloca ptr, align 8
  %item = alloca ptr, align 8
  store ptr %raw, ptr %raw.addr, align 8
  %call = call ptr @cJSON_New_Item(ptr noundef @global_hooks)
  store ptr %call, ptr %item, align 8
  %0 = load ptr, ptr %item, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %item, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %1, i32 0, i32 3
  store i32 128, ptr %type, align 8
  %2 = load ptr, ptr %raw.addr, align 8
  %call1 = call ptr @cJSON_strdup(ptr noundef %2, ptr noundef @global_hooks)
  %3 = load ptr, ptr %item, align 8
  %valuestring = getelementptr inbounds %struct.cJSON, ptr %3, i32 0, i32 4
  store ptr %call1, ptr %valuestring, align 8
  %4 = load ptr, ptr %item, align 8
  %valuestring2 = getelementptr inbounds %struct.cJSON, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %valuestring2, align 8
  %tobool3 = icmp ne ptr %5, null
  br i1 %tobool3, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  %6 = load ptr, ptr %item, align 8
  call void @cJSON_Delete(ptr noundef %6)
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %7 = load ptr, ptr %item, align 8
  store ptr %7, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end5, %if.then4
  %8 = load ptr, ptr %retval, align 8
  ret ptr %8
}

define ptr @pc_inline_source_snapshot_public_repos_cJSON_tests_misc_utils_tests_9()  alwaysinline#0 {
entry:
  %item = alloca ptr, align 8
  %call = call ptr @cJSON_New_Item(ptr noundef @global_hooks)
  store ptr %call, ptr %item, align 8
  %0 = load ptr, ptr %item, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %item, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %1, i32 0, i32 3
  store i32 64, ptr %type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %item, align 8
  ret ptr %2
}

define ptr @pc_inline_source_snapshot_public_repos_cJSON_tests_misc_utils_tests_10(ptr noundef %array, i32 noundef %which)  alwaysinline#0 {
entry:
  %retval = alloca ptr, align 8
  %array.addr = alloca ptr, align 8
  %which.addr = alloca i32, align 4
  store ptr %array, ptr %array.addr, align 8
  store i32 %which, ptr %which.addr, align 4
  %0 = load i32, ptr %which.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %array.addr, align 8
  %2 = load ptr, ptr %array.addr, align 8
  %3 = load i32, ptr %which.addr, align 4
  %conv = sext i32 %3 to i64
  %call = call ptr @get_array_item(ptr noundef %2, i64 noundef %conv)
  %call1 = call ptr @cJSON_DetachItemViaPointer(ptr noundef %1, ptr noundef %call)
  store ptr %call1, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load ptr, ptr %retval, align 8
  ret ptr %4
}

define ptr @pc_inline_source_snapshot_public_repos_cJSON_tests_misc_utils_tests_11(ptr noundef %object, ptr noundef %string)  alwaysinline#0 {
entry:
  %object.addr = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %string, ptr %string.addr, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %1 = load ptr, ptr %string.addr, align 8
  %call = call ptr @get_object_item(ptr noundef %0, ptr noundef %1, i32 noundef 1)
  ret ptr %call
}

define ptr @pc_inline_source_snapshot_public_repos_cJSON_tests_misc_utils_tests_12(ptr noundef %object, ptr noundef %string)  alwaysinline#0 {
entry:
  %object.addr = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  %to_detach = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %string, ptr %string.addr, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %1 = load ptr, ptr %string.addr, align 8
  %call = call ptr @cJSON_GetObjectItem(ptr noundef %0, ptr noundef %1)
  store ptr %call, ptr %to_detach, align 8
  %2 = load ptr, ptr %object.addr, align 8
  %3 = load ptr, ptr %to_detach, align 8
  %call1 = call ptr @cJSON_DetachItemViaPointer(ptr noundef %2, ptr noundef %3)
  ret ptr %call1
}

define ptr @pc_inline_source_snapshot_public_repos_cJSON_tests_misc_utils_tests_13(ptr noundef %object, ptr noundef %string)  alwaysinline#0 {
entry:
  %object.addr = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  %to_detach = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %string, ptr %string.addr, align 8
  %0 = load ptr, ptr %object.addr, align 8
  %1 = load ptr, ptr %string.addr, align 8
  %call = call ptr @cJSON_GetObjectItemCaseSensitive(ptr noundef %0, ptr noundef %1)
  store ptr %call, ptr %to_detach, align 8
  %2 = load ptr, ptr %object.addr, align 8
  %3 = load ptr, ptr %to_detach, align 8
  %call1 = call ptr @cJSON_DetachItemViaPointer(ptr noundef %2, ptr noundef %3)
  ret ptr %call1
}

define internal void @pc_inline_source_snapshot_public_repos_cJSON_tests_misc_utils_tests_14(ptr noundef %input)  alwaysinline#0 {
entry:
  %input.addr = alloca ptr, align 8
  store ptr %input, ptr %input.addr, align 8
  %0 = load ptr, ptr %input.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 2
  store ptr %add.ptr, ptr %0, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %input.addr, align 8
  %3 = load ptr, ptr %2, align 8
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 0
  %4 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %input.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %6, i64 0
  %7 = load i8, ptr %arrayidx2, align 1
  %conv3 = sext i8 %7 to i32
  %cmp4 = icmp eq i32 %conv3, 10
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load ptr, ptr %input.addr, align 8
  %9 = load ptr, ptr %8, align 8
  %add.ptr6 = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %add.ptr6, ptr %8, align 8
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load ptr, ptr %input.addr, align 8
  %11 = load ptr, ptr %10, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %11, i32 1
  store ptr %incdec.ptr, ptr %10, align 8
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %if.then, %for.cond
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
!33 = distinct !{!33, !7}
!34 = distinct !{!34, !7}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !7}
!37 = distinct !{!37, !7}
!38 = distinct !{!38, !7}
!39 = distinct !{!39, !7}
!40 = distinct !{!40, !7}
