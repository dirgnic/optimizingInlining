; ModuleID = './out/inlinefriendly_scan/rewritten_ir/teacher_balanced_score/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-mad_file.prepared.ll'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-mad/file.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.id3_file = type { ptr, i32, i32, i32, ptr, i32, ptr }
%struct.filetag = type { ptr, i64, i64 }
%struct.id3_tag = type { i32, i32, i32, i32, i32, i32, i32, ptr, i64 }
%struct.id3_frame = type { [5 x i8], ptr, i32, i32, i32, i32, ptr, i64, i64, i32, ptr }

@.str = private unnamed_addr constant [4 x i8] c"r+b\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"SEEK\00", align 1

; Function Attrs: nounwind ssp uwtable
define ptr @id3_file_open(ptr noundef %path, i32 noundef %mode) #0 {
entry:
  %mode.addr = alloca i32, align 4
  %iofile = alloca ptr, align 8
  %file = alloca ptr, align 8
  store i32 %mode, ptr %mode.addr, align 4
  %cmp = icmp eq i32 %mode, 1
  %cond = select i1 %cmp, ptr @.str, ptr @.str.1
  %call = call ptr @"\01_fopen"(ptr noundef %path, ptr noundef nonnull %cond) #6
  store ptr %call, ptr %iofile, align 8
  %cmp1 = icmp eq ptr %call, null
  br i1 %cmp1, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %iofile, align 8
  %1 = load i32, ptr %mode.addr, align 4
  %call2 = call ptr @new_file(ptr noundef %0, i32 noundef %1)
  store ptr %call2, ptr %file, align 8
  %cmp3 = icmp eq ptr %call2, null
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %2 = load ptr, ptr %iofile, align 8
  %call5 = call i32 @fclose(ptr noundef %2) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %3 = load ptr, ptr %file, align 8
  br label %return

return:                                           ; preds = %entry, %if.end6
  %storemerge = phi ptr [ %3, %if.end6 ], [ null, %entry ]
  ret ptr %storemerge
}

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal ptr @new_file(ptr noundef %iofile, i32 noundef %mode) #0 {
entry:
  %iofile.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  %file = alloca ptr, align 8
  store ptr %iofile, ptr %iofile.addr, align 8
  store i32 %mode, ptr %mode.addr, align 4
  %call = call dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #7
  store ptr %call, ptr %file, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %fail, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %iofile.addr, align 8
  %1 = load ptr, ptr %file, align 8
  store ptr %0, ptr %1, align 8
  %2 = load i32, ptr %mode.addr, align 4
  %mode2 = getelementptr inbounds %struct.id3_file, ptr %1, i64 0, i32 1
  store i32 %2, ptr %mode2, align 8
  %flags = getelementptr inbounds %struct.id3_file, ptr %1, i64 0, i32 2
  store i32 0, ptr %flags, align 4
  %3 = load ptr, ptr %file, align 8
  %options = getelementptr inbounds %struct.id3_file, ptr %3, i64 0, i32 3
  store i32 0, ptr %options, align 8
  %ntags = getelementptr inbounds %struct.id3_file, ptr %3, i64 0, i32 5
  store i32 0, ptr %ntags, align 8
  %tags = getelementptr inbounds %struct.id3_file, ptr %3, i64 0, i32 6
  store ptr null, ptr %tags, align 8
  %call3 = call ptr @id3_tag_new() #6
  %4 = load ptr, ptr %file, align 8
  %primary = getelementptr inbounds %struct.id3_file, ptr %4, i64 0, i32 4
  store ptr %call3, ptr %primary, align 8
  %cmp5 = icmp eq ptr %call3, null
  br i1 %cmp5, label %fail, label %if.end7

if.end7:                                          ; preds = %if.end
  %5 = load ptr, ptr %file, align 8
  %primary8 = getelementptr inbounds %struct.id3_file, ptr %5, i64 0, i32 4
  %6 = load ptr, ptr %primary8, align 8
  call void @id3_tag_addref(ptr noundef %6) #6
  %call9 = call i32 @search_tags(ptr noundef %5)
  %cmp10 = icmp ne i32 %call9, -1
  %7 = load ptr, ptr %file, align 8
  %tobool.not = icmp eq ptr %7, null
  %or.cond = select i1 %cmp10, i1 true, i1 %tobool.not
  br i1 %or.cond, label %if.end16, label %if.then14

