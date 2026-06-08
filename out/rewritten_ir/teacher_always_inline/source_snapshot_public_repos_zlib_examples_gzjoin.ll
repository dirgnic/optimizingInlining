; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_public_repos_zlib_examples_gzjoin.prepared.ll'
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
  %name.addr.i = alloca ptr, align 8
  %clr.addr.i = alloca i32, align 4
  %crc.addr.i1 = alloca ptr, align 8
  %tot.addr.i2 = alloca ptr, align 8
  %out.addr.i3 = alloca ptr, align 8
  %ret.i = alloca i32, align 4
  %pos.i = alloca i32, align 4
  %last.i = alloca i32, align 4
  %in.i = alloca ptr, align 8
  %start.i = alloca ptr, align 8
  %junk.i = alloca ptr, align 8
  %len.i = alloca i64, align 8
  %strm.i = alloca %struct.z_stream_s, align 8
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

while.cond:                                       ; preds = %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_1.exit, %if.end
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %name.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clr.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %crc.addr.i1)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tot.addr.i2)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out.addr.i3)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pos.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %start.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %junk.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len.i)
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %strm.i)
  store ptr %4, ptr %name.addr.i, align 8
  store i32 %5, ptr %clr.addr.i, align 4
  store ptr %crc, ptr %crc.addr.i1, align 8
  store ptr %tot, ptr %tot.addr.i2, align 8
  store ptr %6, ptr %out.addr.i3, align 8
  %call.i4 = call ptr @bopen(ptr noundef %4)
  store ptr %call.i4, ptr %in.i, align 8
  %cmp.i = icmp eq ptr %call.i4, null
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %while.body
  %7 = load ptr, ptr %name.addr.i, align 8
  %call1.i5 = call i32 @bail(ptr noundef nonnull @.str.2, ptr noundef %7)
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.body
  %8 = load ptr, ptr %in.i, align 8
  call void @gzhead(ptr noundef %8)
  %call2.i = call dereferenceable_or_null(32768) ptr @malloc(i64 noundef 32768) #6
  store ptr %call2.i, ptr %junk.i, align 8
  %zalloc.i = getelementptr inbounds %struct.z_stream_s, ptr %strm.i, i64 0, i32 8
  store ptr null, ptr %zalloc.i, align 8
  %zfree.i = getelementptr inbounds %struct.z_stream_s, ptr %strm.i, i64 0, i32 9
  store ptr null, ptr %zfree.i, align 8
  %opaque.i = getelementptr inbounds %struct.z_stream_s, ptr %strm.i, i64 0, i32 10
  store ptr null, ptr %opaque.i, align 8
  %avail_in.i = getelementptr inbounds %struct.z_stream_s, ptr %strm.i, i64 0, i32 1
  store i32 0, ptr %avail_in.i, align 8
  store ptr null, ptr %strm.i, align 8
  %call3.i = call i32 @inflateInit2_(ptr noundef nonnull %strm.i, i32 noundef -15, ptr noundef nonnull @.str.3, i32 noundef 112) #5
  store i32 %call3.i, ptr %ret.i, align 4
  %9 = load ptr, ptr %junk.i, align 8
  %cmp4.i = icmp ne ptr %9, null
  %10 = load i32, ptr %ret.i, align 4
  %cmp5.i.not = icmp eq i32 %10, 0
  %or.cond = select i1 %cmp4.i, i1 %cmp5.i.not, i1 false
  br i1 %or.cond, label %if.end8.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  %call7.i = call i32 @bail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.end.i, %if.then6.i
  store i64 0, ptr %len.i, align 8
  %11 = load ptr, ptr %in.i, align 8
  call void @zpull(ptr noundef nonnull %strm.i, ptr noundef %11)
  %next.i = getelementptr inbounds %struct.bin, ptr %11, i64 0, i32 3
  %12 = load ptr, ptr %next.i, align 8
  store ptr %12, ptr %start.i, align 8
  %13 = load i8, ptr %12, align 1
  %14 = and i8 %13, 1
  %and.i = zext i8 %14 to i32
  store i32 %and.i, ptr %last.i, align 4
  %tobool.i.not = icmp eq i8 %14, 0
  %15 = load i32, ptr %clr.addr.i, align 4
  %tobool9.i.not = icmp eq i32 %15, 0
  %or.cond6 = select i1 %tobool.i.not, i1 true, i1 %tobool9.i.not
  br i1 %or.cond6, label %if.end15.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end8.i
  %16 = load ptr, ptr %start.i, align 8
  %17 = load i8, ptr %16, align 1
  %18 = and i8 %17, -2
  store i8 %18, ptr %16, align 1
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then10.i, %if.end8.i
  %avail_out.i = getelementptr inbounds %struct.z_stream_s, ptr %strm.i, i64 0, i32 4
  store i32 0, ptr %avail_out.i, align 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end98.i, %if.end15.i
  %avail_in16.i = getelementptr inbounds %struct.z_stream_s, ptr %strm.i, i64 0, i32 1
  %19 = load i32, ptr %avail_in16.i, align 8
  %cmp17.i = icmp ne i32 %19, 0
  %avail_out20.i = getelementptr inbounds %struct.z_stream_s, ptr %strm.i, i64 0, i32 4
  %20 = load i32, ptr %avail_out20.i, align 8
  %cmp21.i.not = icmp eq i32 %20, 0
  %or.cond7 = select i1 %cmp17.i, i1 true, i1 %cmp21.i.not
  br i1 %or.cond7, label %if.end26.i, label %if.then23.i

if.then23.i:                                      ; preds = %for.cond.i
  %21 = load ptr, ptr %start.i, align 8
  %22 = load ptr, ptr %strm.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %22 to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %21 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %23 = load ptr, ptr %out.addr.i3, align 8
  %call25.i = call i64 @"\01_fwrite"(ptr noundef %21, i64 noundef 1, i64 noundef %sub.ptr.sub.i, ptr noundef %23) #5
  %24 = load ptr, ptr %in.i, align 8
  %buf.i = getelementptr inbounds %struct.bin, ptr %24, i64 0, i32 4
  %25 = load ptr, ptr %buf.i, align 8
  store ptr %25, ptr %start.i, align 8
  %left.i = getelementptr inbounds %struct.bin, ptr %24, i64 0, i32 2
  store i32 0, ptr %left.i, align 4
  call void @zpull(ptr noundef nonnull %strm.i, ptr noundef %24)
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then23.i, %for.cond.i
  %avail_out27.i = getelementptr inbounds %struct.z_stream_s, ptr %strm.i, i64 0, i32 4
  store i32 32768, ptr %avail_out27.i, align 8
  %26 = load ptr, ptr %junk.i, align 8
  %next_out.i = getelementptr inbounds %struct.z_stream_s, ptr %strm.i, i64 0, i32 3
  store ptr %26, ptr %next_out.i, align 8
  %call28.i = call i32 @inflate(ptr noundef nonnull %strm.i, i32 noundef 5) #5
  store i32 %call28.i, ptr %ret.i, align 4
  switch i32 %call28.i, label %sw.epilog.i [
    i32 -4, label %sw.bb.i
    i32 -3, label %sw.bb30.i
  ]

sw.bb.i:                                          ; preds = %if.end26.i
  %call29.i = call i32 @bail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
  br label %sw.bb30.i

sw.bb30.i:                                        ; preds = %sw.bb.i, %if.end26.i
  %27 = load ptr, ptr %in.i, align 8
  %28 = load ptr, ptr %27, align 8
  %call32.i = call i32 @bail(ptr noundef nonnull @.str.6, ptr noundef %28)
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb30.i, %if.end26.i
  %avail_out33.i = getelementptr inbounds %struct.z_stream_s, ptr %strm.i, i64 0, i32 4
  %29 = load i32, ptr %avail_out33.i, align 8
  %sub.i = sub i32 32768, %29
  %conv34.i = zext i32 %sub.i to i64
  %30 = load i64, ptr %len.i, align 8
  %add.i = add nsw i64 %30, %conv34.i
  store i64 %add.i, ptr %len.i, align 8
  %data_type.i = getelementptr inbounds %struct.z_stream_s, ptr %strm.i, i64 0, i32 11
  %31 = load i32, ptr %data_type.i, align 8
  %and35.i = and i32 %31, 128
  %tobool36.i.not = icmp eq i32 %and35.i, 0
  br i1 %tobool36.i.not, label %if.end98.i, label %if.then37.i

if.then37.i:                                      ; preds = %sw.epilog.i
  %32 = load i32, ptr %last.i, align 4
  %tobool38.i.not = icmp eq i32 %32, 0
  br i1 %tobool38.i.not, label %if.end40.i, label %if.then39.i

if.then39.i:                                      ; preds = %if.then37.i
  %avail_in99.i = getelementptr inbounds %struct.z_stream_s, ptr %strm.i, i64 0, i32 1
  %33 = load i32, ptr %avail_in99.i, align 8
  %34 = load ptr, ptr %in.i, align 8
  %left100.i = getelementptr inbounds %struct.bin, ptr %34, i64 0, i32 2
  store i32 %33, ptr %left100.i, align 4
  %buf101.i = getelementptr inbounds %struct.bin, ptr %34, i64 0, i32 4
  %35 = load ptr, ptr %buf101.i, align 8
  %36 = load ptr, ptr %strm.i, align 8
  %sub.ptr.lhs.cast104.i = ptrtoint ptr %36 to i64
  %sub.ptr.rhs.cast105.i = ptrtoint ptr %35 to i64
  %sub.ptr.sub106.i = sub i64 %sub.ptr.lhs.cast104.i, %sub.ptr.rhs.cast105.i
  %add.ptr.i = getelementptr inbounds i8, ptr %35, i64 %sub.ptr.sub106.i
  %37 = load ptr, ptr %in.i, align 8
  %next107.i = getelementptr inbounds %struct.bin, ptr %37, i64 0, i32 3
  store ptr %add.ptr.i, ptr %next107.i, align 8
  %data_type108.i = getelementptr inbounds %struct.z_stream_s, ptr %strm.i, i64 0, i32 11
  %38 = load i32, ptr %data_type108.i, align 8
  %and109.i = and i32 %38, 7
  store i32 %and109.i, ptr %pos.i, align 4
  %39 = load ptr, ptr %start.i, align 8
  %40 = load ptr, ptr %in.i, align 8
  %next110.i = getelementptr inbounds %struct.bin, ptr %40, i64 0, i32 3
  %41 = load ptr, ptr %next110.i, align 8
  %sub.ptr.lhs.cast111.i = ptrtoint ptr %41 to i64
  %sub.ptr.rhs.cast112.i = ptrtoint ptr %39 to i64
  %42 = xor i64 %sub.ptr.rhs.cast112.i, -1
  %sub114.i = add i64 %42, %sub.ptr.lhs.cast111.i
  %43 = load ptr, ptr %out.addr.i3, align 8
  %call115.i = call i64 @"\01_fwrite"(ptr noundef %39, i64 noundef 1, i64 noundef %sub114.i, ptr noundef %43) #5
  %44 = load ptr, ptr %in.i, align 8
  %next116.i = getelementptr inbounds %struct.bin, ptr %44, i64 0, i32 3
  %45 = load ptr, ptr %next116.i, align 8
  %arrayidx117.i = getelementptr inbounds i8, ptr %45, i64 -1
  %46 = load i8, ptr %arrayidx117.i, align 1
  %conv118.i = zext i8 %46 to i32
  store i32 %conv118.i, ptr %last.i, align 4
  %47 = load i32, ptr %pos.i, align 4
  %cmp119.i = icmp eq i32 %47, 0
  %48 = load i32, ptr %clr.addr.i, align 4
  %tobool122.i.not = icmp eq i32 %48, 0
  %or.cond10 = select i1 %cmp119.i, i1 true, i1 %tobool122.i.not
  br i1 %or.cond10, label %if.then123.i, label %if.else125.i

if.end40.i:                                       ; preds = %if.then37.i
  %data_type41.i = getelementptr inbounds %struct.z_stream_s, ptr %strm.i, i64 0, i32 11
  %49 = load i32, ptr %data_type41.i, align 8
  %and42.i = and i32 %49, 7
  store i32 %and42.i, ptr %pos.i, align 4
  %cmp43.i.not = icmp eq i32 %and42.i, 0
  br i1 %cmp43.i.not, label %if.else.i, label %if.then45.i

if.then45.i:                                      ; preds = %if.end40.i
  %50 = load i32, ptr %pos.i, align 4
  %shr.i = lshr i32 256, %50
  store i32 %shr.i, ptr %pos.i, align 4
  %51 = load ptr, ptr %strm.i, align 8
  %arrayidx47.i = getelementptr inbounds i8, ptr %51, i64 -1
  %52 = load i8, ptr %arrayidx47.i, align 1
  %conv48.i = zext i8 %52 to i32
  %and49.i = and i32 %shr.i, %conv48.i
  store i32 %and49.i, ptr %last.i, align 4
  %tobool50.i.not = icmp eq i32 %and49.i, 0
  %53 = load i32, ptr %clr.addr.i, align 4
  %tobool52.i.not = icmp eq i32 %53, 0
  %or.cond8 = select i1 %tobool50.i.not, i1 true, i1 %tobool52.i.not
  br i1 %or.cond8, label %if.end98.i, label %if.then53.i

if.then53.i:                                      ; preds = %if.then45.i
  %54 = load i32, ptr %pos.i, align 4
  %55 = load ptr, ptr %in.i, align 8
  %buf54.i = getelementptr inbounds %struct.bin, ptr %55, i64 0, i32 4
  %56 = load ptr, ptr %buf54.i, align 8
  %57 = load ptr, ptr %strm.i, align 8
  %sub.ptr.lhs.cast57.i = ptrtoint ptr %57 to i64
  %sub.ptr.rhs.cast58.i = ptrtoint ptr %56 to i64
  %58 = xor i64 %sub.ptr.rhs.cast58.i, -1
  %sub60.i = add i64 %58, %sub.ptr.lhs.cast57.i
  %arrayidx61.i = getelementptr inbounds i8, ptr %56, i64 %sub60.i
  %59 = load i8, ptr %arrayidx61.i, align 1
  %60 = trunc i32 %54 to i8
  %61 = xor i8 %60, -1
  %conv64.i = and i8 %59, %61
  store i8 %conv64.i, ptr %arrayidx61.i, align 1
  br label %if.end98.i

if.else.i:                                        ; preds = %if.end40.i
  %avail_in66.i = getelementptr inbounds %struct.z_stream_s, ptr %strm.i, i64 0, i32 1
  %62 = load i32, ptr %avail_in66.i, align 8
  %cmp67.i = icmp eq i32 %62, 0
  br i1 %cmp67.i, label %if.then69.i, label %if.end77.i

