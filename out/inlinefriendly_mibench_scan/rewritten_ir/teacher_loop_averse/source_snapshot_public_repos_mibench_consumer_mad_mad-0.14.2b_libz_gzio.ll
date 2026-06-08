; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_loop_averse/source_snapshot_public_repos_mibench_consumer_mad_mad-0.14.2b_libz_gzio.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/libz/gzio.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.gz_stream = type { %struct.z_stream_s, i32, i32, ptr, ptr, ptr, i64, ptr, ptr, i32, i8, i64 }

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
  %call = call ptr @gz_open(ptr noundef %path, ptr noundef %mode, i32 noundef -1)
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
  store ptr %mode, ptr %p, align 8
  store ptr %fmode, ptr %m, align 8
  %0 = load ptr, ptr %path.addr, align 8
  %tobool.not = icmp eq ptr %0, null
  %1 = load ptr, ptr %mode.addr, align 8
  %tobool1.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %call = call dereferenceable_or_null(184) ptr @malloc(i64 noundef 184) #7
  store ptr %call, ptr %s, align 8
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end4:                                          ; preds = %if.end
  %2 = load ptr, ptr %s, align 8
  %zalloc = getelementptr inbounds %struct.z_stream_s, ptr %2, i64 0, i32 8
  store ptr null, ptr %zalloc, align 8
  %zfree = getelementptr inbounds %struct.z_stream_s, ptr %2, i64 0, i32 9
  store ptr null, ptr %zfree, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %2, i64 0, i32 10
  store ptr null, ptr %opaque, align 8
  %3 = load ptr, ptr %s, align 8
  %inbuf = getelementptr inbounds %struct.gz_stream, ptr %3, i64 0, i32 4
  store ptr null, ptr %inbuf, align 8
  store ptr null, ptr %3, align 8
  %outbuf = getelementptr inbounds %struct.gz_stream, ptr %3, i64 0, i32 5
  store ptr null, ptr %outbuf, align 8
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %3, i64 0, i32 3
  store ptr null, ptr %next_out, align 8
  %4 = load ptr, ptr %s, align 8
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %4, i64 0, i32 4
  store i32 0, ptr %avail_out, align 8
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %4, i64 0, i32 1
  store i32 0, ptr %avail_in, align 8
  %file = getelementptr inbounds %struct.gz_stream, ptr %4, i64 0, i32 3
  store ptr null, ptr %file, align 8
  %5 = load ptr, ptr %s, align 8
  %z_err = getelementptr inbounds %struct.gz_stream, ptr %5, i64 0, i32 1
  store i32 0, ptr %z_err, align 8
  %z_eof = getelementptr inbounds %struct.gz_stream, ptr %5, i64 0, i32 2
  store i32 0, ptr %z_eof, align 4
  %call11 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #8
  %crc = getelementptr inbounds %struct.gz_stream, ptr %5, i64 0, i32 6
  store i64 %call11, ptr %crc, align 8
  %6 = load ptr, ptr %s, align 8
  %msg = getelementptr inbounds %struct.gz_stream, ptr %6, i64 0, i32 7
  store ptr null, ptr %msg, align 8
  %transparent = getelementptr inbounds %struct.gz_stream, ptr %6, i64 0, i32 9
  store i32 0, ptr %transparent, align 8
  %7 = load ptr, ptr %path.addr, align 8
  %call12 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #8
  %add = add i64 %call12, 1
  %call13 = call ptr @malloc(i64 noundef %add) #7
  %8 = load ptr, ptr %s, align 8
  %path14 = getelementptr inbounds %struct.gz_stream, ptr %8, i64 0, i32 8
  store ptr %call13, ptr %path14, align 8
  %cmp = icmp eq ptr %call13, null
  br i1 %cmp, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end4
  %9 = load ptr, ptr %s, align 8
  %call17 = call i32 @destroy(ptr noundef %9)
  store ptr null, ptr %retval, align 8
  br label %return

if.end18:                                         ; preds = %if.end4
  %10 = load ptr, ptr %s, align 8
  %path19 = getelementptr inbounds %struct.gz_stream, ptr %10, i64 0, i32 8
  %11 = load ptr, ptr %path19, align 8
  %12 = load ptr, ptr %path.addr, align 8
  %13 = call i64 @llvm.objectsize.i64.p0(ptr %11, i1 false, i1 true, i1 false)
  %call21 = call ptr @__strcpy_chk(ptr noundef %11, ptr noundef %12, i64 noundef %13) #8
  %mode22 = getelementptr inbounds %struct.gz_stream, ptr %10, i64 0, i32 10
  store i8 0, ptr %mode22, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end18
  %14 = load ptr, ptr %p, align 8
  %15 = load i8, ptr %14, align 1
  %cmp23 = icmp eq i8 %15, 114
  br i1 %cmp23, label %if.then25, label %if.end27

if.then25:                                        ; preds = %do.body
  %16 = load ptr, ptr %s, align 8
  %mode26 = getelementptr inbounds %struct.gz_stream, ptr %16, i64 0, i32 10
  store i8 114, ptr %mode26, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %do.body
  %17 = load ptr, ptr %p, align 8
  %18 = load i8, ptr %17, align 1
  %cmp29 = icmp eq i8 %18, 119
  br i1 %cmp29, label %if.then35, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %if.end27
  %19 = load ptr, ptr %p, align 8
  %20 = load i8, ptr %19, align 1
  %cmp33 = icmp eq i8 %20, 97
  br i1 %cmp33, label %if.then35, label %if.end37

if.then35:                                        ; preds = %lor.lhs.false31, %if.end27
  %21 = load ptr, ptr %s, align 8
  %mode36 = getelementptr inbounds %struct.gz_stream, ptr %21, i64 0, i32 10
  store i8 119, ptr %mode36, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %lor.lhs.false31
  %22 = load ptr, ptr %p, align 8
  %23 = load i8, ptr %22, align 1
  %cmp39 = icmp sgt i8 %23, 47
  br i1 %cmp39, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end37
  %24 = load ptr, ptr %p, align 8
  %25 = load i8, ptr %24, align 1
  %cmp42 = icmp slt i8 %25, 58
  br i1 %cmp42, label %if.then44, label %if.else

if.then44:                                        ; preds = %land.lhs.true
  %26 = load ptr, ptr %p, align 8
  %27 = load i8, ptr %26, align 1
  %conv45 = sext i8 %27 to i32
  %sub = add nsw i32 %conv45, -48
  store i32 %sub, ptr %level, align 4
  br label %do.cond

if.else:                                          ; preds = %land.lhs.true, %if.end37
  %28 = load ptr, ptr %p, align 8
  %29 = load i8, ptr %28, align 1
  %cmp47 = icmp eq i8 %29, 102
  br i1 %cmp47, label %if.then49, label %if.else50

if.then49:                                        ; preds = %if.else
  store i32 1, ptr %strategy, align 4
  br label %do.cond

if.else50:                                        ; preds = %if.else
  %30 = load ptr, ptr %p, align 8
  %31 = load i8, ptr %30, align 1
  %cmp52 = icmp eq i8 %31, 104
  br i1 %cmp52, label %if.then54, label %if.else55

if.then54:                                        ; preds = %if.else50
  store i32 2, ptr %strategy, align 4
  br label %do.cond

if.else55:                                        ; preds = %if.else50
  %32 = load ptr, ptr %p, align 8
  %33 = load i8, ptr %32, align 1
  %34 = load ptr, ptr %m, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %34, i64 1
  store ptr %incdec.ptr, ptr %m, align 8
  store i8 %33, ptr %34, align 1
  br label %do.cond

do.cond:                                          ; preds = %if.then44, %if.then54, %if.else55, %if.then49
  %35 = load ptr, ptr %p, align 8
  %incdec.ptr59 = getelementptr inbounds i8, ptr %35, i64 1
  store ptr %incdec.ptr59, ptr %p, align 8
  %36 = load i8, ptr %35, align 1
  %tobool61.not = icmp eq i8 %36, 0
  %37 = load ptr, ptr %m, align 8
  %add.ptr = getelementptr inbounds i8, ptr %fmode, i64 80
  %cmp63 = icmp ne ptr %37, %add.ptr
  %38 = select i1 %tobool61.not, i1 false, i1 %cmp63
  br i1 %38, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  %39 = load ptr, ptr %s, align 8
  %mode65 = getelementptr inbounds %struct.gz_stream, ptr %39, i64 0, i32 10
  %40 = load i8, ptr %mode65, align 4
  %cmp67 = icmp eq i8 %40, 0
  br i1 %cmp67, label %if.then69, label %if.end71

if.then69:                                        ; preds = %do.end
  %41 = load ptr, ptr %s, align 8
  %call70 = call i32 @destroy(ptr noundef %41)
  store ptr null, ptr %retval, align 8
  br label %return

if.end71:                                         ; preds = %do.end
  %42 = load ptr, ptr %s, align 8
  %mode72 = getelementptr inbounds %struct.gz_stream, ptr %42, i64 0, i32 10
  %43 = load i8, ptr %mode72, align 4
  %cmp74 = icmp eq i8 %43, 119
  br i1 %cmp74, label %if.then76, label %if.else92

if.then76:                                        ; preds = %if.end71
  %44 = load ptr, ptr %s, align 8
  %45 = load i32, ptr %level, align 4
  %46 = load i32, ptr %strategy, align 4
  %call78 = call i32 @deflateInit2_(ptr noundef %44, i32 noundef %45, i32 noundef 8, i32 noundef -15, i32 noundef 8, i32 noundef %46, ptr noundef nonnull @.str.3, i32 noundef 112) #8
  store i32 %call78, ptr %err, align 4
  %call79 = call dereferenceable_or_null(16384) ptr @malloc(i64 noundef 16384) #7
  %outbuf80 = getelementptr inbounds %struct.gz_stream, ptr %44, i64 0, i32 5
  store ptr %call79, ptr %outbuf80, align 8
  %47 = load ptr, ptr %s, align 8
  %next_out82 = getelementptr inbounds %struct.z_stream_s, ptr %47, i64 0, i32 3
  store ptr %call79, ptr %next_out82, align 8
  %48 = load i32, ptr %err, align 4
  %cmp83.not = icmp eq i32 %48, 0
  br i1 %cmp83.not, label %lor.lhs.false85, label %if.then89

lor.lhs.false85:                                  ; preds = %if.then76
  %49 = load ptr, ptr %s, align 8
  %outbuf86 = getelementptr inbounds %struct.gz_stream, ptr %49, i64 0, i32 5
  %50 = load ptr, ptr %outbuf86, align 8
  %cmp87 = icmp eq ptr %50, null
  br i1 %cmp87, label %if.then89, label %if.end108

if.then89:                                        ; preds = %lor.lhs.false85, %if.then76
  %51 = load ptr, ptr %s, align 8
  %call90 = call i32 @destroy(ptr noundef %51)
  store ptr null, ptr %retval, align 8
  br label %return

if.else92:                                        ; preds = %if.end71
  %call93 = call dereferenceable_or_null(16384) ptr @malloc(i64 noundef 16384) #7
  %52 = load ptr, ptr %s, align 8
  %inbuf94 = getelementptr inbounds %struct.gz_stream, ptr %52, i64 0, i32 4
  store ptr %call93, ptr %inbuf94, align 8
  store ptr %call93, ptr %52, align 8
  %call98 = call i32 @inflateInit2_(ptr noundef nonnull %52, i32 noundef -15, ptr noundef nonnull @.str.3, i32 noundef 112) #8
  store i32 %call98, ptr %err, align 4
  %cmp99.not = icmp eq i32 %call98, 0
  br i1 %cmp99.not, label %lor.lhs.false101, label %if.then105

lor.lhs.false101:                                 ; preds = %if.else92
  %53 = load ptr, ptr %s, align 8
  %inbuf102 = getelementptr inbounds %struct.gz_stream, ptr %53, i64 0, i32 4
  %54 = load ptr, ptr %inbuf102, align 8
  %cmp103 = icmp eq ptr %54, null
  br i1 %cmp103, label %if.then105, label %if.end108

