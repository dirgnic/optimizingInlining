; ModuleID = './out/rewritten_ir/teacher_constant_argument/source_snapshot_public_repos_cJSON_tests_print_number.prepared.ll'
source_filename = "./source_snapshot/public_repos/cJSON/tests/print_number.c"
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
@.str.2 = private unnamed_addr constant [108 x i8] c"./source_snapshot/public_repos/cJSON/tests/print_number.c\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"print_number_should_print_zero\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"print_number_should_print_negative_integers\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"print_number_should_print_positive_integers\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"print_number_should_print_positive_reals\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"print_number_should_print_negative_reals\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"print_number_should_print_non_number\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"\EF\BB\BF\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"%1.15g\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"%lg\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"%1.17g\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"\22\22\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"u%04x\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"Failed to print number.\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"Printed number is not as expected.\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"-32768\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"-2147483648\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"32767\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"2147483647\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"0.123\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"1e-09\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"1000000000000\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"1.23e+129\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"1.23e-126\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"3.1415926535897931\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"-0.0123\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"-1e-09\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"-1e+21\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"-1.23e+129\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"-1.23e-126\00", align 1

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_GetErrorPtr() #0 {
entry:
  %0 = load ptr, ptr @global_error, align 8
  %1 = load i64, ptr getelementptr inbounds (%struct.error, ptr @global_error, i64 0, i32 1), align 8
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %1
  ret ptr %add.ptr
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_GetStringValue(ptr noundef %item) #0 {
entry:
  %item.addr = alloca ptr, align 8
  store ptr %item, ptr %item.addr, align 8
  %call = call i32 @cJSON_IsString(ptr noundef %item)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %item.addr, align 8
  %valuestring = getelementptr inbounds %struct.cJSON, ptr %0, i64 0, i32 4
  %1 = load ptr, ptr %valuestring, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi ptr [ %1, %if.end ], [ null, %entry ]
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define i32 @cJSON_IsString(ptr noundef %item) #0 {
entry:
  %item.addr = alloca ptr, align 8
  store ptr %item, ptr %item.addr, align 8
  %cmp = icmp eq ptr %item, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %item.addr, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %0, i64 0, i32 3
  %1 = load i32, ptr %type, align 8
  %and = and i32 %1, 255
  %cmp1 = icmp eq i32 %and, 16
  %conv = zext i1 %cmp1 to i32
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i32 [ %conv, %if.end ], [ 0, %entry ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define double @cJSON_GetNumberValue(ptr noundef %item) #0 {
entry:
  %item.addr = alloca ptr, align 8
  store ptr %item, ptr %item.addr, align 8
  %call = call i32 @cJSON_IsNumber(ptr noundef %item)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %item.addr, align 8
  %valuedouble = getelementptr inbounds %struct.cJSON, ptr %0, i64 0, i32 6
  %1 = load double, ptr %valuedouble, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi double [ %1, %if.end ], [ 0x7FF8000000000000, %entry ]
  ret double %storemerge
}

; Function Attrs: nounwind ssp uwtable
define i32 @cJSON_IsNumber(ptr noundef %item) #0 {
entry:
  %item.addr = alloca ptr, align 8
  store ptr %item, ptr %item.addr, align 8
  %cmp = icmp eq ptr %item, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %item.addr, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %0, i64 0, i32 3
  %1 = load i32, ptr %type, align 8
  %and = and i32 %1, 255
  %cmp1 = icmp eq i32 %and, 8
  %conv = zext i1 %cmp1 to i32
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i32 [ %conv, %if.end ], [ 0, %entry ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_Version() #0 {
entry:
  %call = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef nonnull @cJSON_Version.version, i32 noundef 0, i64 noundef 15, ptr noundef nonnull @.str, i32 noundef 1, i32 noundef 7, i32 noundef 19) #11
  ret ptr @cJSON_Version.version
}

declare i32 @__sprintf_chk(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ...) #1

; Function Attrs: nounwind ssp uwtable
define void @cJSON_InitHooks(ptr noundef %hooks) #0 {
entry:
  %hooks.addr = alloca ptr, align 8
  store ptr %hooks, ptr %hooks.addr, align 8
  %cmp = icmp eq ptr %hooks, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr @malloc, ptr @global_hooks, align 8
  store ptr @free, ptr getelementptr inbounds (%struct.internal_hooks, ptr @global_hooks, i64 0, i32 1), align 8
  store ptr @realloc, ptr getelementptr inbounds (%struct.internal_hooks, ptr @global_hooks, i64 0, i32 2), align 8
  br label %if.end12

if.end:                                           ; preds = %entry
  store ptr @malloc, ptr @global_hooks, align 8
  %0 = load ptr, ptr %hooks.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %cmp1.not = icmp eq ptr %1, null
  br i1 %cmp1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr %hooks.addr, align 8
  %3 = load ptr, ptr %2, align 8
  store ptr %3, ptr @global_hooks, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  store ptr @free, ptr getelementptr inbounds (%struct.internal_hooks, ptr @global_hooks, i64 0, i32 1), align 8
  %4 = load ptr, ptr %hooks.addr, align 8
  %free_fn = getelementptr inbounds %struct.cJSON_Hooks, ptr %4, i64 0, i32 1
  %5 = load ptr, ptr %free_fn, align 8
  %cmp5.not = icmp eq ptr %5, null
  br i1 %cmp5.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end4
  %6 = load ptr, ptr %hooks.addr, align 8
  %free_fn7 = getelementptr inbounds %struct.cJSON_Hooks, ptr %6, i64 0, i32 1
  %7 = load ptr, ptr %free_fn7, align 8
  store ptr %7, ptr getelementptr inbounds (%struct.internal_hooks, ptr @global_hooks, i64 0, i32 1), align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4
  store ptr null, ptr getelementptr inbounds (%struct.internal_hooks, ptr @global_hooks, i64 0, i32 2), align 8
  %8 = load ptr, ptr @global_hooks, align 8
  %cmp9 = icmp eq ptr %8, @malloc
  %9 = load ptr, ptr getelementptr inbounds (%struct.internal_hooks, ptr @global_hooks, i64 0, i32 1), align 8
  %cmp10 = icmp eq ptr %9, @free
  %or.cond = select i1 %cmp9, i1 %cmp10, i1 false
  %spec.store.select = select i1 %or.cond, ptr @realloc, ptr null
  store ptr %spec.store.select, ptr getelementptr inbounds (%struct.internal_hooks, ptr @global_hooks, i64 0, i32 2), align 8
  br label %if.end12

if.end12:                                         ; preds = %if.end8, %if.then
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
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %item.addr, align 8
  %2 = load ptr, ptr %1, align 8
  store ptr %2, ptr %next, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %1, i64 0, i32 3
  %3 = load i32, ptr %type, align 8
  %and = and i32 %3, 256
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %4 = load ptr, ptr %item.addr, align 8
  %child = getelementptr inbounds %struct.cJSON, ptr %4, i64 0, i32 2
  %5 = load ptr, ptr %child, align 8
  %cmp2.not = icmp eq ptr %5, null
  br i1 %cmp2.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %item.addr, align 8
  %child3 = getelementptr inbounds %struct.cJSON, ptr %6, i64 0, i32 2
  %7 = load ptr, ptr %child3, align 8
  call void @cJSON_Delete(ptr noundef %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.body
  %8 = load ptr, ptr %item.addr, align 8
  %type4 = getelementptr inbounds %struct.cJSON, ptr %8, i64 0, i32 3
  %9 = load i32, ptr %type4, align 8
  %and5 = and i32 %9, 256
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %land.lhs.true7, label %if.end12

land.lhs.true7:                                   ; preds = %if.end
  %10 = load ptr, ptr %item.addr, align 8
  %valuestring = getelementptr inbounds %struct.cJSON, ptr %10, i64 0, i32 4
  %11 = load ptr, ptr %valuestring, align 8
  %cmp8.not = icmp eq ptr %11, null
  br i1 %cmp8.not, label %if.end12, label %if.then9

if.then9:                                         ; preds = %land.lhs.true7
  %12 = load ptr, ptr getelementptr inbounds (%struct.internal_hooks, ptr @global_hooks, i64 0, i32 1), align 8
  %13 = load ptr, ptr %item.addr, align 8
  %valuestring10 = getelementptr inbounds %struct.cJSON, ptr %13, i64 0, i32 4
  %14 = load ptr, ptr %valuestring10, align 8
  call void %12(ptr noundef %14) #11
  %valuestring11 = getelementptr inbounds %struct.cJSON, ptr %13, i64 0, i32 4
  store ptr null, ptr %valuestring11, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %land.lhs.true7, %if.end
  %15 = load ptr, ptr %item.addr, align 8
  %type13 = getelementptr inbounds %struct.cJSON, ptr %15, i64 0, i32 3
  %16 = load i32, ptr %type13, align 8
  %and14 = and i32 %16, 512
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %land.lhs.true16, label %if.end21

land.lhs.true16:                                  ; preds = %if.end12
  %17 = load ptr, ptr %item.addr, align 8
  %string = getelementptr inbounds %struct.cJSON, ptr %17, i64 0, i32 7
  %18 = load ptr, ptr %string, align 8
  %cmp17.not = icmp eq ptr %18, null
  br i1 %cmp17.not, label %if.end21, label %if.then18

if.then18:                                        ; preds = %land.lhs.true16
  %19 = load ptr, ptr getelementptr inbounds (%struct.internal_hooks, ptr @global_hooks, i64 0, i32 1), align 8
  %20 = load ptr, ptr %item.addr, align 8
  %string19 = getelementptr inbounds %struct.cJSON, ptr %20, i64 0, i32 7
  %21 = load ptr, ptr %string19, align 8
  call void %19(ptr noundef %21) #11
  %string20 = getelementptr inbounds %struct.cJSON, ptr %20, i64 0, i32 7
  store ptr null, ptr %string20, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %land.lhs.true16, %if.end12
  %22 = load ptr, ptr getelementptr inbounds (%struct.internal_hooks, ptr @global_hooks, i64 0, i32 1), align 8
  %23 = load ptr, ptr %item.addr, align 8
  call void %22(ptr noundef %23) #11
  %24 = load ptr, ptr %next, align 8
  store ptr %24, ptr %item.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define double @cJSON_SetNumberHelper(ptr noundef %object, double noundef %number) #0 {
entry:
  %object.addr = alloca ptr, align 8
  %number.addr = alloca double, align 8
  store ptr %object, ptr %object.addr, align 8
  store double %number, ptr %number.addr, align 8
  %cmp = icmp eq ptr %object, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load double, ptr %number.addr, align 8
  %cmp1 = fcmp ult double %0, 0x41DFFFFFFFC00000
  br i1 %cmp1, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %1 = load ptr, ptr %object.addr, align 8
  %valueint = getelementptr inbounds %struct.cJSON, ptr %1, i64 0, i32 5
  store i32 2147483647, ptr %valueint, align 8
  br label %if.end9

if.else:                                          ; preds = %if.end
  %2 = load double, ptr %number.addr, align 8
  %cmp3 = fcmp ugt double %2, 0xC1E0000000000000
  br i1 %cmp3, label %if.else6, label %if.then4

if.then4:                                         ; preds = %if.else
  %3 = load ptr, ptr %object.addr, align 8
  %valueint5 = getelementptr inbounds %struct.cJSON, ptr %3, i64 0, i32 5
  store i32 -2147483648, ptr %valueint5, align 8
  br label %if.end9

if.else6:                                         ; preds = %if.else
  %4 = load double, ptr %number.addr, align 8
  %conv = fptosi double %4 to i32
  %5 = load ptr, ptr %object.addr, align 8
  %valueint7 = getelementptr inbounds %struct.cJSON, ptr %5, i64 0, i32 5
  store i32 %conv, ptr %valueint7, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.else6, %if.then2
  %6 = load double, ptr %number.addr, align 8
  %7 = load ptr, ptr %object.addr, align 8
  %valuedouble = getelementptr inbounds %struct.cJSON, ptr %7, i64 0, i32 6
  store double %6, ptr %valuedouble, align 8
  br label %return

return:                                           ; preds = %entry, %if.end9
  %storemerge = phi double [ %6, %if.end9 ], [ 0x7FF8000000000000, %entry ]
  ret double %storemerge
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
  %cmp = icmp eq ptr %object, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %object.addr, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %0, i64 0, i32 3
  %1 = load i32, ptr %type, align 8
  %and = and i32 %1, 16
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false1

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %object.addr, align 8
  %type2 = getelementptr inbounds %struct.cJSON, ptr %2, i64 0, i32 3
  %3 = load i32, ptr %type2, align 8
  %and3 = and i32 %3, 256
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false1, %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false1
  %4 = load ptr, ptr %object.addr, align 8
  %valuestring5 = getelementptr inbounds %struct.cJSON, ptr %4, i64 0, i32 4
  %5 = load ptr, ptr %valuestring5, align 8
  %cmp6 = icmp eq ptr %5, null
  %6 = load ptr, ptr %valuestring.addr, align 8
  %cmp8 = icmp eq ptr %6, null
  %or.cond = select i1 %cmp6, i1 true, i1 %cmp8
  br i1 %or.cond, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end10:                                         ; preds = %if.end
  %7 = load ptr, ptr %valuestring.addr, align 8
  %call = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #11
  store i64 %call, ptr %v1_len, align 8
  %8 = load ptr, ptr %object.addr, align 8
  %valuestring11 = getelementptr inbounds %struct.cJSON, ptr %8, i64 0, i32 4
  %9 = load ptr, ptr %valuestring11, align 8
  %call12 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %9) #11
  store i64 %call12, ptr %v2_len, align 8
  %cmp13.not = icmp ugt i64 %call, %call12
  br i1 %cmp13.not, label %if.end27, label %if.then14

if.then14:                                        ; preds = %if.end10
  %10 = load ptr, ptr %valuestring.addr, align 8
  %11 = load i64, ptr %v1_len, align 8
  %add.ptr = getelementptr inbounds i8, ptr %10, i64 %11
  %12 = load ptr, ptr %object.addr, align 8
  %valuestring15 = getelementptr inbounds %struct.cJSON, ptr %12, i64 0, i32 4
  %13 = load ptr, ptr %valuestring15, align 8
  %cmp16 = icmp ult ptr %add.ptr, %13
  br i1 %cmp16, label %if.end22, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %if.then14
  %14 = load ptr, ptr %object.addr, align 8
  %valuestring18 = getelementptr inbounds %struct.cJSON, ptr %14, i64 0, i32 4
  %15 = load ptr, ptr %valuestring18, align 8
  %16 = load i64, ptr %v2_len, align 8
  %add.ptr19 = getelementptr inbounds i8, ptr %15, i64 %16
  %17 = load ptr, ptr %valuestring.addr, align 8
  %cmp20 = icmp ult ptr %add.ptr19, %17
  br i1 %cmp20, label %if.end22, label %if.then21

if.then21:                                        ; preds = %lor.lhs.false17
  store ptr null, ptr %retval, align 8
  br label %return

if.end22:                                         ; preds = %lor.lhs.false17, %if.then14
  %18 = load ptr, ptr %object.addr, align 8
  %valuestring23 = getelementptr inbounds %struct.cJSON, ptr %18, i64 0, i32 4
  %19 = load ptr, ptr %valuestring23, align 8
  %20 = load ptr, ptr %valuestring.addr, align 8
  %21 = call i64 @llvm.objectsize.i64.p0(ptr %19, i1 false, i1 true, i1 false)
  %call25 = call ptr @__strcpy_chk(ptr noundef %19, ptr noundef %20, i64 noundef %21) #11
  %valuestring26 = getelementptr inbounds %struct.cJSON, ptr %18, i64 0, i32 4
  %22 = load ptr, ptr %valuestring26, align 8
  store ptr %22, ptr %retval, align 8
  br label %return

if.end27:                                         ; preds = %if.end10
  %23 = load ptr, ptr %valuestring.addr, align 8
  %call28 = call ptr @cJSON_strdup(ptr noundef %23, ptr noundef nonnull @global_hooks)
  store ptr %call28, ptr %copy, align 8
  %cmp29 = icmp eq ptr %call28, null
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end27
  store ptr null, ptr %retval, align 8
  br label %return

if.end31:                                         ; preds = %if.end27
  %24 = load ptr, ptr %object.addr, align 8
  %valuestring32 = getelementptr inbounds %struct.cJSON, ptr %24, i64 0, i32 4
  %25 = load ptr, ptr %valuestring32, align 8
  %cmp33.not = icmp eq ptr %25, null
  br i1 %cmp33.not, label %if.end36, label %if.then34

if.then34:                                        ; preds = %if.end31
  %26 = load ptr, ptr %object.addr, align 8
  %valuestring35 = getelementptr inbounds %struct.cJSON, ptr %26, i64 0, i32 4
  %27 = load ptr, ptr %valuestring35, align 8
  call void @cJSON_free(ptr noundef %27)
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end31
  %28 = load ptr, ptr %copy, align 8
  %29 = load ptr, ptr %object.addr, align 8
  %valuestring37 = getelementptr inbounds %struct.cJSON, ptr %29, i64 0, i32 4
  store ptr %28, ptr %valuestring37, align 8
  store ptr %28, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end36, %if.then30, %if.end22, %if.then21, %if.then9, %if.then
  %30 = load ptr, ptr %retval, align 8
  ret ptr %30
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
  %cmp = icmp eq ptr %string, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %string.addr, align 8
  %call = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #11
  %add = add i64 %call, 1
  store i64 %add, ptr %length, align 8
  %1 = load ptr, ptr %hooks.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %call1 = call ptr %2(i64 noundef %add) #11
  store ptr %call1, ptr %copy, align 8
  %cmp2 = icmp eq ptr %call1, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end4:                                          ; preds = %if.end
  %3 = load ptr, ptr %copy, align 8
  %4 = load ptr, ptr %string.addr, align 8
  %5 = load i64, ptr %length, align 8
  %6 = call i64 @llvm.objectsize.i64.p0(ptr %3, i1 false, i1 true, i1 false)
  %call5 = call ptr @__memcpy_chk(ptr noundef %3, ptr noundef %4, i64 noundef %5, i64 noundef %6) #11
  store ptr %3, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %7 = load ptr, ptr %retval, align 8
  ret ptr %7
}

; Function Attrs: nounwind ssp uwtable
define void @cJSON_free(ptr noundef %object) #0 {
entry:
  %0 = load ptr, ptr getelementptr inbounds (%struct.internal_hooks, ptr @global_hooks, i64 0, i32 1), align 8
  call void %0(ptr noundef %object) #11
  ret void
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_ParseWithOpts(ptr noundef %value, ptr noundef %return_parse_end, i32 noundef %require_null_terminated) #0 {
entry:
  %value.addr = alloca ptr, align 8
  %return_parse_end.addr = alloca ptr, align 8
  %require_null_terminated.addr = alloca i32, align 4
  store ptr %value, ptr %value.addr, align 8
  store ptr %return_parse_end, ptr %return_parse_end.addr, align 8
  store i32 %require_null_terminated, ptr %require_null_terminated.addr, align 4
  %cmp = icmp eq ptr %value, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %value.addr, align 8
  %call = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #11
  %add = add i64 %call, 1
  %1 = load ptr, ptr %return_parse_end.addr, align 8
  %2 = load i32, ptr %require_null_terminated.addr, align 4
  %call1 = call ptr @cJSON_ParseWithLengthOpts(ptr noundef %0, i64 noundef %add, ptr noundef %1, i32 noundef %2)
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi ptr [ %call1, %if.end ], [ null, %entry ]
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_ParseWithLengthOpts(ptr noundef %value, i64 noundef %buffer_length, ptr noundef %return_parse_end, i32 noundef %require_null_terminated) #0 {
entry:
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
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %buffer, i8 0, i64 56, i1 false)
  store ptr null, ptr %item, align 8
  store ptr null, ptr @global_error, align 8
  store i64 0, ptr getelementptr inbounds (%struct.error, ptr @global_error, i64 0, i32 1), align 8
  %0 = load ptr, ptr %value.addr, align 8
  %cmp = icmp eq ptr %0, null
  %1 = load i64, ptr %buffer_length.addr, align 8
  %cmp1 = icmp eq i64 %1, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %fail, label %if.end

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %value.addr, align 8
  store ptr %2, ptr %buffer, align 8
  %3 = load i64, ptr %buffer_length.addr, align 8
  %length = getelementptr inbounds %struct.parse_buffer, ptr %buffer, i64 0, i32 1
  store i64 %3, ptr %length, align 8
  %offset = getelementptr inbounds %struct.parse_buffer, ptr %buffer, i64 0, i32 2
  store i64 0, ptr %offset, align 8
  %hooks = getelementptr inbounds %struct.parse_buffer, ptr %buffer, i64 0, i32 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %hooks, ptr noundef nonnull align 8 dereferenceable(24) @global_hooks, i64 24, i1 false)
  %call = call ptr @cJSON_New_Item(ptr noundef nonnull @global_hooks)
  store ptr %call, ptr %item, align 8
  %cmp2 = icmp eq ptr %call, null
  br i1 %cmp2, label %fail, label %if.end4

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %item, align 8
  %call5 = call ptr @skip_utf8_bom(ptr noundef nonnull %buffer)
  %call6 = call ptr @buffer_skip_whitespace(ptr noundef %call5)
  %call7 = call i32 @parse_value(ptr noundef %4, ptr noundef %call6)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %fail, label %if.end9

if.end9:                                          ; preds = %if.end4
  %5 = load i32, ptr %require_null_terminated.addr, align 4
  %tobool10.not = icmp eq i32 %5, 0
  br i1 %tobool10.not, label %if.end23, label %if.then11

if.then11:                                        ; preds = %if.end9
  %call12 = call ptr @buffer_skip_whitespace(ptr noundef nonnull %buffer)
  %offset13 = getelementptr inbounds %struct.parse_buffer, ptr %buffer, i64 0, i32 2
  %6 = load i64, ptr %offset13, align 8
  %length14 = getelementptr inbounds %struct.parse_buffer, ptr %buffer, i64 0, i32 1
  %7 = load i64, ptr %length14, align 8
  %cmp15.not = icmp ult i64 %6, %7
  br i1 %cmp15.not, label %lor.lhs.false16, label %fail

lor.lhs.false16:                                  ; preds = %if.then11
  %8 = load ptr, ptr %buffer, align 8
  %offset18 = getelementptr inbounds %struct.parse_buffer, ptr %buffer, i64 0, i32 2
  %9 = load i64, ptr %offset18, align 8
  %add.ptr = getelementptr inbounds i8, ptr %8, i64 %9
  %10 = load i8, ptr %add.ptr, align 1
  %cmp19.not = icmp eq i8 %10, 0
  br i1 %cmp19.not, label %if.end23, label %fail

if.end23:                                         ; preds = %lor.lhs.false16, %if.end9
  %11 = load ptr, ptr %return_parse_end.addr, align 8
  %tobool24.not = icmp eq ptr %11, null
  br i1 %tobool24.not, label %if.end29, label %if.then25

if.then25:                                        ; preds = %if.end23
  %12 = load ptr, ptr %buffer, align 8
  %offset27 = getelementptr inbounds %struct.parse_buffer, ptr %buffer, i64 0, i32 2
  %13 = load i64, ptr %offset27, align 8
  %add.ptr28 = getelementptr inbounds i8, ptr %12, i64 %13
  %14 = load ptr, ptr %return_parse_end.addr, align 8
  store ptr %add.ptr28, ptr %14, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.end23
  %15 = load ptr, ptr %item, align 8
  br label %return

fail:                                             ; preds = %if.then11, %lor.lhs.false16, %if.end4, %if.end, %entry
  %16 = load ptr, ptr %item, align 8
  %cmp30.not = icmp eq ptr %16, null
  br i1 %cmp30.not, label %if.end33, label %if.then32

if.then32:                                        ; preds = %fail
  %17 = load ptr, ptr %item, align 8
  call void @cJSON_Delete(ptr noundef %17)
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %fail
  %18 = load ptr, ptr %value.addr, align 8
  %cmp34.not = icmp eq ptr %18, null
  br i1 %cmp34.not, label %return, label %if.then36

if.then36:                                        ; preds = %if.end33
  %19 = load ptr, ptr %value.addr, align 8
  store ptr %19, ptr %local_error, align 8
  %position = getelementptr inbounds %struct.error, ptr %local_error, i64 0, i32 1
  store i64 0, ptr %position, align 8
  %offset37 = getelementptr inbounds %struct.parse_buffer, ptr %buffer, i64 0, i32 2
  %20 = load i64, ptr %offset37, align 8
  %length38 = getelementptr inbounds %struct.parse_buffer, ptr %buffer, i64 0, i32 1
  %21 = load i64, ptr %length38, align 8
  %cmp39 = icmp ult i64 %20, %21
  br i1 %cmp39, label %if.then41, label %if.else

if.then41:                                        ; preds = %if.then36
  %offset42 = getelementptr inbounds %struct.parse_buffer, ptr %buffer, i64 0, i32 2
  %22 = load i64, ptr %offset42, align 8
  %position43 = getelementptr inbounds %struct.error, ptr %local_error, i64 0, i32 1
  store i64 %22, ptr %position43, align 8
  br label %if.end51

if.else:                                          ; preds = %if.then36
  %length44 = getelementptr inbounds %struct.parse_buffer, ptr %buffer, i64 0, i32 1
  %23 = load i64, ptr %length44, align 8
  %cmp45.not = icmp eq i64 %23, 0
  br i1 %cmp45.not, label %if.end51, label %if.then47

if.then47:                                        ; preds = %if.else
  %length48 = getelementptr inbounds %struct.parse_buffer, ptr %buffer, i64 0, i32 1
  %24 = load i64, ptr %length48, align 8
  %sub = add i64 %24, -1
  %position49 = getelementptr inbounds %struct.error, ptr %local_error, i64 0, i32 1
  store i64 %sub, ptr %position49, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.then47, %if.then41
  %25 = load ptr, ptr %return_parse_end.addr, align 8
  %cmp52.not = icmp eq ptr %25, null
  br i1 %cmp52.not, label %if.end58, label %if.then54

if.then54:                                        ; preds = %if.end51
  %26 = load ptr, ptr %local_error, align 8
  %position56 = getelementptr inbounds %struct.error, ptr %local_error, i64 0, i32 1
  %27 = load i64, ptr %position56, align 8
  %add.ptr57 = getelementptr inbounds i8, ptr %26, i64 %27
  %28 = load ptr, ptr %return_parse_end.addr, align 8
  store ptr %add.ptr57, ptr %28, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.then54, %if.end51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @global_error, ptr noundef nonnull align 8 dereferenceable(16) %local_error, i64 16, i1 false)
  br label %return

return:                                           ; preds = %if.end33, %if.end58, %if.end29
  %storemerge = phi ptr [ %15, %if.end29 ], [ null, %if.end58 ], [ null, %if.end33 ]
  ret ptr %storemerge
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nounwind ssp uwtable
define internal ptr @cJSON_New_Item(ptr noundef %hooks) #0 {
entry:
  %node = alloca ptr, align 8
  %0 = load ptr, ptr %hooks, align 8
  %call = call ptr %0(i64 noundef 64) #11
  store ptr %call, ptr %node, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %node, align 8
  %2 = call i64 @llvm.objectsize.i64.p0(ptr %1, i1 false, i1 true, i1 false)
  %call1 = call ptr @__memset_chk(ptr noundef %1, i32 noundef 0, i64 noundef 64, i64 noundef %2) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %node, align 8
  ret ptr %3
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @parse_value(ptr noundef %item, ptr noundef %input_buffer) #0 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca ptr, align 8
  %input_buffer.addr = alloca ptr, align 8
  store ptr %item, ptr %item.addr, align 8
  store ptr %input_buffer, ptr %input_buffer.addr, align 8
  %cmp = icmp eq ptr %input_buffer, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %input_buffer.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %input_buffer.addr, align 8
  %cmp2.not = icmp eq ptr %2, null
  br i1 %cmp2.not, label %if.end11, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %3 = load ptr, ptr %input_buffer.addr, align 8
  %offset = getelementptr inbounds %struct.parse_buffer, ptr %3, i64 0, i32 2
  %4 = load i64, ptr %offset, align 8
  %add = add i64 %4, 4
  %length = getelementptr inbounds %struct.parse_buffer, ptr %3, i64 0, i32 1
  %5 = load i64, ptr %length, align 8
  %cmp3.not = icmp ugt i64 %add, %5
  br i1 %cmp3.not, label %if.end11, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %land.lhs.true
  %6 = load ptr, ptr %input_buffer.addr, align 8
  %7 = load ptr, ptr %6, align 8
  %offset6 = getelementptr inbounds %struct.parse_buffer, ptr %6, i64 0, i32 2
  %8 = load i64, ptr %offset6, align 8
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 %8
  %call = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %add.ptr, ptr noundef nonnull dereferenceable(5) @.str.10, i64 noundef 4) #11
  %cmp7 = icmp eq i32 %call, 0
  br i1 %cmp7, label %if.then8, label %if.end11

if.then8:                                         ; preds = %land.lhs.true4
  %9 = load ptr, ptr %item.addr, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %9, i64 0, i32 3
  store i32 4, ptr %type, align 8
  %10 = load ptr, ptr %input_buffer.addr, align 8
  %offset9 = getelementptr inbounds %struct.parse_buffer, ptr %10, i64 0, i32 2
  %11 = load i64, ptr %offset9, align 8
  %add10 = add i64 %11, 4
  store i64 %add10, ptr %offset9, align 8
  store i32 1, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %land.lhs.true4, %land.lhs.true, %if.end
  %12 = load ptr, ptr %input_buffer.addr, align 8
  %cmp12.not = icmp eq ptr %12, null
  br i1 %cmp12.not, label %if.end28, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %if.end11
  %13 = load ptr, ptr %input_buffer.addr, align 8
  %offset14 = getelementptr inbounds %struct.parse_buffer, ptr %13, i64 0, i32 2
  %14 = load i64, ptr %offset14, align 8
  %add15 = add i64 %14, 5
  %length16 = getelementptr inbounds %struct.parse_buffer, ptr %13, i64 0, i32 1
  %15 = load i64, ptr %length16, align 8
  %cmp17.not = icmp ugt i64 %add15, %15
  br i1 %cmp17.not, label %if.end28, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %land.lhs.true13
  %16 = load ptr, ptr %input_buffer.addr, align 8
  %17 = load ptr, ptr %16, align 8
  %offset20 = getelementptr inbounds %struct.parse_buffer, ptr %16, i64 0, i32 2
  %18 = load i64, ptr %offset20, align 8
  %add.ptr21 = getelementptr inbounds i8, ptr %17, i64 %18
  %call22 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %add.ptr21, ptr noundef nonnull dereferenceable(6) @.str.11, i64 noundef 5) #11
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then24, label %if.end28

if.then24:                                        ; preds = %land.lhs.true18
  %19 = load ptr, ptr %item.addr, align 8
  %type25 = getelementptr inbounds %struct.cJSON, ptr %19, i64 0, i32 3
  store i32 1, ptr %type25, align 8
  %20 = load ptr, ptr %input_buffer.addr, align 8
  %offset26 = getelementptr inbounds %struct.parse_buffer, ptr %20, i64 0, i32 2
  %21 = load i64, ptr %offset26, align 8
  %add27 = add i64 %21, 5
  store i64 %add27, ptr %offset26, align 8
  store i32 1, ptr %retval, align 4
  br label %return

if.end28:                                         ; preds = %land.lhs.true18, %land.lhs.true13, %if.end11
  %22 = load ptr, ptr %input_buffer.addr, align 8
  %cmp29.not = icmp eq ptr %22, null
  br i1 %cmp29.not, label %if.end45, label %land.lhs.true30

land.lhs.true30:                                  ; preds = %if.end28
  %23 = load ptr, ptr %input_buffer.addr, align 8
  %offset31 = getelementptr inbounds %struct.parse_buffer, ptr %23, i64 0, i32 2
  %24 = load i64, ptr %offset31, align 8
  %add32 = add i64 %24, 4
  %length33 = getelementptr inbounds %struct.parse_buffer, ptr %23, i64 0, i32 1
  %25 = load i64, ptr %length33, align 8
  %cmp34.not = icmp ugt i64 %add32, %25
  br i1 %cmp34.not, label %if.end45, label %land.lhs.true35

land.lhs.true35:                                  ; preds = %land.lhs.true30
  %26 = load ptr, ptr %input_buffer.addr, align 8
  %27 = load ptr, ptr %26, align 8
  %offset37 = getelementptr inbounds %struct.parse_buffer, ptr %26, i64 0, i32 2
  %28 = load i64, ptr %offset37, align 8
  %add.ptr38 = getelementptr inbounds i8, ptr %27, i64 %28
  %call39 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %add.ptr38, ptr noundef nonnull dereferenceable(5) @.str.12, i64 noundef 4) #11
  %cmp40 = icmp eq i32 %call39, 0
  br i1 %cmp40, label %if.then41, label %if.end45

if.then41:                                        ; preds = %land.lhs.true35
  %29 = load ptr, ptr %item.addr, align 8
  %type42 = getelementptr inbounds %struct.cJSON, ptr %29, i64 0, i32 3
  store i32 2, ptr %type42, align 8
  %valueint = getelementptr inbounds %struct.cJSON, ptr %29, i64 0, i32 5
  store i32 1, ptr %valueint, align 8
  %30 = load ptr, ptr %input_buffer.addr, align 8
  %offset43 = getelementptr inbounds %struct.parse_buffer, ptr %30, i64 0, i32 2
  %31 = load i64, ptr %offset43, align 8
  %add44 = add i64 %31, 4
  store i64 %add44, ptr %offset43, align 8
  store i32 1, ptr %retval, align 4
  br label %return

if.end45:                                         ; preds = %land.lhs.true35, %land.lhs.true30, %if.end28
  %32 = load ptr, ptr %input_buffer.addr, align 8
  %cmp46.not = icmp eq ptr %32, null
  br i1 %cmp46.not, label %if.end60, label %land.lhs.true47

land.lhs.true47:                                  ; preds = %if.end45
  %33 = load ptr, ptr %input_buffer.addr, align 8
  %offset48 = getelementptr inbounds %struct.parse_buffer, ptr %33, i64 0, i32 2
  %34 = load i64, ptr %offset48, align 8
  %length50 = getelementptr inbounds %struct.parse_buffer, ptr %33, i64 0, i32 1
  %35 = load i64, ptr %length50, align 8
  %cmp51 = icmp ult i64 %34, %35
  br i1 %cmp51, label %land.lhs.true52, label %if.end60

land.lhs.true52:                                  ; preds = %land.lhs.true47
  %36 = load ptr, ptr %input_buffer.addr, align 8
  %37 = load ptr, ptr %36, align 8
  %offset54 = getelementptr inbounds %struct.parse_buffer, ptr %36, i64 0, i32 2
  %38 = load i64, ptr %offset54, align 8
  %add.ptr55 = getelementptr inbounds i8, ptr %37, i64 %38
  %39 = load i8, ptr %add.ptr55, align 1
  %cmp56 = icmp eq i8 %39, 34
  br i1 %cmp56, label %if.then58, label %if.end60

if.then58:                                        ; preds = %land.lhs.true52
  %40 = load ptr, ptr %item.addr, align 8
  %41 = load ptr, ptr %input_buffer.addr, align 8
  %call59 = call i32 @parse_string(ptr noundef %40, ptr noundef %41)
  store i32 %call59, ptr %retval, align 4
  br label %return

if.end60:                                         ; preds = %land.lhs.true52, %land.lhs.true47, %if.end45
  %42 = load ptr, ptr %input_buffer.addr, align 8
  %cmp61.not = icmp eq ptr %42, null
  br i1 %cmp61.not, label %if.end95, label %land.lhs.true63

land.lhs.true63:                                  ; preds = %if.end60
  %43 = load ptr, ptr %input_buffer.addr, align 8
  %offset64 = getelementptr inbounds %struct.parse_buffer, ptr %43, i64 0, i32 2
  %44 = load i64, ptr %offset64, align 8
  %length66 = getelementptr inbounds %struct.parse_buffer, ptr %43, i64 0, i32 1
  %45 = load i64, ptr %length66, align 8
  %cmp67 = icmp ult i64 %44, %45
  br i1 %cmp67, label %land.lhs.true69, label %if.end95

land.lhs.true69:                                  ; preds = %land.lhs.true63
  %46 = load ptr, ptr %input_buffer.addr, align 8
  %47 = load ptr, ptr %46, align 8
  %offset71 = getelementptr inbounds %struct.parse_buffer, ptr %46, i64 0, i32 2
  %48 = load i64, ptr %offset71, align 8
  %add.ptr72 = getelementptr inbounds i8, ptr %47, i64 %48
  %49 = load i8, ptr %add.ptr72, align 1
  %cmp75 = icmp eq i8 %49, 45
  br i1 %cmp75, label %if.then93, label %lor.lhs.false77

