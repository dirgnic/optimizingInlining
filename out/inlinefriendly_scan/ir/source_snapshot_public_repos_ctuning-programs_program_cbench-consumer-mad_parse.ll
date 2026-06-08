; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-mad/parse.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-mad/parse.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @id3_parse_int(ptr noundef %ptr, i32 noundef %bytes) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  %bytes.addr = alloca i32, align 4
  %value = alloca i64, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  store i32 %bytes, ptr %bytes.addr, align 4
  store i64 0, ptr %value, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %bytes.addr, align 4
  %cmp = icmp uge i32 %0, 1
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %do.body
  %1 = load i32, ptr %bytes.addr, align 4
  %cmp1 = icmp ule i32 %1, 4
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %do.body
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %land.lhs.true
  br label %do.end

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr %ptr.addr, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = load i8, ptr %3, align 1
  %conv = zext i8 %4 to i32
  %and = and i32 %conv, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then2, label %if.end3

if.then2:                                         ; preds = %do.end
  store i64 -1, ptr %value, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %do.end
  %5 = load i32, ptr %bytes.addr, align 4
  switch i32 %5, label %sw.epilog [
    i32 4, label %sw.bb
    i32 3, label %sw.bb5
    i32 2, label %sw.bb10
    i32 1, label %sw.bb15
  ]

sw.bb:                                            ; preds = %if.end3
  %6 = load i64, ptr %value, align 8
  %shl = shl i64 %6, 8
  %7 = load ptr, ptr %ptr.addr, align 8
  %8 = load ptr, ptr %7, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %8, i32 1
  store ptr %incdec.ptr, ptr %7, align 8
  %9 = load i8, ptr %8, align 1
  %conv4 = zext i8 %9 to i64
  %or = or i64 %shl, %conv4
  store i64 %or, ptr %value, align 8
  br label %sw.bb5

sw.bb5:                                           ; preds = %if.end3, %sw.bb
  %10 = load i64, ptr %value, align 8
  %shl6 = shl i64 %10, 8
  %11 = load ptr, ptr %ptr.addr, align 8
  %12 = load ptr, ptr %11, align 8
  %incdec.ptr7 = getelementptr inbounds i8, ptr %12, i32 1
  store ptr %incdec.ptr7, ptr %11, align 8
  %13 = load i8, ptr %12, align 1
  %conv8 = zext i8 %13 to i64
  %or9 = or i64 %shl6, %conv8
  store i64 %or9, ptr %value, align 8
  br label %sw.bb10

sw.bb10:                                          ; preds = %if.end3, %sw.bb5
  %14 = load i64, ptr %value, align 8
  %shl11 = shl i64 %14, 8
  %15 = load ptr, ptr %ptr.addr, align 8
  %16 = load ptr, ptr %15, align 8
  %incdec.ptr12 = getelementptr inbounds i8, ptr %16, i32 1
  store ptr %incdec.ptr12, ptr %15, align 8
  %17 = load i8, ptr %16, align 1
  %conv13 = zext i8 %17 to i64
  %or14 = or i64 %shl11, %conv13
  store i64 %or14, ptr %value, align 8
  br label %sw.bb15

sw.bb15:                                          ; preds = %if.end3, %sw.bb10
  %18 = load i64, ptr %value, align 8
  %shl16 = shl i64 %18, 8
  %19 = load ptr, ptr %ptr.addr, align 8
  %20 = load ptr, ptr %19, align 8
  %incdec.ptr17 = getelementptr inbounds i8, ptr %20, i32 1
  store ptr %incdec.ptr17, ptr %19, align 8
  %21 = load i8, ptr %20, align 1
  %conv18 = zext i8 %21 to i64
  %or19 = or i64 %shl16, %conv18
  store i64 %or19, ptr %value, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb15, %if.end3
  %22 = load i64, ptr %value, align 8
  ret i64 %22
}

; Function Attrs: cold noreturn
declare void @abort() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @id3_parse_uint(ptr noundef %ptr, i32 noundef %bytes) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  %bytes.addr = alloca i32, align 4
  %value = alloca i64, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  store i32 %bytes, ptr %bytes.addr, align 4
  store i64 0, ptr %value, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %bytes.addr, align 4
  %cmp = icmp uge i32 %0, 1
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %do.body
  %1 = load i32, ptr %bytes.addr, align 4
  %cmp1 = icmp ule i32 %1, 4
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %do.body
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %land.lhs.true
  br label %do.end