if.then69.i:                                      ; preds = %if.else.i
  %63 = load ptr, ptr %start.i, align 8
  %64 = load ptr, ptr %strm.i, align 8
  %sub.ptr.lhs.cast71.i = ptrtoint ptr %64 to i64
  %sub.ptr.rhs.cast72.i = ptrtoint ptr %63 to i64
  %sub.ptr.sub73.i = sub i64 %sub.ptr.lhs.cast71.i, %sub.ptr.rhs.cast72.i
  %65 = load ptr, ptr %out.addr.i3, align 8
  %call74.i = call i64 @"\01_fwrite"(ptr noundef %63, i64 noundef 1, i64 noundef %sub.ptr.sub73.i, ptr noundef %65) #5
  %66 = load ptr, ptr %in.i, align 8
  %buf75.i = getelementptr inbounds %struct.bin, ptr %66, i64 0, i32 4
  %67 = load ptr, ptr %buf75.i, align 8
  store ptr %67, ptr %start.i, align 8
  %left76.i = getelementptr inbounds %struct.bin, ptr %66, i64 0, i32 2
  store i32 0, ptr %left76.i, align 4
  call void @zpull(ptr noundef nonnull %strm.i, ptr noundef %66)
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.then69.i, %if.else.i
  %68 = load ptr, ptr %strm.i, align 8
  %69 = load i8, ptr %68, align 1
  %70 = and i8 %69, 1
  %and81.i = zext i8 %70 to i32
  store i32 %and81.i, ptr %last.i, align 4
  %tobool82.i.not = icmp eq i8 %70, 0
  %71 = load i32, ptr %clr.addr.i, align 4
  %tobool84.i.not = icmp eq i32 %71, 0
  %or.cond9 = select i1 %tobool82.i.not, i1 true, i1 %tobool84.i.not
  br i1 %or.cond9, label %if.end98.i, label %if.then85.i

if.then85.i:                                      ; preds = %if.end77.i
  %72 = load ptr, ptr %in.i, align 8
  %buf86.i = getelementptr inbounds %struct.bin, ptr %72, i64 0, i32 4
  %73 = load ptr, ptr %buf86.i, align 8
  %74 = load ptr, ptr %strm.i, align 8
  %sub.ptr.lhs.cast89.i = ptrtoint ptr %74 to i64
  %sub.ptr.rhs.cast90.i = ptrtoint ptr %73 to i64
  %sub.ptr.sub91.i = sub i64 %sub.ptr.lhs.cast89.i, %sub.ptr.rhs.cast90.i
  %arrayidx92.i = getelementptr inbounds i8, ptr %73, i64 %sub.ptr.sub91.i
  %75 = load i8, ptr %arrayidx92.i, align 1
  %76 = and i8 %75, -2
  store i8 %76, ptr %arrayidx92.i, align 1
  br label %if.end98.i

if.end98.i:                                       ; preds = %if.then53.i, %if.then45.i, %if.then85.i, %if.end77.i, %sw.epilog.i
  br label %for.cond.i

if.then123.i:                                     ; preds = %if.then39.i
  %77 = load i32, ptr %last.i, align 4
  %78 = load ptr, ptr %out.addr.i3, align 8
  %call124.i = call i32 @putc(i32 noundef %77, ptr noundef %78) #5
  br label %if.end151.i

if.else125.i:                                     ; preds = %if.then39.i
  %79 = load i32, ptr %pos.i, align 4
  %shr126.i = lshr i32 256, %79
  %sub127.i = add nsw i32 %shr126.i, -1
  %80 = load i32, ptr %last.i, align 4
  %and128.i = and i32 %80, %sub127.i
  store i32 %and128.i, ptr %last.i, align 4
  %and129.i = and i32 %79, 1
  %tobool130.i.not = icmp eq i32 %and129.i, 0
  br i1 %tobool130.i.not, label %if.else139.i, label %if.then131.i

if.then131.i:                                     ; preds = %if.else125.i
  %81 = load i32, ptr %last.i, align 4
  %82 = load ptr, ptr %out.addr.i3, align 8
  %call132.i = call i32 @putc(i32 noundef %81, ptr noundef %82) #5
  %83 = load i32, ptr %pos.i, align 4
  %cmp133.i = icmp eq i32 %83, 1
  br i1 %cmp133.i, label %if.then135.i, label %if.end137.i

if.then135.i:                                     ; preds = %if.then131.i
  %84 = load ptr, ptr %out.addr.i3, align 8
  %call136.i = call i32 @putc(i32 noundef 0, ptr noundef %84) #5
  br label %if.end137.i

if.end137.i:                                      ; preds = %if.then135.i, %if.then131.i
  %85 = load ptr, ptr %out.addr.i3, align 8
  %call138.i = call i64 @"\01_fwrite"(ptr noundef nonnull @.str.7, i64 noundef 1, i64 noundef 4, ptr noundef %85) #5
  br label %if.end151.i

if.else139.i:                                     ; preds = %if.else125.i
  %86 = load i32, ptr %pos.i, align 4
  switch i32 %86, label %if.end151.i [
    i32 6, label %sw.bb140.i
    i32 4, label %sw.bb142.i
    i32 2, label %sw.bb145.i
  ]

sw.bb140.i:                                       ; preds = %if.else139.i
  %87 = load i32, ptr %last.i, align 4
  %or.i = or i32 %87, 8
  %88 = load ptr, ptr %out.addr.i3, align 8
  %call141.i = call i32 @putc(i32 noundef %or.i, ptr noundef %88) #5
  store i32 0, ptr %last.i, align 4
  br label %sw.bb142.i

sw.bb142.i:                                       ; preds = %sw.bb140.i, %if.else139.i
  %89 = load i32, ptr %last.i, align 4
  %or143.i = or i32 %89, 32
  %90 = load ptr, ptr %out.addr.i3, align 8
  %call144.i = call i32 @putc(i32 noundef %or143.i, ptr noundef %90) #5
  store i32 0, ptr %last.i, align 4
  br label %sw.bb145.i

sw.bb145.i:                                       ; preds = %sw.bb142.i, %if.else139.i
  %91 = load i32, ptr %last.i, align 4
  %or146.i = or i32 %91, 128
  %92 = load ptr, ptr %out.addr.i3, align 8
  %call147.i = call i32 @putc(i32 noundef %or146.i, ptr noundef %92) #5
  %call148.i = call i32 @putc(i32 noundef 0, ptr noundef %92) #5
  br label %if.end151.i

if.end151.i:                                      ; preds = %if.end137.i, %sw.bb145.i, %if.else139.i, %if.then123.i
  %93 = load ptr, ptr %crc.addr.i1, align 8
  %94 = load i64, ptr %93, align 8
  %95 = load ptr, ptr %in.i, align 8
  %call152.i = call i64 @bget4(ptr noundef %95)
  %96 = load i64, ptr %len.i, align 8
  %call153.i = call i64 @crc32_combine(i64 noundef %94, i64 noundef %call152.i, i64 noundef %96) #5
  store i64 %call153.i, ptr %93, align 8
  %97 = load ptr, ptr %tot.addr.i2, align 8
  %98 = load i64, ptr %97, align 8
  %add154.i = add i64 %98, %96
  store i64 %add154.i, ptr %97, align 8
  %call155.i = call i32 @inflateEnd(ptr noundef nonnull %strm.i) #5
  %99 = load ptr, ptr %junk.i, align 8
  call void @free(ptr noundef %99) #5
  %100 = load ptr, ptr %in.i, align 8
  call void @bclose(ptr noundef %100)
  %101 = load i32, ptr %clr.addr.i, align 4
  %tobool156.i.not = icmp eq i32 %101, 0
  br i1 %tobool156.i.not, label %if.then157.i, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_1.exit

if.then157.i:                                     ; preds = %if.end151.i
  %102 = load ptr, ptr %crc.addr.i1, align 8
  %103 = load i64, ptr %102, align 8
  %104 = load ptr, ptr %out.addr.i3, align 8
  call void @put4(i64 noundef %103, ptr noundef %104)
  %105 = load ptr, ptr %tot.addr.i2, align 8
  %106 = load i64, ptr %105, align 8
  call void @put4(i64 noundef %106, ptr noundef %104)
  br label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_1.exit

pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_1.exit: ; preds = %if.end151.i, %if.then157.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %name.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clr.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %crc.addr.i1)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tot.addr.i2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out.addr.i3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %start.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %junk.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len.i)
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %strm.i)
  br label %while.cond, !llvm.loop !6

return:                                           ; preds = %while.cond, %if.then
  ret i32 0
}

declare i32 @"\01_fputs"(ptr noundef, ptr noundef) #1

declare i64 @"\01_fwrite"(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal ptr @bopen(ptr noundef %name) #0 {
entry:
  %in.addr.i = alloca ptr, align 8
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in.addr.i)
  store ptr %6, ptr %in.addr.i, align 8
  %cmp.i.not = icmp eq ptr %6, null
  br i1 %cmp.i.not, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_15.exit, label %if.then.i

if.then.i:                                        ; preds = %if.then7
  %7 = load ptr, ptr %in.addr.i, align 8
  %fd.i = getelementptr inbounds %struct.bin, ptr %7, i64 0, i32 1
  %8 = load i32, ptr %fd.i, align 8
  %cmp1.i.not = icmp eq i32 %8, -1
  br i1 %cmp1.i.not, label %if.end.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i
  %9 = load ptr, ptr %in.addr.i, align 8
  %fd3.i = getelementptr inbounds %struct.bin, ptr %9, i64 0, i32 1
  %10 = load i32, ptr %fd3.i, align 8
  %call.i = call i32 @"\01_close"(i32 noundef %10) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.then.i
  %11 = load ptr, ptr %in.addr.i, align 8
  %buf.i = getelementptr inbounds %struct.bin, ptr %11, i64 0, i32 4
  %12 = load ptr, ptr %buf.i, align 8
  %cmp4.i.not = icmp eq ptr %12, null
  br i1 %cmp4.i.not, label %if.end7.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  %13 = load ptr, ptr %in.addr.i, align 8
  %buf6.i = getelementptr inbounds %struct.bin, ptr %13, i64 0, i32 4
  %14 = load ptr, ptr %buf6.i, align 8
  call void @free(ptr noundef %14) #5
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end.i
  %15 = load ptr, ptr %in.addr.i, align 8
  call void @free(ptr noundef %15) #5
  br label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_15.exit

pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_15.exit: ; preds = %if.then7, %if.end7.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in.addr.i)
  store ptr null, ptr %retval, align 8
  br label %return

if.end8:                                          ; preds = %lor.lhs.false
  %16 = load ptr, ptr %in, align 8
  %left = getelementptr inbounds %struct.bin, ptr %16, i64 0, i32 2
  store i32 0, ptr %left, align 4
  %buf9 = getelementptr inbounds %struct.bin, ptr %16, i64 0, i32 4
  %17 = load ptr, ptr %buf9, align 8
  %next = getelementptr inbounds %struct.bin, ptr %16, i64 0, i32 3
  store ptr %17, ptr %next, align 8
  %18 = load ptr, ptr %name.addr, align 8
  %19 = load ptr, ptr %in, align 8
  store ptr %18, ptr %19, align 8
  store ptr %19, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end8, %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_15.exit, %if.then
  %20 = load ptr, ptr %retval, align 8
  ret ptr %20
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
  %in.addr.i350 = alloca ptr, align 8
  %skip.addr.i351 = alloca i32, align 4
  %left10.i352 = alloca i32, align 4
  %in.addr.i312 = alloca ptr, align 8
  %len.i313 = alloca i64, align 8
  %in.addr.i273 = alloca ptr, align 8
  %len.i274 = alloca i64, align 8
  %in.addr.i221 = alloca ptr, align 8
  %skip.addr.i222 = alloca i32, align 4
  %left10.i223 = alloca i32, align 4
  %in.addr.i183 = alloca ptr, align 8
  %len.i184 = alloca i64, align 8
  %in.addr.i144 = alloca ptr, align 8
  %len.i145 = alloca i64, align 8
  %in.addr.i125 = alloca ptr, align 8
  %skip.addr.i = alloca i32, align 4
  %left10.i = alloca i32, align 4
  %in.addr.i84 = alloca ptr, align 8
  %len.i85 = alloca i64, align 8
  %in.addr.i42 = alloca ptr, align 8
  %len.i43 = alloca i64, align 8
  %in.addr.i3 = alloca ptr, align 8
  %len.i4 = alloca i64, align 8
  %in.addr.i = alloca ptr, align 8
  %len.i = alloca i64, align 8
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len.i)
  store ptr %1, ptr %in.addr.i, align 8
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_16.exit, label %if.end.i

if.end.i:                                         ; preds = %cond.false
  %2 = load ptr, ptr %in.addr.i, align 8
  %left.i = getelementptr inbounds %struct.bin, ptr %2, i64 0, i32 2
  %3 = load i32, ptr %left.i, align 4
  %cmp1.i.not = icmp eq i32 %3, 0
  br i1 %cmp1.i.not, label %if.end3.i, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_16.exit

if.end3.i:                                        ; preds = %if.end.i
  %4 = load ptr, ptr %in.addr.i, align 8
  %buf.i = getelementptr inbounds %struct.bin, ptr %4, i64 0, i32 4
  %5 = load ptr, ptr %buf.i, align 8
  %next.i = getelementptr inbounds %struct.bin, ptr %4, i64 0, i32 3
  store ptr %5, ptr %next.i, align 8
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs.i, %if.end3.i
  %6 = load ptr, ptr %in.addr.i, align 8
  %fd.i = getelementptr inbounds %struct.bin, ptr %6, i64 0, i32 1
  %7 = load i32, ptr %fd.i, align 8
  %buf4.i = getelementptr inbounds %struct.bin, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %buf4.i, align 8
  %left5.i = getelementptr inbounds %struct.bin, ptr %6, i64 0, i32 2
  %9 = load i32, ptr %left5.i, align 4
  %idx.ext.i = zext i32 %9 to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %8, i64 %idx.ext.i
  %10 = load ptr, ptr %in.addr.i, align 8
  %left6.i = getelementptr inbounds %struct.bin, ptr %10, i64 0, i32 2
  %11 = load i32, ptr %left6.i, align 4
  %sub.i = sub i32 32768, %11
  %conv.i = zext i32 %sub.i to i64
  %call.i = call i64 @"\01_read"(i32 noundef %7, ptr noundef %add.ptr.i, i64 noundef %conv.i) #5
  store i64 %call.i, ptr %len.i, align 8
  %cmp7.i = icmp slt i64 %call.i, 0
  br i1 %cmp7.i, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_16.exit, label %if.end10.i

if.end10.i:                                       ; preds = %do.body.i
  %12 = load i64, ptr %len.i, align 8
  %conv11.i = trunc i64 %12 to i32
  %13 = load ptr, ptr %in.addr.i, align 8
  %left12.i = getelementptr inbounds %struct.bin, ptr %13, i64 0, i32 2
  %14 = load i32, ptr %left12.i, align 4
  %add.i = add i32 %14, %conv11.i
  store i32 %add.i, ptr %left12.i, align 4
  %15 = load i64, ptr %len.i, align 8
  %cmp13.i.not = icmp eq i64 %15, 0
  br i1 %cmp13.i.not, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_16.exit, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end10.i
  %16 = load ptr, ptr %in.addr.i, align 8
  %left15.i = getelementptr inbounds %struct.bin, ptr %16, i64 0, i32 2
  %17 = load i32, ptr %left15.i, align 4
  %cmp16.i = icmp ult i32 %17, 32768
  br i1 %cmp16.i, label %do.body.i, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_16.exit, !llvm.loop !8

pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_16.exit: ; preds = %if.end10.i, %land.rhs.i, %do.body.i, %if.end.i, %cond.false
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len.i)
  br label %cond.end

cond.end:                                         ; preds = %entry, %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_16.exit
  %18 = load ptr, ptr %in.addr, align 8
  %left1 = getelementptr inbounds %struct.bin, ptr %18, i64 0, i32 2
  %19 = load i32, ptr %left1, align 4
  %tobool2.not = icmp eq i32 %19, 0
  br i1 %tobool2.not, label %cond.false5, label %cond.true3

cond.true3:                                       ; preds = %cond.end
  %20 = load ptr, ptr %in.addr, align 8
  %left4 = getelementptr inbounds %struct.bin, ptr %20, i64 0, i32 2
  %21 = load i32, ptr %left4, align 4
  %dec = add i32 %21, -1
  store i32 %dec, ptr %left4, align 4
  %next = getelementptr inbounds %struct.bin, ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %next, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %22, i64 1
  store ptr %incdec.ptr, ptr %next, align 8
  %23 = load i8, ptr %22, align 1
  %cmp.not = icmp eq i8 %23, 31
  br i1 %cmp.not, label %lor.lhs.false, label %if.then