if.then105:                                       ; preds = %lor.lhs.false101, %if.else92
  %55 = load ptr, ptr %s, align 8
  %call106 = call i32 @destroy(ptr noundef %55)
  store ptr null, ptr %retval, align 8
  br label %return

if.end108:                                        ; preds = %lor.lhs.false101, %lor.lhs.false85
  %56 = load ptr, ptr %s, align 8
  %avail_out110 = getelementptr inbounds %struct.z_stream_s, ptr %56, i64 0, i32 4
  store i32 16384, ptr %avail_out110, align 8
  %call111 = call ptr @__error() #8
  store i32 0, ptr %call111, align 4
  %57 = load i32, ptr %fd.addr, align 4
  %cmp112 = icmp slt i32 %57, 0
  br i1 %cmp112, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end108
  %58 = load ptr, ptr %path.addr, align 8
  %call115 = call ptr @"\01_fopen"(ptr noundef %58, ptr noundef nonnull %fmode) #8
  br label %cond.end

cond.false:                                       ; preds = %if.end108
  %59 = load i32, ptr %fd.addr, align 4
  %call117 = call ptr @"\01_fdopen"(i32 noundef %59, ptr noundef nonnull %fmode) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call115, %cond.true ], [ %call117, %cond.false ]
  %60 = load ptr, ptr %s, align 8
  %file118 = getelementptr inbounds %struct.gz_stream, ptr %60, i64 0, i32 3
  store ptr %cond, ptr %file118, align 8
  %cmp120 = icmp eq ptr %cond, null
  br i1 %cmp120, label %if.then122, label %if.end124

if.then122:                                       ; preds = %cond.end
  %61 = load ptr, ptr %s, align 8
  %call123 = call i32 @destroy(ptr noundef %61)
  store ptr null, ptr %retval, align 8
  br label %return

if.end124:                                        ; preds = %cond.end
  %62 = load ptr, ptr %s, align 8
  %mode125 = getelementptr inbounds %struct.gz_stream, ptr %62, i64 0, i32 10
  %63 = load i8, ptr %mode125, align 4
  %cmp127 = icmp eq i8 %63, 119
  br i1 %cmp127, label %if.then129, label %if.else132

if.then129:                                       ; preds = %if.end124
  %64 = load ptr, ptr %s, align 8
  %file130 = getelementptr inbounds %struct.gz_stream, ptr %64, i64 0, i32 3
  %65 = load ptr, ptr %file130, align 8
  %66 = load i32, ptr @gz_magic, align 4
  %67 = load i32, ptr getelementptr inbounds ([2 x i32], ptr @gz_magic, i64 0, i64 1), align 4
  %call131 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %65, ptr noundef nonnull @.str.4, i32 noundef %66, i32 noundef %67, i32 noundef 8, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 3) #8
  %startpos = getelementptr inbounds %struct.gz_stream, ptr %64, i64 0, i32 11
  store i64 10, ptr %startpos, align 8
  br label %if.end140

if.else132:                                       ; preds = %if.end124
  %68 = load ptr, ptr %s, align 8
  call void @check_header(ptr noundef %68)
  %file133 = getelementptr inbounds %struct.gz_stream, ptr %68, i64 0, i32 3
  %69 = load ptr, ptr %file133, align 8
  %call134 = call i64 @ftell(ptr noundef %69) #8
  %avail_in136 = getelementptr inbounds %struct.z_stream_s, ptr %68, i64 0, i32 1
  %70 = load i32, ptr %avail_in136, align 8
  %conv137 = zext i32 %70 to i64
  %sub138 = sub nsw i64 %call134, %conv137
  %71 = load ptr, ptr %s, align 8
  %startpos139 = getelementptr inbounds %struct.gz_stream, ptr %71, i64 0, i32 11
  store i64 %sub138, ptr %startpos139, align 8
  br label %if.end140

if.end140:                                        ; preds = %if.else132, %if.then129
  %72 = load ptr, ptr %s, align 8
  store ptr %72, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end140, %if.then122, %if.then105, %if.then89, %if.then69, %if.then16, %if.then3, %if.then
  %73 = load ptr, ptr %retval, align 8
  ret ptr %73
}

; Function Attrs: nounwind ssp uwtable
define ptr @gzdopen(i32 noundef %fd, ptr noundef %mode) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %mode.addr = alloca ptr, align 8
  %name = alloca [20 x i8], align 1
  store i32 %fd, ptr %fd.addr, align 4
  store ptr %mode, ptr %mode.addr, align 8
  %cmp = icmp slt i32 %fd, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %fd.addr, align 4
  %call = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef nonnull %name, i32 noundef 0, i64 noundef 20, ptr noundef nonnull @.str, i32 noundef %0) #8
  %1 = load ptr, ptr %mode.addr, align 8
  %call2 = call ptr @gz_open(ptr noundef nonnull %name, ptr noundef %1, i32 noundef %0)
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi ptr [ %call2, %if.end ], [ null, %entry ]
  ret ptr %storemerge
}

declare i32 @__sprintf_chk(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ...) #1

; Function Attrs: nounwind ssp uwtable
define i32 @gzsetparams(ptr noundef %file, i32 noundef %level, i32 noundef %strategy) #0 {
entry:
  %level.addr = alloca i32, align 4
  %strategy.addr = alloca i32, align 4
  %s = alloca ptr, align 8
  store i32 %level, ptr %level.addr, align 4
  store i32 %strategy, ptr %strategy.addr, align 4
  store ptr %file, ptr %s, align 8
  %cmp = icmp eq ptr %file, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %s, align 8
  %mode = getelementptr inbounds %struct.gz_stream, ptr %0, i64 0, i32 10
  %1 = load i8, ptr %mode, align 4
  %cmp1.not = icmp eq i8 %1, 119
  br i1 %cmp1.not, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %s, align 8
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %2, i64 0, i32 4
  %3 = load i32, ptr %avail_out, align 8
  %cmp3 = icmp eq i32 %3, 0
  br i1 %cmp3, label %if.then5, label %if.end15

if.then5:                                         ; preds = %if.end
  %4 = load ptr, ptr %s, align 8
  %outbuf = getelementptr inbounds %struct.gz_stream, ptr %4, i64 0, i32 5
  %5 = load ptr, ptr %outbuf, align 8
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %4, i64 0, i32 3
  store ptr %5, ptr %next_out, align 8
  %file8 = getelementptr inbounds %struct.gz_stream, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %file8, align 8
  %call = call i64 @"\01_fwrite"(ptr noundef %5, i64 noundef 1, i64 noundef 16384, ptr noundef %6) #8
  %cmp9.not = icmp eq i64 %call, 16384
  br i1 %cmp9.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.then5
  %7 = load ptr, ptr %s, align 8
  %z_err = getelementptr inbounds %struct.gz_stream, ptr %7, i64 0, i32 1
  store i32 -1, ptr %z_err, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.then5
  %8 = load ptr, ptr %s, align 8
  %avail_out14 = getelementptr inbounds %struct.z_stream_s, ptr %8, i64 0, i32 4
  store i32 16384, ptr %avail_out14, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.end12, %if.end
  %9 = load ptr, ptr %s, align 8
  %10 = load i32, ptr %level.addr, align 4
  %11 = load i32, ptr %strategy.addr, align 4
  %call17 = call i32 @deflateParams(ptr noundef %9, i32 noundef %10, i32 noundef %11) #8
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end15
  %storemerge = phi i32 [ %call17, %if.end15 ], [ -2, %lor.lhs.false ], [ -2, %entry ]
  ret i32 %storemerge
}

