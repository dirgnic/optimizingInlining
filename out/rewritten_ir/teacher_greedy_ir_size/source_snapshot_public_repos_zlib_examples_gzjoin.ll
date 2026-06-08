; ModuleID = './out/rewritten_ir/teacher_greedy_ir_size/source_snapshot_public_repos_zlib_examples_gzjoin.prepared.ll'
source_filename = "./source_snapshot/public_repos/zlib/examples/gzjoin.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.bin = type { ptr, i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [59 x i8] c"gzjoin usage: gzjoin f1.gz [f2.gz [f3.gz ...]] > fjoin.gz\0A\00", align 1
@__stderrp = external global ptr, align 8
@__stdoutp = external global ptr, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"\1F\8B\08\00\00\00\00\00\00\FF\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"could not open \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"1.2.12\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"invalid compressed data in \00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"\00\00\FF\FF\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"gzjoin error: %s%s, output incomplete\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"unexpected end of file on \00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c" is not a valid gzip file\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"unknown reserved bits set in \00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %crc = alloca i64, align 8
  %tot = alloca i64, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %dec = add nsw i32 %argc, -1
  store i32 %dec, ptr %argc.addr, align 4
  %incdec.ptr = getelementptr inbounds ptr, ptr %argv, i64 1
  store ptr %incdec.ptr, ptr %argv.addr, align 8
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @__stderrp, align 8
  %call = call i32 @"\01_fputs"(ptr noundef nonnull @.str, ptr noundef %0) #5
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @__stdoutp, align 8
  %call.i = call i64 @"\01_fwrite"(ptr noundef nonnull @.str.1, i64 noundef 1, i64 noundef 10, ptr noundef %1) #5
  %call1.i = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #5
  store i64 %call1.i, ptr %crc, align 8
  store i64 0, ptr %tot, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %2 = load i32, ptr %argc.addr, align 4
  %dec1 = add nsw i32 %2, -1
  store i32 %dec1, ptr %argc.addr, align 4
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %return, label %while.body

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %argv.addr, align 8
  %incdec.ptr2 = getelementptr inbounds ptr, ptr %3, i64 1
  store ptr %incdec.ptr2, ptr %argv.addr, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = load i32, ptr %argc.addr, align 4
  %6 = load ptr, ptr @__stdoutp, align 8
  call void @gzcopy(ptr noundef %4, i32 noundef %5, ptr noundef nonnull %crc, ptr noundef nonnull %tot, ptr noundef %6)
  br label %while.cond, !llvm.loop !6

return:                                           ; preds = %while.cond, %if.then
  ret i32 0
}

