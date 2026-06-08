; ModuleID = './source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/libid3tag/render.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/libid3tag/render.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@id3_ucs4_empty = external constant [0 x i64], align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @id3_render_immediate(ptr noundef %ptr, ptr noundef %value, i32 noundef %bytes) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %bytes.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  store ptr %value, ptr %value.addr, align 8
  store i32 %bytes, ptr %bytes.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %value.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  call void @abort() #5
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
  call void @abort() #5
  unreachable

if.end6:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %do.body1
  br label %do.end7

do.end7:                                          ; preds = %if.end6
  %4 = load ptr, ptr %ptr.addr, align 8
  %tobool8 = icmp ne ptr %4, null
  br i1 %tobool8, label %if.then9, label %if.end27

if.then9:                                         ; preds = %do.end7
  %5 = load i32, ptr %bytes.addr, align 4
  switch i32 %5, label %sw.epilog [
    i32 8, label %sw.bb
    i32 4, label %sw.bb17
    i32 3, label %sw.bb20
  ]

sw.bb:                                            ; preds = %if.then9
  %6 = load ptr, ptr %value.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i32 1
  store ptr %incdec.ptr, ptr %value.addr, align 8
  %7 = load i8, ptr %6, align 1
  %8 = load ptr, ptr %ptr.addr, align 8
  %9 = load ptr, ptr %8, align 8
  %incdec.ptr10 = getelementptr inbounds i8, ptr %9, i32 1
  store ptr %incdec.ptr10, ptr %8, align 8
  store i8 %7, ptr %9, align 1
  %10 = load ptr, ptr %value.addr, align 8
  %incdec.ptr11 = getelementptr inbounds i8, ptr %10, i32 1
  store ptr %incdec.ptr11, ptr %value.addr, align 8
  %11 = load i8, ptr %10, align 1
  %12 = load ptr, ptr %ptr.addr, align 8
  %13 = load ptr, ptr %12, align 8
  %incdec.ptr12 = getelementptr inbounds i8, ptr %13, i32 1
  store ptr %incdec.ptr12, ptr %12, align 8
  store i8 %11, ptr %13, align 1
  %14 = load ptr, ptr %value.addr, align 8
  %incdec.ptr13 = getelementptr inbounds i8, ptr %14, i32 1
  store ptr %incdec.ptr13, ptr %value.addr, align 8
  %15 = load i8, ptr %14, align 1
  %16 = load ptr, ptr %ptr.addr, align 8
  %17 = load ptr, ptr %16, align 8
  %incdec.ptr14 = getelementptr inbounds i8, ptr %17, i32 1
  store ptr %incdec.ptr14, ptr %16, align 8
  store i8 %15, ptr %17, align 1
  %18 = load ptr, ptr %value.addr, align 8
  %incdec.ptr15 = getelementptr inbounds i8, ptr %18, i32 1
  store ptr %incdec.ptr15, ptr %value.addr, align 8
  %19 = load i8, ptr %18, align 1
  %20 = load ptr, ptr %ptr.addr, align 8
  %21 = load ptr, ptr %20, align 8
  %incdec.ptr16 = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr16, ptr %20, align 8
  store i8 %19, ptr %21, align 1
  br label %sw.bb17

sw.bb17:                                          ; preds = %if.then9, %sw.bb
  %22 = load ptr, ptr %value.addr, align 8
  %incdec.ptr18 = getelementptr inbounds i8, ptr %22, i32 1
  store ptr %incdec.ptr18, ptr %value.addr, align 8
  %23 = load i8, ptr %22, align 1
  %24 = load ptr, ptr %ptr.addr, align 8
  %25 = load ptr, ptr %24, align 8
  %incdec.ptr19 = getelementptr inbounds i8, ptr %25, i32 1
  store ptr %incdec.ptr19, ptr %24, align 8
  store i8 %23, ptr %25, align 1
  br label %sw.bb20