declare i64 @"\01_fwrite"(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

declare i32 @deflateParams(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define i32 @gzread(ptr noundef %file, ptr noundef %buf, i32 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %s = alloca ptr, align 8
  %start = alloca ptr, align 8
  %next_out = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  store ptr %file, ptr %s, align 8
  store ptr %buf, ptr %start, align 8
  %cmp = icmp eq ptr %file, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %s, align 8
  %mode = getelementptr inbounds %struct.gz_stream, ptr %0, i64 0, i32 10
  %1 = load i8, ptr %mode, align 4
  %cmp1.not = icmp eq i8 %1, 114
  br i1 %cmp1.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %s, align 8
  %z_err = getelementptr inbounds %struct.gz_stream, ptr %2, i64 0, i32 1
  %3 = load i32, ptr %z_err, align 8
  %cmp3 = icmp eq i32 %3, -3
  br i1 %cmp3, label %if.then9, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %if.end
  %4 = load ptr, ptr %s, align 8
  %z_err6 = getelementptr inbounds %struct.gz_stream, ptr %4, i64 0, i32 1
  %5 = load i32, ptr %z_err6, align 8
  %cmp7 = icmp eq i32 %5, -1
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false5, %if.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %lor.lhs.false5
  %6 = load ptr, ptr %s, align 8
  %z_err11 = getelementptr inbounds %struct.gz_stream, ptr %6, i64 0, i32 1
  %7 = load i32, ptr %z_err11, align 8
  %cmp12 = icmp eq i32 %7, 1
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end10
  store i32 0, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.end10
  %8 = load ptr, ptr %buf.addr, align 8
  store ptr %8, ptr %next_out, align 8
  %9 = load ptr, ptr %s, align 8
  %next_out16 = getelementptr inbounds %struct.z_stream_s, ptr %9, i64 0, i32 3
  store ptr %8, ptr %next_out16, align 8
  %10 = load i32, ptr %len.addr, align 4
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %9, i64 0, i32 4
  store i32 %10, ptr %avail_out, align 8
  br label %while.cond

while.cond:                                       ; preds = %lor.lhs.false157, %if.end15
  %11 = load ptr, ptr %s, align 8
  %avail_out19 = getelementptr inbounds %struct.z_stream_s, ptr %11, i64 0, i32 4
  %12 = load i32, ptr %avail_out19, align 8
  %cmp20.not = icmp eq i32 %12, 0
  br i1 %cmp20.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %13 = load ptr, ptr %s, align 8
  %transparent = getelementptr inbounds %struct.gz_stream, ptr %13, i64 0, i32 9
  %14 = load i32, ptr %transparent, align 8
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.end81, label %if.then22

if.then22:                                        ; preds = %while.body
  %15 = load ptr, ptr %s, align 8
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %15, i64 0, i32 1
  %16 = load i32, ptr %avail_in, align 8
  store i32 %16, ptr %n, align 4
  %avail_out25 = getelementptr inbounds %struct.z_stream_s, ptr %15, i64 0, i32 4
  %17 = load i32, ptr %avail_out25, align 8
  %cmp26 = icmp ugt i32 %16, %17
  br i1 %cmp26, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.then22
  %18 = load ptr, ptr %s, align 8
  %avail_out30 = getelementptr inbounds %struct.z_stream_s, ptr %18, i64 0, i32 4
  %19 = load i32, ptr %avail_out30, align 8
  store i32 %19, ptr %n, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.then22
  %20 = load i32, ptr %n, align 4
  %cmp32.not = icmp eq i32 %20, 0
  br i1 %cmp32.not, label %if.end52, label %if.then34

if.then34:                                        ; preds = %if.end31
  %21 = load ptr, ptr %s, align 8
  %next_out36 = getelementptr inbounds %struct.z_stream_s, ptr %21, i64 0, i32 3
  %22 = load ptr, ptr %next_out36, align 8
  %23 = load ptr, ptr %21, align 8
  %24 = load i32, ptr %n, align 4
  %conv38 = zext i32 %24 to i64
  %25 = call i64 @llvm.objectsize.i64.p0(ptr %22, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %22, ptr noundef %23, i64 noundef %conv38, i64 noundef %25) #8
  %26 = load ptr, ptr %next_out, align 8
  %idx.ext = zext i32 %24 to i64
  %add.ptr = getelementptr inbounds i8, ptr %26, i64 %idx.ext
  store ptr %add.ptr, ptr %next_out, align 8
  %27 = load ptr, ptr %s, align 8
  %next_out42 = getelementptr inbounds %struct.z_stream_s, ptr %27, i64 0, i32 3
  store ptr %add.ptr, ptr %next_out42, align 8
  %28 = load i32, ptr %n, align 4
  %29 = load ptr, ptr %27, align 8
  %idx.ext45 = zext i32 %28 to i64
  %add.ptr46 = getelementptr inbounds i8, ptr %29, i64 %idx.ext45
  store ptr %add.ptr46, ptr %27, align 8
  %30 = load ptr, ptr %s, align 8
  %avail_out48 = getelementptr inbounds %struct.z_stream_s, ptr %30, i64 0, i32 4
  %31 = load i32, ptr %avail_out48, align 8
  %sub = sub i32 %31, %28
  store i32 %sub, ptr %avail_out48, align 8
  %32 = load i32, ptr %n, align 4
  %avail_in50 = getelementptr inbounds %struct.z_stream_s, ptr %30, i64 0, i32 1
  %33 = load i32, ptr %avail_in50, align 8
  %sub51 = sub i32 %33, %32
  store i32 %sub51, ptr %avail_in50, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.then34, %if.end31
  %34 = load ptr, ptr %s, align 8
  %avail_out54 = getelementptr inbounds %struct.z_stream_s, ptr %34, i64 0, i32 4
  %35 = load i32, ptr %avail_out54, align 8
  %cmp55.not = icmp eq i32 %35, 0
  br i1 %cmp55.not, label %if.end68, label %if.then57

if.then57:                                        ; preds = %if.end52
  %36 = load ptr, ptr %next_out, align 8
  %37 = load ptr, ptr %s, align 8
  %avail_out59 = getelementptr inbounds %struct.z_stream_s, ptr %37, i64 0, i32 4
  %38 = load i32, ptr %avail_out59, align 8
  %conv60 = zext i32 %38 to i64
  %file61 = getelementptr inbounds %struct.gz_stream, ptr %37, i64 0, i32 3
  %39 = load ptr, ptr %file61, align 8
  %call62 = call i64 @fread(ptr noundef %36, i64 noundef 1, i64 noundef %conv60, ptr noundef %39) #8
  %40 = load ptr, ptr %s, align 8
  %avail_out64 = getelementptr inbounds %struct.z_stream_s, ptr %40, i64 0, i32 4
  %41 = load i32, ptr %avail_out64, align 8
  %42 = trunc i64 %call62 to i32
  %conv67 = sub i32 %41, %42
  store i32 %conv67, ptr %avail_out64, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.then57, %if.end52
  %43 = load ptr, ptr %s, align 8
  %avail_out70 = getelementptr inbounds %struct.z_stream_s, ptr %43, i64 0, i32 4
  %44 = load i32, ptr %avail_out70, align 8
  %45 = load i32, ptr %len.addr, align 4
  %sub71 = sub i32 %45, %44
  store i32 %sub71, ptr %len.addr, align 4
  %conv72 = zext i32 %sub71 to i64
  %46 = load ptr, ptr %s, align 8
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %46, i64 0, i32 2
  %47 = load i64, ptr %total_in, align 8
  %add = add i64 %47, %conv72
  store i64 %add, ptr %total_in, align 8
  %48 = load i32, ptr %len.addr, align 4
  %conv74 = zext i32 %48 to i64
  %49 = load ptr, ptr %s, align 8
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %49, i64 0, i32 5
  %50 = load i64, ptr %total_out, align 8
  %add76 = add i64 %50, %conv74
  store i64 %add76, ptr %total_out, align 8
  %51 = load i32, ptr %len.addr, align 4
  %cmp77 = icmp eq i32 %51, 0
  br i1 %cmp77, label %if.then79, label %if.end80

if.then79:                                        ; preds = %if.end68
  %52 = load ptr, ptr %s, align 8
  %z_eof = getelementptr inbounds %struct.gz_stream, ptr %52, i64 0, i32 2
  store i32 1, ptr %z_eof, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then79, %if.end68
  %53 = load i32, ptr %len.addr, align 4
  store i32 %53, ptr %retval, align 4
  br label %return

if.end81:                                         ; preds = %while.body
  %54 = load ptr, ptr %s, align 8
  %avail_in83 = getelementptr inbounds %struct.z_stream_s, ptr %54, i64 0, i32 1
  %55 = load i32, ptr %avail_in83, align 8
  %cmp84 = icmp eq i32 %55, 0
  br i1 %cmp84, label %land.lhs.true, label %if.end111

land.lhs.true:                                    ; preds = %if.end81
  %56 = load ptr, ptr %s, align 8
  %z_eof86 = getelementptr inbounds %struct.gz_stream, ptr %56, i64 0, i32 2
  %57 = load i32, ptr %z_eof86, align 4
  %tobool87.not = icmp eq i32 %57, 0
  br i1 %tobool87.not, label %if.then88, label %if.end111

if.then88:                                        ; preds = %land.lhs.true
  %call89 = call ptr @__error() #8
  store i32 0, ptr %call89, align 4
  %58 = load ptr, ptr %s, align 8
  %inbuf = getelementptr inbounds %struct.gz_stream, ptr %58, i64 0, i32 4
  %59 = load ptr, ptr %inbuf, align 8
  %file90 = getelementptr inbounds %struct.gz_stream, ptr %58, i64 0, i32 3
  %60 = load ptr, ptr %file90, align 8
  %call91 = call i64 @fread(ptr noundef %59, i64 noundef 1, i64 noundef 16384, ptr noundef %60) #8
  %conv92 = trunc i64 %call91 to i32
  %61 = load ptr, ptr %s, align 8
  %avail_in94 = getelementptr inbounds %struct.z_stream_s, ptr %61, i64 0, i32 1
  store i32 %conv92, ptr %avail_in94, align 8
  %cmp97 = icmp eq i32 %conv92, 0
  br i1 %cmp97, label %if.then99, label %if.end107

if.then99:                                        ; preds = %if.then88
  %62 = load ptr, ptr %s, align 8
  %z_eof100 = getelementptr inbounds %struct.gz_stream, ptr %62, i64 0, i32 2
  store i32 1, ptr %z_eof100, align 4
  %file101 = getelementptr inbounds %struct.gz_stream, ptr %62, i64 0, i32 3
  %63 = load ptr, ptr %file101, align 8
  %call102 = call i32 @ferror(ptr noundef %63) #8
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end107, label %if.then104

if.then104:                                       ; preds = %if.then99
  %64 = load ptr, ptr %s, align 8
  %z_err105 = getelementptr inbounds %struct.gz_stream, ptr %64, i64 0, i32 1
  store i32 -1, ptr %z_err105, align 8
  br label %while.end

if.end107:                                        ; preds = %if.then99, %if.then88
  %65 = load ptr, ptr %s, align 8
  %inbuf108 = getelementptr inbounds %struct.gz_stream, ptr %65, i64 0, i32 4
  %66 = load ptr, ptr %inbuf108, align 8
  store ptr %66, ptr %65, align 8
  br label %if.end111

if.end111:                                        ; preds = %if.end107, %land.lhs.true, %if.end81
  %67 = load ptr, ptr %s, align 8
  %call113 = call i32 @inflate(ptr noundef %67, i32 noundef 0) #8
  %z_err114 = getelementptr inbounds %struct.gz_stream, ptr %67, i64 0, i32 1
  store i32 %call113, ptr %z_err114, align 8
  %cmp116 = icmp eq i32 %call113, 1
  br i1 %cmp116, label %if.then118, label %if.end153

if.then118:                                       ; preds = %if.end111
  %68 = load ptr, ptr %s, align 8
  %crc = getelementptr inbounds %struct.gz_stream, ptr %68, i64 0, i32 6
  %69 = load i64, ptr %crc, align 8
  %70 = load ptr, ptr %start, align 8
  %next_out120 = getelementptr inbounds %struct.z_stream_s, ptr %68, i64 0, i32 3
  %71 = load ptr, ptr %next_out120, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %71 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %70 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv121 = trunc i64 %sub.ptr.sub to i32
  %call122 = call i64 @crc32(i64 noundef %69, ptr noundef %70, i32 noundef %conv121) #8
  %72 = load ptr, ptr %s, align 8
  %crc123 = getelementptr inbounds %struct.gz_stream, ptr %72, i64 0, i32 6
  store i64 %call122, ptr %crc123, align 8
  %next_out125 = getelementptr inbounds %struct.z_stream_s, ptr %72, i64 0, i32 3
  %73 = load ptr, ptr %next_out125, align 8
  store ptr %73, ptr %start, align 8
  %call126 = call i64 @getLong(ptr noundef %72)
  %74 = load ptr, ptr %s, align 8
  %crc127 = getelementptr inbounds %struct.gz_stream, ptr %74, i64 0, i32 6
  %75 = load i64, ptr %crc127, align 8
  %cmp128.not = icmp eq i64 %call126, %75
  br i1 %cmp128.not, label %if.else, label %if.then130

if.then130:                                       ; preds = %if.then118
  %76 = load ptr, ptr %s, align 8
  %z_err131 = getelementptr inbounds %struct.gz_stream, ptr %76, i64 0, i32 1
  store i32 -3, ptr %z_err131, align 8
  br label %if.end153

if.else:                                          ; preds = %if.then118
  %77 = load ptr, ptr %s, align 8
  %call132 = call i64 @getLong(ptr noundef %77)
  call void @check_header(ptr noundef %77)
  %z_err133 = getelementptr inbounds %struct.gz_stream, ptr %77, i64 0, i32 1
  %78 = load i32, ptr %z_err133, align 8
  %cmp134 = icmp eq i32 %78, 0
  br i1 %cmp134, label %if.then136, label %if.end153

if.then136:                                       ; preds = %if.else
  %79 = load ptr, ptr %s, align 8
  %total_in139 = getelementptr inbounds %struct.z_stream_s, ptr %79, i64 0, i32 2
  %80 = load i64, ptr %total_in139, align 8
  %total_out142 = getelementptr inbounds %struct.z_stream_s, ptr %79, i64 0, i32 5
  %81 = load i64, ptr %total_out142, align 8
  %call144 = call i32 @inflateReset(ptr noundef %79) #8
  %total_in146 = getelementptr inbounds %struct.z_stream_s, ptr %79, i64 0, i32 2
  store i64 %80, ptr %total_in146, align 8
  %82 = load ptr, ptr %s, align 8
  %total_out148 = getelementptr inbounds %struct.z_stream_s, ptr %82, i64 0, i32 5
  store i64 %81, ptr %total_out148, align 8
  %call149 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #8
  %crc150 = getelementptr inbounds %struct.gz_stream, ptr %82, i64 0, i32 6
  store i64 %call149, ptr %crc150, align 8
  br label %if.end153

if.end153:                                        ; preds = %if.then130, %if.then136, %if.else, %if.end111
  %83 = load ptr, ptr %s, align 8
  %z_err154 = getelementptr inbounds %struct.gz_stream, ptr %83, i64 0, i32 1
  %84 = load i32, ptr %z_err154, align 8
  %cmp155.not = icmp eq i32 %84, 0
  br i1 %cmp155.not, label %lor.lhs.false157, label %while.end

lor.lhs.false157:                                 ; preds = %if.end153
  %85 = load ptr, ptr %s, align 8
  %z_eof158 = getelementptr inbounds %struct.gz_stream, ptr %85, i64 0, i32 2
  %86 = load i32, ptr %z_eof158, align 4
  %tobool159.not = icmp eq i32 %86, 0
  br i1 %tobool159.not, label %while.cond, label %while.end, !llvm.loop !8

while.end:                                        ; preds = %if.end153, %lor.lhs.false157, %if.then104, %while.cond
  %87 = load ptr, ptr %s, align 8
  %crc162 = getelementptr inbounds %struct.gz_stream, ptr %87, i64 0, i32 6
  %88 = load i64, ptr %crc162, align 8
  %89 = load ptr, ptr %start, align 8
  %next_out164 = getelementptr inbounds %struct.z_stream_s, ptr %87, i64 0, i32 3
  %90 = load ptr, ptr %next_out164, align 8
  %sub.ptr.lhs.cast165 = ptrtoint ptr %90 to i64
  %sub.ptr.rhs.cast166 = ptrtoint ptr %89 to i64
  %sub.ptr.sub167 = sub i64 %sub.ptr.lhs.cast165, %sub.ptr.rhs.cast166
  %conv168 = trunc i64 %sub.ptr.sub167 to i32
  %call169 = call i64 @crc32(i64 noundef %88, ptr noundef %89, i32 noundef %conv168) #8
  %91 = load ptr, ptr %s, align 8
  %crc170 = getelementptr inbounds %struct.gz_stream, ptr %91, i64 0, i32 6
  store i64 %call169, ptr %crc170, align 8
  %92 = load i32, ptr %len.addr, align 4
  %avail_out172 = getelementptr inbounds %struct.z_stream_s, ptr %91, i64 0, i32 4
  %93 = load i32, ptr %avail_out172, align 8
  %sub173 = sub i32 %92, %93
  store i32 %sub173, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.end80, %if.then14, %if.then9, %if.then
  %94 = load i32, ptr %retval, align 4
  ret i32 %94
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
  %call = call i32 @get_byte(ptr noundef %s)
  %conv = sext i32 %call to i64
  store i64 %conv, ptr %x, align 8
  %call1 = call i32 @get_byte(ptr noundef %s)
  %conv2 = sext i32 %call1 to i64
  %shl = shl nsw i64 %conv2, 8
  %add = add nsw i64 %shl, %conv
  store i64 %add, ptr %x, align 8
  %0 = load ptr, ptr %s.addr, align 8
  %call3 = call i32 @get_byte(ptr noundef %0)
  %conv4 = sext i32 %call3 to i64
  %shl5 = shl nsw i64 %conv4, 16
  %add6 = add nsw i64 %add, %shl5
  store i64 %add6, ptr %x, align 8
  %call7 = call i32 @get_byte(ptr noundef %0)
  store i32 %call7, ptr %c, align 4
  %cmp = icmp eq i32 %call7, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %s.addr, align 8
  %z_err = getelementptr inbounds %struct.gz_stream, ptr %1, i64 0, i32 1
  store i32 -3, ptr %z_err, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, ptr %c, align 4
  %conv9 = sext i32 %2 to i64
  %shl10 = shl nsw i64 %conv9, 24
  %3 = load i64, ptr %x, align 8
  %add11 = add i64 %3, %shl10
  store i64 %add11, ptr %x, align 8
  ret i64 %add11
}

; Function Attrs: nounwind ssp uwtable
define internal void @check_header(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %flags = alloca i32, align 4
  %len = alloca i32, align 4
  %c = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc18, %for.inc ]
  store i32 %storemerge, ptr %len, align 4
  %cmp = icmp ult i32 %storemerge, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load ptr, ptr %s.addr, align 8
  %call = call i32 @get_byte(ptr noundef %0)
  store i32 %call, ptr %c, align 4
  %1 = load i32, ptr %len, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [2 x i32], ptr @gz_magic, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  %cmp1.not = icmp eq i32 %call, %2
  br i1 %cmp1.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %3 = load i32, ptr %len, align 4
  %cmp2.not = icmp eq i32 %3, 0
  br i1 %cmp2.not, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  %4 = load ptr, ptr %s.addr, align 8
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %4, i64 0, i32 1
  %5 = load i32, ptr %avail_in, align 8
  %inc = add i32 %5, 1
  store i32 %inc, ptr %avail_in, align 8
  %6 = load ptr, ptr %4, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i64 -1
  store ptr %incdec.ptr, ptr %4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %7 = load i32, ptr %c, align 4
  %cmp5.not = icmp eq i32 %7, -1
  br i1 %cmp5.not, label %if.end13, label %if.then6

if.then6:                                         ; preds = %if.end
  %8 = load ptr, ptr %s.addr, align 8
  %avail_in8 = getelementptr inbounds %struct.z_stream_s, ptr %8, i64 0, i32 1
  %9 = load i32, ptr %avail_in8, align 8
  %inc9 = add i32 %9, 1
  store i32 %inc9, ptr %avail_in8, align 8
  %10 = load ptr, ptr %8, align 8
  %incdec.ptr12 = getelementptr inbounds i8, ptr %10, i64 -1
  store ptr %incdec.ptr12, ptr %8, align 8
  %11 = load ptr, ptr %s.addr, align 8
  %transparent = getelementptr inbounds %struct.gz_stream, ptr %11, i64 0, i32 9
  store i32 1, ptr %transparent, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then6, %if.end
  %12 = load ptr, ptr %s.addr, align 8
  %avail_in15 = getelementptr inbounds %struct.z_stream_s, ptr %12, i64 0, i32 1
  %13 = load i32, ptr %avail_in15, align 8
  %cmp16.not = icmp eq i32 %13, 0
  %cond = zext i1 %cmp16.not to i32
  %z_err = getelementptr inbounds %struct.gz_stream, ptr %12, i64 0, i32 1
  store i32 %cond, ptr %z_err, align 8
  br label %return

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %len, align 4
  %inc18 = add i32 %14, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %15 = load ptr, ptr %s.addr, align 8
  %call19 = call i32 @get_byte(ptr noundef %15)
  %call20 = call i32 @get_byte(ptr noundef %15)
  store i32 %call20, ptr %flags, align 4
  %cmp21.not = icmp eq i32 %call19, 8
  br i1 %cmp21.not, label %lor.lhs.false, label %if.then23

lor.lhs.false:                                    ; preds = %for.end
  %16 = load i32, ptr %flags, align 4
  %and = and i32 %16, 224
  %cmp22.not = icmp eq i32 %and, 0
  br i1 %cmp22.not, label %for.cond26, label %if.then23

if.then23:                                        ; preds = %lor.lhs.false, %for.end
  %17 = load ptr, ptr %s.addr, align 8
  %z_err24 = getelementptr inbounds %struct.gz_stream, ptr %17, i64 0, i32 1
  store i32 -3, ptr %z_err24, align 8
  br label %return

for.cond26:                                       ; preds = %lor.lhs.false, %for.body28
  %storemerge1 = phi i32 [ %inc31, %for.body28 ], [ 0, %lor.lhs.false ]
  store i32 %storemerge1, ptr %len, align 4
  %cmp27 = icmp ult i32 %storemerge1, 6
  br i1 %cmp27, label %for.body28, label %for.end32

for.body28:                                       ; preds = %for.cond26
  %18 = load ptr, ptr %s.addr, align 8
  %call29 = call i32 @get_byte(ptr noundef %18)
  %19 = load i32, ptr %len, align 4
  %inc31 = add i32 %19, 1
  br label %for.cond26, !llvm.loop !10

for.end32:                                        ; preds = %for.cond26
  %20 = load i32, ptr %flags, align 4
  %and33 = and i32 %20, 4
  %cmp34.not = icmp eq i32 %and33, 0
  br i1 %cmp34.not, label %if.end41, label %if.then35

if.then35:                                        ; preds = %for.end32
  %21 = load ptr, ptr %s.addr, align 8
  %call36 = call i32 @get_byte(ptr noundef %21)
  store i32 %call36, ptr %len, align 4
  %call37 = call i32 @get_byte(ptr noundef %21)
  %shl = shl i32 %call37, 8
  %add = add i32 %call36, %shl
  store i32 %add, ptr %len, align 4
  br label %while.cond

while.cond:                                       ; preds = %land.rhs, %if.then35
  %22 = load i32, ptr %len, align 4
  %dec = add i32 %22, -1
  store i32 %dec, ptr %len, align 4
  %cmp38.not = icmp eq i32 %22, 0
  br i1 %cmp38.not, label %if.end41, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %23 = load ptr, ptr %s.addr, align 8
  %call39 = call i32 @get_byte(ptr noundef %23)
  %cmp40 = icmp ne i32 %call39, -1
  br i1 %cmp40, label %while.cond, label %if.end41, !llvm.loop !11

if.end41:                                         ; preds = %land.rhs, %while.cond, %for.end32
  %24 = load i32, ptr %flags, align 4
  %and42 = and i32 %24, 8
  %cmp43.not = icmp eq i32 %and42, 0
  br i1 %cmp43.not, label %if.end53, label %while.cond45

while.cond45:                                     ; preds = %while.cond45, %if.end41
  %25 = load ptr, ptr %s.addr, align 8
  %call46 = call i32 @get_byte(ptr noundef %25)
  store i32 %call46, ptr %c, align 4
  %cmp47.not = icmp eq i32 %call46, 0
  %26 = load i32, ptr %c, align 4
  %cmp49 = icmp ne i32 %26, -1
  %27 = select i1 %cmp47.not, i1 false, i1 %cmp49
  br i1 %27, label %while.cond45, label %if.end53, !llvm.loop !12

if.end53:                                         ; preds = %while.cond45, %if.end41
  %28 = load i32, ptr %flags, align 4
  %and54 = and i32 %28, 16
  %cmp55.not = icmp eq i32 %and54, 0
  br i1 %cmp55.not, label %if.end65, label %while.cond57

while.cond57:                                     ; preds = %while.cond57, %if.end53
  %29 = load ptr, ptr %s.addr, align 8
  %call58 = call i32 @get_byte(ptr noundef %29)
  store i32 %call58, ptr %c, align 4
  %cmp59.not = icmp eq i32 %call58, 0
  %30 = load i32, ptr %c, align 4
  %cmp61 = icmp ne i32 %30, -1
  %31 = select i1 %cmp59.not, i1 false, i1 %cmp61
  br i1 %31, label %while.cond57, label %if.end65, !llvm.loop !13

if.end65:                                         ; preds = %while.cond57, %if.end53
  %32 = load i32, ptr %flags, align 4
  %and66 = and i32 %32, 2
  %cmp67.not = icmp eq i32 %and66, 0
  br i1 %cmp67.not, label %if.end76, label %for.cond69

for.cond69:                                       ; preds = %if.end65, %for.body71
  %storemerge2 = phi i32 [ %inc74, %for.body71 ], [ 0, %if.end65 ]
  store i32 %storemerge2, ptr %len, align 4
  %cmp70 = icmp ult i32 %storemerge2, 2
  br i1 %cmp70, label %for.body71, label %if.end76

for.body71:                                       ; preds = %for.cond69
  %33 = load ptr, ptr %s.addr, align 8
  %call72 = call i32 @get_byte(ptr noundef %33)
  %34 = load i32, ptr %len, align 4
  %inc74 = add i32 %34, 1
  br label %for.cond69, !llvm.loop !14

if.end76:                                         ; preds = %for.cond69, %if.end65
  %35 = load ptr, ptr %s.addr, align 8
  %z_eof = getelementptr inbounds %struct.gz_stream, ptr %35, i64 0, i32 2
  %36 = load i32, ptr %z_eof, align 4
  %tobool.not = icmp eq i32 %36, 0
  %cond77 = select i1 %tobool.not, i32 0, i32 -3
  %z_err78 = getelementptr inbounds %struct.gz_stream, ptr %35, i64 0, i32 1
  store i32 %cond77, ptr %z_err78, align 8
  br label %return

return:                                           ; preds = %if.end76, %if.then23, %if.end13
  ret void
}

declare i32 @inflateReset(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define i32 @gzgetc(ptr noundef %file) #0 {
entry:
  %c = alloca i8, align 1
  %call = call i32 @gzread(ptr noundef %file, ptr noundef nonnull %c, i32 noundef 1)
  %cmp = icmp eq i32 %call, 1
  %0 = load i8, ptr %c, align 1
  %conv = zext i8 %0 to i32
  %cond = select i1 %cmp, i32 %conv, i32 -1
  ret i32 %cond
}

; Function Attrs: nounwind ssp uwtable
define ptr @gzgets(ptr noundef %file, ptr noundef %buf, i32 noundef %len) #0 {
entry:
  %file.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %b = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  store ptr %buf, ptr %b, align 8
  %cmp = icmp eq ptr %buf, null
  %0 = load i32, ptr %len.addr, align 4
  %cmp1 = icmp slt i32 %0, 1
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %return, label %while.cond

while.cond:                                       ; preds = %land.rhs, %entry
  %1 = load i32, ptr %len.addr, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, ptr %len.addr, align 4
  %cmp2 = icmp sgt i32 %1, 1
  br i1 %cmp2, label %land.lhs.true, label %while.end

land.lhs.true:                                    ; preds = %while.cond
  %2 = load ptr, ptr %file.addr, align 8
  %3 = load ptr, ptr %buf.addr, align 8
  %call = call i32 @gzread(ptr noundef %2, ptr noundef %3, i32 noundef 1)
  %cmp3 = icmp eq i32 %call, 1
  br i1 %cmp3, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %land.lhs.true
  %4 = load ptr, ptr %buf.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %incdec.ptr, ptr %buf.addr, align 8
  %5 = load i8, ptr %4, align 1
  %cmp4 = icmp ne i8 %5, 10
  br i1 %cmp4, label %while.cond, label %while.end, !llvm.loop !15

while.end:                                        ; preds = %land.lhs.true, %while.cond, %land.rhs
  %6 = load ptr, ptr %buf.addr, align 8
  store i8 0, ptr %6, align 1
  %7 = load ptr, ptr %b, align 8
  %cmp6 = icmp eq ptr %7, %6
  %8 = load i32, ptr %len.addr, align 4
  %cmp9 = icmp sgt i32 %8, 0
  %or.cond1 = select i1 %cmp6, i1 %cmp9, i1 false
  %9 = load ptr, ptr %b, align 8
  %cond = select i1 %or.cond1, ptr null, ptr %9
  br label %return

return:                                           ; preds = %entry, %while.end
  %storemerge = phi ptr [ %cond, %while.end ], [ null, %entry ]
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define i32 @gzwrite(ptr noundef %file, ptr noundef %buf, i32 noundef %len) #0 {
entry:
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %s = alloca ptr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  store ptr %file, ptr %s, align 8
  %cmp = icmp eq ptr %file, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %s, align 8
  %mode = getelementptr inbounds %struct.gz_stream, ptr %0, i64 0, i32 10
  %1 = load i8, ptr %mode, align 4
  %cmp1.not = icmp eq i8 %1, 119
  br i1 %cmp1.not, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %buf.addr, align 8
  %3 = load ptr, ptr %s, align 8
  store ptr %2, ptr %3, align 8
  %4 = load i32, ptr %len.addr, align 4
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %3, i64 0, i32 1
  store i32 %4, ptr %avail_in, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end21, %if.end
  %5 = load ptr, ptr %s, align 8
  %avail_in5 = getelementptr inbounds %struct.z_stream_s, ptr %5, i64 0, i32 1
  %6 = load i32, ptr %avail_in5, align 8
  %cmp6.not = icmp eq i32 %6, 0
  br i1 %cmp6.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %7 = load ptr, ptr %s, align 8
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %7, i64 0, i32 4
  %8 = load i32, ptr %avail_out, align 8
  %cmp9 = icmp eq i32 %8, 0
  br i1 %cmp9, label %if.then11, label %if.end21

if.then11:                                        ; preds = %while.body
  %9 = load ptr, ptr %s, align 8
  %outbuf = getelementptr inbounds %struct.gz_stream, ptr %9, i64 0, i32 5
  %10 = load ptr, ptr %outbuf, align 8
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %9, i64 0, i32 3
  store ptr %10, ptr %next_out, align 8
  %file14 = getelementptr inbounds %struct.gz_stream, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %file14, align 8
  %call = call i64 @"\01_fwrite"(ptr noundef %10, i64 noundef 1, i64 noundef 16384, ptr noundef %11) #8
  %cmp15.not = icmp eq i64 %call, 16384
  br i1 %cmp15.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.then11
  %12 = load ptr, ptr %s, align 8
  %z_err = getelementptr inbounds %struct.gz_stream, ptr %12, i64 0, i32 1
  store i32 -1, ptr %z_err, align 8
  br label %while.end

if.end18:                                         ; preds = %if.then11
  %13 = load ptr, ptr %s, align 8
  %avail_out20 = getelementptr inbounds %struct.z_stream_s, ptr %13, i64 0, i32 4
  store i32 16384, ptr %avail_out20, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.end18, %while.body
  %14 = load ptr, ptr %s, align 8
  %call23 = call i32 @deflate(ptr noundef %14, i32 noundef 0) #8
  %z_err24 = getelementptr inbounds %struct.gz_stream, ptr %14, i64 0, i32 1
  store i32 %call23, ptr %z_err24, align 8
  %cmp26.not = icmp eq i32 %call23, 0
  br i1 %cmp26.not, label %while.cond, label %while.end, !llvm.loop !16

while.end:                                        ; preds = %if.end21, %if.then17, %while.cond
  %15 = load ptr, ptr %s, align 8
  %crc = getelementptr inbounds %struct.gz_stream, ptr %15, i64 0, i32 6
  %16 = load i64, ptr %crc, align 8
  %17 = load ptr, ptr %buf.addr, align 8
  %18 = load i32, ptr %len.addr, align 4
  %call30 = call i64 @crc32(i64 noundef %16, ptr noundef %17, i32 noundef %18) #8
  %crc31 = getelementptr inbounds %struct.gz_stream, ptr %15, i64 0, i32 6
  store i64 %call30, ptr %crc31, align 8
  %19 = load ptr, ptr %s, align 8
  %avail_in33 = getelementptr inbounds %struct.z_stream_s, ptr %19, i64 0, i32 1
  %20 = load i32, ptr %avail_in33, align 8
  %sub = sub i32 %18, %20
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %while.end
  %storemerge = phi i32 [ %sub, %while.end ], [ -2, %lor.lhs.false ], [ -2, %entry ]
  ret i32 %storemerge
}