declare i32 @"\01_fputs"(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @gzcopy(ptr noundef %name, i32 noundef %clr, ptr noundef %crc, ptr noundef %tot, ptr noundef %out) #0 {
entry:
  %name.addr = alloca ptr, align 8
  %clr.addr = alloca i32, align 4
  %crc.addr = alloca ptr, align 8
  %tot.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %pos = alloca i32, align 4
  %last = alloca i32, align 4
  %in = alloca ptr, align 8
  %start = alloca ptr, align 8
  %junk = alloca ptr, align 8
  %len = alloca i64, align 8
  %strm = alloca %struct.z_stream_s, align 8
  store ptr %name, ptr %name.addr, align 8
  store i32 %clr, ptr %clr.addr, align 4
  store ptr %crc, ptr %crc.addr, align 8
  store ptr %tot, ptr %tot.addr, align 8
  store ptr %out, ptr %out.addr, align 8
  %call = call ptr @bopen(ptr noundef %name)
  store ptr %call, ptr %in, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %name.addr, align 8
  %call1 = call i32 @bail(ptr noundef nonnull @.str.2, ptr noundef %0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %in, align 8
  call void @gzhead(ptr noundef %1)
  %call2 = call dereferenceable_or_null(32768) ptr @malloc(i64 noundef 32768) #6
  store ptr %call2, ptr %junk, align 8
  %zalloc = getelementptr inbounds %struct.z_stream_s, ptr %strm, i64 0, i32 8
  store ptr null, ptr %zalloc, align 8
  %zfree = getelementptr inbounds %struct.z_stream_s, ptr %strm, i64 0, i32 9
  store ptr null, ptr %zfree, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %strm, i64 0, i32 10
  store ptr null, ptr %opaque, align 8
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %strm, i64 0, i32 1
  store i32 0, ptr %avail_in, align 8
  store ptr null, ptr %strm, align 8
  %call3 = call i32 @inflateInit2_(ptr noundef nonnull %strm, i32 noundef -15, ptr noundef nonnull @.str.3, i32 noundef 112) #5
  store i32 %call3, ptr %ret, align 4
  %2 = load ptr, ptr %junk, align 8
  %cmp4 = icmp ne ptr %2, null
  %3 = load i32, ptr %ret, align 4
  %cmp5.not = icmp eq i32 %3, 0
  %or.cond = select i1 %cmp4, i1 %cmp5.not, i1 false
  br i1 %or.cond, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end
  %call7 = call i32 @bail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then6
  store i64 0, ptr %len, align 8
  %4 = load ptr, ptr %in, align 8
  call void @zpull(ptr noundef nonnull %strm, ptr noundef %4)
  %next = getelementptr inbounds %struct.bin, ptr %4, i64 0, i32 3
  %5 = load ptr, ptr %next, align 8
  store ptr %5, ptr %start, align 8
  %6 = load i8, ptr %5, align 1
  %7 = and i8 %6, 1
  %and = zext i8 %7 to i32
  store i32 %and, ptr %last, align 4
  %tobool.not = icmp eq i8 %7, 0
  %8 = load i32, ptr %clr.addr, align 4
  %tobool9.not = icmp eq i32 %8, 0
  %or.cond1 = select i1 %tobool.not, i1 true, i1 %tobool9.not
  br i1 %or.cond1, label %if.end15, label %if.then10

if.then10:                                        ; preds = %if.end8
  %9 = load ptr, ptr %start, align 8
  %10 = load i8, ptr %9, align 1
  %11 = and i8 %10, -2
  store i8 %11, ptr %9, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %if.end8
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %strm, i64 0, i32 4
  store i32 0, ptr %avail_out, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end98, %if.end15
  %avail_in16 = getelementptr inbounds %struct.z_stream_s, ptr %strm, i64 0, i32 1
  %12 = load i32, ptr %avail_in16, align 8
  %cmp17 = icmp ne i32 %12, 0
  %avail_out20 = getelementptr inbounds %struct.z_stream_s, ptr %strm, i64 0, i32 4
  %13 = load i32, ptr %avail_out20, align 8
  %cmp21.not = icmp eq i32 %13, 0
  %or.cond2 = select i1 %cmp17, i1 true, i1 %cmp21.not
  br i1 %or.cond2, label %if.end26, label %if.then23

if.then23:                                        ; preds = %for.cond
  %14 = load ptr, ptr %start, align 8
  %15 = load ptr, ptr %strm, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %15 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %14 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %16 = load ptr, ptr %out.addr, align 8
  %call25 = call i64 @"\01_fwrite"(ptr noundef %14, i64 noundef 1, i64 noundef %sub.ptr.sub, ptr noundef %16) #5
  %17 = load ptr, ptr %in, align 8
  %buf = getelementptr inbounds %struct.bin, ptr %17, i64 0, i32 4
  %18 = load ptr, ptr %buf, align 8
  store ptr %18, ptr %start, align 8
  %left = getelementptr inbounds %struct.bin, ptr %17, i64 0, i32 2
  store i32 0, ptr %left, align 4
  call void @zpull(ptr noundef nonnull %strm, ptr noundef %17)
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %for.cond
  %avail_out27 = getelementptr inbounds %struct.z_stream_s, ptr %strm, i64 0, i32 4
  store i32 32768, ptr %avail_out27, align 8
  %19 = load ptr, ptr %junk, align 8
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %strm, i64 0, i32 3
  store ptr %19, ptr %next_out, align 8
  %call28 = call i32 @inflate(ptr noundef nonnull %strm, i32 noundef 5) #5
  store i32 %call28, ptr %ret, align 4
  switch i32 %call28, label %sw.epilog [
    i32 -4, label %sw.bb
    i32 -3, label %sw.bb30
  ]

sw.bb:                                            ; preds = %if.end26
  %call29 = call i32 @bail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
  br label %sw.bb30

sw.bb30:                                          ; preds = %sw.bb, %if.end26
  %20 = load ptr, ptr %in, align 8
  %21 = load ptr, ptr %20, align 8
  %call32 = call i32 @bail(ptr noundef nonnull @.str.6, ptr noundef %21)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb30, %if.end26
  %avail_out33 = getelementptr inbounds %struct.z_stream_s, ptr %strm, i64 0, i32 4
  %22 = load i32, ptr %avail_out33, align 8
  %sub = sub i32 32768, %22
  %conv34 = zext i32 %sub to i64
  %23 = load i64, ptr %len, align 8
  %add = add nsw i64 %23, %conv34
  store i64 %add, ptr %len, align 8
  %data_type = getelementptr inbounds %struct.z_stream_s, ptr %strm, i64 0, i32 11
  %24 = load i32, ptr %data_type, align 8
  %and35 = and i32 %24, 128
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end98, label %if.then37

if.then37:                                        ; preds = %sw.epilog
  %25 = load i32, ptr %last, align 4
  %tobool38.not = icmp eq i32 %25, 0
  br i1 %tobool38.not, label %if.end40, label %for.end

if.end40:                                         ; preds = %if.then37
  %data_type41 = getelementptr inbounds %struct.z_stream_s, ptr %strm, i64 0, i32 11
  %26 = load i32, ptr %data_type41, align 8
  %and42 = and i32 %26, 7
  store i32 %and42, ptr %pos, align 4
  %cmp43.not = icmp eq i32 %and42, 0
  br i1 %cmp43.not, label %if.else, label %if.then45

if.then45:                                        ; preds = %if.end40
  %27 = load i32, ptr %pos, align 4
  %shr = lshr i32 256, %27
  store i32 %shr, ptr %pos, align 4
  %28 = load ptr, ptr %strm, align 8
  %arrayidx47 = getelementptr inbounds i8, ptr %28, i64 -1
  %29 = load i8, ptr %arrayidx47, align 1
  %conv48 = zext i8 %29 to i32
  %and49 = and i32 %shr, %conv48
  store i32 %and49, ptr %last, align 4
  %tobool50.not = icmp eq i32 %and49, 0
  %30 = load i32, ptr %clr.addr, align 4
  %tobool52.not = icmp eq i32 %30, 0
  %or.cond3 = select i1 %tobool50.not, i1 true, i1 %tobool52.not
  br i1 %or.cond3, label %if.end98, label %if.then53

if.then53:                                        ; preds = %if.then45
  %31 = load i32, ptr %pos, align 4
  %32 = load ptr, ptr %in, align 8
  %buf54 = getelementptr inbounds %struct.bin, ptr %32, i64 0, i32 4
  %33 = load ptr, ptr %buf54, align 8
  %34 = load ptr, ptr %strm, align 8
  %sub.ptr.lhs.cast57 = ptrtoint ptr %34 to i64
  %sub.ptr.rhs.cast58 = ptrtoint ptr %33 to i64
  %35 = xor i64 %sub.ptr.rhs.cast58, -1
  %sub60 = add i64 %35, %sub.ptr.lhs.cast57
  %arrayidx61 = getelementptr inbounds i8, ptr %33, i64 %sub60
  %36 = load i8, ptr %arrayidx61, align 1
  %37 = trunc i32 %31 to i8
  %38 = xor i8 %37, -1
  %conv64 = and i8 %36, %38
  store i8 %conv64, ptr %arrayidx61, align 1
  br label %if.end98

if.else:                                          ; preds = %if.end40
  %avail_in66 = getelementptr inbounds %struct.z_stream_s, ptr %strm, i64 0, i32 1
  %39 = load i32, ptr %avail_in66, align 8
  %cmp67 = icmp eq i32 %39, 0
  br i1 %cmp67, label %if.then69, label %if.end77

if.then69:                                        ; preds = %if.else
  %40 = load ptr, ptr %start, align 8
  %41 = load ptr, ptr %strm, align 8
  %sub.ptr.lhs.cast71 = ptrtoint ptr %41 to i64
  %sub.ptr.rhs.cast72 = ptrtoint ptr %40 to i64
  %sub.ptr.sub73 = sub i64 %sub.ptr.lhs.cast71, %sub.ptr.rhs.cast72
  %42 = load ptr, ptr %out.addr, align 8
  %call74 = call i64 @"\01_fwrite"(ptr noundef %40, i64 noundef 1, i64 noundef %sub.ptr.sub73, ptr noundef %42) #5
  %43 = load ptr, ptr %in, align 8
  %buf75 = getelementptr inbounds %struct.bin, ptr %43, i64 0, i32 4
  %44 = load ptr, ptr %buf75, align 8
  store ptr %44, ptr %start, align 8
  %left76 = getelementptr inbounds %struct.bin, ptr %43, i64 0, i32 2
  store i32 0, ptr %left76, align 4
  call void @zpull(ptr noundef nonnull %strm, ptr noundef %43)
  br label %if.end77

if.end77:                                         ; preds = %if.then69, %if.else
  %45 = load ptr, ptr %strm, align 8
  %46 = load i8, ptr %45, align 1
  %47 = and i8 %46, 1
  %and81 = zext i8 %47 to i32
  store i32 %and81, ptr %last, align 4
  %tobool82.not = icmp eq i8 %47, 0
  %48 = load i32, ptr %clr.addr, align 4
  %tobool84.not = icmp eq i32 %48, 0
  %or.cond4 = select i1 %tobool82.not, i1 true, i1 %tobool84.not
  br i1 %or.cond4, label %if.end98, label %if.then85

if.then85:                                        ; preds = %if.end77
  %49 = load ptr, ptr %in, align 8
  %buf86 = getelementptr inbounds %struct.bin, ptr %49, i64 0, i32 4
  %50 = load ptr, ptr %buf86, align 8
  %51 = load ptr, ptr %strm, align 8
  %sub.ptr.lhs.cast89 = ptrtoint ptr %51 to i64
  %sub.ptr.rhs.cast90 = ptrtoint ptr %50 to i64
  %sub.ptr.sub91 = sub i64 %sub.ptr.lhs.cast89, %sub.ptr.rhs.cast90
  %arrayidx92 = getelementptr inbounds i8, ptr %50, i64 %sub.ptr.sub91
  %52 = load i8, ptr %arrayidx92, align 1
  %53 = and i8 %52, -2
  store i8 %53, ptr %arrayidx92, align 1
  br label %if.end98

if.end98:                                         ; preds = %if.then53, %if.then45, %if.then85, %if.end77, %sw.epilog
  br label %for.cond

for.end:                                          ; preds = %if.then37
  %avail_in99 = getelementptr inbounds %struct.z_stream_s, ptr %strm, i64 0, i32 1
  %54 = load i32, ptr %avail_in99, align 8
  %55 = load ptr, ptr %in, align 8
  %left100 = getelementptr inbounds %struct.bin, ptr %55, i64 0, i32 2
  store i32 %54, ptr %left100, align 4
  %buf101 = getelementptr inbounds %struct.bin, ptr %55, i64 0, i32 4
  %56 = load ptr, ptr %buf101, align 8
  %57 = load ptr, ptr %strm, align 8
  %sub.ptr.lhs.cast104 = ptrtoint ptr %57 to i64
  %sub.ptr.rhs.cast105 = ptrtoint ptr %56 to i64
  %sub.ptr.sub106 = sub i64 %sub.ptr.lhs.cast104, %sub.ptr.rhs.cast105
  %add.ptr = getelementptr inbounds i8, ptr %56, i64 %sub.ptr.sub106
  %58 = load ptr, ptr %in, align 8
  %next107 = getelementptr inbounds %struct.bin, ptr %58, i64 0, i32 3
  store ptr %add.ptr, ptr %next107, align 8
  %data_type108 = getelementptr inbounds %struct.z_stream_s, ptr %strm, i64 0, i32 11
  %59 = load i32, ptr %data_type108, align 8
  %and109 = and i32 %59, 7
  store i32 %and109, ptr %pos, align 4
  %60 = load ptr, ptr %start, align 8
  %61 = load ptr, ptr %in, align 8
  %next110 = getelementptr inbounds %struct.bin, ptr %61, i64 0, i32 3
  %62 = load ptr, ptr %next110, align 8
  %sub.ptr.lhs.cast111 = ptrtoint ptr %62 to i64
  %sub.ptr.rhs.cast112 = ptrtoint ptr %60 to i64
  %63 = xor i64 %sub.ptr.rhs.cast112, -1
  %sub114 = add i64 %63, %sub.ptr.lhs.cast111
  %64 = load ptr, ptr %out.addr, align 8
  %call115 = call i64 @"\01_fwrite"(ptr noundef %60, i64 noundef 1, i64 noundef %sub114, ptr noundef %64) #5
  %65 = load ptr, ptr %in, align 8
  %next116 = getelementptr inbounds %struct.bin, ptr %65, i64 0, i32 3
  %66 = load ptr, ptr %next116, align 8
  %arrayidx117 = getelementptr inbounds i8, ptr %66, i64 -1
  %67 = load i8, ptr %arrayidx117, align 1
  %conv118 = zext i8 %67 to i32
  store i32 %conv118, ptr %last, align 4
  %68 = load i32, ptr %pos, align 4
  %cmp119 = icmp eq i32 %68, 0
  %69 = load i32, ptr %clr.addr, align 4
  %tobool122.not = icmp eq i32 %69, 0
  %or.cond5 = select i1 %cmp119, i1 true, i1 %tobool122.not
  br i1 %or.cond5, label %if.then123, label %if.else125

if.then123:                                       ; preds = %for.end
  %70 = load i32, ptr %last, align 4
  %71 = load ptr, ptr %out.addr, align 8
  %call124 = call i32 @putc(i32 noundef %70, ptr noundef %71) #5
  br label %if.end151

if.else125:                                       ; preds = %for.end
  %72 = load i32, ptr %pos, align 4
  %shr126 = lshr i32 256, %72
  %sub127 = add nsw i32 %shr126, -1
  %73 = load i32, ptr %last, align 4
  %and128 = and i32 %73, %sub127
  store i32 %and128, ptr %last, align 4
  %and129 = and i32 %72, 1
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %if.else139, label %if.then131

if.then131:                                       ; preds = %if.else125
  %74 = load i32, ptr %last, align 4
  %75 = load ptr, ptr %out.addr, align 8
  %call132 = call i32 @putc(i32 noundef %74, ptr noundef %75) #5
  %76 = load i32, ptr %pos, align 4
  %cmp133 = icmp eq i32 %76, 1
  br i1 %cmp133, label %if.then135, label %if.end137

if.then135:                                       ; preds = %if.then131
  %77 = load ptr, ptr %out.addr, align 8
  %call136 = call i32 @putc(i32 noundef 0, ptr noundef %77) #5
  br label %if.end137

if.end137:                                        ; preds = %if.then135, %if.then131
  %78 = load ptr, ptr %out.addr, align 8
  %call138 = call i64 @"\01_fwrite"(ptr noundef nonnull @.str.7, i64 noundef 1, i64 noundef 4, ptr noundef %78) #5
  br label %if.end151

if.else139:                                       ; preds = %if.else125
  %79 = load i32, ptr %pos, align 4
  switch i32 %79, label %if.end151 [
    i32 6, label %sw.bb140
    i32 4, label %sw.bb142
    i32 2, label %sw.bb145
  ]

sw.bb140:                                         ; preds = %if.else139
  %80 = load i32, ptr %last, align 4
  %or = or i32 %80, 8
  %81 = load ptr, ptr %out.addr, align 8
  %call141 = call i32 @putc(i32 noundef %or, ptr noundef %81) #5
  store i32 0, ptr %last, align 4
  br label %sw.bb142

sw.bb142:                                         ; preds = %sw.bb140, %if.else139
  %82 = load i32, ptr %last, align 4
  %or143 = or i32 %82, 32
  %83 = load ptr, ptr %out.addr, align 8
  %call144 = call i32 @putc(i32 noundef %or143, ptr noundef %83) #5
  store i32 0, ptr %last, align 4
  br label %sw.bb145

sw.bb145:                                         ; preds = %sw.bb142, %if.else139
  %84 = load i32, ptr %last, align 4
  %or146 = or i32 %84, 128
  %85 = load ptr, ptr %out.addr, align 8
  %call147 = call i32 @putc(i32 noundef %or146, ptr noundef %85) #5
  %call148 = call i32 @putc(i32 noundef 0, ptr noundef %85) #5
  br label %if.end151

if.end151:                                        ; preds = %if.end137, %sw.bb145, %if.else139, %if.then123
  %86 = load ptr, ptr %crc.addr, align 8
  %87 = load i64, ptr %86, align 8
  %88 = load ptr, ptr %in, align 8
  %call152 = call i64 @bget4(ptr noundef %88)
  %89 = load i64, ptr %len, align 8
  %call153 = call i64 @crc32_combine(i64 noundef %87, i64 noundef %call152, i64 noundef %89) #5
  store i64 %call153, ptr %86, align 8
  %90 = load ptr, ptr %tot.addr, align 8
  %91 = load i64, ptr %90, align 8
  %add154 = add i64 %91, %89
  store i64 %add154, ptr %90, align 8
  %call155 = call i32 @inflateEnd(ptr noundef nonnull %strm) #5
  %92 = load ptr, ptr %junk, align 8
  call void @free(ptr noundef %92) #5
  %93 = load ptr, ptr %in, align 8
  call void @bclose(ptr noundef %93)
  %94 = load i32, ptr %clr.addr, align 4
  %tobool156.not = icmp eq i32 %94, 0
  br i1 %tobool156.not, label %if.then157, label %if.end158

if.then157:                                       ; preds = %if.end151
  %95 = load ptr, ptr %crc.addr, align 8
  %96 = load i64, ptr %95, align 8
  %97 = load ptr, ptr %out.addr, align 8
  call void @put4(i64 noundef %96, ptr noundef %97)
  %98 = load ptr, ptr %tot.addr, align 8
  %99 = load i64, ptr %98, align 8
  call void @put4(i64 noundef %99, ptr noundef %97)
  br label %if.end158

if.end158:                                        ; preds = %if.then157, %if.end151
  ret void
}

declare i64 @"\01_fwrite"(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal ptr @bopen(ptr noundef %name) #0 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %in = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  %call = call dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #6
  store ptr %call, ptr %in, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call dereferenceable_or_null(32768) ptr @malloc(i64 noundef 32768) #6
  %0 = load ptr, ptr %in, align 8
  %buf = getelementptr inbounds %struct.bin, ptr %0, i64 0, i32 4
  store ptr %call1, ptr %buf, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %call2 = call i32 (ptr, i32, ...) @"\01_open"(ptr noundef %1, i32 noundef 0, i32 noundef 0) #5
  %fd = getelementptr inbounds %struct.bin, ptr %0, i64 0, i32 1
  store i32 %call2, ptr %fd, align 8
  %2 = load ptr, ptr %in, align 8
  %buf3 = getelementptr inbounds %struct.bin, ptr %2, i64 0, i32 4
  %3 = load ptr, ptr %buf3, align 8
  %cmp4 = icmp eq ptr %3, null
  br i1 %cmp4, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load ptr, ptr %in, align 8
  %fd5 = getelementptr inbounds %struct.bin, ptr %4, i64 0, i32 1
  %5 = load i32, ptr %fd5, align 8
  %cmp6 = icmp eq i32 %5, -1
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false, %if.end
  %6 = load ptr, ptr %in, align 8
  call void @bclose(ptr noundef %6)
  store ptr null, ptr %retval, align 8
  br label %return

if.end8:                                          ; preds = %lor.lhs.false
  %7 = load ptr, ptr %in, align 8
  %left = getelementptr inbounds %struct.bin, ptr %7, i64 0, i32 2
  store i32 0, ptr %left, align 4
  %buf9 = getelementptr inbounds %struct.bin, ptr %7, i64 0, i32 4
  %8 = load ptr, ptr %buf9, align 8
  %next = getelementptr inbounds %struct.bin, ptr %7, i64 0, i32 3
  store ptr %8, ptr %next, align 8
  %9 = load ptr, ptr %name.addr, align 8
  %10 = load ptr, ptr %in, align 8
  store ptr %9, ptr %10, align 8
  store ptr %10, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end8, %if.then7, %if.then
  %11 = load ptr, ptr %retval, align 8
  ret ptr %11
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @bail(ptr noundef %why1, ptr noundef %why2) #0 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef %why1, ptr noundef %why2) #5
  call void @exit(i32 noundef 1) #7
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define internal void @gzhead(ptr noundef %in) #0 {
entry:
  %in.addr = alloca ptr, align 8
  %flags = alloca i32, align 4
  %len = alloca i32, align 4
  store ptr %in, ptr %in.addr, align 8
  %left = getelementptr inbounds %struct.bin, ptr %in, i64 0, i32 2
  %0 = load i32, ptr %left, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cond.false, label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load ptr, ptr %in.addr, align 8
  %call = call i32 @bload(ptr noundef %1)
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %2 = load ptr, ptr %in.addr, align 8
  %left1 = getelementptr inbounds %struct.bin, ptr %2, i64 0, i32 2
  %3 = load i32, ptr %left1, align 4
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %cond.false5, label %cond.true3

cond.true3:                                       ; preds = %cond.end
  %4 = load ptr, ptr %in.addr, align 8
  %left4 = getelementptr inbounds %struct.bin, ptr %4, i64 0, i32 2
  %5 = load i32, ptr %left4, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %left4, align 4
  %next = getelementptr inbounds %struct.bin, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %next, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %incdec.ptr, ptr %next, align 8
  %7 = load i8, ptr %6, align 1
  %cmp.not = icmp eq i8 %7, 31
  br i1 %cmp.not, label %lor.lhs.false, label %if.then

cond.false5:                                      ; preds = %cond.end
  %8 = load ptr, ptr %in.addr, align 8
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr @__stderrp, align 8
  %call.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef %9) #5
  call void @exit(i32 noundef 1) #7
  unreachable

lor.lhs.false:                                    ; preds = %cond.true3
  %11 = load ptr, ptr %in.addr, align 8
  %left10 = getelementptr inbounds %struct.bin, ptr %11, i64 0, i32 2
  %12 = load i32, ptr %left10, align 4
  %tobool11.not = icmp eq i32 %12, 0
  br i1 %tobool11.not, label %cond.false13, label %cond.end15

cond.false13:                                     ; preds = %lor.lhs.false
  %13 = load ptr, ptr %in.addr, align 8
  %call14 = call i32 @bload(ptr noundef %13)
  br label %cond.end15

cond.end15:                                       ; preds = %lor.lhs.false, %cond.false13
  %14 = load ptr, ptr %in.addr, align 8
  %left17 = getelementptr inbounds %struct.bin, ptr %14, i64 0, i32 2
  %15 = load i32, ptr %left17, align 4
  %tobool18.not = icmp eq i32 %15, 0
  br i1 %tobool18.not, label %cond.false25, label %cond.true19

cond.true19:                                      ; preds = %cond.end15
  %16 = load ptr, ptr %in.addr, align 8
  %left20 = getelementptr inbounds %struct.bin, ptr %16, i64 0, i32 2
  %17 = load i32, ptr %left20, align 4
  %dec21 = add i32 %17, -1
  store i32 %dec21, ptr %left20, align 4
  %next22 = getelementptr inbounds %struct.bin, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %next22, align 8
  %incdec.ptr23 = getelementptr inbounds i8, ptr %18, i64 1
  store ptr %incdec.ptr23, ptr %next22, align 8
  %19 = load i8, ptr %18, align 1
  %cmp30.not = icmp eq i8 %19, -117
  br i1 %cmp30.not, label %lor.lhs.false32, label %if.then

cond.false25:                                     ; preds = %cond.end15
  %20 = load ptr, ptr %in.addr, align 8
  %21 = load ptr, ptr %20, align 8
  %22 = load ptr, ptr @__stderrp, align 8
  %call.i3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef %21) #5
  call void @exit(i32 noundef 1) #7
  unreachable

