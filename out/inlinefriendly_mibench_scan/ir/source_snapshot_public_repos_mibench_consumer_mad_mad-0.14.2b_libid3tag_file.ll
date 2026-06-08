; ModuleID = './source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/libid3tag/file.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/libid3tag/file.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.id3_file = type { ptr, i32, i32, i32, ptr, i32, ptr }
%struct.filetag = type { ptr, i64, i64 }
%struct.id3_tag = type { i32, i32, i32, i32, i32, i32, i32, ptr, i64 }
%struct.id3_frame = type { [5 x i8], ptr, i32, i32, i32, i32, ptr, i64, i64, i32, ptr }
%union.id3_field = type { %struct.anon.5 }
%struct.anon.5 = type { i32, ptr, i64 }

@.str = private unnamed_addr constant [4 x i8] c"r+b\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"SEEK\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @id3_file_open(ptr noundef %path, i32 noundef %mode) #0 {
entry:
  %retval = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  %iofile = alloca ptr, align 8
  %file = alloca ptr, align 8
  store ptr %path, ptr %path.addr, align 8
  store i32 %mode, ptr %mode.addr, align 4
  %0 = load ptr, ptr %path.addr, align 8
  %1 = load i32, ptr %mode.addr, align 4
  %cmp = icmp eq i32 %1, 1
  %2 = zext i1 %cmp to i64
  %cond = select i1 %cmp, ptr @.str, ptr @.str.1
  %call = call ptr @"\01_fopen"(ptr noundef %0, ptr noundef %cond)
  store ptr %call, ptr %iofile, align 8
  %3 = load ptr, ptr %iofile, align 8
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %iofile, align 8
  %5 = load i32, ptr %mode.addr, align 4
  %call2 = call ptr @new_file(ptr noundef %4, i32 noundef %5)
  store ptr %call2, ptr %file, align 8
  %6 = load ptr, ptr %file, align 8
  %cmp3 = icmp eq ptr %6, null
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %iofile, align 8
  %call5 = call i32 @fclose(ptr noundef %7)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %8 = load ptr, ptr %file, align 8
  store ptr %8, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end6, %if.then
  %9 = load ptr, ptr %retval, align 8
  ret ptr %9
}

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @new_file(ptr noundef %iofile, i32 noundef %mode) #0 {
entry:
  %iofile.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  %file = alloca ptr, align 8
  store ptr %iofile, ptr %iofile.addr, align 8
  store i32 %mode, ptr %mode.addr, align 4
  %call = call ptr @malloc(i64 noundef 48) #6
  store ptr %call, ptr %file, align 8
  %0 = load ptr, ptr %file, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %fail

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %iofile.addr, align 8
  %2 = load ptr, ptr %file, align 8
  %iofile1 = getelementptr inbounds %struct.id3_file, ptr %2, i32 0, i32 0
  store ptr %1, ptr %iofile1, align 8
  %3 = load i32, ptr %mode.addr, align 4
  %4 = load ptr, ptr %file, align 8
  %mode2 = getelementptr inbounds %struct.id3_file, ptr %4, i32 0, i32 1
  store i32 %3, ptr %mode2, align 8
  %5 = load ptr, ptr %file, align 8
  %flags = getelementptr inbounds %struct.id3_file, ptr %5, i32 0, i32 2
  store i32 0, ptr %flags, align 4
  %6 = load ptr, ptr %file, align 8
  %options = getelementptr inbounds %struct.id3_file, ptr %6, i32 0, i32 3
  store i32 0, ptr %options, align 8
  %7 = load ptr, ptr %file, align 8
  %ntags = getelementptr inbounds %struct.id3_file, ptr %7, i32 0, i32 5
  store i32 0, ptr %ntags, align 8
  %8 = load ptr, ptr %file, align 8
  %tags = getelementptr inbounds %struct.id3_file, ptr %8, i32 0, i32 6
  store ptr null, ptr %tags, align 8
  %call3 = call ptr @id3_tag_new()
  %9 = load ptr, ptr %file, align 8
  %primary = getelementptr inbounds %struct.id3_file, ptr %9, i32 0, i32 4
  store ptr %call3, ptr %primary, align 8
  %10 = load ptr, ptr %file, align 8
  %primary4 = getelementptr inbounds %struct.id3_file, ptr %10, i32 0, i32 4
  %11 = load ptr, ptr %primary4, align 8
  %cmp5 = icmp eq ptr %11, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  br label %fail

if.end7:                                          ; preds = %if.end
  %12 = load ptr, ptr %file, align 8
  %primary8 = getelementptr inbounds %struct.id3_file, ptr %12, i32 0, i32 4
  %13 = load ptr, ptr %primary8, align 8
  call void @id3_tag_addref(ptr noundef %13)
  %14 = load ptr, ptr %file, align 8
  %call9 = call i32 @search_tags(ptr noundef %14)
  %cmp10 = icmp eq i32 %call9, -1
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end7
  br label %fail

if.end12:                                         ; preds = %if.end7
  br i1 false, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end12
  br label %fail