declare i32 @deflate(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define i32 @gzprintf(ptr noundef %file, ptr noundef %format, ...) #0 {
entry:
  %file.addr = alloca ptr, align 8
  %buf = alloca [4096 x i8], align 1
  %va = alloca ptr, align 8
  %len = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.va_start(ptr nonnull %va)
  %0 = load ptr, ptr %va, align 8
  %call = call i32 @__vsprintf_chk(ptr noundef nonnull %buf, i32 noundef 0, i64 noundef 4096, ptr noundef %format, ptr noundef %0) #8
  call void @llvm.va_end(ptr %va)
  %call2 = call i64 @strlen(ptr noundef nonnull %buf) #8
  %conv = trunc i64 %call2 to i32
  store i32 %conv, ptr %len, align 4
  %cmp = icmp slt i32 %conv, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %file.addr, align 8
  %2 = load i32, ptr %len, align 4
  %call5 = call i32 @gzwrite(ptr noundef %1, ptr noundef nonnull %buf, i32 noundef %2)
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i32 [ %call5, %if.end ], [ 0, %entry ]
  ret i32 %storemerge
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
  %cc = alloca i8, align 1
  %conv = trunc i32 %c to i8
  store i8 %conv, ptr %cc, align 1
  %call = call i32 @gzwrite(ptr noundef %file, ptr noundef nonnull %cc, i32 noundef 1)
  %cmp = icmp eq i32 %call, 1
  %0 = load i8, ptr %cc, align 1
  %conv2 = zext i8 %0 to i32
  %cond = select i1 %cmp, i32 %conv2, i32 -1
  ret i32 %cond
}