fail:                                             ; preds = %if.end, %entry
  %.old = load ptr, ptr %file, align 8
  %tobool.not.old = icmp eq ptr %.old, null
  br i1 %tobool.not.old, label %if.end16, label %if.then14

if.then14:                                        ; preds = %if.end7, %fail
  %8 = load ptr, ptr %file, align 8
  call void @finish_file(ptr noundef %8)
  store ptr null, ptr %file, align 8
  br label %if.end16

if.end16:                                         ; preds = %fail, %if.then14, %if.end7
  %9 = load ptr, ptr %file, align 8
  ret ptr %9
}

declare i32 @fclose(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define ptr @id3_file_fdopen(i32 noundef %fd, i32 noundef %mode) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %iofile = alloca ptr, align 8
  %file = alloca ptr, align 8
  store i32 %fd, ptr %fd.addr, align 4
  store i32 %mode, ptr %mode.addr, align 4
  %cmp = icmp eq i32 %mode, 1
  %cond = select i1 %cmp, ptr @.str, ptr @.str.1
  %call = call ptr @"\01_fdopen"(i32 noundef %fd, ptr noundef nonnull %cond) #6
  store ptr %call, ptr %iofile, align 8
  %cmp1 = icmp eq ptr %call, null
  br i1 %cmp1, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %iofile, align 8
  %1 = load i32, ptr %mode.addr, align 4
  %call2 = call ptr @new_file(ptr noundef %0, i32 noundef %1)
  store ptr %call2, ptr %file, align 8
  %cmp3 = icmp eq ptr %call2, null
  br i1 %cmp3, label %if.then4, label %if.end9

if.then4:                                         ; preds = %if.end
  %2 = load i32, ptr %fd.addr, align 4
  %call5 = call i32 @dup(i32 noundef %2) #6
  %3 = load ptr, ptr %iofile, align 8
  %call6 = call i32 @fclose(ptr noundef %3) #6
  %call7 = call i32 @dup2(i32 noundef %call5, i32 noundef %2) #6
  %call8 = call i32 @close(i32 noundef %call5) #6
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.end
  %4 = load ptr, ptr %file, align 8
  br label %return

return:                                           ; preds = %entry, %if.end9
  %storemerge = phi ptr [ %4, %if.end9 ], [ null, %entry ]
  ret ptr %storemerge
}

declare ptr @"\01_fdopen"(i32 noundef, ptr noundef) #1

declare i32 @dup(...) #1

declare i32 @dup2(...) #1

declare i32 @close(...) #1

; Function Attrs: nounwind ssp uwtable
define void @id3_file_close(ptr noundef %file) #0 {
entry:
  %0 = load ptr, ptr %file, align 8
  %call = call i32 @fclose(ptr noundef %0) #6
  call void @finish_file(ptr noundef nonnull %file)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @finish_file(ptr noundef %file) #0 {
entry:
  %file.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  %primary = getelementptr inbounds %struct.id3_file, ptr %file, i64 0, i32 4
  %0 = load ptr, ptr %primary, align 8
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %file.addr, align 8
  %primary1 = getelementptr inbounds %struct.id3_file, ptr %1, i64 0, i32 4
  %2 = load ptr, ptr %primary1, align 8
  call void @id3_tag_delref(ptr noundef %2) #6
  %primary2 = getelementptr inbounds %struct.id3_file, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %primary2, align 8
  call void @id3_tag_delete(ptr noundef %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end
  %storemerge = phi i32 [ 0, %if.end ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %4 = load ptr, ptr %file.addr, align 8
  %ntags = getelementptr inbounds %struct.id3_file, ptr %4, i64 0, i32 5
  %5 = load i32, ptr %ntags, align 8
  %cmp = icmp ult i32 %storemerge, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %file.addr, align 8
  %tags = getelementptr inbounds %struct.id3_file, ptr %6, i64 0, i32 6
  %7 = load ptr, ptr %tags, align 8
  %8 = load i32, ptr %i, align 4
  %idxprom = zext i32 %8 to i64
  %arrayidx = getelementptr inbounds %struct.filetag, ptr %7, i64 %idxprom
  %9 = load ptr, ptr %arrayidx, align 8
  call void @id3_tag_delref(ptr noundef %9) #6
  %10 = load ptr, ptr %file.addr, align 8
  %tags3 = getelementptr inbounds %struct.id3_file, ptr %10, i64 0, i32 6
  %11 = load ptr, ptr %tags3, align 8
  %12 = load i32, ptr %i, align 4
  %idxprom4 = zext i32 %12 to i64
  %arrayidx5 = getelementptr inbounds %struct.filetag, ptr %11, i64 %idxprom4
  %13 = load ptr, ptr %arrayidx5, align 8
  call void @id3_tag_delete(ptr noundef %13) #6
  %14 = load i32, ptr %i, align 4
  %inc = add i32 %14, 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %15 = load ptr, ptr %file.addr, align 8
  %tags7 = getelementptr inbounds %struct.id3_file, ptr %15, i64 0, i32 6
  %16 = load ptr, ptr %tags7, align 8
  %tobool8.not = icmp eq ptr %16, null
  br i1 %tobool8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %for.end
  %17 = load ptr, ptr %file.addr, align 8
  %tags10 = getelementptr inbounds %struct.id3_file, ptr %17, i64 0, i32 6
  %18 = load ptr, ptr %tags10, align 8
  call void @free(ptr noundef %18) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %for.end
  %19 = load ptr, ptr %file.addr, align 8
  call void @free(ptr noundef %19) #6
  ret void
}

; Function Attrs: nounwind ssp uwtable
define ptr @id3_file_tag(ptr noundef %file) #0 {
entry:
  %primary = getelementptr inbounds %struct.id3_file, ptr %file, i64 0, i32 4
  %0 = load ptr, ptr %primary, align 8
  ret ptr %0
}