lor.lhs.false77:                                  ; preds = %land.lhs.true69
  %50 = load ptr, ptr %input_buffer.addr, align 8
  %51 = load ptr, ptr %50, align 8
  %offset79 = getelementptr inbounds %struct.parse_buffer, ptr %50, i64 0, i32 2
  %52 = load i64, ptr %offset79, align 8
  %add.ptr80 = getelementptr inbounds i8, ptr %51, i64 %52
  %53 = load i8, ptr %add.ptr80, align 1
  %cmp83 = icmp ugt i8 %53, 47
  br i1 %cmp83, label %land.lhs.true85, label %if.end95

land.lhs.true85:                                  ; preds = %lor.lhs.false77
  %54 = load ptr, ptr %input_buffer.addr, align 8
  %55 = load ptr, ptr %54, align 8
  %offset87 = getelementptr inbounds %struct.parse_buffer, ptr %54, i64 0, i32 2
  %56 = load i64, ptr %offset87, align 8
  %add.ptr88 = getelementptr inbounds i8, ptr %55, i64 %56
  %57 = load i8, ptr %add.ptr88, align 1
  %cmp91 = icmp ult i8 %57, 58
  br i1 %cmp91, label %if.then93, label %if.end95

if.then93:                                        ; preds = %land.lhs.true85, %land.lhs.true69
  %58 = load ptr, ptr %item.addr, align 8
  %59 = load ptr, ptr %input_buffer.addr, align 8
  %call94 = call i32 @parse_number(ptr noundef %58, ptr noundef %59)
  store i32 %call94, ptr %retval, align 4
  br label %return

if.end95:                                         ; preds = %land.lhs.true85, %lor.lhs.false77, %land.lhs.true63, %if.end60
  %60 = load ptr, ptr %input_buffer.addr, align 8
  %cmp96.not = icmp eq ptr %60, null
  br i1 %cmp96.not, label %if.end114, label %land.lhs.true98

land.lhs.true98:                                  ; preds = %if.end95
  %61 = load ptr, ptr %input_buffer.addr, align 8
  %offset99 = getelementptr inbounds %struct.parse_buffer, ptr %61, i64 0, i32 2
  %62 = load i64, ptr %offset99, align 8
  %length101 = getelementptr inbounds %struct.parse_buffer, ptr %61, i64 0, i32 1
  %63 = load i64, ptr %length101, align 8
  %cmp102 = icmp ult i64 %62, %63
  br i1 %cmp102, label %land.lhs.true104, label %if.end114

land.lhs.true104:                                 ; preds = %land.lhs.true98
  %64 = load ptr, ptr %input_buffer.addr, align 8
  %65 = load ptr, ptr %64, align 8
  %offset106 = getelementptr inbounds %struct.parse_buffer, ptr %64, i64 0, i32 2
  %66 = load i64, ptr %offset106, align 8
  %add.ptr107 = getelementptr inbounds i8, ptr %65, i64 %66
  %67 = load i8, ptr %add.ptr107, align 1
  %cmp110 = icmp eq i8 %67, 91
  br i1 %cmp110, label %if.then112, label %if.end114

if.then112:                                       ; preds = %land.lhs.true104
  %68 = load ptr, ptr %item.addr, align 8
  %69 = load ptr, ptr %input_buffer.addr, align 8
  %call113 = call i32 @parse_array(ptr noundef %68, ptr noundef %69)
  store i32 %call113, ptr %retval, align 4
  br label %return

if.end114:                                        ; preds = %land.lhs.true104, %land.lhs.true98, %if.end95
  %70 = load ptr, ptr %input_buffer.addr, align 8
  %cmp115.not = icmp eq ptr %70, null
  br i1 %cmp115.not, label %if.end133, label %land.lhs.true117

land.lhs.true117:                                 ; preds = %if.end114
  %71 = load ptr, ptr %input_buffer.addr, align 8
  %offset118 = getelementptr inbounds %struct.parse_buffer, ptr %71, i64 0, i32 2
  %72 = load i64, ptr %offset118, align 8
  %length120 = getelementptr inbounds %struct.parse_buffer, ptr %71, i64 0, i32 1
  %73 = load i64, ptr %length120, align 8
  %cmp121 = icmp ult i64 %72, %73
  br i1 %cmp121, label %land.lhs.true123, label %if.end133

land.lhs.true123:                                 ; preds = %land.lhs.true117
  %74 = load ptr, ptr %input_buffer.addr, align 8
  %75 = load ptr, ptr %74, align 8
  %offset125 = getelementptr inbounds %struct.parse_buffer, ptr %74, i64 0, i32 2
  %76 = load i64, ptr %offset125, align 8
  %add.ptr126 = getelementptr inbounds i8, ptr %75, i64 %76
  %77 = load i8, ptr %add.ptr126, align 1
  %cmp129 = icmp eq i8 %77, 123
  br i1 %cmp129, label %if.then131, label %if.end133

if.then131:                                       ; preds = %land.lhs.true123
  %78 = load ptr, ptr %item.addr, align 8
  %79 = load ptr, ptr %input_buffer.addr, align 8
  %call132 = call i32 @parse_object(ptr noundef %78, ptr noundef %79)
  store i32 %call132, ptr %retval, align 4
  br label %return

if.end133:                                        ; preds = %land.lhs.true123, %land.lhs.true117, %if.end114
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end133, %if.then131, %if.then112, %if.then93, %if.then58, %if.then41, %if.then24, %if.then8, %if.then
  %80 = load i32, ptr %retval, align 4
  ret i32 %80
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @buffer_skip_whitespace(ptr noundef %buffer) #0 {
entry:
  %retval = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  %cmp = icmp eq ptr %buffer, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %buffer.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %buffer.addr, align 8
  %cmp2.not = icmp eq ptr %2, null
  br i1 %cmp2.not, label %if.then4, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %3 = load ptr, ptr %buffer.addr, align 8
  %offset = getelementptr inbounds %struct.parse_buffer, ptr %3, i64 0, i32 2
  %4 = load i64, ptr %offset, align 8
  %length = getelementptr inbounds %struct.parse_buffer, ptr %3, i64 0, i32 1
  %5 = load i64, ptr %length, align 8
  %cmp3 = icmp ult i64 %4, %5
  br i1 %cmp3, label %while.cond, label %if.then4

if.then4:                                         ; preds = %land.lhs.true, %if.end
  %6 = load ptr, ptr %buffer.addr, align 8
  store ptr %6, ptr %retval, align 8
  br label %return

while.cond:                                       ; preds = %land.lhs.true, %while.body
  %7 = load ptr, ptr %buffer.addr, align 8
  %cmp6.not = icmp eq ptr %7, null
  br i1 %cmp6.not, label %while.end, label %land.lhs.true7

land.lhs.true7:                                   ; preds = %while.cond
  %8 = load ptr, ptr %buffer.addr, align 8
  %offset8 = getelementptr inbounds %struct.parse_buffer, ptr %8, i64 0, i32 2
  %9 = load i64, ptr %offset8, align 8
  %length10 = getelementptr inbounds %struct.parse_buffer, ptr %8, i64 0, i32 1
  %10 = load i64, ptr %length10, align 8
  %cmp11 = icmp ult i64 %9, %10
  br i1 %cmp11, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %land.lhs.true7
  %11 = load ptr, ptr %buffer.addr, align 8
  %12 = load ptr, ptr %11, align 8
  %offset13 = getelementptr inbounds %struct.parse_buffer, ptr %11, i64 0, i32 2
  %13 = load i64, ptr %offset13, align 8
  %add.ptr = getelementptr inbounds i8, ptr %12, i64 %13
  %14 = load i8, ptr %add.ptr, align 1
  %cmp14 = icmp ult i8 %14, 33
  br i1 %cmp14, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %15 = load ptr, ptr %buffer.addr, align 8
  %offset16 = getelementptr inbounds %struct.parse_buffer, ptr %15, i64 0, i32 2
  %16 = load i64, ptr %offset16, align 8
  %inc = add i64 %16, 1
  store i64 %inc, ptr %offset16, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %land.lhs.true7, %while.cond, %land.rhs
  %17 = load ptr, ptr %buffer.addr, align 8
  %offset17 = getelementptr inbounds %struct.parse_buffer, ptr %17, i64 0, i32 2
  %18 = load i64, ptr %offset17, align 8
  %length18 = getelementptr inbounds %struct.parse_buffer, ptr %17, i64 0, i32 1
  %19 = load i64, ptr %length18, align 8
  %cmp19 = icmp eq i64 %18, %19
  br i1 %cmp19, label %if.then21, label %if.end23

if.then21:                                        ; preds = %while.end
  %20 = load ptr, ptr %buffer.addr, align 8
  %offset22 = getelementptr inbounds %struct.parse_buffer, ptr %20, i64 0, i32 2
  %21 = load i64, ptr %offset22, align 8
  %dec = add i64 %21, -1
  store i64 %dec, ptr %offset22, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %while.end
  %22 = load ptr, ptr %buffer.addr, align 8
  store ptr %22, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end23, %if.then4, %if.then
  %23 = load ptr, ptr %retval, align 8
  ret ptr %23
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @skip_utf8_bom(ptr noundef %buffer) #0 {
entry:
  %buffer.addr = alloca ptr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  %cmp = icmp eq ptr %buffer, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %buffer.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %return, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %buffer.addr, align 8
  %offset = getelementptr inbounds %struct.parse_buffer, ptr %2, i64 0, i32 2
  %3 = load i64, ptr %offset, align 8
  %cmp3.not = icmp eq i64 %3, 0
  br i1 %cmp3.not, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false2
  %4 = load ptr, ptr %buffer.addr, align 8
  %cmp4.not = icmp eq ptr %4, null
  br i1 %cmp4.not, label %if.end14, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %buffer.addr, align 8
  %offset5 = getelementptr inbounds %struct.parse_buffer, ptr %5, i64 0, i32 2
  %6 = load i64, ptr %offset5, align 8
  %add = add i64 %6, 4
  %length = getelementptr inbounds %struct.parse_buffer, ptr %5, i64 0, i32 1
  %7 = load i64, ptr %length, align 8
  %cmp6 = icmp ult i64 %add, %7
  br i1 %cmp6, label %land.lhs.true7, label %if.end14

land.lhs.true7:                                   ; preds = %land.lhs.true
  %8 = load ptr, ptr %buffer.addr, align 8
  %9 = load ptr, ptr %8, align 8
  %offset9 = getelementptr inbounds %struct.parse_buffer, ptr %8, i64 0, i32 2
  %10 = load i64, ptr %offset9, align 8
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %10
  %call = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %add.ptr, ptr noundef nonnull dereferenceable(4) @.str.9, i64 noundef 3) #11
  %cmp10 = icmp eq i32 %call, 0
  br i1 %cmp10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %land.lhs.true7
  %11 = load ptr, ptr %buffer.addr, align 8
  %offset12 = getelementptr inbounds %struct.parse_buffer, ptr %11, i64 0, i32 2
  %12 = load i64, ptr %offset12, align 8
  %add13 = add i64 %12, 3
  store i64 %add13, ptr %offset12, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %land.lhs.true7, %land.lhs.true, %if.end
  %13 = load ptr, ptr %buffer.addr, align 8
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %lor.lhs.false2, %if.end14
  %storemerge = phi ptr [ %13, %if.end14 ], [ null, %lor.lhs.false2 ], [ null, %lor.lhs.false ], [ null, %entry ]
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_Parse(ptr noundef %value) #0 {
entry:
  %value.addr.i = alloca ptr, align 8
  %return_parse_end.addr.i = alloca ptr, align 8
  %require_null_terminated.addr.i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %return_parse_end.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %require_null_terminated.addr.i)
  store ptr %value, ptr %value.addr.i, align 8
  store ptr null, ptr %return_parse_end.addr.i, align 8
  store i32 0, ptr %require_null_terminated.addr.i, align 4
  %cmp.i = icmp eq ptr %value, null
  br i1 %cmp.i, label %pc_inline_source_snapshot_public_repos_cJSON_tests_print_number_0.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %0 = load ptr, ptr %value.addr.i, align 8
  %call.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #11
  %add.i = add i64 %call.i, 1
  %1 = load ptr, ptr %return_parse_end.addr.i, align 8
  %2 = load i32, ptr %require_null_terminated.addr.i, align 4
  %call1.i = call ptr @cJSON_ParseWithLengthOpts(ptr noundef %0, i64 noundef %add.i, ptr noundef %1, i32 noundef %2)
  br label %pc_inline_source_snapshot_public_repos_cJSON_tests_print_number_0.exit

pc_inline_source_snapshot_public_repos_cJSON_tests_print_number_0.exit: ; preds = %entry, %if.end.i
  %storemerge = phi ptr [ %call1.i, %if.end.i ], [ null, %entry ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %return_parse_end.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %require_null_terminated.addr.i)
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_ParseWithLength(ptr noundef %value, i64 noundef %buffer_length) #0 {
entry:
  %call = call ptr @cJSON_ParseWithLengthOpts(ptr noundef %value, i64 noundef %buffer_length, ptr noundef null, i32 noundef 0)
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_Print(ptr noundef %item) #0 {
entry:
  %call = call ptr @print(ptr noundef %item, i32 noundef 1, ptr noundef nonnull @global_hooks)
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @print(ptr noundef %item, i32 noundef %format, ptr noundef %hooks) #0 {
entry:
  %item.addr = alloca ptr, align 8
  %format.addr = alloca i32, align 4
  %hooks.addr = alloca ptr, align 8
  %buffer = alloca [1 x %struct.printbuffer], align 8
  %printed = alloca ptr, align 8
  store ptr %item, ptr %item.addr, align 8
  store i32 %format, ptr %format.addr, align 4
  store ptr %hooks, ptr %hooks.addr, align 8
  store ptr null, ptr %printed, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %buffer, i8 0, i64 64, i1 false)
  %0 = load ptr, ptr %hooks, align 8
  %call = call ptr %0(i64 noundef 256) #11
  store ptr %call, ptr %buffer, align 8
  %length = getelementptr inbounds %struct.printbuffer, ptr %buffer, i64 0, i32 1
  store i64 256, ptr %length, align 8
  %1 = load i32, ptr %format.addr, align 4
  %format5 = getelementptr inbounds %struct.printbuffer, ptr %buffer, i64 0, i32 5
  store i32 %1, ptr %format5, align 4
  %hooks7 = getelementptr inbounds %struct.printbuffer, ptr %buffer, i64 0, i32 6
  %2 = load ptr, ptr %hooks.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %hooks7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %3 = load ptr, ptr %buffer, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %fail, label %if.end

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %item.addr, align 8
  %call11 = call i32 @print_value(ptr noundef %4, ptr noundef nonnull %buffer)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %fail, label %if.end13

if.end13:                                         ; preds = %if.end
  call void @update_offset(ptr noundef nonnull %buffer)
  %5 = load ptr, ptr %hooks.addr, align 8
  %reallocate = getelementptr inbounds %struct.internal_hooks, ptr %5, i64 0, i32 2
  %6 = load ptr, ptr %reallocate, align 8
  %cmp15.not = icmp eq ptr %6, null
  br i1 %cmp15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end13
  %7 = load ptr, ptr %hooks.addr, align 8
  %reallocate17 = getelementptr inbounds %struct.internal_hooks, ptr %7, i64 0, i32 2
  %8 = load ptr, ptr %reallocate17, align 8
  %9 = load ptr, ptr %buffer, align 8
  %offset = getelementptr inbounds %struct.printbuffer, ptr %buffer, i64 0, i32 2
  %10 = load i64, ptr %offset, align 8
  %add = add i64 %10, 1
  %call21 = call ptr %8(ptr noundef %9, i64 noundef %add) #11
  store ptr %call21, ptr %printed, align 8
  %cmp22 = icmp eq ptr %call21, null
  br i1 %cmp22, label %fail, label %if.end55

if.else:                                          ; preds = %if.end13
  %11 = load ptr, ptr %hooks.addr, align 8
  %12 = load ptr, ptr %11, align 8
  %offset29 = getelementptr inbounds %struct.printbuffer, ptr %buffer, i64 0, i32 2
  %13 = load i64, ptr %offset29, align 8
  %add30 = add i64 %13, 1
  %call31 = call ptr %12(i64 noundef %add30) #11
  store ptr %call31, ptr %printed, align 8
  %cmp32 = icmp eq ptr %call31, null
  br i1 %cmp32, label %fail, label %if.end34

if.end34:                                         ; preds = %if.else
  %14 = load ptr, ptr %printed, align 8
  %15 = load ptr, ptr %buffer, align 8
  %length38 = getelementptr inbounds %struct.printbuffer, ptr %buffer, i64 0, i32 1
  %16 = load i64, ptr %length38, align 8
  %offset40 = getelementptr inbounds %struct.printbuffer, ptr %buffer, i64 0, i32 2
  %17 = load i64, ptr %offset40, align 8
  %add41 = add i64 %17, 1
  %cmp42 = icmp ult i64 %16, %add41
  %length44 = getelementptr inbounds %struct.printbuffer, ptr %buffer, i64 0, i32 1
  %18 = load i64, ptr %length44, align 8
  %offset46 = getelementptr inbounds %struct.printbuffer, ptr %buffer, i64 0, i32 2
  %19 = load i64, ptr %offset46, align 8
  %add47 = add i64 %19, 1
  %cond = select i1 %cmp42, i64 %18, i64 %add47
  %20 = load ptr, ptr %printed, align 8
  %21 = call i64 @llvm.objectsize.i64.p0(ptr %20, i1 false, i1 true, i1 false)
  %call48 = call ptr @__memcpy_chk(ptr noundef %14, ptr noundef %15, i64 noundef %cond, i64 noundef %21) #11
  %offset50 = getelementptr inbounds %struct.printbuffer, ptr %buffer, i64 0, i32 2
  %22 = load i64, ptr %offset50, align 8
  %arrayidx = getelementptr inbounds i8, ptr %20, i64 %22
  store i8 0, ptr %arrayidx, align 1
  %23 = load ptr, ptr %hooks.addr, align 8
  %deallocate = getelementptr inbounds %struct.internal_hooks, ptr %23, i64 0, i32 1
  %24 = load ptr, ptr %deallocate, align 8
  %25 = load ptr, ptr %buffer, align 8
  call void %24(ptr noundef %25) #11
  br label %if.end55

if.end55:                                         ; preds = %if.then16, %if.end34
  store ptr null, ptr %buffer, align 8
  %26 = load ptr, ptr %printed, align 8
  br label %return

fail:                                             ; preds = %if.else, %if.then16, %if.end, %entry
  %27 = load ptr, ptr %buffer, align 8
  %cmp58.not = icmp eq ptr %27, null
  br i1 %cmp58.not, label %if.end65, label %if.then59

if.then59:                                        ; preds = %fail
  %28 = load ptr, ptr %hooks.addr, align 8
  %deallocate60 = getelementptr inbounds %struct.internal_hooks, ptr %28, i64 0, i32 1
  %29 = load ptr, ptr %deallocate60, align 8
  %30 = load ptr, ptr %buffer, align 8
  call void %29(ptr noundef %30) #11
  store ptr null, ptr %buffer, align 8
  br label %if.end65

if.end65:                                         ; preds = %if.then59, %fail
  %31 = load ptr, ptr %printed, align 8
  %cmp66.not = icmp eq ptr %31, null
  br i1 %cmp66.not, label %return, label %if.then67

if.then67:                                        ; preds = %if.end65
  %32 = load ptr, ptr %hooks.addr, align 8
  %deallocate68 = getelementptr inbounds %struct.internal_hooks, ptr %32, i64 0, i32 1
  %33 = load ptr, ptr %deallocate68, align 8
  %34 = load ptr, ptr %printed, align 8
  call void %33(ptr noundef %34) #11
  store ptr null, ptr %printed, align 8
  br label %return

return:                                           ; preds = %if.end65, %if.then67, %if.end55
  %storemerge = phi ptr [ %26, %if.end55 ], [ null, %if.then67 ], [ null, %if.end65 ]
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_PrintUnformatted(ptr noundef %item) #0 {
entry:
  %call = call ptr @print(ptr noundef %item, i32 noundef 0, ptr noundef nonnull @global_hooks)
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
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %p, i8 0, i64 64, i1 false)
  %cmp = icmp slt i32 %prebuffer, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @global_hooks, align 8
  %1 = load i32, ptr %prebuffer.addr, align 4
  %conv = sext i32 %1 to i64
  %call = call ptr %0(i64 noundef %conv) #11
  store ptr %call, ptr %p, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %2 = load i32, ptr %prebuffer.addr, align 4
  %conv4 = sext i32 %2 to i64
  %length = getelementptr inbounds %struct.printbuffer, ptr %p, i64 0, i32 1
  store i64 %conv4, ptr %length, align 8
  %offset = getelementptr inbounds %struct.printbuffer, ptr %p, i64 0, i32 2
  store i64 0, ptr %offset, align 8
  %noalloc = getelementptr inbounds %struct.printbuffer, ptr %p, i64 0, i32 4
  store i32 0, ptr %noalloc, align 8
  %3 = load i32, ptr %fmt.addr, align 4
  %format = getelementptr inbounds %struct.printbuffer, ptr %p, i64 0, i32 5
  store i32 %3, ptr %format, align 4
  %hooks = getelementptr inbounds %struct.printbuffer, ptr %p, i64 0, i32 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %hooks, ptr noundef nonnull align 8 dereferenceable(24) @global_hooks, i64 24, i1 false)
  %4 = load ptr, ptr %item.addr, align 8
  %call5 = call i32 @print_value(ptr noundef %4, ptr noundef nonnull %p)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end3
  %5 = load ptr, ptr getelementptr inbounds (%struct.internal_hooks, ptr @global_hooks, i64 0, i32 1), align 8
  %6 = load ptr, ptr %p, align 8
  call void %5(ptr noundef %6) #11
  store ptr null, ptr %p, align 8
  store ptr null, ptr %retval, align 8
  br label %return

if.end10:                                         ; preds = %if.end3
  %7 = load ptr, ptr %p, align 8
  store ptr %7, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end10, %if.then7, %if.then2, %if.then
  %8 = load ptr, ptr %retval, align 8
  ret ptr %8
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
  %cmp = icmp eq ptr %item, null
  %0 = load ptr, ptr %output_buffer.addr, align 8
  %cmp1 = icmp eq ptr %0, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %item.addr, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %1, i64 0, i32 3
  %2 = load i32, ptr %type, align 8
  %trunc = trunc i32 %2 to i8
  switch i8 %trunc, label %sw.default [
    i8 4, label %sw.bb
    i8 1, label %sw.bb6
    i8 2, label %sw.bb12
    i8 8, label %sw.bb18
    i8 -128, label %sw.bb20
    i8 16, label %sw.bb32
    i8 32, label %sw.bb34
    i8 64, label %sw.bb36
  ]

sw.bb:                                            ; preds = %if.end
  %3 = load ptr, ptr %output_buffer.addr, align 8
  %call = call ptr @ensure(ptr noundef %3, i64 noundef 5)
  store ptr %call, ptr %output, align 8
  %cmp2 = icmp eq ptr %call, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %sw.bb
  store i32 0, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %sw.bb
  %4 = load ptr, ptr %output, align 8
  %5 = call i64 @llvm.objectsize.i64.p0(ptr %4, i1 false, i1 true, i1 false)
  %6 = call ptr @__memcpy_chk(ptr %4, ptr nonnull @.str.10, i64 5, i64 %5)
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb6:                                           ; preds = %if.end
  %7 = load ptr, ptr %output_buffer.addr, align 8
  %call7 = call ptr @ensure(ptr noundef %7, i64 noundef 6)
  store ptr %call7, ptr %output, align 8
  %cmp8 = icmp eq ptr %call7, null
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %sw.bb6
  store i32 0, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %sw.bb6
  %8 = load ptr, ptr %output, align 8
  %9 = call i64 @llvm.objectsize.i64.p0(ptr %8, i1 false, i1 true, i1 false)
  %10 = call ptr @__memcpy_chk(ptr %8, ptr nonnull @.str.11, i64 6, i64 %9)
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb12:                                          ; preds = %if.end
  %11 = load ptr, ptr %output_buffer.addr, align 8
  %call13 = call ptr @ensure(ptr noundef %11, i64 noundef 5)
  store ptr %call13, ptr %output, align 8
  %cmp14 = icmp eq ptr %call13, null
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %sw.bb12
  store i32 0, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %sw.bb12
  %12 = load ptr, ptr %output, align 8
  %13 = call i64 @llvm.objectsize.i64.p0(ptr %12, i1 false, i1 true, i1 false)
  %14 = call ptr @__memcpy_chk(ptr %12, ptr nonnull @.str.12, i64 5, i64 %13)
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb18:                                          ; preds = %if.end
  %15 = load ptr, ptr %item.addr, align 8
  %16 = load ptr, ptr %output_buffer.addr, align 8
  %call19 = call i32 @print_number(ptr noundef %15, ptr noundef %16)
  store i32 %call19, ptr %retval, align 4
  br label %return

sw.bb20:                                          ; preds = %if.end
  store i64 0, ptr %raw_length, align 8
  %17 = load ptr, ptr %item.addr, align 8
  %valuestring = getelementptr inbounds %struct.cJSON, ptr %17, i64 0, i32 4
  %18 = load ptr, ptr %valuestring, align 8
  %cmp21 = icmp eq ptr %18, null
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %sw.bb20
  store i32 0, ptr %retval, align 4
  br label %return

if.end23:                                         ; preds = %sw.bb20
  %19 = load ptr, ptr %item.addr, align 8
  %valuestring24 = getelementptr inbounds %struct.cJSON, ptr %19, i64 0, i32 4
  %20 = load ptr, ptr %valuestring24, align 8
  %call25 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #11
  %add = add i64 %call25, 1
  store i64 %add, ptr %raw_length, align 8
  %21 = load ptr, ptr %output_buffer.addr, align 8
  %call26 = call ptr @ensure(ptr noundef %21, i64 noundef %add)
  store ptr %call26, ptr %output, align 8
  %cmp27 = icmp eq ptr %call26, null
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end23
  store i32 0, ptr %retval, align 4
  br label %return

if.end29:                                         ; preds = %if.end23
  %22 = load ptr, ptr %output, align 8
  %23 = load ptr, ptr %item.addr, align 8
  %valuestring30 = getelementptr inbounds %struct.cJSON, ptr %23, i64 0, i32 4
  %24 = load ptr, ptr %valuestring30, align 8
  %25 = load i64, ptr %raw_length, align 8
  %26 = call i64 @llvm.objectsize.i64.p0(ptr %22, i1 false, i1 true, i1 false)
  %call31 = call ptr @__memcpy_chk(ptr noundef %22, ptr noundef %24, i64 noundef %25, i64 noundef %26) #11
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb32:                                          ; preds = %if.end
  %27 = load ptr, ptr %item.addr, align 8
  %28 = load ptr, ptr %output_buffer.addr, align 8
  %call33 = call i32 @print_string(ptr noundef %27, ptr noundef %28)
  store i32 %call33, ptr %retval, align 4
  br label %return

sw.bb34:                                          ; preds = %if.end
  %29 = load ptr, ptr %item.addr, align 8
  %30 = load ptr, ptr %output_buffer.addr, align 8
  %call35 = call i32 @print_array(ptr noundef %29, ptr noundef %30)
  store i32 %call35, ptr %retval, align 4
  br label %return

sw.bb36:                                          ; preds = %if.end
  %31 = load ptr, ptr %item.addr, align 8
  %32 = load ptr, ptr %output_buffer.addr, align 8
  %call37 = call i32 @print_object(ptr noundef %31, ptr noundef %32)
  store i32 %call37, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb36, %sw.bb34, %sw.bb32, %if.end29, %if.then28, %if.then22, %sw.bb18, %if.end16, %if.then15, %if.end10, %if.then9, %if.end4, %if.then3, %if.then
  %33 = load i32, ptr %retval, align 4
  ret i32 %33
}

; Function Attrs: nounwind ssp uwtable
define i32 @cJSON_PrintPreallocated(ptr noundef %item, ptr noundef %buffer, i32 noundef %length, i32 noundef %format) #0 {
entry:
  %item.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %format.addr = alloca i32, align 4
  %p = alloca %struct.printbuffer, align 8
  store ptr %item, ptr %item.addr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  store i32 %length, ptr %length.addr, align 4
  store i32 %format, ptr %format.addr, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %p, i8 0, i64 64, i1 false)
  %cmp = icmp slt i32 %length, 0
  %0 = load ptr, ptr %buffer.addr, align 8
  %cmp1 = icmp eq ptr %0, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %return, label %if.end

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %buffer.addr, align 8
  store ptr %1, ptr %p, align 8
  %2 = load i32, ptr %length.addr, align 4
  %conv = sext i32 %2 to i64
  %length3 = getelementptr inbounds %struct.printbuffer, ptr %p, i64 0, i32 1
  store i64 %conv, ptr %length3, align 8
  %offset = getelementptr inbounds %struct.printbuffer, ptr %p, i64 0, i32 2
  store i64 0, ptr %offset, align 8
  %noalloc = getelementptr inbounds %struct.printbuffer, ptr %p, i64 0, i32 4
  store i32 1, ptr %noalloc, align 8
  %3 = load i32, ptr %format.addr, align 4
  %format4 = getelementptr inbounds %struct.printbuffer, ptr %p, i64 0, i32 5
  store i32 %3, ptr %format4, align 4
  %hooks = getelementptr inbounds %struct.printbuffer, ptr %p, i64 0, i32 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %hooks, ptr noundef nonnull align 8 dereferenceable(24) @global_hooks, i64 24, i1 false)
  %4 = load ptr, ptr %item.addr, align 8
  %call = call i32 @print_value(ptr noundef %4, ptr noundef nonnull %p)
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define i32 @cJSON_GetArraySize(ptr noundef %array) #0 {
entry:
  %array.addr = alloca ptr, align 8
  %child = alloca ptr, align 8
  %size = alloca i64, align 8
  store ptr %array, ptr %array.addr, align 8
  store ptr null, ptr %child, align 8
  store i64 0, ptr %size, align 8
  %cmp = icmp eq ptr %array, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %array.addr, align 8
  %child1 = getelementptr inbounds %struct.cJSON, ptr %0, i64 0, i32 2
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %storemerge.in = phi ptr [ %child1, %if.end ], [ %2, %while.body ]
  %storemerge = load ptr, ptr %storemerge.in, align 8
  store ptr %storemerge, ptr %child, align 8
  %cmp2.not = icmp eq ptr %storemerge, null
  br i1 %cmp2.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %1 = load i64, ptr %size, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %size, align 8
  %2 = load ptr, ptr %child, align 8
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %3 = load i64, ptr %size, align 8
  %conv = trunc i64 %3 to i32
  br label %return

return:                                           ; preds = %entry, %while.end
  %storemerge1 = phi i32 [ %conv, %while.end ], [ 0, %entry ]
  ret i32 %storemerge1
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_GetArrayItem(ptr noundef %array, i32 noundef %index) #0 {
entry:
  %array.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  store ptr %array, ptr %array.addr, align 8
  store i32 %index, ptr %index.addr, align 4
  %cmp = icmp slt i32 %index, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %array.addr, align 8
  %1 = load i32, ptr %index.addr, align 4
  %conv = sext i32 %1 to i64
  %call = call ptr @get_array_item(ptr noundef %0, i64 noundef %conv)
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi ptr [ %call, %if.end ], [ null, %entry ]
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @get_array_item(ptr noundef %array, i64 noundef %index) #0 {
entry:
  %array.addr = alloca ptr, align 8
  %index.addr = alloca i64, align 8
  %current_child = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8
  store i64 %index, ptr %index.addr, align 8
  store ptr null, ptr %current_child, align 8
  %cmp = icmp eq ptr %array, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %array.addr, align 8
  %child = getelementptr inbounds %struct.cJSON, ptr %0, i64 0, i32 2
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %storemerge.in = phi ptr [ %child, %if.end ], [ %4, %while.body ]
  %storemerge = load ptr, ptr %storemerge.in, align 8
  store ptr %storemerge, ptr %current_child, align 8
  %cmp1.not = icmp eq ptr %storemerge, null
  %1 = load i64, ptr %index.addr, align 8
  %cmp2 = icmp ne i64 %1, 0
  %2 = select i1 %cmp1.not, i1 false, i1 %cmp2
  br i1 %2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i64, ptr %index.addr, align 8
  %dec = add i64 %3, -1
  store i64 %dec, ptr %index.addr, align 8
  %4 = load ptr, ptr %current_child, align 8
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  %5 = load ptr, ptr %current_child, align 8
  br label %return

return:                                           ; preds = %entry, %while.end
  %storemerge1 = phi ptr [ %5, %while.end ], [ null, %entry ]
  ret ptr %storemerge1
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_GetObjectItem(ptr noundef %object, ptr noundef %string) #0 {
entry:
  %call = call ptr @get_object_item(ptr noundef %object, ptr noundef %string, i32 noundef 0)
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
  %cmp = icmp eq ptr %object, null
  %0 = load ptr, ptr %name.addr, align 8
  %cmp1 = icmp eq ptr %0, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %object.addr, align 8
  %child = getelementptr inbounds %struct.cJSON, ptr %1, i64 0, i32 2
  %2 = load ptr, ptr %child, align 8
  store ptr %2, ptr %current_element, align 8
  %3 = load i32, ptr %case_sensitive.addr, align 4
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %while.cond7, label %while.cond

while.cond:                                       ; preds = %if.end, %while.body
  %4 = load ptr, ptr %current_element, align 8
  %cmp3.not = icmp eq ptr %4, null
  br i1 %cmp3.not, label %if.end17, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.cond
  %5 = load ptr, ptr %current_element, align 8
  %string = getelementptr inbounds %struct.cJSON, ptr %5, i64 0, i32 7
  %6 = load ptr, ptr %string, align 8
  %cmp4.not = icmp eq ptr %6, null
  br i1 %cmp4.not, label %if.end17, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %7 = load ptr, ptr %name.addr, align 8
  %8 = load ptr, ptr %current_element, align 8
  %string5 = getelementptr inbounds %struct.cJSON, ptr %8, i64 0, i32 7
  %9 = load ptr, ptr %string5, align 8
  %call = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %9) #11
  %cmp6 = icmp ne i32 %call, 0
  br i1 %cmp6, label %while.body, label %if.end17

while.body:                                       ; preds = %land.rhs
  %10 = load ptr, ptr %current_element, align 8
  %11 = load ptr, ptr %10, align 8
  store ptr %11, ptr %current_element, align 8
  br label %while.cond, !llvm.loop !11

while.cond7:                                      ; preds = %if.end, %while.body14
  %12 = load ptr, ptr %current_element, align 8
  %cmp8.not = icmp eq ptr %12, null
  br i1 %cmp8.not, label %if.end17, label %land.rhs9

land.rhs9:                                        ; preds = %while.cond7
  %13 = load ptr, ptr %name.addr, align 8
  %14 = load ptr, ptr %current_element, align 8
  %string10 = getelementptr inbounds %struct.cJSON, ptr %14, i64 0, i32 7
  %15 = load ptr, ptr %string10, align 8
  %call11 = call i32 @case_insensitive_strcmp(ptr noundef %13, ptr noundef %15)
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %while.body14, label %if.end17

while.body14:                                     ; preds = %land.rhs9
  %16 = load ptr, ptr %current_element, align 8
  %17 = load ptr, ptr %16, align 8
  store ptr %17, ptr %current_element, align 8
  br label %while.cond7, !llvm.loop !12

if.end17:                                         ; preds = %land.rhs9, %while.cond7, %land.rhs, %while.cond, %land.lhs.true
  %18 = load ptr, ptr %current_element, align 8
  %cmp18 = icmp eq ptr %18, null
  br i1 %cmp18, label %if.then22, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %if.end17
  %19 = load ptr, ptr %current_element, align 8
  %string20 = getelementptr inbounds %struct.cJSON, ptr %19, i64 0, i32 7
  %20 = load ptr, ptr %string20, align 8
  %cmp21 = icmp eq ptr %20, null
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %lor.lhs.false19, %if.end17
  store ptr null, ptr %retval, align 8
  br label %return

if.end23:                                         ; preds = %lor.lhs.false19
  %21 = load ptr, ptr %current_element, align 8
  store ptr %21, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end23, %if.then22, %if.then
  %22 = load ptr, ptr %retval, align 8
  ret ptr %22
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_GetObjectItemCaseSensitive(ptr noundef %object, ptr noundef %string) #0 {
entry:
  %call = call ptr @get_object_item(ptr noundef %object, ptr noundef %string, i32 noundef 1)
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define i32 @cJSON_HasObjectItem(ptr noundef %object, ptr noundef %string) #0 {
entry:
  %call = call ptr @cJSON_GetObjectItem(ptr noundef %object, ptr noundef %string)
  %tobool.not = icmp ne ptr %call, null
  %cond = zext i1 %tobool.not to i32
  ret i32 %cond
}