lor.lhs.false32:                                  ; preds = %cond.true19
  %23 = load ptr, ptr %in.addr, align 8
  %left33 = getelementptr inbounds %struct.bin, ptr %23, i64 0, i32 2
  %24 = load i32, ptr %left33, align 4
  %tobool34.not = icmp eq i32 %24, 0
  br i1 %tobool34.not, label %cond.false36, label %cond.end38

cond.false36:                                     ; preds = %lor.lhs.false32
  %25 = load ptr, ptr %in.addr, align 8
  %call37 = call i32 @bload(ptr noundef %25)
  br label %cond.end38

cond.end38:                                       ; preds = %lor.lhs.false32, %cond.false36
  %26 = load ptr, ptr %in.addr, align 8
  %left40 = getelementptr inbounds %struct.bin, ptr %26, i64 0, i32 2
  %27 = load i32, ptr %left40, align 4
  %tobool41.not = icmp eq i32 %27, 0
  br i1 %tobool41.not, label %cond.false48, label %cond.true42

cond.true42:                                      ; preds = %cond.end38
  %28 = load ptr, ptr %in.addr, align 8
  %left43 = getelementptr inbounds %struct.bin, ptr %28, i64 0, i32 2
  %29 = load i32, ptr %left43, align 4
  %dec44 = add i32 %29, -1
  store i32 %dec44, ptr %left43, align 4
  %next45 = getelementptr inbounds %struct.bin, ptr %28, i64 0, i32 3
  %30 = load ptr, ptr %next45, align 8
  %incdec.ptr46 = getelementptr inbounds i8, ptr %30, i64 1
  store ptr %incdec.ptr46, ptr %next45, align 8
  %31 = load i8, ptr %30, align 1
  %cmp53.not = icmp eq i8 %31, 8
  br i1 %cmp53.not, label %if.end, label %if.then