; Function Attrs: nounwind ssp uwtable
define i32 @gzputs(ptr noundef %file, ptr noundef %s) #0 {
entry:
  %call = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %s) #8
  %conv = trunc i64 %call to i32
  %call1 = call i32 @gzwrite(ptr noundef %file, ptr noundef %s, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind ssp uwtable
define i32 @gzflush(ptr noundef %file, i32 noundef %flush) #0 {
entry:
  %s = alloca ptr, align 8
  %err = alloca i32, align 4
  store ptr %file, ptr %s, align 8
  %call = call i32 @do_flush(ptr noundef %file, i32 noundef %flush)
  store i32 %call, ptr %err, align 4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %err, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %s, align 8
  %file1 = getelementptr inbounds %struct.gz_stream, ptr %1, i64 0, i32 3
  %2 = load ptr, ptr %file1, align 8
  %call2 = call i32 @fflush(ptr noundef %2) #8
  %z_err = getelementptr inbounds %struct.gz_stream, ptr %1, i64 0, i32 1
  %3 = load i32, ptr %z_err, align 8
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %return, label %cond.false

cond.false:                                       ; preds = %if.end
  %4 = load ptr, ptr %s, align 8
  %z_err3 = getelementptr inbounds %struct.gz_stream, ptr %4, i64 0, i32 1
  %5 = load i32, ptr %z_err3, align 8
  br label %return

return:                                           ; preds = %cond.false, %if.end, %if.then
  %storemerge = phi i32 [ %0, %if.then ], [ %5, %cond.false ], [ 0, %if.end ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @do_flush(ptr noundef %file, i32 noundef %flush) #0 {
entry:
  %retval = alloca i32, align 4
  %flush.addr = alloca i32, align 4
  %len = alloca i32, align 4
  %done = alloca i32, align 4
  %s = alloca ptr, align 8
  store i32 %flush, ptr %flush.addr, align 4
  store i32 0, ptr %done, align 4
  store ptr %file, ptr %s, align 8
  %cmp = icmp eq ptr %file, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %s, align 8
  %mode = getelementptr inbounds %struct.gz_stream, ptr %0, i64 0, i32 10
  %1 = load i8, ptr %mode, align 4
  %cmp1.not = icmp eq i8 %1, 119
  br i1 %cmp1.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %s, align 8
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %2, i64 0, i32 1
  store i32 0, ptr %avail_in, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end47, %if.end
  %3 = load ptr, ptr %s, align 8
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %3, i64 0, i32 4
  %4 = load i32, ptr %avail_out, align 8
  %sub = sub i32 16384, %4
  store i32 %sub, ptr %len, align 4
  %cmp4.not = icmp eq i32 %4, 16384
  br i1 %cmp4.not, label %if.end18, label %if.then6

if.then6:                                         ; preds = %for.cond
  %5 = load ptr, ptr %s, align 8
  %outbuf = getelementptr inbounds %struct.gz_stream, ptr %5, i64 0, i32 5
  %6 = load ptr, ptr %outbuf, align 8
  %7 = load i32, ptr %len, align 4
  %conv7 = zext i32 %7 to i64
  %file8 = getelementptr inbounds %struct.gz_stream, ptr %5, i64 0, i32 3
  %8 = load ptr, ptr %file8, align 8
  %call = call i64 @"\01_fwrite"(ptr noundef %6, i64 noundef 1, i64 noundef %conv7, ptr noundef %8) #8
  %conv9 = trunc i64 %call to i32
  %cmp10.not = icmp eq i32 %7, %conv9
  br i1 %cmp10.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.then6
  %9 = load ptr, ptr %s, align 8
  %z_err = getelementptr inbounds %struct.gz_stream, ptr %9, i64 0, i32 1
  store i32 -1, ptr %z_err, align 8
  store i32 -1, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.then6
  %10 = load ptr, ptr %s, align 8
  %outbuf14 = getelementptr inbounds %struct.gz_stream, ptr %10, i64 0, i32 5
  %11 = load ptr, ptr %outbuf14, align 8
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %10, i64 0, i32 3
  store ptr %11, ptr %next_out, align 8
  %avail_out17 = getelementptr inbounds %struct.z_stream_s, ptr %10, i64 0, i32 4
  store i32 16384, ptr %avail_out17, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.end13, %for.cond
  %12 = load i32, ptr %done, align 4
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.end20, label %for.end

if.end20:                                         ; preds = %if.end18
  %13 = load ptr, ptr %s, align 8
  %14 = load i32, ptr %flush.addr, align 4
  %call22 = call i32 @deflate(ptr noundef %13, i32 noundef %14) #8
  %z_err23 = getelementptr inbounds %struct.gz_stream, ptr %13, i64 0, i32 1
  store i32 %call22, ptr %z_err23, align 8
  %15 = load i32, ptr %len, align 4
  %cmp24 = icmp eq i32 %15, 0
  br i1 %cmp24, label %land.lhs.true, label %if.end31

land.lhs.true:                                    ; preds = %if.end20
  %16 = load ptr, ptr %s, align 8
  %z_err26 = getelementptr inbounds %struct.gz_stream, ptr %16, i64 0, i32 1
  %17 = load i32, ptr %z_err26, align 8
  %cmp27 = icmp eq i32 %17, -5
  br i1 %cmp27, label %if.then29, label %if.end31

if.then29:                                        ; preds = %land.lhs.true
  %18 = load ptr, ptr %s, align 8
  %z_err30 = getelementptr inbounds %struct.gz_stream, ptr %18, i64 0, i32 1
  store i32 0, ptr %z_err30, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %land.lhs.true, %if.end20
  %19 = load ptr, ptr %s, align 8
  %avail_out33 = getelementptr inbounds %struct.z_stream_s, ptr %19, i64 0, i32 4
  %20 = load i32, ptr %avail_out33, align 8
  %cmp34.not = icmp eq i32 %20, 0
  br i1 %cmp34.not, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %if.end31
  %21 = load ptr, ptr %s, align 8
  %z_err36 = getelementptr inbounds %struct.gz_stream, ptr %21, i64 0, i32 1
  %22 = load i32, ptr %z_err36, align 8
  %cmp37 = icmp eq i32 %22, 1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end31
  %23 = phi i1 [ true, %if.end31 ], [ %cmp37, %lor.rhs ]
  %lor.ext = zext i1 %23 to i32
  store i32 %lor.ext, ptr %done, align 4
  %24 = load ptr, ptr %s, align 8
  %z_err39 = getelementptr inbounds %struct.gz_stream, ptr %24, i64 0, i32 1
  %25 = load i32, ptr %z_err39, align 8
  %cmp40.not = icmp eq i32 %25, 0
  br i1 %cmp40.not, label %if.end47, label %land.lhs.true42

land.lhs.true42:                                  ; preds = %lor.end
  %26 = load ptr, ptr %s, align 8
  %z_err43 = getelementptr inbounds %struct.gz_stream, ptr %26, i64 0, i32 1
  %27 = load i32, ptr %z_err43, align 8
  %cmp44.not = icmp eq i32 %27, 1
  br i1 %cmp44.not, label %if.end47, label %for.end

if.end47:                                         ; preds = %land.lhs.true42, %lor.end
  br label %for.cond

for.end:                                          ; preds = %land.lhs.true42, %if.end18
  %28 = load ptr, ptr %s, align 8
  %z_err48 = getelementptr inbounds %struct.gz_stream, ptr %28, i64 0, i32 1
  %29 = load i32, ptr %z_err48, align 8
  %cmp49 = icmp eq i32 %29, 1
  br i1 %cmp49, label %cond.end, label %cond.false

cond.false:                                       ; preds = %for.end
  %30 = load ptr, ptr %s, align 8
  %z_err51 = getelementptr inbounds %struct.gz_stream, ptr %30, i64 0, i32 1
  %31 = load i32, ptr %z_err51, align 8
  br label %cond.end

cond.end:                                         ; preds = %for.end, %cond.false
  %cond = phi i32 [ %31, %cond.false ], [ 0, %for.end ]
  store i32 %cond, ptr %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then12, %if.then
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
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
  store ptr %file, ptr %s, align 8
  %cmp = icmp eq ptr %file, null
  %0 = load i32, ptr %whence.addr, align 4
  %cmp1 = icmp eq i32 %0, 2
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %1 = load ptr, ptr %s, align 8
  %z_err = getelementptr inbounds %struct.gz_stream, ptr %1, i64 0, i32 1
  %2 = load i32, ptr %z_err, align 8
  %cmp3 = icmp eq i32 %2, -1
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %3 = load ptr, ptr %s, align 8
  %z_err5 = getelementptr inbounds %struct.gz_stream, ptr %3, i64 0, i32 1
  %4 = load i32, ptr %z_err5, align 8
  %cmp6 = icmp eq i32 %4, -3
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %entry
  store i64 -1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false4
  %5 = load ptr, ptr %s, align 8
  %mode = getelementptr inbounds %struct.gz_stream, ptr %5, i64 0, i32 10
  %6 = load i8, ptr %mode, align 4
  %cmp7 = icmp eq i8 %6, 119
  br i1 %cmp7, label %if.then9, label %if.end43

if.then9:                                         ; preds = %if.end
  %7 = load i32, ptr %whence.addr, align 4
  %cmp10 = icmp eq i32 %7, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.then9
  %8 = load ptr, ptr %s, align 8
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %8, i64 0, i32 2
  %9 = load i64, ptr %total_in, align 8
  %10 = load i64, ptr %offset.addr, align 8
  %sub = sub i64 %10, %9
  store i64 %sub, ptr %offset.addr, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.then9
  %11 = load i64, ptr %offset.addr, align 8
  %cmp14 = icmp slt i64 %11, 0
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end13
  store i64 -1, ptr %retval, align 8
  br label %return

if.end17:                                         ; preds = %if.end13
  %12 = load ptr, ptr %s, align 8
  %inbuf = getelementptr inbounds %struct.gz_stream, ptr %12, i64 0, i32 4
  %13 = load ptr, ptr %inbuf, align 8
  %cmp18 = icmp eq ptr %13, null
  br i1 %cmp18, label %if.then20, label %if.end25

if.then20:                                        ; preds = %if.end17
  %call = call dereferenceable_or_null(16384) ptr @malloc(i64 noundef 16384) #7
  %14 = load ptr, ptr %s, align 8
  %inbuf21 = getelementptr inbounds %struct.gz_stream, ptr %14, i64 0, i32 4
  store ptr %call, ptr %inbuf21, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16384) %call, i8 noundef 0, i64 noundef 16384, i1 noundef false) #8
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %if.end17
  br label %while.cond

