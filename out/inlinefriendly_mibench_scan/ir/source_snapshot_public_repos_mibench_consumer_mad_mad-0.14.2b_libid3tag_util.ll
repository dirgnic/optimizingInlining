; ModuleID = './source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/libid3tag/util.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/libid3tag/util.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @id3_util_unsynchronise(ptr noundef %data, i64 noundef %length) #0 {
entry:
  %retval = alloca i64, align 8
  %data.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %count = alloca i64, align 8
  %end = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8
  store i64 %length, ptr %length.addr, align 8
  store i64 0, ptr %bytes, align 8
  %0 = load ptr, ptr %data.addr, align 8
  %1 = load i64, ptr %length.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %1
  store ptr %add.ptr, ptr %end, align 8
  %2 = load i64, ptr %length.addr, align 8
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %data.addr, align 8
  store ptr %3, ptr %ptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load ptr, ptr %ptr, align 8
  %5 = load ptr, ptr %end, align 8
  %add.ptr1 = getelementptr inbounds i8, ptr %5, i64 -1
  %cmp2 = icmp ult ptr %4, %add.ptr1
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %ptr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 0
  %7 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %cmp3 = icmp eq i32 %conv, 255
  br i1 %cmp3, label %land.lhs.true, label %if.end14

land.lhs.true:                                    ; preds = %for.body
  %8 = load ptr, ptr %ptr, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %8, i64 1
  %9 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %9 to i32
  %cmp7 = icmp eq i32 %conv6, 0
  br i1 %cmp7, label %if.then13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %10 = load ptr, ptr %ptr, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %10, i64 1
  %11 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %11 to i32
  %and = and i32 %conv10, 224
  %cmp11 = icmp eq i32 %and, 224
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %12 = load i64, ptr %bytes, align 8
  %inc = add i64 %12, 1
  store i64 %inc, ptr %bytes, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %lor.lhs.false, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end14
  %13 = load ptr, ptr %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %13, i32 1
  store ptr %incdec.ptr, ptr %ptr, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %14 = load i64, ptr %bytes, align 8
  %tobool = icmp ne i64 %14, 0
  br i1 %tobool, label %if.then15, label %if.end44

if.then15:                                        ; preds = %for.end
  %15 = load ptr, ptr %end, align 8
  store ptr %15, ptr %ptr, align 8
  %16 = load i64, ptr %bytes, align 8
  %17 = load ptr, ptr %end, align 8
  %add.ptr16 = getelementptr inbounds i8, ptr %17, i64 %16
  store ptr %add.ptr16, ptr %end, align 8
  %18 = load ptr, ptr %ptr, align 8
  %incdec.ptr17 = getelementptr inbounds i8, ptr %18, i32 -1
  store ptr %incdec.ptr17, ptr %ptr, align 8
  %19 = load i8, ptr %incdec.ptr17, align 1
  %20 = load ptr, ptr %end, align 8
  %incdec.ptr18 = getelementptr inbounds i8, ptr %20, i32 -1
  store ptr %incdec.ptr18, ptr %end, align 8
  store i8 %19, ptr %incdec.ptr18, align 1
  %21 = load i64, ptr %bytes, align 8
  store i64 %21, ptr %count, align 8
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc40, %if.then15
  %22 = load i64, ptr %count, align 8
  %tobool20 = icmp ne i64 %22, 0
  br i1 %tobool20, label %for.body21, label %for.end43

for.body21:                                       ; preds = %for.cond19
  %23 = load ptr, ptr %ptr, align 8
  %arrayidx22 = getelementptr inbounds i8, ptr %23, i64 -1
  %24 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %24 to i32
  %cmp24 = icmp eq i32 %conv23, 255
  br i1 %cmp24, label %land.lhs.true26, label %if.end39

land.lhs.true26:                                  ; preds = %for.body21
  %25 = load ptr, ptr %ptr, align 8
  %arrayidx27 = getelementptr inbounds i8, ptr %25, i64 0
  %26 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %26 to i32
  %cmp29 = icmp eq i32 %conv28, 0
  br i1 %cmp29, label %if.then37, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %land.lhs.true26
  %27 = load ptr, ptr %ptr, align 8
  %arrayidx32 = getelementptr inbounds i8, ptr %27, i64 0
  %28 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %28 to i32
  %and34 = and i32 %conv33, 224
  %cmp35 = icmp eq i32 %and34, 224
  br i1 %cmp35, label %if.then37, label %if.end39