cond.false48:                                     ; preds = %cond.end38
  %32 = load ptr, ptr %in.addr, align 8
  %33 = load ptr, ptr %32, align 8
  %34 = load ptr, ptr @__stderrp, align 8
  %call.i6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef %33) #5
  call void @exit(i32 noundef 1) #7
  unreachable

if.then:                                          ; preds = %cond.true42, %cond.true19, %cond.true3
  %35 = load ptr, ptr %in.addr, align 8
  %36 = load ptr, ptr %35, align 8
  %call56 = call i32 @bail(ptr noundef %36, ptr noundef nonnull @.str.10)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.true42
  %37 = load ptr, ptr %in.addr, align 8
  %left57 = getelementptr inbounds %struct.bin, ptr %37, i64 0, i32 2
  %38 = load i32, ptr %left57, align 4
  %tobool58.not = icmp eq i32 %38, 0
  br i1 %tobool58.not, label %cond.false60, label %cond.end62

cond.false60:                                     ; preds = %if.end
  %39 = load ptr, ptr %in.addr, align 8
  %call61 = call i32 @bload(ptr noundef %39)
  br label %cond.end62

cond.end62:                                       ; preds = %if.end, %cond.false60
  %40 = load ptr, ptr %in.addr, align 8
  %left64 = getelementptr inbounds %struct.bin, ptr %40, i64 0, i32 2
  %41 = load i32, ptr %left64, align 4
  %tobool65.not = icmp eq i32 %41, 0
  br i1 %tobool65.not, label %cond.false72, label %cond.true66

cond.true66:                                      ; preds = %cond.end62
  %42 = load ptr, ptr %in.addr, align 8
  %left67 = getelementptr inbounds %struct.bin, ptr %42, i64 0, i32 2
  %43 = load i32, ptr %left67, align 4
  %dec68 = add i32 %43, -1
  store i32 %dec68, ptr %left67, align 4
  %next69 = getelementptr inbounds %struct.bin, ptr %42, i64 0, i32 3
  %44 = load ptr, ptr %next69, align 8
  %incdec.ptr70 = getelementptr inbounds i8, ptr %44, i64 1
  store ptr %incdec.ptr70, ptr %next69, align 8
  %45 = load i8, ptr %44, align 1
  %conv71 = zext i8 %45 to i32
  store i32 %conv71, ptr %flags, align 4
  %cmp77.not = icmp ult i8 %45, 32
  br i1 %cmp77.not, label %if.end82, label %if.then79