sw.bb20:                                          ; preds = %if.then9, %sw.bb17
  %26 = load ptr, ptr %value.addr, align 8
  %incdec.ptr21 = getelementptr inbounds i8, ptr %26, i32 1
  store ptr %incdec.ptr21, ptr %value.addr, align 8
  %27 = load i8, ptr %26, align 1
  %28 = load ptr, ptr %ptr.addr, align 8
  %29 = load ptr, ptr %28, align 8
  %incdec.ptr22 = getelementptr inbounds i8, ptr %29, i32 1
  store ptr %incdec.ptr22, ptr %28, align 8
  store i8 %27, ptr %29, align 1
  %30 = load ptr, ptr %value.addr, align 8
  %incdec.ptr23 = getelementptr inbounds i8, ptr %30, i32 1
  store ptr %incdec.ptr23, ptr %value.addr, align 8
  %31 = load i8, ptr %30, align 1
  %32 = load ptr, ptr %ptr.addr, align 8
  %33 = load ptr, ptr %32, align 8
  %incdec.ptr24 = getelementptr inbounds i8, ptr %33, i32 1
  store ptr %incdec.ptr24, ptr %32, align 8
  store i8 %31, ptr %33, align 1
  %34 = load ptr, ptr %value.addr, align 8
  %incdec.ptr25 = getelementptr inbounds i8, ptr %34, i32 1
  store ptr %incdec.ptr25, ptr %value.addr, align 8
  %35 = load i8, ptr %34, align 1
  %36 = load ptr, ptr %ptr.addr, align 8
  %37 = load ptr, ptr %36, align 8
  %incdec.ptr26 = getelementptr inbounds i8, ptr %37, i32 1
  store ptr %incdec.ptr26, ptr %36, align 8
  store i8 %35, ptr %37, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb20, %if.then9
  br label %if.end27

if.end27:                                         ; preds = %sw.epilog, %do.end7
  %38 = load i32, ptr %bytes.addr, align 4
  %conv = zext i32 %38 to i64
  ret i64 %conv
}

; Function Attrs: cold noreturn
declare void @abort() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @id3_render_syncsafe(ptr noundef %ptr, i64 noundef %num, i32 noundef %bytes) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  %num.addr = alloca i64, align 8
  %bytes.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  store i64 %num, ptr %num.addr, align 8
  store i32 %bytes, ptr %bytes.addr, align 4
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
  call void @abort() #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr %ptr.addr, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then2, label %if.end20

if.then2:                                         ; preds = %do.end
  %3 = load i32, ptr %bytes.addr, align 4
  switch i32 %3, label %sw.epilog [
    i32 5, label %sw.bb
    i32 4, label %sw.bb3
  ]

sw.bb:                                            ; preds = %if.then2
  %4 = load i64, ptr %num.addr, align 8
  %shr = lshr i64 %4, 28
  %and = and i64 %shr, 15
  %conv = trunc i64 %and to i8
  %5 = load ptr, ptr %ptr.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i32 1
  store ptr %incdec.ptr, ptr %5, align 8
  store i8 %conv, ptr %6, align 1
  br label %sw.bb3

sw.bb3:                                           ; preds = %if.then2, %sw.bb
  %7 = load i64, ptr %num.addr, align 8
  %shr4 = lshr i64 %7, 21
  %and5 = and i64 %shr4, 127
  %conv6 = trunc i64 %and5 to i8
  %8 = load ptr, ptr %ptr.addr, align 8
  %9 = load ptr, ptr %8, align 8
  %incdec.ptr7 = getelementptr inbounds i8, ptr %9, i32 1
  store ptr %incdec.ptr7, ptr %8, align 8
  store i8 %conv6, ptr %9, align 1
  %10 = load i64, ptr %num.addr, align 8
  %shr8 = lshr i64 %10, 14
  %and9 = and i64 %shr8, 127
  %conv10 = trunc i64 %and9 to i8
  %11 = load ptr, ptr %ptr.addr, align 8
  %12 = load ptr, ptr %11, align 8
  %incdec.ptr11 = getelementptr inbounds i8, ptr %12, i32 1
  store ptr %incdec.ptr11, ptr %11, align 8
  store i8 %conv10, ptr %12, align 1
  %13 = load i64, ptr %num.addr, align 8
  %shr12 = lshr i64 %13, 7
  %and13 = and i64 %shr12, 127
  %conv14 = trunc i64 %and13 to i8
  %14 = load ptr, ptr %ptr.addr, align 8
  %15 = load ptr, ptr %14, align 8
  %incdec.ptr15 = getelementptr inbounds i8, ptr %15, i32 1
  store ptr %incdec.ptr15, ptr %14, align 8
  store i8 %conv14, ptr %15, align 1
  %16 = load i64, ptr %num.addr, align 8
  %shr16 = lshr i64 %16, 0
  %and17 = and i64 %shr16, 127
  %conv18 = trunc i64 %and17 to i8
  %17 = load ptr, ptr %ptr.addr, align 8
  %18 = load ptr, ptr %17, align 8
  %incdec.ptr19 = getelementptr inbounds i8, ptr %18, i32 1
  store ptr %incdec.ptr19, ptr %17, align 8
  store i8 %conv18, ptr %18, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %if.then2
  br label %if.end20