do.end:                                           ; preds = %if.end
  %2 = load i32, ptr %bytes.addr, align 4
  switch i32 %2, label %sw.epilog [
    i32 4, label %sw.bb
    i32 3, label %sw.bb2
    i32 2, label %sw.bb7
    i32 1, label %sw.bb12
  ]

sw.bb:                                            ; preds = %do.end
  %3 = load i64, ptr %value, align 8
  %shl = shl i64 %3, 8
  %4 = load ptr, ptr %ptr.addr, align 8
  %5 = load ptr, ptr %4, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %4, align 8
  %6 = load i8, ptr %5, align 1
  %conv = zext i8 %6 to i64
  %or = or i64 %shl, %conv
  store i64 %or, ptr %value, align 8
  br label %sw.bb2

sw.bb2:                                           ; preds = %do.end, %sw.bb
  %7 = load i64, ptr %value, align 8
  %shl3 = shl i64 %7, 8
  %8 = load ptr, ptr %ptr.addr, align 8
  %9 = load ptr, ptr %8, align 8
  %incdec.ptr4 = getelementptr inbounds i8, ptr %9, i32 1
  store ptr %incdec.ptr4, ptr %8, align 8
  %10 = load i8, ptr %9, align 1
  %conv5 = zext i8 %10 to i64
  %or6 = or i64 %shl3, %conv5
  store i64 %or6, ptr %value, align 8
  br label %sw.bb7

sw.bb7:                                           ; preds = %do.end, %sw.bb2
  %11 = load i64, ptr %value, align 8
  %shl8 = shl i64 %11, 8
  %12 = load ptr, ptr %ptr.addr, align 8
  %13 = load ptr, ptr %12, align 8
  %incdec.ptr9 = getelementptr inbounds i8, ptr %13, i32 1
  store ptr %incdec.ptr9, ptr %12, align 8
  %14 = load i8, ptr %13, align 1
  %conv10 = zext i8 %14 to i64
  %or11 = or i64 %shl8, %conv10
  store i64 %or11, ptr %value, align 8
  br label %sw.bb12

sw.bb12:                                          ; preds = %do.end, %sw.bb7
  %15 = load i64, ptr %value, align 8
  %shl13 = shl i64 %15, 8
  %16 = load ptr, ptr %ptr.addr, align 8
  %17 = load ptr, ptr %16, align 8
  %incdec.ptr14 = getelementptr inbounds i8, ptr %17, i32 1
  store ptr %incdec.ptr14, ptr %16, align 8
  %18 = load i8, ptr %17, align 1
  %conv15 = zext i8 %18 to i64
  %or16 = or i64 %shl13, %conv15
  store i64 %or16, ptr %value, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb12, %do.end
  %19 = load i64, ptr %value, align 8
  ret i64 %19
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @id3_parse_syncsafe(ptr noundef %ptr, i32 noundef %bytes) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  %bytes.addr = alloca i32, align 4
  %value = alloca i64, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  store i32 %bytes, ptr %bytes.addr, align 4
  store i64 0, ptr %value, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %bytes.addr, align 4
  %cmp = icmp eq i32 %0, 4
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %1 = load i32, ptr %bytes.addr, align 4
  %cmp1 = icmp eq i32 %1, 5
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %2 = load i32, ptr %bytes.addr, align 4
  switch i32 %2, label %sw.epilog [
    i32 5, label %sw.bb
    i32 4, label %sw.bb3
  ]

sw.bb:                                            ; preds = %do.end
  %3 = load i64, ptr %value, align 8
  %shl = shl i64 %3, 4
  %4 = load ptr, ptr %ptr.addr, align 8
  %5 = load ptr, ptr %4, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %4, align 8
  %6 = load i8, ptr %5, align 1
  %conv = zext i8 %6 to i32
  %and = and i32 %conv, 15
  %conv2 = sext i32 %and to i64
  %or = or i64 %shl, %conv2
  store i64 %or, ptr %value, align 8
  br label %sw.bb3