cond.false72:                                     ; preds = %cond.end62
  %46 = load ptr, ptr %in.addr, align 8
  %47 = load ptr, ptr %46, align 8
  %48 = load ptr, ptr @__stderrp, align 8
  %call.i9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %48, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef %47) #5
  call void @exit(i32 noundef 1) #7
  unreachable

if.then79:                                        ; preds = %cond.true66
  %49 = load ptr, ptr %in.addr, align 8
  %50 = load ptr, ptr %49, align 8
  %call81 = call i32 @bail(ptr noundef nonnull @.str.11, ptr noundef %50)
  br label %if.end82

if.end82:                                         ; preds = %if.then79, %cond.true66
  %51 = load ptr, ptr %in.addr, align 8
  call void @bskip(ptr noundef %51, i32 noundef 6)
  %52 = load i32, ptr %flags, align 4
  %and83 = and i32 %52, 4
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.end126, label %if.then85

if.then85:                                        ; preds = %if.end82
  %53 = load ptr, ptr %in.addr, align 8
  %left86 = getelementptr inbounds %struct.bin, ptr %53, i64 0, i32 2
  %54 = load i32, ptr %left86, align 4
  %tobool87.not = icmp eq i32 %54, 0
  br i1 %tobool87.not, label %cond.false89, label %cond.end91

cond.false89:                                     ; preds = %if.then85
  %55 = load ptr, ptr %in.addr, align 8
  %call90 = call i32 @bload(ptr noundef %55)
  br label %cond.end91

cond.end91:                                       ; preds = %if.then85, %cond.false89
  %56 = load ptr, ptr %in.addr, align 8
  %left93 = getelementptr inbounds %struct.bin, ptr %56, i64 0, i32 2
  %57 = load i32, ptr %left93, align 4
  %tobool94.not = icmp eq i32 %57, 0
  br i1 %tobool94.not, label %cond.false101, label %cond.true95

cond.true95:                                      ; preds = %cond.end91
  %58 = load ptr, ptr %in.addr, align 8
  %left96 = getelementptr inbounds %struct.bin, ptr %58, i64 0, i32 2
  %59 = load i32, ptr %left96, align 4
  %dec97 = add i32 %59, -1
  store i32 %dec97, ptr %left96, align 4
  %next98 = getelementptr inbounds %struct.bin, ptr %58, i64 0, i32 3
  %60 = load ptr, ptr %next98, align 8
  %incdec.ptr99 = getelementptr inbounds i8, ptr %60, i64 1
  store ptr %incdec.ptr99, ptr %next98, align 8
  %61 = load i8, ptr %60, align 1
  %conv100 = zext i8 %61 to i32
  br label %cond.end104

cond.false101:                                    ; preds = %cond.end91
  %62 = load ptr, ptr %in.addr, align 8
  %63 = load ptr, ptr %62, align 8
  %call103 = call i32 @bail(ptr noundef nonnull @.str.9, ptr noundef %63)
  br label %cond.end104

cond.end104:                                      ; preds = %cond.false101, %cond.true95
  %cond105 = phi i32 [ %conv100, %cond.true95 ], [ %call103, %cond.false101 ]
  store i32 %cond105, ptr %len, align 4
  %64 = load ptr, ptr %in.addr, align 8
  %left106 = getelementptr inbounds %struct.bin, ptr %64, i64 0, i32 2
  %65 = load i32, ptr %left106, align 4
  %tobool107.not = icmp eq i32 %65, 0
  br i1 %tobool107.not, label %cond.false109, label %cond.end111

cond.false109:                                    ; preds = %cond.end104
  %66 = load ptr, ptr %in.addr, align 8
  %call110 = call i32 @bload(ptr noundef %66)
  br label %cond.end111

cond.end111:                                      ; preds = %cond.end104, %cond.false109
  %67 = load ptr, ptr %in.addr, align 8
  %left113 = getelementptr inbounds %struct.bin, ptr %67, i64 0, i32 2
  %68 = load i32, ptr %left113, align 4
  %tobool114.not = icmp eq i32 %68, 0
  br i1 %tobool114.not, label %cond.false121, label %cond.true115

cond.true115:                                     ; preds = %cond.end111
  %69 = load ptr, ptr %in.addr, align 8
  %left116 = getelementptr inbounds %struct.bin, ptr %69, i64 0, i32 2
  %70 = load i32, ptr %left116, align 4
  %dec117 = add i32 %70, -1
  store i32 %dec117, ptr %left116, align 4
  %next118 = getelementptr inbounds %struct.bin, ptr %69, i64 0, i32 3
  %71 = load ptr, ptr %next118, align 8
  %incdec.ptr119 = getelementptr inbounds i8, ptr %71, i64 1
  store ptr %incdec.ptr119, ptr %next118, align 8
  %72 = load i8, ptr %71, align 1
  %conv120 = zext i8 %72 to i32
  br label %cond.end124

cond.false121:                                    ; preds = %cond.end111
  %73 = load ptr, ptr %in.addr, align 8
  %74 = load ptr, ptr %73, align 8
  %call123 = call i32 @bail(ptr noundef nonnull @.str.9, ptr noundef %74)
  br label %cond.end124

cond.end124:                                      ; preds = %cond.false121, %cond.true115
  %cond125 = phi i32 [ %conv120, %cond.true115 ], [ %call123, %cond.false121 ]
  %shl = shl i32 %cond125, 8
  %75 = load i32, ptr %len, align 4
  %add = add i32 %75, %shl
  store i32 %add, ptr %len, align 4
  %76 = load ptr, ptr %in.addr, align 8
  call void @bskip(ptr noundef %76, i32 noundef %add)
  br label %if.end126

if.end126:                                        ; preds = %cond.end124, %if.end82
  %77 = load i32, ptr %flags, align 4
  %and127 = and i32 %77, 8
  %tobool128.not = icmp eq i32 %and127, 0
  br i1 %tobool128.not, label %if.end152, label %while.cond

while.cond:                                       ; preds = %cond.true139, %if.end126
  %78 = load ptr, ptr %in.addr, align 8
  %left130 = getelementptr inbounds %struct.bin, ptr %78, i64 0, i32 2
  %79 = load i32, ptr %left130, align 4
  %tobool131.not = icmp eq i32 %79, 0
  br i1 %tobool131.not, label %cond.false133, label %cond.end135

cond.false133:                                    ; preds = %while.cond
  %80 = load ptr, ptr %in.addr, align 8
  %call134 = call i32 @bload(ptr noundef %80)
  br label %cond.end135

cond.end135:                                      ; preds = %while.cond, %cond.false133
  %81 = load ptr, ptr %in.addr, align 8
  %left137 = getelementptr inbounds %struct.bin, ptr %81, i64 0, i32 2
  %82 = load i32, ptr %left137, align 4
  %tobool138.not = icmp eq i32 %82, 0
  br i1 %tobool138.not, label %cond.false145, label %cond.true139

cond.true139:                                     ; preds = %cond.end135
  %83 = load ptr, ptr %in.addr, align 8
  %left140 = getelementptr inbounds %struct.bin, ptr %83, i64 0, i32 2
  %84 = load i32, ptr %left140, align 4
  %dec141 = add i32 %84, -1
  store i32 %dec141, ptr %left140, align 4
  %next142 = getelementptr inbounds %struct.bin, ptr %83, i64 0, i32 3
  %85 = load ptr, ptr %next142, align 8
  %incdec.ptr143 = getelementptr inbounds i8, ptr %85, i64 1
  store ptr %incdec.ptr143, ptr %next142, align 8
  %86 = load i8, ptr %85, align 1
  %cmp150.not = icmp eq i8 %86, 0
  br i1 %cmp150.not, label %if.end152, label %while.cond, !llvm.loop !8

cond.false145:                                    ; preds = %cond.end135
  %87 = load ptr, ptr %in.addr, align 8
  %88 = load ptr, ptr %87, align 8
  %89 = load ptr, ptr @__stderrp, align 8
  %call.i12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %89, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef %88) #5
  call void @exit(i32 noundef 1) #7
  unreachable

