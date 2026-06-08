; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-mad/ucs4.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-mad/ucs4.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

@id3_ucs4_empty = constant [1 x i64] zeroinitializer, align 8

; Function Attrs: nounwind ssp uwtable
define i64 @id3_ucs4_length(ptr noundef %ucs4) #0 {
entry:
  %ucs4.addr = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  store ptr %ucs4, ptr %ucs4.addr, align 8
  %0 = load ptr, ptr %ucs4.addr, align 8
  store ptr %0, ptr %ptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %ptr, align 8
  %2 = load i64, ptr %1, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %ptr, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %3, i32 1
  store ptr %incdec.ptr, ptr %ptr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %4 = load ptr, ptr %ptr, align 8
  %5 = load ptr, ptr %ucs4.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %4 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  ret i64 %sub.ptr.div
}

; Function Attrs: nounwind ssp uwtable
define i64 @id3_ucs4_size(ptr noundef %ucs4) #0 {
entry:
  %ucs4.addr = alloca ptr, align 8
  store ptr %ucs4, ptr %ucs4.addr, align 8
  %0 = load ptr, ptr %ucs4.addr, align 8
  %call = call i64 @id3_ucs4_length(ptr noundef %0)
  %add = add i64 %call, 1
  ret i64 %add
}

; Function Attrs: nounwind ssp uwtable
define i64 @id3_ucs4_latin1size(ptr noundef %ucs4) #0 {
entry:
  %ucs4.addr = alloca ptr, align 8
  store ptr %ucs4, ptr %ucs4.addr, align 8
  %0 = load ptr, ptr %ucs4.addr, align 8
  %call = call i64 @id3_ucs4_size(ptr noundef %0)
  ret i64 %call
}

; Function Attrs: nounwind ssp uwtable
define i64 @id3_ucs4_utf16size(ptr noundef %ucs4) #0 {
entry:
  %ucs4.addr = alloca ptr, align 8
  %size = alloca i64, align 8
  store ptr %ucs4, ptr %ucs4.addr, align 8
  store i64 0, ptr %size, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load ptr, ptr %ucs4.addr, align 8
  %1 = load i64, ptr %0, align 8
  %tobool = icmp ne i64 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i64, ptr %size, align 8
  %inc = add i64 %2, 1
  store i64 %inc, ptr %size, align 8
  %3 = load ptr, ptr %ucs4.addr, align 8
  %4 = load i64, ptr %3, align 8
  %cmp = icmp uge i64 %4, 65536
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %5 = load ptr, ptr %ucs4.addr, align 8
  %6 = load i64, ptr %5, align 8
  %cmp1 = icmp ule i64 %6, 1114111
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load i64, ptr %size, align 8
  %inc2 = add i64 %7, 1
  store i64 %inc2, ptr %size, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.body
  %8 = load ptr, ptr %ucs4.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %8, i32 1
  store ptr %incdec.ptr, ptr %ucs4.addr, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %9 = load i64, ptr %size, align 8
  %add = add i64 %9, 1
  ret i64 %add
}

; Function Attrs: nounwind ssp uwtable
define i64 @id3_ucs4_utf8size(ptr noundef %ucs4) #0 {
entry:
  %ucs4.addr = alloca ptr, align 8
  %size = alloca i64, align 8
  store ptr %ucs4, ptr %ucs4.addr, align 8
  store i64 0, ptr %size, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end26, %entry
  %0 = load ptr, ptr %ucs4.addr, align 8
  %1 = load i64, ptr %0, align 8
  %tobool = icmp ne i64 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %ucs4.addr, align 8
  %3 = load i64, ptr %2, align 8
  %cmp = icmp ule i64 %3, 127
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %4 = load i64, ptr %size, align 8
  %add = add i64 %4, 1
  store i64 %add, ptr %size, align 8
  br label %if.end26

if.else:                                          ; preds = %while.body
  %5 = load ptr, ptr %ucs4.addr, align 8
  %6 = load i64, ptr %5, align 8
  %cmp1 = icmp ule i64 %6, 2047
  br i1 %cmp1, label %if.then2, label %if.else4

if.then2:                                         ; preds = %if.else
  %7 = load i64, ptr %size, align 8
  %add3 = add i64 %7, 2
  store i64 %add3, ptr %size, align 8
  br label %if.end25

if.else4:                                         ; preds = %if.else
  %8 = load ptr, ptr %ucs4.addr, align 8
  %9 = load i64, ptr %8, align 8
  %cmp5 = icmp ule i64 %9, 65535
  br i1 %cmp5, label %if.then6, label %if.else8

if.then6:                                         ; preds = %if.else4
  %10 = load i64, ptr %size, align 8
  %add7 = add i64 %10, 3
  store i64 %add7, ptr %size, align 8
  br label %if.end24

