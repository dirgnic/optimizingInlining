; ModuleID = './source_snapshot/public_repos/zlib/examples/gzjoin.c'
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
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %crc = alloca i64, align 8
  %tot = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr %argc.addr, align 4
  %1 = load ptr, ptr %argv.addr, align 8
  %incdec.ptr = getelementptr inbounds ptr, ptr %1, i32 1
  store ptr %incdec.ptr, ptr %argv.addr, align 8
  %2 = load i32, ptr %argc.addr, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr @__stderrp, align 8
  %call = call i32 @"\01_fputs"(ptr noundef @.str, ptr noundef %3)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr @__stdoutp, align 8
  call void @pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_0(ptr noundef %crc, ptr noundef %tot, ptr noundef %4)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %5 = load i32, ptr %argc.addr, align 4
  %dec1 = add nsw i32 %5, -1
  store i32 %dec1, ptr %argc.addr, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %argv.addr, align 8
  %incdec.ptr2 = getelementptr inbounds ptr, ptr %6, i32 1
  store ptr %incdec.ptr2, ptr %argv.addr, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load i32, ptr %argc.addr, align 4
  %9 = load ptr, ptr @__stdoutp, align 8
  call void @gzcopy(ptr noundef %7, i32 noundef %8, ptr noundef %crc, ptr noundef %tot, ptr noundef %9)
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