sw.bb3:                                           ; preds = %do.end, %sw.bb
  %7 = load i64, ptr %value, align 8
  %shl4 = shl i64 %7, 7
  %8 = load ptr, ptr %ptr.addr, align 8
  %9 = load ptr, ptr %8, align 8
  %incdec.ptr5 = getelementptr inbounds i8, ptr %9, i32 1
  store ptr %incdec.ptr5, ptr %8, align 8
  %10 = load i8, ptr %9, align 1
  %conv6 = zext i8 %10 to i32
  %and7 = and i32 %conv6, 127
  %conv8 = sext i32 %and7 to i64
  %or9 = or i64 %shl4, %conv8
  store i64 %or9, ptr %value, align 8
  %11 = load i64, ptr %value, align 8
  %shl10 = shl i64 %11, 7
  %12 = load ptr, ptr %ptr.addr, align 8
  %13 = load ptr, ptr %12, align 8
  %incdec.ptr11 = getelementptr inbounds i8, ptr %13, i32 1
  store ptr %incdec.ptr11, ptr %12, align 8
  %14 = load i8, ptr %13, align 1
  %conv12 = zext i8 %14 to i32
  %and13 = and i32 %conv12, 127
  %conv14 = sext i32 %and13 to i64
  %or15 = or i64 %shl10, %conv14
  store i64 %or15, ptr %value, align 8
  %15 = load i64, ptr %value, align 8
  %shl16 = shl i64 %15, 7
  %16 = load ptr, ptr %ptr.addr, align 8
  %17 = load ptr, ptr %16, align 8
  %incdec.ptr17 = getelementptr inbounds i8, ptr %17, i32 1
  store ptr %incdec.ptr17, ptr %16, align 8
  %18 = load i8, ptr %17, align 1
  %conv18 = zext i8 %18 to i32
  %and19 = and i32 %conv18, 127
  %conv20 = sext i32 %and19 to i64
  %or21 = or i64 %shl16, %conv20
  store i64 %or21, ptr %value, align 8
  %19 = load i64, ptr %value, align 8
  %shl22 = shl i64 %19, 7
  %20 = load ptr, ptr %ptr.addr, align 8
  %21 = load ptr, ptr %20, align 8
  %incdec.ptr23 = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr23, ptr %20, align 8
  %22 = load i8, ptr %21, align 1
  %conv24 = zext i8 %22 to i32
  %and25 = and i32 %conv24, 127
  %conv26 = sext i32 %and25 to i64
  %or27 = or i64 %shl22, %conv26
  store i64 %or27, ptr %value, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %do.end
  %23 = load i64, ptr %value, align 8
  ret i64 %23
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @id3_parse_immediate(ptr noundef %ptr, i32 noundef %bytes, ptr noundef %value) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  %bytes.addr = alloca i32, align 4
  %value.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  store i32 %bytes, ptr %bytes.addr, align 4
  store ptr %value, ptr %value.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %value.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body1

do.body1:                                         ; preds = %do.end
  %1 = load i32, ptr %bytes.addr, align 4
  %cmp = icmp eq i32 %1, 8
  br i1 %cmp, label %if.end6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body1
  %2 = load i32, ptr %bytes.addr, align 4
  %cmp2 = icmp eq i32 %2, 4
  br i1 %cmp2, label %if.end6, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %3 = load i32, ptr %bytes.addr, align 4
  %cmp4 = icmp eq i32 %3, 3
  br i1 %cmp4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %lor.lhs.false3
  call void @abort() #6
  unreachable

if.end6:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %do.body1
  br label %do.end7

do.end7:                                          ; preds = %if.end6
  %4 = load i32, ptr %bytes.addr, align 4
  switch i32 %4, label %sw.epilog [
    i32 8, label %sw.bb
    i32 4, label %sw.bb15
    i32 3, label %sw.bb18
  ]