if.else8:                                         ; preds = %if.else4
  %11 = load ptr, ptr %ucs4.addr, align 8
  %12 = load i64, ptr %11, align 8
  %cmp9 = icmp ule i64 %12, 2097151
  br i1 %cmp9, label %if.then10, label %if.else12

if.then10:                                        ; preds = %if.else8
  %13 = load i64, ptr %size, align 8
  %add11 = add i64 %13, 4
  store i64 %add11, ptr %size, align 8
  br label %if.end23

if.else12:                                        ; preds = %if.else8
  %14 = load ptr, ptr %ucs4.addr, align 8
  %15 = load i64, ptr %14, align 8
  %cmp13 = icmp ule i64 %15, 67108863
  br i1 %cmp13, label %if.then14, label %if.else16

if.then14:                                        ; preds = %if.else12
  %16 = load i64, ptr %size, align 8
  %add15 = add i64 %16, 5
  store i64 %add15, ptr %size, align 8
  br label %if.end22

if.else16:                                        ; preds = %if.else12
  %17 = load ptr, ptr %ucs4.addr, align 8
  %18 = load i64, ptr %17, align 8
  %cmp17 = icmp ule i64 %18, 2147483647
  br i1 %cmp17, label %if.then18, label %if.else20

if.then18:                                        ; preds = %if.else16
  %19 = load i64, ptr %size, align 8
  %add19 = add i64 %19, 6
  store i64 %add19, ptr %size, align 8
  br label %if.end

if.else20:                                        ; preds = %if.else16
  %20 = load i64, ptr %size, align 8
  %add21 = add i64 %20, 2
  store i64 %add21, ptr %size, align 8
  br label %if.end

if.end:                                           ; preds = %if.else20, %if.then18
  br label %if.end22

if.end22:                                         ; preds = %if.end, %if.then14
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then10
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then6
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then2
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then
  %21 = load ptr, ptr %ucs4.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %21, i32 1
  store ptr %incdec.ptr, ptr %ucs4.addr, align 8
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %22 = load i64, ptr %size, align 8
  %add27 = add i64 %22, 1
  ret i64 %add27
}

