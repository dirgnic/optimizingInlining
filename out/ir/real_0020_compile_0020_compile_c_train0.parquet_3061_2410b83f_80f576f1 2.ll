; ModuleID = '<stdin>'
source_filename = "/local-ssd/vtk-j3fcitgmitcvemiewb6nohnsalcc4ltw-build/aidengro/spack-stage-vtk-8.2.1a-j3fcitgmitcvemiewb6nohnsalcc4ltw/spack-src/ThirdParty/exodusII/vtkexodusII/src/ex_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.EX_mutex_struct = type { %union.pthread_mutex_t, %union.pthread_mutexattr_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%union.pthread_mutexattr_t = type { i32 }
%struct.EX_errval = type { i32, [256 x i8], [256 x i8], i32 }

@ex_errval = global ptr null, align 8
@EX_first_init_g = external global i32, align 4
@EX_g = external global %struct.EX_mutex_struct, align 8
@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [9 x i8] c"[%s] %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"    exerrval = %d\0A\00", align 1
@exoptval = external global i32, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Exodus Library Warning: [%s]\0A\09%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Exodus Library Warning/Error: [%s]\0A\09%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Memory allocation failure\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"Bad file mode -- cannot specify both EX_READ and EX_WRITE\00", align 1
@.str.7 = private unnamed_addr constant [65 x i8] c"Bad file id. Could not find exodus file associated with file id.\00", align 1
@.str.8 = private unnamed_addr constant [63 x i8] c"Integer sizes must match for input and output file in ex_copy.\00", align 1
@.str.9 = private unnamed_addr constant [85 x i8] c"Id lookup failed for specified entity type. Could not find entity with specified id.\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"Bad parameter.\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"Internal logic error in exodus library.\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"File id is not the root id; it is a subgroup id.\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"Null entity found.\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Duplicate entity id found.\00", align 1

; Function Attrs: nounwind uwtable
define void @vtkexodusII_ex_reset_error_status() #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define void @vtkexodusII_ex_err(ptr noundef %module_name, ptr noundef %message, i32 noundef %err_num) #0 {
entry:
  %module_name.addr = alloca ptr, align 8
  %message.addr = alloca ptr, align 8
  %err_num.addr = alloca i32, align 4
  store ptr %module_name, ptr %module_name.addr, align 8, !tbaa !4
  store ptr %message, ptr %message.addr, align 8, !tbaa !4
  store i32 %err_num, ptr %err_num.addr, align 4, !tbaa !8
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i32 @pthread_once(ptr noundef @EX_first_init_g, ptr noundef @vtkexodusII_ex_pthread_first_thread_init)
  %call1 = call i32 @vtkexodusII_ex_mutex_lock(ptr noundef @EX_g)
  %call2 = call ptr (...) @vtkexodusII_exerrval_get()
  store ptr %call2, ptr @ex_errval, align 8, !tbaa !4
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, ptr %err_num.addr, align 4, !tbaa !8
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %1 = load i32, ptr %err_num.addr, align 4, !tbaa !8
  %2 = load ptr, ptr @ex_errval, align 8, !tbaa !4
  %errval = getelementptr inbounds %struct.EX_errval, ptr %2, i32 0, i32 0
  store i32 %1, ptr %errval, align 4, !tbaa !10
  br label %do.body3

do.body3:                                         ; preds = %if.then
  %call4 = call i32 @vtkexodusII_ex_mutex_unlock(ptr noundef @EX_g)
  br label %do.end53

do.end5:                                          ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end5, %do.end
  %3 = load i32, ptr %err_num.addr, align 4, !tbaa !8
  %cmp6 = icmp eq i32 %3, -1001
  br i1 %cmp6, label %if.then7, label %if.end14