; Function Attrs: nounwind ssp uwtable
define i32 @cJSON_AddItemToArray(ptr noundef %array, ptr noundef %item) #0 {
entry:
  %call = call i32 @add_item_to_array(ptr noundef %array, ptr noundef %item)
  ret i32 %call
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @add_item_to_array(ptr noundef %array, ptr noundef %item) #0 {
entry:
  %array.addr = alloca ptr, align 8
  %item.addr = alloca ptr, align 8
  %child = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8
  store ptr %item, ptr %item.addr, align 8
  store ptr null, ptr %child, align 8
  %cmp = icmp eq ptr %item, null
  %0 = load ptr, ptr %array.addr, align 8
  %cmp1 = icmp eq ptr %0, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %return, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %1 = load ptr, ptr %array.addr, align 8
  %2 = load ptr, ptr %item.addr, align 8
  %cmp3 = icmp eq ptr %1, %2
  br i1 %cmp3, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false2
  %3 = load ptr, ptr %array.addr, align 8
  %child4 = getelementptr inbounds %struct.cJSON, ptr %3, i64 0, i32 2
  %4 = load ptr, ptr %child4, align 8
  store ptr %4, ptr %child, align 8
  %cmp5 = icmp eq ptr %4, null
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %5 = load ptr, ptr %item.addr, align 8
  %6 = load ptr, ptr %array.addr, align 8
  %child7 = getelementptr inbounds %struct.cJSON, ptr %6, i64 0, i32 2
  store ptr %5, ptr %child7, align 8
  %prev = getelementptr inbounds %struct.cJSON, ptr %5, i64 0, i32 1
  store ptr %5, ptr %prev, align 8
  store ptr null, ptr %5, align 8
  br label %return

if.else:                                          ; preds = %if.end
  %7 = load ptr, ptr %child, align 8
  %prev8 = getelementptr inbounds %struct.cJSON, ptr %7, i64 0, i32 1
  %8 = load ptr, ptr %prev8, align 8
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %return, label %if.then9

if.then9:                                         ; preds = %if.else
  %9 = load ptr, ptr %child, align 8
  %prev10 = getelementptr inbounds %struct.cJSON, ptr %9, i64 0, i32 1
  %10 = load ptr, ptr %prev10, align 8
  %11 = load ptr, ptr %item.addr, align 8
  call void @suffix_object(ptr noundef %10, ptr noundef %11)
  %12 = load ptr, ptr %array.addr, align 8
  %child11 = getelementptr inbounds %struct.cJSON, ptr %12, i64 0, i32 2
  %13 = load ptr, ptr %child11, align 8
  %prev12 = getelementptr inbounds %struct.cJSON, ptr %13, i64 0, i32 1
  store ptr %11, ptr %prev12, align 8
  br label %return

return:                                           ; preds = %if.then6, %if.then9, %if.else, %entry, %lor.lhs.false2
  %storemerge = phi i32 [ 0, %lor.lhs.false2 ], [ 0, %entry ], [ 1, %if.else ], [ 1, %if.then9 ], [ 1, %if.then6 ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define i32 @cJSON_AddItemToObject(ptr noundef %object, ptr noundef %string, ptr noundef %item) #0 {
entry:
  %call = call i32 @add_item_to_object(ptr noundef %object, ptr noundef %string, ptr noundef %item, ptr noundef nonnull @global_hooks, i32 noundef 0)
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
  %1 = load ptr, ptr %string.addr, align 8
  %cmp1 = icmp eq ptr %1, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  %2 = load ptr, ptr %item.addr, align 8
  %cmp3 = icmp eq ptr %2, null
  %or.cond1 = select i1 %or.cond, i1 true, i1 %cmp3
  br i1 %or.cond1, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %entry
  %3 = load ptr, ptr %object.addr, align 8
  %4 = load ptr, ptr %item.addr, align 8
  %cmp5 = icmp eq ptr %3, %4
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false4
  %5 = load i32, ptr %constant_key.addr, align 4
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  %6 = load ptr, ptr %string.addr, align 8
  %call = call ptr @cast_away_const(ptr noundef %6)
  store ptr %call, ptr %new_key, align 8
  %7 = load ptr, ptr %item.addr, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %7, i64 0, i32 3
  %8 = load i32, ptr %type, align 8
  %or = or i32 %8, 512
  br label %if.end12

if.else:                                          ; preds = %if.end
  %9 = load ptr, ptr %string.addr, align 8
  %10 = load ptr, ptr %hooks.addr, align 8
  %call7 = call ptr @cJSON_strdup(ptr noundef %9, ptr noundef %10)
  store ptr %call7, ptr %new_key, align 8
  %cmp8 = icmp eq ptr %call7, null
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.else
  store i32 0, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.else
  %11 = load ptr, ptr %item.addr, align 8
  %type11 = getelementptr inbounds %struct.cJSON, ptr %11, i64 0, i32 3
  %12 = load i32, ptr %type11, align 8
  %and = and i32 %12, -513
  br label %if.end12

if.end12:                                         ; preds = %if.end10, %if.then6
  %storemerge = phi i32 [ %and, %if.end10 ], [ %or, %if.then6 ]
  store i32 %storemerge, ptr %new_type, align 4
  %13 = load ptr, ptr %item.addr, align 8
  %type13 = getelementptr inbounds %struct.cJSON, ptr %13, i64 0, i32 3
  %14 = load i32, ptr %type13, align 8
  %and14 = and i32 %14, 512
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %land.lhs.true, label %if.end20

land.lhs.true:                                    ; preds = %if.end12
  %15 = load ptr, ptr %item.addr, align 8
  %string16 = getelementptr inbounds %struct.cJSON, ptr %15, i64 0, i32 7
  %16 = load ptr, ptr %string16, align 8
  %cmp17.not = icmp eq ptr %16, null
  br i1 %cmp17.not, label %if.end20, label %if.then18

if.then18:                                        ; preds = %land.lhs.true
  %17 = load ptr, ptr %hooks.addr, align 8
  %deallocate = getelementptr inbounds %struct.internal_hooks, ptr %17, i64 0, i32 1
  %18 = load ptr, ptr %deallocate, align 8
  %19 = load ptr, ptr %item.addr, align 8
  %string19 = getelementptr inbounds %struct.cJSON, ptr %19, i64 0, i32 7
  %20 = load ptr, ptr %string19, align 8
  call void %18(ptr noundef %20) #11
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %land.lhs.true, %if.end12
  %21 = load ptr, ptr %new_key, align 8
  %22 = load ptr, ptr %item.addr, align 8
  %string21 = getelementptr inbounds %struct.cJSON, ptr %22, i64 0, i32 7
  store ptr %21, ptr %string21, align 8
  %23 = load i32, ptr %new_type, align 4
  %type22 = getelementptr inbounds %struct.cJSON, ptr %22, i64 0, i32 3
  store i32 %23, ptr %type22, align 8
  %24 = load ptr, ptr %object.addr, align 8
  %25 = load ptr, ptr %item.addr, align 8
  %call23 = call i32 @add_item_to_array(ptr noundef %24, ptr noundef %25)
  store i32 %call23, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end20, %if.then9, %if.then
  %26 = load i32, ptr %retval, align 4
  ret i32 %26
}

; Function Attrs: nounwind ssp uwtable
define i32 @cJSON_AddItemToObjectCS(ptr noundef %object, ptr noundef %string, ptr noundef %item) #0 {
entry:
  %call = call i32 @add_item_to_object(ptr noundef %object, ptr noundef %string, ptr noundef %item, ptr noundef nonnull @global_hooks, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind ssp uwtable
define i32 @cJSON_AddItemReferenceToArray(ptr noundef %array, ptr noundef %item) #0 {
entry:
  %array.addr = alloca ptr, align 8
  %item.addr = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8
  store ptr %item, ptr %item.addr, align 8
  %cmp = icmp eq ptr %array, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %array.addr, align 8
  %1 = load ptr, ptr %item.addr, align 8
  %call = call ptr @create_reference(ptr noundef %1, ptr noundef nonnull @global_hooks)
  %call1 = call i32 @add_item_to_array(ptr noundef %0, ptr noundef %call)
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %storemerge
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
  %cmp = icmp eq ptr %item, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %hooks.addr, align 8
  %call = call ptr @cJSON_New_Item(ptr noundef %0)
  store ptr %call, ptr %reference, align 8
  %cmp1 = icmp eq ptr %call, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %1 = load ptr, ptr %reference, align 8
  %2 = load ptr, ptr %item.addr, align 8
  %3 = call i64 @llvm.objectsize.i64.p0(ptr %1, i1 false, i1 true, i1 false)
  %call4 = call ptr @__memcpy_chk(ptr noundef %1, ptr noundef %2, i64 noundef 64, i64 noundef %3) #11
  %string = getelementptr inbounds %struct.cJSON, ptr %1, i64 0, i32 7
  store ptr null, ptr %string, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %1, i64 0, i32 3
  %4 = load i32, ptr %type, align 8
  %or = or i32 %4, 256
  store i32 %or, ptr %type, align 8
  %5 = load ptr, ptr %reference, align 8
  %prev = getelementptr inbounds %struct.cJSON, ptr %5, i64 0, i32 1
  store ptr null, ptr %prev, align 8
  store ptr null, ptr %5, align 8
  store ptr %5, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %6 = load ptr, ptr %retval, align 8
  ret ptr %6
}

; Function Attrs: nounwind ssp uwtable
define i32 @cJSON_AddItemReferenceToObject(ptr noundef %object, ptr noundef %string, ptr noundef %item) #0 {
entry:
  %object.addr = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  %item.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  store ptr %string, ptr %string.addr, align 8
  store ptr %item, ptr %item.addr, align 8
  %cmp = icmp eq ptr %object, null
  %0 = load ptr, ptr %string.addr, align 8
  %cmp1 = icmp eq ptr %0, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %return, label %if.end

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %object.addr, align 8
  %2 = load ptr, ptr %string.addr, align 8
  %3 = load ptr, ptr %item.addr, align 8
  %call = call ptr @create_reference(ptr noundef %3, ptr noundef nonnull @global_hooks)
  %call2 = call i32 @add_item_to_object(ptr noundef %1, ptr noundef %2, ptr noundef %call, ptr noundef nonnull @global_hooks, i32 noundef 0)
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i32 [ %call2, %if.end ], [ 0, %entry ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_AddNullToObject(ptr noundef %object, ptr noundef %name) #0 {
entry:
  %null = alloca ptr, align 8
  %call = call ptr @cJSON_CreateNull()
  store ptr %call, ptr %null, align 8
  %call1 = call i32 @add_item_to_object(ptr noundef %object, ptr noundef %name, ptr noundef %call, ptr noundef nonnull @global_hooks, i32 noundef 0)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %null, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %null, align 8
  call void @cJSON_Delete(ptr noundef %1)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %storemerge = phi ptr [ null, %if.end ], [ %0, %if.then ]
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_CreateNull() #0 {
entry:
  %item = alloca ptr, align 8
  %call = call ptr @cJSON_New_Item(ptr noundef nonnull @global_hooks)
  store ptr %call, ptr %item, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %item, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %0, i64 0, i32 3
  store i32 4, ptr %type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %item, align 8
  ret ptr %1
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_AddTrueToObject(ptr noundef %object, ptr noundef %name) #0 {
entry:
  %true_item = alloca ptr, align 8
  %call = call ptr @cJSON_CreateTrue()
  store ptr %call, ptr %true_item, align 8
  %call1 = call i32 @add_item_to_object(ptr noundef %object, ptr noundef %name, ptr noundef %call, ptr noundef nonnull @global_hooks, i32 noundef 0)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %true_item, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %true_item, align 8
  call void @cJSON_Delete(ptr noundef %1)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %storemerge = phi ptr [ null, %if.end ], [ %0, %if.then ]
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_CreateTrue() #0 {
entry:
  %item = alloca ptr, align 8
  %call = call ptr @cJSON_New_Item(ptr noundef nonnull @global_hooks)
  store ptr %call, ptr %item, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %item, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %0, i64 0, i32 3
  store i32 2, ptr %type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %item, align 8
  ret ptr %1
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_AddFalseToObject(ptr noundef %object, ptr noundef %name) #0 {
entry:
  %false_item = alloca ptr, align 8
  %call = call ptr @cJSON_CreateFalse()
  store ptr %call, ptr %false_item, align 8
  %call1 = call i32 @add_item_to_object(ptr noundef %object, ptr noundef %name, ptr noundef %call, ptr noundef nonnull @global_hooks, i32 noundef 0)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %false_item, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %false_item, align 8
  call void @cJSON_Delete(ptr noundef %1)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %storemerge = phi ptr [ null, %if.end ], [ %0, %if.then ]
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_CreateFalse() #0 {
entry:
  %item = alloca ptr, align 8
  %call = call ptr @cJSON_New_Item(ptr noundef nonnull @global_hooks)
  store ptr %call, ptr %item, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %item, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %0, i64 0, i32 3
  store i32 1, ptr %type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %item, align 8
  ret ptr %1
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_AddBoolToObject(ptr noundef %object, ptr noundef %name, i32 noundef %boolean) #0 {
entry:
  %bool_item = alloca ptr, align 8
  %call = call ptr @cJSON_CreateBool(i32 noundef %boolean)
  store ptr %call, ptr %bool_item, align 8
  %call1 = call i32 @add_item_to_object(ptr noundef %object, ptr noundef %name, ptr noundef %call, ptr noundef nonnull @global_hooks, i32 noundef 0)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %bool_item, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %bool_item, align 8
  call void @cJSON_Delete(ptr noundef %1)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %storemerge = phi ptr [ null, %if.end ], [ %0, %if.then ]
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_CreateBool(i32 noundef %boolean) #0 {
entry:
  %boolean.addr = alloca i32, align 4
  %item = alloca ptr, align 8
  store i32 %boolean, ptr %boolean.addr, align 4
  %call = call ptr @cJSON_New_Item(ptr noundef nonnull @global_hooks)
  store ptr %call, ptr %item, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %boolean.addr, align 4
  %tobool1.not = icmp eq i32 %0, 0
  %cond = select i1 %tobool1.not, i32 1, i32 2
  %1 = load ptr, ptr %item, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %1, i64 0, i32 3
  store i32 %cond, ptr %type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %item, align 8
  ret ptr %2
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_AddNumberToObject(ptr noundef %object, ptr noundef %name, double noundef %number) #0 {
entry:
  %number_item = alloca ptr, align 8
  %call = call ptr @cJSON_CreateNumber(double noundef %number)
  store ptr %call, ptr %number_item, align 8
  %call1 = call i32 @add_item_to_object(ptr noundef %object, ptr noundef %name, ptr noundef %call, ptr noundef nonnull @global_hooks, i32 noundef 0)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %number_item, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %number_item, align 8
  call void @cJSON_Delete(ptr noundef %1)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %storemerge = phi ptr [ null, %if.end ], [ %0, %if.then ]
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_CreateNumber(double noundef %num) #0 {
entry:
  %num.addr = alloca double, align 8
  %item = alloca ptr, align 8
  store double %num, ptr %num.addr, align 8
  %call = call ptr @cJSON_New_Item(ptr noundef nonnull @global_hooks)
  store ptr %call, ptr %item, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end8, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %item, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %0, i64 0, i32 3
  store i32 8, ptr %type, align 8
  %1 = load double, ptr %num.addr, align 8
  %valuedouble = getelementptr inbounds %struct.cJSON, ptr %0, i64 0, i32 6
  store double %1, ptr %valuedouble, align 8
  %cmp = fcmp ult double %1, 0x41DFFFFFFFC00000
  br i1 %cmp, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.then
  %2 = load ptr, ptr %item, align 8
  %valueint = getelementptr inbounds %struct.cJSON, ptr %2, i64 0, i32 5
  store i32 2147483647, ptr %valueint, align 8
  br label %if.end8

if.else:                                          ; preds = %if.then
  %3 = load double, ptr %num.addr, align 8
  %cmp2 = fcmp ugt double %3, 0xC1E0000000000000
  br i1 %cmp2, label %if.else5, label %if.then3

if.then3:                                         ; preds = %if.else
  %4 = load ptr, ptr %item, align 8
  %valueint4 = getelementptr inbounds %struct.cJSON, ptr %4, i64 0, i32 5
  store i32 -2147483648, ptr %valueint4, align 8
  br label %if.end8

if.else5:                                         ; preds = %if.else
  %5 = load double, ptr %num.addr, align 8
  %conv = fptosi double %5 to i32
  %6 = load ptr, ptr %item, align 8
  %valueint6 = getelementptr inbounds %struct.cJSON, ptr %6, i64 0, i32 5
  store i32 %conv, ptr %valueint6, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then1, %if.else5, %if.then3, %entry
  %7 = load ptr, ptr %item, align 8
  ret ptr %7
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_AddStringToObject(ptr noundef %object, ptr noundef %name, ptr noundef %string) #0 {
entry:
  %string_item = alloca ptr, align 8
  %call = call ptr @cJSON_CreateString(ptr noundef %string)
  store ptr %call, ptr %string_item, align 8
  %call1 = call i32 @add_item_to_object(ptr noundef %object, ptr noundef %name, ptr noundef %call, ptr noundef nonnull @global_hooks, i32 noundef 0)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %string_item, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %string_item, align 8
  call void @cJSON_Delete(ptr noundef %1)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %storemerge = phi ptr [ null, %if.end ], [ %0, %if.then ]
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_CreateString(ptr noundef %string) #0 {
entry:
  %string.addr = alloca ptr, align 8
  %item = alloca ptr, align 8
  store ptr %string, ptr %string.addr, align 8
  %call = call ptr @cJSON_New_Item(ptr noundef nonnull @global_hooks)
  store ptr %call, ptr %item, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %item, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %0, i64 0, i32 3
  store i32 16, ptr %type, align 8
  %1 = load ptr, ptr %string.addr, align 8
  %call1 = call ptr @cJSON_strdup(ptr noundef %1, ptr noundef nonnull @global_hooks)
  %valuestring = getelementptr inbounds %struct.cJSON, ptr %0, i64 0, i32 4
  store ptr %call1, ptr %valuestring, align 8
  %2 = load ptr, ptr %item, align 8
  %valuestring2 = getelementptr inbounds %struct.cJSON, ptr %2, i64 0, i32 4
  %3 = load ptr, ptr %valuestring2, align 8
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.then
  %4 = load ptr, ptr %item, align 8
  call void @cJSON_Delete(ptr noundef %4)
  br label %return

if.end5:                                          ; preds = %if.then, %entry
  %5 = load ptr, ptr %item, align 8
  br label %return

return:                                           ; preds = %if.end5, %if.then4
  %storemerge = phi ptr [ %5, %if.end5 ], [ null, %if.then4 ]
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_AddRawToObject(ptr noundef %object, ptr noundef %name, ptr noundef %raw) #0 {
entry:
  %raw_item = alloca ptr, align 8
  %call = call ptr @cJSON_CreateRaw(ptr noundef %raw)
  store ptr %call, ptr %raw_item, align 8
  %call1 = call i32 @add_item_to_object(ptr noundef %object, ptr noundef %name, ptr noundef %call, ptr noundef nonnull @global_hooks, i32 noundef 0)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %raw_item, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %raw_item, align 8
  call void @cJSON_Delete(ptr noundef %1)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %storemerge = phi ptr [ null, %if.end ], [ %0, %if.then ]
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_CreateRaw(ptr noundef %raw) #0 {
entry:
  %raw.addr = alloca ptr, align 8
  %item = alloca ptr, align 8
  store ptr %raw, ptr %raw.addr, align 8
  %call = call ptr @cJSON_New_Item(ptr noundef nonnull @global_hooks)
  store ptr %call, ptr %item, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %item, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %0, i64 0, i32 3
  store i32 128, ptr %type, align 8
  %1 = load ptr, ptr %raw.addr, align 8
  %call1 = call ptr @cJSON_strdup(ptr noundef %1, ptr noundef nonnull @global_hooks)
  %valuestring = getelementptr inbounds %struct.cJSON, ptr %0, i64 0, i32 4
  store ptr %call1, ptr %valuestring, align 8
  %2 = load ptr, ptr %item, align 8
  %valuestring2 = getelementptr inbounds %struct.cJSON, ptr %2, i64 0, i32 4
  %3 = load ptr, ptr %valuestring2, align 8
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.then
  %4 = load ptr, ptr %item, align 8
  call void @cJSON_Delete(ptr noundef %4)
  br label %return

if.end5:                                          ; preds = %if.then, %entry
  %5 = load ptr, ptr %item, align 8
  br label %return

return:                                           ; preds = %if.end5, %if.then4
  %storemerge = phi ptr [ %5, %if.end5 ], [ null, %if.then4 ]
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_AddObjectToObject(ptr noundef %object, ptr noundef %name) #0 {
entry:
  %object_item = alloca ptr, align 8
  %call = call ptr @cJSON_CreateObject()
  store ptr %call, ptr %object_item, align 8
  %call1 = call i32 @add_item_to_object(ptr noundef %object, ptr noundef %name, ptr noundef %call, ptr noundef nonnull @global_hooks, i32 noundef 0)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %object_item, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %object_item, align 8
  call void @cJSON_Delete(ptr noundef %1)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %storemerge = phi ptr [ null, %if.end ], [ %0, %if.then ]
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_CreateObject() #0 {
entry:
  %item = alloca ptr, align 8
  %call = call ptr @cJSON_New_Item(ptr noundef nonnull @global_hooks)
  store ptr %call, ptr %item, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %item, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %0, i64 0, i32 3
  store i32 64, ptr %type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %item, align 8
  ret ptr %1
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_AddArrayToObject(ptr noundef %object, ptr noundef %name) #0 {
entry:
  %array = alloca ptr, align 8
  %call = call ptr @cJSON_CreateArray()
  store ptr %call, ptr %array, align 8
  %call1 = call i32 @add_item_to_object(ptr noundef %object, ptr noundef %name, ptr noundef %call, ptr noundef nonnull @global_hooks, i32 noundef 0)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %array, align 8
  call void @cJSON_Delete(ptr noundef %1)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %storemerge = phi ptr [ null, %if.end ], [ %0, %if.then ]
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_CreateArray() #0 {
entry:
  %item = alloca ptr, align 8
  %call = call ptr @cJSON_New_Item(ptr noundef nonnull @global_hooks)
  store ptr %call, ptr %item, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %item, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %0, i64 0, i32 3
  store i32 32, ptr %type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %item, align 8
  ret ptr %1
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_DetachItemViaPointer(ptr noundef %parent, ptr noundef %item) #0 {
entry:
  %parent.addr = alloca ptr, align 8
  %item.addr = alloca ptr, align 8
  store ptr %parent, ptr %parent.addr, align 8
  store ptr %item, ptr %item.addr, align 8
  %cmp = icmp eq ptr %parent, null
  %0 = load ptr, ptr %item.addr, align 8
  %cmp1 = icmp eq ptr %0, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %return, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %1 = load ptr, ptr %item.addr, align 8
  %2 = load ptr, ptr %parent.addr, align 8
  %child = getelementptr inbounds %struct.cJSON, ptr %2, i64 0, i32 2
  %3 = load ptr, ptr %child, align 8
  %cmp3.not = icmp eq ptr %1, %3
  br i1 %cmp3.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false2
  %4 = load ptr, ptr %item.addr, align 8
  %prev = getelementptr inbounds %struct.cJSON, ptr %4, i64 0, i32 1
  %5 = load ptr, ptr %prev, align 8
  %cmp4 = icmp eq ptr %5, null
  br i1 %cmp4, label %return, label %if.end

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false2
  %6 = load ptr, ptr %item.addr, align 8
  %7 = load ptr, ptr %parent.addr, align 8
  %child5 = getelementptr inbounds %struct.cJSON, ptr %7, i64 0, i32 2
  %8 = load ptr, ptr %child5, align 8
  %cmp6.not = icmp eq ptr %6, %8
  br i1 %cmp6.not, label %if.end10, label %if.then7

if.then7:                                         ; preds = %if.end
  %9 = load ptr, ptr %item.addr, align 8
  %10 = load ptr, ptr %9, align 8
  %prev8 = getelementptr inbounds %struct.cJSON, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %prev8, align 8
  store ptr %10, ptr %11, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end
  %12 = load ptr, ptr %item.addr, align 8
  %13 = load ptr, ptr %12, align 8
  %cmp12.not = icmp eq ptr %13, null
  br i1 %cmp12.not, label %if.end17, label %if.then13

if.then13:                                        ; preds = %if.end10
  %14 = load ptr, ptr %item.addr, align 8
  %prev14 = getelementptr inbounds %struct.cJSON, ptr %14, i64 0, i32 1
  %15 = load ptr, ptr %prev14, align 8
  %16 = load ptr, ptr %14, align 8
  %prev16 = getelementptr inbounds %struct.cJSON, ptr %16, i64 0, i32 1
  store ptr %15, ptr %prev16, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end10
  %17 = load ptr, ptr %item.addr, align 8
  %18 = load ptr, ptr %parent.addr, align 8
  %child18 = getelementptr inbounds %struct.cJSON, ptr %18, i64 0, i32 2
  %19 = load ptr, ptr %child18, align 8
  %cmp19 = icmp eq ptr %17, %19
  br i1 %cmp19, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end17
  %20 = load ptr, ptr %item.addr, align 8
  %21 = load ptr, ptr %20, align 8
  %22 = load ptr, ptr %parent.addr, align 8
  %child22 = getelementptr inbounds %struct.cJSON, ptr %22, i64 0, i32 2
  store ptr %21, ptr %child22, align 8
  br label %if.end30

if.else:                                          ; preds = %if.end17
  %23 = load ptr, ptr %item.addr, align 8
  %24 = load ptr, ptr %23, align 8
  %cmp24 = icmp eq ptr %24, null
  br i1 %cmp24, label %if.then25, label %if.end30

if.then25:                                        ; preds = %if.else
  %25 = load ptr, ptr %item.addr, align 8
  %prev26 = getelementptr inbounds %struct.cJSON, ptr %25, i64 0, i32 1
  %26 = load ptr, ptr %prev26, align 8
  %27 = load ptr, ptr %parent.addr, align 8
  %child27 = getelementptr inbounds %struct.cJSON, ptr %27, i64 0, i32 2
  %28 = load ptr, ptr %child27, align 8
  %prev28 = getelementptr inbounds %struct.cJSON, ptr %28, i64 0, i32 1
  store ptr %26, ptr %prev28, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then25, %if.then20
  %29 = load ptr, ptr %item.addr, align 8
  %prev31 = getelementptr inbounds %struct.cJSON, ptr %29, i64 0, i32 1
  store ptr null, ptr %prev31, align 8
  store ptr null, ptr %29, align 8
  br label %return

return:                                           ; preds = %entry, %land.lhs.true, %if.end30
  %storemerge = phi ptr [ %29, %if.end30 ], [ null, %land.lhs.true ], [ null, %entry ]
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_DetachItemFromArray(ptr noundef %array, i32 noundef %which) #0 {
entry:
  %array.addr = alloca ptr, align 8
  %which.addr = alloca i32, align 4
  store ptr %array, ptr %array.addr, align 8
  store i32 %which, ptr %which.addr, align 4
  %cmp = icmp slt i32 %which, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %array.addr, align 8
  %1 = load i32, ptr %which.addr, align 4
  %conv = sext i32 %1 to i64
  %call = call ptr @get_array_item(ptr noundef %0, i64 noundef %conv)
  %call1 = call ptr @cJSON_DetachItemViaPointer(ptr noundef %0, ptr noundef %call)
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi ptr [ %call1, %if.end ], [ null, %entry ]
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define void @cJSON_DeleteItemFromArray(ptr noundef %array, i32 noundef %which) #0 {
entry:
  %call = call ptr @cJSON_DetachItemFromArray(ptr noundef %array, i32 noundef %which)
  call void @cJSON_Delete(ptr noundef %call)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_DetachItemFromObject(ptr noundef %object, ptr noundef %string) #0 {
entry:
  %call = call ptr @cJSON_GetObjectItem(ptr noundef %object, ptr noundef %string)
  %call1 = call ptr @cJSON_DetachItemViaPointer(ptr noundef %object, ptr noundef %call)
  ret ptr %call1
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_DetachItemFromObjectCaseSensitive(ptr noundef %object, ptr noundef %string) #0 {
entry:
  %call = call ptr @cJSON_GetObjectItemCaseSensitive(ptr noundef %object, ptr noundef %string)
  %call1 = call ptr @cJSON_DetachItemViaPointer(ptr noundef %object, ptr noundef %call)
  ret ptr %call1
}

; Function Attrs: nounwind ssp uwtable
define void @cJSON_DeleteItemFromObject(ptr noundef %object, ptr noundef %string) #0 {
entry:
  %call = call ptr @cJSON_DetachItemFromObject(ptr noundef %object, ptr noundef %string)
  call void @cJSON_Delete(ptr noundef %call)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @cJSON_DeleteItemFromObjectCaseSensitive(ptr noundef %object, ptr noundef %string) #0 {
entry:
  %call = call ptr @cJSON_DetachItemFromObjectCaseSensitive(ptr noundef %object, ptr noundef %string)
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
  %cmp = icmp slt i32 %which, 0
  %0 = load ptr, ptr %newitem.addr, align 8
  %cmp1 = icmp eq ptr %0, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %array.addr, align 8
  %2 = load i32, ptr %which.addr, align 4
  %conv = sext i32 %2 to i64
  %call = call ptr @get_array_item(ptr noundef %1, i64 noundef %conv)
  store ptr %call, ptr %after_inserted, align 8
  %cmp2 = icmp eq ptr %call, null
  br i1 %cmp2, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %3 = load ptr, ptr %array.addr, align 8
  %4 = load ptr, ptr %newitem.addr, align 8
  %call5 = call i32 @add_item_to_array(ptr noundef %3, ptr noundef %4)
  store i32 %call5, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %5 = load ptr, ptr %after_inserted, align 8
  %6 = load ptr, ptr %array.addr, align 8
  %child = getelementptr inbounds %struct.cJSON, ptr %6, i64 0, i32 2
  %7 = load ptr, ptr %child, align 8
  %cmp7.not = icmp eq ptr %5, %7
  br i1 %cmp7.not, label %if.end12, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end6
  %8 = load ptr, ptr %after_inserted, align 8
  %prev = getelementptr inbounds %struct.cJSON, ptr %8, i64 0, i32 1
  %9 = load ptr, ptr %prev, align 8
  %cmp9 = icmp eq ptr %9, null
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %land.lhs.true, %if.end6
  %10 = load ptr, ptr %after_inserted, align 8
  %11 = load ptr, ptr %newitem.addr, align 8
  store ptr %10, ptr %11, align 8
  %prev13 = getelementptr inbounds %struct.cJSON, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %prev13, align 8
  %prev14 = getelementptr inbounds %struct.cJSON, ptr %11, i64 0, i32 1
  store ptr %12, ptr %prev14, align 8
  %13 = load ptr, ptr %after_inserted, align 8
  %prev15 = getelementptr inbounds %struct.cJSON, ptr %13, i64 0, i32 1
  store ptr %11, ptr %prev15, align 8
  %14 = load ptr, ptr %array.addr, align 8
  %child16 = getelementptr inbounds %struct.cJSON, ptr %14, i64 0, i32 2
  %15 = load ptr, ptr %child16, align 8
  %cmp17 = icmp eq ptr %13, %15
  br i1 %cmp17, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end12
  %16 = load ptr, ptr %newitem.addr, align 8
  %17 = load ptr, ptr %array.addr, align 8
  %child20 = getelementptr inbounds %struct.cJSON, ptr %17, i64 0, i32 2
  store ptr %16, ptr %child20, align 8
  br label %if.end23

if.else:                                          ; preds = %if.end12
  %18 = load ptr, ptr %newitem.addr, align 8
  %prev21 = getelementptr inbounds %struct.cJSON, ptr %18, i64 0, i32 1
  %19 = load ptr, ptr %prev21, align 8
  store ptr %18, ptr %19, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then19
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end23, %if.then11, %if.then4, %if.then
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
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
  %cmp = icmp eq ptr %parent, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %parent.addr, align 8
  %child = getelementptr inbounds %struct.cJSON, ptr %0, i64 0, i32 2
  %1 = load ptr, ptr %child, align 8
  %cmp1 = icmp eq ptr %1, null
  %2 = load ptr, ptr %replacement.addr, align 8
  %cmp3 = icmp eq ptr %2, null
  %or.cond = select i1 %cmp1, i1 true, i1 %cmp3
  %3 = load ptr, ptr %item.addr, align 8
  %cmp5 = icmp eq ptr %3, null
  %or.cond1 = select i1 %or.cond, i1 true, i1 %cmp5
  br i1 %or.cond1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %replacement.addr, align 8
  %5 = load ptr, ptr %item.addr, align 8
  %cmp6 = icmp eq ptr %4, %5
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  %6 = load ptr, ptr %item.addr, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %replacement.addr, align 8
  store ptr %7, ptr %8, align 8
  %prev = getelementptr inbounds %struct.cJSON, ptr %6, i64 0, i32 1
  %9 = load ptr, ptr %prev, align 8
  %prev10 = getelementptr inbounds %struct.cJSON, ptr %8, i64 0, i32 1
  store ptr %9, ptr %prev10, align 8
  %cmp12.not = icmp eq ptr %7, null
  br i1 %cmp12.not, label %if.end16, label %if.then13

if.then13:                                        ; preds = %if.end8
  %10 = load ptr, ptr %replacement.addr, align 8
  %11 = load ptr, ptr %10, align 8
  %prev15 = getelementptr inbounds %struct.cJSON, ptr %11, i64 0, i32 1
  store ptr %10, ptr %prev15, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end8
  %12 = load ptr, ptr %parent.addr, align 8
  %child17 = getelementptr inbounds %struct.cJSON, ptr %12, i64 0, i32 2
  %13 = load ptr, ptr %child17, align 8
  %14 = load ptr, ptr %item.addr, align 8
  %cmp18 = icmp eq ptr %13, %14
  br i1 %cmp18, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end16
  %15 = load ptr, ptr %parent.addr, align 8
  %child20 = getelementptr inbounds %struct.cJSON, ptr %15, i64 0, i32 2
  %16 = load ptr, ptr %child20, align 8
  %prev21 = getelementptr inbounds %struct.cJSON, ptr %16, i64 0, i32 1
  %17 = load ptr, ptr %prev21, align 8
  %cmp23 = icmp eq ptr %17, %16
  br i1 %cmp23, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.then19
  %18 = load ptr, ptr %replacement.addr, align 8
  %prev25 = getelementptr inbounds %struct.cJSON, ptr %18, i64 0, i32 1
  store ptr %18, ptr %prev25, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.then19
  %19 = load ptr, ptr %replacement.addr, align 8
  %20 = load ptr, ptr %parent.addr, align 8
  %child27 = getelementptr inbounds %struct.cJSON, ptr %20, i64 0, i32 2
  store ptr %19, ptr %child27, align 8
  br label %if.end40

if.else:                                          ; preds = %if.end16
  %21 = load ptr, ptr %replacement.addr, align 8
  %prev28 = getelementptr inbounds %struct.cJSON, ptr %21, i64 0, i32 1
  %22 = load ptr, ptr %prev28, align 8
  %cmp29.not = icmp eq ptr %22, null
  br i1 %cmp29.not, label %if.end33, label %if.then30

if.then30:                                        ; preds = %if.else
  %23 = load ptr, ptr %replacement.addr, align 8
  %prev31 = getelementptr inbounds %struct.cJSON, ptr %23, i64 0, i32 1
  %24 = load ptr, ptr %prev31, align 8
  store ptr %23, ptr %24, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.else
  %25 = load ptr, ptr %replacement.addr, align 8
  %26 = load ptr, ptr %25, align 8
  %cmp35 = icmp eq ptr %26, null
  br i1 %cmp35, label %if.then36, label %if.end40

if.then36:                                        ; preds = %if.end33
  %27 = load ptr, ptr %replacement.addr, align 8
  %28 = load ptr, ptr %parent.addr, align 8
  %child37 = getelementptr inbounds %struct.cJSON, ptr %28, i64 0, i32 2
  %29 = load ptr, ptr %child37, align 8
  %prev38 = getelementptr inbounds %struct.cJSON, ptr %29, i64 0, i32 1
  store ptr %27, ptr %prev38, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.end33, %if.then36, %if.end26
  %30 = load ptr, ptr %item.addr, align 8
  store ptr null, ptr %30, align 8
  %prev42 = getelementptr inbounds %struct.cJSON, ptr %30, i64 0, i32 1
  store ptr null, ptr %prev42, align 8
  call void @cJSON_Delete(ptr noundef nonnull %30)
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end40, %if.then7, %if.then
  %31 = load i32, ptr %retval, align 4
  ret i32 %31
}

