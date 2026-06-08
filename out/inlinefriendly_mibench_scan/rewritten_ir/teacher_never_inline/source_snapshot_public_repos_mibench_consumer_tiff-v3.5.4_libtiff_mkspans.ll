; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_never_inline/source_snapshot_public_repos_mibench_consumer_tiff-v3.5.4_libtiff_mkspans.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/libtiff/mkspans.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

@.str = private unnamed_addr constant [27 x i8] c"static u_char %s[256] = {\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c",\09/* 0x%02x - 0x%02x */\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"\0A};\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"bruns\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"wruns\00", align 1
@str = private unnamed_addr constant [4 x i8] c"\0A};\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @dumparray(ptr noundef %name, ptr noundef %runs) #0 {
entry:
  %retval = alloca i32, align 4
  %runs.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %sep = alloca ptr, align 8
  store ptr %runs, ptr %runs.addr, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, ptr noundef %name) #4
  store ptr @.str.1, ptr %sep, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %if.end ]
  store i32 %storemerge, ptr %i, align 4
  %cmp = icmp slt i32 %storemerge, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load ptr, ptr %sep, align 8
  %1 = load ptr, ptr %runs.addr, align 8
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %idxprom
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %call1 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.2, ptr noundef %0, i32 noundef %conv) #4
  %add = add nsw i32 %2, 1
  %4 = and i32 %add, 15
  %cmp2 = icmp eq i32 %4, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %sub = add nsw i32 %5, -15
  %call4 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.3, i32 noundef %sub, i32 noundef %5) #4
  br label %if.end

if.end:                                           ; preds = %for.body, %if.then
  %storemerge1 = phi ptr [ @.str.1, %if.then ], [ @.str.4, %for.body ]
  store ptr %storemerge1, ptr %sep, align 8
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %puts = call i32 @puts(ptr nonnull @str)
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %runs = alloca [2 x [256 x i8]], align 1
  %run = alloca i32, align 4
  %runlen = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %runs, i8 0, i64 256, i1 false)
  %arrayidx1 = getelementptr inbounds [2 x [256 x i8]], ptr %runs, i64 0, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %arrayidx1, i8 0, i64 256, i1 false)
  store i32 1, ptr %runlen, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %storemerge = phi i32 [ 128, %entry ], [ %or14, %for.end ]
  store i32 %storemerge, ptr %run, align 4
  %cmp.not = icmp eq i32 %storemerge, 255
  br i1 %cmp.not, label %for.end15, label %for.body

for.body:                                         ; preds = %for.cond
  %0 = load i32, ptr %run, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.body5, %for.body
  %storemerge1.in = phi i32 [ %0, %for.body ], [ %7, %for.body5 ]
  %storemerge1 = add nsw i32 %storemerge1.in, -1
  store i32 %storemerge1, ptr %i, align 4
  %cmp4 = icmp sgt i32 %storemerge1.in, 0
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %1 = load i32, ptr %runlen, align 4
  %conv = trunc i32 %1 to i8
  %2 = load i32, ptr %run, align 4
  %3 = load i32, ptr %i, align 4
  %or = or i32 %2, %3
  %idxprom = sext i32 %or to i64
  %arrayidx7 = getelementptr inbounds [2 x [256 x i8]], ptr %runs, i64 0, i64 1, i64 %idxprom
  store i8 %conv, ptr %arrayidx7, align 1
  %4 = load i32, ptr %runlen, align 4
  %conv8 = trunc i32 %4 to i8
  %5 = load i32, ptr %run, align 4
  %6 = load i32, ptr %i, align 4
  %or10 = or i32 %5, %6
  %neg = and i32 %or10, 255
  %and = xor i32 %neg, 255
  %idxprom11 = zext i32 %and to i64
  %arrayidx12 = getelementptr inbounds [256 x i8], ptr %runs, i64 0, i64 %idxprom11
  store i8 %conv8, ptr %arrayidx12, align 1
  %7 = load i32, ptr %i, align 4
  br label %for.cond3, !llvm.loop !8

for.end:                                          ; preds = %for.cond3
  %8 = load i32, ptr %runlen, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %runlen, align 4
  %9 = load i32, ptr %run, align 4
  %shr = ashr i32 %9, 1
  %or14 = or i32 %shr, 128
  br label %for.cond, !llvm.loop !9

for.end15:                                        ; preds = %for.cond
  store i8 8, ptr %runs, align 1
  %arrayidx19 = getelementptr inbounds [2 x [256 x i8]], ptr %runs, i64 0, i64 1, i64 255
  store i8 8, ptr %arrayidx19, align 1
  %call = call i32 @dumparray(ptr noundef nonnull @.str.6, ptr noundef nonnull %runs)
  %arrayidx22 = getelementptr inbounds [2 x [256 x i8]], ptr %runs, i64 0, i64 1
  %call24 = call i32 @dumparray(ptr noundef nonnull @.str.7, ptr noundef nonnull %arrayidx22)
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) #3

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind }

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
