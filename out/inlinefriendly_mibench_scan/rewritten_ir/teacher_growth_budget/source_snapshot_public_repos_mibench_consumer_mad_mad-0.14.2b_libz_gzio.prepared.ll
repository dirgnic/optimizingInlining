; ModuleID = './source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/libz/gzio.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/libz/gzio.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.gz_stream = type { %struct.z_stream_s, i32, i32, ptr, ptr, ptr, i64, ptr, ptr, i32, i8, i64 }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }

@.str = private unnamed_addr constant [8 x i8] c"<fd:%d>\00", align 1
@z_errmsg = external global [10 x ptr], align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"1.1.3\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"%c%c%c%c%c%c%c%c%c%c\00", align 1
@gz_magic = internal global [2 x i32] [i32 31, i32 139], align 4

; Function Attrs: nounwind ssp uwtable
define ptr @gzopen(ptr noundef %path, ptr noundef %mode) #0 {
entry:
  %path.addr = alloca ptr, align 8
  %mode.addr = alloca ptr, align 8
  store ptr %path, ptr %path.addr, align 8
  store ptr %mode, ptr %mode.addr, align 8
  %0 = load ptr, ptr %path.addr, align 8
  %1 = load ptr, ptr %mode.addr, align 8
  %call = call ptr @gz_open(ptr noundef %0, ptr noundef %1, i32 noundef -1)
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @gz_open(ptr noundef %path, ptr noundef %mode, i32 noundef %fd) #0 {
entry:
  %retval = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %mode.addr = alloca ptr, align 8
  %fd.addr = alloca i32, align 4
  %err = alloca i32, align 4
  %level = alloca i32, align 4
  %strategy = alloca i32, align 4
  %p = alloca ptr, align 8
  %s = alloca ptr, align 8
  %fmode = alloca [80 x i8], align 1
  %m = alloca ptr, align 8
  store ptr %path, ptr %path.addr, align 8
  store ptr %mode, ptr %mode.addr, align 8
  store i32 %fd, ptr %fd.addr, align 4
  store i32 -1, ptr %level, align 4
  store i32 0, ptr %strategy, align 4
  %0 = load ptr, ptr %mode.addr, align 8
  store ptr %0, ptr %p, align 8
  %arraydecay = getelementptr inbounds [80 x i8], ptr %fmode, i64 0, i64 0
  store ptr %arraydecay, ptr %m, align 8
  %1 = load ptr, ptr %path.addr, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %mode.addr, align 8
  %tobool1 = icmp ne ptr %2, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %call = call ptr @malloc(i64 noundef 184) #6
  store ptr %call, ptr %s, align 8
  %3 = load ptr, ptr %s, align 8
  %tobool2 = icmp ne ptr %3, null
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %s, align 8
  %stream = getelementptr inbounds %struct.gz_stream, ptr %4, i32 0, i32 0
  %zalloc = getelementptr inbounds %struct.z_stream_s, ptr %stream, i32 0, i32 8
  store ptr null, ptr %zalloc, align 8
  %5 = load ptr, ptr %s, align 8
  %stream5 = getelementptr inbounds %struct.gz_stream, ptr %5, i32 0, i32 0
  %zfree = getelementptr inbounds %struct.z_stream_s, ptr %stream5, i32 0, i32 9
  store ptr null, ptr %zfree, align 8
  %6 = load ptr, ptr %s, align 8
  %stream6 = getelementptr inbounds %struct.gz_stream, ptr %6, i32 0, i32 0
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %stream6, i32 0, i32 10
  store ptr null, ptr %opaque, align 8
  %7 = load ptr, ptr %s, align 8
  %inbuf = getelementptr inbounds %struct.gz_stream, ptr %7, i32 0, i32 4
  store ptr null, ptr %inbuf, align 8
  %8 = load ptr, ptr %s, align 8
  %stream7 = getelementptr inbounds %struct.gz_stream, ptr %8, i32 0, i32 0
  %next_in = getelementptr inbounds %struct.z_stream_s, ptr %stream7, i32 0, i32 0
  store ptr null, ptr %next_in, align 8
  %9 = load ptr, ptr %s, align 8
  %outbuf = getelementptr inbounds %struct.gz_stream, ptr %9, i32 0, i32 5
  store ptr null, ptr %outbuf, align 8
  %10 = load ptr, ptr %s, align 8
  %stream8 = getelementptr inbounds %struct.gz_stream, ptr %10, i32 0, i32 0
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %stream8, i32 0, i32 3
  store ptr null, ptr %next_out, align 8
  %11 = load ptr, ptr %s, align 8
  %stream9 = getelementptr inbounds %struct.gz_stream, ptr %11, i32 0, i32 0
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %stream9, i32 0, i32 4
  store i32 0, ptr %avail_out, align 8
  %12 = load ptr, ptr %s, align 8
  %stream10 = getelementptr inbounds %struct.gz_stream, ptr %12, i32 0, i32 0
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %stream10, i32 0, i32 1
  store i32 0, ptr %avail_in, align 8
  %13 = load ptr, ptr %s, align 8
  %file = getelementptr inbounds %struct.gz_stream, ptr %13, i32 0, i32 3
  store ptr null, ptr %file, align 8
  %14 = load ptr, ptr %s, align 8
  %z_err = getelementptr inbounds %struct.gz_stream, ptr %14, i32 0, i32 1
  store i32 0, ptr %z_err, align 8
  %15 = load ptr, ptr %s, align 8
  %z_eof = getelementptr inbounds %struct.gz_stream, ptr %15, i32 0, i32 2
  store i32 0, ptr %z_eof, align 4
  %call11 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0)
  %16 = load ptr, ptr %s, align 8
  %crc = getelementptr inbounds %struct.gz_stream, ptr %16, i32 0, i32 6
  store i64 %call11, ptr %crc, align 8
  %17 = load ptr, ptr %s, align 8
  %msg = getelementptr inbounds %struct.gz_stream, ptr %17, i32 0, i32 7
  store ptr null, ptr %msg, align 8
  %18 = load ptr, ptr %s, align 8
  %transparent = getelementptr inbounds %struct.gz_stream, ptr %18, i32 0, i32 9
  store i32 0, ptr %transparent, align 8
  %19 = load ptr, ptr %path.addr, align 8
  %call12 = call i64 @strlen(ptr noundef %19)
  %add = add i64 %call12, 1
  %call13 = call ptr @malloc(i64 noundef %add) #6
  %20 = load ptr, ptr %s, align 8
  %path14 = getelementptr inbounds %struct.gz_stream, ptr %20, i32 0, i32 8
  store ptr %call13, ptr %path14, align 8
  %21 = load ptr, ptr %s, align 8
  %path15 = getelementptr inbounds %struct.gz_stream, ptr %21, i32 0, i32 8
  %22 = load ptr, ptr %path15, align 8
  %cmp = icmp eq ptr %22, null
  br i1 %cmp, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end4
  %23 = load ptr, ptr %s, align 8
  %call17 = call i32 @destroy(ptr noundef %23)
  store ptr null, ptr %retval, align 8
  br label %return

if.end18:                                         ; preds = %if.end4
  %24 = load ptr, ptr %s, align 8
  %path19 = getelementptr inbounds %struct.gz_stream, ptr %24, i32 0, i32 8
  %25 = load ptr, ptr %path19, align 8
  %26 = load ptr, ptr %path.addr, align 8
  %27 = load ptr, ptr %s, align 8
  %path20 = getelementptr inbounds %struct.gz_stream, ptr %27, i32 0, i32 8
  %28 = load ptr, ptr %path20, align 8
  %29 = call i64 @llvm.objectsize.i64.p0(ptr %28, i1 false, i1 true, i1 false)
  %call21 = call ptr @__strcpy_chk(ptr noundef %25, ptr noundef %26, i64 noundef %29) #7
  %30 = load ptr, ptr %s, align 8
  %mode22 = getelementptr inbounds %struct.gz_stream, ptr %30, i32 0, i32 10
  store i8 0, ptr %mode22, align 4
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end18
  %31 = load ptr, ptr %p, align 8
  %32 = load i8, ptr %31, align 1
  %conv = sext i8 %32 to i32
  %cmp23 = icmp eq i32 %conv, 114
  br i1 %cmp23, label %if.then25, label %if.end27

if.then25:                                        ; preds = %do.body
  %33 = load ptr, ptr %s, align 8
  %mode26 = getelementptr inbounds %struct.gz_stream, ptr %33, i32 0, i32 10
  store i8 114, ptr %mode26, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %do.body
  %34 = load ptr, ptr %p, align 8
  %35 = load i8, ptr %34, align 1
  %conv28 = sext i8 %35 to i32
  %cmp29 = icmp eq i32 %conv28, 119
  br i1 %cmp29, label %if.then35, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %if.end27
  %36 = load ptr, ptr %p, align 8
  %37 = load i8, ptr %36, align 1
  %conv32 = sext i8 %37 to i32
  %cmp33 = icmp eq i32 %conv32, 97
  br i1 %cmp33, label %if.then35, label %if.end37

if.then35:                                        ; preds = %lor.lhs.false31, %if.end27
  %38 = load ptr, ptr %s, align 8
  %mode36 = getelementptr inbounds %struct.gz_stream, ptr %38, i32 0, i32 10
  store i8 119, ptr %mode36, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %lor.lhs.false31
  %39 = load ptr, ptr %p, align 8
  %40 = load i8, ptr %39, align 1
  %conv38 = sext i8 %40 to i32
  %cmp39 = icmp sge i32 %conv38, 48
  br i1 %cmp39, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end37
  %41 = load ptr, ptr %p, align 8
  %42 = load i8, ptr %41, align 1
  %conv41 = sext i8 %42 to i32
  %cmp42 = icmp sle i32 %conv41, 57
  br i1 %cmp42, label %if.then44, label %if.else

if.then44:                                        ; preds = %land.lhs.true
  %43 = load ptr, ptr %p, align 8
  %44 = load i8, ptr %43, align 1
  %conv45 = sext i8 %44 to i32
  %sub = sub nsw i32 %conv45, 48
  store i32 %sub, ptr %level, align 4
  br label %if.end58

if.else:                                          ; preds = %land.lhs.true, %if.end37
  %45 = load ptr, ptr %p, align 8
  %46 = load i8, ptr %45, align 1
  %conv46 = sext i8 %46 to i32
  %cmp47 = icmp eq i32 %conv46, 102
  br i1 %cmp47, label %if.then49, label %if.else50

if.then49:                                        ; preds = %if.else
  store i32 1, ptr %strategy, align 4
  br label %if.end57

if.else50:                                        ; preds = %if.else
  %47 = load ptr, ptr %p, align 8
  %48 = load i8, ptr %47, align 1
  %conv51 = sext i8 %48 to i32
  %cmp52 = icmp eq i32 %conv51, 104
  br i1 %cmp52, label %if.then54, label %if.else55

if.then54:                                        ; preds = %if.else50
  store i32 2, ptr %strategy, align 4
  br label %if.end56

if.else55:                                        ; preds = %if.else50
  %49 = load ptr, ptr %p, align 8
  %50 = load i8, ptr %49, align 1
  %51 = load ptr, ptr %m, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %51, i32 1
  store ptr %incdec.ptr, ptr %m, align 8
  store i8 %50, ptr %51, align 1
  br label %if.end56

if.end56:                                         ; preds = %if.else55, %if.then54
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.then49
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.then44
  br label %do.cond

do.cond:                                          ; preds = %if.end58
  %52 = load ptr, ptr %p, align 8
  %incdec.ptr59 = getelementptr inbounds i8, ptr %52, i32 1
  store ptr %incdec.ptr59, ptr %p, align 8
  %53 = load i8, ptr %52, align 1
  %conv60 = sext i8 %53 to i32
  %tobool61 = icmp ne i32 %conv60, 0
  br i1 %tobool61, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %54 = load ptr, ptr %m, align 8
  %arraydecay62 = getelementptr inbounds [80 x i8], ptr %fmode, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay62, i64 80
  %cmp63 = icmp ne ptr %54, %add.ptr
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %55 = phi i1 [ false, %do.cond ], [ %cmp63, %land.rhs ]
  br i1 %55, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %land.end
  %56 = load ptr, ptr %s, align 8
  %mode65 = getelementptr inbounds %struct.gz_stream, ptr %56, i32 0, i32 10
  %57 = load i8, ptr %mode65, align 4
  %conv66 = sext i8 %57 to i32
  %cmp67 = icmp eq i32 %conv66, 0
  br i1 %cmp67, label %if.then69, label %if.end71

if.then69:                                        ; preds = %do.end
  %58 = load ptr, ptr %s, align 8
  %call70 = call i32 @destroy(ptr noundef %58)
  store ptr null, ptr %retval, align 8
  br label %return

if.end71:                                         ; preds = %do.end
  %59 = load ptr, ptr %s, align 8
  %mode72 = getelementptr inbounds %struct.gz_stream, ptr %59, i32 0, i32 10
  %60 = load i8, ptr %mode72, align 4
  %conv73 = sext i8 %60 to i32
  %cmp74 = icmp eq i32 %conv73, 119
  br i1 %cmp74, label %if.then76, label %if.else92

if.then76:                                        ; preds = %if.end71
  %61 = load ptr, ptr %s, align 8
  %stream77 = getelementptr inbounds %struct.gz_stream, ptr %61, i32 0, i32 0
  %62 = load i32, ptr %level, align 4
  %63 = load i32, ptr %strategy, align 4
  %call78 = call i32 @deflateInit2_(ptr noundef %stream77, i32 noundef %62, i32 noundef 8, i32 noundef -15, i32 noundef 8, i32 noundef %63, ptr noundef @.str.3, i32 noundef 112)
  store i32 %call78, ptr %err, align 4
  %call79 = call ptr @malloc(i64 noundef 16384) #6
  %64 = load ptr, ptr %s, align 8
  %outbuf80 = getelementptr inbounds %struct.gz_stream, ptr %64, i32 0, i32 5
  store ptr %call79, ptr %outbuf80, align 8
  %65 = load ptr, ptr %s, align 8
  %stream81 = getelementptr inbounds %struct.gz_stream, ptr %65, i32 0, i32 0
  %next_out82 = getelementptr inbounds %struct.z_stream_s, ptr %stream81, i32 0, i32 3
  store ptr %call79, ptr %next_out82, align 8
  %66 = load i32, ptr %err, align 4
  %cmp83 = icmp ne i32 %66, 0
  br i1 %cmp83, label %if.then89, label %lor.lhs.false85

lor.lhs.false85:                                  ; preds = %if.then76
  %67 = load ptr, ptr %s, align 8
  %outbuf86 = getelementptr inbounds %struct.gz_stream, ptr %67, i32 0, i32 5
  %68 = load ptr, ptr %outbuf86, align 8
  %cmp87 = icmp eq ptr %68, null
  br i1 %cmp87, label %if.then89, label %if.end91