sw.bb:                                            ; preds = %do.end7
  %5 = load ptr, ptr %ptr.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i32 1
  store ptr %incdec.ptr, ptr %5, align 8
  %7 = load i8, ptr %6, align 1
  %8 = load ptr, ptr %value.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i8, ptr %8, i32 1
  store ptr %incdec.ptr8, ptr %value.addr, align 8
  store i8 %7, ptr %8, align 1
  %9 = load ptr, ptr %ptr.addr, align 8
  %10 = load ptr, ptr %9, align 8
  %incdec.ptr9 = getelementptr inbounds i8, ptr %10, i32 1
  store ptr %incdec.ptr9, ptr %9, align 8
  %11 = load i8, ptr %10, align 1
  %12 = load ptr, ptr %value.addr, align 8
  %incdec.ptr10 = getelementptr inbounds i8, ptr %12, i32 1
  store ptr %incdec.ptr10, ptr %value.addr, align 8
  store i8 %11, ptr %12, align 1
  %13 = load ptr, ptr %ptr.addr, align 8
  %14 = load ptr, ptr %13, align 8
  %incdec.ptr11 = getelementptr inbounds i8, ptr %14, i32 1
  store ptr %incdec.ptr11, ptr %13, align 8
  %15 = load i8, ptr %14, align 1
  %16 = load ptr, ptr %value.addr, align 8
  %incdec.ptr12 = getelementptr inbounds i8, ptr %16, i32 1
  store ptr %incdec.ptr12, ptr %value.addr, align 8
  store i8 %15, ptr %16, align 1
  %17 = load ptr, ptr %ptr.addr, align 8
  %18 = load ptr, ptr %17, align 8
  %incdec.ptr13 = getelementptr inbounds i8, ptr %18, i32 1
  store ptr %incdec.ptr13, ptr %17, align 8
  %19 = load i8, ptr %18, align 1
  %20 = load ptr, ptr %value.addr, align 8
  %incdec.ptr14 = getelementptr inbounds i8, ptr %20, i32 1
  store ptr %incdec.ptr14, ptr %value.addr, align 8
  store i8 %19, ptr %20, align 1
  br label %sw.bb15

sw.bb15:                                          ; preds = %do.end7, %sw.bb
  %21 = load ptr, ptr %ptr.addr, align 8
  %22 = load ptr, ptr %21, align 8
  %incdec.ptr16 = getelementptr inbounds i8, ptr %22, i32 1
  store ptr %incdec.ptr16, ptr %21, align 8
  %23 = load i8, ptr %22, align 1
  %24 = load ptr, ptr %value.addr, align 8
  %incdec.ptr17 = getelementptr inbounds i8, ptr %24, i32 1
  store ptr %incdec.ptr17, ptr %value.addr, align 8
  store i8 %23, ptr %24, align 1
  br label %sw.bb18

sw.bb18:                                          ; preds = %do.end7, %sw.bb15
  %25 = load ptr, ptr %ptr.addr, align 8
  %26 = load ptr, ptr %25, align 8
  %incdec.ptr19 = getelementptr inbounds i8, ptr %26, i32 1
  store ptr %incdec.ptr19, ptr %25, align 8
  %27 = load i8, ptr %26, align 1
  %28 = load ptr, ptr %value.addr, align 8
  %incdec.ptr20 = getelementptr inbounds i8, ptr %28, i32 1
  store ptr %incdec.ptr20, ptr %value.addr, align 8
  store i8 %27, ptr %28, align 1
  %29 = load ptr, ptr %ptr.addr, align 8
  %30 = load ptr, ptr %29, align 8
  %incdec.ptr21 = getelementptr inbounds i8, ptr %30, i32 1
  store ptr %incdec.ptr21, ptr %29, align 8
  %31 = load i8, ptr %30, align 1
  %32 = load ptr, ptr %value.addr, align 8
  %incdec.ptr22 = getelementptr inbounds i8, ptr %32, i32 1
  store ptr %incdec.ptr22, ptr %value.addr, align 8
  store i8 %31, ptr %32, align 1
  %33 = load ptr, ptr %ptr.addr, align 8
  %34 = load ptr, ptr %33, align 8
  %incdec.ptr23 = getelementptr inbounds i8, ptr %34, i32 1
  store ptr %incdec.ptr23, ptr %33, align 8
  %35 = load i8, ptr %34, align 1
  %36 = load ptr, ptr %value.addr, align 8
  %incdec.ptr24 = getelementptr inbounds i8, ptr %36, i32 1
  store ptr %incdec.ptr24, ptr %value.addr, align 8
  store i8 %35, ptr %36, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb18, %do.end7
  %37 = load ptr, ptr %value.addr, align 8
  store i8 0, ptr %37, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @id3_parse_latin1(ptr noundef %ptr, i64 noundef %length, i32 noundef %full) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %full.addr = alloca i32, align 4
  %end = alloca ptr, align 8
  %terminated = alloca i32, align 4
  %latin1 = alloca ptr, align 8
  %check = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  store i64 %length, ptr %length.addr, align 8
  store i32 %full, ptr %full.addr, align 4
  store i32 0, ptr %terminated, align 4
  %0 = load ptr, ptr %ptr.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %2 = load i64, ptr %length.addr, align 8
  %call = call ptr @memchr(ptr noundef %1, i32 noundef 0, i64 noundef %2)
  store ptr %call, ptr %end, align 8
  %3 = load ptr, ptr %end, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %ptr.addr, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load i64, ptr %length.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 %6
  store ptr %add.ptr, ptr %end, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %end, align 8
  %8 = load ptr, ptr %ptr.addr, align 8
  %9 = load ptr, ptr %8, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %7 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, ptr %length.addr, align 8
  store i32 1, ptr %terminated, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load i64, ptr %length.addr, align 8
  %add = add i64 %10, 1
  %call1 = call ptr @malloc(i64 noundef %add) #7
  store ptr %call1, ptr %latin1, align 8
  %11 = load ptr, ptr %latin1, align 8
  %tobool = icmp ne ptr %11, null
  br i1 %tobool, label %if.then2, label %if.end12