; Function Attrs: nounwind ssp uwtable
define i32 @cJSON_ReplaceItemInArray(ptr noundef %array, i32 noundef %which, ptr noundef %newitem) #0 {
entry:
  %array.addr = alloca ptr, align 8
  %which.addr = alloca i32, align 4
  %newitem.addr = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8
  store i32 %which, ptr %which.addr, align 4
  store ptr %newitem, ptr %newitem.addr, align 8
  %cmp = icmp slt i32 %which, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %array.addr, align 8
  %1 = load i32, ptr %which.addr, align 4
  %conv = sext i32 %1 to i64
  %call = call ptr @get_array_item(ptr noundef %0, i64 noundef %conv)
  %2 = load ptr, ptr %newitem.addr, align 8
  %call1 = call i32 @cJSON_ReplaceItemViaPointer(ptr noundef %0, ptr noundef %call, ptr noundef %2)
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define i32 @cJSON_ReplaceItemInObject(ptr noundef %object, ptr noundef %string, ptr noundef %newitem) #0 {
entry:
  %call = call i32 @replace_item_in_object(ptr noundef %object, ptr noundef %string, ptr noundef %newitem, i32 noundef 0)
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
  %cmp = icmp eq ptr %replacement, null
  %0 = load ptr, ptr %string.addr, align 8
  %cmp1 = icmp eq ptr %0, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %replacement.addr, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %1, i64 0, i32 3
  %2 = load i32, ptr %type, align 8
  %and = and i32 %2, 512
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %3 = load ptr, ptr %replacement.addr, align 8
  %string2 = getelementptr inbounds %struct.cJSON, ptr %3, i64 0, i32 7
  %4 = load ptr, ptr %string2, align 8
  %cmp3.not = icmp eq ptr %4, null
  br i1 %cmp3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %land.lhs.true
  %5 = load ptr, ptr %replacement.addr, align 8
  %string5 = getelementptr inbounds %struct.cJSON, ptr %5, i64 0, i32 7
  %6 = load ptr, ptr %string5, align 8
  call void @cJSON_free(ptr noundef %6)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %land.lhs.true, %if.end
  %7 = load ptr, ptr %string.addr, align 8
  %call = call ptr @cJSON_strdup(ptr noundef %7, ptr noundef nonnull @global_hooks)
  %8 = load ptr, ptr %replacement.addr, align 8
  %string7 = getelementptr inbounds %struct.cJSON, ptr %8, i64 0, i32 7
  store ptr %call, ptr %string7, align 8
  %cmp9 = icmp eq ptr %call, null
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end6
  store i32 0, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end6
  %9 = load ptr, ptr %replacement.addr, align 8
  %type12 = getelementptr inbounds %struct.cJSON, ptr %9, i64 0, i32 3
  %10 = load i32, ptr %type12, align 8
  %and13 = and i32 %10, -513
  store i32 %and13, ptr %type12, align 8
  %11 = load ptr, ptr %object.addr, align 8
  %12 = load ptr, ptr %string.addr, align 8
  %13 = load i32, ptr %case_sensitive.addr, align 4
  %call14 = call ptr @get_object_item(ptr noundef %11, ptr noundef %12, i32 noundef %13)
  %14 = load ptr, ptr %replacement.addr, align 8
  %call15 = call i32 @cJSON_ReplaceItemViaPointer(ptr noundef %11, ptr noundef %call14, ptr noundef %14)
  store i32 %call15, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end11, %if.then10, %if.then
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

; Function Attrs: nounwind ssp uwtable
define i32 @cJSON_ReplaceItemInObjectCaseSensitive(ptr noundef %object, ptr noundef %string, ptr noundef %newitem) #0 {
entry:
  %call = call i32 @replace_item_in_object(ptr noundef %object, ptr noundef %string, ptr noundef %newitem, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_CreateStringReference(ptr noundef %string) #0 {
entry:
  %string.addr = alloca ptr, align 8
  %item = alloca ptr, align 8
  store ptr %string, ptr %string.addr, align 8
  %call = call ptr @cJSON_New_Item(ptr noundef nonnull @global_hooks)
  store ptr %call, ptr %item, align 8
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %item, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %0, i64 0, i32 3
  store i32 272, ptr %type, align 8
  %1 = load ptr, ptr %string.addr, align 8
  %call1 = call ptr @cast_away_const(ptr noundef %1)
  %valuestring = getelementptr inbounds %struct.cJSON, ptr %0, i64 0, i32 4
  store ptr %call1, ptr %valuestring, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %item, align 8
  ret ptr %2
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @cast_away_const(ptr noundef %string) #0 {
entry:
  ret ptr %string
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_CreateObjectReference(ptr noundef %child) #0 {
entry:
  %child.addr = alloca ptr, align 8
  %item = alloca ptr, align 8
  store ptr %child, ptr %child.addr, align 8
  %call = call ptr @cJSON_New_Item(ptr noundef nonnull @global_hooks)
  store ptr %call, ptr %item, align 8
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %item, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %0, i64 0, i32 3
  store i32 320, ptr %type, align 8
  %1 = load ptr, ptr %child.addr, align 8
  %call1 = call ptr @cast_away_const(ptr noundef %1)
  %child2 = getelementptr inbounds %struct.cJSON, ptr %0, i64 0, i32 2
  store ptr %call1, ptr %child2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %item, align 8
  ret ptr %2
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_CreateArrayReference(ptr noundef %child) #0 {
entry:
  %child.addr = alloca ptr, align 8
  %item = alloca ptr, align 8
  store ptr %child, ptr %child.addr, align 8
  %call = call ptr @cJSON_New_Item(ptr noundef nonnull @global_hooks)
  store ptr %call, ptr %item, align 8
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %item, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %0, i64 0, i32 3
  store i32 288, ptr %type, align 8
  %1 = load ptr, ptr %child.addr, align 8
  %call1 = call ptr @cast_away_const(ptr noundef %1)
  %child2 = getelementptr inbounds %struct.cJSON, ptr %0, i64 0, i32 2
  store ptr %call1, ptr %child2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %item, align 8
  ret ptr %2
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
  %cmp = icmp slt i32 %count, 0
  %0 = load ptr, ptr %numbers.addr, align 8
  %cmp1 = icmp eq ptr %0, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %call = call ptr @cJSON_CreateArray()
  store ptr %call, ptr %a, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end11, %if.end
  %storemerge = phi i64 [ 0, %if.end ], [ %inc, %if.end11 ]
  store i64 %storemerge, ptr %i, align 8
  %1 = load ptr, ptr %a, align 8
  %tobool.not = icmp eq ptr %1, null
  %2 = load i64, ptr %i, align 8
  %3 = load i32, ptr %count.addr, align 4
  %conv = sext i32 %3 to i64
  %cmp2 = icmp ult i64 %2, %conv
  %4 = select i1 %tobool.not, i1 false, i1 %cmp2
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %numbers.addr, align 8
  %6 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds i32, ptr %5, i64 %6
  %7 = load i32, ptr %arrayidx, align 4
  %conv4 = sitofp i32 %7 to double
  %call5 = call ptr @cJSON_CreateNumber(double noundef %conv4)
  store ptr %call5, ptr %n, align 8
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %for.body
  %8 = load ptr, ptr %a, align 8
  call void @cJSON_Delete(ptr noundef %8)
  store ptr null, ptr %retval, align 8
  br label %return

if.end8:                                          ; preds = %for.body
  %9 = load i64, ptr %i, align 8
  %tobool9.not = icmp eq i64 %9, 0
  br i1 %tobool9.not, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end8
  %10 = load ptr, ptr %n, align 8
  %11 = load ptr, ptr %a, align 8
  %child = getelementptr inbounds %struct.cJSON, ptr %11, i64 0, i32 2
  store ptr %10, ptr %child, align 8
  br label %if.end11

if.else:                                          ; preds = %if.end8
  %12 = load ptr, ptr %p, align 8
  %13 = load ptr, ptr %n, align 8
  call void @suffix_object(ptr noundef %12, ptr noundef %13)
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then10
  %14 = load ptr, ptr %n, align 8
  store ptr %14, ptr %p, align 8
  %15 = load i64, ptr %i, align 8
  %inc = add i64 %15, 1
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %16 = load ptr, ptr %a, align 8
  %tobool12.not = icmp eq ptr %16, null
  br i1 %tobool12.not, label %if.end17, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end
  %17 = load ptr, ptr %a, align 8
  %child13 = getelementptr inbounds %struct.cJSON, ptr %17, i64 0, i32 2
  %18 = load ptr, ptr %child13, align 8
  %tobool14.not = icmp eq ptr %18, null
  br i1 %tobool14.not, label %if.end17, label %if.then15

if.then15:                                        ; preds = %land.lhs.true
  %19 = load ptr, ptr %n, align 8
  %20 = load ptr, ptr %a, align 8
  %child16 = getelementptr inbounds %struct.cJSON, ptr %20, i64 0, i32 2
  %21 = load ptr, ptr %child16, align 8
  %prev = getelementptr inbounds %struct.cJSON, ptr %21, i64 0, i32 1
  store ptr %19, ptr %prev, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %land.lhs.true, %for.end
  %22 = load ptr, ptr %a, align 8
  store ptr %22, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end17, %if.then7, %if.then
  %23 = load ptr, ptr %retval, align 8
  ret ptr %23
}

; Function Attrs: nounwind ssp uwtable
define internal void @suffix_object(ptr noundef %prev, ptr noundef %item) #0 {
entry:
  store ptr %item, ptr %prev, align 8
  %prev1 = getelementptr inbounds %struct.cJSON, ptr %item, i64 0, i32 1
  store ptr %prev, ptr %prev1, align 8
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
  %cmp = icmp slt i32 %count, 0
  %0 = load ptr, ptr %numbers.addr, align 8
  %cmp1 = icmp eq ptr %0, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %call = call ptr @cJSON_CreateArray()
  store ptr %call, ptr %a, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end11, %if.end
  %storemerge = phi i64 [ 0, %if.end ], [ %inc, %if.end11 ]
  store i64 %storemerge, ptr %i, align 8
  %1 = load ptr, ptr %a, align 8
  %tobool.not = icmp eq ptr %1, null
  %2 = load i64, ptr %i, align 8
  %3 = load i32, ptr %count.addr, align 4
  %conv = sext i32 %3 to i64
  %cmp2 = icmp ult i64 %2, %conv
  %4 = select i1 %tobool.not, i1 false, i1 %cmp2
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %numbers.addr, align 8
  %6 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds float, ptr %5, i64 %6
  %7 = load float, ptr %arrayidx, align 4
  %conv4 = fpext float %7 to double
  %call5 = call ptr @cJSON_CreateNumber(double noundef %conv4)
  store ptr %call5, ptr %n, align 8
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %for.body
  %8 = load ptr, ptr %a, align 8
  call void @cJSON_Delete(ptr noundef %8)
  store ptr null, ptr %retval, align 8
  br label %return

if.end8:                                          ; preds = %for.body
  %9 = load i64, ptr %i, align 8
  %tobool9.not = icmp eq i64 %9, 0
  br i1 %tobool9.not, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end8
  %10 = load ptr, ptr %n, align 8
  %11 = load ptr, ptr %a, align 8
  %child = getelementptr inbounds %struct.cJSON, ptr %11, i64 0, i32 2
  store ptr %10, ptr %child, align 8
  br label %if.end11

if.else:                                          ; preds = %if.end8
  %12 = load ptr, ptr %p, align 8
  %13 = load ptr, ptr %n, align 8
  call void @suffix_object(ptr noundef %12, ptr noundef %13)
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then10
  %14 = load ptr, ptr %n, align 8
  store ptr %14, ptr %p, align 8
  %15 = load i64, ptr %i, align 8
  %inc = add i64 %15, 1
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  %16 = load ptr, ptr %a, align 8
  %tobool12.not = icmp eq ptr %16, null
  br i1 %tobool12.not, label %if.end17, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end
  %17 = load ptr, ptr %a, align 8
  %child13 = getelementptr inbounds %struct.cJSON, ptr %17, i64 0, i32 2
  %18 = load ptr, ptr %child13, align 8
  %tobool14.not = icmp eq ptr %18, null
  br i1 %tobool14.not, label %if.end17, label %if.then15

if.then15:                                        ; preds = %land.lhs.true
  %19 = load ptr, ptr %n, align 8
  %20 = load ptr, ptr %a, align 8
  %child16 = getelementptr inbounds %struct.cJSON, ptr %20, i64 0, i32 2
  %21 = load ptr, ptr %child16, align 8
  %prev = getelementptr inbounds %struct.cJSON, ptr %21, i64 0, i32 1
  store ptr %19, ptr %prev, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %land.lhs.true, %for.end
  %22 = load ptr, ptr %a, align 8
  store ptr %22, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end17, %if.then7, %if.then
  %23 = load ptr, ptr %retval, align 8
  ret ptr %23
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
  %cmp = icmp slt i32 %count, 0
  %0 = load ptr, ptr %numbers.addr, align 8
  %cmp1 = icmp eq ptr %0, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %call = call ptr @cJSON_CreateArray()
  store ptr %call, ptr %a, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end10, %if.end
  %storemerge = phi i64 [ 0, %if.end ], [ %inc, %if.end10 ]
  store i64 %storemerge, ptr %i, align 8
  %1 = load ptr, ptr %a, align 8
  %tobool.not = icmp eq ptr %1, null
  %2 = load i64, ptr %i, align 8
  %3 = load i32, ptr %count.addr, align 4
  %conv = sext i32 %3 to i64
  %cmp2 = icmp ult i64 %2, %conv
  %4 = select i1 %tobool.not, i1 false, i1 %cmp2
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %numbers.addr, align 8
  %6 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds double, ptr %5, i64 %6
  %7 = load double, ptr %arrayidx, align 8
  %call4 = call ptr @cJSON_CreateNumber(double noundef %7)
  store ptr %call4, ptr %n, align 8
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %for.body
  %8 = load ptr, ptr %a, align 8
  call void @cJSON_Delete(ptr noundef %8)
  store ptr null, ptr %retval, align 8
  br label %return

if.end7:                                          ; preds = %for.body
  %9 = load i64, ptr %i, align 8
  %tobool8.not = icmp eq i64 %9, 0
  br i1 %tobool8.not, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end7
  %10 = load ptr, ptr %n, align 8
  %11 = load ptr, ptr %a, align 8
  %child = getelementptr inbounds %struct.cJSON, ptr %11, i64 0, i32 2
  store ptr %10, ptr %child, align 8
  br label %if.end10

if.else:                                          ; preds = %if.end7
  %12 = load ptr, ptr %p, align 8
  %13 = load ptr, ptr %n, align 8
  call void @suffix_object(ptr noundef %12, ptr noundef %13)
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then9
  %14 = load ptr, ptr %n, align 8
  store ptr %14, ptr %p, align 8
  %15 = load i64, ptr %i, align 8
  %inc = add i64 %15, 1
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  %16 = load ptr, ptr %a, align 8
  %tobool11.not = icmp eq ptr %16, null
  br i1 %tobool11.not, label %if.end16, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end
  %17 = load ptr, ptr %a, align 8
  %child12 = getelementptr inbounds %struct.cJSON, ptr %17, i64 0, i32 2
  %18 = load ptr, ptr %child12, align 8
  %tobool13.not = icmp eq ptr %18, null
  br i1 %tobool13.not, label %if.end16, label %if.then14

if.then14:                                        ; preds = %land.lhs.true
  %19 = load ptr, ptr %n, align 8
  %20 = load ptr, ptr %a, align 8
  %child15 = getelementptr inbounds %struct.cJSON, ptr %20, i64 0, i32 2
  %21 = load ptr, ptr %child15, align 8
  %prev = getelementptr inbounds %struct.cJSON, ptr %21, i64 0, i32 1
  store ptr %19, ptr %prev, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %land.lhs.true, %for.end
  %22 = load ptr, ptr %a, align 8
  store ptr %22, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end16, %if.then6, %if.then
  %23 = load ptr, ptr %retval, align 8
  ret ptr %23
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
  %cmp = icmp slt i32 %count, 0
  %0 = load ptr, ptr %strings.addr, align 8
  %cmp1 = icmp eq ptr %0, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %call = call ptr @cJSON_CreateArray()
  store ptr %call, ptr %a, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end10, %if.end
  %storemerge = phi i64 [ 0, %if.end ], [ %inc, %if.end10 ]
  store i64 %storemerge, ptr %i, align 8
  %1 = load ptr, ptr %a, align 8
  %tobool.not = icmp eq ptr %1, null
  %2 = load i64, ptr %i, align 8
  %3 = load i32, ptr %count.addr, align 4
  %conv = sext i32 %3 to i64
  %cmp2 = icmp ult i64 %2, %conv
  %4 = select i1 %tobool.not, i1 false, i1 %cmp2
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %strings.addr, align 8
  %6 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %6
  %7 = load ptr, ptr %arrayidx, align 8
  %call4 = call ptr @cJSON_CreateString(ptr noundef %7)
  store ptr %call4, ptr %n, align 8
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %for.body
  %8 = load ptr, ptr %a, align 8
  call void @cJSON_Delete(ptr noundef %8)
  store ptr null, ptr %retval, align 8
  br label %return

if.end7:                                          ; preds = %for.body
  %9 = load i64, ptr %i, align 8
  %tobool8.not = icmp eq i64 %9, 0
  br i1 %tobool8.not, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end7
  %10 = load ptr, ptr %n, align 8
  %11 = load ptr, ptr %a, align 8
  %child = getelementptr inbounds %struct.cJSON, ptr %11, i64 0, i32 2
  store ptr %10, ptr %child, align 8
  br label %if.end10

if.else:                                          ; preds = %if.end7
  %12 = load ptr, ptr %p, align 8
  %13 = load ptr, ptr %n, align 8
  call void @suffix_object(ptr noundef %12, ptr noundef %13)
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then9
  %14 = load ptr, ptr %n, align 8
  store ptr %14, ptr %p, align 8
  %15 = load i64, ptr %i, align 8
  %inc = add i64 %15, 1
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  %16 = load ptr, ptr %a, align 8
  %tobool11.not = icmp eq ptr %16, null
  br i1 %tobool11.not, label %if.end16, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end
  %17 = load ptr, ptr %a, align 8
  %child12 = getelementptr inbounds %struct.cJSON, ptr %17, i64 0, i32 2
  %18 = load ptr, ptr %child12, align 8
  %tobool13.not = icmp eq ptr %18, null
  br i1 %tobool13.not, label %if.end16, label %if.then14

if.then14:                                        ; preds = %land.lhs.true
  %19 = load ptr, ptr %n, align 8
  %20 = load ptr, ptr %a, align 8
  %child15 = getelementptr inbounds %struct.cJSON, ptr %20, i64 0, i32 2
  %21 = load ptr, ptr %child15, align 8
  %prev = getelementptr inbounds %struct.cJSON, ptr %21, i64 0, i32 1
  store ptr %19, ptr %prev, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %land.lhs.true, %for.end
  %22 = load ptr, ptr %a, align 8
  store ptr %22, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end16, %if.then6, %if.then
  %23 = load ptr, ptr %retval, align 8
  ret ptr %23
}

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_Duplicate(ptr noundef %item, i32 noundef %recurse) #0 {
entry:
  %call = call ptr @cJSON_Duplicate_rec(ptr noundef %item, i64 noundef 0, i32 noundef %recurse)
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
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %fail, label %if.end

if.end:                                           ; preds = %entry
  %call = call ptr @cJSON_New_Item(ptr noundef nonnull @global_hooks)
  store ptr %call, ptr %newitem, align 8
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %fail, label %if.end3

if.end3:                                          ; preds = %if.end
  %1 = load ptr, ptr %item.addr, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %1, i64 0, i32 3
  %2 = load i32, ptr %type, align 8
  %and = and i32 %2, -257
  %3 = load ptr, ptr %newitem, align 8
  %type4 = getelementptr inbounds %struct.cJSON, ptr %3, i64 0, i32 3
  store i32 %and, ptr %type4, align 8
  %4 = load ptr, ptr %item.addr, align 8
  %valueint = getelementptr inbounds %struct.cJSON, ptr %4, i64 0, i32 5
  %5 = load i32, ptr %valueint, align 8
  %valueint5 = getelementptr inbounds %struct.cJSON, ptr %3, i64 0, i32 5
  store i32 %5, ptr %valueint5, align 8
  %valuedouble = getelementptr inbounds %struct.cJSON, ptr %4, i64 0, i32 6
  %6 = load double, ptr %valuedouble, align 8
  %7 = load ptr, ptr %newitem, align 8
  %valuedouble6 = getelementptr inbounds %struct.cJSON, ptr %7, i64 0, i32 6
  store double %6, ptr %valuedouble6, align 8
  %8 = load ptr, ptr %item.addr, align 8
  %valuestring = getelementptr inbounds %struct.cJSON, ptr %8, i64 0, i32 4
  %9 = load ptr, ptr %valuestring, align 8
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %if.end16, label %if.then8

if.then8:                                         ; preds = %if.end3
  %10 = load ptr, ptr %item.addr, align 8
  %valuestring9 = getelementptr inbounds %struct.cJSON, ptr %10, i64 0, i32 4
  %11 = load ptr, ptr %valuestring9, align 8
  %call10 = call ptr @cJSON_strdup(ptr noundef %11, ptr noundef nonnull @global_hooks)
  %12 = load ptr, ptr %newitem, align 8
  %valuestring11 = getelementptr inbounds %struct.cJSON, ptr %12, i64 0, i32 4
  store ptr %call10, ptr %valuestring11, align 8
  %tobool13.not = icmp eq ptr %call10, null
  br i1 %tobool13.not, label %fail, label %if.end16

if.end16:                                         ; preds = %if.then8, %if.end3
  %13 = load ptr, ptr %item.addr, align 8
  %string = getelementptr inbounds %struct.cJSON, ptr %13, i64 0, i32 7
  %14 = load ptr, ptr %string, align 8
  %tobool17.not = icmp eq ptr %14, null
  br i1 %tobool17.not, label %if.end30, label %if.then18

if.then18:                                        ; preds = %if.end16
  %15 = load ptr, ptr %item.addr, align 8
  %type19 = getelementptr inbounds %struct.cJSON, ptr %15, i64 0, i32 3
  %16 = load i32, ptr %type19, align 8
  %and20 = and i32 %16, 512
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then18
  %17 = load ptr, ptr %item.addr, align 8
  %string22 = getelementptr inbounds %struct.cJSON, ptr %17, i64 0, i32 7
  %18 = load ptr, ptr %string22, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then18
  %19 = load ptr, ptr %item.addr, align 8
  %string23 = getelementptr inbounds %struct.cJSON, ptr %19, i64 0, i32 7
  %20 = load ptr, ptr %string23, align 8
  %call24 = call ptr @cJSON_strdup(ptr noundef %20, ptr noundef nonnull @global_hooks)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %18, %cond.true ], [ %call24, %cond.false ]
  %21 = load ptr, ptr %newitem, align 8
  %string25 = getelementptr inbounds %struct.cJSON, ptr %21, i64 0, i32 7
  store ptr %cond, ptr %string25, align 8
  %tobool27.not = icmp eq ptr %cond, null
  br i1 %tobool27.not, label %fail, label %if.end30

if.end30:                                         ; preds = %cond.end, %if.end16
  %22 = load i32, ptr %recurse.addr, align 4
  %tobool31.not = icmp eq i32 %22, 0
  br i1 %tobool31.not, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end30
  %23 = load ptr, ptr %newitem, align 8
  store ptr %23, ptr %retval, align 8
  br label %return

if.end33:                                         ; preds = %if.end30
  %24 = load ptr, ptr %item.addr, align 8
  %child34 = getelementptr inbounds %struct.cJSON, ptr %24, i64 0, i32 2
  br label %while.cond

while.cond:                                       ; preds = %if.end46, %if.end33
  %storemerge.in = phi ptr [ %child34, %if.end33 ], [ %33, %if.end46 ]
  %storemerge = load ptr, ptr %storemerge.in, align 8
  store ptr %storemerge, ptr %child, align 8
  %cmp.not = icmp eq ptr %storemerge, null
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %25 = load i64, ptr %depth.addr, align 8
  %cmp35 = icmp ugt i64 %25, 9999
  br i1 %cmp35, label %fail, label %if.end37

if.end37:                                         ; preds = %while.body
  %26 = load ptr, ptr %child, align 8
  %27 = load i64, ptr %depth.addr, align 8
  %add = add i64 %27, 1
  %call38 = call ptr @cJSON_Duplicate_rec(ptr noundef %26, i64 noundef %add, i32 noundef 1)
  store ptr %call38, ptr %newchild, align 8
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %fail, label %if.end41

if.end41:                                         ; preds = %if.end37
  %28 = load ptr, ptr %next, align 8
  %cmp42.not = icmp eq ptr %28, null
  br i1 %cmp42.not, label %if.else, label %if.then43

if.then43:                                        ; preds = %if.end41
  %29 = load ptr, ptr %newchild, align 8
  %30 = load ptr, ptr %next, align 8
  store ptr %29, ptr %30, align 8
  %prev = getelementptr inbounds %struct.cJSON, ptr %29, i64 0, i32 1
  store ptr %30, ptr %prev, align 8
  br label %if.end46

if.else:                                          ; preds = %if.end41
  %31 = load ptr, ptr %newchild, align 8
  %32 = load ptr, ptr %newitem, align 8
  %child45 = getelementptr inbounds %struct.cJSON, ptr %32, i64 0, i32 2
  store ptr %31, ptr %child45, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.else, %if.then43
  %storemerge1 = phi ptr [ %31, %if.else ], [ %29, %if.then43 ]
  store ptr %storemerge1, ptr %next, align 8
  %33 = load ptr, ptr %child, align 8
  br label %while.cond, !llvm.loop !17

while.end:                                        ; preds = %while.cond
  %34 = load ptr, ptr %newitem, align 8
  %tobool48.not = icmp eq ptr %34, null
  br i1 %tobool48.not, label %if.end54, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.end
  %35 = load ptr, ptr %newitem, align 8
  %child49 = getelementptr inbounds %struct.cJSON, ptr %35, i64 0, i32 2
  %36 = load ptr, ptr %child49, align 8
  %tobool50.not = icmp eq ptr %36, null
  br i1 %tobool50.not, label %if.end54, label %if.then51

if.then51:                                        ; preds = %land.lhs.true
  %37 = load ptr, ptr %newchild, align 8
  %38 = load ptr, ptr %newitem, align 8
  %child52 = getelementptr inbounds %struct.cJSON, ptr %38, i64 0, i32 2
  %39 = load ptr, ptr %child52, align 8
  %prev53 = getelementptr inbounds %struct.cJSON, ptr %39, i64 0, i32 1
  store ptr %37, ptr %prev53, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %land.lhs.true, %while.end
  %40 = load ptr, ptr %newitem, align 8
  store ptr %40, ptr %retval, align 8
  br label %return

fail:                                             ; preds = %if.end37, %while.body, %cond.end, %if.then8, %if.end, %entry
  %41 = load ptr, ptr %newitem, align 8
  %cmp55.not = icmp eq ptr %41, null
  br i1 %cmp55.not, label %if.end57, label %if.then56

if.then56:                                        ; preds = %fail
  %42 = load ptr, ptr %newitem, align 8
  call void @cJSON_Delete(ptr noundef %42)
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %fail
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end57, %if.end54, %if.then32
  %43 = load ptr, ptr %retval, align 8
  ret ptr %43
}

; Function Attrs: nounwind ssp uwtable
define void @cJSON_Minify(ptr noundef %json) #0 {
entry:
  %json.addr = alloca ptr, align 8
  %into = alloca ptr, align 8
  store ptr %json, ptr %json.addr, align 8
  store ptr %json, ptr %into, align 8
  %cmp = icmp eq ptr %json, null
  br i1 %cmp, label %return, label %while.cond

while.cond:                                       ; preds = %entry, %sw.epilog
  %0 = load ptr, ptr %json.addr, align 8
  %1 = load i8, ptr %0, align 1
  %cmp1.not = icmp eq i8 %1, 0
  br i1 %cmp1.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %json.addr, align 8
  %3 = load i8, ptr %2, align 1
  %conv4 = sext i8 %3 to i32
  switch i32 %conv4, label %sw.default [
    i32 32, label %sw.bb
    i32 9, label %sw.bb
    i32 13, label %sw.bb
    i32 10, label %sw.bb
    i32 47, label %sw.bb5
    i32 34, label %sw.bb20
  ]

sw.bb:                                            ; preds = %while.body, %while.body, %while.body, %while.body
  %4 = load ptr, ptr %json.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %incdec.ptr, ptr %json.addr, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %while.body
  %5 = load ptr, ptr %json.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %5, i64 1
  %6 = load i8, ptr %arrayidx6, align 1
  %cmp8 = icmp eq i8 %6, 47
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %sw.bb5
  call void @skip_oneline_comment(ptr noundef nonnull %json.addr)
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb5
  %7 = load ptr, ptr %json.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %7, i64 1
  %8 = load i8, ptr %arrayidx11, align 1
  %cmp13 = icmp eq i8 %8, 42
  br i1 %cmp13, label %if.then15, label %if.else16

if.then15:                                        ; preds = %if.else
  call void @skip_multiline_comment(ptr noundef nonnull %json.addr)
  br label %sw.epilog

if.else16:                                        ; preds = %if.else
  %9 = load ptr, ptr %json.addr, align 8
  %incdec.ptr17 = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %incdec.ptr17, ptr %json.addr, align 8
  br label %sw.epilog

sw.bb20:                                          ; preds = %while.body
  call void @minify_string(ptr noundef nonnull %json.addr, ptr noundef nonnull %into)
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %10 = load ptr, ptr %json.addr, align 8
  %11 = load i8, ptr %10, align 1
  %12 = load ptr, ptr %into, align 8
  store i8 %11, ptr %12, align 1
  %13 = load ptr, ptr %json.addr, align 8
  %incdec.ptr23 = getelementptr inbounds i8, ptr %13, i64 1
  store ptr %incdec.ptr23, ptr %json.addr, align 8
  %14 = load ptr, ptr %into, align 8
  %incdec.ptr24 = getelementptr inbounds i8, ptr %14, i64 1
  store ptr %incdec.ptr24, ptr %into, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then10, %if.else16, %if.then15, %sw.default, %sw.bb20, %sw.bb
  br label %while.cond, !llvm.loop !18

while.end:                                        ; preds = %while.cond
  %15 = load ptr, ptr %into, align 8
  store i8 0, ptr %15, align 1
  br label %return

return:                                           ; preds = %entry, %while.end
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @skip_oneline_comment(ptr noundef %input) #0 {
entry:
  %input.addr = alloca ptr, align 8
  store ptr %input, ptr %input.addr, align 8
  %0 = load ptr, ptr %input, align 8
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 2
  store ptr %add.ptr, ptr %input, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %input.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %3 = load i8, ptr %2, align 1
  %cmp.not = icmp eq i8 %3, 0
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %input.addr, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load i8, ptr %5, align 1
  %cmp4 = icmp eq i8 %6, 10
  br i1 %cmp4, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %7 = load ptr, ptr %input.addr, align 8
  %8 = load ptr, ptr %7, align 8
  %add.ptr6 = getelementptr inbounds i8, ptr %8, i64 1
  store ptr %add.ptr6, ptr %7, align 8
  br label %for.end

for.inc:                                          ; preds = %for.body
  %9 = load ptr, ptr %input.addr, align 8
  %10 = load ptr, ptr %9, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %incdec.ptr, ptr %9, align 8
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @skip_multiline_comment(ptr noundef %input) #0 {
entry:
  %input.addr = alloca ptr, align 8
  store ptr %input, ptr %input.addr, align 8
  %0 = load ptr, ptr %input, align 8
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 2
  store ptr %add.ptr, ptr %input, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %input.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %3 = load i8, ptr %2, align 1
  %cmp.not = icmp eq i8 %3, 0
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %input.addr, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load i8, ptr %5, align 1
  %cmp4 = icmp eq i8 %6, 42
  br i1 %cmp4, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %7 = load ptr, ptr %input.addr, align 8
  %8 = load ptr, ptr %7, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %8, i64 1
  %9 = load i8, ptr %arrayidx6, align 1
  %cmp8 = icmp eq i8 %9, 47
  br i1 %cmp8, label %if.then, label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %10 = load ptr, ptr %input.addr, align 8
  %11 = load ptr, ptr %10, align 8
  %add.ptr10 = getelementptr inbounds i8, ptr %11, i64 2
  store ptr %add.ptr10, ptr %10, align 8
  br label %for.end

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %12 = load ptr, ptr %input.addr, align 8
  %13 = load ptr, ptr %12, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %13, i64 1
  store ptr %incdec.ptr, ptr %12, align 8
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
  %0 = load ptr, ptr %input, align 8
  %1 = load i8, ptr %0, align 1
  %2 = load ptr, ptr %output, align 8
  store i8 %1, ptr %2, align 1
  %3 = load ptr, ptr %input, align 8
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %add.ptr, ptr %input, align 8
  %4 = load ptr, ptr %output.addr, align 8
  %5 = load ptr, ptr %4, align 8
  %add.ptr2 = getelementptr inbounds i8, ptr %5, i64 1
  store ptr %add.ptr2, ptr %4, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load ptr, ptr %input.addr, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load i8, ptr %7, align 1
  %cmp.not = icmp eq i8 %8, 0
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %input.addr, align 8
  %10 = load ptr, ptr %9, align 8
  %11 = load i8, ptr %10, align 1
  %12 = load ptr, ptr %output.addr, align 8
  %13 = load ptr, ptr %12, align 8
  store i8 %11, ptr %13, align 1
  %14 = load ptr, ptr %9, align 8
  %15 = load i8, ptr %14, align 1
  %cmp9 = icmp eq i8 %15, 34
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %16 = load ptr, ptr %output.addr, align 8
  %17 = load ptr, ptr %16, align 8
  store i8 34, ptr %17, align 1
  %18 = load ptr, ptr %input.addr, align 8
  %19 = load ptr, ptr %18, align 8
  %add.ptr12 = getelementptr inbounds i8, ptr %19, i64 1
  store ptr %add.ptr12, ptr %18, align 8
  %20 = load ptr, ptr %output.addr, align 8
  %21 = load ptr, ptr %20, align 8
  %add.ptr13 = getelementptr inbounds i8, ptr %21, i64 1
  store ptr %add.ptr13, ptr %20, align 8
  br label %for.end

if.else:                                          ; preds = %for.body
  %22 = load ptr, ptr %input.addr, align 8
  %23 = load ptr, ptr %22, align 8
  %24 = load i8, ptr %23, align 1
  %cmp16 = icmp eq i8 %24, 92
  br i1 %cmp16, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %if.else
  %25 = load ptr, ptr %input.addr, align 8
  %26 = load ptr, ptr %25, align 8
  %arrayidx18 = getelementptr inbounds i8, ptr %26, i64 1
  %27 = load i8, ptr %arrayidx18, align 1
  %cmp20 = icmp eq i8 %27, 34
  br i1 %cmp20, label %if.then22, label %for.inc