if.then7:                                         ; preds = %if.end
  %4 = load ptr, ptr @stderr, align 8, !tbaa !4
  %5 = load ptr, ptr @ex_errval, align 8, !tbaa !4
  %last_pname = getelementptr inbounds %struct.EX_errval, ptr %5, i32 0, i32 1
  %arraydecay = getelementptr inbounds [256 x i8], ptr %last_pname, i64 0, i64 0
  %6 = load ptr, ptr @ex_errval, align 8, !tbaa !4
  %last_errmsg = getelementptr inbounds %struct.EX_errval, ptr %6, i32 0, i32 2
  %arraydecay8 = getelementptr inbounds [256 x i8], ptr %last_errmsg, i64 0, i64 0
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str, ptr noundef %arraydecay, ptr noundef %arraydecay8)
  %7 = load ptr, ptr @stderr, align 8, !tbaa !4
  %8 = load ptr, ptr @ex_errval, align 8, !tbaa !4
  %last_err_num = getelementptr inbounds %struct.EX_errval, ptr %8, i32 0, i32 3
  %9 = load i32, ptr %last_err_num, align 4, !tbaa !12
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.1, i32 noundef %9)
  br label %do.body11

do.body11:                                        ; preds = %if.then7
  %call12 = call i32 @vtkexodusII_ex_mutex_unlock(ptr noundef @EX_g)
  br label %do.end53

do.end13:                                         ; No predecessors!
  br label %if.end14

if.end14:                                         ; preds = %do.end13, %if.end
  %10 = load i32, ptr %err_num.addr, align 4, !tbaa !8
  %cmp15 = icmp eq i32 %10, -1006
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end14
  %11 = load i32, ptr @exoptval, align 4, !tbaa !8
  %and = and i32 %11, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.then16
  %12 = load ptr, ptr @stderr, align 8, !tbaa !4
  %13 = load ptr, ptr %module_name.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.2, ptr noundef %13, ptr noundef %14)
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.then16
  br label %if.end30

if.else:                                          ; preds = %if.end14
  %15 = load i32, ptr @exoptval, align 4, !tbaa !8
  %and20 = and i32 %15, 1
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.then22, label %if.end29

if.then22:                                        ; preds = %if.else
  %16 = load ptr, ptr @stderr, align 8, !tbaa !4
  %17 = load ptr, ptr %module_name.addr, align 8, !tbaa !4
  %18 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %call23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.3, ptr noundef %17, ptr noundef %18)
  %19 = load i32, ptr %err_num.addr, align 4, !tbaa !8
  %cmp24 = icmp slt i32 %19, 0
  br i1 %cmp24, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.then22
  %20 = load ptr, ptr @stderr, align 8, !tbaa !4
  %21 = load i32, ptr %err_num.addr, align 4, !tbaa !8
  %call26 = call ptr @vtkexodusII_ex_strerror(i32 noundef %21)
  %call27 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.4, ptr noundef %call26)
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.then22
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.else
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.end19
  %22 = load ptr, ptr @ex_errval, align 8, !tbaa !4
  %last_errmsg31 = getelementptr inbounds %struct.EX_errval, ptr %22, i32 0, i32 2
  %arraydecay32 = getelementptr inbounds [256 x i8], ptr %last_errmsg31, i64 0, i64 0
  %23 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %call33 = call ptr @strncpy(ptr noundef %arraydecay32, ptr noundef %23, i64 noundef 256) #4
  %24 = load ptr, ptr @ex_errval, align 8, !tbaa !4
  %last_pname34 = getelementptr inbounds %struct.EX_errval, ptr %24, i32 0, i32 1
  %arraydecay35 = getelementptr inbounds [256 x i8], ptr %last_pname34, i64 0, i64 0
  %25 = load ptr, ptr %module_name.addr, align 8, !tbaa !4
  %call36 = call ptr @strncpy(ptr noundef %arraydecay35, ptr noundef %25, i64 noundef 256) #4
  %26 = load ptr, ptr @ex_errval, align 8, !tbaa !4
  %last_errmsg37 = getelementptr inbounds %struct.EX_errval, ptr %26, i32 0, i32 2
  %arrayidx = getelementptr inbounds [256 x i8], ptr %last_errmsg37, i64 0, i64 255
  store i8 0, ptr %arrayidx, align 1, !tbaa !13
  %27 = load ptr, ptr @ex_errval, align 8, !tbaa !4
  %last_pname38 = getelementptr inbounds %struct.EX_errval, ptr %27, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [256 x i8], ptr %last_pname38, i64 0, i64 255
  store i8 0, ptr %arrayidx39, align 1, !tbaa !13
  %28 = load i32, ptr %err_num.addr, align 4, !tbaa !8
  %cmp40 = icmp ne i32 %28, -1003
  br i1 %cmp40, label %if.then41, label %if.end44