; Function Attrs: nounwind ssp uwtable
define i32 @id3_file_update(ptr noundef %file) #0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %size = alloca i64, align 8
  %id3v1_data = alloca [128 x i8], align 1
  %id3v2 = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  store ptr null, ptr %id3v2, align 8
  %mode = getelementptr inbounds %struct.id3_file, ptr %file, i64 0, i32 1
  %0 = load i32, ptr %mode, align 8
  %cmp.not = icmp eq i32 %0, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %file.addr, align 8
  %options = getelementptr inbounds %struct.id3_file, ptr %1, i64 0, i32 3
  %2 = load i32, ptr %options, align 8
  %and = and i32 %2, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end21, label %if.then1

if.then1:                                         ; preds = %if.end
  %3 = load ptr, ptr %file.addr, align 8
  %primary = getelementptr inbounds %struct.id3_file, ptr %3, i64 0, i32 4
  %4 = load ptr, ptr %primary, align 8
  %options2 = getelementptr inbounds %struct.id3_tag, ptr %4, i64 0, i32 5
  %5 = load i32, ptr %options2, align 4
  %or = or i32 %5, 256
  store i32 %or, ptr %options2, align 4
  %6 = load ptr, ptr %file.addr, align 8
  %primary3 = getelementptr inbounds %struct.id3_file, ptr %6, i64 0, i32 4
  %7 = load ptr, ptr %primary3, align 8
  %call = call i64 @id3_tag_render(ptr noundef %7, ptr noundef null) #6
  store i64 %call, ptr %size, align 8
  %tobool4.not = icmp eq i64 %call, 0
  br i1 %tobool4.not, label %if.end21, label %do.body

do.body:                                          ; preds = %if.then1
  %8 = load i64, ptr %size, align 8
  %cmp6 = icmp eq i64 %8, 128
  br i1 %cmp6, label %do.end, label %if.then7

if.then7:                                         ; preds = %do.body
  call void @abort() #8
  unreachable

do.end:                                           ; preds = %do.body
  %9 = load ptr, ptr %file.addr, align 8
  %primary9 = getelementptr inbounds %struct.id3_file, ptr %9, i64 0, i32 4
  %10 = load ptr, ptr %primary9, align 8
  %call10 = call i64 @id3_tag_render(ptr noundef %10, ptr noundef nonnull %id3v1_data) #6
  store i64 %call10, ptr %size, align 8
  %tobool11.not = icmp eq i64 %call10, 0
  %11 = load i64, ptr %size, align 8
  %cmp14 = icmp eq i64 %11, 128
  %or.cond = select i1 %tobool11.not, i1 true, i1 %cmp14
  br i1 %or.cond, label %if.end21, label %if.then15

if.then15:                                        ; preds = %do.end
  call void @abort() #8
  unreachable