if.end152:                                        ; preds = %cond.true139, %if.end126
  %90 = load i32, ptr %flags, align 4
  %and153 = and i32 %90, 16
  %tobool154.not = icmp eq i32 %and153, 0
  br i1 %tobool154.not, label %if.end181, label %while.cond156

while.cond156:                                    ; preds = %cond.true166, %if.end152
  %91 = load ptr, ptr %in.addr, align 8
  %left157 = getelementptr inbounds %struct.bin, ptr %91, i64 0, i32 2
  %92 = load i32, ptr %left157, align 4
  %tobool158.not = icmp eq i32 %92, 0
  br i1 %tobool158.not, label %cond.false160, label %cond.end162

cond.false160:                                    ; preds = %while.cond156
  %93 = load ptr, ptr %in.addr, align 8
  %call161 = call i32 @bload(ptr noundef %93)
  br label %cond.end162

cond.end162:                                      ; preds = %while.cond156, %cond.false160
  %94 = load ptr, ptr %in.addr, align 8
  %left164 = getelementptr inbounds %struct.bin, ptr %94, i64 0, i32 2
  %95 = load i32, ptr %left164, align 4
  %tobool165.not = icmp eq i32 %95, 0
  br i1 %tobool165.not, label %cond.false172, label %cond.true166

cond.true166:                                     ; preds = %cond.end162
  %96 = load ptr, ptr %in.addr, align 8
  %left167 = getelementptr inbounds %struct.bin, ptr %96, i64 0, i32 2
  %97 = load i32, ptr %left167, align 4
  %dec168 = add i32 %97, -1
  store i32 %dec168, ptr %left167, align 4
  %next169 = getelementptr inbounds %struct.bin, ptr %96, i64 0, i32 3
  %98 = load ptr, ptr %next169, align 8
  %incdec.ptr170 = getelementptr inbounds i8, ptr %98, i64 1
  store ptr %incdec.ptr170, ptr %next169, align 8
  %99 = load i8, ptr %98, align 1
  %cmp177.not = icmp eq i8 %99, 0
  br i1 %cmp177.not, label %if.end181, label %while.cond156, !llvm.loop !9

cond.false172:                                    ; preds = %cond.end162
  %100 = load ptr, ptr %in.addr, align 8
  %101 = load ptr, ptr %100, align 8
  %102 = load ptr, ptr @__stderrp, align 8
  %call.i15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %102, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef %101) #5
  call void @exit(i32 noundef 1) #7
  unreachable

if.end181:                                        ; preds = %cond.true166, %if.end152
  %103 = load i32, ptr %flags, align 4
  %and182 = and i32 %103, 2
  %tobool183.not = icmp eq i32 %and182, 0
  br i1 %tobool183.not, label %if.end185, label %if.then184

if.then184:                                       ; preds = %if.end181
  %104 = load ptr, ptr %in.addr, align 8
  call void @bskip(ptr noundef %104, i32 noundef 2)
  br label %if.end185

if.end185:                                        ; preds = %if.then184, %if.end181
  ret void
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #2

declare i32 @inflateInit2_(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @zpull(ptr noundef %strm, ptr noundef %in) #0 {
entry:
  %strm.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  store ptr %in, ptr %in.addr, align 8
  %left = getelementptr inbounds %struct.bin, ptr %in, i64 0, i32 2
  %0 = load i32, ptr %left, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %in.addr, align 8
  %call = call i32 @bload(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %in.addr, align 8
  %left1 = getelementptr inbounds %struct.bin, ptr %2, i64 0, i32 2
  %3 = load i32, ptr %left1, align 4
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr %in.addr, align 8
  %5 = load ptr, ptr %4, align 8
  %call4 = call i32 @bail(ptr noundef nonnull @.str.9, ptr noundef %5)
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %6 = load ptr, ptr %in.addr, align 8
  %left6 = getelementptr inbounds %struct.bin, ptr %6, i64 0, i32 2
  %7 = load i32, ptr %left6, align 4
  %8 = load ptr, ptr %strm.addr, align 8
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %8, i64 0, i32 1
  store i32 %7, ptr %avail_in, align 8
  %next = getelementptr inbounds %struct.bin, ptr %6, i64 0, i32 3
  %9 = load ptr, ptr %next, align 8
  store ptr %9, ptr %8, align 8
  ret void
}

declare i32 @inflate(ptr noundef, i32 noundef) #1

declare i32 @putc(i32 noundef, ptr noundef) #1

declare i64 @crc32_combine(i64 noundef, i64 noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i64 @bget4(ptr noundef %in) #0 {
entry:
  %in.addr = alloca ptr, align 8
  %val = alloca i64, align 8
  store ptr %in, ptr %in.addr, align 8
  %left = getelementptr inbounds %struct.bin, ptr %in, i64 0, i32 2
  %0 = load i32, ptr %left, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cond.false, label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load ptr, ptr %in.addr, align 8
  %call = call i32 @bload(ptr noundef %1)
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %2 = load ptr, ptr %in.addr, align 8
  %left1 = getelementptr inbounds %struct.bin, ptr %2, i64 0, i32 2
  %3 = load i32, ptr %left1, align 4
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %cond.false5, label %cond.true3

cond.true3:                                       ; preds = %cond.end
  %4 = load ptr, ptr %in.addr, align 8
  %left4 = getelementptr inbounds %struct.bin, ptr %4, i64 0, i32 2
  %5 = load i32, ptr %left4, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %left4, align 4
  %next = getelementptr inbounds %struct.bin, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %next, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %incdec.ptr, ptr %next, align 8
  %7 = load i8, ptr %6, align 1
  %conv9 = zext i8 %7 to i64
  store i64 %conv9, ptr %val, align 8
  %8 = load ptr, ptr %in.addr, align 8
  %left10 = getelementptr inbounds %struct.bin, ptr %8, i64 0, i32 2
  %9 = load i32, ptr %left10, align 4
  %tobool11.not = icmp eq i32 %9, 0
  br i1 %tobool11.not, label %cond.false13, label %cond.end15

cond.false5:                                      ; preds = %cond.end
  %10 = load ptr, ptr %in.addr, align 8
  %11 = load ptr, ptr %10, align 8
  %12 = load ptr, ptr @__stderrp, align 8
  %call.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef %11) #5
  call void @exit(i32 noundef 1) #7
  unreachable

cond.false13:                                     ; preds = %cond.true3
  %13 = load ptr, ptr %in.addr, align 8
  %call14 = call i32 @bload(ptr noundef %13)
  br label %cond.end15

cond.end15:                                       ; preds = %cond.true3, %cond.false13
  %14 = load ptr, ptr %in.addr, align 8
  %left17 = getelementptr inbounds %struct.bin, ptr %14, i64 0, i32 2
  %15 = load i32, ptr %left17, align 4
  %tobool18.not = icmp eq i32 %15, 0
  br i1 %tobool18.not, label %cond.false25, label %cond.true19

cond.true19:                                      ; preds = %cond.end15
  %16 = load ptr, ptr %in.addr, align 8
  %left20 = getelementptr inbounds %struct.bin, ptr %16, i64 0, i32 2
  %17 = load i32, ptr %left20, align 4
  %dec21 = add i32 %17, -1
  store i32 %dec21, ptr %left20, align 4
  %next22 = getelementptr inbounds %struct.bin, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %next22, align 8
  %incdec.ptr23 = getelementptr inbounds i8, ptr %18, i64 1
  store ptr %incdec.ptr23, ptr %next22, align 8
  %19 = load i8, ptr %18, align 1
  %conv30 = zext i8 %19 to i64
  %shl = shl nuw nsw i64 %conv30, 8
  %20 = load i64, ptr %val, align 8
  %add = add i64 %20, %shl
  store i64 %add, ptr %val, align 8
  %21 = load ptr, ptr %in.addr, align 8
  %left31 = getelementptr inbounds %struct.bin, ptr %21, i64 0, i32 2
  %22 = load i32, ptr %left31, align 4
  %tobool32.not = icmp eq i32 %22, 0
  br i1 %tobool32.not, label %cond.false34, label %cond.end36

cond.false25:                                     ; preds = %cond.end15
  %23 = load ptr, ptr %in.addr, align 8
  %24 = load ptr, ptr %23, align 8
  %25 = load ptr, ptr @__stderrp, align 8
  %call.i3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef %24) #5
  call void @exit(i32 noundef 1) #7
  unreachable