if.then41:                                        ; preds = %if.end30
  %29 = load i32, ptr %err_num.addr, align 4, !tbaa !8
  %30 = load ptr, ptr @ex_errval, align 8, !tbaa !4
  %errval42 = getelementptr inbounds %struct.EX_errval, ptr %30, i32 0, i32 0
  store i32 %29, ptr %errval42, align 4, !tbaa !10
  %31 = load i32, ptr %err_num.addr, align 4, !tbaa !8
  %32 = load ptr, ptr @ex_errval, align 8, !tbaa !4
  %last_err_num43 = getelementptr inbounds %struct.EX_errval, ptr %32, i32 0, i32 3
  store i32 %31, ptr %last_err_num43, align 4, !tbaa !12
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.end30
  %33 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call45 = call i32 @fflush(ptr noundef %33)
  %34 = load i32, ptr %err_num.addr, align 4, !tbaa !8
  %cmp46 = icmp sgt i32 %34, 0
  br i1 %cmp46, label %land.lhs.true, label %if.end50

land.lhs.true:                                    ; preds = %if.end44
  %35 = load i32, ptr @exoptval, align 4, !tbaa !8
  %and47 = and i32 %35, 4
  %tobool48 = icmp ne i32 %and47, 0
  br i1 %tobool48, label %if.then49, label %if.end50

if.then49:                                        ; preds = %land.lhs.true
  %36 = load i32, ptr %err_num.addr, align 4, !tbaa !8
  call void @exit(i32 noundef %36) #5
  unreachable

if.end50:                                         ; preds = %land.lhs.true, %if.end44
  br label %do.body51

do.body51:                                        ; preds = %if.end50
  %call52 = call i32 @vtkexodusII_ex_mutex_unlock(ptr noundef @EX_g)
  br label %do.end53

do.end53:                                         ; preds = %do.body3, %do.body11, %do.body51
  ret void
}

declare i32 @pthread_once(ptr noundef, ptr noundef) #1

declare void @vtkexodusII_ex_pthread_first_thread_init() #1

declare i32 @vtkexodusII_ex_mutex_lock(ptr noundef) #1

declare ptr @vtkexodusII_exerrval_get(...) #1

declare i32 @vtkexodusII_ex_mutex_unlock(ptr noundef) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind uwtable
define ptr @vtkexodusII_ex_strerror(i32 noundef %err_num) #0 {
entry:
  %retval = alloca ptr, align 8
  %err_num.addr = alloca i32, align 4
  store i32 %err_num, ptr %err_num.addr, align 4, !tbaa !8
  %0 = load i32, ptr %err_num.addr, align 4, !tbaa !8
  switch i32 %0, label %sw.default [
    i32 1000, label %sw.bb
    i32 1001, label %sw.bb1
    i32 1002, label %sw.bb2
    i32 1003, label %sw.bb3
    i32 1004, label %sw.bb4
    i32 1005, label %sw.bb5
    i32 1006, label %sw.bb6
    i32 -1002, label %sw.bb7
    i32 -1006, label %sw.bb8
    i32 -1007, label %sw.bb9
  ]

sw.bb:                                            ; preds = %entry
  store ptr @.str.5, ptr %retval, align 8
  br label %return