if.then22:                                        ; preds = %land.lhs.true
  %28 = load ptr, ptr %input.addr, align 8
  %29 = load ptr, ptr %28, align 8
  %arrayidx23 = getelementptr inbounds i8, ptr %29, i64 1
  %30 = load i8, ptr %arrayidx23, align 1
  %31 = load ptr, ptr %output.addr, align 8
  %32 = load ptr, ptr %31, align 8
  %arrayidx24 = getelementptr inbounds i8, ptr %32, i64 1
  store i8 %30, ptr %arrayidx24, align 1
  %33 = load ptr, ptr %input.addr, align 8
  %34 = load ptr, ptr %33, align 8
  %add.ptr25 = getelementptr inbounds i8, ptr %34, i64 1
  store ptr %add.ptr25, ptr %33, align 8
  %35 = load ptr, ptr %output.addr, align 8
  %36 = load ptr, ptr %35, align 8
  %add.ptr26 = getelementptr inbounds i8, ptr %36, i64 1
  store ptr %add.ptr26, ptr %35, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then22, %land.lhs.true, %if.else
  %37 = load ptr, ptr %input.addr, align 8
  %38 = load ptr, ptr %37, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %38, i64 1
  store ptr %incdec.ptr, ptr %37, align 8
  %39 = load ptr, ptr %output.addr, align 8
  %40 = load ptr, ptr %39, align 8
  %incdec.ptr28 = getelementptr inbounds i8, ptr %40, i64 1
  store ptr %incdec.ptr28, ptr %39, align 8
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @cJSON_IsInvalid(ptr noundef %item) #0 {
entry:
  %item.addr = alloca ptr, align 8
  store ptr %item, ptr %item.addr, align 8
  %cmp = icmp eq ptr %item, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %item.addr, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %0, i64 0, i32 3
  %1 = load i32, ptr %type, align 8
  %and = and i32 %1, 255
  %cmp1 = icmp eq i32 %and, 0
  %conv = zext i1 %cmp1 to i32
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i32 [ %conv, %if.end ], [ 0, %entry ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define i32 @cJSON_IsFalse(ptr noundef %item) #0 {
entry:
  %item.addr = alloca ptr, align 8
  store ptr %item, ptr %item.addr, align 8
  %cmp = icmp eq ptr %item, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %item.addr, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %0, i64 0, i32 3
  %1 = load i32, ptr %type, align 8
  %and = and i32 %1, 255
  %cmp1 = icmp eq i32 %and, 1
  %conv = zext i1 %cmp1 to i32
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i32 [ %conv, %if.end ], [ 0, %entry ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define i32 @cJSON_IsTrue(ptr noundef %item) #0 {
entry:
  %item.addr = alloca ptr, align 8
  store ptr %item, ptr %item.addr, align 8
  %cmp = icmp eq ptr %item, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %item.addr, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %0, i64 0, i32 3
  %1 = load i32, ptr %type, align 8
  %and = and i32 %1, 255
  %cmp1 = icmp eq i32 %and, 2
  %conv = zext i1 %cmp1 to i32
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i32 [ %conv, %if.end ], [ 0, %entry ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define i32 @cJSON_IsBool(ptr noundef %item) #0 {
entry:
  %item.addr = alloca ptr, align 8
  store ptr %item, ptr %item.addr, align 8
  %cmp = icmp eq ptr %item, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %item.addr, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %0, i64 0, i32 3
  %1 = load i32, ptr %type, align 8
  %and = and i32 %1, 3
  %cmp1 = icmp ne i32 %and, 0
  %conv = zext i1 %cmp1 to i32
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i32 [ %conv, %if.end ], [ 0, %entry ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define i32 @cJSON_IsNull(ptr noundef %item) #0 {
entry:
  %item.addr = alloca ptr, align 8
  store ptr %item, ptr %item.addr, align 8
  %cmp = icmp eq ptr %item, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %item.addr, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %0, i64 0, i32 3
  %1 = load i32, ptr %type, align 8
  %and = and i32 %1, 255
  %cmp1 = icmp eq i32 %and, 4
  %conv = zext i1 %cmp1 to i32
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i32 [ %conv, %if.end ], [ 0, %entry ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define i32 @cJSON_IsArray(ptr noundef %item) #0 {
entry:
  %item.addr = alloca ptr, align 8
  store ptr %item, ptr %item.addr, align 8
  %cmp = icmp eq ptr %item, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %item.addr, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %0, i64 0, i32 3
  %1 = load i32, ptr %type, align 8
  %and = and i32 %1, 255
  %cmp1 = icmp eq i32 %and, 32
  %conv = zext i1 %cmp1 to i32
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i32 [ %conv, %if.end ], [ 0, %entry ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define i32 @cJSON_IsObject(ptr noundef %item) #0 {
entry:
  %item.addr = alloca ptr, align 8
  store ptr %item, ptr %item.addr, align 8
  %cmp = icmp eq ptr %item, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %item.addr, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %0, i64 0, i32 3
  %1 = load i32, ptr %type, align 8
  %and = and i32 %1, 255
  %cmp1 = icmp eq i32 %and, 64
  %conv = zext i1 %cmp1 to i32
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i32 [ %conv, %if.end ], [ 0, %entry ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define i32 @cJSON_IsRaw(ptr noundef %item) #0 {
entry:
  %item.addr = alloca ptr, align 8
  store ptr %item, ptr %item.addr, align 8
  %cmp = icmp eq ptr %item, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %item.addr, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %0, i64 0, i32 3
  %1 = load i32, ptr %type, align 8
  %and = and i32 %1, 255
  %cmp1 = icmp eq i32 %and, 128
  %conv = zext i1 %cmp1 to i32
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i32 [ %conv, %if.end ], [ 0, %entry ]
  ret i32 %storemerge
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
  switch i8 %trunc, label %sw.default [
    i8 1, label %sw.epilog
    i8 2, label %sw.epilog
    i8 4, label %sw.epilog
    i8 8, label %sw.epilog
    i8 16, label %sw.epilog
    i8 -128, label %sw.epilog
    i8 32, label %sw.epilog
    i8 64, label %sw.epilog
  ]

sw.default:                                       ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %9 = load ptr, ptr %a.addr, align 8
  %10 = load ptr, ptr %b.addr, align 8
  %cmp8 = icmp eq ptr %9, %10
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %sw.epilog
  store i32 1, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %sw.epilog
  %11 = load ptr, ptr %a.addr, align 8
  %type11 = getelementptr inbounds %struct.cJSON, ptr %11, i64 0, i32 3
  %12 = load i32, ptr %type11, align 8
  %trunc1 = trunc i32 %12 to i8
  switch i8 %trunc1, label %sw.default82 [
    i8 1, label %sw.bb13
    i8 2, label %sw.bb13
    i8 4, label %sw.bb13
    i8 8, label %sw.bb14
    i8 16, label %sw.bb18
    i8 -128, label %sw.bb18
    i8 32, label %sw.bb31
    i8 64, label %sw.bb43
  ]

sw.bb13:                                          ; preds = %if.end10, %if.end10, %if.end10
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb14:                                          ; preds = %if.end10
  %13 = load ptr, ptr %a.addr, align 8
  %valuedouble = getelementptr inbounds %struct.cJSON, ptr %13, i64 0, i32 6
  %14 = load double, ptr %valuedouble, align 8
  %15 = load ptr, ptr %b.addr, align 8
  %valuedouble15 = getelementptr inbounds %struct.cJSON, ptr %15, i64 0, i32 6
  %16 = load double, ptr %valuedouble15, align 8
  %call = call i32 @compare_double(double noundef %14, double noundef %16)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %sw.bb14
  store i32 1, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %sw.bb14
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb18:                                          ; preds = %if.end10, %if.end10
  %17 = load ptr, ptr %a.addr, align 8
  %valuestring = getelementptr inbounds %struct.cJSON, ptr %17, i64 0, i32 4
  %18 = load ptr, ptr %valuestring, align 8
  %cmp19 = icmp eq ptr %18, null
  br i1 %cmp19, label %if.then23, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %sw.bb18
  %19 = load ptr, ptr %b.addr, align 8
  %valuestring21 = getelementptr inbounds %struct.cJSON, ptr %19, i64 0, i32 4
  %20 = load ptr, ptr %valuestring21, align 8
  %cmp22 = icmp eq ptr %20, null
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %lor.lhs.false20, %sw.bb18
  store i32 0, ptr %retval, align 4
  br label %return

if.end24:                                         ; preds = %lor.lhs.false20
  %21 = load ptr, ptr %a.addr, align 8
  %valuestring25 = getelementptr inbounds %struct.cJSON, ptr %21, i64 0, i32 4
  %22 = load ptr, ptr %valuestring25, align 8
  %23 = load ptr, ptr %b.addr, align 8
  %valuestring26 = getelementptr inbounds %struct.cJSON, ptr %23, i64 0, i32 4
  %24 = load ptr, ptr %valuestring26, align 8
  %call27 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(1) %24) #11
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end24
  store i32 1, ptr %retval, align 4
  br label %return

if.end30:                                         ; preds = %if.end24
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb31:                                          ; preds = %if.end10
  %25 = load ptr, ptr %a.addr, align 8
  %child = getelementptr inbounds %struct.cJSON, ptr %25, i64 0, i32 2
  %26 = load ptr, ptr %child, align 8
  store ptr %26, ptr %a_element, align 8
  %27 = load ptr, ptr %b.addr, align 8
  %child32 = getelementptr inbounds %struct.cJSON, ptr %27, i64 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %if.end38, %sw.bb31
  %storemerge3.in = phi ptr [ %child32, %sw.bb31 ], [ %36, %if.end38 ]
  %storemerge3 = load ptr, ptr %storemerge3.in, align 8
  store ptr %storemerge3, ptr %b_element, align 8
  %28 = load ptr, ptr %a_element, align 8
  %cmp33.not = icmp eq ptr %28, null
  %29 = load ptr, ptr %b_element, align 8
  %cmp34 = icmp ne ptr %29, null
  %30 = select i1 %cmp33.not, i1 false, i1 %cmp34
  br i1 %30, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load ptr, ptr %a_element, align 8
  %32 = load ptr, ptr %b_element, align 8
  %33 = load i32, ptr %case_sensitive.addr, align 4
  %call35 = call i32 @cJSON_Compare(ptr noundef %31, ptr noundef %32, i32 noundef %33)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then37, label %if.end38

if.then37:                                        ; preds = %for.body
  store i32 0, ptr %retval, align 4
  br label %return

if.end38:                                         ; preds = %for.body
  %34 = load ptr, ptr %a_element, align 8
  %35 = load ptr, ptr %34, align 8
  store ptr %35, ptr %a_element, align 8
  %36 = load ptr, ptr %b_element, align 8
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.cond
  %37 = load ptr, ptr %a_element, align 8
  %38 = load ptr, ptr %b_element, align 8
  %cmp40.not = icmp eq ptr %37, %38
  br i1 %cmp40.not, label %if.end42, label %if.then41

if.then41:                                        ; preds = %for.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end42:                                         ; preds = %for.end
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb43:                                          ; preds = %if.end10
  store ptr null, ptr %a_element44, align 8
  store ptr null, ptr %b_element45, align 8
  %39 = load ptr, ptr %a.addr, align 8
  %cmp46.not = icmp eq ptr %39, null
  br i1 %cmp46.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %sw.bb43
  %40 = load ptr, ptr %a.addr, align 8
  %child47 = getelementptr inbounds %struct.cJSON, ptr %40, i64 0, i32 2
  %41 = load ptr, ptr %child47, align 8
  br label %cond.end

cond.end:                                         ; preds = %sw.bb43, %cond.true
  %cond = phi ptr [ %41, %cond.true ], [ null, %sw.bb43 ]
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc, %cond.end
  %storemerge = phi ptr [ %cond, %cond.end ], [ %50, %for.inc ]
  store ptr %storemerge, ptr %a_element44, align 8
  %cmp49.not = icmp eq ptr %storemerge, null
  br i1 %cmp49.not, label %for.end60, label %for.body50

for.body50:                                       ; preds = %for.cond48
  %42 = load ptr, ptr %b.addr, align 8
  %43 = load ptr, ptr %a_element44, align 8
  %string = getelementptr inbounds %struct.cJSON, ptr %43, i64 0, i32 7
  %44 = load ptr, ptr %string, align 8
  %45 = load i32, ptr %case_sensitive.addr, align 4
  %call51 = call ptr @get_object_item(ptr noundef %42, ptr noundef %44, i32 noundef %45)
  store ptr %call51, ptr %b_element45, align 8
  %cmp52 = icmp eq ptr %call51, null
  br i1 %cmp52, label %if.then53, label %if.end54

if.then53:                                        ; preds = %for.body50
  store i32 0, ptr %retval, align 4
  br label %return

if.end54:                                         ; preds = %for.body50
  %46 = load ptr, ptr %a_element44, align 8
  %47 = load ptr, ptr %b_element45, align 8
  %48 = load i32, ptr %case_sensitive.addr, align 4
  %call55 = call i32 @cJSON_Compare(ptr noundef %46, ptr noundef %47, i32 noundef %48)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.then57, label %for.inc

if.then57:                                        ; preds = %if.end54
  store i32 0, ptr %retval, align 4
  br label %return

for.inc:                                          ; preds = %if.end54
  %49 = load ptr, ptr %a_element44, align 8
  %50 = load ptr, ptr %49, align 8
  br label %for.cond48, !llvm.loop !23

for.end60:                                        ; preds = %for.cond48
  %51 = load ptr, ptr %b.addr, align 8
  %cmp61.not = icmp eq ptr %51, null
  br i1 %cmp61.not, label %cond.end65, label %cond.true62

cond.true62:                                      ; preds = %for.end60
  %52 = load ptr, ptr %b.addr, align 8
  %child63 = getelementptr inbounds %struct.cJSON, ptr %52, i64 0, i32 2
  %53 = load ptr, ptr %child63, align 8
  br label %cond.end65

cond.end65:                                       ; preds = %for.end60, %cond.true62
  %cond66 = phi ptr [ %53, %cond.true62 ], [ null, %for.end60 ]
  br label %for.cond67

for.cond67:                                       ; preds = %for.inc79, %cond.end65
  %storemerge2 = phi ptr [ %cond66, %cond.end65 ], [ %62, %for.inc79 ]
  store ptr %storemerge2, ptr %b_element45, align 8
  %cmp68.not = icmp eq ptr %storemerge2, null
  br i1 %cmp68.not, label %for.end81, label %for.body69

for.body69:                                       ; preds = %for.cond67
  %54 = load ptr, ptr %a.addr, align 8
  %55 = load ptr, ptr %b_element45, align 8
  %string70 = getelementptr inbounds %struct.cJSON, ptr %55, i64 0, i32 7
  %56 = load ptr, ptr %string70, align 8
  %57 = load i32, ptr %case_sensitive.addr, align 4
  %call71 = call ptr @get_object_item(ptr noundef %54, ptr noundef %56, i32 noundef %57)
  store ptr %call71, ptr %a_element44, align 8
  %cmp72 = icmp eq ptr %call71, null
  br i1 %cmp72, label %if.then73, label %if.end74

if.then73:                                        ; preds = %for.body69
  store i32 0, ptr %retval, align 4
  br label %return

if.end74:                                         ; preds = %for.body69
  %58 = load ptr, ptr %b_element45, align 8
  %59 = load ptr, ptr %a_element44, align 8
  %60 = load i32, ptr %case_sensitive.addr, align 4
  %call75 = call i32 @cJSON_Compare(ptr noundef %58, ptr noundef %59, i32 noundef %60)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.then77, label %for.inc79

if.then77:                                        ; preds = %if.end74
  store i32 0, ptr %retval, align 4
  br label %return

for.inc79:                                        ; preds = %if.end74
  %61 = load ptr, ptr %b_element45, align 8
  %62 = load ptr, ptr %61, align 8
  br label %for.cond67, !llvm.loop !24

for.end81:                                        ; preds = %for.cond67
  store i32 1, ptr %retval, align 4
  br label %return

sw.default82:                                     ; preds = %if.end10
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.default82, %for.end81, %if.then77, %if.then73, %if.then57, %if.then53, %if.end42, %if.then41, %if.then37, %if.end30, %if.then29, %if.then23, %if.end17, %if.then16, %sw.bb13, %if.then9, %sw.default, %if.then
  %63 = load i32, ptr %retval, align 4
  ret i32 %63
}

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

declare i32 @strcmp(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define ptr @cJSON_malloc(i64 noundef %size) #0 {
entry:
  %0 = load ptr, ptr @global_hooks, align 8
  %call = call ptr %0(i64 noundef %size) #11
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define void @reset(ptr noundef %item) #0 {
entry:
  %item.addr = alloca ptr, align 8
  store ptr %item, ptr %item.addr, align 8
  %cmp.not = icmp eq ptr %item, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load ptr, ptr %item.addr, align 8
  %child = getelementptr inbounds %struct.cJSON, ptr %0, i64 0, i32 2
  %1 = load ptr, ptr %child, align 8
  %cmp1.not = icmp eq ptr %1, null
  br i1 %cmp1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %2 = load ptr, ptr %item.addr, align 8
  %child2 = getelementptr inbounds %struct.cJSON, ptr %2, i64 0, i32 2
  %3 = load ptr, ptr %child2, align 8
  call void @cJSON_Delete(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %4 = load ptr, ptr %item.addr, align 8
  %valuestring = getelementptr inbounds %struct.cJSON, ptr %4, i64 0, i32 4
  %5 = load ptr, ptr %valuestring, align 8
  %cmp3.not = icmp eq ptr %5, null
  br i1 %cmp3.not, label %if.end7, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %if.end
  %6 = load ptr, ptr %item.addr, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %6, i64 0, i32 3
  %7 = load i32, ptr %type, align 8
  %and = and i32 %7, 256
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then5, label %if.end7

if.then5:                                         ; preds = %land.lhs.true4
  %8 = load ptr, ptr getelementptr inbounds (%struct.internal_hooks, ptr @global_hooks, i64 0, i32 1), align 8
  %9 = load ptr, ptr %item.addr, align 8
  %valuestring6 = getelementptr inbounds %struct.cJSON, ptr %9, i64 0, i32 4
  %10 = load ptr, ptr %valuestring6, align 8
  call void %8(ptr noundef %10) #11
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %land.lhs.true4, %if.end
  %11 = load ptr, ptr %item.addr, align 8
  %string = getelementptr inbounds %struct.cJSON, ptr %11, i64 0, i32 7
  %12 = load ptr, ptr %string, align 8
  %cmp8.not = icmp eq ptr %12, null
  br i1 %cmp8.not, label %if.end15, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %if.end7
  %13 = load ptr, ptr %item.addr, align 8
  %type10 = getelementptr inbounds %struct.cJSON, ptr %13, i64 0, i32 3
  %14 = load i32, ptr %type10, align 8
  %and11 = and i32 %14, 512
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.then13, label %if.end15

if.then13:                                        ; preds = %land.lhs.true9
  %15 = load ptr, ptr getelementptr inbounds (%struct.internal_hooks, ptr @global_hooks, i64 0, i32 1), align 8
  %16 = load ptr, ptr %item.addr, align 8
  %string14 = getelementptr inbounds %struct.cJSON, ptr %16, i64 0, i32 7
  %17 = load ptr, ptr %string14, align 8
  call void %15(ptr noundef %17) #11
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %land.lhs.true9, %if.end7
  %18 = load ptr, ptr %item.addr, align 8
  %19 = call i64 @llvm.objectsize.i64.p0(ptr %18, i1 false, i1 true, i1 false)
  %call = call ptr @__memset_chk(ptr noundef %18, i32 noundef 0, i64 noundef 64, i64 noundef %19) #11
  ret void
}

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #4

; Function Attrs: nounwind ssp uwtable
define ptr @read_file(ptr noundef %filename) #0 {
entry:
  %file = alloca ptr, align 8
  %length = alloca i64, align 8
  %content = alloca ptr, align 8
  %read_chars = alloca i64, align 8
  store ptr null, ptr %file, align 8
  store i64 0, ptr %length, align 8
  store ptr null, ptr %content, align 8
  store i64 0, ptr %read_chars, align 8
  %call = call ptr @"\01_fopen"(ptr noundef %filename, ptr noundef nonnull @.str.1) #11
  store ptr %call, ptr %file, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %file, align 8
  %call1 = call i32 @fseek(ptr noundef %0, i64 noundef 0, i32 noundef 2) #11
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %1 = load ptr, ptr %file, align 8
  %call5 = call i64 @ftell(ptr noundef %1) #11
  store i64 %call5, ptr %length, align 8
  %cmp6 = icmp slt i64 %call5, 0
  br i1 %cmp6, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end4
  %2 = load ptr, ptr %file, align 8
  %call9 = call i32 @fseek(ptr noundef %2, i64 noundef 0, i32 noundef 0) #11
  %cmp10.not = icmp eq i32 %call9, 0
  br i1 %cmp10.not, label %if.end12, label %cleanup

if.end12:                                         ; preds = %if.end8
  %3 = load i64, ptr %length, align 8
  %add = add i64 %3, 1
  %call13 = call ptr @malloc(i64 noundef %add) #12
  store ptr %call13, ptr %content, align 8
  %cmp14 = icmp eq ptr %call13, null
  br i1 %cmp14, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.end12
  %4 = load ptr, ptr %content, align 8
  %5 = load i64, ptr %length, align 8
  %6 = load ptr, ptr %file, align 8
  %call17 = call i64 @fread(ptr noundef %4, i64 noundef 1, i64 noundef %5, ptr noundef %6) #11
  store i64 %call17, ptr %read_chars, align 8
  %cmp18.not = icmp eq i64 %call17, %5
  br i1 %cmp18.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end16
  %7 = load ptr, ptr %content, align 8
  call void @free(ptr noundef %7) #11
  store ptr null, ptr %content, align 8
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %8 = load ptr, ptr %content, align 8
  %9 = load i64, ptr %read_chars, align 8
  %arrayidx = getelementptr inbounds i8, ptr %8, i64 %9
  store i8 0, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end8, %if.end4, %if.end, %entry, %if.end20, %if.then19
  %10 = load ptr, ptr %file, align 8
  %cmp21.not = icmp eq ptr %10, null
  br i1 %cmp21.not, label %if.end24, label %if.then22

if.then22:                                        ; preds = %cleanup
  %11 = load ptr, ptr %file, align 8
  %call23 = call i32 @fclose(ptr noundef %11) #11
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %cleanup
  %12 = load ptr, ptr %content, align 8
  ret ptr %12
}

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

declare i32 @fseek(ptr noundef, i64 noundef, i32 noundef) #1

declare i64 @ftell(ptr noundef) #1

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

declare i32 @fclose(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
entry:
  call void @UnityBegin(ptr noundef nonnull @.str.2) #11
  call void @UnityDefaultTestRun(ptr noundef nonnull @print_number_should_print_zero, ptr noundef nonnull @.str.3, i32 noundef 117) #11
  call void @UnityDefaultTestRun(ptr noundef nonnull @print_number_should_print_negative_integers, ptr noundef nonnull @.str.4, i32 noundef 118) #11
  call void @UnityDefaultTestRun(ptr noundef nonnull @print_number_should_print_positive_integers, ptr noundef nonnull @.str.5, i32 noundef 119) #11
  call void @UnityDefaultTestRun(ptr noundef nonnull @print_number_should_print_positive_reals, ptr noundef nonnull @.str.6, i32 noundef 120) #11
  call void @UnityDefaultTestRun(ptr noundef nonnull @print_number_should_print_negative_reals, ptr noundef nonnull @.str.7, i32 noundef 121) #11
  call void @UnityDefaultTestRun(ptr noundef nonnull @print_number_should_print_non_number, ptr noundef nonnull @.str.8, i32 noundef 122) #11
  %call = call i32 @UnityEnd() #11
  ret i32 %call
}

declare void @UnityBegin(ptr noundef) #1

declare void @UnityDefaultTestRun(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @print_number_should_print_zero() #0 {
entry:
  call void @assert_print_number(ptr noundef nonnull @.str.19, double noundef 0.000000e+00)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @print_number_should_print_negative_integers() #0 {
entry:
  call void @assert_print_number(ptr noundef nonnull @.str.22, double noundef -1.000000e+00)
  call void @assert_print_number(ptr noundef nonnull @.str.23, double noundef -3.276800e+04)
  call void @assert_print_number(ptr noundef nonnull @.str.24, double noundef 0xC1E0000000000000)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @print_number_should_print_positive_integers() #0 {
entry:
  call void @assert_print_number(ptr noundef nonnull @.str.25, double noundef 1.000000e+00)
  call void @assert_print_number(ptr noundef nonnull @.str.26, double noundef 3.276700e+04)
  call void @assert_print_number(ptr noundef nonnull @.str.27, double noundef 0x41DFFFFFFFC00000)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @print_number_should_print_positive_reals() #0 {
entry:
  call void @assert_print_number(ptr noundef nonnull @.str.28, double noundef 1.230000e-01)
  call void @assert_print_number(ptr noundef nonnull @.str.29, double noundef 1.000000e-09)
  call void @assert_print_number(ptr noundef nonnull @.str.30, double noundef 1.000000e+12)
  call void @assert_print_number(ptr noundef nonnull @.str.31, double noundef 1.230000e+129)
  call void @assert_print_number(ptr noundef nonnull @.str.32, double noundef 1.230000e-126)
  call void @assert_print_number(ptr noundef nonnull @.str.33, double noundef 0x400921FB54442D18)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @print_number_should_print_negative_reals() #0 {
entry:
  call void @assert_print_number(ptr noundef nonnull @.str.34, double noundef -1.230000e-02)
  call void @assert_print_number(ptr noundef nonnull @.str.35, double noundef -1.000000e-09)
  call void @assert_print_number(ptr noundef nonnull @.str.36, double noundef -1.000000e+21)
  call void @assert_print_number(ptr noundef nonnull @.str.37, double noundef -1.230000e+129)
  call void @assert_print_number(ptr noundef nonnull @.str.38, double noundef -1.230000e-126)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @print_number_should_print_non_number() #0 {
entry:
  call void @UnityIgnore(ptr noundef null, i64 noundef 105) #11
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
  store ptr %buffer, ptr %buffer.addr, align 8
  %cmp = icmp eq ptr %buffer, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %buffer.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %cmp2 = icmp eq ptr %1, null
  br i1 %cmp2, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %buffer.addr, align 8
  %3 = load ptr, ptr %2, align 8
  %offset = getelementptr inbounds %struct.printbuffer, ptr %2, i64 0, i32 2
  %4 = load i64, ptr %offset, align 8
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %4
  %call = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %add.ptr) #11
  %offset4 = getelementptr inbounds %struct.printbuffer, ptr %2, i64 0, i32 2
  %5 = load i64, ptr %offset4, align 8
  %add = add i64 %5, %call
  store i64 %add, ptr %offset4, align 8
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @parse_string(ptr noundef %item, ptr noundef %input_buffer) #0 {
entry:
  %item.addr = alloca ptr, align 8
  %input_buffer.addr = alloca ptr, align 8
  %input_pointer = alloca ptr, align 8
  %input_end = alloca ptr, align 8
  %output_pointer = alloca ptr, align 8
  %output = alloca ptr, align 8
  %skipped_bytes = alloca i64, align 8
  %sequence_length = alloca i8, align 1
  store ptr %item, ptr %item.addr, align 8
  store ptr %input_buffer, ptr %input_buffer.addr, align 8
  %0 = load ptr, ptr %input_buffer, align 8
  %offset = getelementptr inbounds %struct.parse_buffer, ptr %input_buffer, i64 0, i32 2
  %1 = load i64, ptr %offset, align 8
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %1
  %add.ptr1 = getelementptr inbounds i8, ptr %add.ptr, i64 1
  store ptr %add.ptr1, ptr %input_pointer, align 8
  %2 = load ptr, ptr %input_buffer.addr, align 8
  %3 = load ptr, ptr %2, align 8
  %offset3 = getelementptr inbounds %struct.parse_buffer, ptr %2, i64 0, i32 2
  %4 = load i64, ptr %offset3, align 8
  %add.ptr4 = getelementptr inbounds i8, ptr %3, i64 %4
  %add.ptr5 = getelementptr inbounds i8, ptr %add.ptr4, i64 1
  store ptr %add.ptr5, ptr %input_end, align 8
  store ptr null, ptr %output_pointer, align 8
  store ptr null, ptr %output, align 8
  %5 = load ptr, ptr %input_buffer.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %offset7 = getelementptr inbounds %struct.parse_buffer, ptr %5, i64 0, i32 2
  %7 = load i64, ptr %offset7, align 8
  %add.ptr8 = getelementptr inbounds i8, ptr %6, i64 %7
  %8 = load i8, ptr %add.ptr8, align 1
  %cmp.not = icmp eq i8 %8, 34
  br i1 %cmp.not, label %if.end, label %fail

if.end:                                           ; preds = %entry
  store i64 0, ptr %skipped_bytes, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end31, %if.end
  %9 = load ptr, ptr %input_end, align 8
  %10 = load ptr, ptr %input_buffer.addr, align 8
  %11 = load ptr, ptr %10, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %9 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %11 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %length = getelementptr inbounds %struct.parse_buffer, ptr %10, i64 0, i32 1
  %12 = load i64, ptr %length, align 8
  %cmp11 = icmp ult i64 %sub.ptr.sub, %12
  br i1 %cmp11, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %while.cond
  %13 = load ptr, ptr %input_end, align 8
  %14 = load i8, ptr %13, align 1
  %cmp14 = icmp ne i8 %14, 34
  br i1 %cmp14, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %15 = load ptr, ptr %input_end, align 8
  %16 = load i8, ptr %15, align 1
  %cmp18 = icmp eq i8 %16, 92
  br i1 %cmp18, label %if.then20, label %if.end31

if.then20:                                        ; preds = %while.body
  %17 = load ptr, ptr %input_end, align 8
  %add.ptr21 = getelementptr inbounds i8, ptr %17, i64 1
  %18 = load ptr, ptr %input_buffer.addr, align 8
  %19 = load ptr, ptr %18, align 8
  %sub.ptr.lhs.cast23 = ptrtoint ptr %add.ptr21 to i64
  %sub.ptr.rhs.cast24 = ptrtoint ptr %19 to i64
  %sub.ptr.sub25 = sub i64 %sub.ptr.lhs.cast23, %sub.ptr.rhs.cast24
  %length26 = getelementptr inbounds %struct.parse_buffer, ptr %18, i64 0, i32 1
  %20 = load i64, ptr %length26, align 8
  %cmp27.not = icmp ult i64 %sub.ptr.sub25, %20
  br i1 %cmp27.not, label %if.end30, label %fail

if.end30:                                         ; preds = %if.then20
  %21 = load i64, ptr %skipped_bytes, align 8
  %inc = add i64 %21, 1
  store i64 %inc, ptr %skipped_bytes, align 8
  %22 = load ptr, ptr %input_end, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %22, i64 1
  store ptr %incdec.ptr, ptr %input_end, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %while.body
  %23 = load ptr, ptr %input_end, align 8
  %incdec.ptr32 = getelementptr inbounds i8, ptr %23, i64 1
  store ptr %incdec.ptr32, ptr %input_end, align 8
  br label %while.cond, !llvm.loop !25

while.end:                                        ; preds = %while.cond, %land.rhs
  %24 = load ptr, ptr %input_end, align 8
  %25 = load ptr, ptr %input_buffer.addr, align 8
  %26 = load ptr, ptr %25, align 8
  %sub.ptr.lhs.cast34 = ptrtoint ptr %24 to i64
  %sub.ptr.rhs.cast35 = ptrtoint ptr %26 to i64
  %sub.ptr.sub36 = sub i64 %sub.ptr.lhs.cast34, %sub.ptr.rhs.cast35
  %length37 = getelementptr inbounds %struct.parse_buffer, ptr %25, i64 0, i32 1
  %27 = load i64, ptr %length37, align 8
  %cmp38.not = icmp ult i64 %sub.ptr.sub36, %27
  br i1 %cmp38.not, label %lor.lhs.false, label %fail

lor.lhs.false:                                    ; preds = %while.end
  %28 = load ptr, ptr %input_end, align 8
  %29 = load i8, ptr %28, align 1
  %cmp41.not = icmp eq i8 %29, 34
  br i1 %cmp41.not, label %if.end44, label %fail

if.end44:                                         ; preds = %lor.lhs.false
  %30 = load ptr, ptr %input_end, align 8
  %31 = load ptr, ptr %input_buffer.addr, align 8
  %32 = load ptr, ptr %31, align 8
  %offset46 = getelementptr inbounds %struct.parse_buffer, ptr %31, i64 0, i32 2
  %33 = load i64, ptr %offset46, align 8
  %add.ptr47 = getelementptr inbounds i8, ptr %32, i64 %33
  %sub.ptr.lhs.cast48 = ptrtoint ptr %30 to i64
  %sub.ptr.rhs.cast49 = ptrtoint ptr %add.ptr47 to i64
  %34 = load i64, ptr %skipped_bytes, align 8
  %35 = add i64 %34, %sub.ptr.rhs.cast49
  %sub = sub i64 %sub.ptr.lhs.cast48, %35
  %36 = load ptr, ptr %input_buffer.addr, align 8
  %hooks = getelementptr inbounds %struct.parse_buffer, ptr %36, i64 0, i32 4
  %37 = load ptr, ptr %hooks, align 8
  %add = add i64 %sub, 1
  %call = call ptr %37(i64 noundef %add) #11
  store ptr %call, ptr %output, align 8
  %cmp51 = icmp eq ptr %call, null
  br i1 %cmp51, label %fail, label %if.end54

if.end54:                                         ; preds = %if.end44
  %38 = load ptr, ptr %output, align 8
  store ptr %38, ptr %output_pointer, align 8
  br label %while.cond55

while.cond55:                                     ; preds = %if.end95, %if.end54
  %39 = load ptr, ptr %input_pointer, align 8
  %40 = load ptr, ptr %input_end, align 8
  %cmp56 = icmp ult ptr %39, %40
  br i1 %cmp56, label %while.body58, label %while.end96

while.body58:                                     ; preds = %while.cond55
  %41 = load ptr, ptr %input_pointer, align 8
  %42 = load i8, ptr %41, align 1
  %cmp60.not = icmp eq i8 %42, 92
  br i1 %cmp60.not, label %if.else, label %if.then62

if.then62:                                        ; preds = %while.body58
  %43 = load ptr, ptr %input_pointer, align 8
  %incdec.ptr63 = getelementptr inbounds i8, ptr %43, i64 1
  store ptr %incdec.ptr63, ptr %input_pointer, align 8
  %44 = load i8, ptr %43, align 1
  %45 = load ptr, ptr %output_pointer, align 8
  %incdec.ptr64 = getelementptr inbounds i8, ptr %45, i64 1
  store ptr %incdec.ptr64, ptr %output_pointer, align 8
  store i8 %44, ptr %45, align 1
  br label %if.end95

if.else:                                          ; preds = %while.body58
  store i8 2, ptr %sequence_length, align 1
  %46 = load ptr, ptr %input_end, align 8
  %47 = load ptr, ptr %input_pointer, align 8
  %sub.ptr.lhs.cast65 = ptrtoint ptr %46 to i64
  %sub.ptr.rhs.cast66 = ptrtoint ptr %47 to i64
  %sub.ptr.sub67 = sub i64 %sub.ptr.lhs.cast65, %sub.ptr.rhs.cast66
  %cmp68 = icmp slt i64 %sub.ptr.sub67, 1
  br i1 %cmp68, label %fail, label %if.end71

if.end71:                                         ; preds = %if.else
  %48 = load ptr, ptr %input_pointer, align 8
  %arrayidx72 = getelementptr inbounds i8, ptr %48, i64 1
  %49 = load i8, ptr %arrayidx72, align 1
  switch i8 %49, label %fail [
    i8 98, label %sw.bb
    i8 102, label %sw.bb75
    i8 110, label %sw.bb77
    i8 114, label %sw.bb79
    i8 116, label %sw.bb81
    i8 34, label %sw.bb83
    i8 92, label %sw.bb83
    i8 47, label %sw.bb83
    i8 117, label %sw.bb86
  ]

sw.bb:                                            ; preds = %if.end71
  %50 = load ptr, ptr %output_pointer, align 8
  %incdec.ptr74 = getelementptr inbounds i8, ptr %50, i64 1
  store ptr %incdec.ptr74, ptr %output_pointer, align 8
  store i8 8, ptr %50, align 1
  br label %sw.epilog

sw.bb75:                                          ; preds = %if.end71
  %51 = load ptr, ptr %output_pointer, align 8
  %incdec.ptr76 = getelementptr inbounds i8, ptr %51, i64 1
  store ptr %incdec.ptr76, ptr %output_pointer, align 8
  store i8 12, ptr %51, align 1
  br label %sw.epilog

sw.bb77:                                          ; preds = %if.end71
  %52 = load ptr, ptr %output_pointer, align 8
  %incdec.ptr78 = getelementptr inbounds i8, ptr %52, i64 1
  store ptr %incdec.ptr78, ptr %output_pointer, align 8
  store i8 10, ptr %52, align 1
  br label %sw.epilog

sw.bb79:                                          ; preds = %if.end71
  %53 = load ptr, ptr %output_pointer, align 8
  %incdec.ptr80 = getelementptr inbounds i8, ptr %53, i64 1
  store ptr %incdec.ptr80, ptr %output_pointer, align 8
  store i8 13, ptr %53, align 1
  br label %sw.epilog

sw.bb81:                                          ; preds = %if.end71
  %54 = load ptr, ptr %output_pointer, align 8
  %incdec.ptr82 = getelementptr inbounds i8, ptr %54, i64 1
  store ptr %incdec.ptr82, ptr %output_pointer, align 8
  store i8 9, ptr %54, align 1
  br label %sw.epilog

sw.bb83:                                          ; preds = %if.end71, %if.end71, %if.end71
  %55 = load ptr, ptr %input_pointer, align 8
  %arrayidx84 = getelementptr inbounds i8, ptr %55, i64 1
  %56 = load i8, ptr %arrayidx84, align 1
  %57 = load ptr, ptr %output_pointer, align 8
  %incdec.ptr85 = getelementptr inbounds i8, ptr %57, i64 1
  store ptr %incdec.ptr85, ptr %output_pointer, align 8
  store i8 %56, ptr %57, align 1
  br label %sw.epilog

sw.bb86:                                          ; preds = %if.end71
  %58 = load ptr, ptr %input_pointer, align 8
  %59 = load ptr, ptr %input_end, align 8
  %call87 = call zeroext i8 @utf16_literal_to_utf8(ptr noundef %58, ptr noundef %59, ptr noundef nonnull %output_pointer)
  store i8 %call87, ptr %sequence_length, align 1
  %cmp89 = icmp eq i8 %call87, 0
  br i1 %cmp89, label %fail, label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb86, %sw.bb83, %sw.bb81, %sw.bb79, %sw.bb77, %sw.bb75, %sw.bb
  %60 = load i8, ptr %sequence_length, align 1
  %61 = load ptr, ptr %input_pointer, align 8
  %idx.ext = zext i8 %60 to i64
  %add.ptr94 = getelementptr inbounds i8, ptr %61, i64 %idx.ext
  store ptr %add.ptr94, ptr %input_pointer, align 8
  br label %if.end95

if.end95:                                         ; preds = %sw.epilog, %if.then62
  br label %while.cond55, !llvm.loop !26

while.end96:                                      ; preds = %while.cond55
  %62 = load ptr, ptr %output_pointer, align 8
  store i8 0, ptr %62, align 1
  %63 = load ptr, ptr %item.addr, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %63, i64 0, i32 3
  store i32 16, ptr %type, align 8
  %64 = load ptr, ptr %output, align 8
  %valuestring = getelementptr inbounds %struct.cJSON, ptr %63, i64 0, i32 4
  store ptr %64, ptr %valuestring, align 8
  %65 = load ptr, ptr %input_end, align 8
  %66 = load ptr, ptr %input_buffer.addr, align 8
  %67 = load ptr, ptr %66, align 8
  %sub.ptr.lhs.cast98 = ptrtoint ptr %65 to i64
  %sub.ptr.rhs.cast99 = ptrtoint ptr %67 to i64
  %sub.ptr.sub100 = sub i64 %sub.ptr.lhs.cast98, %sub.ptr.rhs.cast99
  %offset101 = getelementptr inbounds %struct.parse_buffer, ptr %66, i64 0, i32 2
  store i64 %sub.ptr.sub100, ptr %offset101, align 8
  %68 = load ptr, ptr %input_buffer.addr, align 8
  %offset102 = getelementptr inbounds %struct.parse_buffer, ptr %68, i64 0, i32 2
  %69 = load i64, ptr %offset102, align 8
  %inc103 = add i64 %69, 1
  store i64 %inc103, ptr %offset102, align 8
  br label %return

fail:                                             ; preds = %if.end71, %sw.bb86, %if.else, %if.end44, %while.end, %lor.lhs.false, %if.then20, %entry
  %70 = load ptr, ptr %output, align 8
  %cmp104.not = icmp eq ptr %70, null
  br i1 %cmp104.not, label %if.end108, label %if.then106

if.then106:                                       ; preds = %fail
  %71 = load ptr, ptr %input_buffer.addr, align 8
  %deallocate = getelementptr inbounds %struct.parse_buffer, ptr %71, i64 0, i32 4, i32 1
  %72 = load ptr, ptr %deallocate, align 8
  %73 = load ptr, ptr %output, align 8
  call void %72(ptr noundef %73) #11
  store ptr null, ptr %output, align 8
  br label %if.end108

if.end108:                                        ; preds = %if.then106, %fail
  %74 = load ptr, ptr %input_pointer, align 8
  %cmp109.not = icmp eq ptr %74, null
  br i1 %cmp109.not, label %return, label %if.then111

if.then111:                                       ; preds = %if.end108
  %75 = load ptr, ptr %input_pointer, align 8
  %76 = load ptr, ptr %input_buffer.addr, align 8
  %77 = load ptr, ptr %76, align 8
  %sub.ptr.lhs.cast113 = ptrtoint ptr %75 to i64
  %sub.ptr.rhs.cast114 = ptrtoint ptr %77 to i64
  %sub.ptr.sub115 = sub i64 %sub.ptr.lhs.cast113, %sub.ptr.rhs.cast114
  %offset116 = getelementptr inbounds %struct.parse_buffer, ptr %76, i64 0, i32 2
  store i64 %sub.ptr.sub115, ptr %offset116, align 8
  br label %return

return:                                           ; preds = %if.end108, %if.then111, %while.end96
  %storemerge = phi i32 [ 1, %while.end96 ], [ 0, %if.then111 ], [ 0, %if.end108 ]
  ret i32 %storemerge
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
  %2 = load ptr, ptr %1, align 8
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %if.then, label %for.cond

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

for.cond:                                         ; preds = %lor.lhs.false, %for.inc
  %storemerge = phi i64 [ %inc8, %for.inc ], [ 0, %lor.lhs.false ]
  store i64 %storemerge, ptr %i, align 8
  %3 = load ptr, ptr %input_buffer.addr, align 8
  %cmp2.not = icmp eq ptr %3, null
  br i1 %cmp2.not, label %loop_end, label %land.rhs

land.rhs:                                         ; preds = %for.cond
  %4 = load ptr, ptr %input_buffer.addr, align 8
  %offset = getelementptr inbounds %struct.parse_buffer, ptr %4, i64 0, i32 2
  %5 = load i64, ptr %offset, align 8
  %6 = load i64, ptr %i, align 8
  %add = add i64 %5, %6
  %length = getelementptr inbounds %struct.parse_buffer, ptr %4, i64 0, i32 1
  %7 = load i64, ptr %length, align 8
  %cmp3 = icmp ult i64 %add, %7
  br i1 %cmp3, label %for.body, label %loop_end

for.body:                                         ; preds = %land.rhs
  %8 = load ptr, ptr %input_buffer.addr, align 8
  %9 = load ptr, ptr %8, align 8
  %offset5 = getelementptr inbounds %struct.parse_buffer, ptr %8, i64 0, i32 2
  %10 = load i64, ptr %offset5, align 8
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %10
  %11 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds i8, ptr %add.ptr, i64 %11
  %12 = load i8, ptr %arrayidx, align 1
  switch i8 %12, label %loop_end [
    i8 48, label %sw.bb
    i8 49, label %sw.bb
    i8 50, label %sw.bb
    i8 51, label %sw.bb
    i8 52, label %sw.bb
    i8 53, label %sw.bb
    i8 54, label %sw.bb
    i8 55, label %sw.bb
    i8 56, label %sw.bb
    i8 57, label %sw.bb
    i8 43, label %sw.bb
    i8 45, label %sw.bb
    i8 101, label %sw.bb
    i8 69, label %sw.bb
    i8 46, label %sw.bb6
  ]

sw.bb:                                            ; preds = %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body
  %13 = load i64, ptr %number_string_length, align 8
  %inc = add i64 %13, 1
  store i64 %inc, ptr %number_string_length, align 8
  br label %for.inc

sw.bb6:                                           ; preds = %for.body
  %14 = load i64, ptr %number_string_length, align 8
  %inc7 = add i64 %14, 1
  store i64 %inc7, ptr %number_string_length, align 8
  store i32 1, ptr %has_decimal_point, align 4
  br label %for.inc

for.inc:                                          ; preds = %sw.bb, %sw.bb6
  %15 = load i64, ptr %i, align 8
  %inc8 = add i64 %15, 1
  br label %for.cond, !llvm.loop !27

loop_end:                                         ; preds = %land.rhs, %for.cond, %for.body
  %16 = load ptr, ptr %input_buffer.addr, align 8
  %hooks = getelementptr inbounds %struct.parse_buffer, ptr %16, i64 0, i32 4
  %17 = load ptr, ptr %hooks, align 8
  %18 = load i64, ptr %number_string_length, align 8
  %add9 = add i64 %18, 1
  %call10 = call ptr %17(i64 noundef %add9) #11
  store ptr %call10, ptr %number_c_string, align 8
  %cmp11 = icmp eq ptr %call10, null
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %loop_end
  store i32 0, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %loop_end
  %19 = load ptr, ptr %number_c_string, align 8
  %20 = load ptr, ptr %input_buffer.addr, align 8
  %21 = load ptr, ptr %20, align 8
  %offset16 = getelementptr inbounds %struct.parse_buffer, ptr %20, i64 0, i32 2
  %22 = load i64, ptr %offset16, align 8
  %add.ptr17 = getelementptr inbounds i8, ptr %21, i64 %22
  %23 = load i64, ptr %number_string_length, align 8
  %24 = load ptr, ptr %number_c_string, align 8
  %25 = call i64 @llvm.objectsize.i64.p0(ptr %24, i1 false, i1 true, i1 false)
  %call18 = call ptr @__memcpy_chk(ptr noundef %19, ptr noundef %add.ptr17, i64 noundef %23, i64 noundef %25) #11
  %arrayidx19 = getelementptr inbounds i8, ptr %24, i64 %23
  store i8 0, ptr %arrayidx19, align 1
  %26 = load i32, ptr %has_decimal_point, align 4
  %tobool.not = icmp eq i32 %26, 0
  br i1 %tobool.not, label %if.end35, label %for.cond21

for.cond21:                                       ; preds = %if.end14, %for.inc32
  %storemerge1 = phi i64 [ %inc33, %for.inc32 ], [ 0, %if.end14 ]
  store i64 %storemerge1, ptr %i, align 8
  %27 = load i64, ptr %number_string_length, align 8
  %cmp22 = icmp ult i64 %storemerge1, %27
  br i1 %cmp22, label %for.body24, label %if.end35

for.body24:                                       ; preds = %for.cond21
  %28 = load ptr, ptr %number_c_string, align 8
  %29 = load i64, ptr %i, align 8
  %arrayidx25 = getelementptr inbounds i8, ptr %28, i64 %29
  %30 = load i8, ptr %arrayidx25, align 1
  %cmp27 = icmp eq i8 %30, 46
  br i1 %cmp27, label %if.then29, label %for.inc32

if.then29:                                        ; preds = %for.body24
  %31 = load i8, ptr %decimal_point, align 1
  %32 = load ptr, ptr %number_c_string, align 8
  %33 = load i64, ptr %i, align 8
  %arrayidx30 = getelementptr inbounds i8, ptr %32, i64 %33
  store i8 %31, ptr %arrayidx30, align 1
  br label %for.inc32

for.inc32:                                        ; preds = %for.body24, %if.then29
  %34 = load i64, ptr %i, align 8
  %inc33 = add i64 %34, 1
  br label %for.cond21, !llvm.loop !28

if.end35:                                         ; preds = %for.cond21, %if.end14
  %35 = load ptr, ptr %number_c_string, align 8
  %call36 = call double @"\01_strtod"(ptr noundef %35, ptr noundef nonnull %after_end) #11
  store double %call36, ptr %number, align 8
  %36 = load ptr, ptr %after_end, align 8
  %cmp37 = icmp eq ptr %35, %36
  br i1 %cmp37, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.end35
  %37 = load ptr, ptr %input_buffer.addr, align 8
  %deallocate = getelementptr inbounds %struct.parse_buffer, ptr %37, i64 0, i32 4, i32 1
  %38 = load ptr, ptr %deallocate, align 8
  %39 = load ptr, ptr %number_c_string, align 8
  call void %38(ptr noundef %39) #11
  store i32 0, ptr %retval, align 4
  br label %return

if.end41:                                         ; preds = %if.end35
  %40 = load double, ptr %number, align 8
  %41 = load ptr, ptr %item.addr, align 8
  %valuedouble = getelementptr inbounds %struct.cJSON, ptr %41, i64 0, i32 6
  store double %40, ptr %valuedouble, align 8
  %cmp42 = fcmp ult double %40, 0x41DFFFFFFFC00000
  br i1 %cmp42, label %if.else, label %if.then44

if.then44:                                        ; preds = %if.end41
  %42 = load ptr, ptr %item.addr, align 8
  %valueint = getelementptr inbounds %struct.cJSON, ptr %42, i64 0, i32 5
  store i32 2147483647, ptr %valueint, align 8
  br label %if.end53

if.else:                                          ; preds = %if.end41
  %43 = load double, ptr %number, align 8
  %cmp45 = fcmp ugt double %43, 0xC1E0000000000000
  br i1 %cmp45, label %if.else49, label %if.then47

if.then47:                                        ; preds = %if.else
  %44 = load ptr, ptr %item.addr, align 8
  %valueint48 = getelementptr inbounds %struct.cJSON, ptr %44, i64 0, i32 5
  store i32 -2147483648, ptr %valueint48, align 8
  br label %if.end53

if.else49:                                        ; preds = %if.else
  %45 = load double, ptr %number, align 8
  %conv50 = fptosi double %45 to i32
  %46 = load ptr, ptr %item.addr, align 8
  %valueint51 = getelementptr inbounds %struct.cJSON, ptr %46, i64 0, i32 5
  store i32 %conv50, ptr %valueint51, align 8
  br label %if.end53

if.end53:                                         ; preds = %if.then47, %if.else49, %if.then44
  %47 = load ptr, ptr %item.addr, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %47, i64 0, i32 3
  store i32 8, ptr %type, align 8
  %48 = load ptr, ptr %after_end, align 8
  %49 = load ptr, ptr %number_c_string, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %48 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %49 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %50 = load ptr, ptr %input_buffer.addr, align 8
  %offset54 = getelementptr inbounds %struct.parse_buffer, ptr %50, i64 0, i32 2
  %51 = load i64, ptr %offset54, align 8
  %add55 = add i64 %51, %sub.ptr.sub
  store i64 %add55, ptr %offset54, align 8
  %deallocate57 = getelementptr inbounds %struct.parse_buffer, ptr %50, i64 0, i32 4, i32 1
  %52 = load ptr, ptr %deallocate57, align 8
  %53 = load ptr, ptr %number_c_string, align 8
  call void %52(ptr noundef %53) #11
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end53, %if.then39, %if.then13, %if.then
  %54 = load i32, ptr %retval, align 4
  ret i32 %54
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
  %depth = getelementptr inbounds %struct.parse_buffer, ptr %input_buffer, i64 0, i32 3
  %0 = load i64, ptr %depth, align 8
  %cmp = icmp ugt i64 %0, 999
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %input_buffer.addr, align 8
  %depth1 = getelementptr inbounds %struct.parse_buffer, ptr %1, i64 0, i32 3
  %2 = load i64, ptr %depth1, align 8
  %inc = add i64 %2, 1
  store i64 %inc, ptr %depth1, align 8
  %3 = load ptr, ptr %1, align 8
  %offset = getelementptr inbounds %struct.parse_buffer, ptr %1, i64 0, i32 2
  %4 = load i64, ptr %offset, align 8
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %4
  %5 = load i8, ptr %add.ptr, align 1
  %cmp2.not = icmp eq i8 %5, 91
  br i1 %cmp2.not, label %if.end5, label %fail

if.end5:                                          ; preds = %if.end
  %6 = load ptr, ptr %input_buffer.addr, align 8
  %offset6 = getelementptr inbounds %struct.parse_buffer, ptr %6, i64 0, i32 2
  %7 = load i64, ptr %offset6, align 8
  %inc7 = add i64 %7, 1
  store i64 %inc7, ptr %offset6, align 8
  %call = call ptr @buffer_skip_whitespace(ptr noundef %6)
  %cmp8.not = icmp eq ptr %6, null
  br i1 %cmp8.not, label %if.end22, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end5
  %8 = load ptr, ptr %input_buffer.addr, align 8
  %offset10 = getelementptr inbounds %struct.parse_buffer, ptr %8, i64 0, i32 2
  %9 = load i64, ptr %offset10, align 8
  %length = getelementptr inbounds %struct.parse_buffer, ptr %8, i64 0, i32 1
  %10 = load i64, ptr %length, align 8
  %cmp11 = icmp ult i64 %9, %10
  br i1 %cmp11, label %land.lhs.true13, label %if.end22

land.lhs.true13:                                  ; preds = %land.lhs.true
  %11 = load ptr, ptr %input_buffer.addr, align 8
  %12 = load ptr, ptr %11, align 8
  %offset15 = getelementptr inbounds %struct.parse_buffer, ptr %11, i64 0, i32 2
  %13 = load i64, ptr %offset15, align 8
  %add.ptr16 = getelementptr inbounds i8, ptr %12, i64 %13
  %14 = load i8, ptr %add.ptr16, align 1
  %cmp19 = icmp eq i8 %14, 93
  br i1 %cmp19, label %success, label %if.end22

if.end22:                                         ; preds = %land.lhs.true13, %land.lhs.true, %if.end5
  %15 = load ptr, ptr %input_buffer.addr, align 8
  %cmp23.not = icmp eq ptr %15, null
  br i1 %cmp23.not, label %if.then31, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %if.end22
  %16 = load ptr, ptr %input_buffer.addr, align 8
  %offset26 = getelementptr inbounds %struct.parse_buffer, ptr %16, i64 0, i32 2
  %17 = load i64, ptr %offset26, align 8
  %length28 = getelementptr inbounds %struct.parse_buffer, ptr %16, i64 0, i32 1
  %18 = load i64, ptr %length28, align 8
  %cmp29 = icmp ult i64 %17, %18
  br i1 %cmp29, label %if.end33, label %if.then31

if.then31:                                        ; preds = %land.lhs.true25, %if.end22
  %19 = load ptr, ptr %input_buffer.addr, align 8
  %offset32 = getelementptr inbounds %struct.parse_buffer, ptr %19, i64 0, i32 2
  %20 = load i64, ptr %offset32, align 8
  %dec = add i64 %20, -1
  store i64 %dec, ptr %offset32, align 8
  br label %fail

if.end33:                                         ; preds = %land.lhs.true25
  %21 = load ptr, ptr %input_buffer.addr, align 8
  %offset34 = getelementptr inbounds %struct.parse_buffer, ptr %21, i64 0, i32 2
  %22 = load i64, ptr %offset34, align 8
  %dec35 = add i64 %22, -1
  store i64 %dec35, ptr %offset34, align 8
  br label %do.body

do.body:                                          ; preds = %land.rhs, %if.end33
  %23 = load ptr, ptr %input_buffer.addr, align 8
  %hooks = getelementptr inbounds %struct.parse_buffer, ptr %23, i64 0, i32 4
  %call36 = call ptr @cJSON_New_Item(ptr noundef nonnull %hooks)
  store ptr %call36, ptr %new_item, align 8
  %cmp37 = icmp eq ptr %call36, null
  br i1 %cmp37, label %fail, label %if.end40

if.end40:                                         ; preds = %do.body
  %24 = load ptr, ptr %head, align 8
  %cmp41 = icmp eq ptr %24, null
  br i1 %cmp41, label %if.then43, label %if.else

if.then43:                                        ; preds = %if.end40
  %25 = load ptr, ptr %new_item, align 8
  store ptr %25, ptr %head, align 8
  br label %if.end44

if.else:                                          ; preds = %if.end40
  %26 = load ptr, ptr %new_item, align 8
  %27 = load ptr, ptr %current_item, align 8
  store ptr %26, ptr %27, align 8
  %prev = getelementptr inbounds %struct.cJSON, ptr %26, i64 0, i32 1
  store ptr %27, ptr %prev, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.else, %if.then43
  %storemerge = phi ptr [ %26, %if.else ], [ %25, %if.then43 ]
  store ptr %storemerge, ptr %current_item, align 8
  %28 = load ptr, ptr %input_buffer.addr, align 8
  %offset45 = getelementptr inbounds %struct.parse_buffer, ptr %28, i64 0, i32 2
  %29 = load i64, ptr %offset45, align 8
  %inc46 = add i64 %29, 1
  store i64 %inc46, ptr %offset45, align 8
  %call47 = call ptr @buffer_skip_whitespace(ptr noundef %28)
  %30 = load ptr, ptr %current_item, align 8
  %31 = load ptr, ptr %input_buffer.addr, align 8
  %call48 = call i32 @parse_value(ptr noundef %30, ptr noundef %31)
  %tobool.not = icmp eq i32 %call48, 0
  br i1 %tobool.not, label %fail, label %if.end50

if.end50:                                         ; preds = %if.end44
  %32 = load ptr, ptr %input_buffer.addr, align 8
  %call51 = call ptr @buffer_skip_whitespace(ptr noundef %32)
  %33 = load ptr, ptr %input_buffer.addr, align 8
  %cmp52.not = icmp eq ptr %33, null
  br i1 %cmp52.not, label %do.end, label %land.lhs.true54

land.lhs.true54:                                  ; preds = %if.end50
  %34 = load ptr, ptr %input_buffer.addr, align 8
  %offset55 = getelementptr inbounds %struct.parse_buffer, ptr %34, i64 0, i32 2
  %35 = load i64, ptr %offset55, align 8
  %length57 = getelementptr inbounds %struct.parse_buffer, ptr %34, i64 0, i32 1
  %36 = load i64, ptr %length57, align 8
  %cmp58 = icmp ult i64 %35, %36
  br i1 %cmp58, label %land.rhs, label %do.end

land.rhs:                                         ; preds = %land.lhs.true54
  %37 = load ptr, ptr %input_buffer.addr, align 8
  %38 = load ptr, ptr %37, align 8
  %offset61 = getelementptr inbounds %struct.parse_buffer, ptr %37, i64 0, i32 2
  %39 = load i64, ptr %offset61, align 8
  %add.ptr62 = getelementptr inbounds i8, ptr %38, i64 %39
  %40 = load i8, ptr %add.ptr62, align 1
  %cmp65 = icmp eq i8 %40, 44
  br i1 %cmp65, label %do.body, label %do.end, !llvm.loop !29

do.end:                                           ; preds = %land.lhs.true54, %if.end50, %land.rhs
  %41 = load ptr, ptr %input_buffer.addr, align 8
  %cmp67.not = icmp eq ptr %41, null
  br i1 %cmp67.not, label %fail, label %land.lhs.true69

land.lhs.true69:                                  ; preds = %do.end
  %42 = load ptr, ptr %input_buffer.addr, align 8
  %offset70 = getelementptr inbounds %struct.parse_buffer, ptr %42, i64 0, i32 2
  %43 = load i64, ptr %offset70, align 8
  %length72 = getelementptr inbounds %struct.parse_buffer, ptr %42, i64 0, i32 1
  %44 = load i64, ptr %length72, align 8
  %cmp73 = icmp ult i64 %43, %44
  br i1 %cmp73, label %lor.lhs.false, label %fail

lor.lhs.false:                                    ; preds = %land.lhs.true69
  %45 = load ptr, ptr %input_buffer.addr, align 8
  %46 = load ptr, ptr %45, align 8
  %offset76 = getelementptr inbounds %struct.parse_buffer, ptr %45, i64 0, i32 2
  %47 = load i64, ptr %offset76, align 8
  %add.ptr77 = getelementptr inbounds i8, ptr %46, i64 %47
  %48 = load i8, ptr %add.ptr77, align 1
  %cmp80.not = icmp eq i8 %48, 93
  br i1 %cmp80.not, label %success, label %fail

success:                                          ; preds = %lor.lhs.false, %land.lhs.true13
  %49 = load ptr, ptr %input_buffer.addr, align 8
  %depth84 = getelementptr inbounds %struct.parse_buffer, ptr %49, i64 0, i32 3
  %50 = load i64, ptr %depth84, align 8
  %dec85 = add i64 %50, -1
  store i64 %dec85, ptr %depth84, align 8
  %51 = load ptr, ptr %head, align 8
  %cmp86.not = icmp eq ptr %51, null
  br i1 %cmp86.not, label %if.end90, label %if.then88

if.then88:                                        ; preds = %success
  %52 = load ptr, ptr %current_item, align 8
  %53 = load ptr, ptr %head, align 8
  %prev89 = getelementptr inbounds %struct.cJSON, ptr %53, i64 0, i32 1
  store ptr %52, ptr %prev89, align 8
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %success
  %54 = load ptr, ptr %item.addr, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %54, i64 0, i32 3
  store i32 32, ptr %type, align 8
  %55 = load ptr, ptr %head, align 8
  %child = getelementptr inbounds %struct.cJSON, ptr %54, i64 0, i32 2
  store ptr %55, ptr %child, align 8
  %56 = load ptr, ptr %input_buffer.addr, align 8
  %offset91 = getelementptr inbounds %struct.parse_buffer, ptr %56, i64 0, i32 2
  %57 = load i64, ptr %offset91, align 8
  %inc92 = add i64 %57, 1
  store i64 %inc92, ptr %offset91, align 8
  store i32 1, ptr %retval, align 4
  br label %return

fail:                                             ; preds = %do.end, %land.lhs.true69, %lor.lhs.false, %if.end44, %do.body, %if.end, %if.then31
  %58 = load ptr, ptr %head, align 8
  %cmp93.not = icmp eq ptr %58, null
  br i1 %cmp93.not, label %if.end96, label %if.then95

if.then95:                                        ; preds = %fail
  %59 = load ptr, ptr %head, align 8
  call void @cJSON_Delete(ptr noundef %59)
  br label %if.end96

if.end96:                                         ; preds = %if.then95, %fail
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end96, %if.end90, %if.then
  %60 = load i32, ptr %retval, align 4
  ret i32 %60
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
  %depth = getelementptr inbounds %struct.parse_buffer, ptr %input_buffer, i64 0, i32 3
  %0 = load i64, ptr %depth, align 8
  %cmp = icmp ugt i64 %0, 999
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %input_buffer.addr, align 8
  %depth1 = getelementptr inbounds %struct.parse_buffer, ptr %1, i64 0, i32 3
  %2 = load i64, ptr %depth1, align 8
  %inc = add i64 %2, 1
  store i64 %inc, ptr %depth1, align 8
  %cmp2.not = icmp eq ptr %1, null
  br i1 %cmp2.not, label %fail, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %3 = load ptr, ptr %input_buffer.addr, align 8
  %offset = getelementptr inbounds %struct.parse_buffer, ptr %3, i64 0, i32 2
  %4 = load i64, ptr %offset, align 8
  %length = getelementptr inbounds %struct.parse_buffer, ptr %3, i64 0, i32 1
  %5 = load i64, ptr %length, align 8
  %cmp3 = icmp ult i64 %4, %5
  br i1 %cmp3, label %lor.lhs.false, label %fail

lor.lhs.false:                                    ; preds = %land.lhs.true
  %6 = load ptr, ptr %input_buffer.addr, align 8
  %7 = load ptr, ptr %6, align 8
  %offset4 = getelementptr inbounds %struct.parse_buffer, ptr %6, i64 0, i32 2
  %8 = load i64, ptr %offset4, align 8
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 %8
  %9 = load i8, ptr %add.ptr, align 1
  %cmp5.not = icmp eq i8 %9, 123
  br i1 %cmp5.not, label %if.end8, label %fail

if.end8:                                          ; preds = %lor.lhs.false
  %10 = load ptr, ptr %input_buffer.addr, align 8
  %offset9 = getelementptr inbounds %struct.parse_buffer, ptr %10, i64 0, i32 2
  %11 = load i64, ptr %offset9, align 8
  %inc10 = add i64 %11, 1
  store i64 %inc10, ptr %offset9, align 8
  %call = call ptr @buffer_skip_whitespace(ptr noundef %10)
  %cmp11.not = icmp eq ptr %10, null
  br i1 %cmp11.not, label %if.end28, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %if.end8
  %12 = load ptr, ptr %input_buffer.addr, align 8
  %offset14 = getelementptr inbounds %struct.parse_buffer, ptr %12, i64 0, i32 2
  %13 = load i64, ptr %offset14, align 8
  %length16 = getelementptr inbounds %struct.parse_buffer, ptr %12, i64 0, i32 1
  %14 = load i64, ptr %length16, align 8
  %cmp17 = icmp ult i64 %13, %14
  br i1 %cmp17, label %land.lhs.true19, label %if.end28

land.lhs.true19:                                  ; preds = %land.lhs.true13
  %15 = load ptr, ptr %input_buffer.addr, align 8
  %16 = load ptr, ptr %15, align 8
  %offset21 = getelementptr inbounds %struct.parse_buffer, ptr %15, i64 0, i32 2
  %17 = load i64, ptr %offset21, align 8
  %add.ptr22 = getelementptr inbounds i8, ptr %16, i64 %17
  %18 = load i8, ptr %add.ptr22, align 1
  %cmp25 = icmp eq i8 %18, 125
  br i1 %cmp25, label %success, label %if.end28

if.end28:                                         ; preds = %land.lhs.true19, %land.lhs.true13, %if.end8
  %19 = load ptr, ptr %input_buffer.addr, align 8
  %cmp29.not = icmp eq ptr %19, null
  br i1 %cmp29.not, label %if.then37, label %land.lhs.true31

land.lhs.true31:                                  ; preds = %if.end28
  %20 = load ptr, ptr %input_buffer.addr, align 8
  %offset32 = getelementptr inbounds %struct.parse_buffer, ptr %20, i64 0, i32 2
  %21 = load i64, ptr %offset32, align 8
  %length34 = getelementptr inbounds %struct.parse_buffer, ptr %20, i64 0, i32 1
  %22 = load i64, ptr %length34, align 8
  %cmp35 = icmp ult i64 %21, %22
  br i1 %cmp35, label %if.end39, label %if.then37

if.then37:                                        ; preds = %land.lhs.true31, %if.end28
  %23 = load ptr, ptr %input_buffer.addr, align 8
  %offset38 = getelementptr inbounds %struct.parse_buffer, ptr %23, i64 0, i32 2
  %24 = load i64, ptr %offset38, align 8
  %dec = add i64 %24, -1
  store i64 %dec, ptr %offset38, align 8
  br label %fail

if.end39:                                         ; preds = %land.lhs.true31
  %25 = load ptr, ptr %input_buffer.addr, align 8
  %offset40 = getelementptr inbounds %struct.parse_buffer, ptr %25, i64 0, i32 2
  %26 = load i64, ptr %offset40, align 8
  %dec41 = add i64 %26, -1
  store i64 %dec41, ptr %offset40, align 8
  br label %do.body

do.body:                                          ; preds = %land.rhs, %if.end39
  %27 = load ptr, ptr %input_buffer.addr, align 8
  %hooks = getelementptr inbounds %struct.parse_buffer, ptr %27, i64 0, i32 4
  %call42 = call ptr @cJSON_New_Item(ptr noundef nonnull %hooks)
  store ptr %call42, ptr %new_item, align 8
  %cmp43 = icmp eq ptr %call42, null
  br i1 %cmp43, label %fail, label %if.end46

if.end46:                                         ; preds = %do.body
  %28 = load ptr, ptr %head, align 8
  %cmp47 = icmp eq ptr %28, null
  br i1 %cmp47, label %if.then49, label %if.else

if.then49:                                        ; preds = %if.end46
  %29 = load ptr, ptr %new_item, align 8
  store ptr %29, ptr %head, align 8
  br label %if.end50

if.else:                                          ; preds = %if.end46
  %30 = load ptr, ptr %new_item, align 8
  %31 = load ptr, ptr %current_item, align 8
  store ptr %30, ptr %31, align 8
  %prev = getelementptr inbounds %struct.cJSON, ptr %30, i64 0, i32 1
  store ptr %31, ptr %prev, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.else, %if.then49
  %storemerge = phi ptr [ %30, %if.else ], [ %29, %if.then49 ]
  store ptr %storemerge, ptr %current_item, align 8
  %32 = load ptr, ptr %input_buffer.addr, align 8
  %cmp51.not = icmp eq ptr %32, null
  br i1 %cmp51.not, label %fail, label %land.lhs.true53

land.lhs.true53:                                  ; preds = %if.end50
  %33 = load ptr, ptr %input_buffer.addr, align 8
  %offset54 = getelementptr inbounds %struct.parse_buffer, ptr %33, i64 0, i32 2
  %34 = load i64, ptr %offset54, align 8
  %add55 = add i64 %34, 1
  %length56 = getelementptr inbounds %struct.parse_buffer, ptr %33, i64 0, i32 1
  %35 = load i64, ptr %length56, align 8
  %cmp57 = icmp ult i64 %add55, %35
  br i1 %cmp57, label %if.end60, label %fail

if.end60:                                         ; preds = %land.lhs.true53
  %36 = load ptr, ptr %input_buffer.addr, align 8
  %offset61 = getelementptr inbounds %struct.parse_buffer, ptr %36, i64 0, i32 2
  %37 = load i64, ptr %offset61, align 8
  %inc62 = add i64 %37, 1
  store i64 %inc62, ptr %offset61, align 8
  %call63 = call ptr @buffer_skip_whitespace(ptr noundef %36)
  %38 = load ptr, ptr %current_item, align 8
  %39 = load ptr, ptr %input_buffer.addr, align 8
  %call64 = call i32 @parse_string(ptr noundef %38, ptr noundef %39)
  %tobool.not = icmp eq i32 %call64, 0
  br i1 %tobool.not, label %fail, label %if.end66

if.end66:                                         ; preds = %if.end60
  %40 = load ptr, ptr %input_buffer.addr, align 8
  %call67 = call ptr @buffer_skip_whitespace(ptr noundef %40)
  %41 = load ptr, ptr %current_item, align 8
  %valuestring = getelementptr inbounds %struct.cJSON, ptr %41, i64 0, i32 4
  %42 = load ptr, ptr %valuestring, align 8
  %string = getelementptr inbounds %struct.cJSON, ptr %41, i64 0, i32 7
  store ptr %42, ptr %string, align 8
  %valuestring68 = getelementptr inbounds %struct.cJSON, ptr %41, i64 0, i32 4
  store ptr null, ptr %valuestring68, align 8
  %43 = load ptr, ptr %input_buffer.addr, align 8
  %cmp69.not = icmp eq ptr %43, null
  br i1 %cmp69.not, label %fail, label %land.lhs.true71

land.lhs.true71:                                  ; preds = %if.end66
  %44 = load ptr, ptr %input_buffer.addr, align 8
  %offset72 = getelementptr inbounds %struct.parse_buffer, ptr %44, i64 0, i32 2
  %45 = load i64, ptr %offset72, align 8
  %length74 = getelementptr inbounds %struct.parse_buffer, ptr %44, i64 0, i32 1
  %46 = load i64, ptr %length74, align 8
  %cmp75 = icmp ult i64 %45, %46
  br i1 %cmp75, label %lor.lhs.false77, label %fail

lor.lhs.false77:                                  ; preds = %land.lhs.true71
  %47 = load ptr, ptr %input_buffer.addr, align 8
  %48 = load ptr, ptr %47, align 8
  %offset79 = getelementptr inbounds %struct.parse_buffer, ptr %47, i64 0, i32 2
  %49 = load i64, ptr %offset79, align 8
  %add.ptr80 = getelementptr inbounds i8, ptr %48, i64 %49
  %50 = load i8, ptr %add.ptr80, align 1
  %cmp83.not = icmp eq i8 %50, 58
  br i1 %cmp83.not, label %if.end86, label %fail

if.end86:                                         ; preds = %lor.lhs.false77
  %51 = load ptr, ptr %input_buffer.addr, align 8
  %offset87 = getelementptr inbounds %struct.parse_buffer, ptr %51, i64 0, i32 2
  %52 = load i64, ptr %offset87, align 8
  %inc88 = add i64 %52, 1
  store i64 %inc88, ptr %offset87, align 8
  %call89 = call ptr @buffer_skip_whitespace(ptr noundef %51)
  %53 = load ptr, ptr %current_item, align 8
  %54 = load ptr, ptr %input_buffer.addr, align 8
  %call90 = call i32 @parse_value(ptr noundef %53, ptr noundef %54)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %fail, label %if.end93

if.end93:                                         ; preds = %if.end86
  %55 = load ptr, ptr %input_buffer.addr, align 8
  %call94 = call ptr @buffer_skip_whitespace(ptr noundef %55)
  %56 = load ptr, ptr %input_buffer.addr, align 8
  %cmp95.not = icmp eq ptr %56, null
  br i1 %cmp95.not, label %do.end, label %land.lhs.true97

land.lhs.true97:                                  ; preds = %if.end93
  %57 = load ptr, ptr %input_buffer.addr, align 8
  %offset98 = getelementptr inbounds %struct.parse_buffer, ptr %57, i64 0, i32 2
  %58 = load i64, ptr %offset98, align 8
  %length100 = getelementptr inbounds %struct.parse_buffer, ptr %57, i64 0, i32 1
  %59 = load i64, ptr %length100, align 8
  %cmp101 = icmp ult i64 %58, %59
  br i1 %cmp101, label %land.rhs, label %do.end

land.rhs:                                         ; preds = %land.lhs.true97
  %60 = load ptr, ptr %input_buffer.addr, align 8
  %61 = load ptr, ptr %60, align 8
  %offset104 = getelementptr inbounds %struct.parse_buffer, ptr %60, i64 0, i32 2
  %62 = load i64, ptr %offset104, align 8
  %add.ptr105 = getelementptr inbounds i8, ptr %61, i64 %62
  %63 = load i8, ptr %add.ptr105, align 1
  %cmp108 = icmp eq i8 %63, 44
  br i1 %cmp108, label %do.body, label %do.end, !llvm.loop !30

do.end:                                           ; preds = %land.lhs.true97, %if.end93, %land.rhs
  %64 = load ptr, ptr %input_buffer.addr, align 8
  %cmp110.not = icmp eq ptr %64, null
  br i1 %cmp110.not, label %fail, label %land.lhs.true112

land.lhs.true112:                                 ; preds = %do.end
  %65 = load ptr, ptr %input_buffer.addr, align 8
  %offset113 = getelementptr inbounds %struct.parse_buffer, ptr %65, i64 0, i32 2
  %66 = load i64, ptr %offset113, align 8
  %length115 = getelementptr inbounds %struct.parse_buffer, ptr %65, i64 0, i32 1
  %67 = load i64, ptr %length115, align 8
  %cmp116 = icmp ult i64 %66, %67
  br i1 %cmp116, label %lor.lhs.false118, label %fail

lor.lhs.false118:                                 ; preds = %land.lhs.true112
  %68 = load ptr, ptr %input_buffer.addr, align 8
  %69 = load ptr, ptr %68, align 8
  %offset120 = getelementptr inbounds %struct.parse_buffer, ptr %68, i64 0, i32 2
  %70 = load i64, ptr %offset120, align 8
  %add.ptr121 = getelementptr inbounds i8, ptr %69, i64 %70
  %71 = load i8, ptr %add.ptr121, align 1
  %cmp124.not = icmp eq i8 %71, 125
  br i1 %cmp124.not, label %success, label %fail

success:                                          ; preds = %lor.lhs.false118, %land.lhs.true19
  %72 = load ptr, ptr %input_buffer.addr, align 8
  %depth128 = getelementptr inbounds %struct.parse_buffer, ptr %72, i64 0, i32 3
  %73 = load i64, ptr %depth128, align 8
  %dec129 = add i64 %73, -1
  store i64 %dec129, ptr %depth128, align 8
  %74 = load ptr, ptr %head, align 8
  %cmp130.not = icmp eq ptr %74, null
  br i1 %cmp130.not, label %if.end134, label %if.then132

if.then132:                                       ; preds = %success
  %75 = load ptr, ptr %current_item, align 8
  %76 = load ptr, ptr %head, align 8
  %prev133 = getelementptr inbounds %struct.cJSON, ptr %76, i64 0, i32 1
  store ptr %75, ptr %prev133, align 8
  br label %if.end134

if.end134:                                        ; preds = %if.then132, %success
  %77 = load ptr, ptr %item.addr, align 8
  %type = getelementptr inbounds %struct.cJSON, ptr %77, i64 0, i32 3
  store i32 64, ptr %type, align 8
  %78 = load ptr, ptr %head, align 8
  %child = getelementptr inbounds %struct.cJSON, ptr %77, i64 0, i32 2
  store ptr %78, ptr %child, align 8
  %79 = load ptr, ptr %input_buffer.addr, align 8
  %offset135 = getelementptr inbounds %struct.parse_buffer, ptr %79, i64 0, i32 2
  %80 = load i64, ptr %offset135, align 8
  %inc136 = add i64 %80, 1
  store i64 %inc136, ptr %offset135, align 8
  store i32 1, ptr %retval, align 4
  br label %return

fail:                                             ; preds = %do.end, %land.lhs.true112, %lor.lhs.false118, %if.end86, %if.end66, %land.lhs.true71, %lor.lhs.false77, %if.end60, %if.end50, %land.lhs.true53, %do.body, %if.end, %land.lhs.true, %lor.lhs.false, %if.then37
  %81 = load ptr, ptr %head, align 8
  %cmp137.not = icmp eq ptr %81, null
  br i1 %cmp137.not, label %if.end140, label %if.then139

if.then139:                                       ; preds = %fail
  %82 = load ptr, ptr %head, align 8
  call void @cJSON_Delete(ptr noundef %82)
  br label %if.end140

if.end140:                                        ; preds = %if.then139, %fail
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end140, %if.end134, %if.then
  %83 = load i32, ptr %retval, align 4
  ret i32 %83
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @utf16_literal_to_utf8(ptr noundef %input_pointer, ptr noundef %input_end, ptr noundef %output_pointer) #0 {
entry:
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
  store ptr %input_end, ptr %input_end.addr, align 8
  store ptr %output_pointer, ptr %output_pointer.addr, align 8
  store i64 0, ptr %codepoint, align 8
  store i32 0, ptr %first_code, align 4
  store ptr %input_pointer, ptr %first_sequence, align 8
  store i8 0, ptr %utf8_length, align 1
  store i8 0, ptr %utf8_position, align 1
  store i8 0, ptr %sequence_length, align 1
  store i8 0, ptr %first_byte_mark, align 1
  %0 = load ptr, ptr %input_end.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %input_pointer to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp slt i64 %sub.ptr.sub, 6
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %first_sequence, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 2
  %call = call i32 @parse_hex4(ptr noundef nonnull %add.ptr)
  store i32 %call, ptr %first_code, align 4
  %cmp1 = icmp ugt i32 %call, 56319
  %2 = load i32, ptr %first_code, align 4
  %cmp2 = icmp ult i32 %2, 57344
  %or.cond = select i1 %cmp1, i1 %cmp2, i1 false
  br i1 %or.cond, label %return, label %if.end4

if.end4:                                          ; preds = %if.end
  %3 = load i32, ptr %first_code, align 4
  %cmp5 = icmp ugt i32 %3, 55295
  %4 = load i32, ptr %first_code, align 4
  %cmp7 = icmp ult i32 %4, 56320
  %or.cond3 = select i1 %cmp5, i1 %cmp7, i1 false
  br i1 %or.cond3, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end4
  %5 = load ptr, ptr %first_sequence, align 8
  %add.ptr9 = getelementptr inbounds i8, ptr %5, i64 6
  store ptr %add.ptr9, ptr %second_sequence, align 8
  store i32 0, ptr %second_code, align 4
  store i8 12, ptr %sequence_length, align 1
  %6 = load ptr, ptr %input_end.addr, align 8
  %sub.ptr.lhs.cast10 = ptrtoint ptr %6 to i64
  %sub.ptr.rhs.cast11 = ptrtoint ptr %add.ptr9 to i64
  %sub.ptr.sub12 = sub i64 %sub.ptr.lhs.cast10, %sub.ptr.rhs.cast11
  %cmp13 = icmp slt i64 %sub.ptr.sub12, 6
  br i1 %cmp13, label %return, label %if.end15

if.end15:                                         ; preds = %if.then8
  %7 = load ptr, ptr %second_sequence, align 8
  %8 = load i8, ptr %7, align 1
  %cmp16.not = icmp eq i8 %8, 92
  br i1 %cmp16.not, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %if.end15
  %9 = load ptr, ptr %second_sequence, align 8
  %arrayidx18 = getelementptr inbounds i8, ptr %9, i64 1
  %10 = load i8, ptr %arrayidx18, align 1
  %cmp20.not = icmp eq i8 %10, 117
  br i1 %cmp20.not, label %if.end23, label %return

if.end23:                                         ; preds = %lor.lhs.false
  %11 = load ptr, ptr %second_sequence, align 8
  %add.ptr24 = getelementptr inbounds i8, ptr %11, i64 2
  %call25 = call i32 @parse_hex4(ptr noundef nonnull %add.ptr24)
  store i32 %call25, ptr %second_code, align 4
  %cmp26 = icmp ult i32 %call25, 56320
  %12 = load i32, ptr %second_code, align 4
  %cmp29 = icmp ugt i32 %12, 57343
  %or.cond4 = select i1 %cmp26, i1 true, i1 %cmp29
  br i1 %or.cond4, label %return, label %if.end32

if.end32:                                         ; preds = %if.end23
  %13 = load i32, ptr %first_code, align 4
  %and = shl i32 %13, 10
  %shl = and i32 %and, 1047552
  %14 = load i32, ptr %second_code, align 4
  %and33 = and i32 %14, 1023
  %or = or i32 %shl, %and33
  %add = add nuw nsw i32 %or, 65536
  br label %if.end36

if.else:                                          ; preds = %if.end4
  store i8 6, ptr %sequence_length, align 1
  %15 = load i32, ptr %first_code, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.end32
  %storemerge.in = phi i32 [ %15, %if.else ], [ %add, %if.end32 ]
  %storemerge = zext i32 %storemerge.in to i64
  store i64 %storemerge, ptr %codepoint, align 8
  %cmp37 = icmp ult i32 %storemerge.in, 128
  br i1 %cmp37, label %if.then39, label %if.else40

if.then39:                                        ; preds = %if.end36
  store i8 1, ptr %utf8_length, align 1
  br label %if.end56

if.else40:                                        ; preds = %if.end36
  %16 = load i64, ptr %codepoint, align 8
  %cmp41 = icmp ult i64 %16, 2048
  br i1 %cmp41, label %if.then43, label %if.else44

if.then43:                                        ; preds = %if.else40
  store i8 2, ptr %utf8_length, align 1
  store i8 -64, ptr %first_byte_mark, align 1
  br label %if.end56

if.else44:                                        ; preds = %if.else40
  %17 = load i64, ptr %codepoint, align 8
  %cmp45 = icmp ult i64 %17, 65536
  br i1 %cmp45, label %if.then47, label %if.else48

if.then47:                                        ; preds = %if.else44
  store i8 3, ptr %utf8_length, align 1
  store i8 -32, ptr %first_byte_mark, align 1
  br label %if.end56

if.else48:                                        ; preds = %if.else44
  %18 = load i64, ptr %codepoint, align 8
  %cmp49 = icmp ult i64 %18, 1114112
  br i1 %cmp49, label %if.then51, label %return

if.then51:                                        ; preds = %if.else48
  store i8 4, ptr %utf8_length, align 1
  store i8 -16, ptr %first_byte_mark, align 1
  br label %if.end56

if.end56:                                         ; preds = %if.then43, %if.then51, %if.then47, %if.then39
  %19 = load i8, ptr %utf8_length, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end56
  %storemerge2.in = phi i8 [ %19, %if.end56 ], [ %27, %for.body ]
  %storemerge2 = add i8 %storemerge2.in, -1
  store i8 %storemerge2, ptr %utf8_position, align 1
  %cmp60.not = icmp eq i8 %storemerge2, 0
  br i1 %cmp60.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %20 = load i64, ptr %codepoint, align 8
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 63
  %conv64 = or i8 %22, -128
  %23 = load ptr, ptr %output_pointer.addr, align 8
  %24 = load ptr, ptr %23, align 8
  %25 = load i8, ptr %utf8_position, align 1
  %idxprom = zext i8 %25 to i64
  %arrayidx65 = getelementptr inbounds i8, ptr %24, i64 %idxprom
  store i8 %conv64, ptr %arrayidx65, align 1
  %26 = load i64, ptr %codepoint, align 8
  %shr = lshr i64 %26, 6
  store i64 %shr, ptr %codepoint, align 8
  %27 = load i8, ptr %utf8_position, align 1
  br label %for.cond, !llvm.loop !31

for.end:                                          ; preds = %for.cond
  %28 = load i8, ptr %utf8_length, align 1
  %cmp67 = icmp ugt i8 %28, 1
  br i1 %cmp67, label %if.then69, label %if.else75

if.then69:                                        ; preds = %for.end
  %29 = load i64, ptr %codepoint, align 8
  %30 = load i8, ptr %first_byte_mark, align 1
  %.tr = trunc i64 %29 to i8
  %or71.narrow = or i8 %30, %.tr
  %31 = load ptr, ptr %output_pointer.addr, align 8
  %32 = load ptr, ptr %31, align 8
  store i8 %or71.narrow, ptr %32, align 1
  br label %if.end79

if.else75:                                        ; preds = %for.end
  %33 = load i64, ptr %codepoint, align 8
  %34 = trunc i64 %33 to i8
  %conv77 = and i8 %34, 127
  %35 = load ptr, ptr %output_pointer.addr, align 8
  %36 = load ptr, ptr %35, align 8
  store i8 %conv77, ptr %36, align 1
  br label %if.end79

if.end79:                                         ; preds = %if.else75, %if.then69
  %37 = load i8, ptr %utf8_length, align 1
  %38 = load ptr, ptr %output_pointer.addr, align 8
  %39 = load ptr, ptr %38, align 8
  %idx.ext = zext i8 %37 to i64
  %add.ptr81 = getelementptr inbounds i8, ptr %39, i64 %idx.ext
  store ptr %add.ptr81, ptr %38, align 8
  %40 = load i8, ptr %sequence_length, align 1
  br label %return

return:                                           ; preds = %entry, %if.end, %if.then8, %lor.lhs.false, %if.end15, %if.end23, %if.else48, %if.end79
  %storemerge1 = phi i8 [ %40, %if.end79 ], [ 0, %if.else48 ], [ 0, %if.end23 ], [ 0, %if.end15 ], [ 0, %lor.lhs.false ], [ 0, %if.then8 ], [ 0, %if.end ], [ 0, %entry ]
  ret i8 %storemerge1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @parse_hex4(ptr noundef %input) #0 {
entry:
  %input.addr = alloca ptr, align 8
  %h = alloca i32, align 4
  %i = alloca i64, align 8
  store ptr %input, ptr %input.addr, align 8
  store i32 0, ptr %h, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i64 [ 0, %entry ], [ %inc, %for.inc ]
  store i64 %storemerge, ptr %i, align 8
  %cmp = icmp ult i64 %storemerge, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load ptr, ptr %input.addr, align 8
  %1 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %1
  %2 = load i8, ptr %arrayidx, align 1
  %cmp1 = icmp ugt i8 %2, 47
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %3 = load ptr, ptr %input.addr, align 8
  %4 = load i64, ptr %i, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %3, i64 %4
  %5 = load i8, ptr %arrayidx3, align 1
  %cmp5 = icmp ult i8 %5, 58
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %input.addr, align 8
  %7 = load i64, ptr %i, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %6, i64 %7
  %8 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %8 to i32
  %sub = add nsw i32 %conv8, -48
  %9 = load i32, ptr %h, align 4
  %add = add i32 %9, %sub
  store i32 %add, ptr %h, align 4
  br label %if.end42

if.else:                                          ; preds = %land.lhs.true, %for.body
  %10 = load ptr, ptr %input.addr, align 8
  %11 = load i64, ptr %i, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %10, i64 %11
  %12 = load i8, ptr %arrayidx9, align 1
  %cmp11 = icmp ugt i8 %12, 64
  br i1 %cmp11, label %land.lhs.true13, label %if.else24

land.lhs.true13:                                  ; preds = %if.else
  %13 = load ptr, ptr %input.addr, align 8
  %14 = load i64, ptr %i, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %13, i64 %14
  %15 = load i8, ptr %arrayidx14, align 1
  %cmp16 = icmp ult i8 %15, 71
  br i1 %cmp16, label %if.then18, label %if.else24

if.then18:                                        ; preds = %land.lhs.true13
  %16 = load ptr, ptr %input.addr, align 8
  %17 = load i64, ptr %i, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %16, i64 %17
  %18 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %18 to i32
  %sub22 = add nsw i32 %conv20, -55
  %19 = load i32, ptr %h, align 4
  %add23 = add i32 %19, %sub22
  store i32 %add23, ptr %h, align 4
  br label %if.end42

if.else24:                                        ; preds = %land.lhs.true13, %if.else
  %20 = load ptr, ptr %input.addr, align 8
  %21 = load i64, ptr %i, align 8
  %arrayidx25 = getelementptr inbounds i8, ptr %20, i64 %21
  %22 = load i8, ptr %arrayidx25, align 1
  %cmp27 = icmp ugt i8 %22, 96
  br i1 %cmp27, label %land.lhs.true29, label %return

land.lhs.true29:                                  ; preds = %if.else24
  %23 = load ptr, ptr %input.addr, align 8
  %24 = load i64, ptr %i, align 8
  %arrayidx30 = getelementptr inbounds i8, ptr %23, i64 %24
  %25 = load i8, ptr %arrayidx30, align 1
  %cmp32 = icmp ult i8 %25, 103
  br i1 %cmp32, label %if.then34, label %return

if.then34:                                        ; preds = %land.lhs.true29
  %26 = load ptr, ptr %input.addr, align 8
  %27 = load i64, ptr %i, align 8
  %arrayidx35 = getelementptr inbounds i8, ptr %26, i64 %27
  %28 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %28 to i32
  %sub38 = add nsw i32 %conv36, -87
  %29 = load i32, ptr %h, align 4
  %add39 = add i32 %29, %sub38
  store i32 %add39, ptr %h, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then18, %if.then34, %if.then
  %30 = load i64, ptr %i, align 8
  %cmp43 = icmp ult i64 %30, 3
  br i1 %cmp43, label %if.then45, label %for.inc

if.then45:                                        ; preds = %if.end42
  %31 = load i32, ptr %h, align 4
  %shl = shl i32 %31, 4
  store i32 %shl, ptr %h, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end42, %if.then45
  %32 = load i64, ptr %i, align 8
  %inc = add i64 %32, 1
  br label %for.cond, !llvm.loop !32

for.end:                                          ; preds = %for.cond
  %33 = load i32, ptr %h, align 4
  br label %return

return:                                           ; preds = %if.else24, %land.lhs.true29, %for.end
  %storemerge1 = phi i32 [ %33, %for.end ], [ 0, %land.lhs.true29 ], [ 0, %if.else24 ]
  ret i32 %storemerge1
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
  %cmp = icmp eq ptr %p, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %p.addr, align 8
  %length = getelementptr inbounds %struct.printbuffer, ptr %2, i64 0, i32 1
  %3 = load i64, ptr %length, align 8
  %cmp2.not = icmp eq i64 %3, 0
  br i1 %cmp2.not, label %if.end6, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %4 = load ptr, ptr %p.addr, align 8
  %offset = getelementptr inbounds %struct.printbuffer, ptr %4, i64 0, i32 2
  %5 = load i64, ptr %offset, align 8
  %length3 = getelementptr inbounds %struct.printbuffer, ptr %4, i64 0, i32 1
  %6 = load i64, ptr %length3, align 8
  %cmp4.not = icmp ult i64 %5, %6
  br i1 %cmp4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %land.lhs.true
  store ptr null, ptr %retval, align 8
  br label %return

if.end6:                                          ; preds = %land.lhs.true, %if.end
  %7 = load i64, ptr %needed.addr, align 8
  %cmp7 = icmp ugt i64 %7, 2147483647
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  store ptr null, ptr %retval, align 8
  br label %return

if.end9:                                          ; preds = %if.end6
  %8 = load ptr, ptr %p.addr, align 8
  %offset10 = getelementptr inbounds %struct.printbuffer, ptr %8, i64 0, i32 2
  %9 = load i64, ptr %offset10, align 8
  %add = add i64 %9, 1
  %10 = load i64, ptr %needed.addr, align 8
  %add11 = add i64 %10, %add
  store i64 %add11, ptr %needed.addr, align 8
  %11 = load ptr, ptr %p.addr, align 8
  %length12 = getelementptr inbounds %struct.printbuffer, ptr %11, i64 0, i32 1
  %12 = load i64, ptr %length12, align 8
  %cmp13.not = icmp ugt i64 %add11, %12
  br i1 %cmp13.not, label %if.end17, label %if.then14

if.then14:                                        ; preds = %if.end9
  %13 = load ptr, ptr %p.addr, align 8
  %14 = load ptr, ptr %13, align 8
  %offset16 = getelementptr inbounds %struct.printbuffer, ptr %13, i64 0, i32 2
  %15 = load i64, ptr %offset16, align 8
  %add.ptr = getelementptr inbounds i8, ptr %14, i64 %15
  store ptr %add.ptr, ptr %retval, align 8
  br label %return

if.end17:                                         ; preds = %if.end9
  %16 = load ptr, ptr %p.addr, align 8
  %noalloc = getelementptr inbounds %struct.printbuffer, ptr %16, i64 0, i32 4
  %17 = load i32, ptr %noalloc, align 8
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end17
  store ptr null, ptr %retval, align 8
  br label %return

if.end19:                                         ; preds = %if.end17
  %18 = load i64, ptr %needed.addr, align 8
  %cmp20 = icmp ugt i64 %18, 1073741823
  br i1 %cmp20, label %if.then21, label %if.else25

if.then21:                                        ; preds = %if.end19
  %19 = load i64, ptr %needed.addr, align 8
  %cmp22 = icmp ult i64 %19, 2147483648
  br i1 %cmp22, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.then21
  store i64 2147483647, ptr %newsize, align 8
  br label %if.end26

if.else:                                          ; preds = %if.then21
  store ptr null, ptr %retval, align 8
  br label %return

if.else25:                                        ; preds = %if.end19
  %20 = load i64, ptr %needed.addr, align 8
  %mul = shl i64 %20, 1
  store i64 %mul, ptr %newsize, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.else25, %if.then23
  %21 = load ptr, ptr %p.addr, align 8
  %reallocate = getelementptr inbounds %struct.printbuffer, ptr %21, i64 0, i32 6, i32 2
  %22 = load ptr, ptr %reallocate, align 8
  %cmp27.not = icmp eq ptr %22, null
  br i1 %cmp27.not, label %if.else39, label %if.then28

if.then28:                                        ; preds = %if.end26
  %23 = load ptr, ptr %p.addr, align 8
  %reallocate30 = getelementptr inbounds %struct.printbuffer, ptr %23, i64 0, i32 6, i32 2
  %24 = load ptr, ptr %reallocate30, align 8
  %25 = load ptr, ptr %23, align 8
  %26 = load i64, ptr %newsize, align 8
  %call = call ptr %24(ptr noundef %25, i64 noundef %26) #11
  store ptr %call, ptr %newbuffer, align 8
  %cmp32 = icmp eq ptr %call, null
  br i1 %cmp32, label %if.then33, label %if.end57

if.then33:                                        ; preds = %if.then28
  %27 = load ptr, ptr %p.addr, align 8
  %deallocate = getelementptr inbounds %struct.printbuffer, ptr %27, i64 0, i32 6, i32 1
  %28 = load ptr, ptr %deallocate, align 8
  %29 = load ptr, ptr %27, align 8
  call void %28(ptr noundef %29) #11
  %length36 = getelementptr inbounds %struct.printbuffer, ptr %27, i64 0, i32 1
  store i64 0, ptr %length36, align 8
  %30 = load ptr, ptr %p.addr, align 8
  store ptr null, ptr %30, align 8
  store ptr null, ptr %retval, align 8
  br label %return

if.else39:                                        ; preds = %if.end26
  %31 = load ptr, ptr %p.addr, align 8
  %hooks40 = getelementptr inbounds %struct.printbuffer, ptr %31, i64 0, i32 6
  %32 = load ptr, ptr %hooks40, align 8
  %33 = load i64, ptr %newsize, align 8
  %call41 = call ptr %32(i64 noundef %33) #11
  store ptr %call41, ptr %newbuffer, align 8
  %tobool42.not = icmp eq ptr %call41, null
  br i1 %tobool42.not, label %if.then43, label %if.end49

if.then43:                                        ; preds = %if.else39
  %34 = load ptr, ptr %p.addr, align 8
  %deallocate45 = getelementptr inbounds %struct.printbuffer, ptr %34, i64 0, i32 6, i32 1
  %35 = load ptr, ptr %deallocate45, align 8
  %36 = load ptr, ptr %34, align 8
  call void %35(ptr noundef %36) #11
  %length47 = getelementptr inbounds %struct.printbuffer, ptr %34, i64 0, i32 1
  store i64 0, ptr %length47, align 8
  %37 = load ptr, ptr %p.addr, align 8
  store ptr null, ptr %37, align 8
  store ptr null, ptr %retval, align 8
  br label %return

if.end49:                                         ; preds = %if.else39
  %38 = load ptr, ptr %newbuffer, align 8
  %39 = load ptr, ptr %p.addr, align 8
  %40 = load ptr, ptr %39, align 8
  %offset51 = getelementptr inbounds %struct.printbuffer, ptr %39, i64 0, i32 2
  %41 = load i64, ptr %offset51, align 8
  %add52 = add i64 %41, 1
  %42 = call i64 @llvm.objectsize.i64.p0(ptr %38, i1 false, i1 true, i1 false)
  %call53 = call ptr @__memcpy_chk(ptr noundef %38, ptr noundef %40, i64 noundef %add52, i64 noundef %42) #11
  %43 = load ptr, ptr %p.addr, align 8
  %deallocate55 = getelementptr inbounds %struct.printbuffer, ptr %43, i64 0, i32 6, i32 1
  %44 = load ptr, ptr %deallocate55, align 8
  %45 = load ptr, ptr %43, align 8
  call void %44(ptr noundef %45) #11
  br label %if.end57

if.end57:                                         ; preds = %if.then28, %if.end49
  %46 = load i64, ptr %newsize, align 8
  %47 = load ptr, ptr %p.addr, align 8
  %length58 = getelementptr inbounds %struct.printbuffer, ptr %47, i64 0, i32 1
  store i64 %46, ptr %length58, align 8
  %48 = load ptr, ptr %newbuffer, align 8
  store ptr %48, ptr %47, align 8
  %offset60 = getelementptr inbounds %struct.printbuffer, ptr %47, i64 0, i32 2
  %49 = load i64, ptr %offset60, align 8
  %add.ptr61 = getelementptr inbounds i8, ptr %48, i64 %49
  store ptr %add.ptr61, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end57, %if.then43, %if.then33, %if.else, %if.then18, %if.then14, %if.then8, %if.then5, %if.then
  %50 = load ptr, ptr %retval, align 8
  ret ptr %50
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @print_number(ptr noundef %item, ptr noundef %output_buffer) #0 {
entry:
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
  %valuedouble = getelementptr inbounds %struct.cJSON, ptr %item, i64 0, i32 6
  %0 = load double, ptr %valuedouble, align 8
  store double %0, ptr %d, align 8
  store i32 0, ptr %length, align 4
  store i64 0, ptr %i, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %number_buffer, i8 0, i64 26, i1 false)
  %call = call zeroext i8 @get_decimal_point()
  store i8 %call, ptr %decimal_point, align 1
  store double 0.000000e+00, ptr %test, align 8
  %1 = load ptr, ptr %output_buffer.addr, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %cond.true2

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

cond.true2:                                       ; preds = %entry
  %2 = load double, ptr %d, align 8
  %cmp.i73 = fcmp uno double %2, 0.000000e+00
  br i1 %cmp.i73, label %if.then19, label %cond.true13

cond.true13:                                      ; preds = %cond.true2
  %3 = load double, ptr %d, align 8
  %4 = call double @llvm.fabs.f64(double %3)
  %cmp.i82 = fcmp oeq double %4, 0x7FF0000000000000
  br i1 %cmp.i82, label %if.then19, label %if.else

if.then19:                                        ; preds = %cond.true13, %cond.true2
  %call20 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef nonnull %number_buffer, i32 noundef 0, i64 noundef 26, ptr noundef nonnull @.str.10) #11
  store i32 %call20, ptr %length, align 4
  br label %if.end43

if.else:                                          ; preds = %cond.true13
  %5 = load double, ptr %d, align 8
  %6 = load ptr, ptr %item.addr, align 8
  %valueint = getelementptr inbounds %struct.cJSON, ptr %6, i64 0, i32 5
  %7 = load i32, ptr %valueint, align 8
  %conv21 = sitofp i32 %7 to double
  %cmp22 = fcmp oeq double %5, %conv21
  br i1 %cmp22, label %if.then24, label %if.else28

if.then24:                                        ; preds = %if.else
  %8 = load ptr, ptr %item.addr, align 8
  %valueint26 = getelementptr inbounds %struct.cJSON, ptr %8, i64 0, i32 5
  %9 = load i32, ptr %valueint26, align 8
  %call27 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef nonnull %number_buffer, i32 noundef 0, i64 noundef 26, ptr noundef nonnull @.str.13, i32 noundef %9) #11
  store i32 %call27, ptr %length, align 4
  br label %if.end43

if.else28:                                        ; preds = %if.else
  %10 = load double, ptr %d, align 8
  %call30 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef nonnull %number_buffer, i32 noundef 0, i64 noundef 26, ptr noundef nonnull @.str.14, double noundef %10) #11
  store i32 %call30, ptr %length, align 4
  %call32 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %number_buffer, ptr noundef nonnull @.str.15, ptr noundef nonnull %test) #11
  %cmp33.not = icmp eq i32 %call32, 1
  br i1 %cmp33.not, label %lor.lhs.false35, label %if.then38