if.then89:                                        ; preds = %lor.lhs.false85, %if.then76
  %69 = load ptr, ptr %s, align 8
  %call90 = call i32 @destroy(ptr noundef %69)
  store ptr null, ptr %retval, align 8
  br label %return

if.end91:                                         ; preds = %lor.lhs.false85
  br label %if.end108

if.else92:                                        ; preds = %if.end71
  %call93 = call ptr @malloc(i64 noundef 16384) #6
  %70 = load ptr, ptr %s, align 8
  %inbuf94 = getelementptr inbounds %struct.gz_stream, ptr %70, i32 0, i32 4
  store ptr %call93, ptr %inbuf94, align 8
  %71 = load ptr, ptr %s, align 8
  %stream95 = getelementptr inbounds %struct.gz_stream, ptr %71, i32 0, i32 0
  %next_in96 = getelementptr inbounds %struct.z_stream_s, ptr %stream95, i32 0, i32 0
  store ptr %call93, ptr %next_in96, align 8
  %72 = load ptr, ptr %s, align 8
  %stream97 = getelementptr inbounds %struct.gz_stream, ptr %72, i32 0, i32 0
  %call98 = call i32 @inflateInit2_(ptr noundef %stream97, i32 noundef -15, ptr noundef @.str.3, i32 noundef 112)
  store i32 %call98, ptr %err, align 4
  %73 = load i32, ptr %err, align 4
  %cmp99 = icmp ne i32 %73, 0
  br i1 %cmp99, label %if.then105, label %lor.lhs.false101

lor.lhs.false101:                                 ; preds = %if.else92
  %74 = load ptr, ptr %s, align 8
  %inbuf102 = getelementptr inbounds %struct.gz_stream, ptr %74, i32 0, i32 4
  %75 = load ptr, ptr %inbuf102, align 8
  %cmp103 = icmp eq ptr %75, null
  br i1 %cmp103, label %if.then105, label %if.end107

if.then105:                                       ; preds = %lor.lhs.false101, %if.else92
  %76 = load ptr, ptr %s, align 8
  %call106 = call i32 @destroy(ptr noundef %76)
  store ptr null, ptr %retval, align 8
  br label %return

if.end107:                                        ; preds = %lor.lhs.false101
  br label %if.end108

if.end108:                                        ; preds = %if.end107, %if.end91
  %77 = load ptr, ptr %s, align 8
  %stream109 = getelementptr inbounds %struct.gz_stream, ptr %77, i32 0, i32 0
  %avail_out110 = getelementptr inbounds %struct.z_stream_s, ptr %stream109, i32 0, i32 4
  store i32 16384, ptr %avail_out110, align 8
  %call111 = call ptr @__error()
  store i32 0, ptr %call111, align 4
  %78 = load i32, ptr %fd.addr, align 4
  %cmp112 = icmp slt i32 %78, 0
  br i1 %cmp112, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end108
  %79 = load ptr, ptr %path.addr, align 8
  %arraydecay114 = getelementptr inbounds [80 x i8], ptr %fmode, i64 0, i64 0
  %call115 = call ptr @"\01_fopen"(ptr noundef %79, ptr noundef %arraydecay114)
  br label %cond.end

cond.false:                                       ; preds = %if.end108
  %80 = load i32, ptr %fd.addr, align 4
  %arraydecay116 = getelementptr inbounds [80 x i8], ptr %fmode, i64 0, i64 0
  %call117 = call ptr @"\01_fdopen"(i32 noundef %80, ptr noundef %arraydecay116)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call115, %cond.true ], [ %call117, %cond.false ]
  %81 = load ptr, ptr %s, align 8
  %file118 = getelementptr inbounds %struct.gz_stream, ptr %81, i32 0, i32 3
  store ptr %cond, ptr %file118, align 8
  %82 = load ptr, ptr %s, align 8
  %file119 = getelementptr inbounds %struct.gz_stream, ptr %82, i32 0, i32 3
  %83 = load ptr, ptr %file119, align 8
  %cmp120 = icmp eq ptr %83, null
  br i1 %cmp120, label %if.then122, label %if.end124

if.then122:                                       ; preds = %cond.end
  %84 = load ptr, ptr %s, align 8
  %call123 = call i32 @destroy(ptr noundef %84)
  store ptr null, ptr %retval, align 8
  br label %return

if.end124:                                        ; preds = %cond.end
  %85 = load ptr, ptr %s, align 8
  %mode125 = getelementptr inbounds %struct.gz_stream, ptr %85, i32 0, i32 10
  %86 = load i8, ptr %mode125, align 4
  %conv126 = sext i8 %86 to i32
  %cmp127 = icmp eq i32 %conv126, 119
  br i1 %cmp127, label %if.then129, label %if.else132

if.then129:                                       ; preds = %if.end124
  %87 = load ptr, ptr %s, align 8
  %file130 = getelementptr inbounds %struct.gz_stream, ptr %87, i32 0, i32 3
  %88 = load ptr, ptr %file130, align 8
  %89 = load i32, ptr @gz_magic, align 4
  %90 = load i32, ptr getelementptr inbounds ([2 x i32], ptr @gz_magic, i64 0, i64 1), align 4
  %call131 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %88, ptr noundef @.str.4, i32 noundef %89, i32 noundef %90, i32 noundef 8, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 3)
  %91 = load ptr, ptr %s, align 8
  %startpos = getelementptr inbounds %struct.gz_stream, ptr %91, i32 0, i32 11
  store i64 10, ptr %startpos, align 8
  br label %if.end140

if.else132:                                       ; preds = %if.end124
  %92 = load ptr, ptr %s, align 8
  call void @check_header(ptr noundef %92)
  %93 = load ptr, ptr %s, align 8
  %file133 = getelementptr inbounds %struct.gz_stream, ptr %93, i32 0, i32 3
  %94 = load ptr, ptr %file133, align 8
  %call134 = call i64 @ftell(ptr noundef %94)
  %95 = load ptr, ptr %s, align 8
  %stream135 = getelementptr inbounds %struct.gz_stream, ptr %95, i32 0, i32 0
  %avail_in136 = getelementptr inbounds %struct.z_stream_s, ptr %stream135, i32 0, i32 1
  %96 = load i32, ptr %avail_in136, align 8
  %conv137 = zext i32 %96 to i64
  %sub138 = sub nsw i64 %call134, %conv137
  %97 = load ptr, ptr %s, align 8
  %startpos139 = getelementptr inbounds %struct.gz_stream, ptr %97, i32 0, i32 11
  store i64 %sub138, ptr %startpos139, align 8
  br label %if.end140

if.end140:                                        ; preds = %if.else132, %if.then129
  %98 = load ptr, ptr %s, align 8
  store ptr %98, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end140, %if.then122, %if.then105, %if.then89, %if.then69, %if.then16, %if.then3, %if.then
  %99 = load ptr, ptr %retval, align 8
  ret ptr %99
}

; Function Attrs: nounwind ssp uwtable
define ptr @gzdopen(i32 noundef %fd, ptr noundef %mode) #0 {
entry:
  %retval = alloca ptr, align 8
  %fd.addr = alloca i32, align 4
  %mode.addr = alloca ptr, align 8
  %name = alloca [20 x i8], align 1
  store i32 %fd, ptr %fd.addr, align 4
  store ptr %mode, ptr %mode.addr, align 8
  %0 = load i32, ptr %fd.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [20 x i8], ptr %name, i64 0, i64 0
  %1 = load i32, ptr %fd.addr, align 4
  %call = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %arraydecay, i32 noundef 0, i64 noundef 20, ptr noundef @.str, i32 noundef %1)
  %arraydecay1 = getelementptr inbounds [20 x i8], ptr %name, i64 0, i64 0
  %2 = load ptr, ptr %mode.addr, align 8
  %3 = load i32, ptr %fd.addr, align 4
  %call2 = call ptr @gz_open(ptr noundef %arraydecay1, ptr noundef %2, i32 noundef %3)
  store ptr %call2, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load ptr, ptr %retval, align 8
  ret ptr %4
}

declare i32 @__sprintf_chk(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ...) #1

; Function Attrs: nounwind ssp uwtable
define i32 @gzsetparams(ptr noundef %file, i32 noundef %level, i32 noundef %strategy) #0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %level.addr = alloca i32, align 4
  %strategy.addr = alloca i32, align 4
  %s = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  store i32 %level, ptr %level.addr, align 4
  store i32 %strategy, ptr %strategy.addr, align 4
  %0 = load ptr, ptr %file.addr, align 8
  store ptr %0, ptr %s, align 8
  %1 = load ptr, ptr %s, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %s, align 8
  %mode = getelementptr inbounds %struct.gz_stream, ptr %2, i32 0, i32 10
  %3 = load i8, ptr %mode, align 4
  %conv = sext i8 %3 to i32
  %cmp1 = icmp ne i32 %conv, 119
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %s, align 8
  %stream = getelementptr inbounds %struct.gz_stream, ptr %4, i32 0, i32 0
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %stream, i32 0, i32 4
  %5 = load i32, ptr %avail_out, align 8
  %cmp3 = icmp eq i32 %5, 0
  br i1 %cmp3, label %if.then5, label %if.end15

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %s, align 8
  %outbuf = getelementptr inbounds %struct.gz_stream, ptr %6, i32 0, i32 5
  %7 = load ptr, ptr %outbuf, align 8
  %8 = load ptr, ptr %s, align 8
  %stream6 = getelementptr inbounds %struct.gz_stream, ptr %8, i32 0, i32 0
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %stream6, i32 0, i32 3
  store ptr %7, ptr %next_out, align 8
  %9 = load ptr, ptr %s, align 8
  %outbuf7 = getelementptr inbounds %struct.gz_stream, ptr %9, i32 0, i32 5
  %10 = load ptr, ptr %outbuf7, align 8
  %11 = load ptr, ptr %s, align 8
  %file8 = getelementptr inbounds %struct.gz_stream, ptr %11, i32 0, i32 3
  %12 = load ptr, ptr %file8, align 8
  %call = call i64 @"\01_fwrite"(ptr noundef %10, i64 noundef 1, i64 noundef 16384, ptr noundef %12)
  %cmp9 = icmp ne i64 %call, 16384
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then5
  %13 = load ptr, ptr %s, align 8
  %z_err = getelementptr inbounds %struct.gz_stream, ptr %13, i32 0, i32 1
  store i32 -1, ptr %z_err, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.then5
  %14 = load ptr, ptr %s, align 8
  %stream13 = getelementptr inbounds %struct.gz_stream, ptr %14, i32 0, i32 0
  %avail_out14 = getelementptr inbounds %struct.z_stream_s, ptr %stream13, i32 0, i32 4
  store i32 16384, ptr %avail_out14, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.end12, %if.end
  %15 = load ptr, ptr %s, align 8
  %stream16 = getelementptr inbounds %struct.gz_stream, ptr %15, i32 0, i32 0
  %16 = load i32, ptr %level.addr, align 4
  %17 = load i32, ptr %strategy.addr, align 4
  %call17 = call i32 @deflateParams(ptr noundef %stream16, i32 noundef %16, i32 noundef %17)
  store i32 %call17, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end15, %if.then
  %18 = load i32, ptr %retval, align 4
  ret i32 %18
}