sw.bb1:                                           ; preds = %entry
  store ptr @.str.6, ptr %retval, align 8
  br label %return

sw.bb2:                                           ; preds = %entry
  store ptr @.str.7, ptr %retval, align 8
  br label %return

sw.bb3:                                           ; preds = %entry
  store ptr @.str.8, ptr %retval, align 8
  br label %return

sw.bb4:                                           ; preds = %entry
  store ptr @.str.9, ptr %retval, align 8
  br label %return

sw.bb5:                                           ; preds = %entry
  store ptr @.str.10, ptr %retval, align 8
  br label %return

sw.bb6:                                           ; preds = %entry
  store ptr @.str.11, ptr %retval, align 8
  br label %return

sw.bb7:                                           ; preds = %entry
  store ptr @.str.12, ptr %retval, align 8
  br label %return

sw.bb8:                                           ; preds = %entry
  store ptr @.str.13, ptr %retval, align 8
  br label %return

sw.bb9:                                           ; preds = %entry
  store ptr @.str.14, ptr %retval, align 8
  br label %return

sw.default:                                       ; preds = %entry
  %1 = load i32, ptr %err_num.addr, align 4, !tbaa !8
  %call = call ptr @nc_strerror(i32 noundef %1)
  store ptr %call, ptr %retval, align 8
  br label %return

return:                                           ; preds = %sw.default, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %2 = load ptr, ptr %retval, align 8
  ret ptr %2
}

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @fflush(ptr noundef) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #3

; Function Attrs: nounwind uwtable
define void @vtkexodusII_ex_set_err(ptr noundef %module_name, ptr noundef %message, i32 noundef %err_num) #0 {
entry:
  %module_name.addr = alloca ptr, align 8
  %message.addr = alloca ptr, align 8
  %err_num.addr = alloca i32, align 4
  store ptr %module_name, ptr %module_name.addr, align 8, !tbaa !4
  store ptr %message, ptr %message.addr, align 8, !tbaa !4
  store i32 %err_num, ptr %err_num.addr, align 4, !tbaa !8
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i32 @pthread_once(ptr noundef @EX_first_init_g, ptr noundef @vtkexodusII_ex_pthread_first_thread_init)
  %call1 = call i32 @vtkexodusII_ex_mutex_lock(ptr noundef @EX_g)
  %call2 = call ptr (...) @vtkexodusII_exerrval_get()
  store ptr %call2, ptr @ex_errval, align 8, !tbaa !4
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr @ex_errval, align 8, !tbaa !4
  %last_errmsg = getelementptr inbounds %struct.EX_errval, ptr %0, i32 0, i32 2
  %arraydecay = getelementptr inbounds [256 x i8], ptr %last_errmsg, i64 0, i64 0
  %1 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %call3 = call ptr @strncpy(ptr noundef %arraydecay, ptr noundef %1, i64 noundef 256) #4
  %2 = load ptr, ptr @ex_errval, align 8, !tbaa !4
  %last_pname = getelementptr inbounds %struct.EX_errval, ptr %2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [256 x i8], ptr %last_pname, i64 0, i64 0
  %3 = load ptr, ptr %module_name.addr, align 8, !tbaa !4
  %call5 = call ptr @strncpy(ptr noundef %arraydecay4, ptr noundef %3, i64 noundef 256) #4
  %4 = load ptr, ptr @ex_errval, align 8, !tbaa !4
  %last_errmsg6 = getelementptr inbounds %struct.EX_errval, ptr %4, i32 0, i32 2
  %arrayidx = getelementptr inbounds [256 x i8], ptr %last_errmsg6, i64 0, i64 255
  store i8 0, ptr %arrayidx, align 1, !tbaa !13
  %5 = load ptr, ptr @ex_errval, align 8, !tbaa !4
  %last_pname7 = getelementptr inbounds %struct.EX_errval, ptr %5, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [256 x i8], ptr %last_pname7, i64 0, i64 255
  store i8 0, ptr %arrayidx8, align 1, !tbaa !13
  %6 = load i32, ptr %err_num.addr, align 4, !tbaa !8
  %cmp = icmp ne i32 %6, -1003
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %7 = load i32, ptr %err_num.addr, align 4, !tbaa !8
  %8 = load ptr, ptr @ex_errval, align 8, !tbaa !4
  %last_err_num = getelementptr inbounds %struct.EX_errval, ptr %8, i32 0, i32 3
  store i32 %7, ptr %last_err_num, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  br label %do.body9