lor.lhs.false35:                                  ; preds = %if.else28
  %11 = load double, ptr %test, align 8
  %12 = load double, ptr %d, align 8
  %call36 = call i32 @compare_double(double noundef %11, double noundef %12)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then38, label %if.end43

if.then38:                                        ; preds = %lor.lhs.false35, %if.else28
  %13 = load double, ptr %d, align 8
  %call40 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef nonnull %number_buffer, i32 noundef 0, i64 noundef 26, ptr noundef nonnull @.str.16, double noundef %13) #11
  store i32 %call40, ptr %length, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then24, %if.then38, %lor.lhs.false35, %if.then19
  %14 = load i32, ptr %length, align 4
  %cmp44 = icmp slt i32 %14, 0
  %15 = load i32, ptr %length, align 4
  %cmp47 = icmp sgt i32 %15, 25
  %or.cond = select i1 %cmp44, i1 true, i1 %cmp47
  br i1 %or.cond, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end43
  store i32 0, ptr %retval, align 4
  br label %return

if.end50:                                         ; preds = %if.end43
  %16 = load ptr, ptr %output_buffer.addr, align 8
  %17 = load i32, ptr %length, align 4
  %conv51 = sext i32 %17 to i64
  %add = add nsw i64 %conv51, 1
  %call52 = call ptr @ensure(ptr noundef %16, i64 noundef %add)
  store ptr %call52, ptr %output_pointer, align 8
  %cmp53 = icmp eq ptr %call52, null
  br i1 %cmp53, label %if.then55, label %for.cond