if.end21:                                         ; preds = %if.then1, %do.end, %if.end
  %12 = load ptr, ptr %file.addr, align 8
  %primary22 = getelementptr inbounds %struct.id3_file, ptr %12, i64 0, i32 4
  %13 = load ptr, ptr %primary22, align 8
  %options23 = getelementptr inbounds %struct.id3_tag, ptr %13, i64 0, i32 5
  %14 = load i32, ptr %options23, align 4
  %and24 = and i32 %14, -257
  store i32 %and24, ptr %options23, align 4
  %15 = load ptr, ptr %file.addr, align 8
  %primary25 = getelementptr inbounds %struct.id3_file, ptr %15, i64 0, i32 4
  %16 = load ptr, ptr %primary25, align 8
  %call26 = call i64 @id3_tag_render(ptr noundef %16, ptr noundef null) #6
  store i64 %call26, ptr %size, align 8
  %tobool27.not = icmp eq i64 %call26, 0
  br i1 %tobool27.not, label %if.end38, label %if.then28

if.then28:                                        ; preds = %if.end21
  %17 = load i64, ptr %size, align 8
  %call29 = call ptr @malloc(i64 noundef %17) #7
  store ptr %call29, ptr %id3v2, align 8
  %cmp30 = icmp eq ptr %call29, null
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.then28
  store i32 -1, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.then28
  %18 = load ptr, ptr %file.addr, align 8
  %primary33 = getelementptr inbounds %struct.id3_file, ptr %18, i64 0, i32 4
  %19 = load ptr, ptr %primary33, align 8
  %20 = load ptr, ptr %id3v2, align 8
  %call34 = call i64 @id3_tag_render(ptr noundef %19, ptr noundef %20) #6
  store i64 %call34, ptr %size, align 8
  %cmp35 = icmp eq i64 %call34, 0
  br i1 %cmp35, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.end32
  %21 = load ptr, ptr %id3v2, align 8
  call void @free(ptr noundef %21) #6
  store ptr null, ptr %id3v2, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.end32, %if.then36, %if.end21
  %22 = load ptr, ptr %id3v2, align 8
  %tobool39.not = icmp eq ptr %22, null
  br i1 %tobool39.not, label %if.end41, label %if.then40

if.then40:                                        ; preds = %if.end38
  %23 = load ptr, ptr %id3v2, align 8
  call void @free(ptr noundef %23) #6
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end38
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end41, %if.then31, %if.then
  %24 = load i32, ptr %retval, align 4
  ret i32 %24
}

declare i64 @id3_tag_render(ptr noundef, ptr noundef) #1

; Function Attrs: cold noreturn
declare void @abort() #2

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #3

declare void @free(ptr noundef) #1

declare ptr @id3_tag_new() #1