if.end20:                                         ; preds = %sw.epilog, %do.end
  %19 = load i32, ptr %bytes.addr, align 4
  %conv21 = zext i32 %19 to i64
  ret i64 %conv21
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @id3_render_int(ptr noundef %ptr, i64 noundef %num, i32 noundef %bytes) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  %num.addr = alloca i64, align 8
  %bytes.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  store i64 %num, ptr %num.addr, align 8
  store i32 %bytes, ptr %bytes.addr, align 4
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
  call void @abort() #5
  unreachable

if.end:                                           ; preds = %land.lhs.true
  br label %do.end

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr %ptr.addr, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then2, label %if.end15

if.then2:                                         ; preds = %do.end
  %3 = load i32, ptr %bytes.addr, align 4
  switch i32 %3, label %sw.epilog [
    i32 4, label %sw.bb
    i32 3, label %sw.bb3
    i32 2, label %sw.bb7
    i32 1, label %sw.bb11
  ]

sw.bb:                                            ; preds = %if.then2
  %4 = load i64, ptr %num.addr, align 8
  %shr = ashr i64 %4, 24
  %conv = trunc i64 %shr to i8
  %5 = load ptr, ptr %ptr.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i32 1
  store ptr %incdec.ptr, ptr %5, align 8
  store i8 %conv, ptr %6, align 1
  br label %sw.bb3

sw.bb3:                                           ; preds = %if.then2, %sw.bb
  %7 = load i64, ptr %num.addr, align 8
  %shr4 = ashr i64 %7, 16
  %conv5 = trunc i64 %shr4 to i8
  %8 = load ptr, ptr %ptr.addr, align 8
  %9 = load ptr, ptr %8, align 8
  %incdec.ptr6 = getelementptr inbounds i8, ptr %9, i32 1
  store ptr %incdec.ptr6, ptr %8, align 8
  store i8 %conv5, ptr %9, align 1
  br label %sw.bb7

sw.bb7:                                           ; preds = %if.then2, %sw.bb3
  %10 = load i64, ptr %num.addr, align 8
  %shr8 = ashr i64 %10, 8
  %conv9 = trunc i64 %shr8 to i8
  %11 = load ptr, ptr %ptr.addr, align 8
  %12 = load ptr, ptr %11, align 8
  %incdec.ptr10 = getelementptr inbounds i8, ptr %12, i32 1
  store ptr %incdec.ptr10, ptr %11, align 8
  store i8 %conv9, ptr %12, align 1
  br label %sw.bb11

sw.bb11:                                          ; preds = %if.then2, %sw.bb7
  %13 = load i64, ptr %num.addr, align 8
  %shr12 = ashr i64 %13, 0
  %conv13 = trunc i64 %shr12 to i8
  %14 = load ptr, ptr %ptr.addr, align 8
  %15 = load ptr, ptr %14, align 8
  %incdec.ptr14 = getelementptr inbounds i8, ptr %15, i32 1
  store ptr %incdec.ptr14, ptr %14, align 8
  store i8 %conv13, ptr %15, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb11, %if.then2
  br label %if.end15