do.body9:                                         ; preds = %if.end
  %call10 = call i32 @vtkexodusII_ex_mutex_unlock(ptr noundef @EX_g)
  br label %do.end11

do.end11:                                         ; preds = %do.body9
  ret void
}

; Function Attrs: nounwind uwtable
define void @vtkexodusII_ex_get_err(ptr noundef %msg, ptr noundef %func, ptr noundef %err_num) #0 {
entry:
  %msg.addr = alloca ptr, align 8
  %func.addr = alloca ptr, align 8
  %err_num.addr = alloca ptr, align 8
  store ptr %msg, ptr %msg.addr, align 8, !tbaa !4
  store ptr %func, ptr %func.addr, align 8, !tbaa !4
  store ptr %err_num, ptr %err_num.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i32 @pthread_once(ptr noundef @EX_first_init_g, ptr noundef @vtkexodusII_ex_pthread_first_thread_init)
  %call1 = call i32 @vtkexodusII_ex_mutex_lock(ptr noundef @EX_g)
  %call2 = call ptr (...) @vtkexodusII_exerrval_get()
  store ptr %call2, ptr @ex_errval, align 8, !tbaa !4
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %msg.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %1 = load ptr, ptr @ex_errval, align 8, !tbaa !4
  %last_errmsg = getelementptr inbounds %struct.EX_errval, ptr %1, i32 0, i32 2
  %arraydecay = getelementptr inbounds [256 x i8], ptr %last_errmsg, i64 0, i64 0
  %2 = load ptr, ptr %msg.addr, align 8, !tbaa !4
  store ptr %arraydecay, ptr %2, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %3 = load ptr, ptr %func.addr, align 8, !tbaa !4
  %tobool3 = icmp ne ptr %3, null
  br i1 %tobool3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %4 = load ptr, ptr @ex_errval, align 8, !tbaa !4
  %last_pname = getelementptr inbounds %struct.EX_errval, ptr %4, i32 0, i32 1
  %arraydecay5 = getelementptr inbounds [256 x i8], ptr %last_pname, i64 0, i64 0
  %5 = load ptr, ptr %func.addr, align 8, !tbaa !4
  store ptr %arraydecay5, ptr %5, align 8, !tbaa !4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %6 = load ptr, ptr %err_num.addr, align 8, !tbaa !4
  %tobool7 = icmp ne ptr %6, null
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  %7 = load ptr, ptr @ex_errval, align 8, !tbaa !4
  %last_err_num = getelementptr inbounds %struct.EX_errval, ptr %7, i32 0, i32 3
  %8 = load i32, ptr %last_err_num, align 4, !tbaa !12
  %9 = load ptr, ptr %err_num.addr, align 8, !tbaa !4
  store i32 %8, ptr %9, align 4, !tbaa !8
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6
  br label %do.body10

do.body10:                                        ; preds = %if.end9
  %call11 = call i32 @vtkexodusII_ex_mutex_unlock(ptr noundef @EX_g)
  br label %do.end12

do.end12:                                         ; preds = %do.body10
  ret void
}

declare ptr @nc_strerror(i32 noundef) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !9, i64 0}
!11 = !{!"EX_errval", !9, i64 0, !6, i64 4, !6, i64 260, !9, i64 516}
!12 = !{!11, !9, i64 516}
!13 = !{!6, !6, i64 0}
