; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_cost_budget/source_snapshot_public_repos_mibench_consumer_mad_mad-0.14.2b_libid3tag_latin1.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/libid3tag/latin1.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: nounwind ssp uwtable
define i64 @id3_latin1_length(ptr noundef %latin1) #0 {
entry:
  %latin1.addr = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  store ptr %latin1, ptr %latin1.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %storemerge = phi ptr [ %latin1, %entry ], [ %incdec.ptr, %while.body ]
  store ptr %storemerge, ptr %ptr, align 8
  %0 = load i8, ptr %storemerge, align 1
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %1, i64 1
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %2 = load ptr, ptr %ptr, align 8
  %3 = load ptr, ptr %latin1.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %2 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  ret i64 %sub.ptr.sub
}

; Function Attrs: nounwind ssp uwtable
define i64 @id3_latin1_size(ptr noundef %latin1) #0 {
entry:
  %call = call i64 @id3_latin1_length(ptr noundef %latin1)
  %add = add i64 %call, 1
  ret i64 %add
}

; Function Attrs: nounwind ssp uwtable
define void @id3_latin1_copy(ptr noundef %dest, ptr noundef %src) #0 {
entry:
  %dest.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  store ptr %dest, ptr %dest.addr, align 8
  store ptr %src, ptr %src.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %0 = load ptr, ptr %src.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %0, i64 1
  store ptr %incdec.ptr, ptr %src.addr, align 8
  %1 = load i8, ptr %0, align 1
  %2 = load ptr, ptr %dest.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i8, ptr %2, i64 1
  store ptr %incdec.ptr1, ptr %dest.addr, align 8
  store i8 %1, ptr %2, align 1
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %while.end, label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define ptr @id3_latin1_duplicate(ptr noundef %src) #0 {
entry:
  %src.addr = alloca ptr, align 8
  %latin1 = alloca ptr, align 8
  store ptr %src, ptr %src.addr, align 8
  %call.i = call i64 @id3_latin1_length(ptr noundef %src)
  %add.i = add i64 %call.i, 1
  %call1 = call ptr @malloc(i64 noundef %add.i) #5
  store ptr %call1, ptr %latin1, align 8
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %latin1, align 8
  %1 = load ptr, ptr %src.addr, align 8
  call void @id3_latin1_copy(ptr noundef %0, ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %latin1, align 8
  ret ptr %2
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define i64 @id3_latin1_decodechar(ptr noundef %latin1, ptr noundef %ucs4) #0 {
entry:
  %0 = load i8, ptr %latin1, align 1
  %conv = zext i8 %0 to i64
  store i64 %conv, ptr %ucs4, align 8
  ret i64 1
}

; Function Attrs: nounwind ssp uwtable
define i64 @id3_latin1_encodechar(ptr noundef %latin1, i64 noundef %ucs4) #0 {
entry:
  %latin1.addr = alloca ptr, align 8
  store ptr %latin1, ptr %latin1.addr, align 8
  %conv = trunc i64 %ucs4 to i8
  store i8 %conv, ptr %latin1, align 1
  %cmp = icmp ugt i64 %ucs4, 255
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %latin1.addr, align 8
  store i8 -73, ptr %0, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 1
}

; Function Attrs: nounwind ssp uwtable
define void @id3_latin1_decode(ptr noundef %latin1, ptr noundef %ucs4) #0 {
entry:
  %latin1.addr = alloca ptr, align 8
  %ucs4.addr = alloca ptr, align 8
  store ptr %latin1, ptr %latin1.addr, align 8
  store ptr %ucs4, ptr %ucs4.addr, align 8
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %0 = load ptr, ptr %latin1.addr, align 8
  %1 = load ptr, ptr %ucs4.addr, align 8
  %2 = load i8, ptr %0, align 1
  %conv.i = zext i8 %2 to i64
  store i64 %conv.i, ptr %1, align 8
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 1
  store ptr %add.ptr, ptr %latin1.addr, align 8
  %3 = load ptr, ptr %ucs4.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %3, i64 1
  store ptr %incdec.ptr, ptr %ucs4.addr, align 8
  %4 = load i64, ptr %3, align 8
  %tobool.not = icmp eq i64 %4, 0
  br i1 %tobool.not, label %do.end, label %do.body, !llvm.loop !9