declare i64 @"\01_fwrite"(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

declare i32 @deflateParams(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define i32 @gzread(ptr noundef %file, ptr noundef %buf, i32 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %s = alloca ptr, align 8
  %start = alloca ptr, align 8
  %next_out = alloca ptr, align 8
  %n = alloca i32, align 4
  %total_in137 = alloca i64, align 8
  %total_out140 = alloca i64, align 8
  store ptr %file, ptr %file.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  %0 = load ptr, ptr %file.addr, align 8
  store ptr %0, ptr %s, align 8
  %1 = load ptr, ptr %buf.addr, align 8
  store ptr %1, ptr %start, align 8
  %2 = load ptr, ptr %s, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %s, align 8
  %mode = getelementptr inbounds %struct.gz_stream, ptr %3, i32 0, i32 10
  %4 = load i8, ptr %mode, align 4
  %conv = sext i8 %4 to i32
  %cmp1 = icmp ne i32 %conv, 114
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %s, align 8
  %z_err = getelementptr inbounds %struct.gz_stream, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %z_err, align 8
  %cmp3 = icmp eq i32 %6, -3
  br i1 %cmp3, label %if.then9, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %if.end
  %7 = load ptr, ptr %s, align 8
  %z_err6 = getelementptr inbounds %struct.gz_stream, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %z_err6, align 8
  %cmp7 = icmp eq i32 %8, -1
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false5, %if.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %lor.lhs.false5
  %9 = load ptr, ptr %s, align 8
  %z_err11 = getelementptr inbounds %struct.gz_stream, ptr %9, i32 0, i32 1
  %10 = load i32, ptr %z_err11, align 8
  %cmp12 = icmp eq i32 %10, 1
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end10
  store i32 0, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.end10
  %11 = load ptr, ptr %buf.addr, align 8
  store ptr %11, ptr %next_out, align 8
  %12 = load ptr, ptr %buf.addr, align 8
  %13 = load ptr, ptr %s, align 8
  %stream = getelementptr inbounds %struct.gz_stream, ptr %13, i32 0, i32 0
  %next_out16 = getelementptr inbounds %struct.z_stream_s, ptr %stream, i32 0, i32 3
  store ptr %12, ptr %next_out16, align 8
  %14 = load i32, ptr %len.addr, align 4
  %15 = load ptr, ptr %s, align 8
  %stream17 = getelementptr inbounds %struct.gz_stream, ptr %15, i32 0, i32 0
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %stream17, i32 0, i32 4
  store i32 %14, ptr %avail_out, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end161, %if.end15
  %16 = load ptr, ptr %s, align 8
  %stream18 = getelementptr inbounds %struct.gz_stream, ptr %16, i32 0, i32 0
  %avail_out19 = getelementptr inbounds %struct.z_stream_s, ptr %stream18, i32 0, i32 4
  %17 = load i32, ptr %avail_out19, align 8
  %cmp20 = icmp ne i32 %17, 0
  br i1 %cmp20, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load ptr, ptr %s, align 8
  %transparent = getelementptr inbounds %struct.gz_stream, ptr %18, i32 0, i32 9
  %19 = load i32, ptr %transparent, align 8
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then22, label %if.end81

if.then22:                                        ; preds = %while.body
  %20 = load ptr, ptr %s, align 8
  %stream23 = getelementptr inbounds %struct.gz_stream, ptr %20, i32 0, i32 0
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %stream23, i32 0, i32 1
  %21 = load i32, ptr %avail_in, align 8
  store i32 %21, ptr %n, align 4
  %22 = load i32, ptr %n, align 4
  %23 = load ptr, ptr %s, align 8
  %stream24 = getelementptr inbounds %struct.gz_stream, ptr %23, i32 0, i32 0
  %avail_out25 = getelementptr inbounds %struct.z_stream_s, ptr %stream24, i32 0, i32 4
  %24 = load i32, ptr %avail_out25, align 8
  %cmp26 = icmp ugt i32 %22, %24
  br i1 %cmp26, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.then22
  %25 = load ptr, ptr %s, align 8
  %stream29 = getelementptr inbounds %struct.gz_stream, ptr %25, i32 0, i32 0
  %avail_out30 = getelementptr inbounds %struct.z_stream_s, ptr %stream29, i32 0, i32 4
  %26 = load i32, ptr %avail_out30, align 8
  store i32 %26, ptr %n, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.then22
  %27 = load i32, ptr %n, align 4
  %cmp32 = icmp ugt i32 %27, 0
  br i1 %cmp32, label %if.then34, label %if.end52

if.then34:                                        ; preds = %if.end31
  %28 = load ptr, ptr %s, align 8
  %stream35 = getelementptr inbounds %struct.gz_stream, ptr %28, i32 0, i32 0
  %next_out36 = getelementptr inbounds %struct.z_stream_s, ptr %stream35, i32 0, i32 3
  %29 = load ptr, ptr %next_out36, align 8
  %30 = load ptr, ptr %s, align 8
  %stream37 = getelementptr inbounds %struct.gz_stream, ptr %30, i32 0, i32 0
  %next_in = getelementptr inbounds %struct.z_stream_s, ptr %stream37, i32 0, i32 0
  %31 = load ptr, ptr %next_in, align 8
  %32 = load i32, ptr %n, align 4
  %conv38 = zext i32 %32 to i64
  %33 = load ptr, ptr %s, align 8
  %stream39 = getelementptr inbounds %struct.gz_stream, ptr %33, i32 0, i32 0
  %next_out40 = getelementptr inbounds %struct.z_stream_s, ptr %stream39, i32 0, i32 3
  %34 = load ptr, ptr %next_out40, align 8
  %35 = call i64 @llvm.objectsize.i64.p0(ptr %34, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %29, ptr noundef %31, i64 noundef %conv38, i64 noundef %35) #7
  %36 = load i32, ptr %n, align 4
  %37 = load ptr, ptr %next_out, align 8
  %idx.ext = zext i32 %36 to i64
  %add.ptr = getelementptr inbounds i8, ptr %37, i64 %idx.ext
  store ptr %add.ptr, ptr %next_out, align 8
  %38 = load ptr, ptr %next_out, align 8
  %39 = load ptr, ptr %s, align 8
  %stream41 = getelementptr inbounds %struct.gz_stream, ptr %39, i32 0, i32 0
  %next_out42 = getelementptr inbounds %struct.z_stream_s, ptr %stream41, i32 0, i32 3
  store ptr %38, ptr %next_out42, align 8
  %40 = load i32, ptr %n, align 4
  %41 = load ptr, ptr %s, align 8
  %stream43 = getelementptr inbounds %struct.gz_stream, ptr %41, i32 0, i32 0
  %next_in44 = getelementptr inbounds %struct.z_stream_s, ptr %stream43, i32 0, i32 0
  %42 = load ptr, ptr %next_in44, align 8
  %idx.ext45 = zext i32 %40 to i64
  %add.ptr46 = getelementptr inbounds i8, ptr %42, i64 %idx.ext45
  store ptr %add.ptr46, ptr %next_in44, align 8
  %43 = load i32, ptr %n, align 4
  %44 = load ptr, ptr %s, align 8
  %stream47 = getelementptr inbounds %struct.gz_stream, ptr %44, i32 0, i32 0
  %avail_out48 = getelementptr inbounds %struct.z_stream_s, ptr %stream47, i32 0, i32 4
  %45 = load i32, ptr %avail_out48, align 8
  %sub = sub i32 %45, %43
  store i32 %sub, ptr %avail_out48, align 8
  %46 = load i32, ptr %n, align 4
  %47 = load ptr, ptr %s, align 8
  %stream49 = getelementptr inbounds %struct.gz_stream, ptr %47, i32 0, i32 0
  %avail_in50 = getelementptr inbounds %struct.z_stream_s, ptr %stream49, i32 0, i32 1
  %48 = load i32, ptr %avail_in50, align 8
  %sub51 = sub i32 %48, %46
  store i32 %sub51, ptr %avail_in50, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.then34, %if.end31
  %49 = load ptr, ptr %s, align 8
  %stream53 = getelementptr inbounds %struct.gz_stream, ptr %49, i32 0, i32 0
  %avail_out54 = getelementptr inbounds %struct.z_stream_s, ptr %stream53, i32 0, i32 4
  %50 = load i32, ptr %avail_out54, align 8
  %cmp55 = icmp ugt i32 %50, 0
  br i1 %cmp55, label %if.then57, label %if.end68

if.then57:                                        ; preds = %if.end52
  %51 = load ptr, ptr %next_out, align 8
  %52 = load ptr, ptr %s, align 8
  %stream58 = getelementptr inbounds %struct.gz_stream, ptr %52, i32 0, i32 0
  %avail_out59 = getelementptr inbounds %struct.z_stream_s, ptr %stream58, i32 0, i32 4
  %53 = load i32, ptr %avail_out59, align 8
  %conv60 = zext i32 %53 to i64
  %54 = load ptr, ptr %s, align 8
  %file61 = getelementptr inbounds %struct.gz_stream, ptr %54, i32 0, i32 3
  %55 = load ptr, ptr %file61, align 8
  %call62 = call i64 @fread(ptr noundef %51, i64 noundef 1, i64 noundef %conv60, ptr noundef %55)
  %56 = load ptr, ptr %s, align 8
  %stream63 = getelementptr inbounds %struct.gz_stream, ptr %56, i32 0, i32 0
  %avail_out64 = getelementptr inbounds %struct.z_stream_s, ptr %stream63, i32 0, i32 4
  %57 = load i32, ptr %avail_out64, align 8
  %conv65 = zext i32 %57 to i64
  %sub66 = sub i64 %conv65, %call62
  %conv67 = trunc i64 %sub66 to i32
  store i32 %conv67, ptr %avail_out64, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.then57, %if.end52
  %58 = load ptr, ptr %s, align 8
  %stream69 = getelementptr inbounds %struct.gz_stream, ptr %58, i32 0, i32 0
  %avail_out70 = getelementptr inbounds %struct.z_stream_s, ptr %stream69, i32 0, i32 4
  %59 = load i32, ptr %avail_out70, align 8
  %60 = load i32, ptr %len.addr, align 4
  %sub71 = sub i32 %60, %59
  store i32 %sub71, ptr %len.addr, align 4
  %61 = load i32, ptr %len.addr, align 4
  %conv72 = zext i32 %61 to i64
  %62 = load ptr, ptr %s, align 8
  %stream73 = getelementptr inbounds %struct.gz_stream, ptr %62, i32 0, i32 0
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %stream73, i32 0, i32 2
  %63 = load i64, ptr %total_in, align 8
  %add = add i64 %63, %conv72
  store i64 %add, ptr %total_in, align 8
  %64 = load i32, ptr %len.addr, align 4
  %conv74 = zext i32 %64 to i64
  %65 = load ptr, ptr %s, align 8
  %stream75 = getelementptr inbounds %struct.gz_stream, ptr %65, i32 0, i32 0
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %stream75, i32 0, i32 5
  %66 = load i64, ptr %total_out, align 8
  %add76 = add i64 %66, %conv74
  store i64 %add76, ptr %total_out, align 8
  %67 = load i32, ptr %len.addr, align 4
  %cmp77 = icmp eq i32 %67, 0
  br i1 %cmp77, label %if.then79, label %if.end80

if.then79:                                        ; preds = %if.end68
  %68 = load ptr, ptr %s, align 8
  %z_eof = getelementptr inbounds %struct.gz_stream, ptr %68, i32 0, i32 2
  store i32 1, ptr %z_eof, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then79, %if.end68
  %69 = load i32, ptr %len.addr, align 4
  store i32 %69, ptr %retval, align 4
  br label %return

if.end81:                                         ; preds = %while.body
  %70 = load ptr, ptr %s, align 8
  %stream82 = getelementptr inbounds %struct.gz_stream, ptr %70, i32 0, i32 0
  %avail_in83 = getelementptr inbounds %struct.z_stream_s, ptr %stream82, i32 0, i32 1
  %71 = load i32, ptr %avail_in83, align 8
  %cmp84 = icmp eq i32 %71, 0
  br i1 %cmp84, label %land.lhs.true, label %if.end111

land.lhs.true:                                    ; preds = %if.end81
  %72 = load ptr, ptr %s, align 8
  %z_eof86 = getelementptr inbounds %struct.gz_stream, ptr %72, i32 0, i32 2
  %73 = load i32, ptr %z_eof86, align 4
  %tobool87 = icmp ne i32 %73, 0
  br i1 %tobool87, label %if.end111, label %if.then88

if.then88:                                        ; preds = %land.lhs.true
  %call89 = call ptr @__error()
  store i32 0, ptr %call89, align 4
  %74 = load ptr, ptr %s, align 8
  %inbuf = getelementptr inbounds %struct.gz_stream, ptr %74, i32 0, i32 4
  %75 = load ptr, ptr %inbuf, align 8
  %76 = load ptr, ptr %s, align 8
  %file90 = getelementptr inbounds %struct.gz_stream, ptr %76, i32 0, i32 3
  %77 = load ptr, ptr %file90, align 8
  %call91 = call i64 @fread(ptr noundef %75, i64 noundef 1, i64 noundef 16384, ptr noundef %77)
  %conv92 = trunc i64 %call91 to i32
  %78 = load ptr, ptr %s, align 8
  %stream93 = getelementptr inbounds %struct.gz_stream, ptr %78, i32 0, i32 0
  %avail_in94 = getelementptr inbounds %struct.z_stream_s, ptr %stream93, i32 0, i32 1
  store i32 %conv92, ptr %avail_in94, align 8
  %79 = load ptr, ptr %s, align 8
  %stream95 = getelementptr inbounds %struct.gz_stream, ptr %79, i32 0, i32 0
  %avail_in96 = getelementptr inbounds %struct.z_stream_s, ptr %stream95, i32 0, i32 1
  %80 = load i32, ptr %avail_in96, align 8
  %cmp97 = icmp eq i32 %80, 0
  br i1 %cmp97, label %if.then99, label %if.end107

if.then99:                                        ; preds = %if.then88
  %81 = load ptr, ptr %s, align 8
  %z_eof100 = getelementptr inbounds %struct.gz_stream, ptr %81, i32 0, i32 2
  store i32 1, ptr %z_eof100, align 4
  %82 = load ptr, ptr %s, align 8
  %file101 = getelementptr inbounds %struct.gz_stream, ptr %82, i32 0, i32 3
  %83 = load ptr, ptr %file101, align 8
  %call102 = call i32 @ferror(ptr noundef %83)
  %tobool103 = icmp ne i32 %call102, 0
  br i1 %tobool103, label %if.then104, label %if.end106

if.then104:                                       ; preds = %if.then99
  %84 = load ptr, ptr %s, align 8
  %z_err105 = getelementptr inbounds %struct.gz_stream, ptr %84, i32 0, i32 1
  store i32 -1, ptr %z_err105, align 8
  br label %while.end

if.end106:                                        ; preds = %if.then99
  br label %if.end107

if.end107:                                        ; preds = %if.end106, %if.then88
  %85 = load ptr, ptr %s, align 8
  %inbuf108 = getelementptr inbounds %struct.gz_stream, ptr %85, i32 0, i32 4
  %86 = load ptr, ptr %inbuf108, align 8
  %87 = load ptr, ptr %s, align 8
  %stream109 = getelementptr inbounds %struct.gz_stream, ptr %87, i32 0, i32 0
  %next_in110 = getelementptr inbounds %struct.z_stream_s, ptr %stream109, i32 0, i32 0
  store ptr %86, ptr %next_in110, align 8
  br label %if.end111

if.end111:                                        ; preds = %if.end107, %land.lhs.true, %if.end81
  %88 = load ptr, ptr %s, align 8
  %stream112 = getelementptr inbounds %struct.gz_stream, ptr %88, i32 0, i32 0
  %call113 = call i32 @inflate(ptr noundef %stream112, i32 noundef 0)
  %89 = load ptr, ptr %s, align 8
  %z_err114 = getelementptr inbounds %struct.gz_stream, ptr %89, i32 0, i32 1
  store i32 %call113, ptr %z_err114, align 8
  %90 = load ptr, ptr %s, align 8
  %z_err115 = getelementptr inbounds %struct.gz_stream, ptr %90, i32 0, i32 1
  %91 = load i32, ptr %z_err115, align 8
  %cmp116 = icmp eq i32 %91, 1
  br i1 %cmp116, label %if.then118, label %if.end153

if.then118:                                       ; preds = %if.end111
  %92 = load ptr, ptr %s, align 8
  %crc = getelementptr inbounds %struct.gz_stream, ptr %92, i32 0, i32 6
  %93 = load i64, ptr %crc, align 8
  %94 = load ptr, ptr %start, align 8
  %95 = load ptr, ptr %s, align 8
  %stream119 = getelementptr inbounds %struct.gz_stream, ptr %95, i32 0, i32 0
  %next_out120 = getelementptr inbounds %struct.z_stream_s, ptr %stream119, i32 0, i32 3
  %96 = load ptr, ptr %next_out120, align 8
  %97 = load ptr, ptr %start, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %96 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %97 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv121 = trunc i64 %sub.ptr.sub to i32
  %call122 = call i64 @crc32(i64 noundef %93, ptr noundef %94, i32 noundef %conv121)
  %98 = load ptr, ptr %s, align 8
  %crc123 = getelementptr inbounds %struct.gz_stream, ptr %98, i32 0, i32 6
  store i64 %call122, ptr %crc123, align 8
  %99 = load ptr, ptr %s, align 8
  %stream124 = getelementptr inbounds %struct.gz_stream, ptr %99, i32 0, i32 0
  %next_out125 = getelementptr inbounds %struct.z_stream_s, ptr %stream124, i32 0, i32 3
  %100 = load ptr, ptr %next_out125, align 8
  store ptr %100, ptr %start, align 8
  %101 = load ptr, ptr %s, align 8
  %call126 = call i64 @getLong(ptr noundef %101)
  %102 = load ptr, ptr %s, align 8
  %crc127 = getelementptr inbounds %struct.gz_stream, ptr %102, i32 0, i32 6
  %103 = load i64, ptr %crc127, align 8
  %cmp128 = icmp ne i64 %call126, %103
  br i1 %cmp128, label %if.then130, label %if.else

if.then130:                                       ; preds = %if.then118
  %104 = load ptr, ptr %s, align 8
  %z_err131 = getelementptr inbounds %struct.gz_stream, ptr %104, i32 0, i32 1
  store i32 -3, ptr %z_err131, align 8
  br label %if.end152

if.else:                                          ; preds = %if.then118
  %105 = load ptr, ptr %s, align 8
  %call132 = call i64 @getLong(ptr noundef %105)
  %106 = load ptr, ptr %s, align 8
  call void @check_header(ptr noundef %106)
  %107 = load ptr, ptr %s, align 8
  %z_err133 = getelementptr inbounds %struct.gz_stream, ptr %107, i32 0, i32 1
  %108 = load i32, ptr %z_err133, align 8
  %cmp134 = icmp eq i32 %108, 0
  br i1 %cmp134, label %if.then136, label %if.end151

if.then136:                                       ; preds = %if.else
  %109 = load ptr, ptr %s, align 8
  %stream138 = getelementptr inbounds %struct.gz_stream, ptr %109, i32 0, i32 0
  %total_in139 = getelementptr inbounds %struct.z_stream_s, ptr %stream138, i32 0, i32 2
  %110 = load i64, ptr %total_in139, align 8
  store i64 %110, ptr %total_in137, align 8
  %111 = load ptr, ptr %s, align 8
  %stream141 = getelementptr inbounds %struct.gz_stream, ptr %111, i32 0, i32 0
  %total_out142 = getelementptr inbounds %struct.z_stream_s, ptr %stream141, i32 0, i32 5
  %112 = load i64, ptr %total_out142, align 8
  store i64 %112, ptr %total_out140, align 8
  %113 = load ptr, ptr %s, align 8
  %stream143 = getelementptr inbounds %struct.gz_stream, ptr %113, i32 0, i32 0
  %call144 = call i32 @inflateReset(ptr noundef %stream143)
  %114 = load i64, ptr %total_in137, align 8
  %115 = load ptr, ptr %s, align 8
  %stream145 = getelementptr inbounds %struct.gz_stream, ptr %115, i32 0, i32 0
  %total_in146 = getelementptr inbounds %struct.z_stream_s, ptr %stream145, i32 0, i32 2
  store i64 %114, ptr %total_in146, align 8
  %116 = load i64, ptr %total_out140, align 8
  %117 = load ptr, ptr %s, align 8
  %stream147 = getelementptr inbounds %struct.gz_stream, ptr %117, i32 0, i32 0
  %total_out148 = getelementptr inbounds %struct.z_stream_s, ptr %stream147, i32 0, i32 5
  store i64 %116, ptr %total_out148, align 8
  %call149 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0)
  %118 = load ptr, ptr %s, align 8
  %crc150 = getelementptr inbounds %struct.gz_stream, ptr %118, i32 0, i32 6
  store i64 %call149, ptr %crc150, align 8
  br label %if.end151

if.end151:                                        ; preds = %if.then136, %if.else
  br label %if.end152

if.end152:                                        ; preds = %if.end151, %if.then130
  br label %if.end153

if.end153:                                        ; preds = %if.end152, %if.end111
  %119 = load ptr, ptr %s, align 8
  %z_err154 = getelementptr inbounds %struct.gz_stream, ptr %119, i32 0, i32 1
  %120 = load i32, ptr %z_err154, align 8
  %cmp155 = icmp ne i32 %120, 0
  br i1 %cmp155, label %if.then160, label %lor.lhs.false157

lor.lhs.false157:                                 ; preds = %if.end153
  %121 = load ptr, ptr %s, align 8
  %z_eof158 = getelementptr inbounds %struct.gz_stream, ptr %121, i32 0, i32 2
  %122 = load i32, ptr %z_eof158, align 4
  %tobool159 = icmp ne i32 %122, 0
  br i1 %tobool159, label %if.then160, label %if.end161

if.then160:                                       ; preds = %lor.lhs.false157, %if.end153
  br label %while.end

if.end161:                                        ; preds = %lor.lhs.false157
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %if.then160, %if.then104, %while.cond
  %123 = load ptr, ptr %s, align 8
  %crc162 = getelementptr inbounds %struct.gz_stream, ptr %123, i32 0, i32 6
  %124 = load i64, ptr %crc162, align 8
  %125 = load ptr, ptr %start, align 8
  %126 = load ptr, ptr %s, align 8
  %stream163 = getelementptr inbounds %struct.gz_stream, ptr %126, i32 0, i32 0
  %next_out164 = getelementptr inbounds %struct.z_stream_s, ptr %stream163, i32 0, i32 3
  %127 = load ptr, ptr %next_out164, align 8
  %128 = load ptr, ptr %start, align 8
  %sub.ptr.lhs.cast165 = ptrtoint ptr %127 to i64
  %sub.ptr.rhs.cast166 = ptrtoint ptr %128 to i64
  %sub.ptr.sub167 = sub i64 %sub.ptr.lhs.cast165, %sub.ptr.rhs.cast166
  %conv168 = trunc i64 %sub.ptr.sub167 to i32
  %call169 = call i64 @crc32(i64 noundef %124, ptr noundef %125, i32 noundef %conv168)
  %129 = load ptr, ptr %s, align 8
  %crc170 = getelementptr inbounds %struct.gz_stream, ptr %129, i32 0, i32 6
  store i64 %call169, ptr %crc170, align 8
  %130 = load i32, ptr %len.addr, align 4
  %131 = load ptr, ptr %s, align 8
  %stream171 = getelementptr inbounds %struct.gz_stream, ptr %131, i32 0, i32 0
  %avail_out172 = getelementptr inbounds %struct.z_stream_s, ptr %stream171, i32 0, i32 4
  %132 = load i32, ptr %avail_out172, align 8
  %sub173 = sub i32 %130, %132
  store i32 %sub173, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.end80, %if.then14, %if.then9, %if.then
  %133 = load i32, ptr %retval, align 4
  ret i32 %133
}

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

declare ptr @__error() #1

declare i32 @ferror(ptr noundef) #1

declare i32 @inflate(ptr noundef, i32 noundef) #1

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i64 @getLong(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %x = alloca i64, align 8
  %c = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  %call = call i32 @get_byte(ptr noundef %0)
  %conv = sext i32 %call to i64
  store i64 %conv, ptr %x, align 8
  %1 = load ptr, ptr %s.addr, align 8
  %call1 = call i32 @get_byte(ptr noundef %1)
  %conv2 = sext i32 %call1 to i64
  %shl = shl i64 %conv2, 8
  %2 = load i64, ptr %x, align 8
  %add = add i64 %2, %shl
  store i64 %add, ptr %x, align 8
  %3 = load ptr, ptr %s.addr, align 8
  %call3 = call i32 @get_byte(ptr noundef %3)
  %conv4 = sext i32 %call3 to i64
  %shl5 = shl i64 %conv4, 16
  %4 = load i64, ptr %x, align 8
  %add6 = add i64 %4, %shl5
  store i64 %add6, ptr %x, align 8
  %5 = load ptr, ptr %s.addr, align 8
  %call7 = call i32 @get_byte(ptr noundef %5)
  store i32 %call7, ptr %c, align 4
  %6 = load i32, ptr %c, align 4
  %cmp = icmp eq i32 %6, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %s.addr, align 8
  %z_err = getelementptr inbounds %struct.gz_stream, ptr %7, i32 0, i32 1
  store i32 -3, ptr %z_err, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, ptr %c, align 4
  %conv9 = sext i32 %8 to i64
  %shl10 = shl i64 %conv9, 24
  %9 = load i64, ptr %x, align 8
  %add11 = add i64 %9, %shl10
  store i64 %add11, ptr %x, align 8
  %10 = load i64, ptr %x, align 8
  ret i64 %10
}

; Function Attrs: nounwind ssp uwtable
define internal void @check_header(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %method = alloca i32, align 4
  %flags = alloca i32, align 4
  %len = alloca i32, align 4
  %c = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store i32 0, ptr %len, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %len, align 4
  %cmp = icmp ult i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %s.addr, align 8
  %call = call i32 @get_byte(ptr noundef %1)
  store i32 %call, ptr %c, align 4
  %2 = load i32, ptr %c, align 4
  %3 = load i32, ptr %len, align 4
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds [2 x i32], ptr @gz_magic, i64 0, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4
  %cmp1 = icmp ne i32 %2, %4
  br i1 %cmp1, label %if.then, label %if.end17

if.then:                                          ; preds = %for.body
  %5 = load i32, ptr %len, align 4
  %cmp2 = icmp ne i32 %5, 0
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %6 = load ptr, ptr %s.addr, align 8
  %stream = getelementptr inbounds %struct.gz_stream, ptr %6, i32 0, i32 0
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %stream, i32 0, i32 1
  %7 = load i32, ptr %avail_in, align 8
  %inc = add i32 %7, 1
  store i32 %inc, ptr %avail_in, align 8
  %8 = load ptr, ptr %s.addr, align 8
  %stream4 = getelementptr inbounds %struct.gz_stream, ptr %8, i32 0, i32 0
  %next_in = getelementptr inbounds %struct.z_stream_s, ptr %stream4, i32 0, i32 0
  %9 = load ptr, ptr %next_in, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %9, i32 -1
  store ptr %incdec.ptr, ptr %next_in, align 8
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %10 = load i32, ptr %c, align 4
  %cmp5 = icmp ne i32 %10, -1
  br i1 %cmp5, label %if.then6, label %if.end13

if.then6:                                         ; preds = %if.end
  %11 = load ptr, ptr %s.addr, align 8
  %stream7 = getelementptr inbounds %struct.gz_stream, ptr %11, i32 0, i32 0
  %avail_in8 = getelementptr inbounds %struct.z_stream_s, ptr %stream7, i32 0, i32 1
  %12 = load i32, ptr %avail_in8, align 8
  %inc9 = add i32 %12, 1
  store i32 %inc9, ptr %avail_in8, align 8
  %13 = load ptr, ptr %s.addr, align 8
  %stream10 = getelementptr inbounds %struct.gz_stream, ptr %13, i32 0, i32 0
  %next_in11 = getelementptr inbounds %struct.z_stream_s, ptr %stream10, i32 0, i32 0
  %14 = load ptr, ptr %next_in11, align 8
  %incdec.ptr12 = getelementptr inbounds i8, ptr %14, i32 -1
  store ptr %incdec.ptr12, ptr %next_in11, align 8
  %15 = load ptr, ptr %s.addr, align 8
  %transparent = getelementptr inbounds %struct.gz_stream, ptr %15, i32 0, i32 9
  store i32 1, ptr %transparent, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then6, %if.end
  %16 = load ptr, ptr %s.addr, align 8
  %stream14 = getelementptr inbounds %struct.gz_stream, ptr %16, i32 0, i32 0
  %avail_in15 = getelementptr inbounds %struct.z_stream_s, ptr %stream14, i32 0, i32 1
  %17 = load i32, ptr %avail_in15, align 8
  %cmp16 = icmp ne i32 %17, 0
  %18 = zext i1 %cmp16 to i64
  %cond = select i1 %cmp16, i32 0, i32 1
  %19 = load ptr, ptr %s.addr, align 8
  %z_err = getelementptr inbounds %struct.gz_stream, ptr %19, i32 0, i32 1
  store i32 %cond, ptr %z_err, align 8
  br label %return

if.end17:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end17
  %20 = load i32, ptr %len, align 4
  %inc18 = add i32 %20, 1
  store i32 %inc18, ptr %len, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %21 = load ptr, ptr %s.addr, align 8
  %call19 = call i32 @get_byte(ptr noundef %21)
  store i32 %call19, ptr %method, align 4
  %22 = load ptr, ptr %s.addr, align 8
  %call20 = call i32 @get_byte(ptr noundef %22)
  store i32 %call20, ptr %flags, align 4
  %23 = load i32, ptr %method, align 4
  %cmp21 = icmp ne i32 %23, 8
  br i1 %cmp21, label %if.then23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %24 = load i32, ptr %flags, align 4
  %and = and i32 %24, 224
  %cmp22 = icmp ne i32 %and, 0
  br i1 %cmp22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %lor.lhs.false, %for.end
  %25 = load ptr, ptr %s.addr, align 8
  %z_err24 = getelementptr inbounds %struct.gz_stream, ptr %25, i32 0, i32 1
  store i32 -3, ptr %z_err24, align 8
  br label %return

if.end25:                                         ; preds = %lor.lhs.false
  store i32 0, ptr %len, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc30, %if.end25
  %26 = load i32, ptr %len, align 4
  %cmp27 = icmp ult i32 %26, 6
  br i1 %cmp27, label %for.body28, label %for.end32

for.body28:                                       ; preds = %for.cond26
  %27 = load ptr, ptr %s.addr, align 8
  %call29 = call i32 @get_byte(ptr noundef %27)
  br label %for.inc30

for.inc30:                                        ; preds = %for.body28
  %28 = load i32, ptr %len, align 4
  %inc31 = add i32 %28, 1
  store i32 %inc31, ptr %len, align 4
  br label %for.cond26, !llvm.loop !10

for.end32:                                        ; preds = %for.cond26
  %29 = load i32, ptr %flags, align 4
  %and33 = and i32 %29, 4
  %cmp34 = icmp ne i32 %and33, 0
  br i1 %cmp34, label %if.then35, label %if.end41

if.then35:                                        ; preds = %for.end32
  %30 = load ptr, ptr %s.addr, align 8
  %call36 = call i32 @get_byte(ptr noundef %30)
  store i32 %call36, ptr %len, align 4
  %31 = load ptr, ptr %s.addr, align 8
  %call37 = call i32 @get_byte(ptr noundef %31)
  %shl = shl i32 %call37, 8
  %32 = load i32, ptr %len, align 4
  %add = add i32 %32, %shl
  store i32 %add, ptr %len, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then35
  %33 = load i32, ptr %len, align 4
  %dec = add i32 %33, -1
  store i32 %dec, ptr %len, align 4
  %cmp38 = icmp ne i32 %33, 0
  br i1 %cmp38, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %34 = load ptr, ptr %s.addr, align 8
  %call39 = call i32 @get_byte(ptr noundef %34)
  %cmp40 = icmp ne i32 %call39, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %35 = phi i1 [ false, %while.cond ], [ %cmp40, %land.rhs ]
  br i1 %35, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %land.end
  br label %if.end41

if.end41:                                         ; preds = %while.end, %for.end32
  %36 = load i32, ptr %flags, align 4
  %and42 = and i32 %36, 8
  %cmp43 = icmp ne i32 %and42, 0
  br i1 %cmp43, label %if.then44, label %if.end53

if.then44:                                        ; preds = %if.end41
  br label %while.cond45

while.cond45:                                     ; preds = %while.body51, %if.then44
  %37 = load ptr, ptr %s.addr, align 8
  %call46 = call i32 @get_byte(ptr noundef %37)
  store i32 %call46, ptr %c, align 4
  %cmp47 = icmp ne i32 %call46, 0
  br i1 %cmp47, label %land.rhs48, label %land.end50

land.rhs48:                                       ; preds = %while.cond45
  %38 = load i32, ptr %c, align 4
  %cmp49 = icmp ne i32 %38, -1
  br label %land.end50

land.end50:                                       ; preds = %land.rhs48, %while.cond45
  %39 = phi i1 [ false, %while.cond45 ], [ %cmp49, %land.rhs48 ]
  br i1 %39, label %while.body51, label %while.end52

while.body51:                                     ; preds = %land.end50
  br label %while.cond45, !llvm.loop !12

while.end52:                                      ; preds = %land.end50
  br label %if.end53

if.end53:                                         ; preds = %while.end52, %if.end41
  %40 = load i32, ptr %flags, align 4
  %and54 = and i32 %40, 16
  %cmp55 = icmp ne i32 %and54, 0
  br i1 %cmp55, label %if.then56, label %if.end65

if.then56:                                        ; preds = %if.end53
  br label %while.cond57

while.cond57:                                     ; preds = %while.body63, %if.then56
  %41 = load ptr, ptr %s.addr, align 8
  %call58 = call i32 @get_byte(ptr noundef %41)
  store i32 %call58, ptr %c, align 4
  %cmp59 = icmp ne i32 %call58, 0
  br i1 %cmp59, label %land.rhs60, label %land.end62

land.rhs60:                                       ; preds = %while.cond57
  %42 = load i32, ptr %c, align 4
  %cmp61 = icmp ne i32 %42, -1
  br label %land.end62

land.end62:                                       ; preds = %land.rhs60, %while.cond57
  %43 = phi i1 [ false, %while.cond57 ], [ %cmp61, %land.rhs60 ]
  br i1 %43, label %while.body63, label %while.end64

while.body63:                                     ; preds = %land.end62
  br label %while.cond57, !llvm.loop !13

while.end64:                                      ; preds = %land.end62
  br label %if.end65

if.end65:                                         ; preds = %while.end64, %if.end53
  %44 = load i32, ptr %flags, align 4
  %and66 = and i32 %44, 2
  %cmp67 = icmp ne i32 %and66, 0
  br i1 %cmp67, label %if.then68, label %if.end76

if.then68:                                        ; preds = %if.end65
  store i32 0, ptr %len, align 4
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc73, %if.then68
  %45 = load i32, ptr %len, align 4
  %cmp70 = icmp ult i32 %45, 2
  br i1 %cmp70, label %for.body71, label %for.end75

for.body71:                                       ; preds = %for.cond69
  %46 = load ptr, ptr %s.addr, align 8
  %call72 = call i32 @get_byte(ptr noundef %46)
  br label %for.inc73

for.inc73:                                        ; preds = %for.body71
  %47 = load i32, ptr %len, align 4
  %inc74 = add i32 %47, 1
  store i32 %inc74, ptr %len, align 4
  br label %for.cond69, !llvm.loop !14

for.end75:                                        ; preds = %for.cond69
  br label %if.end76

if.end76:                                         ; preds = %for.end75, %if.end65
  %48 = load ptr, ptr %s.addr, align 8
  %z_eof = getelementptr inbounds %struct.gz_stream, ptr %48, i32 0, i32 2
  %49 = load i32, ptr %z_eof, align 4
  %tobool = icmp ne i32 %49, 0
  %50 = zext i1 %tobool to i64
  %cond77 = select i1 %tobool, i32 -3, i32 0
  %51 = load ptr, ptr %s.addr, align 8
  %z_err78 = getelementptr inbounds %struct.gz_stream, ptr %51, i32 0, i32 1
  store i32 %cond77, ptr %z_err78, align 8
  br label %return

return:                                           ; preds = %if.end76, %if.then23, %if.end13
  ret void
}

declare i32 @inflateReset(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define i32 @gzgetc(ptr noundef %file) #0 {
entry:
  %file.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  store ptr %file, ptr %file.addr, align 8
  %0 = load ptr, ptr %file.addr, align 8
  %call = call i32 @gzread(ptr noundef %0, ptr noundef %c, i32 noundef 1)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i8, ptr %c, align 1
  %conv = zext i8 %1 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ -1, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind ssp uwtable
define ptr @gzgets(ptr noundef %file, ptr noundef %buf, i32 noundef %len) #0 {
entry:
  %retval = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %b = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  %0 = load ptr, ptr %buf.addr, align 8
  store ptr %0, ptr %b, align 8
  %1 = load ptr, ptr %buf.addr, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr %len.addr, align 4
  %cmp1 = icmp sle i32 %2, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load i32, ptr %len.addr, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, ptr %len.addr, align 4
  %cmp2 = icmp sgt i32 %dec, 0
  br i1 %cmp2, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %4 = load ptr, ptr %file.addr, align 8
  %5 = load ptr, ptr %buf.addr, align 8
  %call = call i32 @gzread(ptr noundef %4, ptr noundef %5, i32 noundef 1)
  %cmp3 = icmp eq i32 %call, 1
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %6 = load ptr, ptr %buf.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i32 1
  store ptr %incdec.ptr, ptr %buf.addr, align 8
  %7 = load i8, ptr %6, align 1
  %conv = sext i8 %7 to i32
  %cmp4 = icmp ne i32 %conv, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp4, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %land.end
  %9 = load ptr, ptr %buf.addr, align 8
  store i8 0, ptr %9, align 1
  %10 = load ptr, ptr %b, align 8
  %11 = load ptr, ptr %buf.addr, align 8
  %cmp6 = icmp eq ptr %10, %11
  br i1 %cmp6, label %land.lhs.true8, label %cond.false

land.lhs.true8:                                   ; preds = %while.end
  %12 = load i32, ptr %len.addr, align 4
  %cmp9 = icmp sgt i32 %12, 0
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true8, %while.end
  %13 = load ptr, ptr %b, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ null, %cond.true ], [ %13, %cond.false ]
  store ptr %cond, ptr %retval, align 8
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %14 = load ptr, ptr %retval, align 8
  ret ptr %14
}