if.then37:                                        ; preds = %lor.lhs.false31, %land.lhs.true26
  %29 = load ptr, ptr %end, align 8
  %incdec.ptr38 = getelementptr inbounds i8, ptr %29, i32 -1
  store ptr %incdec.ptr38, ptr %end, align 8
  store i8 0, ptr %incdec.ptr38, align 1
  %30 = load i64, ptr %count, align 8
  %dec = add i64 %30, -1
  store i64 %dec, ptr %count, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %lor.lhs.false31, %for.body21
  br label %for.inc40

for.inc40:                                        ; preds = %if.end39
  %31 = load ptr, ptr %ptr, align 8
  %incdec.ptr41 = getelementptr inbounds i8, ptr %31, i32 -1
  store ptr %incdec.ptr41, ptr %ptr, align 8
  %32 = load i8, ptr %incdec.ptr41, align 1
  %33 = load ptr, ptr %end, align 8
  %incdec.ptr42 = getelementptr inbounds i8, ptr %33, i32 -1
  store ptr %incdec.ptr42, ptr %end, align 8
  store i8 %32, ptr %incdec.ptr42, align 1
  br label %for.cond19, !llvm.loop !8

for.end43:                                        ; preds = %for.cond19
  br label %if.end44

if.end44:                                         ; preds = %for.end43, %for.end
  %34 = load i64, ptr %length.addr, align 8
  %35 = load i64, ptr %bytes, align 8
  %add = add i64 %34, %35
  store i64 %add, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end44, %if.then
  %36 = load i64, ptr %retval, align 8
  ret i64 %36
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @id3_util_deunsynchronise(ptr noundef %data, i64 noundef %length) #0 {
entry:
  %retval = alloca i64, align 8
  %data.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %old = alloca ptr, align 8
  %end = alloca ptr, align 8
  %new = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8
  store i64 %length, ptr %length.addr, align 8
  %0 = load ptr, ptr %data.addr, align 8
  %1 = load i64, ptr %length.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %1
  store ptr %add.ptr, ptr %end, align 8
  %2 = load i64, ptr %length.addr, align 8
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %data.addr, align 8
  store ptr %3, ptr %new, align 8
  store ptr %3, ptr %old, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load ptr, ptr %old, align 8
  %5 = load ptr, ptr %end, align 8
  %add.ptr1 = getelementptr inbounds i8, ptr %5, i64 -1
  %cmp2 = icmp ult ptr %4, %add.ptr1
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %old, align 8
  %7 = load i8, ptr %6, align 1
  %8 = load ptr, ptr %new, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %8, i32 1
  store ptr %incdec.ptr, ptr %new, align 8
  store i8 %7, ptr %8, align 1
  %9 = load ptr, ptr %old, align 8
  %arrayidx = getelementptr inbounds i8, ptr %9, i64 0
  %10 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %10 to i32
  %cmp3 = icmp eq i32 %conv, 255
  br i1 %cmp3, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %for.body
  %11 = load ptr, ptr %old, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %11, i64 1
  %12 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %12 to i32
  %cmp7 = icmp eq i32 %conv6, 0
  br i1 %cmp7, label %if.then9, label %if.end11