declare void @id3_tag_addref(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
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
  %0 = load ptr, ptr %file, align 8
  %call = call i32 @fgetpos(ptr noundef %0, ptr noundef nonnull %save_position) #6
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %file.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %call2 = call i32 @fseek(ptr noundef %2, i64 noundef -128, i32 noundef 2) #6
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end15

if.then4:                                         ; preds = %if.end
  %3 = load ptr, ptr %file.addr, align 8
  %4 = load ptr, ptr %3, align 8
  %call6 = call i64 @query_tag(ptr noundef %4)
  store i64 %call6, ptr %size, align 8
  %cmp7 = icmp sgt i64 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end15

if.then8:                                         ; preds = %if.then4
  %5 = load ptr, ptr %file.addr, align 8
  %6 = load i64, ptr %size, align 8
  %call9 = call i32 @add_tag(ptr noundef %5, i64 noundef %6)
  %cmp10 = icmp eq i32 %call9, -1
  br i1 %cmp10, label %fail, label %if.end12

if.end12:                                         ; preds = %if.then8
  %7 = load ptr, ptr %file.addr, align 8
  %flags = getelementptr inbounds %struct.id3_file, ptr %7, i64 0, i32 2
  %8 = load i32, ptr %flags, align 4
  %or = or i32 %8, 1
  store i32 %or, ptr %flags, align 4
  %options = getelementptr inbounds %struct.id3_file, ptr %7, i64 0, i32 3
  %9 = load i32, ptr %options, align 8
  %or13 = or i32 %9, 1
  store i32 %or13, ptr %options, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then4, %if.end12, %if.end
  %10 = load ptr, ptr %file.addr, align 8
  %11 = load ptr, ptr %10, align 8
  call void @rewind(ptr noundef %11) #6
  %12 = load ptr, ptr %10, align 8
  %call18 = call i64 @query_tag(ptr noundef %12)
  store i64 %call18, ptr %size, align 8
  %cmp19 = icmp sgt i64 %call18, 0
  br i1 %cmp19, label %if.then20, label %if.end43

if.then20:                                        ; preds = %if.end15
  %13 = load ptr, ptr %file.addr, align 8
  %14 = load i64, ptr %size, align 8
  %call21 = call i32 @add_tag(ptr noundef %13, i64 noundef %14)
  %cmp22 = icmp eq i32 %call21, -1
  br i1 %cmp22, label %fail, label %while.cond

while.cond:                                       ; preds = %if.else, %if.then20
  %15 = load ptr, ptr %file.addr, align 8
  %tags = getelementptr inbounds %struct.id3_file, ptr %15, i64 0, i32 6
  %16 = load ptr, ptr %tags, align 8
  %ntags = getelementptr inbounds %struct.id3_file, ptr %15, i64 0, i32 5
  %17 = load i32, ptr %ntags, align 8
  %sub = add i32 %17, -1
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds %struct.filetag, ptr %16, i64 %idxprom
  %18 = load ptr, ptr %arrayidx, align 8
  %call25 = call ptr @id3_tag_findframe(ptr noundef %18, ptr noundef nonnull @.str.2, i32 noundef 0) #6
  store ptr %call25, ptr %frame, align 8
  %tobool.not = icmp eq ptr %call25, null
  br i1 %tobool.not, label %if.end43, label %while.body

while.body:                                       ; preds = %while.cond
  %19 = load ptr, ptr %frame, align 8
  %fields = getelementptr inbounds %struct.id3_frame, ptr %19, i64 0, i32 10
  %20 = load ptr, ptr %fields, align 8
  %call27 = call i64 @id3_field_getint(ptr noundef %20) #6
  store i64 %call27, ptr %seek, align 8
  %cmp28 = icmp slt i64 %call27, 0
  br i1 %cmp28, label %if.end43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %21 = load ptr, ptr %file.addr, align 8
  %22 = load ptr, ptr %21, align 8
  %23 = load i64, ptr %seek, align 8
  %call30 = call i32 @fseek(ptr noundef %22, i64 noundef %23, i32 noundef 1) #6
  %cmp31 = icmp eq i32 %call30, -1
  br i1 %cmp31, label %if.end43, label %if.end33

if.end33:                                         ; preds = %lor.lhs.false
  %24 = load ptr, ptr %file.addr, align 8
  %25 = load ptr, ptr %24, align 8
  %call35 = call i64 @query_tag(ptr noundef %25)
  store i64 %call35, ptr %size, align 8
  %cmp36 = icmp slt i64 %call35, 1
  br i1 %cmp36, label %if.end43, label %if.else

if.else:                                          ; preds = %if.end33
  %26 = load ptr, ptr %file.addr, align 8
  %27 = load i64, ptr %size, align 8
  %call38 = call i32 @add_tag(ptr noundef %26, i64 noundef %27)
  %cmp39 = icmp eq i32 %call38, -1
  br i1 %cmp39, label %fail, label %while.cond, !llvm.loop !8

if.end43:                                         ; preds = %while.cond, %lor.lhs.false, %while.body, %if.end33, %if.end15
  %28 = load ptr, ptr %file.addr, align 8
  %29 = load ptr, ptr %28, align 8
  %flags45 = getelementptr inbounds %struct.id3_file, ptr %28, i64 0, i32 2
  %30 = load i32, ptr %flags45, align 4
  %and = and i32 %30, 1
  %tobool46.not = icmp eq i32 %and, 0
  %add = select i1 %tobool46.not, i64 -10, i64 -138
  %call47 = call i32 @fseek(ptr noundef %29, i64 noundef %add, i32 noundef 2) #6
  %cmp48 = icmp eq i32 %call47, 0
  br i1 %cmp48, label %if.then50, label %if.end73

if.then50:                                        ; preds = %if.end43
  %31 = load ptr, ptr %file.addr, align 8
  %32 = load ptr, ptr %31, align 8
  %call52 = call i64 @query_tag(ptr noundef %32)
  store i64 %call52, ptr %size, align 8
  %cmp53 = icmp slt i64 %call52, 0
  br i1 %cmp53, label %land.lhs.true, label %if.end73

land.lhs.true:                                    ; preds = %if.then50
  %33 = load ptr, ptr %file.addr, align 8
  %34 = load ptr, ptr %33, align 8
  %35 = load i64, ptr %size, align 8
  %call56 = call i32 @fseek(ptr noundef %34, i64 noundef %35, i32 noundef 1) #6
  %cmp57 = icmp eq i32 %call56, 0
  br i1 %cmp57, label %if.then59, label %if.end73

if.then59:                                        ; preds = %land.lhs.true
  %36 = load ptr, ptr %file.addr, align 8
  %37 = load ptr, ptr %36, align 8
  %call61 = call i64 @query_tag(ptr noundef %37)
  store i64 %call61, ptr %size, align 8
  %cmp62 = icmp sgt i64 %call61, 0
  br i1 %cmp62, label %land.lhs.true64, label %if.end73

land.lhs.true64:                                  ; preds = %if.then59
  %38 = load ptr, ptr %file.addr, align 8
  %39 = load i64, ptr %size, align 8
  %call65 = call i32 @add_tag(ptr noundef %38, i64 noundef %39)
  %cmp66 = icmp eq i32 %call65, -1
  br i1 %cmp66, label %fail, label %if.end73

fail:                                             ; preds = %land.lhs.true64, %if.else, %if.then20, %if.then8
  store i32 -1, ptr %result, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.end43, %if.then59, %land.lhs.true64, %land.lhs.true, %if.then50, %fail
  %40 = load ptr, ptr %file.addr, align 8
  %41 = load ptr, ptr %40, align 8
  call void @clearerr(ptr noundef %41) #6
  %42 = load ptr, ptr %40, align 8
  %call76 = call i32 @fsetpos(ptr noundef %42, ptr noundef nonnull %save_position) #6
  %cmp77 = icmp eq i32 %call76, -1
  br i1 %cmp77, label %if.then79, label %if.end80

if.then79:                                        ; preds = %if.end73
  store i32 -1, ptr %retval, align 4
  br label %return

if.end80:                                         ; preds = %if.end73
  %43 = load i32, ptr %result, align 4
  store i32 %43, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end80, %if.then79, %if.then
  %44 = load i32, ptr %retval, align 4
  ret i32 %44
}