declare i32 @"\01_fputs"(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @gzinit(ptr noundef %crc, ptr noundef %tot, ptr noundef %out) #0 {
entry:
  %crc.addr = alloca ptr, align 8
  %tot.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  store ptr %crc, ptr %crc.addr, align 8
  store ptr %tot, ptr %tot.addr, align 8
  store ptr %out, ptr %out.addr, align 8
  %0 = load ptr, ptr %out.addr, align 8
  %call = call i64 @"\01_fwrite"(ptr noundef @.str.1, i64 noundef 1, i64 noundef 10, ptr noundef %0)
  %call1 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0)
  %1 = load ptr, ptr %crc.addr, align 8
  store i64 %call1, ptr %1, align 8
  %2 = load ptr, ptr %tot.addr, align 8
  store i64 0, ptr %2, align 8
  ret void
}

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
  %0 = load ptr, ptr %name.addr, align 8
  %call = call ptr @bopen(ptr noundef %0)
  store ptr %call, ptr %in, align 8
  %1 = load ptr, ptr %in, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %name.addr, align 8
  %call1 = call i32 @pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_1(ptr noundef @.str.2, ptr noundef %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %in, align 8
  call void @gzhead(ptr noundef %3)
  %call2 = call ptr @malloc(i64 noundef 32768) #4
  store ptr %call2, ptr %junk, align 8
  %zalloc = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 8
  store ptr null, ptr %zalloc, align 8
  %zfree = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 9
  store ptr null, ptr %zfree, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 10
  store ptr null, ptr %opaque, align 8
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 1
  store i32 0, ptr %avail_in, align 8
  %next_in = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 0
  store ptr null, ptr %next_in, align 8
  %call3 = call i32 @inflateInit2_(ptr noundef %strm, i32 noundef -15, ptr noundef @.str.3, i32 noundef 112)
  store i32 %call3, ptr %ret, align 4
  %4 = load ptr, ptr %junk, align 8
  %cmp4 = icmp eq ptr %4, null
  br i1 %cmp4, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i32, ptr %ret, align 4
  %cmp5 = icmp ne i32 %5, 0
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %lor.lhs.false, %if.end
  %call7 = call i32 @pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_2(ptr noundef @.str.4, ptr noundef @.str.5)
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %lor.lhs.false
  store i64 0, ptr %len, align 8
  %6 = load ptr, ptr %in, align 8
  call void @zpull(ptr noundef %strm, ptr noundef %6)
  %7 = load ptr, ptr %in, align 8
  %next = getelementptr inbounds %struct.bin, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %next, align 8
  store ptr %8, ptr %start, align 8
  %9 = load ptr, ptr %start, align 8
  %arrayidx = getelementptr inbounds i8, ptr %9, i64 0
  %10 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %10 to i32
  %and = and i32 %conv, 1
  store i32 %and, ptr %last, align 4
  %11 = load i32, ptr %last, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %if.end8
  %12 = load i32, ptr %clr.addr, align 4
  %tobool9 = icmp ne i32 %12, 0
  br i1 %tobool9, label %if.then10, label %if.end15

if.then10:                                        ; preds = %land.lhs.true
  %13 = load ptr, ptr %start, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %13, i64 0
  %14 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %14 to i32
  %and13 = and i32 %conv12, -2
  %conv14 = trunc i32 %and13 to i8
  store i8 %conv14, ptr %arrayidx11, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %land.lhs.true, %if.end8
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 4
  store i32 0, ptr %avail_out, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end98, %if.end15
  %avail_in16 = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 1
  %15 = load i32, ptr %avail_in16, align 8
  %cmp17 = icmp eq i32 %15, 0
  br i1 %cmp17, label %land.lhs.true19, label %if.end26

land.lhs.true19:                                  ; preds = %for.cond
  %avail_out20 = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 4
  %16 = load i32, ptr %avail_out20, align 8
  %cmp21 = icmp ne i32 %16, 0
  br i1 %cmp21, label %if.then23, label %if.end26

if.then23:                                        ; preds = %land.lhs.true19
  %17 = load ptr, ptr %start, align 8
  %next_in24 = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 0
  %18 = load ptr, ptr %next_in24, align 8
  %19 = load ptr, ptr %start, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %18 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %19 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %20 = load ptr, ptr %out.addr, align 8
  %call25 = call i64 @"\01_fwrite"(ptr noundef %17, i64 noundef 1, i64 noundef %sub.ptr.sub, ptr noundef %20)
  %21 = load ptr, ptr %in, align 8
  %buf = getelementptr inbounds %struct.bin, ptr %21, i32 0, i32 4
  %22 = load ptr, ptr %buf, align 8
  store ptr %22, ptr %start, align 8
  %23 = load ptr, ptr %in, align 8
  %left = getelementptr inbounds %struct.bin, ptr %23, i32 0, i32 2
  store i32 0, ptr %left, align 4
  %24 = load ptr, ptr %in, align 8
  call void @zpull(ptr noundef %strm, ptr noundef %24)
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %land.lhs.true19, %for.cond
  %avail_out27 = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 4
  store i32 32768, ptr %avail_out27, align 8
  %25 = load ptr, ptr %junk, align 8
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 3
  store ptr %25, ptr %next_out, align 8
  %call28 = call i32 @inflate(ptr noundef %strm, i32 noundef 5)
  store i32 %call28, ptr %ret, align 4
  %26 = load i32, ptr %ret, align 4
  switch i32 %26, label %sw.epilog [
    i32 -4, label %sw.bb
    i32 -3, label %sw.bb30
  ]

sw.bb:                                            ; preds = %if.end26
  %call29 = call i32 @pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_3(ptr noundef @.str.4, ptr noundef @.str.5)
  br label %sw.bb30

sw.bb30:                                          ; preds = %if.end26, %sw.bb
  %27 = load ptr, ptr %in, align 8
  %name31 = getelementptr inbounds %struct.bin, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %name31, align 8
  %call32 = call i32 @pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_4(ptr noundef @.str.6, ptr noundef %28)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb30, %if.end26
  %avail_out33 = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 4
  %29 = load i32, ptr %avail_out33, align 8
  %sub = sub i32 32768, %29
  %conv34 = zext i32 %sub to i64
  %30 = load i64, ptr %len, align 8
  %add = add nsw i64 %30, %conv34
  store i64 %add, ptr %len, align 8
  %data_type = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 11
  %31 = load i32, ptr %data_type, align 8
  %and35 = and i32 %31, 128
  %tobool36 = icmp ne i32 %and35, 0
  br i1 %tobool36, label %if.then37, label %if.end98

if.then37:                                        ; preds = %sw.epilog
  %32 = load i32, ptr %last, align 4
  %tobool38 = icmp ne i32 %32, 0
  br i1 %tobool38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.then37
  br label %for.end

if.end40:                                         ; preds = %if.then37
  %data_type41 = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 11
  %33 = load i32, ptr %data_type41, align 8
  %and42 = and i32 %33, 7
  store i32 %and42, ptr %pos, align 4
  %34 = load i32, ptr %pos, align 4
  %cmp43 = icmp ne i32 %34, 0
  br i1 %cmp43, label %if.then45, label %if.else

if.then45:                                        ; preds = %if.end40
  %35 = load i32, ptr %pos, align 4
  %shr = ashr i32 256, %35
  store i32 %shr, ptr %pos, align 4
  %next_in46 = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 0
  %36 = load ptr, ptr %next_in46, align 8
  %arrayidx47 = getelementptr inbounds i8, ptr %36, i64 -1
  %37 = load i8, ptr %arrayidx47, align 1
  %conv48 = zext i8 %37 to i32
  %38 = load i32, ptr %pos, align 4
  %and49 = and i32 %conv48, %38
  store i32 %and49, ptr %last, align 4
  %39 = load i32, ptr %last, align 4
  %tobool50 = icmp ne i32 %39, 0
  br i1 %tobool50, label %land.lhs.true51, label %if.end65

land.lhs.true51:                                  ; preds = %if.then45
  %40 = load i32, ptr %clr.addr, align 4
  %tobool52 = icmp ne i32 %40, 0
  br i1 %tobool52, label %if.then53, label %if.end65

if.then53:                                        ; preds = %land.lhs.true51
  %41 = load i32, ptr %pos, align 4
  %neg = xor i32 %41, -1
  %42 = load ptr, ptr %in, align 8
  %buf54 = getelementptr inbounds %struct.bin, ptr %42, i32 0, i32 4
  %43 = load ptr, ptr %buf54, align 8
  %next_in55 = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 0
  %44 = load ptr, ptr %next_in55, align 8
  %45 = load ptr, ptr %in, align 8
  %buf56 = getelementptr inbounds %struct.bin, ptr %45, i32 0, i32 4
  %46 = load ptr, ptr %buf56, align 8
  %sub.ptr.lhs.cast57 = ptrtoint ptr %44 to i64
  %sub.ptr.rhs.cast58 = ptrtoint ptr %46 to i64
  %sub.ptr.sub59 = sub i64 %sub.ptr.lhs.cast57, %sub.ptr.rhs.cast58
  %sub60 = sub nsw i64 %sub.ptr.sub59, 1
  %arrayidx61 = getelementptr inbounds i8, ptr %43, i64 %sub60
  %47 = load i8, ptr %arrayidx61, align 1
  %conv62 = zext i8 %47 to i32
  %and63 = and i32 %conv62, %neg
  %conv64 = trunc i32 %and63 to i8
  store i8 %conv64, ptr %arrayidx61, align 1
  br label %if.end65

if.end65:                                         ; preds = %if.then53, %land.lhs.true51, %if.then45
  br label %if.end97

if.else:                                          ; preds = %if.end40
  %avail_in66 = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 1
  %48 = load i32, ptr %avail_in66, align 8
  %cmp67 = icmp eq i32 %48, 0
  br i1 %cmp67, label %if.then69, label %if.end77

if.then69:                                        ; preds = %if.else
  %49 = load ptr, ptr %start, align 8
  %next_in70 = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 0
  %50 = load ptr, ptr %next_in70, align 8
  %51 = load ptr, ptr %start, align 8
  %sub.ptr.lhs.cast71 = ptrtoint ptr %50 to i64
  %sub.ptr.rhs.cast72 = ptrtoint ptr %51 to i64
  %sub.ptr.sub73 = sub i64 %sub.ptr.lhs.cast71, %sub.ptr.rhs.cast72
  %52 = load ptr, ptr %out.addr, align 8
  %call74 = call i64 @"\01_fwrite"(ptr noundef %49, i64 noundef 1, i64 noundef %sub.ptr.sub73, ptr noundef %52)
  %53 = load ptr, ptr %in, align 8
  %buf75 = getelementptr inbounds %struct.bin, ptr %53, i32 0, i32 4
  %54 = load ptr, ptr %buf75, align 8
  store ptr %54, ptr %start, align 8
  %55 = load ptr, ptr %in, align 8
  %left76 = getelementptr inbounds %struct.bin, ptr %55, i32 0, i32 2
  store i32 0, ptr %left76, align 4
  %56 = load ptr, ptr %in, align 8
  call void @zpull(ptr noundef %strm, ptr noundef %56)
  br label %if.end77

if.end77:                                         ; preds = %if.then69, %if.else
  %next_in78 = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 0
  %57 = load ptr, ptr %next_in78, align 8
  %arrayidx79 = getelementptr inbounds i8, ptr %57, i64 0
  %58 = load i8, ptr %arrayidx79, align 1
  %conv80 = zext i8 %58 to i32
  %and81 = and i32 %conv80, 1
  store i32 %and81, ptr %last, align 4
  %59 = load i32, ptr %last, align 4
  %tobool82 = icmp ne i32 %59, 0
  br i1 %tobool82, label %land.lhs.true83, label %if.end96

land.lhs.true83:                                  ; preds = %if.end77
  %60 = load i32, ptr %clr.addr, align 4
  %tobool84 = icmp ne i32 %60, 0
  br i1 %tobool84, label %if.then85, label %if.end96

if.then85:                                        ; preds = %land.lhs.true83
  %61 = load ptr, ptr %in, align 8
  %buf86 = getelementptr inbounds %struct.bin, ptr %61, i32 0, i32 4
  %62 = load ptr, ptr %buf86, align 8
  %next_in87 = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 0
  %63 = load ptr, ptr %next_in87, align 8
  %64 = load ptr, ptr %in, align 8
  %buf88 = getelementptr inbounds %struct.bin, ptr %64, i32 0, i32 4
  %65 = load ptr, ptr %buf88, align 8
  %sub.ptr.lhs.cast89 = ptrtoint ptr %63 to i64
  %sub.ptr.rhs.cast90 = ptrtoint ptr %65 to i64
  %sub.ptr.sub91 = sub i64 %sub.ptr.lhs.cast89, %sub.ptr.rhs.cast90
  %arrayidx92 = getelementptr inbounds i8, ptr %62, i64 %sub.ptr.sub91
  %66 = load i8, ptr %arrayidx92, align 1
  %conv93 = zext i8 %66 to i32
  %and94 = and i32 %conv93, -2
  %conv95 = trunc i32 %and94 to i8
  store i8 %conv95, ptr %arrayidx92, align 1
  br label %if.end96

if.end96:                                         ; preds = %if.then85, %land.lhs.true83, %if.end77
  br label %if.end97

if.end97:                                         ; preds = %if.end96, %if.end65
  br label %if.end98

if.end98:                                         ; preds = %if.end97, %sw.epilog
  br label %for.cond

for.end:                                          ; preds = %if.then39
  %avail_in99 = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 1
  %67 = load i32, ptr %avail_in99, align 8
  %68 = load ptr, ptr %in, align 8
  %left100 = getelementptr inbounds %struct.bin, ptr %68, i32 0, i32 2
  store i32 %67, ptr %left100, align 4
  %69 = load ptr, ptr %in, align 8
  %buf101 = getelementptr inbounds %struct.bin, ptr %69, i32 0, i32 4
  %70 = load ptr, ptr %buf101, align 8
  %next_in102 = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 0
  %71 = load ptr, ptr %next_in102, align 8
  %72 = load ptr, ptr %in, align 8
  %buf103 = getelementptr inbounds %struct.bin, ptr %72, i32 0, i32 4
  %73 = load ptr, ptr %buf103, align 8
  %sub.ptr.lhs.cast104 = ptrtoint ptr %71 to i64
  %sub.ptr.rhs.cast105 = ptrtoint ptr %73 to i64
  %sub.ptr.sub106 = sub i64 %sub.ptr.lhs.cast104, %sub.ptr.rhs.cast105
  %add.ptr = getelementptr inbounds i8, ptr %70, i64 %sub.ptr.sub106
  %74 = load ptr, ptr %in, align 8
  %next107 = getelementptr inbounds %struct.bin, ptr %74, i32 0, i32 3
  store ptr %add.ptr, ptr %next107, align 8
  %data_type108 = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 11
  %75 = load i32, ptr %data_type108, align 8
  %and109 = and i32 %75, 7
  store i32 %and109, ptr %pos, align 4
  %76 = load ptr, ptr %start, align 8
  %77 = load ptr, ptr %in, align 8
  %next110 = getelementptr inbounds %struct.bin, ptr %77, i32 0, i32 3
  %78 = load ptr, ptr %next110, align 8
  %79 = load ptr, ptr %start, align 8
  %sub.ptr.lhs.cast111 = ptrtoint ptr %78 to i64
  %sub.ptr.rhs.cast112 = ptrtoint ptr %79 to i64
  %sub.ptr.sub113 = sub i64 %sub.ptr.lhs.cast111, %sub.ptr.rhs.cast112
  %sub114 = sub nsw i64 %sub.ptr.sub113, 1
  %80 = load ptr, ptr %out.addr, align 8
  %call115 = call i64 @"\01_fwrite"(ptr noundef %76, i64 noundef 1, i64 noundef %sub114, ptr noundef %80)
  %81 = load ptr, ptr %in, align 8
  %next116 = getelementptr inbounds %struct.bin, ptr %81, i32 0, i32 3
  %82 = load ptr, ptr %next116, align 8
  %arrayidx117 = getelementptr inbounds i8, ptr %82, i64 -1
  %83 = load i8, ptr %arrayidx117, align 1
  %conv118 = zext i8 %83 to i32
  store i32 %conv118, ptr %last, align 4
  %84 = load i32, ptr %pos, align 4
  %cmp119 = icmp eq i32 %84, 0
  br i1 %cmp119, label %if.then123, label %lor.lhs.false121

lor.lhs.false121:                                 ; preds = %for.end
  %85 = load i32, ptr %clr.addr, align 4
  %tobool122 = icmp ne i32 %85, 0
  br i1 %tobool122, label %if.else125, label %if.then123

if.then123:                                       ; preds = %lor.lhs.false121, %for.end
  %86 = load i32, ptr %last, align 4
  %87 = load ptr, ptr %out.addr, align 8
  %call124 = call i32 @putc(i32 noundef %86, ptr noundef %87)
  br label %if.end151

if.else125:                                       ; preds = %lor.lhs.false121
  %88 = load i32, ptr %pos, align 4
  %shr126 = ashr i32 256, %88
  %sub127 = sub nsw i32 %shr126, 1
  %89 = load i32, ptr %last, align 4
  %and128 = and i32 %89, %sub127
  store i32 %and128, ptr %last, align 4
  %90 = load i32, ptr %pos, align 4
  %and129 = and i32 %90, 1
  %tobool130 = icmp ne i32 %and129, 0
  br i1 %tobool130, label %if.then131, label %if.else139

if.then131:                                       ; preds = %if.else125
  %91 = load i32, ptr %last, align 4
  %92 = load ptr, ptr %out.addr, align 8
  %call132 = call i32 @putc(i32 noundef %91, ptr noundef %92)
  %93 = load i32, ptr %pos, align 4
  %cmp133 = icmp eq i32 %93, 1
  br i1 %cmp133, label %if.then135, label %if.end137

if.then135:                                       ; preds = %if.then131
  %94 = load ptr, ptr %out.addr, align 8
  %call136 = call i32 @putc(i32 noundef 0, ptr noundef %94)
  br label %if.end137

if.end137:                                        ; preds = %if.then135, %if.then131
  %95 = load ptr, ptr %out.addr, align 8
  %call138 = call i64 @"\01_fwrite"(ptr noundef @.str.7, i64 noundef 1, i64 noundef 4, ptr noundef %95)
  br label %if.end150

if.else139:                                       ; preds = %if.else125
  %96 = load i32, ptr %pos, align 4
  switch i32 %96, label %sw.epilog149 [
    i32 6, label %sw.bb140
    i32 4, label %sw.bb142
    i32 2, label %sw.bb145
  ]

sw.bb140:                                         ; preds = %if.else139
  %97 = load i32, ptr %last, align 4
  %or = or i32 %97, 8
  %98 = load ptr, ptr %out.addr, align 8
  %call141 = call i32 @putc(i32 noundef %or, ptr noundef %98)
  store i32 0, ptr %last, align 4
  br label %sw.bb142

sw.bb142:                                         ; preds = %if.else139, %sw.bb140
  %99 = load i32, ptr %last, align 4
  %or143 = or i32 %99, 32
  %100 = load ptr, ptr %out.addr, align 8
  %call144 = call i32 @putc(i32 noundef %or143, ptr noundef %100)
  store i32 0, ptr %last, align 4
  br label %sw.bb145

sw.bb145:                                         ; preds = %if.else139, %sw.bb142
  %101 = load i32, ptr %last, align 4
  %or146 = or i32 %101, 128
  %102 = load ptr, ptr %out.addr, align 8
  %call147 = call i32 @putc(i32 noundef %or146, ptr noundef %102)
  %103 = load ptr, ptr %out.addr, align 8
  %call148 = call i32 @putc(i32 noundef 0, ptr noundef %103)
  br label %sw.epilog149

sw.epilog149:                                     ; preds = %sw.bb145, %if.else139
  br label %if.end150

if.end150:                                        ; preds = %sw.epilog149, %if.end137
  br label %if.end151

if.end151:                                        ; preds = %if.end150, %if.then123
  %104 = load ptr, ptr %crc.addr, align 8
  %105 = load i64, ptr %104, align 8
  %106 = load ptr, ptr %in, align 8
  %call152 = call i64 @bget4(ptr noundef %106)
  %107 = load i64, ptr %len, align 8
  %call153 = call i64 @crc32_combine(i64 noundef %105, i64 noundef %call152, i64 noundef %107)
  %108 = load ptr, ptr %crc.addr, align 8
  store i64 %call153, ptr %108, align 8
  %109 = load i64, ptr %len, align 8
  %110 = load ptr, ptr %tot.addr, align 8
  %111 = load i64, ptr %110, align 8
  %add154 = add i64 %111, %109
  store i64 %add154, ptr %110, align 8
  %call155 = call i32 @inflateEnd(ptr noundef %strm)
  %112 = load ptr, ptr %junk, align 8
  call void @free(ptr noundef %112)
  %113 = load ptr, ptr %in, align 8
  call void @bclose(ptr noundef %113)
  %114 = load i32, ptr %clr.addr, align 4
  %tobool156 = icmp ne i32 %114, 0
  br i1 %tobool156, label %if.end158, label %if.then157

if.then157:                                       ; preds = %if.end151
  %115 = load ptr, ptr %crc.addr, align 8
  %116 = load i64, ptr %115, align 8
  %117 = load ptr, ptr %out.addr, align 8
  call void @pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_5(i64 noundef %116, ptr noundef %117)
  %118 = load ptr, ptr %tot.addr, align 8
  %119 = load i64, ptr %118, align 8
  %120 = load ptr, ptr %out.addr, align 8
  call void @pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_6(i64 noundef %119, ptr noundef %120)
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
  %call = call ptr @malloc(i64 noundef 32) #4
  store ptr %call, ptr %in, align 8
  %0 = load ptr, ptr %in, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call ptr @malloc(i64 noundef 32768) #4
  %1 = load ptr, ptr %in, align 8
  %buf = getelementptr inbounds %struct.bin, ptr %1, i32 0, i32 4
  store ptr %call1, ptr %buf, align 8
  %2 = load ptr, ptr %name.addr, align 8
  %call2 = call i32 (ptr, i32, ...) @"\01_open"(ptr noundef %2, i32 noundef 0, i32 noundef 0)
  %3 = load ptr, ptr %in, align 8
  %fd = getelementptr inbounds %struct.bin, ptr %3, i32 0, i32 1
  store i32 %call2, ptr %fd, align 8
  %4 = load ptr, ptr %in, align 8
  %buf3 = getelementptr inbounds %struct.bin, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %buf3, align 8
  %cmp4 = icmp eq ptr %5, null
  br i1 %cmp4, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load ptr, ptr %in, align 8
  %fd5 = getelementptr inbounds %struct.bin, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %fd5, align 8
  %cmp6 = icmp eq i32 %7, -1
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false, %if.end
  %8 = load ptr, ptr %in, align 8
  call void @bclose(ptr noundef %8)
  store ptr null, ptr %retval, align 8
  br label %return

if.end8:                                          ; preds = %lor.lhs.false
  %9 = load ptr, ptr %in, align 8
  %left = getelementptr inbounds %struct.bin, ptr %9, i32 0, i32 2
  store i32 0, ptr %left, align 4
  %10 = load ptr, ptr %in, align 8
  %buf9 = getelementptr inbounds %struct.bin, ptr %10, i32 0, i32 4
  %11 = load ptr, ptr %buf9, align 8
  %12 = load ptr, ptr %in, align 8
  %next = getelementptr inbounds %struct.bin, ptr %12, i32 0, i32 3
  store ptr %11, ptr %next, align 8
  %13 = load ptr, ptr %name.addr, align 8
  %14 = load ptr, ptr %in, align 8
  %name10 = getelementptr inbounds %struct.bin, ptr %14, i32 0, i32 0
  store ptr %13, ptr %name10, align 8
  %15 = load ptr, ptr %in, align 8
  store ptr %15, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end8, %if.then7, %if.then
  %16 = load ptr, ptr %retval, align 8
  ret ptr %16
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @bail(ptr noundef %why1, ptr noundef %why2) #0 {
entry:
  %why1.addr = alloca ptr, align 8
  %why2.addr = alloca ptr, align 8
  store ptr %why1, ptr %why1.addr, align 8
  store ptr %why2, ptr %why2.addr, align 8
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr %why1.addr, align 8
  %2 = load ptr, ptr %why2.addr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.8, ptr noundef %1, ptr noundef %2)
  call void @exit(i32 noundef 1) #5
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define internal void @gzhead(ptr noundef %in) #0 {
entry:
  %in.addr = alloca ptr, align 8
  %flags = alloca i32, align 4
  %len = alloca i32, align 4
  store ptr %in, ptr %in.addr, align 8
  %0 = load ptr, ptr %in.addr, align 8
  %left = getelementptr inbounds %struct.bin, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %left, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load ptr, ptr %in.addr, align 8
  %call = call i32 @bload(ptr noundef %2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  %3 = load ptr, ptr %in.addr, align 8
  %left1 = getelementptr inbounds %struct.bin, ptr %3, i32 0, i32 2
  %4 = load i32, ptr %left1, align 4
  %tobool2 = icmp ne i32 %4, 0
  br i1 %tobool2, label %cond.true3, label %cond.false5

cond.true3:                                       ; preds = %cond.end
  %5 = load ptr, ptr %in.addr, align 8
  %left4 = getelementptr inbounds %struct.bin, ptr %5, i32 0, i32 2
  %6 = load i32, ptr %left4, align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr %left4, align 4
  %7 = load ptr, ptr %in.addr, align 8
  %next = getelementptr inbounds %struct.bin, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %next, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %8, i32 1
  store ptr %incdec.ptr, ptr %next, align 8
  %9 = load i8, ptr %8, align 1
  %conv = zext i8 %9 to i32
  br label %cond.end7

cond.false5:                                      ; preds = %cond.end
  %10 = load ptr, ptr %in.addr, align 8
  %name = getelementptr inbounds %struct.bin, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %name, align 8
  %call6 = call i32 @pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_7(ptr noundef @.str.9, ptr noundef %11)
  br label %cond.end7

cond.end7:                                        ; preds = %cond.false5, %cond.true3
  %cond8 = phi i32 [ %conv, %cond.true3 ], [ %call6, %cond.false5 ]
  %cmp = icmp ne i32 %cond8, 31
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end7
  %12 = load ptr, ptr %in.addr, align 8
  %left10 = getelementptr inbounds %struct.bin, ptr %12, i32 0, i32 2
  %13 = load i32, ptr %left10, align 4
  %tobool11 = icmp ne i32 %13, 0
  br i1 %tobool11, label %cond.true12, label %cond.false13

cond.true12:                                      ; preds = %lor.lhs.false
  br label %cond.end15

cond.false13:                                     ; preds = %lor.lhs.false
  %14 = load ptr, ptr %in.addr, align 8
  %call14 = call i32 @bload(ptr noundef %14)
  br label %cond.end15

cond.end15:                                       ; preds = %cond.false13, %cond.true12
  %cond16 = phi i32 [ 0, %cond.true12 ], [ %call14, %cond.false13 ]
  %15 = load ptr, ptr %in.addr, align 8
  %left17 = getelementptr inbounds %struct.bin, ptr %15, i32 0, i32 2
  %16 = load i32, ptr %left17, align 4
  %tobool18 = icmp ne i32 %16, 0
  br i1 %tobool18, label %cond.true19, label %cond.false25

cond.true19:                                      ; preds = %cond.end15
  %17 = load ptr, ptr %in.addr, align 8
  %left20 = getelementptr inbounds %struct.bin, ptr %17, i32 0, i32 2
  %18 = load i32, ptr %left20, align 4
  %dec21 = add i32 %18, -1
  store i32 %dec21, ptr %left20, align 4
  %19 = load ptr, ptr %in.addr, align 8
  %next22 = getelementptr inbounds %struct.bin, ptr %19, i32 0, i32 3
  %20 = load ptr, ptr %next22, align 8
  %incdec.ptr23 = getelementptr inbounds i8, ptr %20, i32 1
  store ptr %incdec.ptr23, ptr %next22, align 8
  %21 = load i8, ptr %20, align 1
  %conv24 = zext i8 %21 to i32
  br label %cond.end28

cond.false25:                                     ; preds = %cond.end15
  %22 = load ptr, ptr %in.addr, align 8
  %name26 = getelementptr inbounds %struct.bin, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %name26, align 8
  %call27 = call i32 @pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_8(ptr noundef @.str.9, ptr noundef %23)
  br label %cond.end28

cond.end28:                                       ; preds = %cond.false25, %cond.true19
  %cond29 = phi i32 [ %conv24, %cond.true19 ], [ %call27, %cond.false25 ]
  %cmp30 = icmp ne i32 %cond29, 139
  br i1 %cmp30, label %if.then, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %cond.end28
  %24 = load ptr, ptr %in.addr, align 8
  %left33 = getelementptr inbounds %struct.bin, ptr %24, i32 0, i32 2
  %25 = load i32, ptr %left33, align 4
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %cond.true35, label %cond.false36

cond.true35:                                      ; preds = %lor.lhs.false32
  br label %cond.end38

cond.false36:                                     ; preds = %lor.lhs.false32
  %26 = load ptr, ptr %in.addr, align 8
  %call37 = call i32 @bload(ptr noundef %26)
  br label %cond.end38

cond.end38:                                       ; preds = %cond.false36, %cond.true35
  %cond39 = phi i32 [ 0, %cond.true35 ], [ %call37, %cond.false36 ]
  %27 = load ptr, ptr %in.addr, align 8
  %left40 = getelementptr inbounds %struct.bin, ptr %27, i32 0, i32 2
  %28 = load i32, ptr %left40, align 4
  %tobool41 = icmp ne i32 %28, 0
  br i1 %tobool41, label %cond.true42, label %cond.false48

cond.true42:                                      ; preds = %cond.end38
  %29 = load ptr, ptr %in.addr, align 8
  %left43 = getelementptr inbounds %struct.bin, ptr %29, i32 0, i32 2
  %30 = load i32, ptr %left43, align 4
  %dec44 = add i32 %30, -1
  store i32 %dec44, ptr %left43, align 4
  %31 = load ptr, ptr %in.addr, align 8
  %next45 = getelementptr inbounds %struct.bin, ptr %31, i32 0, i32 3
  %32 = load ptr, ptr %next45, align 8
  %incdec.ptr46 = getelementptr inbounds i8, ptr %32, i32 1
  store ptr %incdec.ptr46, ptr %next45, align 8
  %33 = load i8, ptr %32, align 1
  %conv47 = zext i8 %33 to i32
  br label %cond.end51

cond.false48:                                     ; preds = %cond.end38
  %34 = load ptr, ptr %in.addr, align 8
  %name49 = getelementptr inbounds %struct.bin, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %name49, align 8
  %call50 = call i32 @pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_9(ptr noundef @.str.9, ptr noundef %35)
  br label %cond.end51

cond.end51:                                       ; preds = %cond.false48, %cond.true42
  %cond52 = phi i32 [ %conv47, %cond.true42 ], [ %call50, %cond.false48 ]
  %cmp53 = icmp ne i32 %cond52, 8
  br i1 %cmp53, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end51, %cond.end28, %cond.end7
  %36 = load ptr, ptr %in.addr, align 8
  %name55 = getelementptr inbounds %struct.bin, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %name55, align 8
  %call56 = call i32 @pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_10(ptr noundef %37, ptr noundef @.str.10)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end51
  %38 = load ptr, ptr %in.addr, align 8
  %left57 = getelementptr inbounds %struct.bin, ptr %38, i32 0, i32 2
  %39 = load i32, ptr %left57, align 4
  %tobool58 = icmp ne i32 %39, 0
  br i1 %tobool58, label %cond.true59, label %cond.false60

cond.true59:                                      ; preds = %if.end
  br label %cond.end62

cond.false60:                                     ; preds = %if.end
  %40 = load ptr, ptr %in.addr, align 8
  %call61 = call i32 @bload(ptr noundef %40)
  br label %cond.end62

cond.end62:                                       ; preds = %cond.false60, %cond.true59
  %cond63 = phi i32 [ 0, %cond.true59 ], [ %call61, %cond.false60 ]
  %41 = load ptr, ptr %in.addr, align 8
  %left64 = getelementptr inbounds %struct.bin, ptr %41, i32 0, i32 2
  %42 = load i32, ptr %left64, align 4
  %tobool65 = icmp ne i32 %42, 0
  br i1 %tobool65, label %cond.true66, label %cond.false72

cond.true66:                                      ; preds = %cond.end62
  %43 = load ptr, ptr %in.addr, align 8
  %left67 = getelementptr inbounds %struct.bin, ptr %43, i32 0, i32 2
  %44 = load i32, ptr %left67, align 4
  %dec68 = add i32 %44, -1
  store i32 %dec68, ptr %left67, align 4
  %45 = load ptr, ptr %in.addr, align 8
  %next69 = getelementptr inbounds %struct.bin, ptr %45, i32 0, i32 3
  %46 = load ptr, ptr %next69, align 8
  %incdec.ptr70 = getelementptr inbounds i8, ptr %46, i32 1
  store ptr %incdec.ptr70, ptr %next69, align 8
  %47 = load i8, ptr %46, align 1
  %conv71 = zext i8 %47 to i32
  br label %cond.end75

cond.false72:                                     ; preds = %cond.end62
  %48 = load ptr, ptr %in.addr, align 8
  %name73 = getelementptr inbounds %struct.bin, ptr %48, i32 0, i32 0
  %49 = load ptr, ptr %name73, align 8
  %call74 = call i32 @pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_11(ptr noundef @.str.9, ptr noundef %49)
  br label %cond.end75

cond.end75:                                       ; preds = %cond.false72, %cond.true66
  %cond76 = phi i32 [ %conv71, %cond.true66 ], [ %call74, %cond.false72 ]
  store i32 %cond76, ptr %flags, align 4
  %50 = load i32, ptr %flags, align 4
  %and = and i32 %50, 224
  %cmp77 = icmp ne i32 %and, 0
  br i1 %cmp77, label %if.then79, label %if.end82

if.then79:                                        ; preds = %cond.end75
  %51 = load ptr, ptr %in.addr, align 8
  %name80 = getelementptr inbounds %struct.bin, ptr %51, i32 0, i32 0
  %52 = load ptr, ptr %name80, align 8
  %call81 = call i32 @pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_12(ptr noundef @.str.11, ptr noundef %52)
  br label %if.end82

if.end82:                                         ; preds = %if.then79, %cond.end75
  %53 = load ptr, ptr %in.addr, align 8
  call void @bskip(ptr noundef %53, i32 noundef 6)
  %54 = load i32, ptr %flags, align 4
  %and83 = and i32 %54, 4
  %tobool84 = icmp ne i32 %and83, 0
  br i1 %tobool84, label %if.then85, label %if.end126

if.then85:                                        ; preds = %if.end82
  %55 = load ptr, ptr %in.addr, align 8
  %left86 = getelementptr inbounds %struct.bin, ptr %55, i32 0, i32 2
  %56 = load i32, ptr %left86, align 4
  %tobool87 = icmp ne i32 %56, 0
  br i1 %tobool87, label %cond.true88, label %cond.false89

cond.true88:                                      ; preds = %if.then85
  br label %cond.end91

cond.false89:                                     ; preds = %if.then85
  %57 = load ptr, ptr %in.addr, align 8
  %call90 = call i32 @bload(ptr noundef %57)
  br label %cond.end91

cond.end91:                                       ; preds = %cond.false89, %cond.true88
  %cond92 = phi i32 [ 0, %cond.true88 ], [ %call90, %cond.false89 ]
  %58 = load ptr, ptr %in.addr, align 8
  %left93 = getelementptr inbounds %struct.bin, ptr %58, i32 0, i32 2
  %59 = load i32, ptr %left93, align 4
  %tobool94 = icmp ne i32 %59, 0
  br i1 %tobool94, label %cond.true95, label %cond.false101

cond.true95:                                      ; preds = %cond.end91
  %60 = load ptr, ptr %in.addr, align 8
  %left96 = getelementptr inbounds %struct.bin, ptr %60, i32 0, i32 2
  %61 = load i32, ptr %left96, align 4
  %dec97 = add i32 %61, -1
  store i32 %dec97, ptr %left96, align 4
  %62 = load ptr, ptr %in.addr, align 8
  %next98 = getelementptr inbounds %struct.bin, ptr %62, i32 0, i32 3
  %63 = load ptr, ptr %next98, align 8
  %incdec.ptr99 = getelementptr inbounds i8, ptr %63, i32 1
  store ptr %incdec.ptr99, ptr %next98, align 8
  %64 = load i8, ptr %63, align 1
  %conv100 = zext i8 %64 to i32
  br label %cond.end104

cond.false101:                                    ; preds = %cond.end91
  %65 = load ptr, ptr %in.addr, align 8
  %name102 = getelementptr inbounds %struct.bin, ptr %65, i32 0, i32 0
  %66 = load ptr, ptr %name102, align 8
  %call103 = call i32 @pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_13(ptr noundef @.str.9, ptr noundef %66)
  br label %cond.end104

cond.end104:                                      ; preds = %cond.false101, %cond.true95
  %cond105 = phi i32 [ %conv100, %cond.true95 ], [ %call103, %cond.false101 ]
  store i32 %cond105, ptr %len, align 4
  %67 = load ptr, ptr %in.addr, align 8
  %left106 = getelementptr inbounds %struct.bin, ptr %67, i32 0, i32 2
  %68 = load i32, ptr %left106, align 4
  %tobool107 = icmp ne i32 %68, 0
  br i1 %tobool107, label %cond.true108, label %cond.false109

cond.true108:                                     ; preds = %cond.end104
  br label %cond.end111

cond.false109:                                    ; preds = %cond.end104
  %69 = load ptr, ptr %in.addr, align 8
  %call110 = call i32 @bload(ptr noundef %69)
  br label %cond.end111

cond.end111:                                      ; preds = %cond.false109, %cond.true108
  %cond112 = phi i32 [ 0, %cond.true108 ], [ %call110, %cond.false109 ]
  %70 = load ptr, ptr %in.addr, align 8
  %left113 = getelementptr inbounds %struct.bin, ptr %70, i32 0, i32 2
  %71 = load i32, ptr %left113, align 4
  %tobool114 = icmp ne i32 %71, 0
  br i1 %tobool114, label %cond.true115, label %cond.false121

cond.true115:                                     ; preds = %cond.end111
  %72 = load ptr, ptr %in.addr, align 8
  %left116 = getelementptr inbounds %struct.bin, ptr %72, i32 0, i32 2
  %73 = load i32, ptr %left116, align 4
  %dec117 = add i32 %73, -1
  store i32 %dec117, ptr %left116, align 4
  %74 = load ptr, ptr %in.addr, align 8
  %next118 = getelementptr inbounds %struct.bin, ptr %74, i32 0, i32 3
  %75 = load ptr, ptr %next118, align 8
  %incdec.ptr119 = getelementptr inbounds i8, ptr %75, i32 1
  store ptr %incdec.ptr119, ptr %next118, align 8
  %76 = load i8, ptr %75, align 1
  %conv120 = zext i8 %76 to i32
  br label %cond.end124

cond.false121:                                    ; preds = %cond.end111
  %77 = load ptr, ptr %in.addr, align 8
  %name122 = getelementptr inbounds %struct.bin, ptr %77, i32 0, i32 0
  %78 = load ptr, ptr %name122, align 8
  %call123 = call i32 @pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_14(ptr noundef @.str.9, ptr noundef %78)
  br label %cond.end124

cond.end124:                                      ; preds = %cond.false121, %cond.true115
  %cond125 = phi i32 [ %conv120, %cond.true115 ], [ %call123, %cond.false121 ]
  %shl = shl i32 %cond125, 8
  %79 = load i32, ptr %len, align 4
  %add = add i32 %79, %shl
  store i32 %add, ptr %len, align 4
  %80 = load ptr, ptr %in.addr, align 8
  %81 = load i32, ptr %len, align 4
  call void @bskip(ptr noundef %80, i32 noundef %81)
  br label %if.end126

if.end126:                                        ; preds = %cond.end124, %if.end82
  %82 = load i32, ptr %flags, align 4
  %and127 = and i32 %82, 8
  %tobool128 = icmp ne i32 %and127, 0
  br i1 %tobool128, label %if.then129, label %if.end152

if.then129:                                       ; preds = %if.end126
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then129
  %83 = load ptr, ptr %in.addr, align 8
  %left130 = getelementptr inbounds %struct.bin, ptr %83, i32 0, i32 2
  %84 = load i32, ptr %left130, align 4
  %tobool131 = icmp ne i32 %84, 0
  br i1 %tobool131, label %cond.true132, label %cond.false133

cond.true132:                                     ; preds = %while.cond
  br label %cond.end135

cond.false133:                                    ; preds = %while.cond
  %85 = load ptr, ptr %in.addr, align 8
  %call134 = call i32 @bload(ptr noundef %85)
  br label %cond.end135

cond.end135:                                      ; preds = %cond.false133, %cond.true132
  %cond136 = phi i32 [ 0, %cond.true132 ], [ %call134, %cond.false133 ]
  %86 = load ptr, ptr %in.addr, align 8
  %left137 = getelementptr inbounds %struct.bin, ptr %86, i32 0, i32 2
  %87 = load i32, ptr %left137, align 4
  %tobool138 = icmp ne i32 %87, 0
  br i1 %tobool138, label %cond.true139, label %cond.false145

cond.true139:                                     ; preds = %cond.end135
  %88 = load ptr, ptr %in.addr, align 8
  %left140 = getelementptr inbounds %struct.bin, ptr %88, i32 0, i32 2
  %89 = load i32, ptr %left140, align 4
  %dec141 = add i32 %89, -1
  store i32 %dec141, ptr %left140, align 4
  %90 = load ptr, ptr %in.addr, align 8
  %next142 = getelementptr inbounds %struct.bin, ptr %90, i32 0, i32 3
  %91 = load ptr, ptr %next142, align 8
  %incdec.ptr143 = getelementptr inbounds i8, ptr %91, i32 1
  store ptr %incdec.ptr143, ptr %next142, align 8
  %92 = load i8, ptr %91, align 1
  %conv144 = zext i8 %92 to i32
  br label %cond.end148

cond.false145:                                    ; preds = %cond.end135
  %93 = load ptr, ptr %in.addr, align 8
  %name146 = getelementptr inbounds %struct.bin, ptr %93, i32 0, i32 0
  %94 = load ptr, ptr %name146, align 8
  %call147 = call i32 @pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_15(ptr noundef @.str.9, ptr noundef %94)
  br label %cond.end148

cond.end148:                                      ; preds = %cond.false145, %cond.true139
  %cond149 = phi i32 [ %conv144, %cond.true139 ], [ %call147, %cond.false145 ]
  %cmp150 = icmp ne i32 %cond149, 0
  br i1 %cmp150, label %while.body, label %while.end

while.body:                                       ; preds = %cond.end148
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %cond.end148
  br label %if.end152

if.end152:                                        ; preds = %while.end, %if.end126
  %95 = load i32, ptr %flags, align 4
  %and153 = and i32 %95, 16
  %tobool154 = icmp ne i32 %and153, 0
  br i1 %tobool154, label %if.then155, label %if.end181

if.then155:                                       ; preds = %if.end152
  br label %while.cond156

while.cond156:                                    ; preds = %while.body179, %if.then155
  %96 = load ptr, ptr %in.addr, align 8
  %left157 = getelementptr inbounds %struct.bin, ptr %96, i32 0, i32 2
  %97 = load i32, ptr %left157, align 4
  %tobool158 = icmp ne i32 %97, 0
  br i1 %tobool158, label %cond.true159, label %cond.false160

cond.true159:                                     ; preds = %while.cond156
  br label %cond.end162

cond.false160:                                    ; preds = %while.cond156
  %98 = load ptr, ptr %in.addr, align 8
  %call161 = call i32 @bload(ptr noundef %98)
  br label %cond.end162

cond.end162:                                      ; preds = %cond.false160, %cond.true159
  %cond163 = phi i32 [ 0, %cond.true159 ], [ %call161, %cond.false160 ]
  %99 = load ptr, ptr %in.addr, align 8
  %left164 = getelementptr inbounds %struct.bin, ptr %99, i32 0, i32 2
  %100 = load i32, ptr %left164, align 4
  %tobool165 = icmp ne i32 %100, 0
  br i1 %tobool165, label %cond.true166, label %cond.false172

cond.true166:                                     ; preds = %cond.end162
  %101 = load ptr, ptr %in.addr, align 8
  %left167 = getelementptr inbounds %struct.bin, ptr %101, i32 0, i32 2
  %102 = load i32, ptr %left167, align 4
  %dec168 = add i32 %102, -1
  store i32 %dec168, ptr %left167, align 4
  %103 = load ptr, ptr %in.addr, align 8
  %next169 = getelementptr inbounds %struct.bin, ptr %103, i32 0, i32 3
  %104 = load ptr, ptr %next169, align 8
  %incdec.ptr170 = getelementptr inbounds i8, ptr %104, i32 1
  store ptr %incdec.ptr170, ptr %next169, align 8
  %105 = load i8, ptr %104, align 1
  %conv171 = zext i8 %105 to i32
  br label %cond.end175

cond.false172:                                    ; preds = %cond.end162
  %106 = load ptr, ptr %in.addr, align 8
  %name173 = getelementptr inbounds %struct.bin, ptr %106, i32 0, i32 0
  %107 = load ptr, ptr %name173, align 8
  %call174 = call i32 @pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_16(ptr noundef @.str.9, ptr noundef %107)
  br label %cond.end175

cond.end175:                                      ; preds = %cond.false172, %cond.true166
  %cond176 = phi i32 [ %conv171, %cond.true166 ], [ %call174, %cond.false172 ]
  %cmp177 = icmp ne i32 %cond176, 0
  br i1 %cmp177, label %while.body179, label %while.end180

while.body179:                                    ; preds = %cond.end175
  br label %while.cond156, !llvm.loop !9

while.end180:                                     ; preds = %cond.end175
  br label %if.end181

if.end181:                                        ; preds = %while.end180, %if.end152
  %108 = load i32, ptr %flags, align 4
  %and182 = and i32 %108, 2
  %tobool183 = icmp ne i32 %and182, 0
  br i1 %tobool183, label %if.then184, label %if.end185

if.then184:                                       ; preds = %if.end181
  %109 = load ptr, ptr %in.addr, align 8
  call void @bskip(ptr noundef %109, i32 noundef 2)
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
  %0 = load ptr, ptr %in.addr, align 8
  %left = getelementptr inbounds %struct.bin, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %left, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %in.addr, align 8
  %call = call i32 @bload(ptr noundef %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %in.addr, align 8
  %left1 = getelementptr inbounds %struct.bin, ptr %3, i32 0, i32 2
  %4 = load i32, ptr %left1, align 4
  %cmp2 = icmp eq i32 %4, 0
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %in.addr, align 8
  %name = getelementptr inbounds %struct.bin, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %name, align 8
  %call4 = call i32 @pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_17(ptr noundef @.str.9, ptr noundef %6)
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %7 = load ptr, ptr %in.addr, align 8
  %left6 = getelementptr inbounds %struct.bin, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %left6, align 4
  %9 = load ptr, ptr %strm.addr, align 8
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %9, i32 0, i32 1
  store i32 %8, ptr %avail_in, align 8
  %10 = load ptr, ptr %in.addr, align 8
  %next = getelementptr inbounds %struct.bin, ptr %10, i32 0, i32 3
  %11 = load ptr, ptr %next, align 8
  %12 = load ptr, ptr %strm.addr, align 8
  %next_in = getelementptr inbounds %struct.z_stream_s, ptr %12, i32 0, i32 0
  store ptr %11, ptr %next_in, align 8
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
  %0 = load ptr, ptr %in.addr, align 8
  %left = getelementptr inbounds %struct.bin, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %left, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load ptr, ptr %in.addr, align 8
  %call = call i32 @bload(ptr noundef %2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  %3 = load ptr, ptr %in.addr, align 8
  %left1 = getelementptr inbounds %struct.bin, ptr %3, i32 0, i32 2
  %4 = load i32, ptr %left1, align 4
  %tobool2 = icmp ne i32 %4, 0
  br i1 %tobool2, label %cond.true3, label %cond.false5

cond.true3:                                       ; preds = %cond.end
  %5 = load ptr, ptr %in.addr, align 8
  %left4 = getelementptr inbounds %struct.bin, ptr %5, i32 0, i32 2
  %6 = load i32, ptr %left4, align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr %left4, align 4
  %7 = load ptr, ptr %in.addr, align 8
  %next = getelementptr inbounds %struct.bin, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %next, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %8, i32 1
  store ptr %incdec.ptr, ptr %next, align 8
  %9 = load i8, ptr %8, align 1
  %conv = zext i8 %9 to i32
  br label %cond.end7

cond.false5:                                      ; preds = %cond.end
  %10 = load ptr, ptr %in.addr, align 8
  %name = getelementptr inbounds %struct.bin, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %name, align 8
  %call6 = call i32 @pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_18(ptr noundef @.str.9, ptr noundef %11)
  br label %cond.end7

cond.end7:                                        ; preds = %cond.false5, %cond.true3
  %cond8 = phi i32 [ %conv, %cond.true3 ], [ %call6, %cond.false5 ]
  %conv9 = sext i32 %cond8 to i64
  store i64 %conv9, ptr %val, align 8
  %12 = load ptr, ptr %in.addr, align 8
  %left10 = getelementptr inbounds %struct.bin, ptr %12, i32 0, i32 2
  %13 = load i32, ptr %left10, align 4
  %tobool11 = icmp ne i32 %13, 0
  br i1 %tobool11, label %cond.true12, label %cond.false13

cond.true12:                                      ; preds = %cond.end7
  br label %cond.end15

cond.false13:                                     ; preds = %cond.end7
  %14 = load ptr, ptr %in.addr, align 8
  %call14 = call i32 @bload(ptr noundef %14)
  br label %cond.end15

cond.end15:                                       ; preds = %cond.false13, %cond.true12
  %cond16 = phi i32 [ 0, %cond.true12 ], [ %call14, %cond.false13 ]
  %15 = load ptr, ptr %in.addr, align 8
  %left17 = getelementptr inbounds %struct.bin, ptr %15, i32 0, i32 2
  %16 = load i32, ptr %left17, align 4
  %tobool18 = icmp ne i32 %16, 0
  br i1 %tobool18, label %cond.true19, label %cond.false25

cond.true19:                                      ; preds = %cond.end15
  %17 = load ptr, ptr %in.addr, align 8
  %left20 = getelementptr inbounds %struct.bin, ptr %17, i32 0, i32 2
  %18 = load i32, ptr %left20, align 4
  %dec21 = add i32 %18, -1
  store i32 %dec21, ptr %left20, align 4
  %19 = load ptr, ptr %in.addr, align 8
  %next22 = getelementptr inbounds %struct.bin, ptr %19, i32 0, i32 3
  %20 = load ptr, ptr %next22, align 8
  %incdec.ptr23 = getelementptr inbounds i8, ptr %20, i32 1
  store ptr %incdec.ptr23, ptr %next22, align 8
  %21 = load i8, ptr %20, align 1
  %conv24 = zext i8 %21 to i32
  br label %cond.end28

cond.false25:                                     ; preds = %cond.end15
  %22 = load ptr, ptr %in.addr, align 8
  %name26 = getelementptr inbounds %struct.bin, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %name26, align 8
  %call27 = call i32 @pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_19(ptr noundef @.str.9, ptr noundef %23)
  br label %cond.end28

cond.end28:                                       ; preds = %cond.false25, %cond.true19
  %cond29 = phi i32 [ %conv24, %cond.true19 ], [ %call27, %cond.false25 ]
  %conv30 = sext i32 %cond29 to i64
  %shl = shl i64 %conv30, 8
  %24 = load i64, ptr %val, align 8
  %add = add i64 %24, %shl
  store i64 %add, ptr %val, align 8
  %25 = load ptr, ptr %in.addr, align 8
  %left31 = getelementptr inbounds %struct.bin, ptr %25, i32 0, i32 2
  %26 = load i32, ptr %left31, align 4
  %tobool32 = icmp ne i32 %26, 0
  br i1 %tobool32, label %cond.true33, label %cond.false34

cond.true33:                                      ; preds = %cond.end28
  br label %cond.end36

cond.false34:                                     ; preds = %cond.end28
  %27 = load ptr, ptr %in.addr, align 8
  %call35 = call i32 @bload(ptr noundef %27)
  br label %cond.end36

cond.end36:                                       ; preds = %cond.false34, %cond.true33
  %cond37 = phi i32 [ 0, %cond.true33 ], [ %call35, %cond.false34 ]
  %28 = load ptr, ptr %in.addr, align 8
  %left38 = getelementptr inbounds %struct.bin, ptr %28, i32 0, i32 2
  %29 = load i32, ptr %left38, align 4
  %tobool39 = icmp ne i32 %29, 0
  br i1 %tobool39, label %cond.true40, label %cond.false46

cond.true40:                                      ; preds = %cond.end36
  %30 = load ptr, ptr %in.addr, align 8
  %left41 = getelementptr inbounds %struct.bin, ptr %30, i32 0, i32 2
  %31 = load i32, ptr %left41, align 4
  %dec42 = add i32 %31, -1
  store i32 %dec42, ptr %left41, align 4
  %32 = load ptr, ptr %in.addr, align 8
  %next43 = getelementptr inbounds %struct.bin, ptr %32, i32 0, i32 3
  %33 = load ptr, ptr %next43, align 8
  %incdec.ptr44 = getelementptr inbounds i8, ptr %33, i32 1
  store ptr %incdec.ptr44, ptr %next43, align 8
  %34 = load i8, ptr %33, align 1
  %conv45 = zext i8 %34 to i32
  br label %cond.end49

cond.false46:                                     ; preds = %cond.end36
  %35 = load ptr, ptr %in.addr, align 8
  %name47 = getelementptr inbounds %struct.bin, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %name47, align 8
  %call48 = call i32 @pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_20(ptr noundef @.str.9, ptr noundef %36)
  br label %cond.end49

cond.end49:                                       ; preds = %cond.false46, %cond.true40
  %cond50 = phi i32 [ %conv45, %cond.true40 ], [ %call48, %cond.false46 ]
  %conv51 = sext i32 %cond50 to i64
  %shl52 = shl i64 %conv51, 16
  %37 = load i64, ptr %val, align 8
  %add53 = add i64 %37, %shl52
  store i64 %add53, ptr %val, align 8
  %38 = load ptr, ptr %in.addr, align 8
  %left54 = getelementptr inbounds %struct.bin, ptr %38, i32 0, i32 2
  %39 = load i32, ptr %left54, align 4
  %tobool55 = icmp ne i32 %39, 0
  br i1 %tobool55, label %cond.true56, label %cond.false57

cond.true56:                                      ; preds = %cond.end49
  br label %cond.end59

cond.false57:                                     ; preds = %cond.end49
  %40 = load ptr, ptr %in.addr, align 8
  %call58 = call i32 @bload(ptr noundef %40)
  br label %cond.end59

cond.end59:                                       ; preds = %cond.false57, %cond.true56
  %cond60 = phi i32 [ 0, %cond.true56 ], [ %call58, %cond.false57 ]
  %41 = load ptr, ptr %in.addr, align 8
  %left61 = getelementptr inbounds %struct.bin, ptr %41, i32 0, i32 2
  %42 = load i32, ptr %left61, align 4
  %tobool62 = icmp ne i32 %42, 0
  br i1 %tobool62, label %cond.true63, label %cond.false69

cond.true63:                                      ; preds = %cond.end59
  %43 = load ptr, ptr %in.addr, align 8
  %left64 = getelementptr inbounds %struct.bin, ptr %43, i32 0, i32 2
  %44 = load i32, ptr %left64, align 4
  %dec65 = add i32 %44, -1
  store i32 %dec65, ptr %left64, align 4
  %45 = load ptr, ptr %in.addr, align 8
  %next66 = getelementptr inbounds %struct.bin, ptr %45, i32 0, i32 3
  %46 = load ptr, ptr %next66, align 8
  %incdec.ptr67 = getelementptr inbounds i8, ptr %46, i32 1
  store ptr %incdec.ptr67, ptr %next66, align 8
  %47 = load i8, ptr %46, align 1
  %conv68 = zext i8 %47 to i32
  br label %cond.end72

cond.false69:                                     ; preds = %cond.end59
  %48 = load ptr, ptr %in.addr, align 8
  %name70 = getelementptr inbounds %struct.bin, ptr %48, i32 0, i32 0
  %49 = load ptr, ptr %name70, align 8
  %call71 = call i32 @pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_21(ptr noundef @.str.9, ptr noundef %49)
  br label %cond.end72

cond.end72:                                       ; preds = %cond.false69, %cond.true63
  %cond73 = phi i32 [ %conv68, %cond.true63 ], [ %call71, %cond.false69 ]
  %conv74 = sext i32 %cond73 to i64
  %shl75 = shl i64 %conv74, 24
  %50 = load i64, ptr %val, align 8
  %add76 = add i64 %50, %shl75
  store i64 %add76, ptr %val, align 8
  %51 = load i64, ptr %val, align 8
  ret i64 %51
}

declare i32 @inflateEnd(ptr noundef) #1

declare void @free(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @bclose(ptr noundef %in) #0 {
entry:
  %in.addr = alloca ptr, align 8
  store ptr %in, ptr %in.addr, align 8
  %0 = load ptr, ptr %in.addr, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %in.addr, align 8
  %fd = getelementptr inbounds %struct.bin, ptr %1, i32 0, i32 1
  %2 = load i32, ptr %fd, align 8
  %cmp1 = icmp ne i32 %2, -1
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %3 = load ptr, ptr %in.addr, align 8
  %fd3 = getelementptr inbounds %struct.bin, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %fd3, align 8
  %call = call i32 @"\01_close"(i32 noundef %4)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %5 = load ptr, ptr %in.addr, align 8
  %buf = getelementptr inbounds %struct.bin, ptr %5, i32 0, i32 4
  %6 = load ptr, ptr %buf, align 8
  %cmp4 = icmp ne ptr %6, null
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %7 = load ptr, ptr %in.addr, align 8
  %buf6 = getelementptr inbounds %struct.bin, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %buf6, align 8
  call void @free(ptr noundef %8)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %9 = load ptr, ptr %in.addr, align 8
  call void @free(ptr noundef %9)
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
  %0 = load i64, ptr %val.addr, align 8
  %and = and i64 %0, 255
  %conv = trunc i64 %and to i32
  %1 = load ptr, ptr %out.addr, align 8
  %call = call i32 @putc(i32 noundef %conv, ptr noundef %1)
  %2 = load i64, ptr %val.addr, align 8
  %shr = lshr i64 %2, 8
  %and1 = and i64 %shr, 255
  %conv2 = trunc i64 %and1 to i32
  %3 = load ptr, ptr %out.addr, align 8
  %call3 = call i32 @putc(i32 noundef %conv2, ptr noundef %3)
  %4 = load i64, ptr %val.addr, align 8
  %shr4 = lshr i64 %4, 16
  %and5 = and i64 %shr4, 255
  %conv6 = trunc i64 %and5 to i32
  %5 = load ptr, ptr %out.addr, align 8
  %call7 = call i32 @putc(i32 noundef %conv6, ptr noundef %5)
  %6 = load i64, ptr %val.addr, align 8
  %shr8 = lshr i64 %6, 24
  %and9 = and i64 %shr8, 255
  %conv10 = trunc i64 %and9 to i32
  %7 = load ptr, ptr %out.addr, align 8
  %call11 = call i32 @putc(i32 noundef %conv10, ptr noundef %7)
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
  %0 = load ptr, ptr %in.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %in.addr, align 8
  %left = getelementptr inbounds %struct.bin, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %left, align 4
  %cmp1 = icmp ne i32 %2, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %in.addr, align 8
  %buf = getelementptr inbounds %struct.bin, ptr %3, i32 0, i32 4
  %4 = load ptr, ptr %buf, align 8
  %5 = load ptr, ptr %in.addr, align 8
  %next = getelementptr inbounds %struct.bin, ptr %5, i32 0, i32 3
  store ptr %4, ptr %next, align 8
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end3
  %6 = load ptr, ptr %in.addr, align 8
  %fd = getelementptr inbounds %struct.bin, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %fd, align 8
  %8 = load ptr, ptr %in.addr, align 8
  %buf4 = getelementptr inbounds %struct.bin, ptr %8, i32 0, i32 4
  %9 = load ptr, ptr %buf4, align 8
  %10 = load ptr, ptr %in.addr, align 8
  %left5 = getelementptr inbounds %struct.bin, ptr %10, i32 0, i32 2
  %11 = load i32, ptr %left5, align 4
  %idx.ext = zext i32 %11 to i64
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %idx.ext
  %12 = load ptr, ptr %in.addr, align 8
  %left6 = getelementptr inbounds %struct.bin, ptr %12, i32 0, i32 2
  %13 = load i32, ptr %left6, align 4
  %sub = sub i32 32768, %13
  %conv = zext i32 %sub to i64
  %call = call i64 @"\01_read"(i32 noundef %7, ptr noundef %add.ptr, i64 noundef %conv)
  store i64 %call, ptr %len, align 8
  %14 = load i64, ptr %len, align 8
  %cmp7 = icmp slt i64 %14, 0
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %do.body
  store i32 -1, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %do.body
  %15 = load i64, ptr %len, align 8
  %conv11 = trunc i64 %15 to i32
  %16 = load ptr, ptr %in.addr, align 8
  %left12 = getelementptr inbounds %struct.bin, ptr %16, i32 0, i32 2
  %17 = load i32, ptr %left12, align 4
  %add = add i32 %17, %conv11
  store i32 %add, ptr %left12, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end10
  %18 = load i64, ptr %len, align 8
  %cmp13 = icmp ne i64 %18, 0
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %19 = load ptr, ptr %in.addr, align 8
  %left15 = getelementptr inbounds %struct.bin, ptr %19, i32 0, i32 2
  %20 = load i32, ptr %left15, align 4
  %cmp16 = icmp ult i32 %20, 32768
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %21 = phi i1 [ false, %do.cond ], [ %cmp16, %land.rhs ]
  br i1 %21, label %do.body, label %do.end, !llvm.loop !10

do.end:                                           ; preds = %land.end
  %22 = load i64, ptr %len, align 8
  %cmp18 = icmp eq i64 %22, 0
  %23 = zext i1 %cmp18 to i64
  %cond = select i1 %cmp18, i32 1, i32 0
  store i32 %cond, ptr %retval, align 4
  br label %return

return:                                           ; preds = %do.end, %if.then9, %if.then2, %if.then
  %24 = load i32, ptr %retval, align 4
  ret i32 %24
}

; Function Attrs: nounwind ssp uwtable
define internal void @bskip(ptr noundef %in, i32 noundef %skip) #0 {
entry:
  %in.addr = alloca ptr, align 8
  %skip.addr = alloca i32, align 4
  %left10 = alloca i32, align 4
  store ptr %in, ptr %in.addr, align 8
  store i32 %skip, ptr %skip.addr, align 4
  %0 = load ptr, ptr %in.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %skip.addr, align 4
  %2 = load ptr, ptr %in.addr, align 8
  %left = getelementptr inbounds %struct.bin, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %left, align 4
  %cmp1 = icmp ule i32 %1, %3
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %4 = load i32, ptr %skip.addr, align 4
  %5 = load ptr, ptr %in.addr, align 8
  %left3 = getelementptr inbounds %struct.bin, ptr %5, i32 0, i32 2
  %6 = load i32, ptr %left3, align 4
  %sub = sub i32 %6, %4
  store i32 %sub, ptr %left3, align 4
  %7 = load i32, ptr %skip.addr, align 4
  %8 = load ptr, ptr %in.addr, align 8
  %next = getelementptr inbounds %struct.bin, ptr %8, i32 0, i32 3
  %9 = load ptr, ptr %next, align 8
  %idx.ext = zext i32 %7 to i64
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %idx.ext
  store ptr %add.ptr, ptr %next, align 8
  br label %return

if.end4:                                          ; preds = %if.end
  %10 = load ptr, ptr %in.addr, align 8
  %left5 = getelementptr inbounds %struct.bin, ptr %10, i32 0, i32 2
  %11 = load i32, ptr %left5, align 4
  %12 = load i32, ptr %skip.addr, align 4
  %sub6 = sub i32 %12, %11
  store i32 %sub6, ptr %skip.addr, align 4
  %13 = load ptr, ptr %in.addr, align 8
  %left7 = getelementptr inbounds %struct.bin, ptr %13, i32 0, i32 2
  store i32 0, ptr %left7, align 4
  %14 = load i32, ptr %skip.addr, align 4
  %cmp8 = icmp ugt i32 %14, 32768
  br i1 %cmp8, label %if.then9, label %if.end26

if.then9:                                         ; preds = %if.end4
  %15 = load i32, ptr %skip.addr, align 4
  %and = and i32 %15, 32767
  store i32 %and, ptr %left10, align 4
  %16 = load i32, ptr %left10, align 4
  %cmp11 = icmp eq i32 %16, 0
  br i1 %cmp11, label %if.then12, label %if.end21

if.then12:                                        ; preds = %if.then9
  %17 = load ptr, ptr %in.addr, align 8
  %fd = getelementptr inbounds %struct.bin, ptr %17, i32 0, i32 1
  %18 = load i32, ptr %fd, align 8
  %19 = load i32, ptr %skip.addr, align 4
  %sub13 = sub i32 %19, 1
  %conv = zext i32 %sub13 to i64
  %call = call i64 @lseek(i32 noundef %18, i64 noundef %conv, i32 noundef 1)
  %20 = load ptr, ptr %in.addr, align 8
  %fd14 = getelementptr inbounds %struct.bin, ptr %20, i32 0, i32 1
  %21 = load i32, ptr %fd14, align 8
  %22 = load ptr, ptr %in.addr, align 8
  %buf = getelementptr inbounds %struct.bin, ptr %22, i32 0, i32 4
  %23 = load ptr, ptr %buf, align 8
  %call15 = call i64 @"\01_read"(i32 noundef %21, ptr noundef %23, i64 noundef 1)
  %cmp16 = icmp ne i64 %call15, 1
  br i1 %cmp16, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.then12
  %24 = load ptr, ptr %in.addr, align 8
  %name = getelementptr inbounds %struct.bin, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %name, align 8
  %call19 = call i32 @pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_22(ptr noundef @.str.9, ptr noundef %25)
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.then12
  br label %return

if.end21:                                         ; preds = %if.then9
  %26 = load ptr, ptr %in.addr, align 8
  %fd22 = getelementptr inbounds %struct.bin, ptr %26, i32 0, i32 1
  %27 = load i32, ptr %fd22, align 8
  %28 = load i32, ptr %skip.addr, align 4
  %29 = load i32, ptr %left10, align 4
  %sub23 = sub i32 %28, %29
  %conv24 = zext i32 %sub23 to i64
  %call25 = call i64 @lseek(i32 noundef %27, i64 noundef %conv24, i32 noundef 1)
  %30 = load i32, ptr %left10, align 4
  store i32 %30, ptr %skip.addr, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.end21, %if.end4
  %31 = load ptr, ptr %in.addr, align 8
  %call27 = call i32 @bload(ptr noundef %31)
  %32 = load i32, ptr %skip.addr, align 4
  %33 = load ptr, ptr %in.addr, align 8
  %left28 = getelementptr inbounds %struct.bin, ptr %33, i32 0, i32 2
  %34 = load i32, ptr %left28, align 4
  %cmp29 = icmp ugt i32 %32, %34
  br i1 %cmp29, label %if.then31, label %if.end34

if.then31:                                        ; preds = %if.end26
  %35 = load ptr, ptr %in.addr, align 8
  %name32 = getelementptr inbounds %struct.bin, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %name32, align 8
  %call33 = call i32 @pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_23(ptr noundef @.str.9, ptr noundef %36)
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end26
  %37 = load i32, ptr %skip.addr, align 4
  %38 = load ptr, ptr %in.addr, align 8
  %left35 = getelementptr inbounds %struct.bin, ptr %38, i32 0, i32 2
  %39 = load i32, ptr %left35, align 4
  %sub36 = sub i32 %39, %37
  store i32 %sub36, ptr %left35, align 4
  %40 = load i32, ptr %skip.addr, align 4
  %41 = load ptr, ptr %in.addr, align 8
  %next37 = getelementptr inbounds %struct.bin, ptr %41, i32 0, i32 3
  %42 = load ptr, ptr %next37, align 8
  %idx.ext38 = zext i32 %40 to i64
  %add.ptr39 = getelementptr inbounds i8, ptr %42, i64 %idx.ext38
  store ptr %add.ptr39, ptr %next37, align 8
  br label %return

return:                                           ; preds = %if.end34, %if.end20, %if.then2, %if.then
  ret void
}

declare i64 @"\01_read"(i32 noundef, ptr noundef, i64 noundef) #1

declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #1

declare i32 @"\01_close"(i32 noundef) #1

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { allocsize(0) }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define internal void @pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_0(ptr noundef %crc, ptr noundef %tot, ptr noundef %out)  alwaysinline#0 {
entry:
  %crc.addr = alloca ptr, align 8
  %tot.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  store ptr %crc, ptr %crc.addr, align 8
  store ptr %tot, ptr %tot.addr, align 8
  store ptr %out, ptr %out.addr, align 8
  %0 = load ptr, ptr %out.addr, align 8
  %call = call i64 @"\01_fwrite"(ptr noundef @.str.1, i64 noundef 1, i64 noundef 10, ptr noundef %0)
  %call1 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0)
  %1 = load ptr, ptr %crc.addr, align 8
  store i64 %call1, ptr %1, align 8
  %2 = load ptr, ptr %tot.addr, align 8
  store i64 0, ptr %2, align 8
  ret void
}