cond.false5:                                      ; preds = %cond.end
  %24 = load ptr, ptr %in.addr, align 8
  %25 = load ptr, ptr %24, align 8
  %26 = load ptr, ptr @__stderrp, align 8
  %call.i1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef %25) #5
  call void @exit(i32 noundef 1) #7
  unreachable

lor.lhs.false:                                    ; preds = %cond.true3
  %27 = load ptr, ptr %in.addr, align 8
  %left10 = getelementptr inbounds %struct.bin, ptr %27, i64 0, i32 2
  %28 = load i32, ptr %left10, align 4
  %tobool11.not = icmp eq i32 %28, 0
  br i1 %tobool11.not, label %cond.false13, label %cond.end15

cond.false13:                                     ; preds = %lor.lhs.false
  %29 = load ptr, ptr %in.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in.addr.i3)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len.i4)
  store ptr %29, ptr %in.addr.i3, align 8
  %cmp.i5 = icmp eq ptr %29, null
  br i1 %cmp.i5, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_18.exit, label %if.end.i9

if.end.i9:                                        ; preds = %cond.false13
  %30 = load ptr, ptr %in.addr.i3, align 8
  %left.i7 = getelementptr inbounds %struct.bin, ptr %30, i64 0, i32 2
  %31 = load i32, ptr %left.i7, align 4
  %cmp1.i8.not = icmp eq i32 %31, 0
  br i1 %cmp1.i8.not, label %if.end3.i13, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_18.exit

if.end3.i13:                                      ; preds = %if.end.i9
  %32 = load ptr, ptr %in.addr.i3, align 8
  %buf.i11 = getelementptr inbounds %struct.bin, ptr %32, i64 0, i32 4
  %33 = load ptr, ptr %buf.i11, align 8
  %next.i12 = getelementptr inbounds %struct.bin, ptr %32, i64 0, i32 3
  store ptr %33, ptr %next.i12, align 8
  br label %do.body.i24

do.body.i24:                                      ; preds = %land.rhs.i33, %if.end3.i13
  %34 = load ptr, ptr %in.addr.i3, align 8
  %fd.i14 = getelementptr inbounds %struct.bin, ptr %34, i64 0, i32 1
  %35 = load i32, ptr %fd.i14, align 8
  %buf4.i15 = getelementptr inbounds %struct.bin, ptr %34, i64 0, i32 4
  %36 = load ptr, ptr %buf4.i15, align 8
  %left5.i16 = getelementptr inbounds %struct.bin, ptr %34, i64 0, i32 2
  %37 = load i32, ptr %left5.i16, align 4
  %idx.ext.i17 = zext i32 %37 to i64
  %add.ptr.i18 = getelementptr inbounds i8, ptr %36, i64 %idx.ext.i17
  %38 = load ptr, ptr %in.addr.i3, align 8
  %left6.i19 = getelementptr inbounds %struct.bin, ptr %38, i64 0, i32 2
  %39 = load i32, ptr %left6.i19, align 4
  %sub.i20 = sub i32 32768, %39
  %conv.i21 = zext i32 %sub.i20 to i64
  %call.i22 = call i64 @"\01_read"(i32 noundef %35, ptr noundef %add.ptr.i18, i64 noundef %conv.i21) #5
  store i64 %call.i22, ptr %len.i4, align 8
  %cmp7.i23 = icmp slt i64 %call.i22, 0
  br i1 %cmp7.i23, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_18.exit, label %if.end10.i29

if.end10.i29:                                     ; preds = %do.body.i24
  %40 = load i64, ptr %len.i4, align 8
  %conv11.i26 = trunc i64 %40 to i32
  %41 = load ptr, ptr %in.addr.i3, align 8
  %left12.i27 = getelementptr inbounds %struct.bin, ptr %41, i64 0, i32 2
  %42 = load i32, ptr %left12.i27, align 4
  %add.i28 = add i32 %42, %conv11.i26
  store i32 %add.i28, ptr %left12.i27, align 4
  %43 = load i64, ptr %len.i4, align 8
  %cmp13.i30.not = icmp eq i64 %43, 0
  br i1 %cmp13.i30.not, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_18.exit, label %land.rhs.i33

land.rhs.i33:                                     ; preds = %if.end10.i29
  %44 = load ptr, ptr %in.addr.i3, align 8
  %left15.i31 = getelementptr inbounds %struct.bin, ptr %44, i64 0, i32 2
  %45 = load i32, ptr %left15.i31, align 4
  %cmp16.i32 = icmp ult i32 %45, 32768
  br i1 %cmp16.i32, label %do.body.i24, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_18.exit, !llvm.loop !8

pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_18.exit: ; preds = %if.end10.i29, %land.rhs.i33, %do.body.i24, %if.end.i9, %cond.false13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in.addr.i3)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len.i4)
  br label %cond.end15

cond.end15:                                       ; preds = %lor.lhs.false, %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_18.exit
  %46 = load ptr, ptr %in.addr, align 8
  %left17 = getelementptr inbounds %struct.bin, ptr %46, i64 0, i32 2
  %47 = load i32, ptr %left17, align 4
  %tobool18.not = icmp eq i32 %47, 0
  br i1 %tobool18.not, label %cond.false25, label %cond.true19

cond.true19:                                      ; preds = %cond.end15
  %48 = load ptr, ptr %in.addr, align 8
  %left20 = getelementptr inbounds %struct.bin, ptr %48, i64 0, i32 2
  %49 = load i32, ptr %left20, align 4
  %dec21 = add i32 %49, -1
  store i32 %dec21, ptr %left20, align 4
  %next22 = getelementptr inbounds %struct.bin, ptr %48, i64 0, i32 3
  %50 = load ptr, ptr %next22, align 8
  %incdec.ptr23 = getelementptr inbounds i8, ptr %50, i64 1
  store ptr %incdec.ptr23, ptr %next22, align 8
  %51 = load i8, ptr %50, align 1
  %cmp30.not = icmp eq i8 %51, -117
  br i1 %cmp30.not, label %lor.lhs.false32, label %if.then

cond.false25:                                     ; preds = %cond.end15
  %52 = load ptr, ptr %in.addr, align 8
  %53 = load ptr, ptr %52, align 8
  %54 = load ptr, ptr @__stderrp, align 8
  %call.i40 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %54, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef %53) #5
  call void @exit(i32 noundef 1) #7
  unreachable

lor.lhs.false32:                                  ; preds = %cond.true19
  %55 = load ptr, ptr %in.addr, align 8
  %left33 = getelementptr inbounds %struct.bin, ptr %55, i64 0, i32 2
  %56 = load i32, ptr %left33, align 4
  %tobool34.not = icmp eq i32 %56, 0
  br i1 %tobool34.not, label %cond.false36, label %cond.end38

cond.false36:                                     ; preds = %lor.lhs.false32
  %57 = load ptr, ptr %in.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in.addr.i42)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len.i43)
  store ptr %57, ptr %in.addr.i42, align 8
  %cmp.i44 = icmp eq ptr %57, null
  br i1 %cmp.i44, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_20.exit, label %if.end.i48

if.end.i48:                                       ; preds = %cond.false36
  %58 = load ptr, ptr %in.addr.i42, align 8
  %left.i46 = getelementptr inbounds %struct.bin, ptr %58, i64 0, i32 2
  %59 = load i32, ptr %left.i46, align 4
  %cmp1.i47.not = icmp eq i32 %59, 0
  br i1 %cmp1.i47.not, label %if.end3.i52, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_20.exit

if.end3.i52:                                      ; preds = %if.end.i48
  %60 = load ptr, ptr %in.addr.i42, align 8
  %buf.i50 = getelementptr inbounds %struct.bin, ptr %60, i64 0, i32 4
  %61 = load ptr, ptr %buf.i50, align 8
  %next.i51 = getelementptr inbounds %struct.bin, ptr %60, i64 0, i32 3
  store ptr %61, ptr %next.i51, align 8
  br label %do.body.i63

do.body.i63:                                      ; preds = %land.rhs.i72, %if.end3.i52
  %62 = load ptr, ptr %in.addr.i42, align 8
  %fd.i53 = getelementptr inbounds %struct.bin, ptr %62, i64 0, i32 1
  %63 = load i32, ptr %fd.i53, align 8
  %buf4.i54 = getelementptr inbounds %struct.bin, ptr %62, i64 0, i32 4
  %64 = load ptr, ptr %buf4.i54, align 8
  %left5.i55 = getelementptr inbounds %struct.bin, ptr %62, i64 0, i32 2
  %65 = load i32, ptr %left5.i55, align 4
  %idx.ext.i56 = zext i32 %65 to i64
  %add.ptr.i57 = getelementptr inbounds i8, ptr %64, i64 %idx.ext.i56
  %66 = load ptr, ptr %in.addr.i42, align 8
  %left6.i58 = getelementptr inbounds %struct.bin, ptr %66, i64 0, i32 2
  %67 = load i32, ptr %left6.i58, align 4
  %sub.i59 = sub i32 32768, %67
  %conv.i60 = zext i32 %sub.i59 to i64
  %call.i61 = call i64 @"\01_read"(i32 noundef %63, ptr noundef %add.ptr.i57, i64 noundef %conv.i60) #5
  store i64 %call.i61, ptr %len.i43, align 8
  %cmp7.i62 = icmp slt i64 %call.i61, 0
  br i1 %cmp7.i62, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_20.exit, label %if.end10.i68

if.end10.i68:                                     ; preds = %do.body.i63
  %68 = load i64, ptr %len.i43, align 8
  %conv11.i65 = trunc i64 %68 to i32
  %69 = load ptr, ptr %in.addr.i42, align 8
  %left12.i66 = getelementptr inbounds %struct.bin, ptr %69, i64 0, i32 2
  %70 = load i32, ptr %left12.i66, align 4
  %add.i67 = add i32 %70, %conv11.i65
  store i32 %add.i67, ptr %left12.i66, align 4
  %71 = load i64, ptr %len.i43, align 8
  %cmp13.i69.not = icmp eq i64 %71, 0
  br i1 %cmp13.i69.not, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_20.exit, label %land.rhs.i72

land.rhs.i72:                                     ; preds = %if.end10.i68
  %72 = load ptr, ptr %in.addr.i42, align 8
  %left15.i70 = getelementptr inbounds %struct.bin, ptr %72, i64 0, i32 2
  %73 = load i32, ptr %left15.i70, align 4
  %cmp16.i71 = icmp ult i32 %73, 32768
  br i1 %cmp16.i71, label %do.body.i63, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_20.exit, !llvm.loop !8

pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_20.exit: ; preds = %if.end10.i68, %land.rhs.i72, %do.body.i63, %if.end.i48, %cond.false36
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in.addr.i42)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len.i43)
  br label %cond.end38

cond.end38:                                       ; preds = %lor.lhs.false32, %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_20.exit
  %74 = load ptr, ptr %in.addr, align 8
  %left40 = getelementptr inbounds %struct.bin, ptr %74, i64 0, i32 2
  %75 = load i32, ptr %left40, align 4
  %tobool41.not = icmp eq i32 %75, 0
  br i1 %tobool41.not, label %cond.false48, label %cond.true42

cond.true42:                                      ; preds = %cond.end38
  %76 = load ptr, ptr %in.addr, align 8
  %left43 = getelementptr inbounds %struct.bin, ptr %76, i64 0, i32 2
  %77 = load i32, ptr %left43, align 4
  %dec44 = add i32 %77, -1
  store i32 %dec44, ptr %left43, align 4
  %next45 = getelementptr inbounds %struct.bin, ptr %76, i64 0, i32 3
  %78 = load ptr, ptr %next45, align 8
  %incdec.ptr46 = getelementptr inbounds i8, ptr %78, i64 1
  store ptr %incdec.ptr46, ptr %next45, align 8
  %79 = load i8, ptr %78, align 1
  %cmp53.not = icmp eq i8 %79, 8
  br i1 %cmp53.not, label %if.end, label %if.then

cond.false48:                                     ; preds = %cond.end38
  %80 = load ptr, ptr %in.addr, align 8
  %81 = load ptr, ptr %80, align 8
  %82 = load ptr, ptr @__stderrp, align 8
  %call.i79 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %82, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef %81) #5
  call void @exit(i32 noundef 1) #7
  unreachable

if.then:                                          ; preds = %cond.true42, %cond.true19, %cond.true3
  %83 = load ptr, ptr %in.addr, align 8
  %84 = load ptr, ptr %83, align 8
  %85 = load ptr, ptr @__stderrp, align 8
  %call.i82 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %85, ptr noundef nonnull @.str.8, ptr noundef %84, ptr noundef nonnull @.str.10) #5
  call void @exit(i32 noundef 1) #7
  unreachable

if.end:                                           ; preds = %cond.true42
  %86 = load ptr, ptr %in.addr, align 8
  %left57 = getelementptr inbounds %struct.bin, ptr %86, i64 0, i32 2
  %87 = load i32, ptr %left57, align 4
  %tobool58.not = icmp eq i32 %87, 0
  br i1 %tobool58.not, label %cond.false60, label %cond.end62

cond.false60:                                     ; preds = %if.end
  %88 = load ptr, ptr %in.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in.addr.i84)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len.i85)
  store ptr %88, ptr %in.addr.i84, align 8
  %cmp.i86 = icmp eq ptr %88, null
  br i1 %cmp.i86, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_23.exit, label %if.end.i90

if.end.i90:                                       ; preds = %cond.false60
  %89 = load ptr, ptr %in.addr.i84, align 8
  %left.i88 = getelementptr inbounds %struct.bin, ptr %89, i64 0, i32 2
  %90 = load i32, ptr %left.i88, align 4
  %cmp1.i89.not = icmp eq i32 %90, 0
  br i1 %cmp1.i89.not, label %if.end3.i94, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_23.exit

if.end3.i94:                                      ; preds = %if.end.i90
  %91 = load ptr, ptr %in.addr.i84, align 8
  %buf.i92 = getelementptr inbounds %struct.bin, ptr %91, i64 0, i32 4
  %92 = load ptr, ptr %buf.i92, align 8
  %next.i93 = getelementptr inbounds %struct.bin, ptr %91, i64 0, i32 3
  store ptr %92, ptr %next.i93, align 8
  br label %do.body.i105

do.body.i105:                                     ; preds = %land.rhs.i114, %if.end3.i94
  %93 = load ptr, ptr %in.addr.i84, align 8
  %fd.i95 = getelementptr inbounds %struct.bin, ptr %93, i64 0, i32 1
  %94 = load i32, ptr %fd.i95, align 8
  %buf4.i96 = getelementptr inbounds %struct.bin, ptr %93, i64 0, i32 4
  %95 = load ptr, ptr %buf4.i96, align 8
  %left5.i97 = getelementptr inbounds %struct.bin, ptr %93, i64 0, i32 2
  %96 = load i32, ptr %left5.i97, align 4
  %idx.ext.i98 = zext i32 %96 to i64
  %add.ptr.i99 = getelementptr inbounds i8, ptr %95, i64 %idx.ext.i98
  %97 = load ptr, ptr %in.addr.i84, align 8
  %left6.i100 = getelementptr inbounds %struct.bin, ptr %97, i64 0, i32 2
  %98 = load i32, ptr %left6.i100, align 4
  %sub.i101 = sub i32 32768, %98
  %conv.i102 = zext i32 %sub.i101 to i64
  %call.i103 = call i64 @"\01_read"(i32 noundef %94, ptr noundef %add.ptr.i99, i64 noundef %conv.i102) #5
  store i64 %call.i103, ptr %len.i85, align 8
  %cmp7.i104 = icmp slt i64 %call.i103, 0
  br i1 %cmp7.i104, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_23.exit, label %if.end10.i110