fail:                                             ; preds = %if.then13, %if.then11, %if.then6, %if.then
  %15 = load ptr, ptr %file, align 8
  %tobool = icmp ne ptr %15, null
  br i1 %tobool, label %if.then14, label %if.end15

if.then14:                                        ; preds = %fail
  %16 = load ptr, ptr %file, align 8
  call void @finish_file(ptr noundef %16)
  store ptr null, ptr %file, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %fail
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end12
  %17 = load ptr, ptr %file, align 8
  ret ptr %17
}

declare i32 @fclose(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @id3_file_fdopen(i32 noundef %fd, i32 noundef %mode) #0 {
entry:
  %retval = alloca ptr, align 8
  %fd.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %iofile = alloca ptr, align 8
  %file = alloca ptr, align 8
  %save_fd = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4
  store i32 %mode, ptr %mode.addr, align 4
  %0 = load i32, ptr %fd.addr, align 4
  %1 = load i32, ptr %mode.addr, align 4
  %cmp = icmp eq i32 %1, 1
  %2 = zext i1 %cmp to i64
  %cond = select i1 %cmp, ptr @.str, ptr @.str.1
  %call = call ptr @"\01_fdopen"(i32 noundef %0, ptr noundef %cond)
  store ptr %call, ptr %iofile, align 8
  %3 = load ptr, ptr %iofile, align 8
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %iofile, align 8
  %5 = load i32, ptr %mode.addr, align 4
  %call2 = call ptr @new_file(ptr noundef %4, i32 noundef %5)
  store ptr %call2, ptr %file, align 8
  %6 = load ptr, ptr %file, align 8
  %cmp3 = icmp eq ptr %6, null
  br i1 %cmp3, label %if.then4, label %if.end9

if.then4:                                         ; preds = %if.end
  %7 = load i32, ptr %fd.addr, align 4
  %call5 = call i32 @dup(i32 noundef %7)
  store i32 %call5, ptr %save_fd, align 4
  %8 = load ptr, ptr %iofile, align 8
  %call6 = call i32 @fclose(ptr noundef %8)
  %9 = load i32, ptr %save_fd, align 4
  %10 = load i32, ptr %fd.addr, align 4
  %call7 = call i32 @dup2(i32 noundef %9, i32 noundef %10)
  %11 = load i32, ptr %save_fd, align 4
  %call8 = call i32 @close(i32 noundef %11)
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.end
  %12 = load ptr, ptr %file, align 8
  store ptr %12, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end9, %if.then
  %13 = load ptr, ptr %retval, align 8
  ret ptr %13
}

declare ptr @"\01_fdopen"(i32 noundef, ptr noundef) #1

declare i32 @dup(...) #1

declare i32 @dup2(...) #1