; Function Attrs: nounwind ssp uwtable
define i32 @gzwrite(ptr noundef %file, ptr noundef %buf, i32 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %s = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  %0 = load ptr, ptr %file.addr, align 8
  store ptr %0, ptr %s, align 8
  %1 = load ptr, ptr %s, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %s, align 8
  %mode = getelementptr inbounds %struct.gz_stream, ptr %2, i32 0, i32 10
  %3 = load i8, ptr %mode, align 4
  %conv = sext i8 %3 to i32
  %cmp1 = icmp ne i32 %conv, 119
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %buf.addr, align 8
  %5 = load ptr, ptr %s, align 8
  %stream = getelementptr inbounds %struct.gz_stream, ptr %5, i32 0, i32 0
  %next_in = getelementptr inbounds %struct.z_stream_s, ptr %stream, i32 0, i32 0
  store ptr %4, ptr %next_in, align 8
  %6 = load i32, ptr %len.addr, align 4
  %7 = load ptr, ptr %s, align 8
  %stream3 = getelementptr inbounds %struct.gz_stream, ptr %7, i32 0, i32 0
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %stream3, i32 0, i32 1
  store i32 %6, ptr %avail_in, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end29, %if.end
  %8 = load ptr, ptr %s, align 8
  %stream4 = getelementptr inbounds %struct.gz_stream, ptr %8, i32 0, i32 0
  %avail_in5 = getelementptr inbounds %struct.z_stream_s, ptr %stream4, i32 0, i32 1
  %9 = load i32, ptr %avail_in5, align 8
  %cmp6 = icmp ne i32 %9, 0
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load ptr, ptr %s, align 8
  %stream8 = getelementptr inbounds %struct.gz_stream, ptr %10, i32 0, i32 0
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %stream8, i32 0, i32 4
  %11 = load i32, ptr %avail_out, align 8
  %cmp9 = icmp eq i32 %11, 0
  br i1 %cmp9, label %if.then11, label %if.end21

if.then11:                                        ; preds = %while.body
  %12 = load ptr, ptr %s, align 8
  %outbuf = getelementptr inbounds %struct.gz_stream, ptr %12, i32 0, i32 5
  %13 = load ptr, ptr %outbuf, align 8
  %14 = load ptr, ptr %s, align 8
  %stream12 = getelementptr inbounds %struct.gz_stream, ptr %14, i32 0, i32 0
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %stream12, i32 0, i32 3
  store ptr %13, ptr %next_out, align 8
  %15 = load ptr, ptr %s, align 8
  %outbuf13 = getelementptr inbounds %struct.gz_stream, ptr %15, i32 0, i32 5
  %16 = load ptr, ptr %outbuf13, align 8
  %17 = load ptr, ptr %s, align 8
  %file14 = getelementptr inbounds %struct.gz_stream, ptr %17, i32 0, i32 3
  %18 = load ptr, ptr %file14, align 8
  %call = call i64 @"\01_fwrite"(ptr noundef %16, i64 noundef 1, i64 noundef 16384, ptr noundef %18)
  %cmp15 = icmp ne i64 %call, 16384
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.then11
  %19 = load ptr, ptr %s, align 8
  %z_err = getelementptr inbounds %struct.gz_stream, ptr %19, i32 0, i32 1
  store i32 -1, ptr %z_err, align 8
  br label %while.end

if.end18:                                         ; preds = %if.then11
  %20 = load ptr, ptr %s, align 8
  %stream19 = getelementptr inbounds %struct.gz_stream, ptr %20, i32 0, i32 0
  %avail_out20 = getelementptr inbounds %struct.z_stream_s, ptr %stream19, i32 0, i32 4
  store i32 16384, ptr %avail_out20, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.end18, %while.body
  %21 = load ptr, ptr %s, align 8
  %stream22 = getelementptr inbounds %struct.gz_stream, ptr %21, i32 0, i32 0
  %call23 = call i32 @deflate(ptr noundef %stream22, i32 noundef 0)
  %22 = load ptr, ptr %s, align 8
  %z_err24 = getelementptr inbounds %struct.gz_stream, ptr %22, i32 0, i32 1
  store i32 %call23, ptr %z_err24, align 8
  %23 = load ptr, ptr %s, align 8
  %z_err25 = getelementptr inbounds %struct.gz_stream, ptr %23, i32 0, i32 1
  %24 = load i32, ptr %z_err25, align 8
  %cmp26 = icmp ne i32 %24, 0
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end21
  br label %while.end

if.end29:                                         ; preds = %if.end21
  br label %while.cond, !llvm.loop !16

while.end:                                        ; preds = %if.then28, %if.then17, %while.cond
  %25 = load ptr, ptr %s, align 8
  %crc = getelementptr inbounds %struct.gz_stream, ptr %25, i32 0, i32 6
  %26 = load i64, ptr %crc, align 8
  %27 = load ptr, ptr %buf.addr, align 8
  %28 = load i32, ptr %len.addr, align 4
  %call30 = call i64 @crc32(i64 noundef %26, ptr noundef %27, i32 noundef %28)
  %29 = load ptr, ptr %s, align 8
  %crc31 = getelementptr inbounds %struct.gz_stream, ptr %29, i32 0, i32 6
  store i64 %call30, ptr %crc31, align 8
  %30 = load i32, ptr %len.addr, align 4
  %31 = load ptr, ptr %s, align 8
  %stream32 = getelementptr inbounds %struct.gz_stream, ptr %31, i32 0, i32 0
  %avail_in33 = getelementptr inbounds %struct.z_stream_s, ptr %stream32, i32 0, i32 1
  %32 = load i32, ptr %avail_in33, align 8
  %sub = sub i32 %30, %32
  store i32 %sub, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %33 = load i32, ptr %retval, align 4
  ret i32 %33
}