if.end10.i110:                                    ; preds = %do.body.i105
  %99 = load i64, ptr %len.i85, align 8
  %conv11.i107 = trunc i64 %99 to i32
  %100 = load ptr, ptr %in.addr.i84, align 8
  %left12.i108 = getelementptr inbounds %struct.bin, ptr %100, i64 0, i32 2
  %101 = load i32, ptr %left12.i108, align 4
  %add.i109 = add i32 %101, %conv11.i107
  store i32 %add.i109, ptr %left12.i108, align 4
  %102 = load i64, ptr %len.i85, align 8
  %cmp13.i111.not = icmp eq i64 %102, 0
  br i1 %cmp13.i111.not, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_23.exit, label %land.rhs.i114

land.rhs.i114:                                    ; preds = %if.end10.i110
  %103 = load ptr, ptr %in.addr.i84, align 8
  %left15.i112 = getelementptr inbounds %struct.bin, ptr %103, i64 0, i32 2
  %104 = load i32, ptr %left15.i112, align 4
  %cmp16.i113 = icmp ult i32 %104, 32768
  br i1 %cmp16.i113, label %do.body.i105, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_23.exit, !llvm.loop !8

pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_23.exit: ; preds = %if.end10.i110, %land.rhs.i114, %do.body.i105, %if.end.i90, %cond.false60
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in.addr.i84)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len.i85)
  br label %cond.end62

cond.end62:                                       ; preds = %if.end, %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_23.exit
  %105 = load ptr, ptr %in.addr, align 8
  %left64 = getelementptr inbounds %struct.bin, ptr %105, i64 0, i32 2
  %106 = load i32, ptr %left64, align 4
  %tobool65.not = icmp eq i32 %106, 0
  br i1 %tobool65.not, label %cond.false72, label %cond.true66

cond.true66:                                      ; preds = %cond.end62
  %107 = load ptr, ptr %in.addr, align 8
  %left67 = getelementptr inbounds %struct.bin, ptr %107, i64 0, i32 2
  %108 = load i32, ptr %left67, align 4
  %dec68 = add i32 %108, -1
  store i32 %dec68, ptr %left67, align 4
  %next69 = getelementptr inbounds %struct.bin, ptr %107, i64 0, i32 3
  %109 = load ptr, ptr %next69, align 8
  %incdec.ptr70 = getelementptr inbounds i8, ptr %109, i64 1
  store ptr %incdec.ptr70, ptr %next69, align 8
  %110 = load i8, ptr %109, align 1
  %conv71 = zext i8 %110 to i32
  store i32 %conv71, ptr %flags, align 4
  %cmp77.not = icmp ult i8 %110, 32
  br i1 %cmp77.not, label %if.end82, label %if.then79

cond.false72:                                     ; preds = %cond.end62
  %111 = load ptr, ptr %in.addr, align 8
  %112 = load ptr, ptr %111, align 8
  %113 = load ptr, ptr @__stderrp, align 8
  %call.i121 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %113, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef %112) #5
  call void @exit(i32 noundef 1) #7
  unreachable

if.then79:                                        ; preds = %cond.true66
  %114 = load ptr, ptr %in.addr, align 8
  %115 = load ptr, ptr %114, align 8
  %116 = load ptr, ptr @__stderrp, align 8
  %call.i124 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %116, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.11, ptr noundef %115) #5
  call void @exit(i32 noundef 1) #7
  unreachable

if.end82:                                         ; preds = %cond.true66
  %117 = load ptr, ptr %in.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in.addr.i125)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skip.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %left10.i)
  store ptr %117, ptr %in.addr.i125, align 8
  store i32 6, ptr %skip.addr.i, align 4
  %cmp.i126 = icmp eq ptr %117, null
  br i1 %cmp.i126, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_26.exit, label %if.end.i130

if.end.i130:                                      ; preds = %if.end82
  %118 = load i32, ptr %skip.addr.i, align 4
  %119 = load ptr, ptr %in.addr.i125, align 8
  %left.i128 = getelementptr inbounds %struct.bin, ptr %119, i64 0, i32 2
  %120 = load i32, ptr %left.i128, align 4
  %cmp1.i129.not = icmp ugt i32 %118, %120
  br i1 %cmp1.i129.not, label %if.end4.i, label %if.then2.i135

if.then2.i135:                                    ; preds = %if.end.i130
  %121 = load i32, ptr %skip.addr.i, align 4
  %122 = load ptr, ptr %in.addr.i125, align 8
  %left3.i = getelementptr inbounds %struct.bin, ptr %122, i64 0, i32 2
  %123 = load i32, ptr %left3.i, align 4
  %sub.i131 = sub i32 %123, %121
  store i32 %sub.i131, ptr %left3.i, align 4
  %next.i132 = getelementptr inbounds %struct.bin, ptr %122, i64 0, i32 3
  %124 = load ptr, ptr %next.i132, align 8
  %idx.ext.i133 = zext i32 %121 to i64
  %add.ptr.i134 = getelementptr inbounds i8, ptr %124, i64 %idx.ext.i133
  store ptr %add.ptr.i134, ptr %next.i132, align 8
  br label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_26.exit

if.end4.i:                                        ; preds = %if.end.i130
  %125 = load ptr, ptr %in.addr.i125, align 8
  %left5.i136 = getelementptr inbounds %struct.bin, ptr %125, i64 0, i32 2
  %126 = load i32, ptr %left5.i136, align 4
  %127 = load i32, ptr %skip.addr.i, align 4
  %sub6.i = sub i32 %127, %126
  store i32 %sub6.i, ptr %skip.addr.i, align 4
  %left7.i = getelementptr inbounds %struct.bin, ptr %125, i64 0, i32 2
  store i32 0, ptr %left7.i, align 4
  %cmp8.i = icmp ugt i32 %sub6.i, 32768
  br i1 %cmp8.i, label %if.then9.i137, label %if.end26.i

if.then9.i137:                                    ; preds = %if.end4.i
  %128 = load i32, ptr %skip.addr.i, align 4
  %and.i = and i32 %128, 32767
  store i32 %and.i, ptr %left10.i, align 4
  %cmp11.i = icmp eq i32 %and.i, 0
  br i1 %cmp11.i, label %if.then12.i, label %if.end21.i

if.then12.i:                                      ; preds = %if.then9.i137
  %129 = load ptr, ptr %in.addr.i125, align 8
  %fd.i138 = getelementptr inbounds %struct.bin, ptr %129, i64 0, i32 1
  %130 = load i32, ptr %fd.i138, align 8
  %131 = load i32, ptr %skip.addr.i, align 4
  %sub13.i = add i32 %131, -1
  %conv.i139 = zext i32 %sub13.i to i64
  %call.i140 = call i64 @lseek(i32 noundef %130, i64 noundef %conv.i139, i32 noundef 1) #5
  %132 = load ptr, ptr %in.addr.i125, align 8
  %fd14.i = getelementptr inbounds %struct.bin, ptr %132, i64 0, i32 1
  %133 = load i32, ptr %fd14.i, align 8
  %buf.i141 = getelementptr inbounds %struct.bin, ptr %132, i64 0, i32 4
  %134 = load ptr, ptr %buf.i141, align 8
  %call15.i = call i64 @"\01_read"(i32 noundef %133, ptr noundef %134, i64 noundef 1) #5
  %cmp16.i142.not = icmp eq i64 %call15.i, 1
  br i1 %cmp16.i142.not, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_26.exit, label %if.then18.i

if.then18.i:                                      ; preds = %if.then12.i
  %135 = load ptr, ptr %in.addr.i125, align 8
  %136 = load ptr, ptr %135, align 8
  %call19.i = call i32 @bail(ptr noundef nonnull @.str.9, ptr noundef %136)
  br label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_26.exit

if.end21.i:                                       ; preds = %if.then9.i137
  %137 = load ptr, ptr %in.addr.i125, align 8
  %fd22.i = getelementptr inbounds %struct.bin, ptr %137, i64 0, i32 1
  %138 = load i32, ptr %fd22.i, align 8
  %139 = load i32, ptr %skip.addr.i, align 4
  %140 = load i32, ptr %left10.i, align 4
  %sub23.i = sub i32 %139, %140
  %conv24.i = zext i32 %sub23.i to i64
  %call25.i = call i64 @lseek(i32 noundef %138, i64 noundef %conv24.i, i32 noundef 1) #5
  store i32 %140, ptr %skip.addr.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.end21.i, %if.end4.i
  %141 = load ptr, ptr %in.addr.i125, align 8
  %call27.i = call i32 @bload(ptr noundef %141)
  %142 = load i32, ptr %skip.addr.i, align 4
  %left28.i = getelementptr inbounds %struct.bin, ptr %141, i64 0, i32 2
  %143 = load i32, ptr %left28.i, align 4
  %cmp29.i = icmp ugt i32 %142, %143
  br i1 %cmp29.i, label %if.then31.i, label %if.end34.i

if.then31.i:                                      ; preds = %if.end26.i
  %144 = load ptr, ptr %in.addr.i125, align 8
  %145 = load ptr, ptr %144, align 8
  %call33.i = call i32 @bail(ptr noundef nonnull @.str.9, ptr noundef %145)
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then31.i, %if.end26.i
  %146 = load i32, ptr %skip.addr.i, align 4
  %147 = load ptr, ptr %in.addr.i125, align 8
  %left35.i = getelementptr inbounds %struct.bin, ptr %147, i64 0, i32 2
  %148 = load i32, ptr %left35.i, align 4
  %sub36.i = sub i32 %148, %146
  store i32 %sub36.i, ptr %left35.i, align 4
  %next37.i = getelementptr inbounds %struct.bin, ptr %147, i64 0, i32 3
  %149 = load ptr, ptr %next37.i, align 8
  %idx.ext38.i = zext i32 %146 to i64
  %add.ptr39.i = getelementptr inbounds i8, ptr %149, i64 %idx.ext38.i
  store ptr %add.ptr39.i, ptr %next37.i, align 8
  br label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_26.exit

pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_26.exit: ; preds = %if.then12.i, %if.then18.i, %if.end82, %if.then2.i135, %if.end34.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in.addr.i125)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skip.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %left10.i)
  %150 = load i32, ptr %flags, align 4
  %and83 = and i32 %150, 4
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.end126, label %if.then85

if.then85:                                        ; preds = %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_26.exit
  %151 = load ptr, ptr %in.addr, align 8
  %left86 = getelementptr inbounds %struct.bin, ptr %151, i64 0, i32 2
  %152 = load i32, ptr %left86, align 4
  %tobool87.not = icmp eq i32 %152, 0
  br i1 %tobool87.not, label %cond.false89, label %cond.end91

cond.false89:                                     ; preds = %if.then85
  %153 = load ptr, ptr %in.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in.addr.i144)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len.i145)
  store ptr %153, ptr %in.addr.i144, align 8
  %cmp.i146 = icmp eq ptr %153, null
  br i1 %cmp.i146, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_27.exit, label %if.end.i150

if.end.i150:                                      ; preds = %cond.false89
  %154 = load ptr, ptr %in.addr.i144, align 8
  %left.i148 = getelementptr inbounds %struct.bin, ptr %154, i64 0, i32 2
  %155 = load i32, ptr %left.i148, align 4
  %cmp1.i149.not = icmp eq i32 %155, 0
  br i1 %cmp1.i149.not, label %if.end3.i154, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_27.exit

if.end3.i154:                                     ; preds = %if.end.i150
  %156 = load ptr, ptr %in.addr.i144, align 8
  %buf.i152 = getelementptr inbounds %struct.bin, ptr %156, i64 0, i32 4
  %157 = load ptr, ptr %buf.i152, align 8
  %next.i153 = getelementptr inbounds %struct.bin, ptr %156, i64 0, i32 3
  store ptr %157, ptr %next.i153, align 8
  br label %do.body.i165

do.body.i165:                                     ; preds = %land.rhs.i174, %if.end3.i154
  %158 = load ptr, ptr %in.addr.i144, align 8
  %fd.i155 = getelementptr inbounds %struct.bin, ptr %158, i64 0, i32 1
  %159 = load i32, ptr %fd.i155, align 8
  %buf4.i156 = getelementptr inbounds %struct.bin, ptr %158, i64 0, i32 4
  %160 = load ptr, ptr %buf4.i156, align 8
  %left5.i157 = getelementptr inbounds %struct.bin, ptr %158, i64 0, i32 2
  %161 = load i32, ptr %left5.i157, align 4
  %idx.ext.i158 = zext i32 %161 to i64
  %add.ptr.i159 = getelementptr inbounds i8, ptr %160, i64 %idx.ext.i158
  %162 = load ptr, ptr %in.addr.i144, align 8
  %left6.i160 = getelementptr inbounds %struct.bin, ptr %162, i64 0, i32 2
  %163 = load i32, ptr %left6.i160, align 4
  %sub.i161 = sub i32 32768, %163
  %conv.i162 = zext i32 %sub.i161 to i64
  %call.i163 = call i64 @"\01_read"(i32 noundef %159, ptr noundef %add.ptr.i159, i64 noundef %conv.i162) #5
  store i64 %call.i163, ptr %len.i145, align 8
  %cmp7.i164 = icmp slt i64 %call.i163, 0
  br i1 %cmp7.i164, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_27.exit, label %if.end10.i170

if.end10.i170:                                    ; preds = %do.body.i165
  %164 = load i64, ptr %len.i145, align 8
  %conv11.i167 = trunc i64 %164 to i32
  %165 = load ptr, ptr %in.addr.i144, align 8
  %left12.i168 = getelementptr inbounds %struct.bin, ptr %165, i64 0, i32 2
  %166 = load i32, ptr %left12.i168, align 4
  %add.i169 = add i32 %166, %conv11.i167
  store i32 %add.i169, ptr %left12.i168, align 4
  %167 = load i64, ptr %len.i145, align 8
  %cmp13.i171.not = icmp eq i64 %167, 0
  br i1 %cmp13.i171.not, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_27.exit, label %land.rhs.i174

land.rhs.i174:                                    ; preds = %if.end10.i170
  %168 = load ptr, ptr %in.addr.i144, align 8
  %left15.i172 = getelementptr inbounds %struct.bin, ptr %168, i64 0, i32 2
  %169 = load i32, ptr %left15.i172, align 4
  %cmp16.i173 = icmp ult i32 %169, 32768
  br i1 %cmp16.i173, label %do.body.i165, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_27.exit, !llvm.loop !8

pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_27.exit: ; preds = %if.end10.i170, %land.rhs.i174, %do.body.i165, %if.end.i150, %cond.false89
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in.addr.i144)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len.i145)
  br label %cond.end91

cond.end91:                                       ; preds = %if.then85, %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_27.exit
  %170 = load ptr, ptr %in.addr, align 8
  %left93 = getelementptr inbounds %struct.bin, ptr %170, i64 0, i32 2
  %171 = load i32, ptr %left93, align 4
  %tobool94.not = icmp eq i32 %171, 0
  br i1 %tobool94.not, label %cond.false101, label %cond.true95