define internal i32 @pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_1(ptr noundef %why1, ptr noundef %why2)  alwaysinline#0 {
entry:
  %why1.addr = alloca ptr, align 8
  %why2.addr = alloca ptr, align 8
  store ptr %why1, ptr %why1.addr, align 8
  store ptr %why2, ptr %why2.addr, align 8
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr %why1.addr, align 8
  %2 = load ptr, ptr %why2.addr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.8, ptr noundef %1, ptr noundef %2)
  call void @exit(i32 noundef 1) #5
  unreachable
}

define internal i32 @pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_2(ptr noundef %why1, ptr noundef %why2)  alwaysinline#0 {
entry:
  %why1.addr = alloca ptr, align 8
  %why2.addr = alloca ptr, align 8
  store ptr %why1, ptr %why1.addr, align 8
  store ptr %why2, ptr %why2.addr, align 8
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr %why1.addr, align 8
  %2 = load ptr, ptr %why2.addr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.8, ptr noundef %1, ptr noundef %2)
  call void @exit(i32 noundef 1) #5
  unreachable
}

define internal i32 @pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_3(ptr noundef %why1, ptr noundef %why2)  alwaysinline#0 {
entry:
  %why1.addr = alloca ptr, align 8
  %why2.addr = alloca ptr, align 8
  store ptr %why1, ptr %why1.addr, align 8
  store ptr %why2, ptr %why2.addr, align 8
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr %why1.addr, align 8
  %2 = load ptr, ptr %why2.addr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.8, ptr noundef %1, ptr noundef %2)
  call void @exit(i32 noundef 1) #5
  unreachable
}

