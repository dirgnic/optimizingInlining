; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-mad/latin1.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-mad/latin1.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: nounwind ssp uwtable
define i64 @id3_latin1_length(ptr noundef %latin1) #0 {
entry:
  %latin1.addr = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  store ptr %latin1, ptr %latin1.addr, align 8
  %0 = load ptr, ptr %latin1.addr, align 8
  store ptr %0, ptr %ptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %ptr, align 8
  %2 = load i8, ptr %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %3, i32 1
  store ptr %incdec.ptr, ptr %ptr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %4 = load ptr, ptr %ptr, align 8
  %5 = load ptr, ptr %latin1.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %4 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  ret i64 %sub.ptr.sub
}

; Function Attrs: nounwind ssp uwtable
define i64 @id3_latin1_size(ptr noundef %latin1) #0 {
entry:
  %latin1.addr = alloca ptr, align 8
  store ptr %latin1, ptr %latin1.addr, align 8
  %0 = load ptr, ptr %latin1.addr, align 8
  %call = call i64 @id3_latin1_length(ptr noundef %0)
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

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %src.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %0, i32 1
  store ptr %incdec.ptr, ptr %src.addr, align 8
  %1 = load i8, ptr %0, align 1
  %2 = load ptr, ptr %dest.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i8, ptr %2, i32 1
  store ptr %incdec.ptr1, ptr %dest.addr, align 8
  store i8 %1, ptr %2, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define ptr @id3_latin1_duplicate(ptr noundef %src) #0 {
entry:
  %src.addr = alloca ptr, align 8
  %latin1 = alloca ptr, align 8
  store ptr %src, ptr %src.addr, align 8
  %0 = load ptr, ptr %src.addr, align 8
  %call = call i64 @id3_latin1_size(ptr noundef %0)
  %mul = mul i64 %call, 1
  %call1 = call ptr @malloc(i64 noundef %mul) #3
  store ptr %call1, ptr %latin1, align 8
  %1 = load ptr, ptr %latin1, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %latin1, align 8
  %3 = load ptr, ptr %src.addr, align 8
  call void @id3_latin1_copy(ptr noundef %2, ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %latin1, align 8
  ret ptr %4
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define i64 @id3_latin1_decodechar(ptr noundef %latin1, ptr noundef %ucs4) #0 {
entry:
  %latin1.addr = alloca ptr, align 8
  %ucs4.addr = alloca ptr, align 8
  store ptr %latin1, ptr %latin1.addr, align 8
  store ptr %ucs4, ptr %ucs4.addr, align 8
  %0 = load ptr, ptr %latin1.addr, align 8
  %1 = load i8, ptr %0, align 1
  %conv = zext i8 %1 to i64
  %2 = load ptr, ptr %ucs4.addr, align 8
  store i64 %conv, ptr %2, align 8
  ret i64 1
}

; Function Attrs: nounwind ssp uwtable
define i64 @id3_latin1_encodechar(ptr noundef %latin1, i64 noundef %ucs4) #0 {
entry:
  %latin1.addr = alloca ptr, align 8
  %ucs4.addr = alloca i64, align 8
  store ptr %latin1, ptr %latin1.addr, align 8
  store i64 %ucs4, ptr %ucs4.addr, align 8
  %0 = load i64, ptr %ucs4.addr, align 8
  %conv = trunc i64 %0 to i8
  %1 = load ptr, ptr %latin1.addr, align 8
  store i8 %conv, ptr %1, align 1
  %2 = load i64, ptr %ucs4.addr, align 8
  %cmp = icmp ugt i64 %2, 255
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %latin1.addr, align 8
  store i8 -73, ptr %3, align 1
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

do.body:                                          ; preds = %do.cond, %entry
  %0 = load ptr, ptr %latin1.addr, align 8
  %1 = load ptr, ptr %ucs4.addr, align 8
  %call = call i64 @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_latin1_0(ptr noundef %0, ptr noundef %1)
  %2 = load ptr, ptr %latin1.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 %call
  store ptr %add.ptr, ptr %latin1.addr, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %3 = load ptr, ptr %ucs4.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %3, i32 1
  store ptr %incdec.ptr, ptr %ucs4.addr, align 8
  %4 = load i64, ptr %3, align 8
  %tobool = icmp ne i64 %4, 0
  br i1 %tobool, label %do.body, label %do.end, !llvm.loop !9

do.end:                                           ; preds = %do.cond
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

do.body:                                          ; preds = %do.cond, %entry
  %0 = load ptr, ptr %latin1.addr, align 8
  %1 = load ptr, ptr %ucs4.addr, align 8
  %2 = load i64, ptr %1, align 8
  %call = call i64 @id3_latin1_encodechar(ptr noundef %0, i64 noundef %2)
  %3 = load ptr, ptr %latin1.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %call
  store ptr %add.ptr, ptr %latin1.addr, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %4 = load ptr, ptr %ucs4.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %4, i32 1
  store ptr %incdec.ptr, ptr %ucs4.addr, align 8
  %5 = load i64, ptr %4, align 8
  %tobool = icmp ne i64 %5, 0
  br i1 %tobool, label %do.body, label %do.end, !llvm.loop !10

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i64 @id3_latin1_put(ptr noundef %ptr, i8 noundef zeroext %latin1) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  %latin1.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  store i8 %latin1, ptr %latin1.addr, align 1
  %0 = load ptr, ptr %ptr.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8, ptr %latin1.addr, align 1
  %2 = load ptr, ptr %ptr.addr, align 8
  %3 = load ptr, ptr %2, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %3, i32 1
  store ptr %incdec.ptr, ptr %2, align 8
  store i8 %1, ptr %3, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 1
}