cond.false34:                                     ; preds = %cond.true19
  %26 = load ptr, ptr %in.addr, align 8
  %call35 = call i32 @bload(ptr noundef %26)
  br label %cond.end36

cond.end36:                                       ; preds = %cond.true19, %cond.false34
  %27 = load ptr, ptr %in.addr, align 8
  %left38 = getelementptr inbounds %struct.bin, ptr %27, i64 0, i32 2
  %28 = load i32, ptr %left38, align 4
  %tobool39.not = icmp eq i32 %28, 0
  br i1 %tobool39.not, label %cond.false46, label %cond.true40

cond.true40:                                      ; preds = %cond.end36
  %29 = load ptr, ptr %in.addr, align 8
  %left41 = getelementptr inbounds %struct.bin, ptr %29, i64 0, i32 2
  %30 = load i32, ptr %left41, align 4
  %dec42 = add i32 %30, -1
  store i32 %dec42, ptr %left41, align 4
  %next43 = getelementptr inbounds %struct.bin, ptr %29, i64 0, i32 3
  %31 = load ptr, ptr %next43, align 8
  %incdec.ptr44 = getelementptr inbounds i8, ptr %31, i64 1
  store ptr %incdec.ptr44, ptr %next43, align 8
  %32 = load i8, ptr %31, align 1
  %conv51 = zext i8 %32 to i64
  %shl52 = shl nuw nsw i64 %conv51, 16
  %33 = load i64, ptr %val, align 8
  %add53 = add i64 %33, %shl52
  store i64 %add53, ptr %val, align 8
  %34 = load ptr, ptr %in.addr, align 8
  %left54 = getelementptr inbounds %struct.bin, ptr %34, i64 0, i32 2
  %35 = load i32, ptr %left54, align 4
  %tobool55.not = icmp eq i32 %35, 0
  br i1 %tobool55.not, label %cond.false57, label %cond.end59

cond.false46:                                     ; preds = %cond.end36
  %36 = load ptr, ptr %in.addr, align 8
  %37 = load ptr, ptr %36, align 8
  %38 = load ptr, ptr @__stderrp, align 8
  %call.i6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef %37) #5
  call void @exit(i32 noundef 1) #7
  unreachable

cond.false57:                                     ; preds = %cond.true40
  %39 = load ptr, ptr %in.addr, align 8
  %call58 = call i32 @bload(ptr noundef %39)
  br label %cond.end59

cond.end59:                                       ; preds = %cond.true40, %cond.false57
  %40 = load ptr, ptr %in.addr, align 8
  %left61 = getelementptr inbounds %struct.bin, ptr %40, i64 0, i32 2
  %41 = load i32, ptr %left61, align 4
  %tobool62.not = icmp eq i32 %41, 0
  br i1 %tobool62.not, label %cond.false69, label %cond.true63

cond.true63:                                      ; preds = %cond.end59
  %42 = load ptr, ptr %in.addr, align 8
  %left64 = getelementptr inbounds %struct.bin, ptr %42, i64 0, i32 2
  %43 = load i32, ptr %left64, align 4
  %dec65 = add i32 %43, -1
  store i32 %dec65, ptr %left64, align 4
  %next66 = getelementptr inbounds %struct.bin, ptr %42, i64 0, i32 3
  %44 = load ptr, ptr %next66, align 8
  %incdec.ptr67 = getelementptr inbounds i8, ptr %44, i64 1
  store ptr %incdec.ptr67, ptr %next66, align 8
  %45 = load i8, ptr %44, align 1
  %conv74 = zext i8 %45 to i64
  %shl75 = shl nuw nsw i64 %conv74, 24
  %46 = load i64, ptr %val, align 8
  %add76 = add i64 %46, %shl75
  store i64 %add76, ptr %val, align 8
  ret i64 %add76

cond.false69:                                     ; preds = %cond.end59
  %47 = load ptr, ptr %in.addr, align 8
  %48 = load ptr, ptr %47, align 8
  %49 = load ptr, ptr @__stderrp, align 8
  %call.i9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef %48) #5
  call void @exit(i32 noundef 1) #7
  unreachable
}

declare i32 @inflateEnd(ptr noundef) #1

declare void @free(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @bclose(ptr noundef %in) #0 {
entry:
  %in.addr = alloca ptr, align 8
  store ptr %in, ptr %in.addr, align 8
  %cmp.not = icmp eq ptr %in, null
  br i1 %cmp.not, label %if.end8, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %in.addr, align 8
  %fd = getelementptr inbounds %struct.bin, ptr %0, i64 0, i32 1
  %1 = load i32, ptr %fd, align 8
  %cmp1.not = icmp eq i32 %1, -1
  br i1 %cmp1.not, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %2 = load ptr, ptr %in.addr, align 8
  %fd3 = getelementptr inbounds %struct.bin, ptr %2, i64 0, i32 1
  %3 = load i32, ptr %fd3, align 8
  %call = call i32 @"\01_close"(i32 noundef %3) #5
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %4 = load ptr, ptr %in.addr, align 8
  %buf = getelementptr inbounds %struct.bin, ptr %4, i64 0, i32 4
  %5 = load ptr, ptr %buf, align 8
  %cmp4.not = icmp eq ptr %5, null
  br i1 %cmp4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %in.addr, align 8
  %buf6 = getelementptr inbounds %struct.bin, ptr %6, i64 0, i32 4
  %7 = load ptr, ptr %buf6, align 8
  call void @free(ptr noundef %7) #5
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %8 = load ptr, ptr %in.addr, align 8
  call void @free(ptr noundef %8) #5
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %entry
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @put4(i64 noundef %val, ptr noundef %out) #0 {
entry:
  %val.addr = alloca i64, align 8
  %out.addr = alloca ptr, align 8
  store i64 %val, ptr %val.addr, align 8
  store ptr %out, ptr %out.addr, align 8
  %0 = trunc i64 %val to i32
  %conv = and i32 %0, 255
  %call = call i32 @putc(i32 noundef %conv, ptr noundef %out) #5
  %1 = trunc i64 %val to i32
  %2 = lshr i32 %1, 8
  %conv2 = and i32 %2, 255
  %3 = load ptr, ptr %out.addr, align 8
  %call3 = call i32 @putc(i32 noundef %conv2, ptr noundef %3) #5
  %4 = load i64, ptr %val.addr, align 8
  %5 = trunc i64 %4 to i32
  %6 = lshr i32 %5, 16
  %conv6 = and i32 %6, 255
  %call7 = call i32 @putc(i32 noundef %conv6, ptr noundef %3) #5
  %7 = trunc i64 %4 to i32
  %8 = lshr i32 %7, 24
  %9 = load ptr, ptr %out.addr, align 8
  %call11 = call i32 @putc(i32 noundef %8, ptr noundef %9) #5
  ret void
}

declare i32 @"\01_open"(ptr noundef, i32 noundef, ...) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #3

; Function Attrs: nounwind ssp uwtable
define internal i32 @bload(ptr noundef %in) #0 {
entry:
  %retval = alloca i32, align 4
  %in.addr = alloca ptr, align 8
  %len = alloca i64, align 8
  store ptr %in, ptr %in.addr, align 8
  %cmp = icmp eq ptr %in, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %in.addr, align 8
  %left = getelementptr inbounds %struct.bin, ptr %0, i64 0, i32 2
  %1 = load i32, ptr %left, align 4
  %cmp1.not = icmp eq i32 %1, 0
  br i1 %cmp1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %in.addr, align 8
  %buf = getelementptr inbounds %struct.bin, ptr %2, i64 0, i32 4
  %3 = load ptr, ptr %buf, align 8
  %next = getelementptr inbounds %struct.bin, ptr %2, i64 0, i32 3
  store ptr %3, ptr %next, align 8
  br label %do.body