if.then55:                                        ; preds = %if.end50
  store i32 0, ptr %retval, align 4
  br label %return

for.cond:                                         ; preds = %if.end50, %for.inc
  %storemerge = phi i64 [ %inc, %for.inc ], [ 0, %if.end50 ]
  store i64 %storemerge, ptr %i, align 8
  %18 = load i32, ptr %length, align 4
  %conv57 = sext i32 %18 to i64
  %cmp58 = icmp ult i64 %storemerge, %conv57
  br i1 %cmp58, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds [26 x i8], ptr %number_buffer, i64 0, i64 %19
  %20 = load i8, ptr %arrayidx, align 1
  %21 = load i8, ptr %decimal_point, align 1
  %cmp62 = icmp eq i8 %20, %21
  br i1 %cmp62, label %if.then64, label %if.end66

if.then64:                                        ; preds = %for.body
  %22 = load ptr, ptr %output_pointer, align 8
  %23 = load i64, ptr %i, align 8
  %arrayidx65 = getelementptr inbounds i8, ptr %22, i64 %23
  store i8 46, ptr %arrayidx65, align 1
  br label %for.inc

if.end66:                                         ; preds = %for.body
  %24 = load i64, ptr %i, align 8
  %arrayidx67 = getelementptr inbounds [26 x i8], ptr %number_buffer, i64 0, i64 %24
  %25 = load i8, ptr %arrayidx67, align 1
  %26 = load ptr, ptr %output_pointer, align 8
  %arrayidx68 = getelementptr inbounds i8, ptr %26, i64 %24
  store i8 %25, ptr %arrayidx68, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end66, %if.then64
  %27 = load i64, ptr %i, align 8
  %inc = add i64 %27, 1
  br label %for.cond, !llvm.loop !33