while.cond:                                       ; preds = %if.end38, %if.end25
  %15 = load i64, ptr %offset.addr, align 8
  %cmp26 = icmp sgt i64 %15, 0
  br i1 %cmp26, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 16384, ptr %size, align 4
  %16 = load i64, ptr %offset.addr, align 8
  %cmp28 = icmp slt i64 %16, 16384
  br i1 %cmp28, label %if.then30, label %if.end32

if.then30:                                        ; preds = %while.body
  %17 = load i64, ptr %offset.addr, align 8
  %conv31 = trunc i64 %17 to i32
  store i32 %conv31, ptr %size, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %while.body
  %18 = load ptr, ptr %file.addr, align 8
  %19 = load ptr, ptr %s, align 8
  %inbuf33 = getelementptr inbounds %struct.gz_stream, ptr %19, i64 0, i32 4
  %20 = load ptr, ptr %inbuf33, align 8
  %21 = load i32, ptr %size, align 4
  %call34 = call i32 @gzwrite(ptr noundef %18, ptr noundef %20, i32 noundef %21)
  store i32 %call34, ptr %size, align 4
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end32
  store i64 -1, ptr %retval, align 8
  br label %return

if.end38:                                         ; preds = %if.end32
  %22 = load i32, ptr %size, align 4
  %conv39 = zext i32 %22 to i64
  %23 = load i64, ptr %offset.addr, align 8
  %sub40 = sub nsw i64 %23, %conv39
  store i64 %sub40, ptr %offset.addr, align 8
  br label %while.cond, !llvm.loop !17

while.end:                                        ; preds = %while.cond
  %24 = load ptr, ptr %s, align 8
  %total_in42 = getelementptr inbounds %struct.z_stream_s, ptr %24, i64 0, i32 2
  %25 = load i64, ptr %total_in42, align 8
  store i64 %25, ptr %retval, align 8
  br label %return

if.end43:                                         ; preds = %if.end
  %26 = load i32, ptr %whence.addr, align 4
  %cmp44 = icmp eq i32 %26, 1
  br i1 %cmp44, label %if.then46, label %if.end48

if.then46:                                        ; preds = %if.end43
  %27 = load ptr, ptr %s, align 8
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %27, i64 0, i32 5
  %28 = load i64, ptr %total_out, align 8
  %29 = load i64, ptr %offset.addr, align 8
  %add = add i64 %29, %28
  store i64 %add, ptr %offset.addr, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.end43
  %30 = load i64, ptr %offset.addr, align 8
  %cmp49 = icmp slt i64 %30, 0
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end48
  store i64 -1, ptr %retval, align 8
  br label %return

if.end52:                                         ; preds = %if.end48
  %31 = load ptr, ptr %s, align 8
  %transparent = getelementptr inbounds %struct.gz_stream, ptr %31, i64 0, i32 9
  %32 = load i32, ptr %transparent, align 8
  %tobool.not = icmp eq i32 %32, 0
  br i1 %tobool.not, label %if.end67, label %if.then53

if.then53:                                        ; preds = %if.end52
  %33 = load ptr, ptr %s, align 8
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %33, i64 0, i32 1
  store i32 0, ptr %avail_in, align 8
  %inbuf55 = getelementptr inbounds %struct.gz_stream, ptr %33, i64 0, i32 4
  %34 = load ptr, ptr %inbuf55, align 8
  store ptr %34, ptr %33, align 8
  %file57 = getelementptr inbounds %struct.gz_stream, ptr %33, i64 0, i32 3
  %35 = load ptr, ptr %file57, align 8
  %36 = load i64, ptr %offset.addr, align 8
  %call58 = call i32 @fseek(ptr noundef %35, i64 noundef %36, i32 noundef 0) #8
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.then53
  store i64 -1, ptr %retval, align 8
  br label %return

if.end62:                                         ; preds = %if.then53
  %37 = load i64, ptr %offset.addr, align 8
  %38 = load ptr, ptr %s, align 8
  %total_out64 = getelementptr inbounds %struct.z_stream_s, ptr %38, i64 0, i32 5
  store i64 %37, ptr %total_out64, align 8
  %total_in66 = getelementptr inbounds %struct.z_stream_s, ptr %38, i64 0, i32 2
  store i64 %37, ptr %total_in66, align 8
  store i64 %37, ptr %retval, align 8
  br label %return

if.end67:                                         ; preds = %if.end52
  %39 = load i64, ptr %offset.addr, align 8
  %40 = load ptr, ptr %s, align 8
  %total_out69 = getelementptr inbounds %struct.z_stream_s, ptr %40, i64 0, i32 5
  %41 = load i64, ptr %total_out69, align 8
  %cmp70.not = icmp ult i64 %39, %41
  br i1 %cmp70.not, label %if.else, label %if.then72

if.then72:                                        ; preds = %if.end67
  %42 = load ptr, ptr %s, align 8
  %total_out74 = getelementptr inbounds %struct.z_stream_s, ptr %42, i64 0, i32 5
  %43 = load i64, ptr %total_out74, align 8
  %44 = load i64, ptr %offset.addr, align 8
  %sub75 = sub i64 %44, %43
  store i64 %sub75, ptr %offset.addr, align 8
  br label %if.end81

if.else:                                          ; preds = %if.end67
  %45 = load ptr, ptr %file.addr, align 8
  %call76 = call i32 @gzrewind(ptr noundef %45)
  %cmp77 = icmp slt i32 %call76, 0
  br i1 %cmp77, label %if.then79, label %if.end81