cond.true95:                                      ; preds = %cond.end91
  %172 = load ptr, ptr %in.addr, align 8
  %left96 = getelementptr inbounds %struct.bin, ptr %172, i64 0, i32 2
  %173 = load i32, ptr %left96, align 4
  %dec97 = add i32 %173, -1
  store i32 %dec97, ptr %left96, align 4
  %next98 = getelementptr inbounds %struct.bin, ptr %172, i64 0, i32 3
  %174 = load ptr, ptr %next98, align 8
  %incdec.ptr99 = getelementptr inbounds i8, ptr %174, i64 1
  store ptr %incdec.ptr99, ptr %next98, align 8
  %175 = load i8, ptr %174, align 1
  %conv100 = zext i8 %175 to i32
  store i32 %conv100, ptr %len, align 4
  %176 = load ptr, ptr %in.addr, align 8
  %left106 = getelementptr inbounds %struct.bin, ptr %176, i64 0, i32 2
  %177 = load i32, ptr %left106, align 4
  %tobool107.not = icmp eq i32 %177, 0
  br i1 %tobool107.not, label %cond.false109, label %cond.end111

cond.false101:                                    ; preds = %cond.end91
  %178 = load ptr, ptr %in.addr, align 8
  %179 = load ptr, ptr %178, align 8
  %180 = load ptr, ptr @__stderrp, align 8
  %call.i181 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %180, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef %179) #5
  call void @exit(i32 noundef 1) #7
  unreachable

cond.false109:                                    ; preds = %cond.true95
  %181 = load ptr, ptr %in.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in.addr.i183)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len.i184)
  store ptr %181, ptr %in.addr.i183, align 8
  %cmp.i185 = icmp eq ptr %181, null
  br i1 %cmp.i185, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_29.exit, label %if.end.i189

if.end.i189:                                      ; preds = %cond.false109
  %182 = load ptr, ptr %in.addr.i183, align 8
  %left.i187 = getelementptr inbounds %struct.bin, ptr %182, i64 0, i32 2
  %183 = load i32, ptr %left.i187, align 4
  %cmp1.i188.not = icmp eq i32 %183, 0
  br i1 %cmp1.i188.not, label %if.end3.i193, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_29.exit

if.end3.i193:                                     ; preds = %if.end.i189
  %184 = load ptr, ptr %in.addr.i183, align 8
  %buf.i191 = getelementptr inbounds %struct.bin, ptr %184, i64 0, i32 4
  %185 = load ptr, ptr %buf.i191, align 8
  %next.i192 = getelementptr inbounds %struct.bin, ptr %184, i64 0, i32 3
  store ptr %185, ptr %next.i192, align 8
  br label %do.body.i204

do.body.i204:                                     ; preds = %land.rhs.i213, %if.end3.i193
  %186 = load ptr, ptr %in.addr.i183, align 8
  %fd.i194 = getelementptr inbounds %struct.bin, ptr %186, i64 0, i32 1
  %187 = load i32, ptr %fd.i194, align 8
  %buf4.i195 = getelementptr inbounds %struct.bin, ptr %186, i64 0, i32 4
  %188 = load ptr, ptr %buf4.i195, align 8
  %left5.i196 = getelementptr inbounds %struct.bin, ptr %186, i64 0, i32 2
  %189 = load i32, ptr %left5.i196, align 4
  %idx.ext.i197 = zext i32 %189 to i64
  %add.ptr.i198 = getelementptr inbounds i8, ptr %188, i64 %idx.ext.i197
  %190 = load ptr, ptr %in.addr.i183, align 8
  %left6.i199 = getelementptr inbounds %struct.bin, ptr %190, i64 0, i32 2
  %191 = load i32, ptr %left6.i199, align 4
  %sub.i200 = sub i32 32768, %191
  %conv.i201 = zext i32 %sub.i200 to i64
  %call.i202 = call i64 @"\01_read"(i32 noundef %187, ptr noundef %add.ptr.i198, i64 noundef %conv.i201) #5
  store i64 %call.i202, ptr %len.i184, align 8
  %cmp7.i203 = icmp slt i64 %call.i202, 0
  br i1 %cmp7.i203, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_29.exit, label %if.end10.i209

if.end10.i209:                                    ; preds = %do.body.i204
  %192 = load i64, ptr %len.i184, align 8
  %conv11.i206 = trunc i64 %192 to i32
  %193 = load ptr, ptr %in.addr.i183, align 8
  %left12.i207 = getelementptr inbounds %struct.bin, ptr %193, i64 0, i32 2
  %194 = load i32, ptr %left12.i207, align 4
  %add.i208 = add i32 %194, %conv11.i206
  store i32 %add.i208, ptr %left12.i207, align 4
  %195 = load i64, ptr %len.i184, align 8
  %cmp13.i210.not = icmp eq i64 %195, 0
  br i1 %cmp13.i210.not, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_29.exit, label %land.rhs.i213

land.rhs.i213:                                    ; preds = %if.end10.i209
  %196 = load ptr, ptr %in.addr.i183, align 8
  %left15.i211 = getelementptr inbounds %struct.bin, ptr %196, i64 0, i32 2
  %197 = load i32, ptr %left15.i211, align 4
  %cmp16.i212 = icmp ult i32 %197, 32768
  br i1 %cmp16.i212, label %do.body.i204, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_29.exit, !llvm.loop !8

pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_29.exit: ; preds = %if.end10.i209, %land.rhs.i213, %do.body.i204, %if.end.i189, %cond.false109
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in.addr.i183)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len.i184)
  br label %cond.end111

cond.end111:                                      ; preds = %cond.true95, %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_29.exit
  %198 = load ptr, ptr %in.addr, align 8
  %left113 = getelementptr inbounds %struct.bin, ptr %198, i64 0, i32 2
  %199 = load i32, ptr %left113, align 4
  %tobool114.not = icmp eq i32 %199, 0
  br i1 %tobool114.not, label %cond.false121, label %cond.true115

cond.true115:                                     ; preds = %cond.end111
  %200 = load ptr, ptr %in.addr, align 8
  %left116 = getelementptr inbounds %struct.bin, ptr %200, i64 0, i32 2
  %201 = load i32, ptr %left116, align 4
  %dec117 = add i32 %201, -1
  store i32 %dec117, ptr %left116, align 4
  %next118 = getelementptr inbounds %struct.bin, ptr %200, i64 0, i32 3
  %202 = load ptr, ptr %next118, align 8
  %incdec.ptr119 = getelementptr inbounds i8, ptr %202, i64 1
  store ptr %incdec.ptr119, ptr %next118, align 8
  %203 = load i8, ptr %202, align 1
  %conv120 = zext i8 %203 to i32
  %shl = shl nuw nsw i32 %conv120, 8
  %204 = load i32, ptr %len, align 4
  %add = add i32 %204, %shl
  store i32 %add, ptr %len, align 4
  %205 = load ptr, ptr %in.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in.addr.i221)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skip.addr.i222)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %left10.i223)
  store ptr %205, ptr %in.addr.i221, align 8
  store i32 %add, ptr %skip.addr.i222, align 4
  %cmp.i224 = icmp eq ptr %205, null
  br i1 %cmp.i224, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_31.exit, label %if.end.i228

cond.false121:                                    ; preds = %cond.end111
  %206 = load ptr, ptr %in.addr, align 8
  %207 = load ptr, ptr %206, align 8
  %208 = load ptr, ptr @__stderrp, align 8
  %call.i220 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %208, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef %207) #5
  call void @exit(i32 noundef 1) #7
  unreachable

if.end.i228:                                      ; preds = %cond.true115
  %209 = load i32, ptr %skip.addr.i222, align 4
  %210 = load ptr, ptr %in.addr.i221, align 8
  %left.i226 = getelementptr inbounds %struct.bin, ptr %210, i64 0, i32 2
  %211 = load i32, ptr %left.i226, align 4
  %cmp1.i227.not = icmp ugt i32 %209, %211
  br i1 %cmp1.i227.not, label %if.end4.i239, label %if.then2.i234

if.then2.i234:                                    ; preds = %if.end.i228
  %212 = load i32, ptr %skip.addr.i222, align 4
  %213 = load ptr, ptr %in.addr.i221, align 8
  %left3.i229 = getelementptr inbounds %struct.bin, ptr %213, i64 0, i32 2
  %214 = load i32, ptr %left3.i229, align 4
  %sub.i230 = sub i32 %214, %212
  store i32 %sub.i230, ptr %left3.i229, align 4
  %next.i231 = getelementptr inbounds %struct.bin, ptr %213, i64 0, i32 3
  %215 = load ptr, ptr %next.i231, align 8
  %idx.ext.i232 = zext i32 %212 to i64
  %add.ptr.i233 = getelementptr inbounds i8, ptr %215, i64 %idx.ext.i232
  store ptr %add.ptr.i233, ptr %next.i231, align 8
  br label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_31.exit

if.end4.i239:                                     ; preds = %if.end.i228
  %216 = load ptr, ptr %in.addr.i221, align 8
  %left5.i235 = getelementptr inbounds %struct.bin, ptr %216, i64 0, i32 2
  %217 = load i32, ptr %left5.i235, align 4
  %218 = load i32, ptr %skip.addr.i222, align 4
  %sub6.i236 = sub i32 %218, %217
  store i32 %sub6.i236, ptr %skip.addr.i222, align 4
  %left7.i237 = getelementptr inbounds %struct.bin, ptr %216, i64 0, i32 2
  store i32 0, ptr %left7.i237, align 4
  %cmp8.i238 = icmp ugt i32 %sub6.i236, 32768
  br i1 %cmp8.i238, label %if.then9.i242, label %if.end26.i263

if.then9.i242:                                    ; preds = %if.end4.i239
  %219 = load i32, ptr %skip.addr.i222, align 4
  %and.i240 = and i32 %219, 32767
  store i32 %and.i240, ptr %left10.i223, align 4
  %cmp11.i241 = icmp eq i32 %and.i240, 0
  br i1 %cmp11.i241, label %if.then12.i251, label %if.end21.i259

if.then12.i251:                                   ; preds = %if.then9.i242
  %220 = load ptr, ptr %in.addr.i221, align 8
  %fd.i243 = getelementptr inbounds %struct.bin, ptr %220, i64 0, i32 1
  %221 = load i32, ptr %fd.i243, align 8
  %222 = load i32, ptr %skip.addr.i222, align 4
  %sub13.i244 = add i32 %222, -1
  %conv.i245 = zext i32 %sub13.i244 to i64
  %call.i246 = call i64 @lseek(i32 noundef %221, i64 noundef %conv.i245, i32 noundef 1) #5
  %223 = load ptr, ptr %in.addr.i221, align 8
  %fd14.i247 = getelementptr inbounds %struct.bin, ptr %223, i64 0, i32 1
  %224 = load i32, ptr %fd14.i247, align 8
  %buf.i248 = getelementptr inbounds %struct.bin, ptr %223, i64 0, i32 4
  %225 = load ptr, ptr %buf.i248, align 8
  %call15.i249 = call i64 @"\01_read"(i32 noundef %224, ptr noundef %225, i64 noundef 1) #5
  %cmp16.i250.not = icmp eq i64 %call15.i249, 1
  br i1 %cmp16.i250.not, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_31.exit, label %if.then18.i253

if.then18.i253:                                   ; preds = %if.then12.i251
  %226 = load ptr, ptr %in.addr.i221, align 8
  %227 = load ptr, ptr %226, align 8
  %call19.i252 = call i32 @bail(ptr noundef nonnull @.str.9, ptr noundef %227)
  br label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_31.exit

if.end21.i259:                                    ; preds = %if.then9.i242
  %228 = load ptr, ptr %in.addr.i221, align 8
  %fd22.i255 = getelementptr inbounds %struct.bin, ptr %228, i64 0, i32 1
  %229 = load i32, ptr %fd22.i255, align 8
  %230 = load i32, ptr %skip.addr.i222, align 4
  %231 = load i32, ptr %left10.i223, align 4
  %sub23.i256 = sub i32 %230, %231
  %conv24.i257 = zext i32 %sub23.i256 to i64
  %call25.i258 = call i64 @lseek(i32 noundef %229, i64 noundef %conv24.i257, i32 noundef 1) #5
  store i32 %231, ptr %skip.addr.i222, align 4
  br label %if.end26.i263

if.end26.i263:                                    ; preds = %if.end21.i259, %if.end4.i239
  %232 = load ptr, ptr %in.addr.i221, align 8
  %call27.i260 = call i32 @bload(ptr noundef %232)
  %233 = load i32, ptr %skip.addr.i222, align 4
  %left28.i261 = getelementptr inbounds %struct.bin, ptr %232, i64 0, i32 2
  %234 = load i32, ptr %left28.i261, align 4
  %cmp29.i262 = icmp ugt i32 %233, %234
  br i1 %cmp29.i262, label %if.then31.i265, label %if.end34.i271

if.then31.i265:                                   ; preds = %if.end26.i263
  %235 = load ptr, ptr %in.addr.i221, align 8
  %236 = load ptr, ptr %235, align 8
  %call33.i264 = call i32 @bail(ptr noundef nonnull @.str.9, ptr noundef %236)
  br label %if.end34.i271

if.end34.i271:                                    ; preds = %if.then31.i265, %if.end26.i263
  %237 = load i32, ptr %skip.addr.i222, align 4
  %238 = load ptr, ptr %in.addr.i221, align 8
  %left35.i266 = getelementptr inbounds %struct.bin, ptr %238, i64 0, i32 2
  %239 = load i32, ptr %left35.i266, align 4
  %sub36.i267 = sub i32 %239, %237
  store i32 %sub36.i267, ptr %left35.i266, align 4
  %next37.i268 = getelementptr inbounds %struct.bin, ptr %238, i64 0, i32 3
  %240 = load ptr, ptr %next37.i268, align 8
  %idx.ext38.i269 = zext i32 %237 to i64
  %add.ptr39.i270 = getelementptr inbounds i8, ptr %240, i64 %idx.ext38.i269
  store ptr %add.ptr39.i270, ptr %next37.i268, align 8
  br label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_31.exit

pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_31.exit: ; preds = %if.then12.i251, %if.then18.i253, %cond.true115, %if.then2.i234, %if.end34.i271
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in.addr.i221)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skip.addr.i222)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %left10.i223)
  br label %if.end126

if.end126:                                        ; preds = %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_31.exit, %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_26.exit
  %241 = load i32, ptr %flags, align 4
  %and127 = and i32 %241, 8
  %tobool128.not = icmp eq i32 %and127, 0
  br i1 %tobool128.not, label %if.end152, label %while.cond

while.cond:                                       ; preds = %cond.true139, %if.end126
  %242 = load ptr, ptr %in.addr, align 8
  %left130 = getelementptr inbounds %struct.bin, ptr %242, i64 0, i32 2
  %243 = load i32, ptr %left130, align 4
  %tobool131.not = icmp eq i32 %243, 0
  br i1 %tobool131.not, label %cond.false133, label %cond.end135

cond.false133:                                    ; preds = %while.cond
  %244 = load ptr, ptr %in.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in.addr.i273)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len.i274)
  store ptr %244, ptr %in.addr.i273, align 8
  %cmp.i275 = icmp eq ptr %244, null
  br i1 %cmp.i275, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_32.exit, label %if.end.i279

if.end.i279:                                      ; preds = %cond.false133
  %245 = load ptr, ptr %in.addr.i273, align 8
  %left.i277 = getelementptr inbounds %struct.bin, ptr %245, i64 0, i32 2
  %246 = load i32, ptr %left.i277, align 4
  %cmp1.i278.not = icmp eq i32 %246, 0
  br i1 %cmp1.i278.not, label %if.end3.i283, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_32.exit