declare i32 @fgetpos(ptr noundef, ptr noundef) #1

declare i32 @fseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i64 @query_tag(ptr noundef %iofile) #0 {
entry:
  %retval = alloca i64, align 8
  %iofile.addr = alloca ptr, align 8
  %save_position = alloca i64, align 8
  %query = alloca [10 x i8], align 1
  %size = alloca i64, align 8
  store ptr %iofile, ptr %iofile.addr, align 8
  %call = call i32 @fgetpos(ptr noundef %iofile, ptr noundef nonnull %save_position) #6
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %iofile.addr, align 8
  %call2 = call i64 @fread(ptr noundef nonnull %query, i64 noundef 1, i64 noundef 10, ptr noundef %0) #6
  %call3 = call i64 @id3_tag_query(ptr noundef nonnull %query, i64 noundef %call2) #6
  store i64 %call3, ptr %size, align 8
  %call4 = call i32 @fsetpos(ptr noundef %0, ptr noundef nonnull %save_position) #6
  %cmp5 = icmp eq i32 %call4, -1
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  store i64 0, ptr %retval, align 8
  br label %return

if.end7:                                          ; preds = %if.end
  %1 = load i64, ptr %size, align 8
  store i64 %1, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end7, %if.then6, %if.then
  %2 = load i64, ptr %retval, align 8
  ret i64 %2
}