if.then79:                                        ; preds = %if.else
  store i64 -1, ptr %retval, align 8
  br label %return

if.end81:                                         ; preds = %if.else, %if.then72
  %46 = load i64, ptr %offset.addr, align 8
  %cmp82.not = icmp eq i64 %46, 0
  br i1 %cmp82.not, label %if.end89, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end81
  %47 = load ptr, ptr %s, align 8
  %outbuf = getelementptr inbounds %struct.gz_stream, ptr %47, i64 0, i32 5
  %48 = load ptr, ptr %outbuf, align 8
  %cmp84 = icmp eq ptr %48, null
  br i1 %cmp84, label %if.then86, label %if.end89

if.then86:                                        ; preds = %land.lhs.true
  %call87 = call dereferenceable_or_null(16384) ptr @malloc(i64 noundef 16384) #7
  %49 = load ptr, ptr %s, align 8
  %outbuf88 = getelementptr inbounds %struct.gz_stream, ptr %49, i64 0, i32 5
  store ptr %call87, ptr %outbuf88, align 8
  br label %if.end89

if.end89:                                         ; preds = %if.then86, %land.lhs.true, %if.end81
  br label %while.cond90

while.cond90:                                     ; preds = %if.end105, %if.end89
  %50 = load i64, ptr %offset.addr, align 8
  %cmp91 = icmp sgt i64 %50, 0
  br i1 %cmp91, label %while.body93, label %while.end108

while.body93:                                     ; preds = %while.cond90
  store i32 16384, ptr %size94, align 4
  %51 = load i64, ptr %offset.addr, align 8
  %cmp95 = icmp slt i64 %51, 16384
  br i1 %cmp95, label %if.then97, label %if.end99

if.then97:                                        ; preds = %while.body93
  %52 = load i64, ptr %offset.addr, align 8
  %conv98 = trunc i64 %52 to i32
  store i32 %conv98, ptr %size94, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %while.body93
  %53 = load ptr, ptr %file.addr, align 8
  %54 = load ptr, ptr %s, align 8
  %outbuf100 = getelementptr inbounds %struct.gz_stream, ptr %54, i64 0, i32 5
  %55 = load ptr, ptr %outbuf100, align 8
  %56 = load i32, ptr %size94, align 4
  %call101 = call i32 @gzread(ptr noundef %53, ptr noundef %55, i32 noundef %56)
  store i32 %call101, ptr %size94, align 4
  %cmp102 = icmp slt i32 %call101, 1
  br i1 %cmp102, label %if.then104, label %if.end105

if.then104:                                       ; preds = %if.end99
  store i64 -1, ptr %retval, align 8
  br label %return

if.end105:                                        ; preds = %if.end99
  %57 = load i32, ptr %size94, align 4
  %conv106 = sext i32 %57 to i64
  %58 = load i64, ptr %offset.addr, align 8
  %sub107 = sub nsw i64 %58, %conv106
  store i64 %sub107, ptr %offset.addr, align 8
  br label %while.cond90, !llvm.loop !18

while.end108:                                     ; preds = %while.cond90
  %59 = load ptr, ptr %s, align 8
  %total_out110 = getelementptr inbounds %struct.z_stream_s, ptr %59, i64 0, i32 5
  %60 = load i64, ptr %total_out110, align 8
  store i64 %60, ptr %retval, align 8
  br label %return

return:                                           ; preds = %while.end108, %if.then104, %if.then79, %if.end62, %if.then61, %if.then51, %while.end, %if.then37, %if.then16, %if.then
  %61 = load i64, ptr %retval, align 8
  ret i64 %61
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
  %s = alloca ptr, align 8
  store ptr %file, ptr %s, align 8
  %cmp = icmp eq ptr %file, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %s, align 8
  %mode = getelementptr inbounds %struct.gz_stream, ptr %0, i64 0, i32 10
  %1 = load i8, ptr %mode, align 4
  %cmp1.not = icmp eq i8 %1, 114
  br i1 %cmp1.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %s, align 8
  %z_err = getelementptr inbounds %struct.gz_stream, ptr %2, i64 0, i32 1
  store i32 0, ptr %z_err, align 8
  %z_eof = getelementptr inbounds %struct.gz_stream, ptr %2, i64 0, i32 2
  store i32 0, ptr %z_eof, align 4
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %2, i64 0, i32 1
  store i32 0, ptr %avail_in, align 8
  %3 = load ptr, ptr %s, align 8
  %inbuf = getelementptr inbounds %struct.gz_stream, ptr %3, i64 0, i32 4
  %4 = load ptr, ptr %inbuf, align 8
  store ptr %4, ptr %3, align 8
  %call = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #8
  %crc = getelementptr inbounds %struct.gz_stream, ptr %3, i64 0, i32 6
  store i64 %call, ptr %crc, align 8
  %5 = load ptr, ptr %s, align 8
  %startpos = getelementptr inbounds %struct.gz_stream, ptr %5, i64 0, i32 11
  %6 = load i64, ptr %startpos, align 8
  %cmp4 = icmp eq i64 %6, 0
  br i1 %cmp4, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  %7 = load ptr, ptr %s, align 8
  %file7 = getelementptr inbounds %struct.gz_stream, ptr %7, i64 0, i32 3
  %8 = load ptr, ptr %file7, align 8
  call void @rewind(ptr noundef %8) #8
  store i32 0, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  %9 = load ptr, ptr %s, align 8
  %call10 = call i32 @inflateReset(ptr noundef %9) #8
  %file11 = getelementptr inbounds %struct.gz_stream, ptr %9, i64 0, i32 3
  %10 = load ptr, ptr %file11, align 8
  %startpos12 = getelementptr inbounds %struct.gz_stream, ptr %9, i64 0, i32 11
  %11 = load i64, ptr %startpos12, align 8
  %call13 = call i32 @fseek(ptr noundef %10, i64 noundef %11, i32 noundef 0) #8
  store i32 %call13, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then6, %if.then
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

declare void @rewind(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define i64 @gztell(ptr noundef %file) #0 {
entry:
  %call = call i64 @gzseek(ptr noundef %file, i64 noundef 0, i32 noundef 1)
  ret i64 %call
}

; Function Attrs: nounwind ssp uwtable
define i32 @gzeof(ptr noundef %file) #0 {
entry:
  %s = alloca ptr, align 8
  store ptr %file, ptr %s, align 8
  %cmp = icmp eq ptr %file, null
  br i1 %cmp, label %cond.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %s, align 8
  %mode = getelementptr inbounds %struct.gz_stream, ptr %0, i64 0, i32 10
  %1 = load i8, ptr %mode, align 4
  %cmp1.not = icmp eq i8 %1, 114
  br i1 %cmp1.not, label %cond.false, label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %2 = load ptr, ptr %s, align 8
  %z_eof = getelementptr inbounds %struct.gz_stream, ptr %2, i64 0, i32 2
  %3 = load i32, ptr %z_eof, align 4
  br label %cond.end

cond.end:                                         ; preds = %entry, %lor.lhs.false, %cond.false
  %cond = phi i32 [ %3, %cond.false ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %cond
}

; Function Attrs: nounwind ssp uwtable
define i32 @gzclose(ptr noundef %file) #0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  store ptr %file, ptr %s, align 8
  %cmp = icmp eq ptr %file, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %s, align 8
  %mode = getelementptr inbounds %struct.gz_stream, ptr %0, i64 0, i32 10
  %1 = load i8, ptr %mode, align 4
  %cmp1 = icmp eq i8 %1, 119
  br i1 %cmp1, label %if.then3, label %if.end11

if.then3:                                         ; preds = %if.end
  %2 = load ptr, ptr %file.addr, align 8
  %call = call i32 @do_flush(ptr noundef %2, i32 noundef 4)
  %cmp4.not = icmp eq i32 %call, 0
  br i1 %cmp4.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.then3
  %3 = load ptr, ptr %file.addr, align 8
  %call7 = call i32 @destroy(ptr noundef %3)
  store i32 %call7, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.then3
  %4 = load ptr, ptr %s, align 8
  %file9 = getelementptr inbounds %struct.gz_stream, ptr %4, i64 0, i32 3
  %5 = load ptr, ptr %file9, align 8
  %crc = getelementptr inbounds %struct.gz_stream, ptr %4, i64 0, i32 6
  %6 = load i64, ptr %crc, align 8
  call void @putLong(ptr noundef %5, i64 noundef %6)
  %file10 = getelementptr inbounds %struct.gz_stream, ptr %4, i64 0, i32 3
  %7 = load ptr, ptr %file10, align 8
  %8 = load ptr, ptr %s, align 8
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %8, i64 0, i32 2
  %9 = load i64, ptr %total_in, align 8
  call void @putLong(ptr noundef %7, i64 noundef %9)
  br label %if.end11