; Function Attrs: nounwind ssp uwtable
define ptr @id3_ucs4_latin1duplicate(ptr noundef %ucs4) #0 {
entry:
  %ucs4.addr = alloca ptr, align 8
  %latin1 = alloca ptr, align 8
  store ptr %ucs4, ptr %ucs4.addr, align 8
  %0 = load ptr, ptr %ucs4.addr, align 8
  %call = call i64 @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_ucs4_0(ptr noundef %0)
  %mul = mul i64 %call, 1
  %call1 = call ptr @malloc(i64 noundef %mul) #3
  store ptr %call1, ptr %latin1, align 8
  %1 = load ptr, ptr %latin1, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %latin1, align 8
  %3 = load ptr, ptr %ucs4.addr, align 8
  call void @id3_latin1_encode(ptr noundef %2, ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %latin1, align 8
  ret ptr %4
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

declare void @id3_latin1_encode(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define ptr @id3_ucs4_utf16duplicate(ptr noundef %ucs4) #0 {
entry:
  %ucs4.addr = alloca ptr, align 8
  %utf16 = alloca ptr, align 8
  store ptr %ucs4, ptr %ucs4.addr, align 8
  %0 = load ptr, ptr %ucs4.addr, align 8
  %call = call i64 @id3_ucs4_utf16size(ptr noundef %0)
  %mul = mul i64 %call, 2
  %call1 = call ptr @malloc(i64 noundef %mul) #3
  store ptr %call1, ptr %utf16, align 8
  %1 = load ptr, ptr %utf16, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %utf16, align 8
  %3 = load ptr, ptr %ucs4.addr, align 8
  call void @id3_utf16_encode(ptr noundef %2, ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %utf16, align 8
  ret ptr %4
}

declare void @id3_utf16_encode(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define ptr @id3_ucs4_utf8duplicate(ptr noundef %ucs4) #0 {
entry:
  %ucs4.addr = alloca ptr, align 8
  %utf8 = alloca ptr, align 8
  store ptr %ucs4, ptr %ucs4.addr, align 8
  %0 = load ptr, ptr %ucs4.addr, align 8
  %call = call i64 @id3_ucs4_utf8size(ptr noundef %0)
  %mul = mul i64 %call, 1
  %call1 = call ptr @malloc(i64 noundef %mul) #3
  store ptr %call1, ptr %utf8, align 8
  %1 = load ptr, ptr %utf8, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %utf8, align 8
  %3 = load ptr, ptr %ucs4.addr, align 8
  call void @id3_utf8_encode(ptr noundef %2, ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %utf8, align 8
  ret ptr %4
}

declare void @id3_utf8_encode(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define void @id3_ucs4_copy(ptr noundef %dest, ptr noundef %src) #0 {
entry:
  %dest.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  store ptr %dest, ptr %dest.addr, align 8
  store ptr %src, ptr %src.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %src.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %0, i32 1
  store ptr %incdec.ptr, ptr %src.addr, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load ptr, ptr %dest.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i64, ptr %2, i32 1
  store ptr %incdec.ptr1, ptr %dest.addr, align 8
  store i64 %1, ptr %2, align 8
  %tobool = icmp ne i64 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define ptr @id3_ucs4_duplicate(ptr noundef %src) #0 {
entry:
  %src.addr = alloca ptr, align 8
  %ucs4 = alloca ptr, align 8
  store ptr %src, ptr %src.addr, align 8
  %0 = load ptr, ptr %src.addr, align 8
  %call = call i64 @id3_ucs4_size(ptr noundef %0)
  %mul = mul i64 %call, 8
  %call1 = call ptr @malloc(i64 noundef %mul) #3
  store ptr %call1, ptr %ucs4, align 8
  %1 = load ptr, ptr %ucs4, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %ucs4, align 8
  %3 = load ptr, ptr %src.addr, align 8
  call void @id3_ucs4_copy(ptr noundef %2, ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %ucs4, align 8
  ret ptr %4
}

; Function Attrs: nounwind ssp uwtable
define void @id3_ucs4_putnumber(ptr noundef %ucs4, i64 noundef %number) #0 {
entry:
  %ucs4.addr = alloca ptr, align 8
  %number.addr = alloca i64, align 8
  %digits = alloca [10 x i32], align 4
  %digit = alloca ptr, align 8
  store ptr %ucs4, ptr %ucs4.addr, align 8
  store i64 %number, ptr %number.addr, align 8
  %arraydecay = getelementptr inbounds [10 x i32], ptr %digits, i64 0, i64 0
  store ptr %arraydecay, ptr %digit, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i64, ptr %number.addr, align 8
  %rem = urem i64 %0, 10
  %conv = trunc i64 %rem to i32
  %1 = load ptr, ptr %digit, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i32 1
  store ptr %incdec.ptr, ptr %digit, align 8
  store i32 %conv, ptr %1, align 4
  %2 = load i64, ptr %number.addr, align 8
  %div = udiv i64 %2, 10
  store i64 %div, ptr %number.addr, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %3 = load i64, ptr %number.addr, align 8
  %tobool = icmp ne i64 %3, 0
  br i1 %tobool, label %do.body, label %do.end, !llvm.loop !11

do.end:                                           ; preds = %do.cond
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end
  %4 = load ptr, ptr %digit, align 8
  %arraydecay1 = getelementptr inbounds [10 x i32], ptr %digits, i64 0, i64 0
  %cmp = icmp ne ptr %4, %arraydecay1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %digit, align 8
  %incdec.ptr3 = getelementptr inbounds i32, ptr %5, i32 -1
  store ptr %incdec.ptr3, ptr %digit, align 8
  %6 = load i32, ptr %incdec.ptr3, align 4
  %add = add nsw i32 48, %6
  %conv4 = sext i32 %add to i64
  %7 = load ptr, ptr %ucs4.addr, align 8
  %incdec.ptr5 = getelementptr inbounds i64, ptr %7, i32 1
  store ptr %incdec.ptr5, ptr %ucs4.addr, align 8
  store i64 %conv4, ptr %7, align 8
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  %8 = load ptr, ptr %ucs4.addr, align 8
  store i64 0, ptr %8, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i64 @id3_ucs4_getnumber(ptr noundef %ucs4) #0 {
entry:
  %ucs4.addr = alloca ptr, align 8
  %number = alloca i64, align 8
  store ptr %ucs4, ptr %ucs4.addr, align 8
  store i64 0, ptr %number, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %ucs4.addr, align 8
  %1 = load i64, ptr %0, align 8
  %cmp = icmp uge i64 %1, 48
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load ptr, ptr %ucs4.addr, align 8
  %3 = load i64, ptr %2, align 8
  %cmp1 = icmp ule i64 %3, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load i64, ptr %number, align 8
  %mul = mul i64 10, %5
  %6 = load ptr, ptr %ucs4.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %6, i32 1
  store ptr %incdec.ptr, ptr %ucs4.addr, align 8
  %7 = load i64, ptr %6, align 8
  %sub = sub i64 %7, 48
  %add = add i64 %mul, %sub
  store i64 %add, ptr %number, align 8
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %land.end
  %8 = load i64, ptr %number, align 8
  ret i64 %8
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define i64 @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_ucs4_0(ptr noundef %ucs4)  alwaysinline#0 {
entry:
  %ucs4.addr = alloca ptr, align 8
  store ptr %ucs4, ptr %ucs4.addr, align 8
  %0 = load ptr, ptr %ucs4.addr, align 8
  %call = call i64 @id3_ucs4_size(ptr noundef %0)
  ret i64 %call
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
!13 = distinct !{!13, !7}