do.end:                                           ; preds = %do.body
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @id3_latin1_encode(ptr noundef %latin1, ptr noundef %ucs4) #0 {
entry:
  %latin1.addr = alloca ptr, align 8
  %ucs4.addr = alloca ptr, align 8
  store ptr %latin1, ptr %latin1.addr, align 8
  store ptr %ucs4, ptr %ucs4.addr, align 8
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %0 = load ptr, ptr %latin1.addr, align 8
  %1 = load ptr, ptr %ucs4.addr, align 8
  %2 = load i64, ptr %1, align 8
  %call = call i64 @id3_latin1_encodechar(ptr noundef %0, i64 noundef %2)
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %call
  store ptr %add.ptr, ptr %latin1.addr, align 8
  %3 = load ptr, ptr %ucs4.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %3, i64 1
  store ptr %incdec.ptr, ptr %ucs4.addr, align 8
  %4 = load i64, ptr %3, align 8
  %tobool.not = icmp eq i64 %4, 0
  br i1 %tobool.not, label %do.end, label %do.body, !llvm.loop !10

do.end:                                           ; preds = %do.body
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i64 @id3_latin1_put(ptr noundef %ptr, i8 noundef zeroext %latin1) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  %latin1.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  store i8 %latin1, ptr %latin1.addr, align 1
  %tobool.not = icmp eq ptr %ptr, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i8, ptr %latin1.addr, align 1
  %1 = load ptr, ptr %ptr.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i64 1
  store ptr %incdec.ptr, ptr %1, align 8
  store i8 %0, ptr %2, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 1
}

; Function Attrs: nounwind ssp uwtable
define zeroext i8 @id3_latin1_get(ptr noundef %ptr) #0 {
entry:
  %0 = load ptr, ptr %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %0, i64 1
  store ptr %incdec.ptr, ptr %ptr, align 8
  %1 = load i8, ptr %0, align 1
  ret i8 %1
}

; Function Attrs: nounwind ssp uwtable
define i64 @id3_latin1_serialize(ptr noundef %ptr, ptr noundef %ucs4, i32 noundef %terminate) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  %ucs4.addr = alloca ptr, align 8
  %terminate.addr = alloca i32, align 4
  %size = alloca i64, align 8
  %latin1 = alloca [1 x i8], align 1
  %out = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  store ptr %ucs4, ptr %ucs4.addr, align 8
  store i32 %terminate, ptr %terminate.addr, align 4
  store i64 0, ptr %size, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load ptr, ptr %ucs4.addr, align 8
  %1 = load i64, ptr %0, align 8
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  store ptr %latin1, ptr %out, align 8
  %2 = load ptr, ptr %ucs4.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %2, i64 1
  store ptr %incdec.ptr, ptr %ucs4.addr, align 8
  %3 = load i64, ptr %2, align 8
  %call = call i64 @id3_latin1_encodechar(ptr noundef nonnull %latin1, i64 noundef %3)
  %cond = icmp eq i64 %call, 1
  br i1 %cond, label %sw.bb, label %sw.epilog

sw.bb:                                            ; preds = %while.body
  %4 = load ptr, ptr %ptr.addr, align 8
  %5 = load ptr, ptr %out, align 8
  %incdec.ptr1 = getelementptr inbounds i8, ptr %5, i64 1
  store ptr %incdec.ptr1, ptr %out, align 8
  %6 = load i8, ptr %5, align 1
  %call2 = call i64 @id3_latin1_put(ptr noundef %4, i8 noundef zeroext %6)
  %7 = load i64, ptr %size, align 8
  %add = add i64 %7, %call2
  store i64 %add, ptr %size, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.body, %sw.bb
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  %8 = load i32, ptr %terminate.addr, align 4
  %tobool4.not = icmp eq i32 %8, 0
  br i1 %tobool4.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  %9 = load ptr, ptr %ptr.addr, align 8
  %call5 = call i64 @id3_latin1_put(ptr noundef %9, i8 noundef zeroext 0)
  %10 = load i64, ptr %size, align 8
  %add6 = add i64 %10, %call5
  store i64 %add6, ptr %size, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %11 = load i64, ptr %size, align 8
  ret i64 %11
}