if.end15:                                         ; preds = %sw.epilog, %do.end
  %16 = load i32, ptr %bytes.addr, align 4
  %conv16 = zext i32 %16 to i64
  ret i64 %conv16
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @id3_render_binary(ptr noundef %ptr, ptr noundef %data, i64 noundef %size) #0 {
entry:
  %retval = alloca i64, align 8
  %ptr.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  store ptr %data, ptr %data.addr, align 8
  store i64 %size, ptr %size.addr, align 8
  %0 = load ptr, ptr %data.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %ptr.addr, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  %2 = load ptr, ptr %ptr.addr, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %data.addr, align 8
  %5 = load i64, ptr %size.addr, align 8
  %6 = load ptr, ptr %ptr.addr, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = call i64 @llvm.objectsize.i64.p0(ptr %7, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %3, ptr noundef %4, i64 noundef %5, i64 noundef %8) #6
  %9 = load i64, ptr %size.addr, align 8
  %10 = load ptr, ptr %ptr.addr, align 8
  %11 = load ptr, ptr %10, align 8
  %add.ptr = getelementptr inbounds i8, ptr %11, i64 %9
  store ptr %add.ptr, ptr %10, align 8
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %12 = load i64, ptr %size.addr, align 8
  store i64 %12, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end2, %if.then
  %13 = load i64, ptr %retval, align 8
  ret i64 %13
}

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @id3_render_latin1(ptr noundef %ptr, ptr noundef %latin1, i32 noundef %terminate) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  %latin1.addr = alloca ptr, align 8
  %terminate.addr = alloca i32, align 4
  %size = alloca i64, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  store ptr %latin1, ptr %latin1.addr, align 8
  store i32 %terminate, ptr %terminate.addr, align 4
  %0 = load ptr, ptr %latin1.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr @.str, ptr %latin1.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %latin1.addr, align 8
  %call = call i64 @id3_latin1_size(ptr noundef %1)
  store i64 %call, ptr %size, align 8
  %2 = load i32, ptr %terminate.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  %3 = load i64, ptr %size, align 8
  %dec = add i64 %3, -1
  store i64 %dec, ptr %size, align 8
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %4 = load ptr, ptr %ptr.addr, align 8
  %tobool3 = icmp ne ptr %4, null
  br i1 %tobool3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end2
  %5 = load ptr, ptr %ptr.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %latin1.addr, align 8
  %8 = load i64, ptr %size, align 8
  %9 = load ptr, ptr %ptr.addr, align 8
  %10 = load ptr, ptr %9, align 8
  %11 = call i64 @llvm.objectsize.i64.p0(ptr %10, i1 false, i1 true, i1 false)
  %call5 = call ptr @__memcpy_chk(ptr noundef %6, ptr noundef %7, i64 noundef %8, i64 noundef %11) #6
  %12 = load i64, ptr %size, align 8
  %13 = load ptr, ptr %ptr.addr, align 8
  %14 = load ptr, ptr %13, align 8
  %add.ptr = getelementptr inbounds i8, ptr %14, i64 %12
  store ptr %add.ptr, ptr %13, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end2
  %15 = load i64, ptr %size, align 8
  ret i64 %15
}

declare i64 @id3_latin1_size(ptr noundef) #4

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @id3_render_string(ptr noundef %ptr, ptr noundef %ucs4, i32 noundef %encoding, i32 noundef %terminate) #0 {
entry:
  %retval = alloca i64, align 8
  %ptr.addr = alloca ptr, align 8
  %ucs4.addr = alloca ptr, align 8
  %encoding.addr = alloca i32, align 4
  %terminate.addr = alloca i32, align 4
  %byteorder = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  store ptr %ucs4, ptr %ucs4.addr, align 8
  store i32 %encoding, ptr %encoding.addr, align 4
  store i32 %terminate, ptr %terminate.addr, align 4
  store i32 0, ptr %byteorder, align 4
  %0 = load ptr, ptr %ucs4.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr @id3_ucs4_empty, ptr %ucs4.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %encoding.addr, align 4
  switch i32 %1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb1
    i32 1, label %sw.bb2
    i32 3, label %sw.bb4
  ]

sw.bb:                                            ; preds = %if.end
  %2 = load ptr, ptr %ptr.addr, align 8
  %3 = load ptr, ptr %ucs4.addr, align 8
  %4 = load i32, ptr %terminate.addr, align 4
  %call = call i64 @id3_latin1_serialize(ptr noundef %2, ptr noundef %3, i32 noundef %4)
  store i64 %call, ptr %retval, align 8
  br label %return

sw.bb1:                                           ; preds = %if.end
  store i32 1, ptr %byteorder, align 4
  br label %sw.bb2

sw.bb2:                                           ; preds = %if.end, %sw.bb1
  %5 = load ptr, ptr %ptr.addr, align 8
  %6 = load ptr, ptr %ucs4.addr, align 8
  %7 = load i32, ptr %byteorder, align 4
  %8 = load i32, ptr %terminate.addr, align 4
  %call3 = call i64 @id3_utf16_serialize(ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8)
  store i64 %call3, ptr %retval, align 8
  br label %return

sw.bb4:                                           ; preds = %if.end
  %9 = load ptr, ptr %ptr.addr, align 8
  %10 = load ptr, ptr %ucs4.addr, align 8
  %11 = load i32, ptr %terminate.addr, align 4
  %call5 = call i64 @id3_utf8_serialize(ptr noundef %9, ptr noundef %10, i32 noundef %11)
  store i64 %call5, ptr %retval, align 8
  br label %return

sw.epilog:                                        ; preds = %if.end
  store i64 0, ptr %retval, align 8
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb4, %sw.bb2, %sw.bb
  %12 = load i64, ptr %retval, align 8
  ret i64 %12
}

declare i64 @id3_latin1_serialize(ptr noundef, ptr noundef, i32 noundef) #4