declare i32 @deflate(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define i32 @gzprintf(ptr noundef %file, ptr noundef %format, ...) #0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %format.addr = alloca ptr, align 8
  %buf = alloca [4096 x i8], align 1
  %va = alloca ptr, align 8
  %len = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  store ptr %format, ptr %format.addr, align 8
  call void @llvm.va_start(ptr %va)
  %arraydecay = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 0
  %0 = load ptr, ptr %format.addr, align 8
  %1 = load ptr, ptr %va, align 8
  %call = call i32 @__vsprintf_chk(ptr noundef %arraydecay, i32 noundef 0, i64 noundef 4096, ptr noundef %0, ptr noundef %1)
  call void @llvm.va_end(ptr %va)
  %arraydecay1 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 0
  %call2 = call i64 @strlen(ptr noundef %arraydecay1)
  %conv = trunc i64 %call2 to i32
  store i32 %conv, ptr %len, align 4
  %2 = load i32, ptr %len, align 4
  %cmp = icmp sle i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %file.addr, align 8
  %arraydecay4 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 0
  %4 = load i32, ptr %len, align 4
  %call5 = call i32 @gzwrite(ptr noundef %3, ptr noundef %arraydecay4, i32 noundef %4)
  store i32 %call5, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

declare i32 @__vsprintf_chk(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

declare i64 @strlen(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define i32 @gzputc(ptr noundef %file, i32 noundef %c) #0 {
entry:
  %file.addr = alloca ptr, align 8
  %c.addr = alloca i32, align 4
  %cc = alloca i8, align 1
  store ptr %file, ptr %file.addr, align 8
  store i32 %c, ptr %c.addr, align 4
  %0 = load i32, ptr %c.addr, align 4
  %conv = trunc i32 %0 to i8
  store i8 %conv, ptr %cc, align 1
  %1 = load ptr, ptr %file.addr, align 8
  %call = call i32 @gzwrite(ptr noundef %1, ptr noundef %cc, i32 noundef 1)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i8, ptr %cc, align 1
  %conv2 = zext i8 %2 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv2, %cond.true ], [ -1, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind ssp uwtable
define i32 @gzputs(ptr noundef %file, ptr noundef %s) #0 {
entry:
  %file.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %file.addr, align 8
  %1 = load ptr, ptr %s.addr, align 8
  %2 = load ptr, ptr %s.addr, align 8
  %call = call i64 @strlen(ptr noundef %2)
  %conv = trunc i64 %call to i32
  %call1 = call i32 @gzwrite(ptr noundef %0, ptr noundef %1, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind ssp uwtable
define i32 @gzflush(ptr noundef %file, i32 noundef %flush) #0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %flush.addr = alloca i32, align 4
  %s = alloca ptr, align 8
  %err = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  store i32 %flush, ptr %flush.addr, align 4
  %0 = load ptr, ptr %file.addr, align 8
  store ptr %0, ptr %s, align 8
  %1 = load ptr, ptr %file.addr, align 8
  %2 = load i32, ptr %flush.addr, align 4
  %call = call i32 @do_flush(ptr noundef %1, i32 noundef %2)
  store i32 %call, ptr %err, align 4
  %3 = load i32, ptr %err, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %err, align 4
  store i32 %4, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %s, align 8
  %file1 = getelementptr inbounds %struct.gz_stream, ptr %5, i32 0, i32 3
  %6 = load ptr, ptr %file1, align 8
  %call2 = call i32 @fflush(ptr noundef %6)
  %7 = load ptr, ptr %s, align 8
  %z_err = getelementptr inbounds %struct.gz_stream, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %z_err, align 8
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %9 = load ptr, ptr %s, align 8
  %z_err3 = getelementptr inbounds %struct.gz_stream, ptr %9, i32 0, i32 1
  %10 = load i32, ptr %z_err3, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %10, %cond.false ]
  store i32 %cond, ptr %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @do_flush(ptr noundef %file, i32 noundef %flush) #0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %flush.addr = alloca i32, align 4
  %len = alloca i32, align 4
  %done = alloca i32, align 4
  %s = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  store i32 %flush, ptr %flush.addr, align 4
  store i32 0, ptr %done, align 4
  %0 = load ptr, ptr %file.addr, align 8
  store ptr %0, ptr %s, align 8
  %1 = load ptr, ptr %s, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %s, align 8
  %mode = getelementptr inbounds %struct.gz_stream, ptr %2, i32 0, i32 10
  %3 = load i8, ptr %mode, align 4
  %conv = sext i8 %3 to i32
  %cmp1 = icmp ne i32 %conv, 119
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %s, align 8
  %stream = getelementptr inbounds %struct.gz_stream, ptr %4, i32 0, i32 0
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %stream, i32 0, i32 1
  store i32 0, ptr %avail_in, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end47, %if.end
  %5 = load ptr, ptr %s, align 8
  %stream3 = getelementptr inbounds %struct.gz_stream, ptr %5, i32 0, i32 0
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %stream3, i32 0, i32 4
  %6 = load i32, ptr %avail_out, align 8
  %sub = sub i32 16384, %6
  store i32 %sub, ptr %len, align 4
  %7 = load i32, ptr %len, align 4
  %cmp4 = icmp ne i32 %7, 0
  br i1 %cmp4, label %if.then6, label %if.end18

if.then6:                                         ; preds = %for.cond
  %8 = load ptr, ptr %s, align 8
  %outbuf = getelementptr inbounds %struct.gz_stream, ptr %8, i32 0, i32 5
  %9 = load ptr, ptr %outbuf, align 8
  %10 = load i32, ptr %len, align 4
  %conv7 = zext i32 %10 to i64
  %11 = load ptr, ptr %s, align 8
  %file8 = getelementptr inbounds %struct.gz_stream, ptr %11, i32 0, i32 3
  %12 = load ptr, ptr %file8, align 8
  %call = call i64 @"\01_fwrite"(ptr noundef %9, i64 noundef 1, i64 noundef %conv7, ptr noundef %12)
  %conv9 = trunc i64 %call to i32
  %13 = load i32, ptr %len, align 4
  %cmp10 = icmp ne i32 %conv9, %13
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.then6
  %14 = load ptr, ptr %s, align 8
  %z_err = getelementptr inbounds %struct.gz_stream, ptr %14, i32 0, i32 1
  store i32 -1, ptr %z_err, align 8
  store i32 -1, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.then6
  %15 = load ptr, ptr %s, align 8
  %outbuf14 = getelementptr inbounds %struct.gz_stream, ptr %15, i32 0, i32 5
  %16 = load ptr, ptr %outbuf14, align 8
  %17 = load ptr, ptr %s, align 8
  %stream15 = getelementptr inbounds %struct.gz_stream, ptr %17, i32 0, i32 0
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %stream15, i32 0, i32 3
  store ptr %16, ptr %next_out, align 8
  %18 = load ptr, ptr %s, align 8
  %stream16 = getelementptr inbounds %struct.gz_stream, ptr %18, i32 0, i32 0
  %avail_out17 = getelementptr inbounds %struct.z_stream_s, ptr %stream16, i32 0, i32 4
  store i32 16384, ptr %avail_out17, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.end13, %for.cond
  %19 = load i32, ptr %done, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end18
  br label %for.end

if.end20:                                         ; preds = %if.end18
  %20 = load ptr, ptr %s, align 8
  %stream21 = getelementptr inbounds %struct.gz_stream, ptr %20, i32 0, i32 0
  %21 = load i32, ptr %flush.addr, align 4
  %call22 = call i32 @deflate(ptr noundef %stream21, i32 noundef %21)
  %22 = load ptr, ptr %s, align 8
  %z_err23 = getelementptr inbounds %struct.gz_stream, ptr %22, i32 0, i32 1
  store i32 %call22, ptr %z_err23, align 8
  %23 = load i32, ptr %len, align 4
  %cmp24 = icmp eq i32 %23, 0
  br i1 %cmp24, label %land.lhs.true, label %if.end31

land.lhs.true:                                    ; preds = %if.end20
  %24 = load ptr, ptr %s, align 8
  %z_err26 = getelementptr inbounds %struct.gz_stream, ptr %24, i32 0, i32 1
  %25 = load i32, ptr %z_err26, align 8
  %cmp27 = icmp eq i32 %25, -5
  br i1 %cmp27, label %if.then29, label %if.end31

if.then29:                                        ; preds = %land.lhs.true
  %26 = load ptr, ptr %s, align 8
  %z_err30 = getelementptr inbounds %struct.gz_stream, ptr %26, i32 0, i32 1
  store i32 0, ptr %z_err30, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %land.lhs.true, %if.end20
  %27 = load ptr, ptr %s, align 8
  %stream32 = getelementptr inbounds %struct.gz_stream, ptr %27, i32 0, i32 0
  %avail_out33 = getelementptr inbounds %struct.z_stream_s, ptr %stream32, i32 0, i32 4
  %28 = load i32, ptr %avail_out33, align 8
  %cmp34 = icmp ne i32 %28, 0
  br i1 %cmp34, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end31
  %29 = load ptr, ptr %s, align 8
  %z_err36 = getelementptr inbounds %struct.gz_stream, ptr %29, i32 0, i32 1
  %30 = load i32, ptr %z_err36, align 8
  %cmp37 = icmp eq i32 %30, 1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end31
  %31 = phi i1 [ true, %if.end31 ], [ %cmp37, %lor.rhs ]
  %lor.ext = zext i1 %31 to i32
  store i32 %lor.ext, ptr %done, align 4
  %32 = load ptr, ptr %s, align 8
  %z_err39 = getelementptr inbounds %struct.gz_stream, ptr %32, i32 0, i32 1
  %33 = load i32, ptr %z_err39, align 8
  %cmp40 = icmp ne i32 %33, 0
  br i1 %cmp40, label %land.lhs.true42, label %if.end47

land.lhs.true42:                                  ; preds = %lor.end
  %34 = load ptr, ptr %s, align 8
  %z_err43 = getelementptr inbounds %struct.gz_stream, ptr %34, i32 0, i32 1
  %35 = load i32, ptr %z_err43, align 8
  %cmp44 = icmp ne i32 %35, 1
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %land.lhs.true42
  br label %for.end

if.end47:                                         ; preds = %land.lhs.true42, %lor.end
  br label %for.cond

for.end:                                          ; preds = %if.then46, %if.then19
  %36 = load ptr, ptr %s, align 8
  %z_err48 = getelementptr inbounds %struct.gz_stream, ptr %36, i32 0, i32 1
  %37 = load i32, ptr %z_err48, align 8
  %cmp49 = icmp eq i32 %37, 1
  br i1 %cmp49, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %38 = load ptr, ptr %s, align 8
  %z_err51 = getelementptr inbounds %struct.gz_stream, ptr %38, i32 0, i32 1
  %39 = load i32, ptr %z_err51, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %39, %cond.false ]
  store i32 %cond, ptr %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then12, %if.then
  %40 = load i32, ptr %retval, align 4
  ret i32 %40
}

declare i32 @fflush(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define i64 @gzseek(ptr noundef %file, i64 noundef %offset, i32 noundef %whence) #0 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %offset.addr = alloca i64, align 8
  %whence.addr = alloca i32, align 4
  %s = alloca ptr, align 8
  %size = alloca i32, align 4
  %size94 = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  store i64 %offset, ptr %offset.addr, align 8
  store i32 %whence, ptr %whence.addr, align 4
  %0 = load ptr, ptr %file.addr, align 8
  store ptr %0, ptr %s, align 8
  %1 = load ptr, ptr %s, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr %whence.addr, align 4
  %cmp1 = icmp eq i32 %2, 2
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %s, align 8
  %z_err = getelementptr inbounds %struct.gz_stream, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %z_err, align 8
  %cmp3 = icmp eq i32 %4, -1
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %5 = load ptr, ptr %s, align 8
  %z_err5 = getelementptr inbounds %struct.gz_stream, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %z_err5, align 8
  %cmp6 = icmp eq i32 %6, -3
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i64 -1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false4
  %7 = load ptr, ptr %s, align 8
  %mode = getelementptr inbounds %struct.gz_stream, ptr %7, i32 0, i32 10
  %8 = load i8, ptr %mode, align 4
  %conv = sext i8 %8 to i32
  %cmp7 = icmp eq i32 %conv, 119
  br i1 %cmp7, label %if.then9, label %if.end43

if.then9:                                         ; preds = %if.end
  %9 = load i32, ptr %whence.addr, align 4
  %cmp10 = icmp eq i32 %9, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.then9
  %10 = load ptr, ptr %s, align 8
  %stream = getelementptr inbounds %struct.gz_stream, ptr %10, i32 0, i32 0
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %stream, i32 0, i32 2
  %11 = load i64, ptr %total_in, align 8
  %12 = load i64, ptr %offset.addr, align 8
  %sub = sub i64 %12, %11
  store i64 %sub, ptr %offset.addr, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.then9
  %13 = load i64, ptr %offset.addr, align 8
  %cmp14 = icmp slt i64 %13, 0
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end13
  store i64 -1, ptr %retval, align 8
  br label %return

if.end17:                                         ; preds = %if.end13
  %14 = load ptr, ptr %s, align 8
  %inbuf = getelementptr inbounds %struct.gz_stream, ptr %14, i32 0, i32 4
  %15 = load ptr, ptr %inbuf, align 8
  %cmp18 = icmp eq ptr %15, null
  br i1 %cmp18, label %if.then20, label %if.end25

if.then20:                                        ; preds = %if.end17
  %call = call ptr @malloc(i64 noundef 16384) #6
  %16 = load ptr, ptr %s, align 8
  %inbuf21 = getelementptr inbounds %struct.gz_stream, ptr %16, i32 0, i32 4
  store ptr %call, ptr %inbuf21, align 8
  %17 = load ptr, ptr %s, align 8
  %inbuf22 = getelementptr inbounds %struct.gz_stream, ptr %17, i32 0, i32 4
  %18 = load ptr, ptr %inbuf22, align 8
  %19 = load ptr, ptr %s, align 8
  %inbuf23 = getelementptr inbounds %struct.gz_stream, ptr %19, i32 0, i32 4
  %20 = load ptr, ptr %inbuf23, align 8
  %21 = call i64 @llvm.objectsize.i64.p0(ptr %20, i1 false, i1 true, i1 false)
  %call24 = call ptr @__memset_chk(ptr noundef %18, i32 noundef 0, i64 noundef 16384, i64 noundef %21) #7
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %if.end17
  br label %while.cond

while.cond:                                       ; preds = %if.end38, %if.end25
  %22 = load i64, ptr %offset.addr, align 8
  %cmp26 = icmp sgt i64 %22, 0
  br i1 %cmp26, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 16384, ptr %size, align 4
  %23 = load i64, ptr %offset.addr, align 8
  %cmp28 = icmp slt i64 %23, 16384
  br i1 %cmp28, label %if.then30, label %if.end32

if.then30:                                        ; preds = %while.body
  %24 = load i64, ptr %offset.addr, align 8
  %conv31 = trunc i64 %24 to i32
  store i32 %conv31, ptr %size, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %while.body
  %25 = load ptr, ptr %file.addr, align 8
  %26 = load ptr, ptr %s, align 8
  %inbuf33 = getelementptr inbounds %struct.gz_stream, ptr %26, i32 0, i32 4
  %27 = load ptr, ptr %inbuf33, align 8
  %28 = load i32, ptr %size, align 4
  %call34 = call i32 @gzwrite(ptr noundef %25, ptr noundef %27, i32 noundef %28)
  store i32 %call34, ptr %size, align 4
  %29 = load i32, ptr %size, align 4
  %cmp35 = icmp eq i32 %29, 0
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end32
  store i64 -1, ptr %retval, align 8
  br label %return

if.end38:                                         ; preds = %if.end32
  %30 = load i32, ptr %size, align 4
  %conv39 = zext i32 %30 to i64
  %31 = load i64, ptr %offset.addr, align 8
  %sub40 = sub nsw i64 %31, %conv39
  store i64 %sub40, ptr %offset.addr, align 8
  br label %while.cond, !llvm.loop !17

while.end:                                        ; preds = %while.cond
  %32 = load ptr, ptr %s, align 8
  %stream41 = getelementptr inbounds %struct.gz_stream, ptr %32, i32 0, i32 0
  %total_in42 = getelementptr inbounds %struct.z_stream_s, ptr %stream41, i32 0, i32 2
  %33 = load i64, ptr %total_in42, align 8
  store i64 %33, ptr %retval, align 8
  br label %return

if.end43:                                         ; preds = %if.end
  %34 = load i32, ptr %whence.addr, align 4
  %cmp44 = icmp eq i32 %34, 1
  br i1 %cmp44, label %if.then46, label %if.end48

if.then46:                                        ; preds = %if.end43
  %35 = load ptr, ptr %s, align 8
  %stream47 = getelementptr inbounds %struct.gz_stream, ptr %35, i32 0, i32 0
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %stream47, i32 0, i32 5
  %36 = load i64, ptr %total_out, align 8
  %37 = load i64, ptr %offset.addr, align 8
  %add = add i64 %37, %36
  store i64 %add, ptr %offset.addr, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.end43
  %38 = load i64, ptr %offset.addr, align 8
  %cmp49 = icmp slt i64 %38, 0
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end48
  store i64 -1, ptr %retval, align 8
  br label %return

if.end52:                                         ; preds = %if.end48
  %39 = load ptr, ptr %s, align 8
  %transparent = getelementptr inbounds %struct.gz_stream, ptr %39, i32 0, i32 9
  %40 = load i32, ptr %transparent, align 8
  %tobool = icmp ne i32 %40, 0
  br i1 %tobool, label %if.then53, label %if.end67

if.then53:                                        ; preds = %if.end52
  %41 = load ptr, ptr %s, align 8
  %stream54 = getelementptr inbounds %struct.gz_stream, ptr %41, i32 0, i32 0
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %stream54, i32 0, i32 1
  store i32 0, ptr %avail_in, align 8
  %42 = load ptr, ptr %s, align 8
  %inbuf55 = getelementptr inbounds %struct.gz_stream, ptr %42, i32 0, i32 4
  %43 = load ptr, ptr %inbuf55, align 8
  %44 = load ptr, ptr %s, align 8
  %stream56 = getelementptr inbounds %struct.gz_stream, ptr %44, i32 0, i32 0
  %next_in = getelementptr inbounds %struct.z_stream_s, ptr %stream56, i32 0, i32 0
  store ptr %43, ptr %next_in, align 8
  %45 = load ptr, ptr %s, align 8
  %file57 = getelementptr inbounds %struct.gz_stream, ptr %45, i32 0, i32 3
  %46 = load ptr, ptr %file57, align 8
  %47 = load i64, ptr %offset.addr, align 8
  %call58 = call i32 @fseek(ptr noundef %46, i64 noundef %47, i32 noundef 0)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.then53
  store i64 -1, ptr %retval, align 8
  br label %return

if.end62:                                         ; preds = %if.then53
  %48 = load i64, ptr %offset.addr, align 8
  %49 = load ptr, ptr %s, align 8
  %stream63 = getelementptr inbounds %struct.gz_stream, ptr %49, i32 0, i32 0
  %total_out64 = getelementptr inbounds %struct.z_stream_s, ptr %stream63, i32 0, i32 5
  store i64 %48, ptr %total_out64, align 8
  %50 = load ptr, ptr %s, align 8
  %stream65 = getelementptr inbounds %struct.gz_stream, ptr %50, i32 0, i32 0
  %total_in66 = getelementptr inbounds %struct.z_stream_s, ptr %stream65, i32 0, i32 2
  store i64 %48, ptr %total_in66, align 8
  %51 = load i64, ptr %offset.addr, align 8
  store i64 %51, ptr %retval, align 8
  br label %return

if.end67:                                         ; preds = %if.end52
  %52 = load i64, ptr %offset.addr, align 8
  %53 = load ptr, ptr %s, align 8
  %stream68 = getelementptr inbounds %struct.gz_stream, ptr %53, i32 0, i32 0
  %total_out69 = getelementptr inbounds %struct.z_stream_s, ptr %stream68, i32 0, i32 5
  %54 = load i64, ptr %total_out69, align 8
  %cmp70 = icmp uge i64 %52, %54
  br i1 %cmp70, label %if.then72, label %if.else

if.then72:                                        ; preds = %if.end67
  %55 = load ptr, ptr %s, align 8
  %stream73 = getelementptr inbounds %struct.gz_stream, ptr %55, i32 0, i32 0
  %total_out74 = getelementptr inbounds %struct.z_stream_s, ptr %stream73, i32 0, i32 5
  %56 = load i64, ptr %total_out74, align 8
  %57 = load i64, ptr %offset.addr, align 8
  %sub75 = sub i64 %57, %56
  store i64 %sub75, ptr %offset.addr, align 8
  br label %if.end81

if.else:                                          ; preds = %if.end67
  %58 = load ptr, ptr %file.addr, align 8
  %call76 = call i32 @gzrewind(ptr noundef %58)
  %cmp77 = icmp slt i32 %call76, 0
  br i1 %cmp77, label %if.then79, label %if.end80

if.then79:                                        ; preds = %if.else
  store i64 -1, ptr %retval, align 8
  br label %return

if.end80:                                         ; preds = %if.else
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.then72
  %59 = load i64, ptr %offset.addr, align 8
  %cmp82 = icmp ne i64 %59, 0
  br i1 %cmp82, label %land.lhs.true, label %if.end89

land.lhs.true:                                    ; preds = %if.end81
  %60 = load ptr, ptr %s, align 8
  %outbuf = getelementptr inbounds %struct.gz_stream, ptr %60, i32 0, i32 5
  %61 = load ptr, ptr %outbuf, align 8
  %cmp84 = icmp eq ptr %61, null
  br i1 %cmp84, label %if.then86, label %if.end89

if.then86:                                        ; preds = %land.lhs.true
  %call87 = call ptr @malloc(i64 noundef 16384) #6
  %62 = load ptr, ptr %s, align 8
  %outbuf88 = getelementptr inbounds %struct.gz_stream, ptr %62, i32 0, i32 5
  store ptr %call87, ptr %outbuf88, align 8
  br label %if.end89

if.end89:                                         ; preds = %if.then86, %land.lhs.true, %if.end81
  br label %while.cond90

while.cond90:                                     ; preds = %if.end105, %if.end89
  %63 = load i64, ptr %offset.addr, align 8
  %cmp91 = icmp sgt i64 %63, 0
  br i1 %cmp91, label %while.body93, label %while.end108

while.body93:                                     ; preds = %while.cond90
  store i32 16384, ptr %size94, align 4
  %64 = load i64, ptr %offset.addr, align 8
  %cmp95 = icmp slt i64 %64, 16384
  br i1 %cmp95, label %if.then97, label %if.end99

if.then97:                                        ; preds = %while.body93
  %65 = load i64, ptr %offset.addr, align 8
  %conv98 = trunc i64 %65 to i32
  store i32 %conv98, ptr %size94, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %while.body93
  %66 = load ptr, ptr %file.addr, align 8
  %67 = load ptr, ptr %s, align 8
  %outbuf100 = getelementptr inbounds %struct.gz_stream, ptr %67, i32 0, i32 5
  %68 = load ptr, ptr %outbuf100, align 8
  %69 = load i32, ptr %size94, align 4
  %call101 = call i32 @gzread(ptr noundef %66, ptr noundef %68, i32 noundef %69)
  store i32 %call101, ptr %size94, align 4
  %70 = load i32, ptr %size94, align 4
  %cmp102 = icmp sle i32 %70, 0
  br i1 %cmp102, label %if.then104, label %if.end105

if.then104:                                       ; preds = %if.end99
  store i64 -1, ptr %retval, align 8
  br label %return

if.end105:                                        ; preds = %if.end99
  %71 = load i32, ptr %size94, align 4
  %conv106 = sext i32 %71 to i64
  %72 = load i64, ptr %offset.addr, align 8
  %sub107 = sub nsw i64 %72, %conv106
  store i64 %sub107, ptr %offset.addr, align 8
  br label %while.cond90, !llvm.loop !18

while.end108:                                     ; preds = %while.cond90
  %73 = load ptr, ptr %s, align 8
  %stream109 = getelementptr inbounds %struct.gz_stream, ptr %73, i32 0, i32 0
  %total_out110 = getelementptr inbounds %struct.z_stream_s, ptr %stream109, i32 0, i32 5
  %74 = load i64, ptr %total_out110, align 8
  store i64 %74, ptr %retval, align 8
  br label %return

return:                                           ; preds = %while.end108, %if.then104, %if.then79, %if.end62, %if.then61, %if.then51, %while.end, %if.then37, %if.then16, %if.then
  %75 = load i64, ptr %retval, align 8
  ret i64 %75
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #5

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #2

declare i32 @fseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define i32 @gzrewind(ptr noundef %file) #0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  %0 = load ptr, ptr %file.addr, align 8
  store ptr %0, ptr %s, align 8
  %1 = load ptr, ptr %s, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %s, align 8
  %mode = getelementptr inbounds %struct.gz_stream, ptr %2, i32 0, i32 10
  %3 = load i8, ptr %mode, align 4
  %conv = sext i8 %3 to i32
  %cmp1 = icmp ne i32 %conv, 114
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %s, align 8
  %z_err = getelementptr inbounds %struct.gz_stream, ptr %4, i32 0, i32 1
  store i32 0, ptr %z_err, align 8
  %5 = load ptr, ptr %s, align 8
  %z_eof = getelementptr inbounds %struct.gz_stream, ptr %5, i32 0, i32 2
  store i32 0, ptr %z_eof, align 4
  %6 = load ptr, ptr %s, align 8
  %stream = getelementptr inbounds %struct.gz_stream, ptr %6, i32 0, i32 0
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %stream, i32 0, i32 1
  store i32 0, ptr %avail_in, align 8
  %7 = load ptr, ptr %s, align 8
  %inbuf = getelementptr inbounds %struct.gz_stream, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %inbuf, align 8
  %9 = load ptr, ptr %s, align 8
  %stream3 = getelementptr inbounds %struct.gz_stream, ptr %9, i32 0, i32 0
  %next_in = getelementptr inbounds %struct.z_stream_s, ptr %stream3, i32 0, i32 0
  store ptr %8, ptr %next_in, align 8
  %call = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0)
  %10 = load ptr, ptr %s, align 8
  %crc = getelementptr inbounds %struct.gz_stream, ptr %10, i32 0, i32 6
  store i64 %call, ptr %crc, align 8
  %11 = load ptr, ptr %s, align 8
  %startpos = getelementptr inbounds %struct.gz_stream, ptr %11, i32 0, i32 11
  %12 = load i64, ptr %startpos, align 8
  %cmp4 = icmp eq i64 %12, 0
  br i1 %cmp4, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  %13 = load ptr, ptr %s, align 8
  %file7 = getelementptr inbounds %struct.gz_stream, ptr %13, i32 0, i32 3
  %14 = load ptr, ptr %file7, align 8
  call void @rewind(ptr noundef %14)
  store i32 0, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  %15 = load ptr, ptr %s, align 8
  %stream9 = getelementptr inbounds %struct.gz_stream, ptr %15, i32 0, i32 0
  %call10 = call i32 @inflateReset(ptr noundef %stream9)
  %16 = load ptr, ptr %s, align 8
  %file11 = getelementptr inbounds %struct.gz_stream, ptr %16, i32 0, i32 3
  %17 = load ptr, ptr %file11, align 8
  %18 = load ptr, ptr %s, align 8
  %startpos12 = getelementptr inbounds %struct.gz_stream, ptr %18, i32 0, i32 11
  %19 = load i64, ptr %startpos12, align 8
  %call13 = call i32 @fseek(ptr noundef %17, i64 noundef %19, i32 noundef 0)
  store i32 %call13, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then6, %if.then
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
}