; Function Attrs: nounwind ssp uwtable
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
  %0 = load ptr, ptr %file, align 8
  %call = call i64 @ftell(ptr noundef %0) #6
  store i64 %call, ptr %location, align 8
  %cmp = icmp eq i64 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %location, align 8
  store i64 %1, ptr %begin1, align 8
  %2 = load i64, ptr %length.addr, align 8
  %add = add i64 %1, %2
  store i64 %add, ptr %end1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %storemerge = phi i32 [ 0, %if.end ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr %i, align 4
  %3 = load ptr, ptr %file.addr, align 8
  %ntags = getelementptr inbounds %struct.id3_file, ptr %3, i64 0, i32 5
  %4 = load i32, ptr %ntags, align 8
  %cmp1 = icmp ult i32 %storemerge, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %file.addr, align 8
  %tags2 = getelementptr inbounds %struct.id3_file, ptr %5, i64 0, i32 6
  %6 = load ptr, ptr %tags2, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom = zext i32 %7 to i64
  %location3 = getelementptr inbounds %struct.filetag, ptr %6, i64 %idxprom, i32 1
  %8 = load i64, ptr %location3, align 8
  store i64 %8, ptr %begin2, align 8
  %9 = load ptr, ptr %file.addr, align 8
  %tags4 = getelementptr inbounds %struct.id3_file, ptr %9, i64 0, i32 6
  %10 = load ptr, ptr %tags4, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom5 = zext i32 %11 to i64
  %length7 = getelementptr inbounds %struct.filetag, ptr %10, i64 %idxprom5, i32 2
  %12 = load i64, ptr %length7, align 8
  %add8 = add i64 %8, %12
  store i64 %add8, ptr %end2, align 8
  %13 = load i64, ptr %begin1, align 8
  %14 = load i64, ptr %begin2, align 8
  %cmp9 = icmp eq i64 %13, %14
  br i1 %cmp9, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %for.body
  %15 = load i64, ptr %end1, align 8
  %16 = load i64, ptr %end2, align 8
  %cmp10 = icmp eq i64 %15, %16
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %land.lhs.true, %for.body
  %17 = load i64, ptr %begin1, align 8
  %18 = load i64, ptr %end2, align 8
  %cmp13 = icmp ult i64 %17, %18
  br i1 %cmp13, label %land.lhs.true14, label %for.inc

land.lhs.true14:                                  ; preds = %if.end12
  %19 = load i64, ptr %end1, align 8
  %20 = load i64, ptr %begin2, align 8
  %cmp15 = icmp ugt i64 %19, %20
  br i1 %cmp15, label %if.then16, label %for.inc

if.then16:                                        ; preds = %land.lhs.true14
  store i32 -1, ptr %retval, align 4
  br label %return

for.inc:                                          ; preds = %if.end12, %land.lhs.true14
  %21 = load i32, ptr %i, align 4
  %inc = add i32 %21, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %22 = load ptr, ptr %file.addr, align 8
  %tags18 = getelementptr inbounds %struct.id3_file, ptr %22, i64 0, i32 6
  %23 = load ptr, ptr %tags18, align 8
  %ntags19 = getelementptr inbounds %struct.id3_file, ptr %22, i64 0, i32 5
  %24 = load i32, ptr %ntags19, align 8
  %add20 = add i32 %24, 1
  %conv = zext i32 %add20 to i64
  %mul = mul nuw nsw i64 %conv, 24
  %call21 = call ptr @realloc(ptr noundef %23, i64 noundef %mul) #9
  store ptr %call21, ptr %tags, align 8
  %cmp22 = icmp eq ptr %call21, null
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %for.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end25:                                         ; preds = %for.end
  %25 = load ptr, ptr %tags, align 8
  %26 = load ptr, ptr %file.addr, align 8
  %tags26 = getelementptr inbounds %struct.id3_file, ptr %26, i64 0, i32 6
  store ptr %25, ptr %tags26, align 8
  %27 = load ptr, ptr %26, align 8
  %28 = load i64, ptr %length.addr, align 8
  %call28 = call ptr @read_tag(ptr noundef %27, i64 noundef %28)
  store ptr %call28, ptr %tag, align 8
  %cmp29 = icmp eq ptr %call28, null
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end25
  store i32 -1, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.end25
  %29 = load ptr, ptr %file.addr, align 8
  %primary = getelementptr inbounds %struct.id3_file, ptr %29, i64 0, i32 4
  %30 = load ptr, ptr %primary, align 8
  %31 = load ptr, ptr %tag, align 8
  %call33 = call i32 @update_primary(ptr noundef %30, ptr noundef %31)
  %cmp34 = icmp eq i32 %call33, -1
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end32
  %32 = load ptr, ptr %tag, align 8
  call void @id3_tag_delete(ptr noundef %32) #6
  store i32 -1, ptr %retval, align 4
  br label %return

if.end37:                                         ; preds = %if.end32
  %33 = load ptr, ptr %tag, align 8
  store ptr %33, ptr %filetag, align 8
  %34 = load i64, ptr %location, align 8
  %location39 = getelementptr inbounds %struct.filetag, ptr %filetag, i64 0, i32 1
  store i64 %34, ptr %location39, align 8
  %35 = load i64, ptr %length.addr, align 8
  %length40 = getelementptr inbounds %struct.filetag, ptr %filetag, i64 0, i32 2
  store i64 %35, ptr %length40, align 8
  %36 = load ptr, ptr %file.addr, align 8
  %tags41 = getelementptr inbounds %struct.id3_file, ptr %36, i64 0, i32 6
  %37 = load ptr, ptr %tags41, align 8
  %ntags42 = getelementptr inbounds %struct.id3_file, ptr %36, i64 0, i32 5
  %38 = load i32, ptr %ntags42, align 8
  %inc43 = add i32 %38, 1
  store i32 %inc43, ptr %ntags42, align 8
  %idxprom44 = zext i32 %38 to i64
  %arrayidx45 = getelementptr inbounds %struct.filetag, ptr %37, i64 %idxprom44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %arrayidx45, ptr noundef nonnull align 8 dereferenceable(24) %filetag, i64 24, i1 false)
  %39 = load ptr, ptr %tag, align 8
  call void @id3_tag_addref(ptr noundef %39) #6
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end37, %if.then36, %if.then31, %if.then24, %if.then16, %if.then11, %if.then
  %40 = load i32, ptr %retval, align 4
  ret i32 %40
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