declare i32 @close(...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @id3_file_close(ptr noundef %file) #0 {
entry:
  %file.addr = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  %0 = load ptr, ptr %file.addr, align 8
  %iofile = getelementptr inbounds %struct.id3_file, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %iofile, align 8
  %call = call i32 @fclose(ptr noundef %1)
  %2 = load ptr, ptr %file.addr, align 8
  call void @finish_file(ptr noundef %2)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @finish_file(ptr noundef %file) #0 {
entry:
  %file.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  %0 = load ptr, ptr %file.addr, align 8
  %primary = getelementptr inbounds %struct.id3_file, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %primary, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %file.addr, align 8
  %primary1 = getelementptr inbounds %struct.id3_file, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %primary1, align 8
  call void @id3_tag_delref(ptr noundef %3)
  %4 = load ptr, ptr %file.addr, align 8
  %primary2 = getelementptr inbounds %struct.id3_file, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %primary2, align 8
  call void @id3_tag_delete(ptr noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, ptr %i, align 4
  %7 = load ptr, ptr %file.addr, align 8
  %ntags = getelementptr inbounds %struct.id3_file, ptr %7, i32 0, i32 5
  %8 = load i32, ptr %ntags, align 8
  %cmp = icmp ult i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %file.addr, align 8
  %tags = getelementptr inbounds %struct.id3_file, ptr %9, i32 0, i32 6
  %10 = load ptr, ptr %tags, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom = zext i32 %11 to i64
  %arrayidx = getelementptr inbounds %struct.filetag, ptr %10, i64 %idxprom
  %tag = getelementptr inbounds %struct.filetag, ptr %arrayidx, i32 0, i32 0
  %12 = load ptr, ptr %tag, align 8
  call void @id3_tag_delref(ptr noundef %12)
  %13 = load ptr, ptr %file.addr, align 8
  %tags3 = getelementptr inbounds %struct.id3_file, ptr %13, i32 0, i32 6
  %14 = load ptr, ptr %tags3, align 8
  %15 = load i32, ptr %i, align 4
  %idxprom4 = zext i32 %15 to i64
  %arrayidx5 = getelementptr inbounds %struct.filetag, ptr %14, i64 %idxprom4
  %tag6 = getelementptr inbounds %struct.filetag, ptr %arrayidx5, i32 0, i32 0
  %16 = load ptr, ptr %tag6, align 8
  call void @id3_tag_delete(ptr noundef %16)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, ptr %i, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %18 = load ptr, ptr %file.addr, align 8
  %tags7 = getelementptr inbounds %struct.id3_file, ptr %18, i32 0, i32 6
  %19 = load ptr, ptr %tags7, align 8
  %tobool8 = icmp ne ptr %19, null
  br i1 %tobool8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %for.end
  %20 = load ptr, ptr %file.addr, align 8
  %tags10 = getelementptr inbounds %struct.id3_file, ptr %20, i32 0, i32 6
  %21 = load ptr, ptr %tags10, align 8
  call void @free(ptr noundef %21)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %for.end
  %22 = load ptr, ptr %file.addr, align 8
  call void @free(ptr noundef %22)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @id3_file_tag(ptr noundef %file) #0 {
entry:
  %file.addr = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  %0 = load ptr, ptr %file.addr, align 8
  %primary = getelementptr inbounds %struct.id3_file, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %primary, align 8
  ret ptr %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @id3_file_update(ptr noundef %file) #0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %size = alloca i64, align 8
  %id3v1_data = alloca [128 x i8], align 1
  %id3v1 = alloca ptr, align 8
  %id3v2 = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  store ptr null, ptr %id3v1, align 8
  store ptr null, ptr %id3v2, align 8
  %0 = load ptr, ptr %file.addr, align 8
  %mode = getelementptr inbounds %struct.id3_file, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %mode, align 8
  %cmp = icmp ne i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %file.addr, align 8
  %options = getelementptr inbounds %struct.id3_file, ptr %2, i32 0, i32 3
  %3 = load i32, ptr %options, align 8
  %and = and i32 %3, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then1, label %if.end21

if.then1:                                         ; preds = %if.end
  %4 = load ptr, ptr %file.addr, align 8
  %primary = getelementptr inbounds %struct.id3_file, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %primary, align 8
  %options2 = getelementptr inbounds %struct.id3_tag, ptr %5, i32 0, i32 5
  %6 = load i32, ptr %options2, align 4
  %or = or i32 %6, 256
  store i32 %or, ptr %options2, align 4
  %7 = load ptr, ptr %file.addr, align 8
  %primary3 = getelementptr inbounds %struct.id3_file, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %primary3, align 8
  %call = call i64 @id3_tag_render(ptr noundef %8, ptr noundef null)
  store i64 %call, ptr %size, align 8
  %9 = load i64, ptr %size, align 8
  %tobool4 = icmp ne i64 %9, 0
  br i1 %tobool4, label %if.then5, label %if.end20

if.then5:                                         ; preds = %if.then1
  br label %do.body

do.body:                                          ; preds = %if.then5
  %10 = load i64, ptr %size, align 8
  %cmp6 = icmp eq i64 %10, 128
  br i1 %cmp6, label %if.end8, label %if.then7

if.then7:                                         ; preds = %do.body
  call void @abort() #7
  unreachable

if.end8:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end8
  %11 = load ptr, ptr %file.addr, align 8
  %primary9 = getelementptr inbounds %struct.id3_file, ptr %11, i32 0, i32 4
  %12 = load ptr, ptr %primary9, align 8
  %arraydecay = getelementptr inbounds [128 x i8], ptr %id3v1_data, i64 0, i64 0
  %call10 = call i64 @id3_tag_render(ptr noundef %12, ptr noundef %arraydecay)
  store i64 %call10, ptr %size, align 8
  %13 = load i64, ptr %size, align 8
  %tobool11 = icmp ne i64 %13, 0
  br i1 %tobool11, label %if.then12, label %if.end19

if.then12:                                        ; preds = %do.end
  br label %do.body13

do.body13:                                        ; preds = %if.then12
  %14 = load i64, ptr %size, align 8
  %cmp14 = icmp eq i64 %14, 128
  br i1 %cmp14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %do.body13
  call void @abort() #7
  unreachable

if.end16:                                         ; preds = %do.body13
  br label %do.end17

do.end17:                                         ; preds = %if.end16
  %arraydecay18 = getelementptr inbounds [128 x i8], ptr %id3v1_data, i64 0, i64 0
  store ptr %arraydecay18, ptr %id3v1, align 8
  br label %if.end19

if.end19:                                         ; preds = %do.end17, %do.end
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then1
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.end
  %15 = load ptr, ptr %file.addr, align 8
  %primary22 = getelementptr inbounds %struct.id3_file, ptr %15, i32 0, i32 4
  %16 = load ptr, ptr %primary22, align 8
  %options23 = getelementptr inbounds %struct.id3_tag, ptr %16, i32 0, i32 5
  %17 = load i32, ptr %options23, align 4
  %and24 = and i32 %17, -257
  store i32 %and24, ptr %options23, align 4
  %18 = load ptr, ptr %file.addr, align 8
  %primary25 = getelementptr inbounds %struct.id3_file, ptr %18, i32 0, i32 4
  %19 = load ptr, ptr %primary25, align 8
  %call26 = call i64 @id3_tag_render(ptr noundef %19, ptr noundef null)
  store i64 %call26, ptr %size, align 8
  %20 = load i64, ptr %size, align 8
  %tobool27 = icmp ne i64 %20, 0
  br i1 %tobool27, label %if.then28, label %if.end38

if.then28:                                        ; preds = %if.end21
  %21 = load i64, ptr %size, align 8
  %call29 = call ptr @malloc(i64 noundef %21) #6
  store ptr %call29, ptr %id3v2, align 8
  %22 = load ptr, ptr %id3v2, align 8
  %cmp30 = icmp eq ptr %22, null
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.then28
  store i32 -1, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.then28
  %23 = load ptr, ptr %file.addr, align 8
  %primary33 = getelementptr inbounds %struct.id3_file, ptr %23, i32 0, i32 4
  %24 = load ptr, ptr %primary33, align 8
  %25 = load ptr, ptr %id3v2, align 8
  %call34 = call i64 @id3_tag_render(ptr noundef %24, ptr noundef %25)
  store i64 %call34, ptr %size, align 8
  %26 = load i64, ptr %size, align 8
  %cmp35 = icmp eq i64 %26, 0
  br i1 %cmp35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end32
  %27 = load ptr, ptr %id3v2, align 8
  call void @free(ptr noundef %27)
  store ptr null, ptr %id3v2, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end32
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.end21
  %28 = load ptr, ptr %id3v2, align 8
  %tobool39 = icmp ne ptr %28, null
  br i1 %tobool39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end38
  %29 = load ptr, ptr %id3v2, align 8
  call void @free(ptr noundef %29)
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end38
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end41, %if.then31, %if.then
  %30 = load i32, ptr %retval, align 4
  ret i32 %30
}

declare i64 @id3_tag_render(ptr noundef, ptr noundef) #1

; Function Attrs: cold noreturn
declare void @abort() #2

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #3

declare void @free(ptr noundef) #1

declare ptr @id3_tag_new() #1

declare void @id3_tag_addref(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @search_tags(ptr noundef %file) #0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %save_position = alloca i64, align 8
  %size = alloca i64, align 8
  %result = alloca i32, align 4
  %frame = alloca ptr, align 8
  %seek = alloca i64, align 8
  store ptr %file, ptr %file.addr, align 8
  store i32 0, ptr %result, align 4
  %0 = load ptr, ptr %file.addr, align 8
  %iofile = getelementptr inbounds %struct.id3_file, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %iofile, align 8
  %call = call i32 @fgetpos(ptr noundef %1, ptr noundef %save_position)
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %file.addr, align 8
  %iofile1 = getelementptr inbounds %struct.id3_file, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %iofile1, align 8
  %call2 = call i32 @fseek(ptr noundef %3, i64 noundef -128, i32 noundef 2)
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end15

if.then4:                                         ; preds = %if.end
  %4 = load ptr, ptr %file.addr, align 8
  %iofile5 = getelementptr inbounds %struct.id3_file, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %iofile5, align 8
  %call6 = call i64 @query_tag(ptr noundef %5)
  store i64 %call6, ptr %size, align 8
  %6 = load i64, ptr %size, align 8
  %cmp7 = icmp sgt i64 %6, 0
  br i1 %cmp7, label %if.then8, label %if.end14

if.then8:                                         ; preds = %if.then4
  %7 = load ptr, ptr %file.addr, align 8
  %8 = load i64, ptr %size, align 8
  %call9 = call i32 @add_tag(ptr noundef %7, i64 noundef %8)
  %cmp10 = icmp eq i32 %call9, -1
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then8
  br label %fail

if.end12:                                         ; preds = %if.then8
  %9 = load ptr, ptr %file.addr, align 8
  %flags = getelementptr inbounds %struct.id3_file, ptr %9, i32 0, i32 2
  %10 = load i32, ptr %flags, align 4
  %or = or i32 %10, 1
  store i32 %or, ptr %flags, align 4
  %11 = load ptr, ptr %file.addr, align 8
  %options = getelementptr inbounds %struct.id3_file, ptr %11, i32 0, i32 3
  %12 = load i32, ptr %options, align 8
  %or13 = or i32 %12, 1
  store i32 %or13, ptr %options, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.end12, %if.then4
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.end
  %13 = load ptr, ptr %file.addr, align 8
  %iofile16 = getelementptr inbounds %struct.id3_file, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %iofile16, align 8
  call void @rewind(ptr noundef %14)
  %15 = load ptr, ptr %file.addr, align 8
  %iofile17 = getelementptr inbounds %struct.id3_file, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %iofile17, align 8
  %call18 = call i64 @query_tag(ptr noundef %16)
  store i64 %call18, ptr %size, align 8
  %17 = load i64, ptr %size, align 8
  %cmp19 = icmp sgt i64 %17, 0
  br i1 %cmp19, label %if.then20, label %if.end43

if.then20:                                        ; preds = %if.end15
  %18 = load ptr, ptr %file.addr, align 8
  %19 = load i64, ptr %size, align 8
  %call21 = call i32 @add_tag(ptr noundef %18, i64 noundef %19)
  %cmp22 = icmp eq i32 %call21, -1
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.then20
  br label %fail

if.end24:                                         ; preds = %if.then20
  br label %while.cond

while.cond:                                       ; preds = %if.end42, %if.end24
  %20 = load ptr, ptr %file.addr, align 8
  %tags = getelementptr inbounds %struct.id3_file, ptr %20, i32 0, i32 6
  %21 = load ptr, ptr %tags, align 8
  %22 = load ptr, ptr %file.addr, align 8
  %ntags = getelementptr inbounds %struct.id3_file, ptr %22, i32 0, i32 5
  %23 = load i32, ptr %ntags, align 8
  %sub = sub i32 %23, 1
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds %struct.filetag, ptr %21, i64 %idxprom
  %tag = getelementptr inbounds %struct.filetag, ptr %arrayidx, i32 0, i32 0
  %24 = load ptr, ptr %tag, align 8
  %call25 = call ptr @id3_tag_findframe(ptr noundef %24, ptr noundef @.str.2, i32 noundef 0)
  store ptr %call25, ptr %frame, align 8
  %tobool = icmp ne ptr %call25, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %25 = load ptr, ptr %frame, align 8
  %fields = getelementptr inbounds %struct.id3_frame, ptr %25, i32 0, i32 10
  %26 = load ptr, ptr %fields, align 8
  %arrayidx26 = getelementptr inbounds %union.id3_field, ptr %26, i64 0
  %call27 = call i64 @id3_field_getint(ptr noundef %arrayidx26)
  store i64 %call27, ptr %seek, align 8
  %27 = load i64, ptr %seek, align 8
  %cmp28 = icmp slt i64 %27, 0
  br i1 %cmp28, label %if.then32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %28 = load ptr, ptr %file.addr, align 8
  %iofile29 = getelementptr inbounds %struct.id3_file, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %iofile29, align 8
  %30 = load i64, ptr %seek, align 8
  %call30 = call i32 @fseek(ptr noundef %29, i64 noundef %30, i32 noundef 1)
  %cmp31 = icmp eq i32 %call30, -1
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %lor.lhs.false, %while.body
  br label %while.end

if.end33:                                         ; preds = %lor.lhs.false
  %31 = load ptr, ptr %file.addr, align 8
  %iofile34 = getelementptr inbounds %struct.id3_file, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %iofile34, align 8
  %call35 = call i64 @query_tag(ptr noundef %32)
  store i64 %call35, ptr %size, align 8
  %33 = load i64, ptr %size, align 8
  %cmp36 = icmp sle i64 %33, 0
  br i1 %cmp36, label %if.then37, label %if.else

if.then37:                                        ; preds = %if.end33
  br label %while.end

if.else:                                          ; preds = %if.end33
  %34 = load ptr, ptr %file.addr, align 8
  %35 = load i64, ptr %size, align 8
  %call38 = call i32 @add_tag(ptr noundef %34, i64 noundef %35)
  %cmp39 = icmp eq i32 %call38, -1
  br i1 %cmp39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.else
  br label %fail

if.end41:                                         ; preds = %if.else
  br label %if.end42

if.end42:                                         ; preds = %if.end41
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %if.then37, %if.then32, %while.cond
  br label %if.end43

if.end43:                                         ; preds = %while.end, %if.end15
  %36 = load ptr, ptr %file.addr, align 8
  %iofile44 = getelementptr inbounds %struct.id3_file, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %iofile44, align 8
  %38 = load ptr, ptr %file.addr, align 8
  %flags45 = getelementptr inbounds %struct.id3_file, ptr %38, i32 0, i32 2
  %39 = load i32, ptr %flags45, align 4
  %and = and i32 %39, 1
  %tobool46 = icmp ne i32 %and, 0
  %40 = zext i1 %tobool46 to i64
  %cond = select i1 %tobool46, i32 -128, i32 0
  %add = add nsw i32 %cond, -10
  %conv = sext i32 %add to i64
  %call47 = call i32 @fseek(ptr noundef %37, i64 noundef %conv, i32 noundef 2)
  %cmp48 = icmp eq i32 %call47, 0
  br i1 %cmp48, label %if.then50, label %if.end71

if.then50:                                        ; preds = %if.end43
  %41 = load ptr, ptr %file.addr, align 8
  %iofile51 = getelementptr inbounds %struct.id3_file, ptr %41, i32 0, i32 0
  %42 = load ptr, ptr %iofile51, align 8
  %call52 = call i64 @query_tag(ptr noundef %42)
  store i64 %call52, ptr %size, align 8
  %43 = load i64, ptr %size, align 8
  %cmp53 = icmp slt i64 %43, 0
  br i1 %cmp53, label %land.lhs.true, label %if.end70

land.lhs.true:                                    ; preds = %if.then50
  %44 = load ptr, ptr %file.addr, align 8
  %iofile55 = getelementptr inbounds %struct.id3_file, ptr %44, i32 0, i32 0
  %45 = load ptr, ptr %iofile55, align 8
  %46 = load i64, ptr %size, align 8
  %call56 = call i32 @fseek(ptr noundef %45, i64 noundef %46, i32 noundef 1)
  %cmp57 = icmp eq i32 %call56, 0
  br i1 %cmp57, label %if.then59, label %if.end70

if.then59:                                        ; preds = %land.lhs.true
  %47 = load ptr, ptr %file.addr, align 8
  %iofile60 = getelementptr inbounds %struct.id3_file, ptr %47, i32 0, i32 0
  %48 = load ptr, ptr %iofile60, align 8
  %call61 = call i64 @query_tag(ptr noundef %48)
  store i64 %call61, ptr %size, align 8
  %49 = load i64, ptr %size, align 8
  %cmp62 = icmp sgt i64 %49, 0
  br i1 %cmp62, label %land.lhs.true64, label %if.end69

land.lhs.true64:                                  ; preds = %if.then59
  %50 = load ptr, ptr %file.addr, align 8
  %51 = load i64, ptr %size, align 8
  %call65 = call i32 @add_tag(ptr noundef %50, i64 noundef %51)
  %cmp66 = icmp eq i32 %call65, -1
  br i1 %cmp66, label %if.then68, label %if.end69

if.then68:                                        ; preds = %land.lhs.true64
  br label %fail

if.end69:                                         ; preds = %land.lhs.true64, %if.then59
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %land.lhs.true, %if.then50
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.end43
  br i1 false, label %if.then72, label %if.end73

if.then72:                                        ; preds = %if.end71
  br label %fail

fail:                                             ; preds = %if.then72, %if.then68, %if.then40, %if.then23, %if.then11
  store i32 -1, ptr %result, align 4
  br label %if.end73

if.end73:                                         ; preds = %fail, %if.end71
  %52 = load ptr, ptr %file.addr, align 8
  %iofile74 = getelementptr inbounds %struct.id3_file, ptr %52, i32 0, i32 0
  %53 = load ptr, ptr %iofile74, align 8
  call void @clearerr(ptr noundef %53)
  %54 = load ptr, ptr %file.addr, align 8
  %iofile75 = getelementptr inbounds %struct.id3_file, ptr %54, i32 0, i32 0
  %55 = load ptr, ptr %iofile75, align 8
  %call76 = call i32 @fsetpos(ptr noundef %55, ptr noundef %save_position)
  %cmp77 = icmp eq i32 %call76, -1
  br i1 %cmp77, label %if.then79, label %if.end80

if.then79:                                        ; preds = %if.end73
  store i32 -1, ptr %retval, align 4
  br label %return

if.end80:                                         ; preds = %if.end73
  %56 = load i32, ptr %result, align 4
  store i32 %56, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end80, %if.then79, %if.then
  %57 = load i32, ptr %retval, align 4
  ret i32 %57
}

declare i32 @fgetpos(ptr noundef, ptr noundef) #1

declare i32 @fseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @query_tag(ptr noundef %iofile) #0 {
entry:
  %retval = alloca i64, align 8
  %iofile.addr = alloca ptr, align 8
  %save_position = alloca i64, align 8
  %query = alloca [10 x i8], align 1
  %size = alloca i64, align 8
  store ptr %iofile, ptr %iofile.addr, align 8
  %0 = load ptr, ptr %iofile.addr, align 8
  %call = call i32 @fgetpos(ptr noundef %0, ptr noundef %save_position)
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [10 x i8], ptr %query, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [10 x i8], ptr %query, i64 0, i64 0
  %1 = load ptr, ptr %iofile.addr, align 8
  %call2 = call i64 @fread(ptr noundef %arraydecay1, i64 noundef 1, i64 noundef 10, ptr noundef %1)
  %call3 = call i64 @id3_tag_query(ptr noundef %arraydecay, i64 noundef %call2)
  store i64 %call3, ptr %size, align 8
  %2 = load ptr, ptr %iofile.addr, align 8
  %call4 = call i32 @fsetpos(ptr noundef %2, ptr noundef %save_position)
  %cmp5 = icmp eq i32 %call4, -1
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  store i64 0, ptr %retval, align 8
  br label %return

if.end7:                                          ; preds = %if.end
  %3 = load i64, ptr %size, align 8
  store i64 %3, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end7, %if.then6, %if.then
  %4 = load i64, ptr %retval, align 8
  ret i64 %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @add_tag(ptr noundef %file, i64 noundef %length) #0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %location = alloca i64, align 8
  %i = alloca i32, align 4
  %filetag = alloca %struct.filetag, align 8
  %tags = alloca ptr, align 8
  %tag = alloca ptr, align 8
  %begin1 = alloca i64, align 8
  %end1 = alloca i64, align 8
  %begin2 = alloca i64, align 8
  %end2 = alloca i64, align 8
  store ptr %file, ptr %file.addr, align 8
  store i64 %length, ptr %length.addr, align 8
  %0 = load ptr, ptr %file.addr, align 8
  %iofile = getelementptr inbounds %struct.id3_file, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %iofile, align 8
  %call = call i64 @ftell(ptr noundef %1)
  store i64 %call, ptr %location, align 8
  %2 = load i64, ptr %location, align 8
  %cmp = icmp eq i64 %2, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, ptr %location, align 8
  store i64 %3, ptr %begin1, align 8
  %4 = load i64, ptr %begin1, align 8
  %5 = load i64, ptr %length.addr, align 8
  %add = add i64 %4, %5
  store i64 %add, ptr %end1, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, ptr %i, align 4
  %7 = load ptr, ptr %file.addr, align 8
  %ntags = getelementptr inbounds %struct.id3_file, ptr %7, i32 0, i32 5
  %8 = load i32, ptr %ntags, align 8
  %cmp1 = icmp ult i32 %6, %8
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %file.addr, align 8
  %tags2 = getelementptr inbounds %struct.id3_file, ptr %9, i32 0, i32 6
  %10 = load ptr, ptr %tags2, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom = zext i32 %11 to i64
  %arrayidx = getelementptr inbounds %struct.filetag, ptr %10, i64 %idxprom
  %location3 = getelementptr inbounds %struct.filetag, ptr %arrayidx, i32 0, i32 1
  %12 = load i64, ptr %location3, align 8
  store i64 %12, ptr %begin2, align 8
  %13 = load i64, ptr %begin2, align 8
  %14 = load ptr, ptr %file.addr, align 8
  %tags4 = getelementptr inbounds %struct.id3_file, ptr %14, i32 0, i32 6
  %15 = load ptr, ptr %tags4, align 8
  %16 = load i32, ptr %i, align 4
  %idxprom5 = zext i32 %16 to i64
  %arrayidx6 = getelementptr inbounds %struct.filetag, ptr %15, i64 %idxprom5
  %length7 = getelementptr inbounds %struct.filetag, ptr %arrayidx6, i32 0, i32 2
  %17 = load i64, ptr %length7, align 8
  %add8 = add i64 %13, %17
  store i64 %add8, ptr %end2, align 8
  %18 = load i64, ptr %begin1, align 8
  %19 = load i64, ptr %begin2, align 8
  %cmp9 = icmp eq i64 %18, %19
  br i1 %cmp9, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %for.body
  %20 = load i64, ptr %end1, align 8
  %21 = load i64, ptr %end2, align 8
  %cmp10 = icmp eq i64 %20, %21
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %land.lhs.true, %for.body
  %22 = load i64, ptr %begin1, align 8
  %23 = load i64, ptr %end2, align 8
  %cmp13 = icmp ult i64 %22, %23
  br i1 %cmp13, label %land.lhs.true14, label %if.end17

land.lhs.true14:                                  ; preds = %if.end12
  %24 = load i64, ptr %end1, align 8
  %25 = load i64, ptr %begin2, align 8
  %cmp15 = icmp ugt i64 %24, %25
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %land.lhs.true14
  store i32 -1, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %land.lhs.true14, %if.end12
  br label %for.inc

for.inc:                                          ; preds = %if.end17
  %26 = load i32, ptr %i, align 4
  %inc = add i32 %26, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %27 = load ptr, ptr %file.addr, align 8
  %tags18 = getelementptr inbounds %struct.id3_file, ptr %27, i32 0, i32 6
  %28 = load ptr, ptr %tags18, align 8
  %29 = load ptr, ptr %file.addr, align 8
  %ntags19 = getelementptr inbounds %struct.id3_file, ptr %29, i32 0, i32 5
  %30 = load i32, ptr %ntags19, align 8
  %add20 = add i32 %30, 1
  %conv = zext i32 %add20 to i64
  %mul = mul i64 %conv, 24
  %call21 = call ptr @realloc(ptr noundef %28, i64 noundef %mul) #8
  store ptr %call21, ptr %tags, align 8
  %31 = load ptr, ptr %tags, align 8
  %cmp22 = icmp eq ptr %31, null
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %for.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end25:                                         ; preds = %for.end
  %32 = load ptr, ptr %tags, align 8
  %33 = load ptr, ptr %file.addr, align 8
  %tags26 = getelementptr inbounds %struct.id3_file, ptr %33, i32 0, i32 6
  store ptr %32, ptr %tags26, align 8
  %34 = load ptr, ptr %file.addr, align 8
  %iofile27 = getelementptr inbounds %struct.id3_file, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %iofile27, align 8
  %36 = load i64, ptr %length.addr, align 8
  %call28 = call ptr @read_tag(ptr noundef %35, i64 noundef %36)
  store ptr %call28, ptr %tag, align 8
  %37 = load ptr, ptr %tag, align 8
  %cmp29 = icmp eq ptr %37, null
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end25
  store i32 -1, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.end25
  %38 = load ptr, ptr %file.addr, align 8
  %primary = getelementptr inbounds %struct.id3_file, ptr %38, i32 0, i32 4
  %39 = load ptr, ptr %primary, align 8
  %40 = load ptr, ptr %tag, align 8
  %call33 = call i32 @update_primary(ptr noundef %39, ptr noundef %40)
  %cmp34 = icmp eq i32 %call33, -1
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end32
  %41 = load ptr, ptr %tag, align 8
  call void @id3_tag_delete(ptr noundef %41)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end37:                                         ; preds = %if.end32
  %42 = load ptr, ptr %tag, align 8
  %tag38 = getelementptr inbounds %struct.filetag, ptr %filetag, i32 0, i32 0
  store ptr %42, ptr %tag38, align 8
  %43 = load i64, ptr %location, align 8
  %location39 = getelementptr inbounds %struct.filetag, ptr %filetag, i32 0, i32 1
  store i64 %43, ptr %location39, align 8
  %44 = load i64, ptr %length.addr, align 8
  %length40 = getelementptr inbounds %struct.filetag, ptr %filetag, i32 0, i32 2
  store i64 %44, ptr %length40, align 8
  %45 = load ptr, ptr %file.addr, align 8
  %tags41 = getelementptr inbounds %struct.id3_file, ptr %45, i32 0, i32 6
  %46 = load ptr, ptr %tags41, align 8
  %47 = load ptr, ptr %file.addr, align 8
  %ntags42 = getelementptr inbounds %struct.id3_file, ptr %47, i32 0, i32 5
  %48 = load i32, ptr %ntags42, align 8
  %inc43 = add i32 %48, 1
  store i32 %inc43, ptr %ntags42, align 8
  %idxprom44 = zext i32 %48 to i64
  %arrayidx45 = getelementptr inbounds %struct.filetag, ptr %46, i64 %idxprom44
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx45, ptr align 8 %filetag, i64 24, i1 false)
  %49 = load ptr, ptr %tag, align 8
  call void @id3_tag_addref(ptr noundef %49)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end37, %if.then36, %if.then31, %if.then24, %if.then16, %if.then11, %if.then
  %50 = load i32, ptr %retval, align 4
  ret i32 %50
}