; Function Attrs: nounwind ssp uwtable
define zeroext i8 @id3_latin1_get(ptr noundef %ptr) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  %0 = load ptr, ptr %ptr.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %1, i32 1
  store ptr %incdec.ptr, ptr %0, align 8
  %2 = load i8, ptr %1, align 1
  ret i8 %2
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
  %tobool = icmp ne i64 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay = getelementptr inbounds [1 x i8], ptr %latin1, i64 0, i64 0
  store ptr %arraydecay, ptr %out, align 8
  %2 = load ptr, ptr %ucs4.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %ucs4.addr, align 8
  %3 = load i64, ptr %2, align 8
  %call = call i64 @id3_latin1_encodechar(ptr noundef %arraydecay, i64 noundef %3)
  switch i64 %call, label %sw.epilog [
    i64 1, label %sw.bb
    i64 0, label %sw.bb3
  ]

sw.bb:                                            ; preds = %while.body
  %4 = load ptr, ptr %ptr.addr, align 8
  %5 = load ptr, ptr %out, align 8
  %incdec.ptr1 = getelementptr inbounds i8, ptr %5, i32 1
  store ptr %incdec.ptr1, ptr %out, align 8
  %6 = load i8, ptr %5, align 1
  %call2 = call i64 @id3_latin1_put(ptr noundef %4, i8 noundef zeroext %6)
  %7 = load i64, ptr %size, align 8
  %add = add i64 %7, %call2
  store i64 %add, ptr %size, align 8
  br label %sw.bb3

sw.bb3:                                           ; preds = %while.body, %sw.bb
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.body, %sw.bb3
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  %8 = load i32, ptr %terminate.addr, align 4
  %tobool4 = icmp ne i32 %8, 0
  br i1 %tobool4, label %if.then, label %if.end

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
  %retval = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %end = alloca ptr, align 8
  %latin1ptr = alloca ptr, align 8
  %latin1 = alloca ptr, align 8
  %ucs4 = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  store i64 %length, ptr %length.addr, align 8
  %0 = load ptr, ptr %ptr.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %2 = load i64, ptr %length.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %2
  store ptr %add.ptr, ptr %end, align 8
  %3 = load i64, ptr %length.addr, align 8
  %add = add i64 %3, 1
  %mul = mul i64 %add, 1
  %call = call ptr @malloc(i64 noundef %mul) #3
  store ptr %call, ptr %latin1, align 8
  %4 = load ptr, ptr %latin1, align 8
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %latin1, align 8
  store ptr %5, ptr %latin1ptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %6 = load ptr, ptr %end, align 8
  %7 = load ptr, ptr %ptr.addr, align 8
  %8 = load ptr, ptr %7, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %6 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp1 = icmp sgt i64 %sub.ptr.sub, 0
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %9 = load ptr, ptr %ptr.addr, align 8
  %call2 = call zeroext i8 @id3_latin1_get(ptr noundef %9)
  %10 = load ptr, ptr %latin1ptr, align 8
  store i8 %call2, ptr %10, align 1
  %conv = zext i8 %call2 to i32
  %tobool = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load ptr, ptr %latin1ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %12, i32 1
  store ptr %incdec.ptr, ptr %latin1ptr, align 8
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %land.end
  %13 = load ptr, ptr %latin1ptr, align 8
  store i8 0, ptr %13, align 1
  %14 = load ptr, ptr %latin1, align 8
  %call3 = call i64 @id3_latin1_length(ptr noundef %14)
  %add4 = add i64 %call3, 1
  %mul5 = mul i64 %add4, 8
  %call6 = call ptr @malloc(i64 noundef %mul5) #3
  store ptr %call6, ptr %ucs4, align 8
  %15 = load ptr, ptr %ucs4, align 8
  %tobool7 = icmp ne ptr %15, null
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %while.end
  %16 = load ptr, ptr %latin1, align 8
  %17 = load ptr, ptr %ucs4, align 8
  call void @id3_latin1_decode(ptr noundef %16, ptr noundef %17)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %while.end
  %18 = load ptr, ptr %latin1, align 8
  call void @free(ptr noundef %18)
  %19 = load ptr, ptr %ucs4, align 8
  store ptr %19, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end9, %if.then
  %20 = load ptr, ptr %retval, align 8
  ret ptr %20
}

declare void @free(ptr noundef) #2

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define i64 @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_latin1_0(ptr noundef %latin1, ptr noundef %ucs4)  alwaysinline#0 {
entry:
  %latin1.addr = alloca ptr, align 8
  %ucs4.addr = alloca ptr, align 8
  store ptr %latin1, ptr %latin1.addr, align 8
  store ptr %ucs4, ptr %ucs4.addr, align 8
  %0 = load ptr, ptr %latin1.addr, align 8
  %1 = load i8, ptr %0, align 1
  %conv = zext i8 %1 to i64
  %2 = load ptr, ptr %ucs4.addr, align 8
  store i64 %conv, ptr %2, align 8
  ret i64 1
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
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