if.end11:                                         ; preds = %if.end8, %if.end
  %10 = load ptr, ptr %file.addr, align 8
  %call12 = call i32 @destroy(ptr noundef %10)
  store i32 %call12, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end11, %if.then6, %if.then
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @destroy(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store i32 0, ptr %err, align 4
  %tobool.not = icmp eq ptr %s, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %s.addr, align 8
  %msg = getelementptr inbounds %struct.gz_stream, ptr %0, i64 0, i32 7
  %1 = load ptr, ptr %msg, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr %s.addr, align 8
  %msg3 = getelementptr inbounds %struct.gz_stream, ptr %2, i64 0, i32 7
  %3 = load ptr, ptr %msg3, align 8
  call void @free(ptr noundef %3) #8
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %4 = load ptr, ptr %s.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %4, i64 0, i32 7
  %5 = load ptr, ptr %state, align 8
  %cmp.not = icmp eq ptr %5, null
  br i1 %cmp.not, label %if.end19, label %if.then5

if.then5:                                         ; preds = %if.end4
  %6 = load ptr, ptr %s.addr, align 8
  %mode = getelementptr inbounds %struct.gz_stream, ptr %6, i64 0, i32 10
  %7 = load i8, ptr %mode, align 4
  %cmp6 = icmp eq i8 %7, 119
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then5
  %8 = load ptr, ptr %s.addr, align 8
  %call = call i32 @deflateEnd(ptr noundef %8) #8
  store i32 %call, ptr %err, align 4
  br label %if.end19

if.else:                                          ; preds = %if.then5
  %9 = load ptr, ptr %s.addr, align 8
  %mode10 = getelementptr inbounds %struct.gz_stream, ptr %9, i64 0, i32 10
  %10 = load i8, ptr %mode10, align 4
  %cmp12 = icmp eq i8 %10, 114
  br i1 %cmp12, label %if.then14, label %if.end19

if.then14:                                        ; preds = %if.else
  %11 = load ptr, ptr %s.addr, align 8
  %call16 = call i32 @inflateEnd(ptr noundef %11) #8
  store i32 %call16, ptr %err, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then8, %if.then14, %if.else, %if.end4
  %12 = load ptr, ptr %s.addr, align 8
  %file = getelementptr inbounds %struct.gz_stream, ptr %12, i64 0, i32 3
  %13 = load ptr, ptr %file, align 8
  %cmp20.not = icmp eq ptr %13, null
  br i1 %cmp20.not, label %if.end31, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end19
  %14 = load ptr, ptr %s.addr, align 8
  %file22 = getelementptr inbounds %struct.gz_stream, ptr %14, i64 0, i32 3
  %15 = load ptr, ptr %file22, align 8
  %call23 = call i32 @fclose(ptr noundef %15) #8
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end31, label %if.then25

if.then25:                                        ; preds = %land.lhs.true
  %call26 = call ptr @__error() #8
  %16 = load i32, ptr %call26, align 4
  %cmp27.not = icmp eq i32 %16, 29
  br i1 %cmp27.not, label %if.end31, label %if.then29

if.then29:                                        ; preds = %if.then25
  store i32 -1, ptr %err, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then25, %if.then29, %land.lhs.true, %if.end19
  %17 = load ptr, ptr %s.addr, align 8
  %z_err = getelementptr inbounds %struct.gz_stream, ptr %17, i64 0, i32 1
  %18 = load i32, ptr %z_err, align 8
  %cmp32 = icmp slt i32 %18, 0
  br i1 %cmp32, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.end31
  %19 = load ptr, ptr %s.addr, align 8
  %z_err35 = getelementptr inbounds %struct.gz_stream, ptr %19, i64 0, i32 1
  %20 = load i32, ptr %z_err35, align 8
  store i32 %20, ptr %err, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end31
  %21 = load ptr, ptr %s.addr, align 8
  %inbuf = getelementptr inbounds %struct.gz_stream, ptr %21, i64 0, i32 4
  %22 = load ptr, ptr %inbuf, align 8
  %tobool37.not = icmp eq ptr %22, null
  br i1 %tobool37.not, label %if.end40, label %if.then38

if.then38:                                        ; preds = %if.end36
  %23 = load ptr, ptr %s.addr, align 8
  %inbuf39 = getelementptr inbounds %struct.gz_stream, ptr %23, i64 0, i32 4
  %24 = load ptr, ptr %inbuf39, align 8
  call void @free(ptr noundef %24) #8
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end36
  %25 = load ptr, ptr %s.addr, align 8
  %outbuf = getelementptr inbounds %struct.gz_stream, ptr %25, i64 0, i32 5
  %26 = load ptr, ptr %outbuf, align 8
  %tobool41.not = icmp eq ptr %26, null
  br i1 %tobool41.not, label %if.end44, label %if.then42

if.then42:                                        ; preds = %if.end40
  %27 = load ptr, ptr %s.addr, align 8
  %outbuf43 = getelementptr inbounds %struct.gz_stream, ptr %27, i64 0, i32 5
  %28 = load ptr, ptr %outbuf43, align 8
  call void @free(ptr noundef %28) #8
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end40
  %29 = load ptr, ptr %s.addr, align 8
  %path = getelementptr inbounds %struct.gz_stream, ptr %29, i64 0, i32 8
  %30 = load ptr, ptr %path, align 8
  %tobool45.not = icmp eq ptr %30, null
  br i1 %tobool45.not, label %if.end48, label %if.then46

if.then46:                                        ; preds = %if.end44
  %31 = load ptr, ptr %s.addr, align 8
  %path47 = getelementptr inbounds %struct.gz_stream, ptr %31, i64 0, i32 8
  %32 = load ptr, ptr %path47, align 8
  call void @free(ptr noundef %32) #8
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.end44
  %33 = load ptr, ptr %s.addr, align 8
  %tobool49.not = icmp eq ptr %33, null
  br i1 %tobool49.not, label %if.end51, label %if.then50

if.then50:                                        ; preds = %if.end48
  %34 = load ptr, ptr %s.addr, align 8
  call void @free(ptr noundef %34) #8
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.end48
  %35 = load i32, ptr %err, align 4
  br label %return

return:                                           ; preds = %entry, %if.end51
  %storemerge = phi i32 [ %35, %if.end51 ], [ -2, %entry ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal void @putLong(ptr noundef %file, i64 noundef %x) #0 {
entry:
  %file.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %n = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  store i64 %x, ptr %x.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %n, align 4
  %cmp = icmp slt i32 %storemerge, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load i64, ptr %x.addr, align 8
  %1 = trunc i64 %0 to i32
  %conv = and i32 %1, 255
  %2 = load ptr, ptr %file.addr, align 8
  %call = call i32 @fputc(i32 noundef %conv, ptr noundef %2) #8
  %shr = lshr i64 %0, 8
  store i64 %shr, ptr %x.addr, align 8
  %3 = load i32, ptr %n, align 4
  %inc = add nsw i32 %3, 1
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define ptr @gzerror(ptr noundef %file, ptr noundef %errnum) #0 {
entry:
  %retval = alloca ptr, align 8
  %errnum.addr = alloca ptr, align 8
  %m = alloca ptr, align 8
  %s = alloca ptr, align 8
  store ptr %errnum, ptr %errnum.addr, align 8
  store ptr %file, ptr %s, align 8
  %cmp = icmp eq ptr %file, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %errnum.addr, align 8
  store i32 -2, ptr %0, align 4
  %1 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 4), align 8
  store ptr %1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %s, align 8
  %z_err = getelementptr inbounds %struct.gz_stream, ptr %2, i64 0, i32 1
  %3 = load i32, ptr %z_err, align 8
  %4 = load ptr, ptr %errnum.addr, align 8
  store i32 %3, ptr %4, align 4
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store ptr @.str.1, ptr %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %errnum.addr, align 8
  %6 = load i32, ptr %5, align 4
  %cmp4 = icmp eq i32 %6, -1
  br i1 %cmp4, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.end3
  %7 = load ptr, ptr %s, align 8
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %7, i64 0, i32 6
  %8 = load ptr, ptr %msg, align 8
  br label %cond.end

cond.end:                                         ; preds = %if.end3, %cond.false
  %cond = phi ptr [ %8, %cond.false ], [ @.str.1, %if.end3 ]
  store ptr %cond, ptr %m, align 8
  %cmp5 = icmp eq ptr %cond, null
  br i1 %cmp5, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %9 = load ptr, ptr %m, align 8
  %10 = load i8, ptr %9, align 1
  %cmp6 = icmp eq i8 %10, 0
  br i1 %cmp6, label %if.then8, label %if.end10

if.then8:                                         ; preds = %lor.lhs.false, %cond.end
  %11 = load ptr, ptr %s, align 8
  %z_err9 = getelementptr inbounds %struct.gz_stream, ptr %11, i64 0, i32 1
  %12 = load i32, ptr %z_err9, align 8
  %sub = sub nsw i32 2, %12
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [10 x ptr], ptr @z_errmsg, i64 0, i64 %idxprom
  %13 = load ptr, ptr %arrayidx, align 8
  store ptr %13, ptr %m, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %lor.lhs.false
  %14 = load ptr, ptr %s, align 8
  %msg11 = getelementptr inbounds %struct.gz_stream, ptr %14, i64 0, i32 7
  %15 = load ptr, ptr %msg11, align 8
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end10
  %16 = load ptr, ptr %s, align 8
  %msg13 = getelementptr inbounds %struct.gz_stream, ptr %16, i64 0, i32 7
  %17 = load ptr, ptr %msg13, align 8
  call void @free(ptr noundef %17) #8
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10
  %18 = load ptr, ptr %s, align 8
  %path = getelementptr inbounds %struct.gz_stream, ptr %18, i64 0, i32 8
  %19 = load ptr, ptr %path, align 8
  %call = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %19) #8
  %20 = load ptr, ptr %m, align 8
  %call15 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #8
  %add = add i64 %call, %call15
  %add16 = add i64 %add, 3
  %call17 = call ptr @malloc(i64 noundef %add16) #7
  %21 = load ptr, ptr %s, align 8
  %msg18 = getelementptr inbounds %struct.gz_stream, ptr %21, i64 0, i32 7
  store ptr %call17, ptr %msg18, align 8
  %path20 = getelementptr inbounds %struct.gz_stream, ptr %21, i64 0, i32 8
  %22 = load ptr, ptr %path20, align 8
  %23 = call i64 @llvm.objectsize.i64.p0(ptr %call17, i1 false, i1 true, i1 false)
  %call22 = call ptr @__strcpy_chk(ptr noundef %call17, ptr noundef %22, i64 noundef %23) #8
  %24 = load ptr, ptr %s, align 8
  %msg23 = getelementptr inbounds %struct.gz_stream, ptr %24, i64 0, i32 7
  %25 = load ptr, ptr %msg23, align 8
  %26 = call i64 @llvm.objectsize.i64.p0(ptr %25, i1 false, i1 true, i1 false)
  %call25 = call ptr @__strcat_chk(ptr noundef %25, ptr noundef nonnull @.str.2, i64 noundef %26) #8
  %msg26 = getelementptr inbounds %struct.gz_stream, ptr %24, i64 0, i32 7
  %27 = load ptr, ptr %msg26, align 8
  %28 = load ptr, ptr %m, align 8
  %29 = load ptr, ptr %s, align 8
  %msg27 = getelementptr inbounds %struct.gz_stream, ptr %29, i64 0, i32 7
  %30 = load ptr, ptr %msg27, align 8
  %31 = call i64 @llvm.objectsize.i64.p0(ptr %30, i1 false, i1 true, i1 false)
  %call28 = call ptr @__strcat_chk(ptr noundef %27, ptr noundef %28, i64 noundef %31) #8
  %msg29 = getelementptr inbounds %struct.gz_stream, ptr %29, i64 0, i32 7
  %32 = load ptr, ptr %msg29, align 8
  store ptr %32, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end14, %if.then2, %if.then
  %33 = load ptr, ptr %retval, align 8
  ret ptr %33
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
  %z_eof = getelementptr inbounds %struct.gz_stream, ptr %s, i64 0, i32 2
  %0 = load i32, ptr %z_eof, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %s.addr, align 8
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 1
  %2 = load i32, ptr %avail_in, align 8
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then1, label %if.end19

if.then1:                                         ; preds = %if.end
  %call = call ptr @__error() #8
  store i32 0, ptr %call, align 4
  %3 = load ptr, ptr %s.addr, align 8
  %inbuf = getelementptr inbounds %struct.gz_stream, ptr %3, i64 0, i32 4
  %4 = load ptr, ptr %inbuf, align 8
  %file = getelementptr inbounds %struct.gz_stream, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %file, align 8
  %call2 = call i64 @fread(ptr noundef %4, i64 noundef 1, i64 noundef 16384, ptr noundef %5) #8
  %conv = trunc i64 %call2 to i32
  %6 = load ptr, ptr %s.addr, align 8
  %avail_in4 = getelementptr inbounds %struct.z_stream_s, ptr %6, i64 0, i32 1
  store i32 %conv, ptr %avail_in4, align 8
  %cmp7 = icmp eq i32 %conv, 0
  br i1 %cmp7, label %if.then9, label %if.end16

if.then9:                                         ; preds = %if.then1
  %7 = load ptr, ptr %s.addr, align 8
  %z_eof10 = getelementptr inbounds %struct.gz_stream, ptr %7, i64 0, i32 2
  store i32 1, ptr %z_eof10, align 4
  %file11 = getelementptr inbounds %struct.gz_stream, ptr %7, i64 0, i32 3
  %8 = load ptr, ptr %file11, align 8
  %call12 = call i32 @ferror(ptr noundef %8) #8
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.then9
  %9 = load ptr, ptr %s.addr, align 8
  %z_err = getelementptr inbounds %struct.gz_stream, ptr %9, i64 0, i32 1
  store i32 -1, ptr %z_err, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.then9
  store i32 -1, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.then1
  %10 = load ptr, ptr %s.addr, align 8
  %inbuf17 = getelementptr inbounds %struct.gz_stream, ptr %10, i64 0, i32 4
  %11 = load ptr, ptr %inbuf17, align 8
  store ptr %11, ptr %10, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.end16, %if.end
  %12 = load ptr, ptr %s.addr, align 8
  %avail_in21 = getelementptr inbounds %struct.z_stream_s, ptr %12, i64 0, i32 1
  %13 = load i32, ptr %avail_in21, align 8
  %dec = add i32 %13, -1
  store i32 %dec, ptr %avail_in21, align 8
  %14 = load ptr, ptr %12, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %14, i64 1
  store ptr %incdec.ptr, ptr %12, align 8
  %15 = load i8, ptr %14, align 1
  %conv24 = zext i8 %15 to i32
  store i32 %conv24, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end19, %if.end15, %if.then
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

declare i32 @deflateEnd(ptr noundef) #1

declare i32 @inflateEnd(ptr noundef) #1

declare i32 @fclose(ptr noundef) #1

declare i32 @fputc(i32 noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { nounwind }

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
