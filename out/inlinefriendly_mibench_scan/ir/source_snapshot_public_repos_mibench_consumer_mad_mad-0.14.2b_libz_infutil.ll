; ModuleID = './source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/libz/infutil.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/libz/infutil.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.inflate_blocks_state = type { i32, %union.anon, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32, ptr, i32, ptr }

@inflate_mask = global [17 x i32] [i32 0, i32 1, i32 3, i32 7, i32 15, i32 31, i32 63, i32 127, i32 255, i32 511, i32 1023, i32 2047, i32 4095, i32 8191, i32 16383, i32 32767, i32 65535], align 4

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @inflate_flush(ptr noundef %s, ptr noundef %z, i32 noundef %r) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  %r.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %p = alloca ptr, align 8
  %q = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  store ptr %z, ptr %z.addr, align 8
  store i32 %r, ptr %r.addr, align 4
  %0 = load ptr, ptr %z.addr, align 8
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %next_out, align 8
  store ptr %1, ptr %p, align 8
  %2 = load ptr, ptr %s.addr, align 8
  %read = getelementptr inbounds %struct.inflate_blocks_state, ptr %2, i32 0, i32 8
  %3 = load ptr, ptr %read, align 8
  store ptr %3, ptr %q, align 8
  %4 = load ptr, ptr %q, align 8
  %5 = load ptr, ptr %s.addr, align 8
  %write = getelementptr inbounds %struct.inflate_blocks_state, ptr %5, i32 0, i32 9
  %6 = load ptr, ptr %write, align 8
  %cmp = icmp ule ptr %4, %6
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load ptr, ptr %s.addr, align 8
  %write1 = getelementptr inbounds %struct.inflate_blocks_state, ptr %7, i32 0, i32 9
  %8 = load ptr, ptr %write1, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load ptr, ptr %s.addr, align 8
  %end = getelementptr inbounds %struct.inflate_blocks_state, ptr %9, i32 0, i32 7
  %10 = load ptr, ptr %end, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %8, %cond.true ], [ %10, %cond.false ]
  %11 = load ptr, ptr %q, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %cond to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %11 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, ptr %n, align 4
  %12 = load i32, ptr %n, align 4
  %13 = load ptr, ptr %z.addr, align 8
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %13, i32 0, i32 4
  %14 = load i32, ptr %avail_out, align 8
  %cmp2 = icmp ugt i32 %12, %14
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %15 = load ptr, ptr %z.addr, align 8
  %avail_out4 = getelementptr inbounds %struct.z_stream_s, ptr %15, i32 0, i32 4
  %16 = load i32, ptr %avail_out4, align 8
  store i32 %16, ptr %n, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %17 = load i32, ptr %n, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %18 = load i32, ptr %r.addr, align 4
  %cmp5 = icmp eq i32 %18, -5
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %land.lhs.true
  store i32 0, ptr %r.addr, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %land.lhs.true, %if.end
  %19 = load i32, ptr %n, align 4
  %20 = load ptr, ptr %z.addr, align 8
  %avail_out9 = getelementptr inbounds %struct.z_stream_s, ptr %20, i32 0, i32 4
  %21 = load i32, ptr %avail_out9, align 8
  %sub = sub i32 %21, %19
  store i32 %sub, ptr %avail_out9, align 8
  %22 = load i32, ptr %n, align 4
  %conv10 = zext i32 %22 to i64
  %23 = load ptr, ptr %z.addr, align 8
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %23, i32 0, i32 5
  %24 = load i64, ptr %total_out, align 8
  %add = add i64 %24, %conv10
  store i64 %add, ptr %total_out, align 8
  %25 = load ptr, ptr %s.addr, align 8
  %checkfn = getelementptr inbounds %struct.inflate_blocks_state, ptr %25, i32 0, i32 10
  %26 = load ptr, ptr %checkfn, align 8
  %cmp11 = icmp ne ptr %26, null
  br i1 %cmp11, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end8
  %27 = load ptr, ptr %s.addr, align 8
  %checkfn14 = getelementptr inbounds %struct.inflate_blocks_state, ptr %27, i32 0, i32 10
  %28 = load ptr, ptr %checkfn14, align 8
  %29 = load ptr, ptr %s.addr, align 8
  %check = getelementptr inbounds %struct.inflate_blocks_state, ptr %29, i32 0, i32 11
  %30 = load i64, ptr %check, align 8
  %31 = load ptr, ptr %q, align 8
  %32 = load i32, ptr %n, align 4
  %call = call i64 %28(i64 noundef %30, ptr noundef %31, i32 noundef %32)
  %33 = load ptr, ptr %s.addr, align 8
  %check15 = getelementptr inbounds %struct.inflate_blocks_state, ptr %33, i32 0, i32 11
  store i64 %call, ptr %check15, align 8
  %34 = load ptr, ptr %z.addr, align 8
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %34, i32 0, i32 12
  store i64 %call, ptr %adler, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end8
  %35 = load ptr, ptr %p, align 8
  %36 = load ptr, ptr %q, align 8
  %37 = load i32, ptr %n, align 4
  %conv17 = zext i32 %37 to i64
  %38 = load ptr, ptr %p, align 8
  %39 = call i64 @llvm.objectsize.i64.p0(ptr %38, i1 false, i1 true, i1 false)
  %call18 = call ptr @__memcpy_chk(ptr noundef %35, ptr noundef %36, i64 noundef %conv17, i64 noundef %39) #3
  %40 = load i32, ptr %n, align 4
  %41 = load ptr, ptr %p, align 8
  %idx.ext = zext i32 %40 to i64
  %add.ptr = getelementptr inbounds i8, ptr %41, i64 %idx.ext
  store ptr %add.ptr, ptr %p, align 8
  %42 = load i32, ptr %n, align 4
  %43 = load ptr, ptr %q, align 8
  %idx.ext19 = zext i32 %42 to i64
  %add.ptr20 = getelementptr inbounds i8, ptr %43, i64 %idx.ext19
  store ptr %add.ptr20, ptr %q, align 8
  %44 = load ptr, ptr %q, align 8
  %45 = load ptr, ptr %s.addr, align 8
  %end21 = getelementptr inbounds %struct.inflate_blocks_state, ptr %45, i32 0, i32 7
  %46 = load ptr, ptr %end21, align 8
  %cmp22 = icmp eq ptr %44, %46
  br i1 %cmp22, label %if.then24, label %if.end71