declare void @rewind(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define i64 @gztell(ptr noundef %file) #0 {
entry:
  %file.addr = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  %0 = load ptr, ptr %file.addr, align 8
  %call = call i64 @gzseek(ptr noundef %0, i64 noundef 0, i32 noundef 1)
  ret i64 %call
}

; Function Attrs: nounwind ssp uwtable
define i32 @gzeof(ptr noundef %file) #0 {
entry:
  %file.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  %0 = load ptr, ptr %file.addr, align 8
  store ptr %0, ptr %s, align 8
  %1 = load ptr, ptr %s, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %s, align 8
  %mode = getelementptr inbounds %struct.gz_stream, ptr %2, i32 0, i32 10
  %3 = load i8, ptr %mode, align 4
  %conv = sext i8 %3 to i32
  %cmp1 = icmp ne i32 %conv, 114
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %4 = load ptr, ptr %s, align 8
  %z_eof = getelementptr inbounds %struct.gz_stream, ptr %4, i32 0, i32 2
  %5 = load i32, ptr %z_eof, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %5, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind ssp uwtable
define i32 @gzclose(ptr noundef %file) #0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %s = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  %0 = load ptr, ptr %file.addr, align 8
  store ptr %0, ptr %s, align 8
  %1 = load ptr, ptr %s, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %s, align 8
  %mode = getelementptr inbounds %struct.gz_stream, ptr %2, i32 0, i32 10
  %3 = load i8, ptr %mode, align 4
  %conv = sext i8 %3 to i32
  %cmp1 = icmp eq i32 %conv, 119
  br i1 %cmp1, label %if.then3, label %if.end11

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr %file.addr, align 8
  %call = call i32 @do_flush(ptr noundef %4, i32 noundef 4)
  store i32 %call, ptr %err, align 4
  %5 = load i32, ptr %err, align 4
  %cmp4 = icmp ne i32 %5, 0
  br i1 %cmp4, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.then3
  %6 = load ptr, ptr %file.addr, align 8
  %call7 = call i32 @destroy(ptr noundef %6)
  store i32 %call7, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.then3
  %7 = load ptr, ptr %s, align 8
  %file9 = getelementptr inbounds %struct.gz_stream, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %file9, align 8
  %9 = load ptr, ptr %s, align 8
  %crc = getelementptr inbounds %struct.gz_stream, ptr %9, i32 0, i32 6
  %10 = load i64, ptr %crc, align 8
  call void @putLong(ptr noundef %8, i64 noundef %10)
  %11 = load ptr, ptr %s, align 8
  %file10 = getelementptr inbounds %struct.gz_stream, ptr %11, i32 0, i32 3
  %12 = load ptr, ptr %file10, align 8
  %13 = load ptr, ptr %s, align 8
  %stream = getelementptr inbounds %struct.gz_stream, ptr %13, i32 0, i32 0
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %stream, i32 0, i32 2
  %14 = load i64, ptr %total_in, align 8
  call void @putLong(ptr noundef %12, i64 noundef %14)
  br label %if.end11