if.end3.i283:                                     ; preds = %if.end.i279
  %247 = load ptr, ptr %in.addr.i273, align 8
  %buf.i281 = getelementptr inbounds %struct.bin, ptr %247, i64 0, i32 4
  %248 = load ptr, ptr %buf.i281, align 8
  %next.i282 = getelementptr inbounds %struct.bin, ptr %247, i64 0, i32 3
  store ptr %248, ptr %next.i282, align 8
  br label %do.body.i294

do.body.i294:                                     ; preds = %land.rhs.i303, %if.end3.i283
  %249 = load ptr, ptr %in.addr.i273, align 8
  %fd.i284 = getelementptr inbounds %struct.bin, ptr %249, i64 0, i32 1
  %250 = load i32, ptr %fd.i284, align 8
  %buf4.i285 = getelementptr inbounds %struct.bin, ptr %249, i64 0, i32 4
  %251 = load ptr, ptr %buf4.i285, align 8
  %left5.i286 = getelementptr inbounds %struct.bin, ptr %249, i64 0, i32 2
  %252 = load i32, ptr %left5.i286, align 4
  %idx.ext.i287 = zext i32 %252 to i64
  %add.ptr.i288 = getelementptr inbounds i8, ptr %251, i64 %idx.ext.i287
  %253 = load ptr, ptr %in.addr.i273, align 8
  %left6.i289 = getelementptr inbounds %struct.bin, ptr %253, i64 0, i32 2
  %254 = load i32, ptr %left6.i289, align 4
  %sub.i290 = sub i32 32768, %254
  %conv.i291 = zext i32 %sub.i290 to i64
  %call.i292 = call i64 @"\01_read"(i32 noundef %250, ptr noundef %add.ptr.i288, i64 noundef %conv.i291) #5
  store i64 %call.i292, ptr %len.i274, align 8
  %cmp7.i293 = icmp slt i64 %call.i292, 0
  br i1 %cmp7.i293, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_32.exit, label %if.end10.i299

if.end10.i299:                                    ; preds = %do.body.i294
  %255 = load i64, ptr %len.i274, align 8
  %conv11.i296 = trunc i64 %255 to i32
  %256 = load ptr, ptr %in.addr.i273, align 8
  %left12.i297 = getelementptr inbounds %struct.bin, ptr %256, i64 0, i32 2
  %257 = load i32, ptr %left12.i297, align 4
  %add.i298 = add i32 %257, %conv11.i296
  store i32 %add.i298, ptr %left12.i297, align 4
  %258 = load i64, ptr %len.i274, align 8
  %cmp13.i300.not = icmp eq i64 %258, 0
  br i1 %cmp13.i300.not, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_32.exit, label %land.rhs.i303

land.rhs.i303:                                    ; preds = %if.end10.i299
  %259 = load ptr, ptr %in.addr.i273, align 8
  %left15.i301 = getelementptr inbounds %struct.bin, ptr %259, i64 0, i32 2
  %260 = load i32, ptr %left15.i301, align 4
  %cmp16.i302 = icmp ult i32 %260, 32768
  br i1 %cmp16.i302, label %do.body.i294, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_32.exit, !llvm.loop !8

pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_32.exit: ; preds = %if.end10.i299, %land.rhs.i303, %do.body.i294, %if.end.i279, %cond.false133
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in.addr.i273)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len.i274)
  br label %cond.end135

cond.end135:                                      ; preds = %while.cond, %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_32.exit
  %261 = load ptr, ptr %in.addr, align 8
  %left137 = getelementptr inbounds %struct.bin, ptr %261, i64 0, i32 2
  %262 = load i32, ptr %left137, align 4
  %tobool138.not = icmp eq i32 %262, 0
  br i1 %tobool138.not, label %cond.false145, label %cond.true139

cond.true139:                                     ; preds = %cond.end135
  %263 = load ptr, ptr %in.addr, align 8
  %left140 = getelementptr inbounds %struct.bin, ptr %263, i64 0, i32 2
  %264 = load i32, ptr %left140, align 4
  %dec141 = add i32 %264, -1
  store i32 %dec141, ptr %left140, align 4
  %next142 = getelementptr inbounds %struct.bin, ptr %263, i64 0, i32 3
  %265 = load ptr, ptr %next142, align 8
  %incdec.ptr143 = getelementptr inbounds i8, ptr %265, i64 1
  store ptr %incdec.ptr143, ptr %next142, align 8
  %266 = load i8, ptr %265, align 1
  %cmp150.not = icmp eq i8 %266, 0
  br i1 %cmp150.not, label %if.end152, label %while.cond, !llvm.loop !9

cond.false145:                                    ; preds = %cond.end135
  %267 = load ptr, ptr %in.addr, align 8
  %268 = load ptr, ptr %267, align 8
  %269 = load ptr, ptr @__stderrp, align 8
  %call.i310 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %269, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef %268) #5
  call void @exit(i32 noundef 1) #7
  unreachable

if.end152:                                        ; preds = %cond.true139, %if.end126
  %270 = load i32, ptr %flags, align 4
  %and153 = and i32 %270, 16
  %tobool154.not = icmp eq i32 %and153, 0
  br i1 %tobool154.not, label %if.end181, label %while.cond156

while.cond156:                                    ; preds = %cond.true166, %if.end152
  %271 = load ptr, ptr %in.addr, align 8
  %left157 = getelementptr inbounds %struct.bin, ptr %271, i64 0, i32 2
  %272 = load i32, ptr %left157, align 4
  %tobool158.not = icmp eq i32 %272, 0
  br i1 %tobool158.not, label %cond.false160, label %cond.end162

cond.false160:                                    ; preds = %while.cond156
  %273 = load ptr, ptr %in.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in.addr.i312)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len.i313)
  store ptr %273, ptr %in.addr.i312, align 8
  %cmp.i314 = icmp eq ptr %273, null
  br i1 %cmp.i314, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_34.exit, label %if.end.i318

if.end.i318:                                      ; preds = %cond.false160
  %274 = load ptr, ptr %in.addr.i312, align 8
  %left.i316 = getelementptr inbounds %struct.bin, ptr %274, i64 0, i32 2
  %275 = load i32, ptr %left.i316, align 4
  %cmp1.i317.not = icmp eq i32 %275, 0
  br i1 %cmp1.i317.not, label %if.end3.i322, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_34.exit

if.end3.i322:                                     ; preds = %if.end.i318
  %276 = load ptr, ptr %in.addr.i312, align 8
  %buf.i320 = getelementptr inbounds %struct.bin, ptr %276, i64 0, i32 4
  %277 = load ptr, ptr %buf.i320, align 8
  %next.i321 = getelementptr inbounds %struct.bin, ptr %276, i64 0, i32 3
  store ptr %277, ptr %next.i321, align 8
  br label %do.body.i333

do.body.i333:                                     ; preds = %land.rhs.i342, %if.end3.i322
  %278 = load ptr, ptr %in.addr.i312, align 8
  %fd.i323 = getelementptr inbounds %struct.bin, ptr %278, i64 0, i32 1
  %279 = load i32, ptr %fd.i323, align 8
  %buf4.i324 = getelementptr inbounds %struct.bin, ptr %278, i64 0, i32 4
  %280 = load ptr, ptr %buf4.i324, align 8
  %left5.i325 = getelementptr inbounds %struct.bin, ptr %278, i64 0, i32 2
  %281 = load i32, ptr %left5.i325, align 4
  %idx.ext.i326 = zext i32 %281 to i64
  %add.ptr.i327 = getelementptr inbounds i8, ptr %280, i64 %idx.ext.i326
  %282 = load ptr, ptr %in.addr.i312, align 8
  %left6.i328 = getelementptr inbounds %struct.bin, ptr %282, i64 0, i32 2
  %283 = load i32, ptr %left6.i328, align 4
  %sub.i329 = sub i32 32768, %283
  %conv.i330 = zext i32 %sub.i329 to i64
  %call.i331 = call i64 @"\01_read"(i32 noundef %279, ptr noundef %add.ptr.i327, i64 noundef %conv.i330) #5
  store i64 %call.i331, ptr %len.i313, align 8
  %cmp7.i332 = icmp slt i64 %call.i331, 0
  br i1 %cmp7.i332, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_34.exit, label %if.end10.i338

if.end10.i338:                                    ; preds = %do.body.i333
  %284 = load i64, ptr %len.i313, align 8
  %conv11.i335 = trunc i64 %284 to i32
  %285 = load ptr, ptr %in.addr.i312, align 8
  %left12.i336 = getelementptr inbounds %struct.bin, ptr %285, i64 0, i32 2
  %286 = load i32, ptr %left12.i336, align 4
  %add.i337 = add i32 %286, %conv11.i335
  store i32 %add.i337, ptr %left12.i336, align 4
  %287 = load i64, ptr %len.i313, align 8
  %cmp13.i339.not = icmp eq i64 %287, 0
  br i1 %cmp13.i339.not, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_34.exit, label %land.rhs.i342

land.rhs.i342:                                    ; preds = %if.end10.i338
  %288 = load ptr, ptr %in.addr.i312, align 8
  %left15.i340 = getelementptr inbounds %struct.bin, ptr %288, i64 0, i32 2
  %289 = load i32, ptr %left15.i340, align 4
  %cmp16.i341 = icmp ult i32 %289, 32768
  br i1 %cmp16.i341, label %do.body.i333, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_34.exit, !llvm.loop !8

pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_34.exit: ; preds = %if.end10.i338, %land.rhs.i342, %do.body.i333, %if.end.i318, %cond.false160
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in.addr.i312)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len.i313)
  br label %cond.end162

cond.end162:                                      ; preds = %while.cond156, %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_34.exit
  %290 = load ptr, ptr %in.addr, align 8
  %left164 = getelementptr inbounds %struct.bin, ptr %290, i64 0, i32 2
  %291 = load i32, ptr %left164, align 4
  %tobool165.not = icmp eq i32 %291, 0
  br i1 %tobool165.not, label %cond.false172, label %cond.true166

cond.true166:                                     ; preds = %cond.end162
  %292 = load ptr, ptr %in.addr, align 8
  %left167 = getelementptr inbounds %struct.bin, ptr %292, i64 0, i32 2
  %293 = load i32, ptr %left167, align 4
  %dec168 = add i32 %293, -1
  store i32 %dec168, ptr %left167, align 4
  %next169 = getelementptr inbounds %struct.bin, ptr %292, i64 0, i32 3
  %294 = load ptr, ptr %next169, align 8
  %incdec.ptr170 = getelementptr inbounds i8, ptr %294, i64 1
  store ptr %incdec.ptr170, ptr %next169, align 8
  %295 = load i8, ptr %294, align 1
  %cmp177.not = icmp eq i8 %295, 0
  br i1 %cmp177.not, label %if.end181, label %while.cond156, !llvm.loop !10

cond.false172:                                    ; preds = %cond.end162
  %296 = load ptr, ptr %in.addr, align 8
  %297 = load ptr, ptr %296, align 8
  %298 = load ptr, ptr @__stderrp, align 8
  %call.i349 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %298, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef %297) #5
  call void @exit(i32 noundef 1) #7
  unreachable

if.end181:                                        ; preds = %cond.true166, %if.end152
  %299 = load i32, ptr %flags, align 4
  %and182 = and i32 %299, 2
  %tobool183.not = icmp eq i32 %and182, 0
  br i1 %tobool183.not, label %if.end185, label %if.then184

if.then184:                                       ; preds = %if.end181
  %300 = load ptr, ptr %in.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in.addr.i350)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skip.addr.i351)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %left10.i352)
  store ptr %300, ptr %in.addr.i350, align 8
  store i32 2, ptr %skip.addr.i351, align 4
  %cmp.i353 = icmp eq ptr %300, null
  br i1 %cmp.i353, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_36.exit, label %if.end.i357

if.end.i357:                                      ; preds = %if.then184
  %301 = load i32, ptr %skip.addr.i351, align 4
  %302 = load ptr, ptr %in.addr.i350, align 8
  %left.i355 = getelementptr inbounds %struct.bin, ptr %302, i64 0, i32 2
  %303 = load i32, ptr %left.i355, align 4
  %cmp1.i356.not = icmp ugt i32 %301, %303
  br i1 %cmp1.i356.not, label %if.end4.i368, label %if.then2.i363

if.then2.i363:                                    ; preds = %if.end.i357
  %304 = load i32, ptr %skip.addr.i351, align 4
  %305 = load ptr, ptr %in.addr.i350, align 8
  %left3.i358 = getelementptr inbounds %struct.bin, ptr %305, i64 0, i32 2
  %306 = load i32, ptr %left3.i358, align 4
  %sub.i359 = sub i32 %306, %304
  store i32 %sub.i359, ptr %left3.i358, align 4
  %next.i360 = getelementptr inbounds %struct.bin, ptr %305, i64 0, i32 3
  %307 = load ptr, ptr %next.i360, align 8
  %idx.ext.i361 = zext i32 %304 to i64
  %add.ptr.i362 = getelementptr inbounds i8, ptr %307, i64 %idx.ext.i361
  store ptr %add.ptr.i362, ptr %next.i360, align 8
  br label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_36.exit

if.end4.i368:                                     ; preds = %if.end.i357
  %308 = load ptr, ptr %in.addr.i350, align 8
  %left5.i364 = getelementptr inbounds %struct.bin, ptr %308, i64 0, i32 2
  %309 = load i32, ptr %left5.i364, align 4
  %310 = load i32, ptr %skip.addr.i351, align 4
  %sub6.i365 = sub i32 %310, %309
  store i32 %sub6.i365, ptr %skip.addr.i351, align 4
  %left7.i366 = getelementptr inbounds %struct.bin, ptr %308, i64 0, i32 2
  store i32 0, ptr %left7.i366, align 4
  %cmp8.i367 = icmp ugt i32 %sub6.i365, 32768
  br i1 %cmp8.i367, label %if.then9.i371, label %if.end26.i392

if.then9.i371:                                    ; preds = %if.end4.i368
  %311 = load i32, ptr %skip.addr.i351, align 4
  %and.i369 = and i32 %311, 32767
  store i32 %and.i369, ptr %left10.i352, align 4
  %cmp11.i370 = icmp eq i32 %and.i369, 0
  br i1 %cmp11.i370, label %if.then12.i380, label %if.end21.i388

if.then12.i380:                                   ; preds = %if.then9.i371
  %312 = load ptr, ptr %in.addr.i350, align 8
  %fd.i372 = getelementptr inbounds %struct.bin, ptr %312, i64 0, i32 1
  %313 = load i32, ptr %fd.i372, align 8
  %314 = load i32, ptr %skip.addr.i351, align 4
  %sub13.i373 = add i32 %314, -1
  %conv.i374 = zext i32 %sub13.i373 to i64
  %call.i375 = call i64 @lseek(i32 noundef %313, i64 noundef %conv.i374, i32 noundef 1) #5
  %315 = load ptr, ptr %in.addr.i350, align 8
  %fd14.i376 = getelementptr inbounds %struct.bin, ptr %315, i64 0, i32 1
  %316 = load i32, ptr %fd14.i376, align 8
  %buf.i377 = getelementptr inbounds %struct.bin, ptr %315, i64 0, i32 4
  %317 = load ptr, ptr %buf.i377, align 8
  %call15.i378 = call i64 @"\01_read"(i32 noundef %316, ptr noundef %317, i64 noundef 1) #5
  %cmp16.i379.not = icmp eq i64 %call15.i378, 1
  br i1 %cmp16.i379.not, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_36.exit, label %if.then18.i382

if.then18.i382:                                   ; preds = %if.then12.i380
  %318 = load ptr, ptr %in.addr.i350, align 8
  %319 = load ptr, ptr %318, align 8
  %call19.i381 = call i32 @bail(ptr noundef nonnull @.str.9, ptr noundef %319)
  br label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_36.exit