define internal i32 @pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_4(ptr noundef %why1, ptr noundef %why2)  alwaysinline#0 {
entry:
  %why1.addr = alloca ptr, align 8
  %why2.addr = alloca ptr, align 8
  store ptr %why1, ptr %why1.addr, align 8
  store ptr %why2, ptr %why2.addr, align 8
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr %why1.addr, align 8
  %2 = load ptr, ptr %why2.addr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.8, ptr noundef %1, ptr noundef %2)
  call void @exit(i32 noundef 1) #5
  unreachable
}

define internal void @pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_5(i64 noundef %val, ptr noundef %out)  alwaysinline#0 {
entry:
  %val.addr = alloca i64, align 8
  %out.addr = alloca ptr, align 8
  store i64 %val, ptr %val.addr, align 8
  store ptr %out, ptr %out.addr, align 8
  %0 = load i64, ptr %val.addr, align 8
  %and = and i64 %0, 255
  %conv = trunc i64 %and to i32
  %1 = load ptr, ptr %out.addr, align 8
  %call = call i32 @putc(i32 noundef %conv, ptr noundef %1)
  %2 = load i64, ptr %val.addr, align 8
  %shr = lshr i64 %2, 8
  %and1 = and i64 %shr, 255
  %conv2 = trunc i64 %and1 to i32
  %3 = load ptr, ptr %out.addr, align 8
  %call3 = call i32 @putc(i32 noundef %conv2, ptr noundef %3)
  %4 = load i64, ptr %val.addr, align 8
  %shr4 = lshr i64 %4, 16
  %and5 = and i64 %shr4, 255
  %conv6 = trunc i64 %and5 to i32
  %5 = load ptr, ptr %out.addr, align 8
  %call7 = call i32 @putc(i32 noundef %conv6, ptr noundef %5)
  %6 = load i64, ptr %val.addr, align 8
  %shr8 = lshr i64 %6, 24
  %and9 = and i64 %shr8, 255
  %conv10 = trunc i64 %and9 to i32
  %7 = load ptr, ptr %out.addr, align 8
  %call11 = call i32 @putc(i32 noundef %conv10, ptr noundef %7)
  ret void
}