if.end11:                                         ; preds = %if.end8, %if.end
  %15 = load ptr, ptr %file.addr, align 8
  %call12 = call i32 @destroy(ptr noundef %15)
  store i32 %call12, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end11, %if.then6, %if.then
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @destroy(ptr noundef %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store i32 0, ptr %err, align 4
  %0 = load ptr, ptr %s.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %s.addr, align 8
  %msg = getelementptr inbounds %struct.gz_stream, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %msg, align 8
  %tobool1 = icmp ne ptr %2, null
  br i1 %tobool1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %s.addr, align 8
  %msg3 = getelementptr inbounds %struct.gz_stream, ptr %3, i32 0, i32 7
  %4 = load ptr, ptr %msg3, align 8
  call void @free(ptr noundef %4)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %5 = load ptr, ptr %s.addr, align 8
  %stream = getelementptr inbounds %struct.gz_stream, ptr %5, i32 0, i32 0
  %state = getelementptr inbounds %struct.z_stream_s, ptr %stream, i32 0, i32 7
  %6 = load ptr, ptr %state, align 8
  %cmp = icmp ne ptr %6, null
  br i1 %cmp, label %if.then5, label %if.end19

if.then5:                                         ; preds = %if.end4
  %7 = load ptr, ptr %s.addr, align 8
  %mode = getelementptr inbounds %struct.gz_stream, ptr %7, i32 0, i32 10
  %8 = load i8, ptr %mode, align 4
  %conv = sext i8 %8 to i32
  %cmp6 = icmp eq i32 %conv, 119
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then5
  %9 = load ptr, ptr %s.addr, align 8
  %stream9 = getelementptr inbounds %struct.gz_stream, ptr %9, i32 0, i32 0
  %call = call i32 @deflateEnd(ptr noundef %stream9)
  store i32 %call, ptr %err, align 4
  br label %if.end18

if.else:                                          ; preds = %if.then5
  %10 = load ptr, ptr %s.addr, align 8
  %mode10 = getelementptr inbounds %struct.gz_stream, ptr %10, i32 0, i32 10
  %11 = load i8, ptr %mode10, align 4
  %conv11 = sext i8 %11 to i32
  %cmp12 = icmp eq i32 %conv11, 114
  br i1 %cmp12, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.else
  %12 = load ptr, ptr %s.addr, align 8
  %stream15 = getelementptr inbounds %struct.gz_stream, ptr %12, i32 0, i32 0
  %call16 = call i32 @inflateEnd(ptr noundef %stream15)
  store i32 %call16, ptr %err, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.else
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then8
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end4
  %13 = load ptr, ptr %s.addr, align 8
  %file = getelementptr inbounds %struct.gz_stream, ptr %13, i32 0, i32 3
  %14 = load ptr, ptr %file, align 8
  %cmp20 = icmp ne ptr %14, null
  br i1 %cmp20, label %land.lhs.true, label %if.end31

land.lhs.true:                                    ; preds = %if.end19
  %15 = load ptr, ptr %s.addr, align 8
  %file22 = getelementptr inbounds %struct.gz_stream, ptr %15, i32 0, i32 3
  %16 = load ptr, ptr %file22, align 8
  %call23 = call i32 @fclose(ptr noundef %16)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then25, label %if.end31

if.then25:                                        ; preds = %land.lhs.true
  %call26 = call ptr @__error()
  %17 = load i32, ptr %call26, align 4
  %cmp27 = icmp ne i32 %17, 29
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.then25
  store i32 -1, ptr %err, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.then25
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %land.lhs.true, %if.end19
  %18 = load ptr, ptr %s.addr, align 8
  %z_err = getelementptr inbounds %struct.gz_stream, ptr %18, i32 0, i32 1
  %19 = load i32, ptr %z_err, align 8
  %cmp32 = icmp slt i32 %19, 0
  br i1 %cmp32, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.end31
  %20 = load ptr, ptr %s.addr, align 8
  %z_err35 = getelementptr inbounds %struct.gz_stream, ptr %20, i32 0, i32 1
  %21 = load i32, ptr %z_err35, align 8
  store i32 %21, ptr %err, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end31
  %22 = load ptr, ptr %s.addr, align 8
  %inbuf = getelementptr inbounds %struct.gz_stream, ptr %22, i32 0, i32 4
  %23 = load ptr, ptr %inbuf, align 8
  %tobool37 = icmp ne ptr %23, null
  br i1 %tobool37, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.end36
  %24 = load ptr, ptr %s.addr, align 8
  %inbuf39 = getelementptr inbounds %struct.gz_stream, ptr %24, i32 0, i32 4
  %25 = load ptr, ptr %inbuf39, align 8
  call void @free(ptr noundef %25)
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end36
  %26 = load ptr, ptr %s.addr, align 8
  %outbuf = getelementptr inbounds %struct.gz_stream, ptr %26, i32 0, i32 5
  %27 = load ptr, ptr %outbuf, align 8
  %tobool41 = icmp ne ptr %27, null
  br i1 %tobool41, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.end40
  %28 = load ptr, ptr %s.addr, align 8
  %outbuf43 = getelementptr inbounds %struct.gz_stream, ptr %28, i32 0, i32 5
  %29 = load ptr, ptr %outbuf43, align 8
  call void @free(ptr noundef %29)
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end40
  %30 = load ptr, ptr %s.addr, align 8
  %path = getelementptr inbounds %struct.gz_stream, ptr %30, i32 0, i32 8
  %31 = load ptr, ptr %path, align 8
  %tobool45 = icmp ne ptr %31, null
  br i1 %tobool45, label %if.then46, label %if.end48

if.then46:                                        ; preds = %if.end44
  %32 = load ptr, ptr %s.addr, align 8
  %path47 = getelementptr inbounds %struct.gz_stream, ptr %32, i32 0, i32 8
  %33 = load ptr, ptr %path47, align 8
  call void @free(ptr noundef %33)
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.end44
  %34 = load ptr, ptr %s.addr, align 8
  %tobool49 = icmp ne ptr %34, null
  br i1 %tobool49, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.end48
  %35 = load ptr, ptr %s.addr, align 8
  call void @free(ptr noundef %35)
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.end48
  %36 = load i32, ptr %err, align 4
  store i32 %36, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end51, %if.then
  %37 = load i32, ptr %retval, align 4
  ret i32 %37
}