for.end:                                          ; preds = %for.cond
  %28 = load ptr, ptr %output_pointer, align 8
  %29 = load i64, ptr %i, align 8
  %arrayidx69 = getelementptr inbounds i8, ptr %28, i64 %29
  store i8 0, ptr %arrayidx69, align 1
  %30 = load i32, ptr %length, align 4
  %conv70 = sext i32 %30 to i64
  %31 = load ptr, ptr %output_buffer.addr, align 8
  %offset = getelementptr inbounds %struct.printbuffer, ptr %31, i64 0, i32 2
  %32 = load i64, ptr %offset, align 8
  %add71 = add i64 %32, %conv70
  store i64 %add71, ptr %offset, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then55, %if.then49, %if.then
  %33 = load i32, ptr %retval, align 4
  ret i32 %33
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @print_string(ptr noundef %item, ptr noundef %p) #0 {
entry:
  %valuestring = getelementptr inbounds %struct.cJSON, ptr %item, i64 0, i32 4
  %0 = load ptr, ptr %valuestring, align 8
  %call = call i32 @print_string_ptr(ptr noundef %0, ptr noundef %p)
  ret i32 %call
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @print_array(ptr noundef %item, ptr noundef %output_buffer) #0 {
entry:
  %retval = alloca i32, align 4
  %output_buffer.addr = alloca ptr, align 8
  %output_pointer = alloca ptr, align 8
  %length = alloca i64, align 8
  %current_element = alloca ptr, align 8
  store ptr %output_buffer, ptr %output_buffer.addr, align 8
  store ptr null, ptr %output_pointer, align 8
  store i64 0, ptr %length, align 8
  %child = getelementptr inbounds %struct.cJSON, ptr %item, i64 0, i32 2
  %0 = load ptr, ptr %child, align 8
  store ptr %0, ptr %current_element, align 8
  %cmp = icmp eq ptr %output_buffer, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %output_buffer.addr, align 8
  %depth = getelementptr inbounds %struct.printbuffer, ptr %1, i64 0, i32 3
  %2 = load i64, ptr %depth, align 8
  %cmp1 = icmp ugt i64 %2, 999
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %output_buffer.addr, align 8
  %call = call ptr @ensure(ptr noundef %3, i64 noundef 1)
  store ptr %call, ptr %output_pointer, align 8
  %cmp4 = icmp eq ptr %call, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  store i32 0, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end3
  %4 = load ptr, ptr %output_pointer, align 8
  store i8 91, ptr %4, align 1
  %5 = load ptr, ptr %output_buffer.addr, align 8
  %offset = getelementptr inbounds %struct.printbuffer, ptr %5, i64 0, i32 2
  %6 = load i64, ptr %offset, align 8
  %inc = add i64 %6, 1
  store i64 %inc, ptr %offset, align 8
  %depth7 = getelementptr inbounds %struct.printbuffer, ptr %5, i64 0, i32 3
  %7 = load i64, ptr %depth7, align 8
  %inc8 = add i64 %7, 1
  store i64 %inc8, ptr %depth7, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end28, %if.end6
  %8 = load ptr, ptr %current_element, align 8
  %cmp9.not = icmp eq ptr %8, null
  br i1 %cmp9.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %9 = load ptr, ptr %current_element, align 8
  %10 = load ptr, ptr %output_buffer.addr, align 8
  %call10 = call i32 @print_value(ptr noundef %9, ptr noundef %10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %while.body
  store i32 0, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %while.body
  %11 = load ptr, ptr %output_buffer.addr, align 8
  call void @update_offset(ptr noundef %11)
  %12 = load ptr, ptr %current_element, align 8
  %13 = load ptr, ptr %12, align 8
  %tobool13.not = icmp eq ptr %13, null
  br i1 %tobool13.not, label %if.end28, label %if.then14

if.then14:                                        ; preds = %if.end12
  %14 = load ptr, ptr %output_buffer.addr, align 8
  %format = getelementptr inbounds %struct.printbuffer, ptr %14, i64 0, i32 5
  %15 = load i32, ptr %format, align 4
  %tobool15.not = icmp eq i32 %15, 0
  %cond = select i1 %tobool15.not, i64 1, i64 2
  store i64 %cond, ptr %length, align 8
  %add = add nuw nsw i64 %cond, 1
  %call16 = call ptr @ensure(ptr noundef %14, i64 noundef %add)
  store ptr %call16, ptr %output_pointer, align 8
  %cmp17 = icmp eq ptr %call16, null
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.then14
  store i32 0, ptr %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.then14
  %16 = load ptr, ptr %output_pointer, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %16, i64 1
  store ptr %incdec.ptr, ptr %output_pointer, align 8
  store i8 44, ptr %16, align 1
  %17 = load ptr, ptr %output_buffer.addr, align 8
  %format21 = getelementptr inbounds %struct.printbuffer, ptr %17, i64 0, i32 5
  %18 = load i32, ptr %format21, align 4
  %tobool22.not = icmp eq i32 %18, 0
  br i1 %tobool22.not, label %if.end25, label %if.then23

if.then23:                                        ; preds = %if.end20
  %19 = load ptr, ptr %output_pointer, align 8
  %incdec.ptr24 = getelementptr inbounds i8, ptr %19, i64 1
  store ptr %incdec.ptr24, ptr %output_pointer, align 8
  store i8 32, ptr %19, align 1
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end20
  %20 = load ptr, ptr %output_pointer, align 8
  store i8 0, ptr %20, align 1
  %21 = load i64, ptr %length, align 8
  %22 = load ptr, ptr %output_buffer.addr, align 8
  %offset26 = getelementptr inbounds %struct.printbuffer, ptr %22, i64 0, i32 2
  %23 = load i64, ptr %offset26, align 8
  %add27 = add i64 %23, %21
  store i64 %add27, ptr %offset26, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.end25, %if.end12
  %24 = load ptr, ptr %current_element, align 8
  %25 = load ptr, ptr %24, align 8
  store ptr %25, ptr %current_element, align 8
  br label %while.cond, !llvm.loop !34

while.end:                                        ; preds = %while.cond
  %26 = load ptr, ptr %output_buffer.addr, align 8
  %call30 = call ptr @ensure(ptr noundef %26, i64 noundef 2)
  store ptr %call30, ptr %output_pointer, align 8
  %cmp31 = icmp eq ptr %call30, null
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %while.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end34:                                         ; preds = %while.end
  %27 = load ptr, ptr %output_pointer, align 8
  %incdec.ptr35 = getelementptr inbounds i8, ptr %27, i64 1
  store ptr %incdec.ptr35, ptr %output_pointer, align 8
  store i8 93, ptr %27, align 1
  store i8 0, ptr %incdec.ptr35, align 1
  %28 = load ptr, ptr %output_buffer.addr, align 8
  %depth36 = getelementptr inbounds %struct.printbuffer, ptr %28, i64 0, i32 3
  %29 = load i64, ptr %depth36, align 8
  %dec = add i64 %29, -1
  store i64 %dec, ptr %depth36, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end34, %if.then33, %if.then19, %if.then11, %if.then5, %if.then2, %if.then
  %30 = load i32, ptr %retval, align 4
  ret i32 %30
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @print_object(ptr noundef %item, ptr noundef %output_buffer) #0 {
entry:
  %retval = alloca i32, align 4
  %output_buffer.addr = alloca ptr, align 8
  %output_pointer = alloca ptr, align 8
  %length = alloca i64, align 8
  %current_item = alloca ptr, align 8
  %i = alloca i64, align 8
  %i99 = alloca i64, align 8
  store ptr %output_buffer, ptr %output_buffer.addr, align 8
  store ptr null, ptr %output_pointer, align 8
  store i64 0, ptr %length, align 8
  %child = getelementptr inbounds %struct.cJSON, ptr %item, i64 0, i32 2
  %0 = load ptr, ptr %child, align 8
  store ptr %0, ptr %current_item, align 8
  %cmp = icmp eq ptr %output_buffer, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %output_buffer.addr, align 8
  %depth = getelementptr inbounds %struct.printbuffer, ptr %1, i64 0, i32 3
  %2 = load i64, ptr %depth, align 8
  %cmp1 = icmp ugt i64 %2, 999
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %output_buffer.addr, align 8
  %format = getelementptr inbounds %struct.printbuffer, ptr %3, i64 0, i32 5
  %4 = load i32, ptr %format, align 4
  %tobool.not = icmp eq i32 %4, 0
  %cond = select i1 %tobool.not, i64 1, i64 2
  store i64 %cond, ptr %length, align 8
  %add = add nuw nsw i64 %cond, 1
  %call = call ptr @ensure(ptr noundef %3, i64 noundef %add)
  store ptr %call, ptr %output_pointer, align 8
  %cmp4 = icmp eq ptr %call, null
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  store i32 0, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end3
  %5 = load ptr, ptr %output_pointer, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i64 1
  store ptr %incdec.ptr, ptr %output_pointer, align 8
  store i8 123, ptr %5, align 1
  %6 = load ptr, ptr %output_buffer.addr, align 8
  %depth8 = getelementptr inbounds %struct.printbuffer, ptr %6, i64 0, i32 3
  %7 = load i64, ptr %depth8, align 8
  %inc = add i64 %7, 1
  store i64 %inc, ptr %depth8, align 8
  %format9 = getelementptr inbounds %struct.printbuffer, ptr %6, i64 0, i32 5
  %8 = load i32, ptr %format9, align 4
  %tobool10.not = icmp eq i32 %8, 0
  br i1 %tobool10.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.end7
  %9 = load ptr, ptr %output_pointer, align 8
  %incdec.ptr12 = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %incdec.ptr12, ptr %output_pointer, align 8
  store i8 10, ptr %9, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end7
  %10 = load i64, ptr %length, align 8
  %11 = load ptr, ptr %output_buffer.addr, align 8
  %offset = getelementptr inbounds %struct.printbuffer, ptr %11, i64 0, i32 2
  %12 = load i64, ptr %offset, align 8
  %add14 = add i64 %12, %10
  store i64 %add14, ptr %offset, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end82, %if.end13
  %13 = load ptr, ptr %current_item, align 8
  %tobool15.not = icmp eq ptr %13, null
  br i1 %tobool15.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %14 = load ptr, ptr %output_buffer.addr, align 8
  %format16 = getelementptr inbounds %struct.printbuffer, ptr %14, i64 0, i32 5
  %15 = load i32, ptr %format16, align 4
  %tobool17.not = icmp eq i32 %15, 0
  br i1 %tobool17.not, label %if.end33, label %if.then18

if.then18:                                        ; preds = %while.body
  %16 = load ptr, ptr %output_buffer.addr, align 8
  %depth19 = getelementptr inbounds %struct.printbuffer, ptr %16, i64 0, i32 3
  %17 = load i64, ptr %depth19, align 8
  %call20 = call ptr @ensure(ptr noundef %16, i64 noundef %17)
  store ptr %call20, ptr %output_pointer, align 8
  %cmp21 = icmp eq ptr %call20, null
  br i1 %cmp21, label %if.then23, label %for.cond

if.then23:                                        ; preds = %if.then18
  store i32 0, ptr %retval, align 4
  br label %return

for.cond:                                         ; preds = %if.then18, %for.body
  %storemerge1 = phi i64 [ %inc29, %for.body ], [ 0, %if.then18 ]
  store i64 %storemerge1, ptr %i, align 8
  %18 = load ptr, ptr %output_buffer.addr, align 8
  %depth25 = getelementptr inbounds %struct.printbuffer, ptr %18, i64 0, i32 3
  %19 = load i64, ptr %depth25, align 8
  %cmp26 = icmp ult i64 %storemerge1, %19
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load ptr, ptr %output_pointer, align 8
  %incdec.ptr28 = getelementptr inbounds i8, ptr %20, i64 1
  store ptr %incdec.ptr28, ptr %output_pointer, align 8
  store i8 9, ptr %20, align 1
  %21 = load i64, ptr %i, align 8
  %inc29 = add i64 %21, 1
  br label %for.cond, !llvm.loop !35

for.end:                                          ; preds = %for.cond
  %22 = load ptr, ptr %output_buffer.addr, align 8
  %depth30 = getelementptr inbounds %struct.printbuffer, ptr %22, i64 0, i32 3
  %23 = load i64, ptr %depth30, align 8
  %offset31 = getelementptr inbounds %struct.printbuffer, ptr %22, i64 0, i32 2
  %24 = load i64, ptr %offset31, align 8
  %add32 = add i64 %24, %23
  store i64 %add32, ptr %offset31, align 8
  br label %if.end33

if.end33:                                         ; preds = %for.end, %while.body
  %25 = load ptr, ptr %current_item, align 8
  %string = getelementptr inbounds %struct.cJSON, ptr %25, i64 0, i32 7
  %26 = load ptr, ptr %string, align 8
  %27 = load ptr, ptr %output_buffer.addr, align 8
  %call34 = call i32 @print_string_ptr(ptr noundef %26, ptr noundef %27)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end33
  store i32 0, ptr %retval, align 4
  br label %return

if.end37:                                         ; preds = %if.end33
  %28 = load ptr, ptr %output_buffer.addr, align 8
  call void @update_offset(ptr noundef %28)
  %format38 = getelementptr inbounds %struct.printbuffer, ptr %28, i64 0, i32 5
  %29 = load i32, ptr %format38, align 4
  %tobool39.not = icmp eq i32 %29, 0
  %cond40 = select i1 %tobool39.not, i64 1, i64 2
  store i64 %cond40, ptr %length, align 8
  %30 = load ptr, ptr %output_buffer.addr, align 8
  %call42 = call ptr @ensure(ptr noundef %30, i64 noundef %cond40)
  store ptr %call42, ptr %output_pointer, align 8
  %cmp43 = icmp eq ptr %call42, null
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end37
  store i32 0, ptr %retval, align 4
  br label %return

if.end46:                                         ; preds = %if.end37
  %31 = load ptr, ptr %output_pointer, align 8
  %incdec.ptr47 = getelementptr inbounds i8, ptr %31, i64 1
  store ptr %incdec.ptr47, ptr %output_pointer, align 8
  store i8 58, ptr %31, align 1
  %32 = load ptr, ptr %output_buffer.addr, align 8
  %format48 = getelementptr inbounds %struct.printbuffer, ptr %32, i64 0, i32 5
  %33 = load i32, ptr %format48, align 4
  %tobool49.not = icmp eq i32 %33, 0
  br i1 %tobool49.not, label %if.end52, label %if.then50

if.then50:                                        ; preds = %if.end46
  %34 = load ptr, ptr %output_pointer, align 8
  %incdec.ptr51 = getelementptr inbounds i8, ptr %34, i64 1
  store ptr %incdec.ptr51, ptr %output_pointer, align 8
  store i8 9, ptr %34, align 1
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.end46
  %35 = load i64, ptr %length, align 8
  %36 = load ptr, ptr %output_buffer.addr, align 8
  %offset53 = getelementptr inbounds %struct.printbuffer, ptr %36, i64 0, i32 2
  %37 = load i64, ptr %offset53, align 8
  %add54 = add i64 %37, %35
  store i64 %add54, ptr %offset53, align 8
  %38 = load ptr, ptr %current_item, align 8
  %call55 = call i32 @print_value(ptr noundef %38, ptr noundef %36)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.end52
  store i32 0, ptr %retval, align 4
  br label %return

if.end58:                                         ; preds = %if.end52
  %39 = load ptr, ptr %output_buffer.addr, align 8
  call void @update_offset(ptr noundef %39)
  %format59 = getelementptr inbounds %struct.printbuffer, ptr %39, i64 0, i32 5
  %40 = load i32, ptr %format59, align 4
  %tobool60.not = icmp ne i32 %40, 0
  %conv62 = zext i1 %tobool60.not to i64
  %41 = load ptr, ptr %current_item, align 8
  %42 = load ptr, ptr %41, align 8
  %tobool63.not = icmp ne ptr %42, null
  %conv65 = zext i1 %tobool63.not to i64
  %add66 = add nuw nsw i64 %conv62, %conv65
  store i64 %add66, ptr %length, align 8
  %43 = load ptr, ptr %output_buffer.addr, align 8
  %add67 = add nuw nsw i64 %add66, 1
  %call68 = call ptr @ensure(ptr noundef %43, i64 noundef %add67)
  store ptr %call68, ptr %output_pointer, align 8
  %cmp69 = icmp eq ptr %call68, null
  br i1 %cmp69, label %if.then71, label %if.end72

if.then71:                                        ; preds = %if.end58
  store i32 0, ptr %retval, align 4
  br label %return

if.end72:                                         ; preds = %if.end58
  %44 = load ptr, ptr %current_item, align 8
  %45 = load ptr, ptr %44, align 8
  %tobool74.not = icmp eq ptr %45, null
  br i1 %tobool74.not, label %if.end77, label %if.then75

if.then75:                                        ; preds = %if.end72
  %46 = load ptr, ptr %output_pointer, align 8
  %incdec.ptr76 = getelementptr inbounds i8, ptr %46, i64 1
  store ptr %incdec.ptr76, ptr %output_pointer, align 8
  store i8 44, ptr %46, align 1
  br label %if.end77

if.end77:                                         ; preds = %if.then75, %if.end72
  %47 = load ptr, ptr %output_buffer.addr, align 8
  %format78 = getelementptr inbounds %struct.printbuffer, ptr %47, i64 0, i32 5
  %48 = load i32, ptr %format78, align 4
  %tobool79.not = icmp eq i32 %48, 0
  br i1 %tobool79.not, label %if.end82, label %if.then80

if.then80:                                        ; preds = %if.end77
  %49 = load ptr, ptr %output_pointer, align 8
  %incdec.ptr81 = getelementptr inbounds i8, ptr %49, i64 1
  store ptr %incdec.ptr81, ptr %output_pointer, align 8
  store i8 10, ptr %49, align 1
  br label %if.end82

if.end82:                                         ; preds = %if.then80, %if.end77
  %50 = load ptr, ptr %output_pointer, align 8
  store i8 0, ptr %50, align 1
  %51 = load i64, ptr %length, align 8
  %52 = load ptr, ptr %output_buffer.addr, align 8
  %offset83 = getelementptr inbounds %struct.printbuffer, ptr %52, i64 0, i32 2
  %53 = load i64, ptr %offset83, align 8
  %add84 = add i64 %53, %51
  store i64 %add84, ptr %offset83, align 8
  %54 = load ptr, ptr %current_item, align 8
  %55 = load ptr, ptr %54, align 8
  store ptr %55, ptr %current_item, align 8
  br label %while.cond, !llvm.loop !36

while.end:                                        ; preds = %while.cond
  %56 = load ptr, ptr %output_buffer.addr, align 8
  %format86 = getelementptr inbounds %struct.printbuffer, ptr %56, i64 0, i32 5
  %57 = load i32, ptr %format86, align 4
  %tobool87.not = icmp eq i32 %57, 0
  br i1 %tobool87.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %while.end
  %58 = load ptr, ptr %output_buffer.addr, align 8
  %depth88 = getelementptr inbounds %struct.printbuffer, ptr %58, i64 0, i32 3
  %59 = load i64, ptr %depth88, align 8
  %add89 = add i64 %59, 1
  br label %cond.end

cond.end:                                         ; preds = %while.end, %cond.true
  %cond90 = phi i64 [ %add89, %cond.true ], [ 2, %while.end ]
  %call91 = call ptr @ensure(ptr noundef %56, i64 noundef %cond90)
  store ptr %call91, ptr %output_pointer, align 8
  %cmp92 = icmp eq ptr %call91, null
  br i1 %cmp92, label %if.then94, label %if.end95

if.then94:                                        ; preds = %cond.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end95:                                         ; preds = %cond.end
  %60 = load ptr, ptr %output_buffer.addr, align 8
  %format96 = getelementptr inbounds %struct.printbuffer, ptr %60, i64 0, i32 5
  %61 = load i32, ptr %format96, align 4
  %tobool97.not = icmp eq i32 %61, 0
  br i1 %tobool97.not, label %if.end109, label %for.cond100

for.cond100:                                      ; preds = %if.end95, %for.body104
  %storemerge = phi i64 [ %inc107, %for.body104 ], [ 0, %if.end95 ]
  store i64 %storemerge, ptr %i99, align 8
  %62 = load ptr, ptr %output_buffer.addr, align 8
  %depth101 = getelementptr inbounds %struct.printbuffer, ptr %62, i64 0, i32 3
  %63 = load i64, ptr %depth101, align 8
  %sub = add i64 %63, -1
  %cmp102 = icmp ult i64 %storemerge, %sub
  br i1 %cmp102, label %for.body104, label %if.end109

for.body104:                                      ; preds = %for.cond100
  %64 = load ptr, ptr %output_pointer, align 8
  %incdec.ptr105 = getelementptr inbounds i8, ptr %64, i64 1
  store ptr %incdec.ptr105, ptr %output_pointer, align 8
  store i8 9, ptr %64, align 1
  %65 = load i64, ptr %i99, align 8
  %inc107 = add i64 %65, 1
  br label %for.cond100, !llvm.loop !37

if.end109:                                        ; preds = %for.cond100, %if.end95
  %66 = load ptr, ptr %output_pointer, align 8
  %incdec.ptr110 = getelementptr inbounds i8, ptr %66, i64 1
  store ptr %incdec.ptr110, ptr %output_pointer, align 8
  store i8 125, ptr %66, align 1
  store i8 0, ptr %incdec.ptr110, align 1
  %67 = load ptr, ptr %output_buffer.addr, align 8
  %depth111 = getelementptr inbounds %struct.printbuffer, ptr %67, i64 0, i32 3
  %68 = load i64, ptr %depth111, align 8
  %dec = add i64 %68, -1
  store i64 %dec, ptr %depth111, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end109, %if.then94, %if.then71, %if.then57, %if.then45, %if.then36, %if.then23, %if.then6, %if.then2, %if.then
  %69 = load i32, ptr %retval, align 4
  ret i32 %69
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
  %cmp = icmp eq ptr %output_buffer, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %input.addr, align 8
  %cmp1 = icmp eq ptr %0, null
  br i1 %cmp1, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %1 = load ptr, ptr %output_buffer.addr, align 8
  %call = call ptr @ensure(ptr noundef %1, i64 noundef 3)
  store ptr %call, ptr %output, align 8
  %cmp3 = icmp eq ptr %call, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.then2
  store i32 0, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.then2
  %2 = load ptr, ptr %output, align 8
  %3 = call i64 @llvm.objectsize.i64.p0(ptr %2, i1 false, i1 true, i1 false)
  %4 = call ptr @__memcpy_chk(ptr %2, ptr nonnull @.str.17, i64 3, i64 %3)
  store i32 1, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %5 = load ptr, ptr %input.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %storemerge = phi ptr [ %5, %if.end7 ], [ %incdec.ptr, %for.inc ]
  store ptr %storemerge, ptr %input_pointer, align 8
  %6 = load i8, ptr %storemerge, align 1
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %input_pointer, align 8
  %8 = load i8, ptr %7, align 1
  switch i8 %8, label %sw.default [
    i8 34, label %sw.bb
    i8 92, label %sw.bb
    i8 8, label %sw.bb
    i8 12, label %sw.bb
    i8 10, label %sw.bb
    i8 13, label %sw.bb
    i8 9, label %sw.bb
  ]

sw.bb:                                            ; preds = %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body
  %9 = load i64, ptr %escape_characters, align 8
  %inc = add i64 %9, 1
  store i64 %inc, ptr %escape_characters, align 8
  br label %for.inc

sw.default:                                       ; preds = %for.body
  %10 = load ptr, ptr %input_pointer, align 8
  %11 = load i8, ptr %10, align 1
  %cmp9 = icmp ult i8 %11, 32
  br i1 %cmp9, label %if.then11, label %for.inc

if.then11:                                        ; preds = %sw.default
  %12 = load i64, ptr %escape_characters, align 8
  %add = add i64 %12, 5
  store i64 %add, ptr %escape_characters, align 8
  br label %for.inc

for.inc:                                          ; preds = %sw.bb, %if.then11, %sw.default
  %13 = load ptr, ptr %input_pointer, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %13, i64 1
  br label %for.cond, !llvm.loop !38

for.end:                                          ; preds = %for.cond
  %14 = load ptr, ptr %input_pointer, align 8
  %15 = load ptr, ptr %input.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %14 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %15 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %16 = load i64, ptr %escape_characters, align 8
  %add13 = add i64 %sub.ptr.sub, %16
  store i64 %add13, ptr %output_length, align 8
  %17 = load ptr, ptr %output_buffer.addr, align 8
  %add14 = add i64 %add13, 3
  %call15 = call ptr @ensure(ptr noundef %17, i64 noundef %add14)
  store ptr %call15, ptr %output, align 8
  %cmp16 = icmp eq ptr %call15, null
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %for.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %for.end
  %18 = load i64, ptr %escape_characters, align 8
  %cmp20 = icmp eq i64 %18, 0
  br i1 %cmp20, label %if.then22, label %if.end29

if.then22:                                        ; preds = %if.end19
  %19 = load ptr, ptr %output, align 8
  store i8 34, ptr %19, align 1
  %add.ptr = getelementptr inbounds i8, ptr %19, i64 1
  %20 = load ptr, ptr %input.addr, align 8
  %21 = load i64, ptr %output_length, align 8
  %add.ptr23 = getelementptr inbounds i8, ptr %19, i64 1
  %22 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr23, i1 false, i1 true, i1 false)
  %call24 = call ptr @__memcpy_chk(ptr noundef nonnull %add.ptr, ptr noundef %20, i64 noundef %21, i64 noundef %22) #11
  %23 = load ptr, ptr %output, align 8
  %add25 = add i64 %21, 1
  %arrayidx26 = getelementptr inbounds i8, ptr %23, i64 %add25
  store i8 34, ptr %arrayidx26, align 1
  %24 = load i64, ptr %output_length, align 8
  %add27 = add i64 %24, 2
  %arrayidx28 = getelementptr inbounds i8, ptr %23, i64 %add27
  store i8 0, ptr %arrayidx28, align 1
  store i32 1, ptr %retval, align 4
  br label %return

if.end29:                                         ; preds = %if.end19
  %25 = load ptr, ptr %output, align 8
  store i8 34, ptr %25, align 1
  %add.ptr31 = getelementptr inbounds i8, ptr %25, i64 1
  store ptr %add.ptr31, ptr %output_pointer, align 8
  %26 = load ptr, ptr %input.addr, align 8
  store ptr %26, ptr %input_pointer, align 8
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc63, %if.end29
  %27 = load ptr, ptr %input_pointer, align 8
  %28 = load i8, ptr %27, align 1
  %cmp34.not = icmp eq i8 %28, 0
  br i1 %cmp34.not, label %for.end66, label %for.body36

for.body36:                                       ; preds = %for.cond32
  %29 = load ptr, ptr %input_pointer, align 8
  %30 = load i8, ptr %29, align 1
  %cmp38 = icmp ugt i8 %30, 31
  br i1 %cmp38, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body36
  %31 = load ptr, ptr %input_pointer, align 8
  %32 = load i8, ptr %31, align 1
  %cmp41.not = icmp eq i8 %32, 34
  br i1 %cmp41.not, label %if.else, label %land.lhs.true43

land.lhs.true43:                                  ; preds = %land.lhs.true
  %33 = load ptr, ptr %input_pointer, align 8
  %34 = load i8, ptr %33, align 1
  %cmp45.not = icmp eq i8 %34, 92
  br i1 %cmp45.not, label %if.else, label %if.then47

if.then47:                                        ; preds = %land.lhs.true43
  %35 = load ptr, ptr %input_pointer, align 8
  %36 = load i8, ptr %35, align 1
  %37 = load ptr, ptr %output_pointer, align 8
  store i8 %36, ptr %37, align 1
  br label %for.inc63

if.else:                                          ; preds = %land.lhs.true43, %land.lhs.true, %for.body36
  %38 = load ptr, ptr %output_pointer, align 8
  %incdec.ptr48 = getelementptr inbounds i8, ptr %38, i64 1
  store ptr %incdec.ptr48, ptr %output_pointer, align 8
  store i8 92, ptr %38, align 1
  %39 = load ptr, ptr %input_pointer, align 8
  %40 = load i8, ptr %39, align 1
  switch i8 %40, label %sw.default57 [
    i8 92, label %sw.bb50
    i8 34, label %sw.bb51
    i8 8, label %sw.bb52
    i8 12, label %sw.bb53
    i8 10, label %sw.bb54
    i8 13, label %sw.bb55
    i8 9, label %sw.bb56
  ]

sw.bb50:                                          ; preds = %if.else
  %41 = load ptr, ptr %output_pointer, align 8
  store i8 92, ptr %41, align 1
  br label %for.inc63

sw.bb51:                                          ; preds = %if.else
  %42 = load ptr, ptr %output_pointer, align 8
  store i8 34, ptr %42, align 1
  br label %for.inc63

sw.bb52:                                          ; preds = %if.else
  %43 = load ptr, ptr %output_pointer, align 8
  store i8 98, ptr %43, align 1
  br label %for.inc63

sw.bb53:                                          ; preds = %if.else
  %44 = load ptr, ptr %output_pointer, align 8
  store i8 102, ptr %44, align 1
  br label %for.inc63

sw.bb54:                                          ; preds = %if.else
  %45 = load ptr, ptr %output_pointer, align 8
  store i8 110, ptr %45, align 1
  br label %for.inc63

sw.bb55:                                          ; preds = %if.else
  %46 = load ptr, ptr %output_pointer, align 8
  store i8 114, ptr %46, align 1
  br label %for.inc63

sw.bb56:                                          ; preds = %if.else
  %47 = load ptr, ptr %output_pointer, align 8
  store i8 116, ptr %47, align 1
  br label %for.inc63

sw.default57:                                     ; preds = %if.else
  %48 = load ptr, ptr %output_pointer, align 8
  %49 = call i64 @llvm.objectsize.i64.p0(ptr %48, i1 false, i1 true, i1 false)
  %50 = load ptr, ptr %input_pointer, align 8
  %51 = load i8, ptr %50, align 1
  %conv58 = zext i8 %51 to i32
  %call59 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %48, i32 noundef 0, i64 noundef %49, ptr noundef nonnull @.str.18, i32 noundef %conv58) #11
  %add.ptr60 = getelementptr inbounds i8, ptr %48, i64 4
  store ptr %add.ptr60, ptr %output_pointer, align 8
  br label %for.inc63

for.inc63:                                        ; preds = %if.then47, %sw.default57, %sw.bb56, %sw.bb55, %sw.bb54, %sw.bb53, %sw.bb52, %sw.bb51, %sw.bb50
  %52 = load ptr, ptr %input_pointer, align 8
  %incdec.ptr64 = getelementptr inbounds i8, ptr %52, i64 1
  store ptr %incdec.ptr64, ptr %input_pointer, align 8
  %53 = load ptr, ptr %output_pointer, align 8
  %incdec.ptr65 = getelementptr inbounds i8, ptr %53, i64 1
  store ptr %incdec.ptr65, ptr %output_pointer, align 8
  br label %for.cond32, !llvm.loop !39

for.end66:                                        ; preds = %for.cond32
  %54 = load ptr, ptr %output, align 8
  %55 = load i64, ptr %output_length, align 8
  %add67 = add i64 %55, 1
  %arrayidx68 = getelementptr inbounds i8, ptr %54, i64 %add67
  store i8 34, ptr %arrayidx68, align 1
  %add69 = add i64 %55, 2
  %arrayidx70 = getelementptr inbounds i8, ptr %54, i64 %add69
  store i8 0, ptr %arrayidx70, align 1
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end66, %if.then22, %if.then18, %if.end5, %if.then4, %if.then
  %56 = load i32, ptr %retval, align 4
  ret i32 %56
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @case_insensitive_strcmp(ptr noundef %string1, ptr noundef %string2) #0 {
entry:
  %retval = alloca i32, align 4
  %string1.addr = alloca ptr, align 8
  %string2.addr = alloca ptr, align 8
  store ptr %string1, ptr %string1.addr, align 8
  store ptr %string2, ptr %string2.addr, align 8
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
  br i1 %cmp2, label %if.then3, label %for.cond

if.then3:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

for.cond:                                         ; preds = %if.end, %for.inc
  %3 = load ptr, ptr %string1.addr, align 8
  %4 = load i8, ptr %3, align 1
  %conv = zext i8 %4 to i32
  %call = call i32 @tolower(i32 noundef %conv) #13
  %5 = load ptr, ptr %string2.addr, align 8
  %6 = load i8, ptr %5, align 1
  %conv5 = zext i8 %6 to i32
  %call6 = call i32 @tolower(i32 noundef %conv5) #13
  %cmp7 = icmp eq i32 %call, %call6
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %string1.addr, align 8
  %8 = load i8, ptr %7, align 1
  %cmp10 = icmp eq i8 %8, 0
  br i1 %cmp10, label %if.then12, label %for.inc

if.then12:                                        ; preds = %for.body
  store i32 0, ptr %retval, align 4
  br label %return

for.inc:                                          ; preds = %for.body
  %9 = load ptr, ptr %string1.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %incdec.ptr, ptr %string1.addr, align 8
  %10 = load ptr, ptr %string2.addr, align 8
  %incdec.ptr14 = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %incdec.ptr14, ptr %string2.addr, align 8
  br label %for.cond, !llvm.loop !40

for.end:                                          ; preds = %for.cond
  %11 = load ptr, ptr %string1.addr, align 8
  %12 = load i8, ptr %11, align 1
  %conv15 = zext i8 %12 to i32
  %call16 = call i32 @tolower(i32 noundef %conv15) #13
  %13 = load ptr, ptr %string2.addr, align 8
  %14 = load i8, ptr %13, align 1
  %conv17 = zext i8 %14 to i32
  %call18 = call i32 @tolower(i32 noundef %conv17) #13
  %sub = sub nsw i32 %call16, %call18
  store i32 %sub, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then12, %if.then3, %if.then
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

; Function Attrs: nounwind readonly willreturn
declare i32 @tolower(i32 noundef) #8

; Function Attrs: nounwind ssp uwtable
define internal void @assert_print_number(ptr noundef %expected, double noundef %input) #0 {
entry:
  %expected.addr = alloca ptr, align 8
  %input.addr = alloca double, align 8
  %printed = alloca [1024 x i8], align 1
  %new_buffer = alloca [26 x i8], align 1
  %i = alloca i32, align 4
  %item = alloca [1 x %struct.cJSON], align 8
  %buffer = alloca %struct.printbuffer, align 8
  store ptr %expected, ptr %expected.addr, align 8
  store double %input, ptr %input.addr, align 8
  store i32 0, ptr %i, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %buffer, i8 0, i64 64, i1 false)
  store ptr %printed, ptr %buffer, align 8
  %length = getelementptr inbounds %struct.printbuffer, ptr %buffer, i64 0, i32 1
  store i64 1024, ptr %length, align 8
  %offset = getelementptr inbounds %struct.printbuffer, ptr %buffer, i64 0, i32 2
  store i64 0, ptr %offset, align 8
  %noalloc = getelementptr inbounds %struct.printbuffer, ptr %buffer, i64 0, i32 4
  store i32 1, ptr %noalloc, align 8
  %hooks = getelementptr inbounds %struct.printbuffer, ptr %buffer, i64 0, i32 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %hooks, ptr noundef nonnull align 8 dereferenceable(24) @global_hooks, i64 24, i1 false)
  store ptr %new_buffer, ptr %buffer, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %item, i8 0, i64 64, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %new_buffer, i8 0, i64 26, i1 false)
  %0 = load double, ptr %input.addr, align 8
  %call = call double @cJSON_SetNumberHelper(ptr noundef nonnull %item, double noundef %0)
  %call8 = call i32 @print_number(ptr noundef nonnull %item, ptr noundef nonnull %buffer)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.else, label %if.end

if.else:                                          ; preds = %entry
  call void @UnityFail(ptr noundef nonnull @.str.20, i64 noundef 44) #11
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %storemerge = phi i32 [ 0, %if.end ], [ %inc59, %for.inc ]
  store i32 %storemerge, ptr %i, align 4
  %cmp = icmp ult i32 %storemerge, 26
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %cmp10 = icmp ugt i32 %1, 3
  br i1 %cmp10, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %2 = load i32, ptr %i, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [26 x i8], ptr %new_buffer, i64 0, i64 %idxprom
  %3 = load i8, ptr %arrayidx, align 1
  %cmp13 = icmp eq i8 %3, 48
  br i1 %cmp13, label %if.then15, label %for.inc

if.then15:                                        ; preds = %land.lhs.true
  %4 = load i32, ptr %i, align 4
  %sub = add i32 %4, -3
  %idxprom16 = zext i32 %sub to i64
  %arrayidx17 = getelementptr inbounds [26 x i8], ptr %new_buffer, i64 0, i64 %idxprom16
  %5 = load i8, ptr %arrayidx17, align 1
  %cmp19 = icmp eq i8 %5, 101
  br i1 %cmp19, label %land.lhs.true21, label %lor.lhs.false

land.lhs.true21:                                  ; preds = %if.then15
  %6 = load i32, ptr %i, align 4
  %sub22 = add i32 %6, -2
  %idxprom23 = zext i32 %sub22 to i64
  %arrayidx24 = getelementptr inbounds [26 x i8], ptr %new_buffer, i64 0, i64 %idxprom23
  %7 = load i8, ptr %arrayidx24, align 1
  %cmp26 = icmp eq i8 %7, 45
  br i1 %cmp26, label %land.lhs.true28, label %lor.lhs.false

land.lhs.true28:                                  ; preds = %land.lhs.true21
  %8 = load i32, ptr %i, align 4
  %idxprom29 = zext i32 %8 to i64
  %arrayidx30 = getelementptr inbounds [26 x i8], ptr %new_buffer, i64 0, i64 %idxprom29
  %9 = load i8, ptr %arrayidx30, align 1
  %cmp32 = icmp eq i8 %9, 48
  br i1 %cmp32, label %if.then47, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true28, %land.lhs.true21, %if.then15
  %10 = load i32, ptr %i, align 4
  %sub34 = add i32 %10, -2
  %idxprom35 = zext i32 %sub34 to i64
  %arrayidx36 = getelementptr inbounds [26 x i8], ptr %new_buffer, i64 0, i64 %idxprom35
  %11 = load i8, ptr %arrayidx36, align 1
  %cmp38 = icmp eq i8 %11, 101
  br i1 %cmp38, label %land.lhs.true40, label %for.inc

land.lhs.true40:                                  ; preds = %lor.lhs.false
  %12 = load i32, ptr %i, align 4
  %sub41 = add i32 %12, -1
  %idxprom42 = zext i32 %sub41 to i64
  %arrayidx43 = getelementptr inbounds [26 x i8], ptr %new_buffer, i64 0, i64 %idxprom42
  %13 = load i8, ptr %arrayidx43, align 1
  %cmp45 = icmp eq i8 %13, 43
  br i1 %cmp45, label %if.then47, label %for.inc

if.then47:                                        ; preds = %land.lhs.true40, %land.lhs.true28
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then47
  %14 = load i32, ptr %i, align 4
  %idxprom48 = zext i32 %14 to i64
  %arrayidx49 = getelementptr inbounds [26 x i8], ptr %new_buffer, i64 0, i64 %idxprom48
  %15 = load i8, ptr %arrayidx49, align 1
  %cmp51.not = icmp eq i8 %15, 0
  br i1 %cmp51.not, label %for.inc, label %while.body

while.body:                                       ; preds = %while.cond
  %16 = load i32, ptr %i, align 4
  %add = add i32 %16, 1
  %idxprom53 = zext i32 %add to i64
  %arrayidx54 = getelementptr inbounds [26 x i8], ptr %new_buffer, i64 0, i64 %idxprom53
  %17 = load i8, ptr %arrayidx54, align 1
  %idxprom55 = zext i32 %16 to i64
  %arrayidx56 = getelementptr inbounds [26 x i8], ptr %new_buffer, i64 0, i64 %idxprom55
  store i8 %17, ptr %arrayidx56, align 1
  %18 = load i32, ptr %i, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr %i, align 4
  br label %while.cond, !llvm.loop !41

for.inc:                                          ; preds = %for.body, %land.lhs.true, %while.cond, %land.lhs.true40, %lor.lhs.false
  %19 = load i32, ptr %i, align 4
  %inc59 = add i32 %19, 1
  br label %for.cond, !llvm.loop !42

for.end:                                          ; preds = %for.cond
  %20 = load ptr, ptr %expected.addr, align 8
  %21 = load ptr, ptr %buffer, align 8
  call void @UnityAssertEqualString(ptr noundef %20, ptr noundef %21, ptr noundef nonnull @.str.21, i64 noundef 62) #11
  ret void
}

declare void @UnityFail(ptr noundef, i64 noundef) #1

declare void @UnityAssertEqualString(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #1

declare void @UnityIgnore(ptr noundef, i64 noundef) #1

; Function Attrs: alwaysinline nounwind ssp uwtable
define ptr @pc_inline_source_snapshot_public_repos_cJSON_tests_print_number_0(ptr noundef %value, ptr noundef %return_parse_end, i32 noundef %require_null_terminated) #9 {
entry:
  %value.addr = alloca ptr, align 8
  %return_parse_end.addr = alloca ptr, align 8
  %require_null_terminated.addr = alloca i32, align 4
  store ptr %value, ptr %value.addr, align 8
  store ptr %return_parse_end, ptr %return_parse_end.addr, align 8
  store i32 %require_null_terminated, ptr %require_null_terminated.addr, align 4
  %cmp = icmp eq ptr %value, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %value.addr, align 8
  %call = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #11
  %add = add i64 %call, 1
  %1 = load ptr, ptr %return_parse_end.addr, align 8
  %2 = load i32, ptr %require_null_terminated.addr, align 4
  %call1 = call ptr @cJSON_ParseWithLengthOpts(ptr noundef %0, i64 noundef %add, ptr noundef %1, i32 noundef %2)
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi ptr [ %call1, %if.end ], [ null, %entry ]
  ret ptr %storemerge
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #10

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { allocsize(1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly nocallback nofree nounwind willreturn }
attributes #8 = { nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #9 = { alwaysinline nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #10 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind readonly willreturn }

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