define internal void @pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_6(i64 noundef %val, ptr noundef %out)  alwaysinline#0 {
entry:
  %val.addr = alloca i64, align 8
  %out.addr = alloca ptr, align 8
  store i64 %val, ptr %val.addr, align 8
  store ptr %out, ptr %out.addr, align 8
  %0 = load i64, ptr %val.addr, align 8
  %and = and i64 %0, 255
  %conv = trunc i64 %and to i32
  %1 = load ptr, ptr %out.addr, align 8
  %call = call i32 @putc(i32 noundef %conv, ptr noundef %1)
  %2 = load i64, ptr %val.addr, align 8
  %shr = lshr i64 %2, 8
  %and1 = and i64 %shr, 255
  %conv2 = trunc i64 %and1 to i32
  %3 = load ptr, ptr %out.addr, align 8
  %call3 = call i32 @putc(i32 noundef %conv2, ptr noundef %3)
  %4 = load i64, ptr %val.addr, align 8
  %shr4 = lshr i64 %4, 16
  %and5 = and i64 %shr4, 255
  %conv6 = trunc i64 %and5 to i32
  %5 = load ptr, ptr %out.addr, align 8
  %call7 = call i32 @putc(i32 noundef %conv6, ptr noundef %5)
  %6 = load i64, ptr %val.addr, align 8
  %shr8 = lshr i64 %6, 24
  %and9 = and i64 %shr8, 255
  %conv10 = trunc i64 %and9 to i32
  %7 = load ptr, ptr %out.addr, align 8
  %call11 = call i32 @putc(i32 noundef %conv10, ptr noundef %7)
  ret void
}