; Function Attrs: nounwind ssp uwtable
define internal void @putLong(ptr noundef %file, i64 noundef %x) #0 {
entry:
  %file.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %n = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  store i64 %x, ptr %x.addr, align 8
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %n, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, ptr %x.addr, align 8
  %and = and i64 %1, 255
  %conv = trunc i64 %and to i32
  %2 = load ptr, ptr %file.addr, align 8
  %call = call i32 @fputc(i32 noundef %conv, ptr noundef %2)
  %3 = load i64, ptr %x.addr, align 8
  %shr = lshr i64 %3, 8
  store i64 %shr, ptr %x.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %n, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define ptr @gzerror(ptr noundef %file, ptr noundef %errnum) #0 {
entry:
  %retval = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %errnum.addr = alloca ptr, align 8
  %m = alloca ptr, align 8
  %s = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  store ptr %errnum, ptr %errnum.addr, align 8
  %0 = load ptr, ptr %file.addr, align 8
  store ptr %0, ptr %s, align 8
  %1 = load ptr, ptr %s, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %errnum.addr, align 8
  store i32 -2, ptr %2, align 4
  %3 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 4), align 8
  store ptr %3, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %s, align 8
  %z_err = getelementptr inbounds %struct.gz_stream, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %z_err, align 8
  %6 = load ptr, ptr %errnum.addr, align 8
  store i32 %5, ptr %6, align 4
  %7 = load ptr, ptr %errnum.addr, align 8
  %8 = load i32, ptr %7, align 4
  %cmp1 = icmp eq i32 %8, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store ptr @.str.1, ptr %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %9 = load ptr, ptr %errnum.addr, align 8
  %10 = load i32, ptr %9, align 4
  %cmp4 = icmp eq i32 %10, -1
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end3
  br label %cond.end

cond.false:                                       ; preds = %if.end3
  %11 = load ptr, ptr %s, align 8
  %stream = getelementptr inbounds %struct.gz_stream, ptr %11, i32 0, i32 0
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %stream, i32 0, i32 6
  %12 = load ptr, ptr %msg, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ @.str.1, %cond.true ], [ %12, %cond.false ]
  store ptr %cond, ptr %m, align 8
  %13 = load ptr, ptr %m, align 8
  %cmp5 = icmp eq ptr %13, null
  br i1 %cmp5, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %14 = load ptr, ptr %m, align 8
  %15 = load i8, ptr %14, align 1
  %conv = sext i8 %15 to i32
  %cmp6 = icmp eq i32 %conv, 0
  br i1 %cmp6, label %if.then8, label %if.end10

if.then8:                                         ; preds = %lor.lhs.false, %cond.end
  %16 = load ptr, ptr %s, align 8
  %z_err9 = getelementptr inbounds %struct.gz_stream, ptr %16, i32 0, i32 1
  %17 = load i32, ptr %z_err9, align 8
  %sub = sub nsw i32 2, %17
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [10 x ptr], ptr @z_errmsg, i64 0, i64 %idxprom
  %18 = load ptr, ptr %arrayidx, align 8
  store ptr %18, ptr %m, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %lor.lhs.false
  %19 = load ptr, ptr %s, align 8
  %msg11 = getelementptr inbounds %struct.gz_stream, ptr %19, i32 0, i32 7
  %20 = load ptr, ptr %msg11, align 8
  %tobool = icmp ne ptr %20, null
  br i1 %tobool, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end10
  %21 = load ptr, ptr %s, align 8
  %msg13 = getelementptr inbounds %struct.gz_stream, ptr %21, i32 0, i32 7
  %22 = load ptr, ptr %msg13, align 8
  call void @free(ptr noundef %22)
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10
  %23 = load ptr, ptr %s, align 8
  %path = getelementptr inbounds %struct.gz_stream, ptr %23, i32 0, i32 8
  %24 = load ptr, ptr %path, align 8
  %call = call i64 @strlen(ptr noundef %24)
  %25 = load ptr, ptr %m, align 8
  %call15 = call i64 @strlen(ptr noundef %25)
  %add = add i64 %call, %call15
  %add16 = add i64 %add, 3
  %call17 = call ptr @malloc(i64 noundef %add16) #6
  %26 = load ptr, ptr %s, align 8
  %msg18 = getelementptr inbounds %struct.gz_stream, ptr %26, i32 0, i32 7
  store ptr %call17, ptr %msg18, align 8
  %27 = load ptr, ptr %s, align 8
  %msg19 = getelementptr inbounds %struct.gz_stream, ptr %27, i32 0, i32 7
  %28 = load ptr, ptr %msg19, align 8
  %29 = load ptr, ptr %s, align 8
  %path20 = getelementptr inbounds %struct.gz_stream, ptr %29, i32 0, i32 8
  %30 = load ptr, ptr %path20, align 8
  %31 = load ptr, ptr %s, align 8
  %msg21 = getelementptr inbounds %struct.gz_stream, ptr %31, i32 0, i32 7
  %32 = load ptr, ptr %msg21, align 8
  %33 = call i64 @llvm.objectsize.i64.p0(ptr %32, i1 false, i1 true, i1 false)
  %call22 = call ptr @__strcpy_chk(ptr noundef %28, ptr noundef %30, i64 noundef %33) #7
  %34 = load ptr, ptr %s, align 8
  %msg23 = getelementptr inbounds %struct.gz_stream, ptr %34, i32 0, i32 7
  %35 = load ptr, ptr %msg23, align 8
  %36 = load ptr, ptr %s, align 8
  %msg24 = getelementptr inbounds %struct.gz_stream, ptr %36, i32 0, i32 7
  %37 = load ptr, ptr %msg24, align 8
  %38 = call i64 @llvm.objectsize.i64.p0(ptr %37, i1 false, i1 true, i1 false)
  %call25 = call ptr @__strcat_chk(ptr noundef %35, ptr noundef @.str.2, i64 noundef %38) #7
  %39 = load ptr, ptr %s, align 8
  %msg26 = getelementptr inbounds %struct.gz_stream, ptr %39, i32 0, i32 7
  %40 = load ptr, ptr %msg26, align 8
  %41 = load ptr, ptr %m, align 8
  %42 = load ptr, ptr %s, align 8
  %msg27 = getelementptr inbounds %struct.gz_stream, ptr %42, i32 0, i32 7
  %43 = load ptr, ptr %msg27, align 8
  %44 = call i64 @llvm.objectsize.i64.p0(ptr %43, i1 false, i1 true, i1 false)
  %call28 = call ptr @__strcat_chk(ptr noundef %40, ptr noundef %41, i64 noundef %44) #7
  %45 = load ptr, ptr %s, align 8
  %msg29 = getelementptr inbounds %struct.gz_stream, ptr %45, i32 0, i32 7
  %46 = load ptr, ptr %msg29, align 8
  store ptr %46, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end14, %if.then2, %if.then
  %47 = load ptr, ptr %retval, align 8
  ret ptr %47
}

declare void @free(ptr noundef) #1

; Function Attrs: nounwind
declare ptr @__strcpy_chk(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind
declare ptr @__strcat_chk(ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @deflateInit2_(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare i32 @inflateInit2_(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

declare ptr @"\01_fdopen"(i32 noundef, ptr noundef) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

declare i64 @ftell(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_byte(ptr noundef %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  %z_eof = getelementptr inbounds %struct.gz_stream, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %z_eof, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %s.addr, align 8
  %stream = getelementptr inbounds %struct.gz_stream, ptr %2, i32 0, i32 0
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %stream, i32 0, i32 1
  %3 = load i32, ptr %avail_in, align 8
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then1, label %if.end19

if.then1:                                         ; preds = %if.end
  %call = call ptr @__error()
  store i32 0, ptr %call, align 4
  %4 = load ptr, ptr %s.addr, align 8
  %inbuf = getelementptr inbounds %struct.gz_stream, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %inbuf, align 8
  %6 = load ptr, ptr %s.addr, align 8
  %file = getelementptr inbounds %struct.gz_stream, ptr %6, i32 0, i32 3
  %7 = load ptr, ptr %file, align 8
  %call2 = call i64 @fread(ptr noundef %5, i64 noundef 1, i64 noundef 16384, ptr noundef %7)
  %conv = trunc i64 %call2 to i32
  %8 = load ptr, ptr %s.addr, align 8
  %stream3 = getelementptr inbounds %struct.gz_stream, ptr %8, i32 0, i32 0
  %avail_in4 = getelementptr inbounds %struct.z_stream_s, ptr %stream3, i32 0, i32 1
  store i32 %conv, ptr %avail_in4, align 8
  %9 = load ptr, ptr %s.addr, align 8
  %stream5 = getelementptr inbounds %struct.gz_stream, ptr %9, i32 0, i32 0
  %avail_in6 = getelementptr inbounds %struct.z_stream_s, ptr %stream5, i32 0, i32 1
  %10 = load i32, ptr %avail_in6, align 8
  %cmp7 = icmp eq i32 %10, 0
  br i1 %cmp7, label %if.then9, label %if.end16

if.then9:                                         ; preds = %if.then1
  %11 = load ptr, ptr %s.addr, align 8
  %z_eof10 = getelementptr inbounds %struct.gz_stream, ptr %11, i32 0, i32 2
  store i32 1, ptr %z_eof10, align 4
  %12 = load ptr, ptr %s.addr, align 8
  %file11 = getelementptr inbounds %struct.gz_stream, ptr %12, i32 0, i32 3
  %13 = load ptr, ptr %file11, align 8
  %call12 = call i32 @ferror(ptr noundef %13)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.then9
  %14 = load ptr, ptr %s.addr, align 8
  %z_err = getelementptr inbounds %struct.gz_stream, ptr %14, i32 0, i32 1
  store i32 -1, ptr %z_err, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.then9
  store i32 -1, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.then1
  %15 = load ptr, ptr %s.addr, align 8
  %inbuf17 = getelementptr inbounds %struct.gz_stream, ptr %15, i32 0, i32 4
  %16 = load ptr, ptr %inbuf17, align 8
  %17 = load ptr, ptr %s.addr, align 8
  %stream18 = getelementptr inbounds %struct.gz_stream, ptr %17, i32 0, i32 0
  %next_in = getelementptr inbounds %struct.z_stream_s, ptr %stream18, i32 0, i32 0
  store ptr %16, ptr %next_in, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.end16, %if.end
  %18 = load ptr, ptr %s.addr, align 8
  %stream20 = getelementptr inbounds %struct.gz_stream, ptr %18, i32 0, i32 0
  %avail_in21 = getelementptr inbounds %struct.z_stream_s, ptr %stream20, i32 0, i32 1
  %19 = load i32, ptr %avail_in21, align 8
  %dec = add i32 %19, -1
  store i32 %dec, ptr %avail_in21, align 8
  %20 = load ptr, ptr %s.addr, align 8
  %stream22 = getelementptr inbounds %struct.gz_stream, ptr %20, i32 0, i32 0
  %next_in23 = getelementptr inbounds %struct.z_stream_s, ptr %stream22, i32 0, i32 0
  %21 = load ptr, ptr %next_in23, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr, ptr %next_in23, align 8
  %22 = load i8, ptr %21, align 1
  %conv24 = zext i8 %22 to i32
  store i32 %conv24, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end19, %if.end15, %if.then
  %23 = load i32, ptr %retval, align 4
  ret i32 %23
}

declare i32 @deflateEnd(ptr noundef) #1

declare i32 @inflateEnd(ptr noundef) #1

declare i32 @fclose(ptr noundef) #1

declare i32 @fputc(i32 noundef, ptr noundef) #1

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { allocsize(0) }
attributes #7 = { nounwind }

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