declare void @rewind(ptr noundef) #1

declare ptr @id3_tag_findframe(ptr noundef, ptr noundef, i32 noundef) #1

declare i64 @id3_field_getint(ptr noundef) #1

declare void @clearerr(ptr noundef) #1

declare i32 @fsetpos(ptr noundef, ptr noundef) #1

declare i64 @id3_tag_query(ptr noundef, i64 noundef) #1

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

declare i64 @ftell(ptr noundef) #1

; Function Attrs: allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #4

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @read_tag(ptr noundef %iofile, i64 noundef %size) #0 {
entry:
  %iofile.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %data = alloca ptr, align 8
  %tag = alloca ptr, align 8
  store ptr %iofile, ptr %iofile.addr, align 8
  store i64 %size, ptr %size.addr, align 8
  store ptr null, ptr %tag, align 8
  %0 = load i64, ptr %size.addr, align 8
  %call = call ptr @malloc(i64 noundef %0) #6
  store ptr %call, ptr %data, align 8
  %1 = load ptr, ptr %data, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %data, align 8
  %3 = load i64, ptr %size.addr, align 8
  %4 = load ptr, ptr %iofile.addr, align 8
  %call1 = call i64 @fread(ptr noundef %2, i64 noundef %3, i64 noundef 1, ptr noundef %4)
  %cmp = icmp eq i64 %call1, 1
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %5 = load ptr, ptr %data, align 8
  %6 = load i64, ptr %size.addr, align 8
  %call3 = call ptr @id3_tag_parse(ptr noundef %5, i64 noundef %6)
  store ptr %call3, ptr %tag, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %7 = load ptr, ptr %data, align 8
  call void @free(ptr noundef %7)
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %8 = load ptr, ptr %tag, align 8
  ret ptr %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @update_primary(ptr noundef %tag, ptr noundef %new) #0 {