define internal i32 @pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_7(ptr noundef %why1, ptr noundef %why2)  alwaysinline#0 {
entry:
  %why1.addr = alloca ptr, align 8
  %why2.addr = alloca ptr, align 8
  store ptr %why1, ptr %why1.addr, align 8
  store ptr %why2, ptr %why2.addr, align 8
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr %why1.addr, align 8
  %2 = load ptr, ptr %why2.addr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.8, ptr noundef %1, ptr noundef %2)
  call void @exit(i32 noundef 1) #5
  unreachable
}

define internal i32 @pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_8(ptr noundef %why1, ptr noundef %why2)  alwaysinline#0 {
entry:
  %why1.addr = alloca ptr, align 8
  %why2.addr = alloca ptr, align 8
  store ptr %why1, ptr %why1.addr, align 8
  store ptr %why2, ptr %why2.addr, align 8
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr %why1.addr, align 8
  %2 = load ptr, ptr %why2.addr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.8, ptr noundef %1, ptr noundef %2)
  call void @exit(i32 noundef 1) #5
  unreachable
}

define internal i32 @pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_9(ptr noundef %why1, ptr noundef %why2)  alwaysinline#0 {
entry:
  %why1.addr = alloca ptr, align 8
  %why2.addr = alloca ptr, align 8
  store ptr %why1, ptr %why1.addr, align 8
  store ptr %why2, ptr %why2.addr, align 8
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr %why1.addr, align 8
  %2 = load ptr, ptr %why2.addr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.8, ptr noundef %1, ptr noundef %2)
  call void @exit(i32 noundef 1) #5
  unreachable
}