if.end21.i388:                                    ; preds = %if.then9.i371
  %320 = load ptr, ptr %in.addr.i350, align 8
  %fd22.i384 = getelementptr inbounds %struct.bin, ptr %320, i64 0, i32 1
  %321 = load i32, ptr %fd22.i384, align 8
  %322 = load i32, ptr %skip.addr.i351, align 4
  %323 = load i32, ptr %left10.i352, align 4
  %sub23.i385 = sub i32 %322, %323
  %conv24.i386 = zext i32 %sub23.i385 to i64
  %call25.i387 = call i64 @lseek(i32 noundef %321, i64 noundef %conv24.i386, i32 noundef 1) #5
  store i32 %323, ptr %skip.addr.i351, align 4
  br label %if.end26.i392

if.end26.i392:                                    ; preds = %if.end21.i388, %if.end4.i368
  %324 = load ptr, ptr %in.addr.i350, align 8
  %call27.i389 = call i32 @bload(ptr noundef %324)
  %325 = load i32, ptr %skip.addr.i351, align 4
  %left28.i390 = getelementptr inbounds %struct.bin, ptr %324, i64 0, i32 2
  %326 = load i32, ptr %left28.i390, align 4
  %cmp29.i391 = icmp ugt i32 %325, %326
  br i1 %cmp29.i391, label %if.then31.i394, label %if.end34.i400

if.then31.i394:                                   ; preds = %if.end26.i392
  %327 = load ptr, ptr %in.addr.i350, align 8
  %328 = load ptr, ptr %327, align 8
  %call33.i393 = call i32 @bail(ptr noundef nonnull @.str.9, ptr noundef %328)
  br label %if.end34.i400

if.end34.i400:                                    ; preds = %if.then31.i394, %if.end26.i392
  %329 = load i32, ptr %skip.addr.i351, align 4
  %330 = load ptr, ptr %in.addr.i350, align 8
  %left35.i395 = getelementptr inbounds %struct.bin, ptr %330, i64 0, i32 2
  %331 = load i32, ptr %left35.i395, align 4
  %sub36.i396 = sub i32 %331, %329
  store i32 %sub36.i396, ptr %left35.i395, align 4
  %next37.i397 = getelementptr inbounds %struct.bin, ptr %330, i64 0, i32 3
  %332 = load ptr, ptr %next37.i397, align 8
  %idx.ext38.i398 = zext i32 %329 to i64
  %add.ptr39.i399 = getelementptr inbounds i8, ptr %332, i64 %idx.ext38.i398
  store ptr %add.ptr39.i399, ptr %next37.i397, align 8
  br label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_36.exit

pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_36.exit: ; preds = %if.then12.i380, %if.then18.i382, %if.then184, %if.then2.i363, %if.end34.i400
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in.addr.i350)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skip.addr.i351)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %left10.i352)
  br label %if.end185

if.end185:                                        ; preds = %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_36.exit, %if.end181
  ret void
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #2

declare i32 @inflateInit2_(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @zpull(ptr noundef %strm, ptr noundef %in) #0 {
entry:
  %in.addr.i = alloca ptr, align 8
  %len.i = alloca i64, align 8
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len.i)
  store ptr %1, ptr %in.addr.i, align 8
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_37.exit, label %if.end.i

if.end.i:                                         ; preds = %if.then
  %2 = load ptr, ptr %in.addr.i, align 8
  %left.i = getelementptr inbounds %struct.bin, ptr %2, i64 0, i32 2
  %3 = load i32, ptr %left.i, align 4
  %cmp1.i.not = icmp eq i32 %3, 0
  br i1 %cmp1.i.not, label %if.end3.i, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_37.exit

if.end3.i:                                        ; preds = %if.end.i
  %4 = load ptr, ptr %in.addr.i, align 8
  %buf.i = getelementptr inbounds %struct.bin, ptr %4, i64 0, i32 4
  %5 = load ptr, ptr %buf.i, align 8
  %next.i = getelementptr inbounds %struct.bin, ptr %4, i64 0, i32 3
  store ptr %5, ptr %next.i, align 8
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs.i, %if.end3.i
  %6 = load ptr, ptr %in.addr.i, align 8
  %fd.i = getelementptr inbounds %struct.bin, ptr %6, i64 0, i32 1
  %7 = load i32, ptr %fd.i, align 8
  %buf4.i = getelementptr inbounds %struct.bin, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %buf4.i, align 8
  %left5.i = getelementptr inbounds %struct.bin, ptr %6, i64 0, i32 2
  %9 = load i32, ptr %left5.i, align 4
  %idx.ext.i = zext i32 %9 to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %8, i64 %idx.ext.i
  %10 = load ptr, ptr %in.addr.i, align 8
  %left6.i = getelementptr inbounds %struct.bin, ptr %10, i64 0, i32 2
  %11 = load i32, ptr %left6.i, align 4
  %sub.i = sub i32 32768, %11
  %conv.i = zext i32 %sub.i to i64
  %call.i = call i64 @"\01_read"(i32 noundef %7, ptr noundef %add.ptr.i, i64 noundef %conv.i) #5
  store i64 %call.i, ptr %len.i, align 8
  %cmp7.i = icmp slt i64 %call.i, 0
  br i1 %cmp7.i, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_37.exit, label %if.end10.i

if.end10.i:                                       ; preds = %do.body.i
  %12 = load i64, ptr %len.i, align 8
  %conv11.i = trunc i64 %12 to i32
  %13 = load ptr, ptr %in.addr.i, align 8
  %left12.i = getelementptr inbounds %struct.bin, ptr %13, i64 0, i32 2
  %14 = load i32, ptr %left12.i, align 4
  %add.i = add i32 %14, %conv11.i
  store i32 %add.i, ptr %left12.i, align 4
  %15 = load i64, ptr %len.i, align 8
  %cmp13.i.not = icmp eq i64 %15, 0
  br i1 %cmp13.i.not, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_37.exit, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end10.i
  %16 = load ptr, ptr %in.addr.i, align 8
  %left15.i = getelementptr inbounds %struct.bin, ptr %16, i64 0, i32 2
  %17 = load i32, ptr %left15.i, align 4
  %cmp16.i = icmp ult i32 %17, 32768
  br i1 %cmp16.i, label %do.body.i, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_37.exit, !llvm.loop !8

pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_37.exit: ; preds = %if.end10.i, %land.rhs.i, %do.body.i, %if.end.i, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len.i)
  br label %if.end

if.end:                                           ; preds = %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_37.exit, %entry
  %18 = load ptr, ptr %in.addr, align 8
  %left1 = getelementptr inbounds %struct.bin, ptr %18, i64 0, i32 2
  %19 = load i32, ptr %left1, align 4
  %cmp2 = icmp eq i32 %19, 0
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %20 = load ptr, ptr %in.addr, align 8
  %21 = load ptr, ptr %20, align 8
  %22 = load ptr, ptr @__stderrp, align 8
  %call.i1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef %21) #5
  call void @exit(i32 noundef 1) #7
  unreachable

if.end5:                                          ; preds = %if.end
  %23 = load ptr, ptr %in.addr, align 8
  %left6 = getelementptr inbounds %struct.bin, ptr %23, i64 0, i32 2
  %24 = load i32, ptr %left6, align 4
  %25 = load ptr, ptr %strm.addr, align 8
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %25, i64 0, i32 1
  store i32 %24, ptr %avail_in, align 8
  %next = getelementptr inbounds %struct.bin, ptr %23, i64 0, i32 3
  %26 = load ptr, ptr %next, align 8
  store ptr %26, ptr %25, align 8
  ret void
}

declare i32 @inflate(ptr noundef, i32 noundef) #1

declare i32 @putc(i32 noundef, ptr noundef) #1

declare i64 @crc32_combine(i64 noundef, i64 noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i64 @bget4(ptr noundef %in) #0 {
entry:
  %in.addr.i81 = alloca ptr, align 8
  %len.i82 = alloca i64, align 8
  %in.addr.i42 = alloca ptr, align 8
  %len.i43 = alloca i64, align 8
  %in.addr.i3 = alloca ptr, align 8
  %len.i4 = alloca i64, align 8
  %in.addr.i = alloca ptr, align 8
  %len.i = alloca i64, align 8
  %in.addr = alloca ptr, align 8
  %val = alloca i64, align 8
  store ptr %in, ptr %in.addr, align 8
  %left = getelementptr inbounds %struct.bin, ptr %in, i64 0, i32 2
  %0 = load i32, ptr %left, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cond.false, label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load ptr, ptr %in.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len.i)
  store ptr %1, ptr %in.addr.i, align 8
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_39.exit, label %if.end.i

if.end.i:                                         ; preds = %cond.false
  %2 = load ptr, ptr %in.addr.i, align 8
  %left.i = getelementptr inbounds %struct.bin, ptr %2, i64 0, i32 2
  %3 = load i32, ptr %left.i, align 4
  %cmp1.i.not = icmp eq i32 %3, 0
  br i1 %cmp1.i.not, label %if.end3.i, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_39.exit

if.end3.i:                                        ; preds = %if.end.i
  %4 = load ptr, ptr %in.addr.i, align 8
  %buf.i = getelementptr inbounds %struct.bin, ptr %4, i64 0, i32 4
  %5 = load ptr, ptr %buf.i, align 8
  %next.i = getelementptr inbounds %struct.bin, ptr %4, i64 0, i32 3
  store ptr %5, ptr %next.i, align 8
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs.i, %if.end3.i
  %6 = load ptr, ptr %in.addr.i, align 8
  %fd.i = getelementptr inbounds %struct.bin, ptr %6, i64 0, i32 1
  %7 = load i32, ptr %fd.i, align 8
  %buf4.i = getelementptr inbounds %struct.bin, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %buf4.i, align 8
  %left5.i = getelementptr inbounds %struct.bin, ptr %6, i64 0, i32 2
  %9 = load i32, ptr %left5.i, align 4
  %idx.ext.i = zext i32 %9 to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %8, i64 %idx.ext.i
  %10 = load ptr, ptr %in.addr.i, align 8
  %left6.i = getelementptr inbounds %struct.bin, ptr %10, i64 0, i32 2
  %11 = load i32, ptr %left6.i, align 4
  %sub.i = sub i32 32768, %11
  %conv.i = zext i32 %sub.i to i64
  %call.i = call i64 @"\01_read"(i32 noundef %7, ptr noundef %add.ptr.i, i64 noundef %conv.i) #5
  store i64 %call.i, ptr %len.i, align 8
  %cmp7.i = icmp slt i64 %call.i, 0
  br i1 %cmp7.i, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_39.exit, label %if.end10.i

if.end10.i:                                       ; preds = %do.body.i
  %12 = load i64, ptr %len.i, align 8
  %conv11.i = trunc i64 %12 to i32
  %13 = load ptr, ptr %in.addr.i, align 8
  %left12.i = getelementptr inbounds %struct.bin, ptr %13, i64 0, i32 2
  %14 = load i32, ptr %left12.i, align 4
  %add.i = add i32 %14, %conv11.i
  store i32 %add.i, ptr %left12.i, align 4
  %15 = load i64, ptr %len.i, align 8
  %cmp13.i.not = icmp eq i64 %15, 0
  br i1 %cmp13.i.not, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_39.exit, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end10.i
  %16 = load ptr, ptr %in.addr.i, align 8
  %left15.i = getelementptr inbounds %struct.bin, ptr %16, i64 0, i32 2
  %17 = load i32, ptr %left15.i, align 4
  %cmp16.i = icmp ult i32 %17, 32768
  br i1 %cmp16.i, label %do.body.i, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_39.exit, !llvm.loop !8

pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_39.exit: ; preds = %if.end10.i, %land.rhs.i, %do.body.i, %if.end.i, %cond.false
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len.i)
  br label %cond.end

cond.end:                                         ; preds = %entry, %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_39.exit
  %18 = load ptr, ptr %in.addr, align 8
  %left1 = getelementptr inbounds %struct.bin, ptr %18, i64 0, i32 2
  %19 = load i32, ptr %left1, align 4
  %tobool2.not = icmp eq i32 %19, 0
  br i1 %tobool2.not, label %cond.false5, label %cond.true3

cond.true3:                                       ; preds = %cond.end
  %20 = load ptr, ptr %in.addr, align 8
  %left4 = getelementptr inbounds %struct.bin, ptr %20, i64 0, i32 2
  %21 = load i32, ptr %left4, align 4
  %dec = add i32 %21, -1
  store i32 %dec, ptr %left4, align 4
  %next = getelementptr inbounds %struct.bin, ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %next, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %22, i64 1
  store ptr %incdec.ptr, ptr %next, align 8
  %23 = load i8, ptr %22, align 1
  %conv9 = zext i8 %23 to i64
  store i64 %conv9, ptr %val, align 8
  %24 = load ptr, ptr %in.addr, align 8
  %left10 = getelementptr inbounds %struct.bin, ptr %24, i64 0, i32 2
  %25 = load i32, ptr %left10, align 4
  %tobool11.not = icmp eq i32 %25, 0
  br i1 %tobool11.not, label %cond.false13, label %cond.end15

cond.false5:                                      ; preds = %cond.end
  %26 = load ptr, ptr %in.addr, align 8
  %27 = load ptr, ptr %26, align 8
  %28 = load ptr, ptr @__stderrp, align 8
  %call.i1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef %27) #5
  call void @exit(i32 noundef 1) #7
  unreachable

cond.false13:                                     ; preds = %cond.true3
  %29 = load ptr, ptr %in.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in.addr.i3)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len.i4)
  store ptr %29, ptr %in.addr.i3, align 8
  %cmp.i5 = icmp eq ptr %29, null
  br i1 %cmp.i5, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_41.exit, label %if.end.i9

if.end.i9:                                        ; preds = %cond.false13
  %30 = load ptr, ptr %in.addr.i3, align 8
  %left.i7 = getelementptr inbounds %struct.bin, ptr %30, i64 0, i32 2
  %31 = load i32, ptr %left.i7, align 4
  %cmp1.i8.not = icmp eq i32 %31, 0
  br i1 %cmp1.i8.not, label %if.end3.i13, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_41.exit

if.end3.i13:                                      ; preds = %if.end.i9
  %32 = load ptr, ptr %in.addr.i3, align 8
  %buf.i11 = getelementptr inbounds %struct.bin, ptr %32, i64 0, i32 4
  %33 = load ptr, ptr %buf.i11, align 8
  %next.i12 = getelementptr inbounds %struct.bin, ptr %32, i64 0, i32 3
  store ptr %33, ptr %next.i12, align 8
  br label %do.body.i24

do.body.i24:                                      ; preds = %land.rhs.i33, %if.end3.i13
  %34 = load ptr, ptr %in.addr.i3, align 8
  %fd.i14 = getelementptr inbounds %struct.bin, ptr %34, i64 0, i32 1
  %35 = load i32, ptr %fd.i14, align 8
  %buf4.i15 = getelementptr inbounds %struct.bin, ptr %34, i64 0, i32 4
  %36 = load ptr, ptr %buf4.i15, align 8
  %left5.i16 = getelementptr inbounds %struct.bin, ptr %34, i64 0, i32 2
  %37 = load i32, ptr %left5.i16, align 4
  %idx.ext.i17 = zext i32 %37 to i64
  %add.ptr.i18 = getelementptr inbounds i8, ptr %36, i64 %idx.ext.i17
  %38 = load ptr, ptr %in.addr.i3, align 8
  %left6.i19 = getelementptr inbounds %struct.bin, ptr %38, i64 0, i32 2
  %39 = load i32, ptr %left6.i19, align 4
  %sub.i20 = sub i32 32768, %39
  %conv.i21 = zext i32 %sub.i20 to i64
  %call.i22 = call i64 @"\01_read"(i32 noundef %35, ptr noundef %add.ptr.i18, i64 noundef %conv.i21) #5
  store i64 %call.i22, ptr %len.i4, align 8
  %cmp7.i23 = icmp slt i64 %call.i22, 0
  br i1 %cmp7.i23, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_41.exit, label %if.end10.i29