entry:
  %retval = alloca i32, align 4
  %tag.addr = alloca ptr, align 8
  %new.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %tag, ptr %tag.addr, align 8
  store ptr %new, ptr %new.addr, align 8
  %0 = load ptr, ptr %new.addr, align 8
  %extendedflags = getelementptr inbounds %struct.id3_tag, ptr %0, i32 0, i32 3
  %1 = load i32, ptr %extendedflags, align 4
  %and = and i32 %1, 64
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %tag.addr, align 8
  call void @id3_tag_clearframes(ptr noundef %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %i, align 4
  %4 = load ptr, ptr %new.addr, align 8
  %nframes = getelementptr inbounds %struct.id3_tag, ptr %4, i32 0, i32 6
  %5 = load i32, ptr %nframes, align 8
  %cmp = icmp ult i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %tag.addr, align 8
  %7 = load ptr, ptr %new.addr, align 8
  %frames = getelementptr inbounds %struct.id3_tag, ptr %7, i32 0, i32 7
  %8 = load ptr, ptr %frames, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom = zext i32 %9 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 %idxprom
  %10 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @id3_tag_attachframe(ptr noundef %6, ptr noundef %10)
  %cmp1 = icmp eq i32 %call, -1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %for.body
  store i32 -1, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end3
  %11 = load i32, ptr %i, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then2
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

declare void @id3_tag_delete(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare ptr @id3_tag_parse(ptr noundef, i64 noundef) #1

declare void @id3_tag_clearframes(ptr noundef) #1

declare i32 @id3_tag_attachframe(ptr noundef, ptr noundef) #1

declare void @id3_tag_delref(ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { cold noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { allocsize(1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { argmemonly nocallback nofree nounwind willreturn }
attributes #6 = { allocsize(0) }
attributes #7 = { cold noreturn }
attributes #8 = { allocsize(1) }

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