; Function Attrs: nounwind ssp uwtable
define ptr @id3_latin1_deserialize(ptr noundef %ptr, i64 noundef %length) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  %end = alloca ptr, align 8
  %latin1ptr = alloca ptr, align 8
  %latin1 = alloca ptr, align 8
  %ucs4 = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  %0 = load ptr, ptr %ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %length
  store ptr %add.ptr, ptr %end, align 8
  %add = add i64 %length, 1
  %call = call ptr @malloc(i64 noundef %add) #5
  store ptr %call, ptr %latin1, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %latin1, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %storemerge = phi ptr [ %1, %if.end ], [ %incdec.ptr, %while.body ]
  store ptr %storemerge, ptr %latin1ptr, align 8
  %2 = load ptr, ptr %end, align 8
  %3 = load ptr, ptr %ptr.addr, align 8
  %4 = load ptr, ptr %3, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %2 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp1 = icmp sgt i64 %sub.ptr.sub, 0
  br i1 %cmp1, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %while.cond
  %5 = load ptr, ptr %ptr.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %incdec.ptr.i = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %incdec.ptr.i, ptr %5, align 8
  %7 = load i8, ptr %6, align 1
  %8 = load ptr, ptr %latin1ptr, align 8
  store i8 %7, ptr %8, align 1
  %tobool = icmp ne i8 %7, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %9 = load ptr, ptr %latin1ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %9, i64 1
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond, %land.rhs
  %10 = load ptr, ptr %latin1ptr, align 8
  store i8 0, ptr %10, align 1
  %11 = load ptr, ptr %latin1, align 8
  %call3 = call i64 @id3_latin1_length(ptr noundef %11)
  %add4 = shl i64 %call3, 3
  %mul5 = add i64 %add4, 8
  %call6 = call ptr @malloc(i64 noundef %mul5) #5
  store ptr %call6, ptr %ucs4, align 8
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %while.end
  %12 = load ptr, ptr %latin1, align 8
  %13 = load ptr, ptr %ucs4, align 8
  call void @id3_latin1_decode(ptr noundef %12, ptr noundef %13)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %while.end
  %14 = load ptr, ptr %latin1, align 8
  call void @free(ptr noundef %14) #6
  %15 = load ptr, ptr %ucs4, align 8
  br label %return

return:                                           ; preds = %entry, %if.end9
  %storemerge1 = phi ptr [ %15, %if.end9 ], [ null, %entry ]
  ret ptr %storemerge1
}

declare void @free(ptr noundef) #2

; Function Attrs: alwaysinline nounwind ssp uwtable
define i64 @pc_inline_source_snapshot_public_repos_mibench_consumer_mad_mad_0_14_2b_libid3tag_latin1_0(ptr noundef %latin1) #3 {
entry:
  %call = call i64 @id3_latin1_length(ptr noundef %latin1)
  %add = add i64 %call, 1
  ret i64 %add
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define i64 @pc_inline_source_snapshot_public_repos_mibench_consumer_mad_mad_0_14_2b_libid3tag_latin1_1(ptr noundef %latin1, ptr noundef %ucs4) #3 {
entry:
  %0 = load i8, ptr %latin1, align 1
  %conv = zext i8 %0 to i64
  store i64 %conv, ptr %ucs4, align 8
  ret i64 1
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define zeroext i8 @pc_inline_source_snapshot_public_repos_mibench_consumer_mad_mad_0_14_2b_libid3tag_latin1_2(ptr noundef %ptr) #3 {
entry:
  %0 = load ptr, ptr %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %0, i64 1
  store ptr %incdec.ptr, ptr %ptr, align 8
  %1 = load i8, ptr %0, align 1
  ret i8 %1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { alwaysinline nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind allocsize(0) }
attributes #6 = { nounwind }

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