; Function Attrs: nounwind ssp uwtable
define internal ptr @read_tag(ptr noundef %iofile, i64 noundef %size) #0 {
entry:
  %iofile.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %data = alloca ptr, align 8
  %tag = alloca ptr, align 8
  store ptr %iofile, ptr %iofile.addr, align 8
  store i64 %size, ptr %size.addr, align 8
  store ptr null, ptr %tag, align 8
  %call = call ptr @malloc(i64 noundef %size) #7
  store ptr %call, ptr %data, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %data, align 8
  %1 = load i64, ptr %size.addr, align 8
  %2 = load ptr, ptr %iofile.addr, align 8
  %call1 = call i64 @fread(ptr noundef %0, i64 noundef %1, i64 noundef 1, ptr noundef %2) #6
  %cmp = icmp eq i64 %call1, 1
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %3 = load ptr, ptr %data, align 8
  %4 = load i64, ptr %size.addr, align 8
  %call3 = call ptr @id3_tag_parse(ptr noundef %3, i64 noundef %4) #6
  store ptr %call3, ptr %tag, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %5 = load ptr, ptr %data, align 8
  call void @free(ptr noundef %5) #6
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %6 = load ptr, ptr %tag, align 8
  ret ptr %6
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @update_primary(ptr noundef %tag, ptr noundef %new) #0 {
entry:
  %tag.addr = alloca ptr, align 8
  %new.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %tag, ptr %tag.addr, align 8
  store ptr %new, ptr %new.addr, align 8
  %extendedflags = getelementptr inbounds %struct.id3_tag, ptr %new, i64 0, i32 3
  %0 = load i32, ptr %extendedflags, align 4
  %and = and i32 %0, 64
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %tag.addr, align 8
  call void @id3_tag_clearframes(ptr noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %storemerge = phi i32 [ 0, %if.end ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr %i, align 4
  %2 = load ptr, ptr %new.addr, align 8
  %nframes = getelementptr inbounds %struct.id3_tag, ptr %2, i64 0, i32 6
  %3 = load i32, ptr %nframes, align 8
  %cmp = icmp ult i32 %storemerge, %3
  br i1 %cmp, label %for.body, label %return

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %tag.addr, align 8
  %5 = load ptr, ptr %new.addr, align 8
  %frames = getelementptr inbounds %struct.id3_tag, ptr %5, i64 0, i32 7
  %6 = load ptr, ptr %frames, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %idxprom
  %8 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @id3_tag_attachframe(ptr noundef %4, ptr noundef %8) #6
  %cmp1 = icmp eq i32 %call, -1
  br i1 %cmp1, label %return, label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4
  %inc = add i32 %9, 1
  br label %for.cond, !llvm.loop !10

return:                                           ; preds = %for.cond, %for.body
  %storemerge1 = phi i32 [ -1, %for.body ], [ 0, %for.cond ]
  ret i32 %storemerge1
}

declare void @id3_tag_delete(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare ptr @id3_tag_parse(ptr noundef, i64 noundef) #1

declare void @id3_tag_clearframes(ptr noundef) #1

declare i32 @id3_tag_attachframe(ptr noundef, ptr noundef) #1

declare void @id3_tag_delref(ptr noundef) #1

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { cold noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { allocsize(1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { argmemonly nocallback nofree nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { cold noreturn nounwind }
attributes #9 = { nounwind allocsize(1) }

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