define internal i32 @pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_10(ptr noundef %why1, ptr noundef %why2)  alwaysinline#0 {
entry:
  %why1.addr = alloca ptr, align 8
  %why2.addr = alloca ptr, align 8
  store ptr %why1, ptr %why1.addr, align 8
  store ptr %why2, ptr %why2.addr, align 8
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr %why1.addr, align 8
  %2 = load ptr, ptr %why2.addr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.8, ptr noundef %1, ptr noundef %2)
  call void @exit(i32 noundef 1) #5
  unreachable
}

define internal i32 @pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_11(ptr noundef %why1, ptr noundef %why2)  alwaysinline#0 {
entry:
  %why1.addr = alloca ptr, align 8
  %why2.addr = alloca ptr, align 8
  store ptr %why1, ptr %why1.addr, align 8
  store ptr %why2, ptr %why2.addr, align 8
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr %why1.addr, align 8
  %2 = load ptr, ptr %why2.addr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.8, ptr noundef %1, ptr noundef %2)
  call void @exit(i32 noundef 1) #5
  unreachable
}

define internal i32 @pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_12(ptr noundef %why1, ptr noundef %why2)  alwaysinline#0 {
entry:
  %why1.addr = alloca ptr, align 8
  %why2.addr = alloca ptr, align 8
  store ptr %why1, ptr %why1.addr, align 8
  store ptr %why2, ptr %why2.addr, align 8
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr %why1.addr, align 8
  %2 = load ptr, ptr %why2.addr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.8, ptr noundef %1, ptr noundef %2)
  call void @exit(i32 noundef 1) #5
  unreachable
}