if.then9:                                         ; preds = %land.lhs.true
  %13 = load ptr, ptr %old, align 8
  %incdec.ptr10 = getelementptr inbounds i8, ptr %13, i32 1
  store ptr %incdec.ptr10, ptr %old, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end11
  %14 = load ptr, ptr %old, align 8
  %incdec.ptr12 = getelementptr inbounds i8, ptr %14, i32 1
  store ptr %incdec.ptr12, ptr %old, align 8
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %15 = load ptr, ptr %old, align 8
  %16 = load i8, ptr %15, align 1
  %17 = load ptr, ptr %new, align 8
  %incdec.ptr13 = getelementptr inbounds i8, ptr %17, i32 1
  store ptr %incdec.ptr13, ptr %new, align 8
  store i8 %16, ptr %17, align 1
  %18 = load ptr, ptr %new, align 8
  %19 = load ptr, ptr %data.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %18 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %19 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %20 = load i64, ptr %retval, align 8
  ret i64 %20
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @id3_util_compress(ptr noundef %data, i64 noundef %length, ptr noundef %newlength) #0 {
entry:
  %data.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %newlength.addr = alloca ptr, align 8
  %compressed = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8
  store i64 %length, ptr %length.addr, align 8
  store ptr %newlength, ptr %newlength.addr, align 8
  %0 = load i64, ptr %length.addr, align 8
  %add = add i64 %0, 12
  %1 = load ptr, ptr %newlength.addr, align 8
  store i64 %add, ptr %1, align 8
  %2 = load ptr, ptr %newlength.addr, align 8
  %3 = load i64, ptr %2, align 8
  %div = udiv i64 %3, 1000
  %4 = load ptr, ptr %newlength.addr, align 8
  %5 = load i64, ptr %4, align 8
  %add1 = add i64 %5, %div
  store i64 %add1, ptr %4, align 8
  %6 = load ptr, ptr %newlength.addr, align 8
  %7 = load i64, ptr %6, align 8
  %call = call ptr @malloc(i64 noundef %7) #3
  store ptr %call, ptr %compressed, align 8
  %8 = load ptr, ptr %compressed, align 8
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %compressed, align 8
  %10 = load ptr, ptr %newlength.addr, align 8
  %11 = load ptr, ptr %data.addr, align 8
  %12 = load i64, ptr %length.addr, align 8
  %call2 = call i32 @compress2(ptr noundef %9, ptr noundef %10, ptr noundef %11, i64 noundef %12, i32 noundef 9)
  %cmp = icmp ne i32 %call2, 0
  br i1 %cmp, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %13 = load ptr, ptr %newlength.addr, align 8
  %14 = load i64, ptr %13, align 8
  %15 = load i64, ptr %length.addr, align 8
  %cmp3 = icmp uge i64 %14, %15
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %lor.lhs.false, %if.then
  %16 = load ptr, ptr %compressed, align 8
  call void @free(ptr noundef %16)
  store ptr null, ptr %compressed, align 8
  br label %if.end

if.end:                                           ; preds = %if.then4, %lor.lhs.false
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %17 = load ptr, ptr %compressed, align 8
  ret ptr %17
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

declare i32 @compress2(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) #2

declare void @free(ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @id3_util_decompress(ptr noundef %data, i64 noundef %length, i64 noundef %newlength) #0 {
entry:
  %data.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %newlength.addr = alloca i64, align 8
  %decompressed = alloca ptr, align 8
  %size = alloca i64, align 8
  store ptr %data, ptr %data.addr, align 8
  store i64 %length, ptr %length.addr, align 8
  store i64 %newlength, ptr %newlength.addr, align 8
  %0 = load i64, ptr %newlength.addr, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i64, ptr %newlength.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %1, %cond.true ], [ 1, %cond.false ]
  %call = call ptr @malloc(i64 noundef %cond) #3
  store ptr %call, ptr %decompressed, align 8
  %2 = load ptr, ptr %decompressed, align 8
  %tobool1 = icmp ne ptr %2, null
  br i1 %tobool1, label %if.then, label %if.end5

if.then:                                          ; preds = %cond.end
  %3 = load i64, ptr %newlength.addr, align 8
  store i64 %3, ptr %size, align 8
  %4 = load ptr, ptr %decompressed, align 8
  %5 = load ptr, ptr %data.addr, align 8
  %6 = load i64, ptr %length.addr, align 8
  %call2 = call i32 @uncompress(ptr noundef %4, ptr noundef %size, ptr noundef %5, i64 noundef %6)
  %cmp = icmp ne i32 %call2, 0
  br i1 %cmp, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %7 = load i64, ptr %size, align 8
  %8 = load i64, ptr %newlength.addr, align 8
  %cmp3 = icmp ne i64 %7, %8
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %lor.lhs.false, %if.then
  %9 = load ptr, ptr %decompressed, align 8
  call void @free(ptr noundef %9)
  store ptr null, ptr %decompressed, align 8
  br label %if.end

if.end:                                           ; preds = %if.then4, %lor.lhs.false
  br label %if.end5

if.end5:                                          ; preds = %if.end, %cond.end
  %10 = load ptr, ptr %decompressed, align 8
  ret ptr %10
}

declare i32 @uncompress(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { allocsize(0) }

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