if.end10.i29:                                     ; preds = %do.body.i24
  %40 = load i64, ptr %len.i4, align 8
  %conv11.i26 = trunc i64 %40 to i32
  %41 = load ptr, ptr %in.addr.i3, align 8
  %left12.i27 = getelementptr inbounds %struct.bin, ptr %41, i64 0, i32 2
  %42 = load i32, ptr %left12.i27, align 4
  %add.i28 = add i32 %42, %conv11.i26
  store i32 %add.i28, ptr %left12.i27, align 4
  %43 = load i64, ptr %len.i4, align 8
  %cmp13.i30.not = icmp eq i64 %43, 0
  br i1 %cmp13.i30.not, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_41.exit, label %land.rhs.i33

land.rhs.i33:                                     ; preds = %if.end10.i29
  %44 = load ptr, ptr %in.addr.i3, align 8
  %left15.i31 = getelementptr inbounds %struct.bin, ptr %44, i64 0, i32 2
  %45 = load i32, ptr %left15.i31, align 4
  %cmp16.i32 = icmp ult i32 %45, 32768
  br i1 %cmp16.i32, label %do.body.i24, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_41.exit, !llvm.loop !8

pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_41.exit: ; preds = %if.end10.i29, %land.rhs.i33, %do.body.i24, %if.end.i9, %cond.false13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in.addr.i3)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len.i4)
  br label %cond.end15

cond.end15:                                       ; preds = %cond.true3, %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_41.exit
  %46 = load ptr, ptr %in.addr, align 8
  %left17 = getelementptr inbounds %struct.bin, ptr %46, i64 0, i32 2
  %47 = load i32, ptr %left17, align 4
  %tobool18.not = icmp eq i32 %47, 0
  br i1 %tobool18.not, label %cond.false25, label %cond.true19

cond.true19:                                      ; preds = %cond.end15
  %48 = load ptr, ptr %in.addr, align 8
  %left20 = getelementptr inbounds %struct.bin, ptr %48, i64 0, i32 2
  %49 = load i32, ptr %left20, align 4
  %dec21 = add i32 %49, -1
  store i32 %dec21, ptr %left20, align 4
  %next22 = getelementptr inbounds %struct.bin, ptr %48, i64 0, i32 3
  %50 = load ptr, ptr %next22, align 8
  %incdec.ptr23 = getelementptr inbounds i8, ptr %50, i64 1
  store ptr %incdec.ptr23, ptr %next22, align 8
  %51 = load i8, ptr %50, align 1
  %conv30 = zext i8 %51 to i64
  %shl = shl nuw nsw i64 %conv30, 8
  %52 = load i64, ptr %val, align 8
  %add = add i64 %52, %shl
  store i64 %add, ptr %val, align 8
  %53 = load ptr, ptr %in.addr, align 8
  %left31 = getelementptr inbounds %struct.bin, ptr %53, i64 0, i32 2
  %54 = load i32, ptr %left31, align 4
  %tobool32.not = icmp eq i32 %54, 0
  br i1 %tobool32.not, label %cond.false34, label %cond.end36

cond.false25:                                     ; preds = %cond.end15
  %55 = load ptr, ptr %in.addr, align 8
  %56 = load ptr, ptr %55, align 8
  %57 = load ptr, ptr @__stderrp, align 8
  %call.i40 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %57, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef %56) #5
  call void @exit(i32 noundef 1) #7
  unreachable

cond.false34:                                     ; preds = %cond.true19
  %58 = load ptr, ptr %in.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in.addr.i42)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len.i43)
  store ptr %58, ptr %in.addr.i42, align 8
  %cmp.i44 = icmp eq ptr %58, null
  br i1 %cmp.i44, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_43.exit, label %if.end.i48

if.end.i48:                                       ; preds = %cond.false34
  %59 = load ptr, ptr %in.addr.i42, align 8
  %left.i46 = getelementptr inbounds %struct.bin, ptr %59, i64 0, i32 2
  %60 = load i32, ptr %left.i46, align 4
  %cmp1.i47.not = icmp eq i32 %60, 0
  br i1 %cmp1.i47.not, label %if.end3.i52, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_43.exit

if.end3.i52:                                      ; preds = %if.end.i48
  %61 = load ptr, ptr %in.addr.i42, align 8
  %buf.i50 = getelementptr inbounds %struct.bin, ptr %61, i64 0, i32 4
  %62 = load ptr, ptr %buf.i50, align 8
  %next.i51 = getelementptr inbounds %struct.bin, ptr %61, i64 0, i32 3
  store ptr %62, ptr %next.i51, align 8
  br label %do.body.i63

do.body.i63:                                      ; preds = %land.rhs.i72, %if.end3.i52
  %63 = load ptr, ptr %in.addr.i42, align 8
  %fd.i53 = getelementptr inbounds %struct.bin, ptr %63, i64 0, i32 1
  %64 = load i32, ptr %fd.i53, align 8
  %buf4.i54 = getelementptr inbounds %struct.bin, ptr %63, i64 0, i32 4
  %65 = load ptr, ptr %buf4.i54, align 8
  %left5.i55 = getelementptr inbounds %struct.bin, ptr %63, i64 0, i32 2
  %66 = load i32, ptr %left5.i55, align 4
  %idx.ext.i56 = zext i32 %66 to i64
  %add.ptr.i57 = getelementptr inbounds i8, ptr %65, i64 %idx.ext.i56
  %67 = load ptr, ptr %in.addr.i42, align 8
  %left6.i58 = getelementptr inbounds %struct.bin, ptr %67, i64 0, i32 2
  %68 = load i32, ptr %left6.i58, align 4
  %sub.i59 = sub i32 32768, %68
  %conv.i60 = zext i32 %sub.i59 to i64
  %call.i61 = call i64 @"\01_read"(i32 noundef %64, ptr noundef %add.ptr.i57, i64 noundef %conv.i60) #5
  store i64 %call.i61, ptr %len.i43, align 8
  %cmp7.i62 = icmp slt i64 %call.i61, 0
  br i1 %cmp7.i62, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_43.exit, label %if.end10.i68

if.end10.i68:                                     ; preds = %do.body.i63
  %69 = load i64, ptr %len.i43, align 8
  %conv11.i65 = trunc i64 %69 to i32
  %70 = load ptr, ptr %in.addr.i42, align 8
  %left12.i66 = getelementptr inbounds %struct.bin, ptr %70, i64 0, i32 2
  %71 = load i32, ptr %left12.i66, align 4
  %add.i67 = add i32 %71, %conv11.i65
  store i32 %add.i67, ptr %left12.i66, align 4
  %72 = load i64, ptr %len.i43, align 8
  %cmp13.i69.not = icmp eq i64 %72, 0
  br i1 %cmp13.i69.not, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_43.exit, label %land.rhs.i72

land.rhs.i72:                                     ; preds = %if.end10.i68
  %73 = load ptr, ptr %in.addr.i42, align 8
  %left15.i70 = getelementptr inbounds %struct.bin, ptr %73, i64 0, i32 2
  %74 = load i32, ptr %left15.i70, align 4
  %cmp16.i71 = icmp ult i32 %74, 32768
  br i1 %cmp16.i71, label %do.body.i63, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_43.exit, !llvm.loop !8

pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_43.exit: ; preds = %if.end10.i68, %land.rhs.i72, %do.body.i63, %if.end.i48, %cond.false34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in.addr.i42)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len.i43)
  br label %cond.end36

cond.end36:                                       ; preds = %cond.true19, %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_43.exit
  %75 = load ptr, ptr %in.addr, align 8
  %left38 = getelementptr inbounds %struct.bin, ptr %75, i64 0, i32 2
  %76 = load i32, ptr %left38, align 4
  %tobool39.not = icmp eq i32 %76, 0
  br i1 %tobool39.not, label %cond.false46, label %cond.true40

cond.true40:                                      ; preds = %cond.end36
  %77 = load ptr, ptr %in.addr, align 8
  %left41 = getelementptr inbounds %struct.bin, ptr %77, i64 0, i32 2
  %78 = load i32, ptr %left41, align 4
  %dec42 = add i32 %78, -1
  store i32 %dec42, ptr %left41, align 4
  %next43 = getelementptr inbounds %struct.bin, ptr %77, i64 0, i32 3
  %79 = load ptr, ptr %next43, align 8
  %incdec.ptr44 = getelementptr inbounds i8, ptr %79, i64 1
  store ptr %incdec.ptr44, ptr %next43, align 8
  %80 = load i8, ptr %79, align 1
  %conv51 = zext i8 %80 to i64
  %shl52 = shl nuw nsw i64 %conv51, 16
  %81 = load i64, ptr %val, align 8
  %add53 = add i64 %81, %shl52
  store i64 %add53, ptr %val, align 8
  %82 = load ptr, ptr %in.addr, align 8
  %left54 = getelementptr inbounds %struct.bin, ptr %82, i64 0, i32 2
  %83 = load i32, ptr %left54, align 4
  %tobool55.not = icmp eq i32 %83, 0
  br i1 %tobool55.not, label %cond.false57, label %cond.end59

cond.false46:                                     ; preds = %cond.end36
  %84 = load ptr, ptr %in.addr, align 8
  %85 = load ptr, ptr %84, align 8
  %86 = load ptr, ptr @__stderrp, align 8
  %call.i79 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %86, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef %85) #5
  call void @exit(i32 noundef 1) #7
  unreachable

cond.false57:                                     ; preds = %cond.true40
  %87 = load ptr, ptr %in.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in.addr.i81)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len.i82)
  store ptr %87, ptr %in.addr.i81, align 8
  %cmp.i83 = icmp eq ptr %87, null
  br i1 %cmp.i83, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_45.exit, label %if.end.i87

if.end.i87:                                       ; preds = %cond.false57
  %88 = load ptr, ptr %in.addr.i81, align 8
  %left.i85 = getelementptr inbounds %struct.bin, ptr %88, i64 0, i32 2
  %89 = load i32, ptr %left.i85, align 4
  %cmp1.i86.not = icmp eq i32 %89, 0
  br i1 %cmp1.i86.not, label %if.end3.i91, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_45.exit

if.end3.i91:                                      ; preds = %if.end.i87
  %90 = load ptr, ptr %in.addr.i81, align 8
  %buf.i89 = getelementptr inbounds %struct.bin, ptr %90, i64 0, i32 4
  %91 = load ptr, ptr %buf.i89, align 8
  %next.i90 = getelementptr inbounds %struct.bin, ptr %90, i64 0, i32 3
  store ptr %91, ptr %next.i90, align 8
  br label %do.body.i102

do.body.i102:                                     ; preds = %land.rhs.i111, %if.end3.i91
  %92 = load ptr, ptr %in.addr.i81, align 8
  %fd.i92 = getelementptr inbounds %struct.bin, ptr %92, i64 0, i32 1
  %93 = load i32, ptr %fd.i92, align 8
  %buf4.i93 = getelementptr inbounds %struct.bin, ptr %92, i64 0, i32 4
  %94 = load ptr, ptr %buf4.i93, align 8
  %left5.i94 = getelementptr inbounds %struct.bin, ptr %92, i64 0, i32 2
  %95 = load i32, ptr %left5.i94, align 4
  %idx.ext.i95 = zext i32 %95 to i64
  %add.ptr.i96 = getelementptr inbounds i8, ptr %94, i64 %idx.ext.i95
  %96 = load ptr, ptr %in.addr.i81, align 8
  %left6.i97 = getelementptr inbounds %struct.bin, ptr %96, i64 0, i32 2
  %97 = load i32, ptr %left6.i97, align 4
  %sub.i98 = sub i32 32768, %97
  %conv.i99 = zext i32 %sub.i98 to i64
  %call.i100 = call i64 @"\01_read"(i32 noundef %93, ptr noundef %add.ptr.i96, i64 noundef %conv.i99) #5
  store i64 %call.i100, ptr %len.i82, align 8
  %cmp7.i101 = icmp slt i64 %call.i100, 0
  br i1 %cmp7.i101, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_45.exit, label %if.end10.i107

if.end10.i107:                                    ; preds = %do.body.i102
  %98 = load i64, ptr %len.i82, align 8
  %conv11.i104 = trunc i64 %98 to i32
  %99 = load ptr, ptr %in.addr.i81, align 8
  %left12.i105 = getelementptr inbounds %struct.bin, ptr %99, i64 0, i32 2
  %100 = load i32, ptr %left12.i105, align 4
  %add.i106 = add i32 %100, %conv11.i104
  store i32 %add.i106, ptr %left12.i105, align 4
  %101 = load i64, ptr %len.i82, align 8
  %cmp13.i108.not = icmp eq i64 %101, 0
  br i1 %cmp13.i108.not, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_45.exit, label %land.rhs.i111

land.rhs.i111:                                    ; preds = %if.end10.i107
  %102 = load ptr, ptr %in.addr.i81, align 8
  %left15.i109 = getelementptr inbounds %struct.bin, ptr %102, i64 0, i32 2
  %103 = load i32, ptr %left15.i109, align 4
  %cmp16.i110 = icmp ult i32 %103, 32768
  br i1 %cmp16.i110, label %do.body.i102, label %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_45.exit, !llvm.loop !8

pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_45.exit: ; preds = %if.end10.i107, %land.rhs.i111, %do.body.i102, %if.end.i87, %cond.false57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in.addr.i81)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len.i82)
  br label %cond.end59

cond.end59:                                       ; preds = %cond.true40, %pc_inline_source_snapshot_public_repos_zlib_examples_gzjoin_45.exit
  %104 = load ptr, ptr %in.addr, align 8
  %left61 = getelementptr inbounds %struct.bin, ptr %104, i64 0, i32 2
  %105 = load i32, ptr %left61, align 4
  %tobool62.not = icmp eq i32 %105, 0
  br i1 %tobool62.not, label %cond.false69, label %cond.true63

cond.true63:                                      ; preds = %cond.end59
  %106 = load ptr, ptr %in.addr, align 8
  %left64 = getelementptr inbounds %struct.bin, ptr %106, i64 0, i32 2
  %107 = load i32, ptr %left64, align 4
  %dec65 = add i32 %107, -1
  store i32 %dec65, ptr %left64, align 4
  %next66 = getelementptr inbounds %struct.bin, ptr %106, i64 0, i32 3
  %108 = load ptr, ptr %next66, align 8
  %incdec.ptr67 = getelementptr inbounds i8, ptr %108, i64 1
  store ptr %incdec.ptr67, ptr %next66, align 8
  %109 = load i8, ptr %108, align 1
  %conv74 = zext i8 %109 to i64
  %shl75 = shl nuw nsw i64 %conv74, 24
  %110 = load i64, ptr %val, align 8
  %add76 = add i64 %110, %shl75
  store i64 %add76, ptr %val, align 8
  ret i64 %add76

cond.false69:                                     ; preds = %cond.end59
  %111 = load ptr, ptr %in.addr, align 8
  %112 = load ptr, ptr %111, align 8
  %113 = load ptr, ptr @__stderrp, align 8
  %call.i118 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %113, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef %112) #5
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
  br i1 %cmp16, label %do.body, label %do.end, !llvm.loop !8

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