declare i64 @id3_utf16_serialize(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #4

declare i64 @id3_utf8_serialize(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @id3_render_padding(ptr noundef %ptr, i8 noundef zeroext %value, i64 noundef %size) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  %value.addr = alloca i8, align 1
  %size.addr = alloca i64, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  store i8 %value, ptr %value.addr, align 1
  store i64 %size, ptr %size.addr, align 8
  %0 = load ptr, ptr %ptr.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %ptr.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %3 = load i8, ptr %value.addr, align 1
  %conv = zext i8 %3 to i32
  %4 = load i64, ptr %size.addr, align 8
  %5 = load ptr, ptr %ptr.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = call i64 @llvm.objectsize.i64.p0(ptr %6, i1 false, i1 true, i1 false)
  %call = call ptr @__memset_chk(ptr noundef %2, i32 noundef %conv, i64 noundef %4, i64 noundef %7) #6
  %8 = load i64, ptr %size.addr, align 8
  %9 = load ptr, ptr %ptr.addr, align 8
  %10 = load ptr, ptr %9, align 8
  %add.ptr = getelementptr inbounds i8, ptr %10, i64 %8
  store ptr %add.ptr, ptr %9, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i64, ptr %size.addr, align 8
  ret i64 %11
}

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @id3_render_paddedstring(ptr noundef %ptr, ptr noundef %ucs4, i64 noundef %length) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  %ucs4.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %padded = alloca [31 x i64], align 8
  %data = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  store ptr %ucs4, ptr %ucs4.addr, align 8
  store i64 %length, ptr %length.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, ptr %length.addr, align 8
  %cmp = icmp ule i64 %0, 30
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  call void @abort() #5
  unreachable

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %arraydecay = getelementptr inbounds [31 x i64], ptr %padded, i64 0, i64 0
  store ptr %arraydecay, ptr %data, align 8
  %1 = load ptr, ptr %ucs4.addr, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then1, label %if.end9

if.then1:                                         ; preds = %do.end
  br label %while.cond

while.cond:                                       ; preds = %if.end8, %if.then1
  %2 = load ptr, ptr %ucs4.addr, align 8
  %3 = load i64, ptr %2, align 8
  %tobool2 = icmp ne i64 %3, 0
  br i1 %tobool2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i64, ptr %length.addr, align 8
  %dec = add i64 %4, -1
  store i64 %dec, ptr %length.addr, align 8
  %tobool3 = icmp ne i64 %4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %tobool3, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load ptr, ptr %ucs4.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %6, i32 1
  store ptr %incdec.ptr, ptr %ucs4.addr, align 8
  %7 = load i64, ptr %6, align 8
  %8 = load ptr, ptr %data, align 8
  %incdec.ptr4 = getelementptr inbounds i64, ptr %8, i32 1
  store ptr %incdec.ptr4, ptr %data, align 8
  store i64 %7, ptr %8, align 8
  %9 = load ptr, ptr %data, align 8
  %arrayidx = getelementptr inbounds i64, ptr %9, i64 -1
  %10 = load i64, ptr %arrayidx, align 8
  %cmp5 = icmp eq i64 %10, 10
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %while.body
  %11 = load ptr, ptr %data, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %11, i64 -1
  store i64 32, ptr %arrayidx7, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %while.body
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  br label %if.end9

if.end9:                                          ; preds = %while.end, %do.end
  br label %while.cond10

while.cond10:                                     ; preds = %while.body13, %if.end9
  %12 = load i64, ptr %length.addr, align 8
  %dec11 = add i64 %12, -1
  store i64 %dec11, ptr %length.addr, align 8
  %tobool12 = icmp ne i64 %12, 0
  br i1 %tobool12, label %while.body13, label %while.end15

while.body13:                                     ; preds = %while.cond10
  %13 = load ptr, ptr %data, align 8
  %incdec.ptr14 = getelementptr inbounds i64, ptr %13, i32 1
  store ptr %incdec.ptr14, ptr %data, align 8
  store i64 32, ptr %13, align 8
  br label %while.cond10, !llvm.loop !8

while.end15:                                      ; preds = %while.cond10
  %14 = load ptr, ptr %data, align 8
  store i64 0, ptr %14, align 8
  %15 = load ptr, ptr %ptr.addr, align 8
  %arraydecay16 = getelementptr inbounds [31 x i64], ptr %padded, i64 0, i64 0
  %call = call i64 @id3_latin1_serialize(ptr noundef %15, ptr noundef %arraydecay16, i32 noundef 0)
  ret i64 %call
}

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { cold noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { cold noreturn }
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