if.then2:                                         ; preds = %if.end
  %12 = load ptr, ptr %latin1, align 8
  %13 = load ptr, ptr %ptr.addr, align 8
  %14 = load ptr, ptr %13, align 8
  %15 = load i64, ptr %length.addr, align 8
  %16 = load ptr, ptr %latin1, align 8
  %17 = call i64 @llvm.objectsize.i64.p0(ptr %16, i1 false, i1 true, i1 false)
  %call3 = call ptr @__memcpy_chk(ptr noundef %12, ptr noundef %14, i64 noundef %15, i64 noundef %17) #8
  %18 = load ptr, ptr %latin1, align 8
  %19 = load i64, ptr %length.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %18, i64 %19
  store i8 0, ptr %arrayidx, align 1
  %20 = load i32, ptr %full.addr, align 4
  %tobool4 = icmp ne i32 %20, 0
  br i1 %tobool4, label %if.end11, label %if.then5

if.then5:                                         ; preds = %if.then2
  %21 = load ptr, ptr %latin1, align 8
  store ptr %21, ptr %check, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then5
  %22 = load ptr, ptr %check, align 8
  %23 = load i8, ptr %22, align 1
  %tobool6 = icmp ne i8 %23, 0
  br i1 %tobool6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load ptr, ptr %check, align 8
  %25 = load i8, ptr %24, align 1
  %conv = zext i8 %25 to i32
  %cmp7 = icmp eq i32 %conv, 10
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %for.body
  %26 = load ptr, ptr %check, align 8
  store i8 32, ptr %26, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %27 = load ptr, ptr %check, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %27, i32 1
  store ptr %incdec.ptr, ptr %check, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end11

if.end11:                                         ; preds = %for.end, %if.then2
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.end
  %28 = load i64, ptr %length.addr, align 8
  %29 = load i32, ptr %terminated, align 4
  %conv13 = sext i32 %29 to i64
  %add14 = add i64 %28, %conv13
  %30 = load ptr, ptr %ptr.addr, align 8
  %31 = load ptr, ptr %30, align 8
  %add.ptr15 = getelementptr inbounds i8, ptr %31, i64 %add14
  store ptr %add.ptr15, ptr %30, align 8
  %32 = load ptr, ptr %latin1, align 8
  ret ptr %32
}

declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) #2

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #3

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #5

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @id3_parse_string(ptr noundef %ptr, i64 noundef %length, i32 noundef %encoding, i32 noundef %full) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %encoding.addr = alloca i32, align 4
  %full.addr = alloca i32, align 4
  %ucs4 = alloca ptr, align 8
  %byteorder = alloca i32, align 4
  %check = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  store i64 %length, ptr %length.addr, align 8
  store i32 %encoding, ptr %encoding.addr, align 4
  store i32 %full, ptr %full.addr, align 4
  store ptr null, ptr %ucs4, align 8
  store i32 0, ptr %byteorder, align 4
  %0 = load i32, ptr %encoding.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb1
    i32 1, label %sw.bb2
    i32 3, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %ptr.addr, align 8
  %2 = load i64, ptr %length.addr, align 8
  %call = call ptr @id3_latin1_deserialize(ptr noundef %1, i64 noundef %2)
  store ptr %call, ptr %ucs4, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  store i32 1, ptr %byteorder, align 4
  br label %sw.bb2

sw.bb2:                                           ; preds = %entry, %sw.bb1
  %3 = load ptr, ptr %ptr.addr, align 8
  %4 = load i64, ptr %length.addr, align 8
  %5 = load i32, ptr %byteorder, align 4
  %call3 = call ptr @id3_utf16_deserialize(ptr noundef %3, i64 noundef %4, i32 noundef %5)
  store ptr %call3, ptr %ucs4, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %6 = load ptr, ptr %ptr.addr, align 8
  %7 = load i64, ptr %length.addr, align 8
  %call5 = call ptr @id3_utf8_deserialize(ptr noundef %6, i64 noundef %7)
  store ptr %call5, ptr %ucs4, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb4, %sw.bb2, %sw.bb
  %8 = load ptr, ptr %ucs4, align 8
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %sw.epilog
  %9 = load i32, ptr %full.addr, align 4
  %tobool6 = icmp ne i32 %9, 0
  br i1 %tobool6, label %if.end9, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %10 = load ptr, ptr %ucs4, align 8
  store ptr %10, ptr %check, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %11 = load ptr, ptr %check, align 8
  %12 = load i64, ptr %11, align 8
  %tobool7 = icmp ne i64 %12, 0
  br i1 %tobool7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %check, align 8
  %14 = load i64, ptr %13, align 8
  %cmp = icmp eq i64 %14, 10
  br i1 %cmp, label %if.then8, label %if.end

if.then8:                                         ; preds = %for.body
  %15 = load ptr, ptr %check, align 8
  store i64 32, ptr %15, align 8
  br label %if.end

if.end:                                           ; preds = %if.then8, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load ptr, ptr %check, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %16, i32 1
  store ptr %incdec.ptr, ptr %check, align 8
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  br label %if.end9

if.end9:                                          ; preds = %for.end, %land.lhs.true, %sw.epilog
  %17 = load ptr, ptr %ucs4, align 8
  ret ptr %17
}

declare ptr @id3_latin1_deserialize(ptr noundef, i64 noundef) #2

declare ptr @id3_utf16_deserialize(ptr noundef, i64 noundef, i32 noundef) #2

declare ptr @id3_utf8_deserialize(ptr noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @id3_parse_binary(ptr noundef %ptr, i64 noundef %length) #0 {
entry:
  %retval = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %data = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  store i64 %length, ptr %length.addr, align 8
  %0 = load i64, ptr %length.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call ptr @malloc(i64 noundef 1) #7
  store ptr %call, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %length.addr, align 8
  %call1 = call ptr @malloc(i64 noundef %1) #7
  store ptr %call1, ptr %data, align 8
  %2 = load ptr, ptr %data, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %data, align 8
  %4 = load ptr, ptr %ptr.addr, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load i64, ptr %length.addr, align 8
  %7 = load ptr, ptr %data, align 8
  %8 = call i64 @llvm.objectsize.i64.p0(ptr %7, i1 false, i1 true, i1 false)
  %call3 = call ptr @__memcpy_chk(ptr noundef %3, ptr noundef %5, i64 noundef %6, i64 noundef %8) #8
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %9 = load i64, ptr %length.addr, align 8
  %10 = load ptr, ptr %ptr.addr, align 8
  %11 = load ptr, ptr %10, align 8
  %add.ptr = getelementptr inbounds i8, ptr %11, i64 %9
  store ptr %add.ptr, ptr %10, align 8
  %12 = load ptr, ptr %data, align 8
  store ptr %12, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end4, %if.then
  %13 = load ptr, ptr %retval, align 8
  ret ptr %13
}

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { cold noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold noreturn }
attributes #7 = { allocsize(0) }
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