if.then24:                                        ; preds = %if.end16
  %47 = load ptr, ptr %s.addr, align 8
  %window = getelementptr inbounds %struct.inflate_blocks_state, ptr %47, i32 0, i32 6
  %48 = load ptr, ptr %window, align 8
  store ptr %48, ptr %q, align 8
  %49 = load ptr, ptr %s.addr, align 8
  %write25 = getelementptr inbounds %struct.inflate_blocks_state, ptr %49, i32 0, i32 9
  %50 = load ptr, ptr %write25, align 8
  %51 = load ptr, ptr %s.addr, align 8
  %end26 = getelementptr inbounds %struct.inflate_blocks_state, ptr %51, i32 0, i32 7
  %52 = load ptr, ptr %end26, align 8
  %cmp27 = icmp eq ptr %50, %52
  br i1 %cmp27, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.then24
  %53 = load ptr, ptr %s.addr, align 8
  %window30 = getelementptr inbounds %struct.inflate_blocks_state, ptr %53, i32 0, i32 6
  %54 = load ptr, ptr %window30, align 8
  %55 = load ptr, ptr %s.addr, align 8
  %write31 = getelementptr inbounds %struct.inflate_blocks_state, ptr %55, i32 0, i32 9
  store ptr %54, ptr %write31, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.then24
  %56 = load ptr, ptr %s.addr, align 8
  %write33 = getelementptr inbounds %struct.inflate_blocks_state, ptr %56, i32 0, i32 9
  %57 = load ptr, ptr %write33, align 8
  %58 = load ptr, ptr %q, align 8
  %sub.ptr.lhs.cast34 = ptrtoint ptr %57 to i64
  %sub.ptr.rhs.cast35 = ptrtoint ptr %58 to i64
  %sub.ptr.sub36 = sub i64 %sub.ptr.lhs.cast34, %sub.ptr.rhs.cast35
  %conv37 = trunc i64 %sub.ptr.sub36 to i32
  store i32 %conv37, ptr %n, align 4
  %59 = load i32, ptr %n, align 4
  %60 = load ptr, ptr %z.addr, align 8
  %avail_out38 = getelementptr inbounds %struct.z_stream_s, ptr %60, i32 0, i32 4
  %61 = load i32, ptr %avail_out38, align 8
  %cmp39 = icmp ugt i32 %59, %61
  br i1 %cmp39, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.end32
  %62 = load ptr, ptr %z.addr, align 8
  %avail_out42 = getelementptr inbounds %struct.z_stream_s, ptr %62, i32 0, i32 4
  %63 = load i32, ptr %avail_out42, align 8
  store i32 %63, ptr %n, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end32
  %64 = load i32, ptr %n, align 4
  %tobool44 = icmp ne i32 %64, 0
  br i1 %tobool44, label %land.lhs.true45, label %if.end49