do.body:                                          ; preds = %land.rhs, %if.end3
  %4 = load ptr, ptr %in.addr, align 8
  %fd = getelementptr inbounds %struct.bin, ptr %4, i64 0, i32 1
  %5 = load i32, ptr %fd, align 8
  %buf4 = getelementptr inbounds %struct.bin, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %buf4, align 8
  %left5 = getelementptr inbounds %struct.bin, ptr %4, i64 0, i32 2
  %7 = load i32, ptr %left5, align 4
  %idx.ext = zext i32 %7 to i64
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 %idx.ext
  %8 = load ptr, ptr %in.addr, align 8
  %left6 = getelementptr inbounds %struct.bin, ptr %8, i64 0, i32 2
  %9 = load i32, ptr %left6, align 4
  %sub = sub i32 32768, %9
  %conv = zext i32 %sub to i64
  %call = call i64 @"\01_read"(i32 noundef %5, ptr noundef %add.ptr, i64 noundef %conv) #5
  store i64 %call, ptr %len, align 8
  %cmp7 = icmp slt i64 %call, 0
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %do.body
  store i32 -1, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %do.body
  %10 = load i64, ptr %len, align 8
  %conv11 = trunc i64 %10 to i32
  %11 = load ptr, ptr %in.addr, align 8
  %left12 = getelementptr inbounds %struct.bin, ptr %11, i64 0, i32 2
  %12 = load i32, ptr %left12, align 4
  %add = add i32 %12, %conv11
  store i32 %add, ptr %left12, align 4
  %13 = load i64, ptr %len, align 8
  %cmp13.not = icmp eq i64 %13, 0
  br i1 %cmp13.not, label %do.end, label %land.rhs

land.rhs:                                         ; preds = %if.end10
  %14 = load ptr, ptr %in.addr, align 8
  %left15 = getelementptr inbounds %struct.bin, ptr %14, i64 0, i32 2
  %15 = load i32, ptr %left15, align 4
  %cmp16 = icmp ult i32 %15, 32768
  br i1 %cmp16, label %do.body, label %do.end, !llvm.loop !10

do.end:                                           ; preds = %if.end10, %land.rhs
  %16 = load i64, ptr %len, align 8
  %cmp18 = icmp eq i64 %16, 0
  %cond = zext i1 %cmp18 to i32
  store i32 %cond, ptr %retval, align 4
  br label %return

return:                                           ; preds = %do.end, %if.then9, %if.then2, %if.then
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
}

; Function Attrs: nounwind ssp uwtable
define internal void @bskip(ptr noundef %in, i32 noundef %skip) #0 {
entry:
  %in.addr = alloca ptr, align 8
  %skip.addr = alloca i32, align 4
  %left10 = alloca i32, align 4
  store ptr %in, ptr %in.addr, align 8
  store i32 %skip, ptr %skip.addr, align 4
  %cmp = icmp eq ptr %in, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %skip.addr, align 4
  %1 = load ptr, ptr %in.addr, align 8
  %left = getelementptr inbounds %struct.bin, ptr %1, i64 0, i32 2
  %2 = load i32, ptr %left, align 4
  %cmp1.not = icmp ugt i32 %0, %2
  br i1 %cmp1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %3 = load i32, ptr %skip.addr, align 4
  %4 = load ptr, ptr %in.addr, align 8
  %left3 = getelementptr inbounds %struct.bin, ptr %4, i64 0, i32 2
  %5 = load i32, ptr %left3, align 4
  %sub = sub i32 %5, %3
  store i32 %sub, ptr %left3, align 4
  %next = getelementptr inbounds %struct.bin, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %next, align 8
  %idx.ext = zext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 %idx.ext
  store ptr %add.ptr, ptr %next, align 8
  br label %return

if.end4:                                          ; preds = %if.end
  %7 = load ptr, ptr %in.addr, align 8
  %left5 = getelementptr inbounds %struct.bin, ptr %7, i64 0, i32 2
  %8 = load i32, ptr %left5, align 4
  %9 = load i32, ptr %skip.addr, align 4
  %sub6 = sub i32 %9, %8
  store i32 %sub6, ptr %skip.addr, align 4
  %left7 = getelementptr inbounds %struct.bin, ptr %7, i64 0, i32 2
  store i32 0, ptr %left7, align 4
  %cmp8 = icmp ugt i32 %sub6, 32768
  br i1 %cmp8, label %if.then9, label %if.end26

if.then9:                                         ; preds = %if.end4
  %10 = load i32, ptr %skip.addr, align 4
  %and = and i32 %10, 32767
  store i32 %and, ptr %left10, align 4
  %cmp11 = icmp eq i32 %and, 0
  br i1 %cmp11, label %if.then12, label %if.end21

if.then12:                                        ; preds = %if.then9
  %11 = load ptr, ptr %in.addr, align 8
  %fd = getelementptr inbounds %struct.bin, ptr %11, i64 0, i32 1
  %12 = load i32, ptr %fd, align 8
  %13 = load i32, ptr %skip.addr, align 4
  %sub13 = add i32 %13, -1
  %conv = zext i32 %sub13 to i64
  %call = call i64 @lseek(i32 noundef %12, i64 noundef %conv, i32 noundef 1) #5
  %14 = load ptr, ptr %in.addr, align 8
  %fd14 = getelementptr inbounds %struct.bin, ptr %14, i64 0, i32 1
  %15 = load i32, ptr %fd14, align 8
  %buf = getelementptr inbounds %struct.bin, ptr %14, i64 0, i32 4
  %16 = load ptr, ptr %buf, align 8
  %call15 = call i64 @"\01_read"(i32 noundef %15, ptr noundef %16, i64 noundef 1) #5
  %cmp16.not = icmp eq i64 %call15, 1
  br i1 %cmp16.not, label %return, label %if.then18

if.then18:                                        ; preds = %if.then12
  %17 = load ptr, ptr %in.addr, align 8
  %18 = load ptr, ptr %17, align 8
  %call19 = call i32 @bail(ptr noundef nonnull @.str.9, ptr noundef %18)
  br label %return

if.end21:                                         ; preds = %if.then9
  %19 = load ptr, ptr %in.addr, align 8
  %fd22 = getelementptr inbounds %struct.bin, ptr %19, i64 0, i32 1
  %20 = load i32, ptr %fd22, align 8
  %21 = load i32, ptr %skip.addr, align 4
  %22 = load i32, ptr %left10, align 4
  %sub23 = sub i32 %21, %22
  %conv24 = zext i32 %sub23 to i64
  %call25 = call i64 @lseek(i32 noundef %20, i64 noundef %conv24, i32 noundef 1) #5
  store i32 %22, ptr %skip.addr, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.end21, %if.end4
  %23 = load ptr, ptr %in.addr, align 8
  %call27 = call i32 @bload(ptr noundef %23)
  %24 = load i32, ptr %skip.addr, align 4
  %left28 = getelementptr inbounds %struct.bin, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %left28, align 4
  %cmp29 = icmp ugt i32 %24, %25
  br i1 %cmp29, label %if.then31, label %if.end34

if.then31:                                        ; preds = %if.end26
  %26 = load ptr, ptr %in.addr, align 8
  %27 = load ptr, ptr %26, align 8
  %call33 = call i32 @bail(ptr noundef nonnull @.str.9, ptr noundef %27)
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end26
  %28 = load i32, ptr %skip.addr, align 4
  %29 = load ptr, ptr %in.addr, align 8
  %left35 = getelementptr inbounds %struct.bin, ptr %29, i64 0, i32 2
  %30 = load i32, ptr %left35, align 4
  %sub36 = sub i32 %30, %28
  store i32 %sub36, ptr %left35, align 4
  %next37 = getelementptr inbounds %struct.bin, ptr %29, i64 0, i32 3
  %31 = load ptr, ptr %next37, align 8
  %idx.ext38 = zext i32 %28 to i64
  %add.ptr39 = getelementptr inbounds i8, ptr %31, i64 %idx.ext38
  store ptr %add.ptr39, ptr %next37, align 8
  br label %return

return:                                           ; preds = %if.then12, %if.then18, %entry, %if.end34, %if.then2
  ret void
}

declare i64 @"\01_read"(i32 noundef, ptr noundef, i64 noundef) #1

declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #1

declare i32 @"\01_close"(i32 noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }
attributes #7 = { noreturn nounwind }

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