define internal i32 @pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_13(ptr noundef %why1, ptr noundef %why2)  alwaysinline#0 {
entry:
  %why1.addr = alloca ptr, align 8
  %why2.addr = alloca ptr, align 8
  store ptr %why1, ptr %why1.addr, align 8
  store ptr %why2, ptr %why2.addr, align 8
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr %why1.addr, align 8
  %2 = load ptr, ptr %why2.addr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.8, ptr noundef %1, ptr noundef %2)
  call void @exit(i32 noundef 1) #5
  unreachable
}

define internal i32 @pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_14(ptr noundef %why1, ptr noundef %why2)  alwaysinline#0 {
entry:
  %why1.addr = alloca ptr, align 8
  %why2.addr = alloca ptr, align 8
  store ptr %why1, ptr %why1.addr, align 8
  store ptr %why2, ptr %why2.addr, align 8
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr %why1.addr, align 8
  %2 = load ptr, ptr %why2.addr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.8, ptr noundef %1, ptr noundef %2)
  call void @exit(i32 noundef 1) #5
  unreachable
}

define internal i32 @pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_15(ptr noundef %why1, ptr noundef %why2)  alwaysinline#0 {
entry:
  %why1.addr = alloca ptr, align 8
  %why2.addr = alloca ptr, align 8
  store ptr %why1, ptr %why1.addr, align 8
  store ptr %why2, ptr %why2.addr, align 8
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr %why1.addr, align 8
  %2 = load ptr, ptr %why2.addr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.8, ptr noundef %1, ptr noundef %2)
  call void @exit(i32 noundef 1) #5
  unreachable
}

define internal i32 @pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_16(ptr noundef %why1, ptr noundef %why2)  alwaysinline#0 {
entry:
  %why1.addr = alloca ptr, align 8
  %why2.addr = alloca ptr, align 8
  store ptr %why1, ptr %why1.addr, align 8
  store ptr %why2, ptr %why2.addr, align 8
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr %why1.addr, align 8
  %2 = load ptr, ptr %why2.addr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.8, ptr noundef %1, ptr noundef %2)
  call void @exit(i32 noundef 1) #5
  unreachable
}

define internal i32 @pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_17(ptr noundef %why1, ptr noundef %why2)  alwaysinline#0 {
entry:
  %why1.addr = alloca ptr, align 8
  %why2.addr = alloca ptr, align 8
  store ptr %why1, ptr %why1.addr, align 8
  store ptr %why2, ptr %why2.addr, align 8
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr %why1.addr, align 8
  %2 = load ptr, ptr %why2.addr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.8, ptr noundef %1, ptr noundef %2)
  call void @exit(i32 noundef 1) #5
  unreachable
}

define internal i32 @pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_18(ptr noundef %why1, ptr noundef %why2)  alwaysinline#0 {
entry:
  %why1.addr = alloca ptr, align 8
  %why2.addr = alloca ptr, align 8
  store ptr %why1, ptr %why1.addr, align 8
  store ptr %why2, ptr %why2.addr, align 8
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr %why1.addr, align 8
  %2 = load ptr, ptr %why2.addr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.8, ptr noundef %1, ptr noundef %2)
  call void @exit(i32 noundef 1) #5
  unreachable
}

define internal i32 @pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_19(ptr noundef %why1, ptr noundef %why2)  alwaysinline#0 {
entry:
  %why1.addr = alloca ptr, align 8
  %why2.addr = alloca ptr, align 8
  store ptr %why1, ptr %why1.addr, align 8
  store ptr %why2, ptr %why2.addr, align 8
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr %why1.addr, align 8
  %2 = load ptr, ptr %why2.addr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.8, ptr noundef %1, ptr noundef %2)
  call void @exit(i32 noundef 1) #5
  unreachable
}

define internal i32 @pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_20(ptr noundef %why1, ptr noundef %why2)  alwaysinline#0 {
entry:
  %why1.addr = alloca ptr, align 8
  %why2.addr = alloca ptr, align 8
  store ptr %why1, ptr %why1.addr, align 8
  store ptr %why2, ptr %why2.addr, align 8
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr %why1.addr, align 8
  %2 = load ptr, ptr %why2.addr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.8, ptr noundef %1, ptr noundef %2)
  call void @exit(i32 noundef 1) #5
  unreachable
}

define internal i32 @pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_21(ptr noundef %why1, ptr noundef %why2)  alwaysinline#0 {
entry:
  %why1.addr = alloca ptr, align 8
  %why2.addr = alloca ptr, align 8
  store ptr %why1, ptr %why1.addr, align 8
  store ptr %why2, ptr %why2.addr, align 8
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr %why1.addr, align 8
  %2 = load ptr, ptr %why2.addr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.8, ptr noundef %1, ptr noundef %2)
  call void @exit(i32 noundef 1) #5
  unreachable
}

define internal i32 @pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_22(ptr noundef %why1, ptr noundef %why2)  alwaysinline#0 {
entry:
  %why1.addr = alloca ptr, align 8
  %why2.addr = alloca ptr, align 8
  store ptr %why1, ptr %why1.addr, align 8
  store ptr %why2, ptr %why2.addr, align 8
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr %why1.addr, align 8
  %2 = load ptr, ptr %why2.addr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.8, ptr noundef %1, ptr noundef %2)
  call void @exit(i32 noundef 1) #5
  unreachable
}

define internal i32 @pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_23(ptr noundef %why1, ptr noundef %why2)  alwaysinline#0 {
entry:
  %why1.addr = alloca ptr, align 8
  %why2.addr = alloca ptr, align 8
  store ptr %why1, ptr %why1.addr, align 8
  store ptr %why2, ptr %why2.addr, align 8
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr %why1.addr, align 8
  %2 = load ptr, ptr %why2.addr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.8, ptr noundef %1, ptr noundef %2)
  call void @exit(i32 noundef 1) #5
  unreachable
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