land.lhs.true45:                                  ; preds = %if.end43
  %65 = load i32, ptr %r.addr, align 4
  %cmp46 = icmp eq i32 %65, -5
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %land.lhs.true45
  store i32 0, ptr %r.addr, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %land.lhs.true45, %if.end43
  %66 = load i32, ptr %n, align 4
  %67 = load ptr, ptr %z.addr, align 8
  %avail_out50 = getelementptr inbounds %struct.z_stream_s, ptr %67, i32 0, i32 4
  %68 = load i32, ptr %avail_out50, align 8
  %sub51 = sub i32 %68, %66
  store i32 %sub51, ptr %avail_out50, align 8
  %69 = load i32, ptr %n, align 4
  %conv52 = zext i32 %69 to i64
  %70 = load ptr, ptr %z.addr, align 8
  %total_out53 = getelementptr inbounds %struct.z_stream_s, ptr %70, i32 0, i32 5
  %71 = load i64, ptr %total_out53, align 8
  %add54 = add i64 %71, %conv52
  store i64 %add54, ptr %total_out53, align 8
  %72 = load ptr, ptr %s.addr, align 8
  %checkfn55 = getelementptr inbounds %struct.inflate_blocks_state, ptr %72, i32 0, i32 10
  %73 = load ptr, ptr %checkfn55, align 8
  %cmp56 = icmp ne ptr %73, null
  br i1 %cmp56, label %if.then58, label %if.end64

if.then58:                                        ; preds = %if.end49
  %74 = load ptr, ptr %s.addr, align 8
  %checkfn59 = getelementptr inbounds %struct.inflate_blocks_state, ptr %74, i32 0, i32 10
  %75 = load ptr, ptr %checkfn59, align 8
  %76 = load ptr, ptr %s.addr, align 8
  %check60 = getelementptr inbounds %struct.inflate_blocks_state, ptr %76, i32 0, i32 11
  %77 = load i64, ptr %check60, align 8
  %78 = load ptr, ptr %q, align 8
  %79 = load i32, ptr %n, align 4
  %call61 = call i64 %75(i64 noundef %77, ptr noundef %78, i32 noundef %79)
  %80 = load ptr, ptr %s.addr, align 8
  %check62 = getelementptr inbounds %struct.inflate_blocks_state, ptr %80, i32 0, i32 11
  store i64 %call61, ptr %check62, align 8
  %81 = load ptr, ptr %z.addr, align 8
  %adler63 = getelementptr inbounds %struct.z_stream_s, ptr %81, i32 0, i32 12
  store i64 %call61, ptr %adler63, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.then58, %if.end49
  %82 = load ptr, ptr %p, align 8
  %83 = load ptr, ptr %q, align 8
  %84 = load i32, ptr %n, align 4
  %conv65 = zext i32 %84 to i64
  %85 = load ptr, ptr %p, align 8
  %86 = call i64 @llvm.objectsize.i64.p0(ptr %85, i1 false, i1 true, i1 false)
  %call66 = call ptr @__memcpy_chk(ptr noundef %82, ptr noundef %83, i64 noundef %conv65, i64 noundef %86) #3
  %87 = load i32, ptr %n, align 4
  %88 = load ptr, ptr %p, align 8
  %idx.ext67 = zext i32 %87 to i64
  %add.ptr68 = getelementptr inbounds i8, ptr %88, i64 %idx.ext67
  store ptr %add.ptr68, ptr %p, align 8
  %89 = load i32, ptr %n, align 4
  %90 = load ptr, ptr %q, align 8
  %idx.ext69 = zext i32 %89 to i64
  %add.ptr70 = getelementptr inbounds i8, ptr %90, i64 %idx.ext69
  store ptr %add.ptr70, ptr %q, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.end64, %if.end16
  %91 = load ptr, ptr %p, align 8
  %92 = load ptr, ptr %z.addr, align 8
  %next_out72 = getelementptr inbounds %struct.z_stream_s, ptr %92, i32 0, i32 3
  store ptr %91, ptr %next_out72, align 8
  %93 = load ptr, ptr %q, align 8
  %94 = load ptr, ptr %s.addr, align 8
  %read73 = getelementptr inbounds %struct.inflate_blocks_state, ptr %94, i32 0, i32 8
  store ptr %93, ptr %read73, align 8
  %95 = load i32, ptr %r.addr, align 4
  ret i32 %95
}

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
