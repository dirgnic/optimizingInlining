; ModuleID = './source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/libid3tag/utf16.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/libid3tag/utf16.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: nounwind ssp uwtable
define i64 @id3_utf16_length(ptr noundef %utf16) #0 {
entry:
  %utf16.addr = alloca ptr, align 8
  %length = alloca i64, align 8
  store ptr %utf16, ptr %utf16.addr, align 8
  store i64 0, ptr %length, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end26, %entry
  %0 = load ptr, ptr %utf16.addr, align 8
  %1 = load i16, ptr %0, align 2
  %tobool = icmp ne i16 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %utf16.addr, align 8
  %arrayidx = getelementptr inbounds i16, ptr %2, i64 0
  %3 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %3 to i32
  %cmp = icmp slt i32 %conv, 55296
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %4 = load ptr, ptr %utf16.addr, align 8
  %arrayidx2 = getelementptr inbounds i16, ptr %4, i64 0
  %5 = load i16, ptr %arrayidx2, align 2
  %conv3 = zext i16 %5 to i32
  %cmp4 = icmp sgt i32 %conv3, 57343
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %while.body
  %6 = load i64, ptr %length, align 8
  %inc = add i64 %6, 1
  store i64 %inc, ptr %length, align 8
  br label %if.end26

if.else:                                          ; preds = %lor.lhs.false
  %7 = load ptr, ptr %utf16.addr, align 8
  %arrayidx6 = getelementptr inbounds i16, ptr %7, i64 0
  %8 = load i16, ptr %arrayidx6, align 2
  %conv7 = zext i16 %8 to i32
  %cmp8 = icmp sge i32 %conv7, 55296
  br i1 %cmp8, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else
  %9 = load ptr, ptr %utf16.addr, align 8
  %arrayidx10 = getelementptr inbounds i16, ptr %9, i64 0
  %10 = load i16, ptr %arrayidx10, align 2
  %conv11 = zext i16 %10 to i32
  %cmp12 = icmp sle i32 %conv11, 56319
  br i1 %cmp12, label %land.lhs.true14, label %if.end

land.lhs.true14:                                  ; preds = %land.lhs.true
  %11 = load ptr, ptr %utf16.addr, align 8
  %arrayidx15 = getelementptr inbounds i16, ptr %11, i64 1
  %12 = load i16, ptr %arrayidx15, align 2
  %conv16 = zext i16 %12 to i32
  %cmp17 = icmp sge i32 %conv16, 56320
  br i1 %cmp17, label %land.lhs.true19, label %if.end

land.lhs.true19:                                  ; preds = %land.lhs.true14
  %13 = load ptr, ptr %utf16.addr, align 8
  %arrayidx20 = getelementptr inbounds i16, ptr %13, i64 1
  %14 = load i16, ptr %arrayidx20, align 2
  %conv21 = zext i16 %14 to i32
  %cmp22 = icmp sle i32 %conv21, 57343
  br i1 %cmp22, label %if.then24, label %if.end

if.then24:                                        ; preds = %land.lhs.true19
  %15 = load i64, ptr %length, align 8
  %inc25 = add i64 %15, 1
  store i64 %inc25, ptr %length, align 8
  %16 = load ptr, ptr %utf16.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %16, i32 1
  store ptr %incdec.ptr, ptr %utf16.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then24, %land.lhs.true19, %land.lhs.true14, %land.lhs.true, %if.else
  br label %if.end26

if.end26:                                         ; preds = %if.end, %if.then
  %17 = load ptr, ptr %utf16.addr, align 8
  %incdec.ptr27 = getelementptr inbounds i16, ptr %17, i32 1
  store ptr %incdec.ptr27, ptr %utf16.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %18 = load i64, ptr %length, align 8
  ret i64 %18
}

; Function Attrs: nounwind ssp uwtable
define i64 @id3_utf16_size(ptr noundef %utf16) #0 {
entry:
  %utf16.addr = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  store ptr %utf16, ptr %utf16.addr, align 8
  %0 = load ptr, ptr %utf16.addr, align 8
  store ptr %0, ptr %ptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %ptr, align 8
  %2 = load i16, ptr %1, align 2
  %tobool = icmp ne i16 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %ptr, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %3, i32 1
  store ptr %incdec.ptr, ptr %ptr, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %4 = load ptr, ptr %ptr, align 8
  %5 = load ptr, ptr %utf16.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %4 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 2
  %add = add nsw i64 %sub.ptr.div, 1
  ret i64 %add
}

; Function Attrs: nounwind ssp uwtable
define i64 @id3_utf16_decodechar(ptr noundef %utf16, ptr noundef %ucs4) #0 {
entry:
  %retval = alloca i64, align 8
  %utf16.addr = alloca ptr, align 8
  %ucs4.addr = alloca ptr, align 8
  %start = alloca ptr, align 8
  store ptr %utf16, ptr %utf16.addr, align 8
  store ptr %ucs4, ptr %ucs4.addr, align 8
  %0 = load ptr, ptr %utf16.addr, align 8
  store ptr %0, ptr %start, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.end39
  %1 = load ptr, ptr %utf16.addr, align 8
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 0
  %2 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %2 to i32
  %cmp = icmp slt i32 %conv, 55296
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %3 = load ptr, ptr %utf16.addr, align 8
  %arrayidx2 = getelementptr inbounds i16, ptr %3, i64 0
  %4 = load i16, ptr %arrayidx2, align 2
  %conv3 = zext i16 %4 to i32
  %cmp4 = icmp sgt i32 %conv3, 57343
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %while.body
  %5 = load ptr, ptr %utf16.addr, align 8
  %arrayidx6 = getelementptr inbounds i16, ptr %5, i64 0
  %6 = load i16, ptr %arrayidx6, align 2
  %conv7 = zext i16 %6 to i64
  %7 = load ptr, ptr %ucs4.addr, align 8
  store i64 %conv7, ptr %7, align 8
  %8 = load ptr, ptr %utf16.addr, align 8
  %9 = load ptr, ptr %start, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %8 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 2
  %add = add nsw i64 %sub.ptr.div, 1
  store i64 %add, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %10 = load ptr, ptr %utf16.addr, align 8
  %arrayidx8 = getelementptr inbounds i16, ptr %10, i64 0
  %11 = load i16, ptr %arrayidx8, align 2
  %conv9 = zext i16 %11 to i32
  %cmp10 = icmp sge i32 %conv9, 55296
  br i1 %cmp10, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else
  %12 = load ptr, ptr %utf16.addr, align 8
  %arrayidx12 = getelementptr inbounds i16, ptr %12, i64 0
  %13 = load i16, ptr %arrayidx12, align 2
  %conv13 = zext i16 %13 to i32
  %cmp14 = icmp sle i32 %conv13, 56319
  br i1 %cmp14, label %land.lhs.true16, label %if.end

land.lhs.true16:                                  ; preds = %land.lhs.true
  %14 = load ptr, ptr %utf16.addr, align 8
  %arrayidx17 = getelementptr inbounds i16, ptr %14, i64 1
  %15 = load i16, ptr %arrayidx17, align 2
  %conv18 = zext i16 %15 to i32
  %cmp19 = icmp sge i32 %conv18, 56320
  br i1 %cmp19, label %land.lhs.true21, label %if.end

land.lhs.true21:                                  ; preds = %land.lhs.true16
  %16 = load ptr, ptr %utf16.addr, align 8
  %arrayidx22 = getelementptr inbounds i16, ptr %16, i64 1
  %17 = load i16, ptr %arrayidx22, align 2
  %conv23 = zext i16 %17 to i32
  %cmp24 = icmp sle i32 %conv23, 57343
  br i1 %cmp24, label %if.then26, label %if.end

if.then26:                                        ; preds = %land.lhs.true21
  %18 = load ptr, ptr %utf16.addr, align 8
  %arrayidx27 = getelementptr inbounds i16, ptr %18, i64 0
  %19 = load i16, ptr %arrayidx27, align 2
  %conv28 = zext i16 %19 to i64
  %and = and i64 %conv28, 1023
  %shl = shl i64 %and, 10
  %20 = load ptr, ptr %utf16.addr, align 8
  %arrayidx29 = getelementptr inbounds i16, ptr %20, i64 1
  %21 = load i16, ptr %arrayidx29, align 2
  %conv30 = zext i16 %21 to i64
  %and31 = and i64 %conv30, 1023
  %shl32 = shl i64 %and31, 0
  %or = or i64 %shl, %shl32
  %add33 = add nsw i64 %or, 65536
  %22 = load ptr, ptr %ucs4.addr, align 8
  store i64 %add33, ptr %22, align 8
  %23 = load ptr, ptr %utf16.addr, align 8
  %24 = load ptr, ptr %start, align 8
  %sub.ptr.lhs.cast34 = ptrtoint ptr %23 to i64
  %sub.ptr.rhs.cast35 = ptrtoint ptr %24 to i64
  %sub.ptr.sub36 = sub i64 %sub.ptr.lhs.cast34, %sub.ptr.rhs.cast35
  %sub.ptr.div37 = sdiv exact i64 %sub.ptr.sub36, 2
  %add38 = add nsw i64 %sub.ptr.div37, 2
  store i64 %add38, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %land.lhs.true21, %land.lhs.true16, %land.lhs.true, %if.else
  br label %if.end39

if.end39:                                         ; preds = %if.end
  %25 = load ptr, ptr %utf16.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %25, i32 1
  store ptr %incdec.ptr, ptr %utf16.addr, align 8
  br label %while.body

return:                                           ; preds = %if.then26, %if.then
  %26 = load i64, ptr %retval, align 8
  ret i64 %26
}

; Function Attrs: nounwind ssp uwtable
define i64 @id3_utf16_encodechar(ptr noundef %utf16, i64 noundef %ucs4) #0 {
entry:
  %retval = alloca i64, align 8
  %utf16.addr = alloca ptr, align 8
  %ucs4.addr = alloca i64, align 8
  store ptr %utf16, ptr %utf16.addr, align 8
  store i64 %ucs4, ptr %ucs4.addr, align 8
  %0 = load i64, ptr %ucs4.addr, align 8
  %cmp = icmp ult i64 %0, 65536
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %ucs4.addr, align 8
  %conv = trunc i64 %1 to i16
  %2 = load ptr, ptr %utf16.addr, align 8
  %arrayidx = getelementptr inbounds i16, ptr %2, i64 0
  store i16 %conv, ptr %arrayidx, align 2
  store i64 1, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %3 = load i64, ptr %ucs4.addr, align 8
  %cmp1 = icmp ult i64 %3, 1114112
  br i1 %cmp1, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.else
  %4 = load i64, ptr %ucs4.addr, align 8
  %sub = sub i64 %4, 65536
  store i64 %sub, ptr %ucs4.addr, align 8
  %5 = load i64, ptr %ucs4.addr, align 8
  %shr = lshr i64 %5, 10
  %and = and i64 %shr, 1023
  %or = or i64 %and, 55296
  %conv4 = trunc i64 %or to i16
  %6 = load ptr, ptr %utf16.addr, align 8
  %arrayidx5 = getelementptr inbounds i16, ptr %6, i64 0
  store i16 %conv4, ptr %arrayidx5, align 2
  %7 = load i64, ptr %ucs4.addr, align 8
  %shr6 = lshr i64 %7, 0
  %and7 = and i64 %shr6, 1023
  %or8 = or i64 %and7, 56320
  %conv9 = trunc i64 %or8 to i16
  %8 = load ptr, ptr %utf16.addr, align 8
  %arrayidx10 = getelementptr inbounds i16, ptr %8, i64 1
  store i16 %conv9, ptr %arrayidx10, align 2
  store i64 2, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end11

if.end11:                                         ; preds = %if.end
  %9 = load ptr, ptr %utf16.addr, align 8
  %call = call i64 @id3_utf16_encodechar(ptr noundef %9, i64 noundef 183)
  store i64 %call, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end11, %if.then3, %if.then
  %10 = load i64, ptr %retval, align 8
  ret i64 %10
}

; Function Attrs: nounwind ssp uwtable
define void @id3_utf16_decode(ptr noundef %utf16, ptr noundef %ucs4) #0 {
entry:
  %utf16.addr = alloca ptr, align 8
  %ucs4.addr = alloca ptr, align 8
  store ptr %utf16, ptr %utf16.addr, align 8
  store ptr %ucs4, ptr %ucs4.addr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load ptr, ptr %utf16.addr, align 8
  %1 = load ptr, ptr %ucs4.addr, align 8
  %call = call i64 @id3_utf16_decodechar(ptr noundef %0, ptr noundef %1)
  %2 = load ptr, ptr %utf16.addr, align 8
  %add.ptr = getelementptr inbounds i16, ptr %2, i64 %call
  store ptr %add.ptr, ptr %utf16.addr, align 8
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
define void @id3_utf16_encode(ptr noundef %utf16, ptr noundef %ucs4) #0 {
entry:
  %utf16.addr = alloca ptr, align 8
  %ucs4.addr = alloca ptr, align 8
  store ptr %utf16, ptr %utf16.addr, align 8
  store ptr %ucs4, ptr %ucs4.addr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load ptr, ptr %utf16.addr, align 8
  %1 = load ptr, ptr %ucs4.addr, align 8
  %2 = load i64, ptr %1, align 8
  %call = call i64 @id3_utf16_encodechar(ptr noundef %0, i64 noundef %2)
  %3 = load ptr, ptr %utf16.addr, align 8
  %add.ptr = getelementptr inbounds i16, ptr %3, i64 %call
  store ptr %add.ptr, ptr %utf16.addr, align 8
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
define i64 @id3_utf16_put(ptr noundef %ptr, i16 noundef zeroext %utf16, i32 noundef %byteorder) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  %utf16.addr = alloca i16, align 2
  %byteorder.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  store i16 %utf16, ptr %utf16.addr, align 2
  store i32 %byteorder, ptr %byteorder.addr, align 4
  %0 = load ptr, ptr %ptr.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %byteorder.addr, align 4
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb7
  ]

sw.default:                                       ; preds = %if.then
  br label %sw.bb

sw.bb:                                            ; preds = %if.then, %sw.default
  %2 = load i16, ptr %utf16.addr, align 2
  %conv = zext i16 %2 to i32
  %shr = ashr i32 %conv, 8
  %and = and i32 %shr, 255
  %conv1 = trunc i32 %and to i8
  %3 = load ptr, ptr %ptr.addr, align 8
  %4 = load ptr, ptr %3, align 8
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 0
  store i8 %conv1, ptr %arrayidx, align 1
  %5 = load i16, ptr %utf16.addr, align 2
  %conv2 = zext i16 %5 to i32
  %shr3 = ashr i32 %conv2, 0
  %and4 = and i32 %shr3, 255
  %conv5 = trunc i32 %and4 to i8
  %6 = load ptr, ptr %ptr.addr, align 8
  %7 = load ptr, ptr %6, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %7, i64 1
  store i8 %conv5, ptr %arrayidx6, align 1
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.then
  %8 = load i16, ptr %utf16.addr, align 2
  %conv8 = zext i16 %8 to i32
  %shr9 = ashr i32 %conv8, 0
  %and10 = and i32 %shr9, 255
  %conv11 = trunc i32 %and10 to i8
  %9 = load ptr, ptr %ptr.addr, align 8
  %10 = load ptr, ptr %9, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %10, i64 0
  store i8 %conv11, ptr %arrayidx12, align 1
  %11 = load i16, ptr %utf16.addr, align 2
  %conv13 = zext i16 %11 to i32
  %shr14 = ashr i32 %conv13, 8
  %and15 = and i32 %shr14, 255
  %conv16 = trunc i32 %and15 to i8
  %12 = load ptr, ptr %ptr.addr, align 8
  %13 = load ptr, ptr %12, align 8
  %arrayidx17 = getelementptr inbounds i8, ptr %13, i64 1
  store i8 %conv16, ptr %arrayidx17, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb
  %14 = load ptr, ptr %ptr.addr, align 8
  %15 = load ptr, ptr %14, align 8
  %add.ptr = getelementptr inbounds i8, ptr %15, i64 2
  store ptr %add.ptr, ptr %14, align 8
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %entry
  ret i64 2
}

; Function Attrs: nounwind ssp uwtable
define zeroext i16 @id3_utf16_get(ptr noundef %ptr, i32 noundef %byteorder) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  %byteorder.addr = alloca i32, align 4
  %utf16 = alloca i16, align 2
  store ptr %ptr, ptr %ptr.addr, align 8
  store i32 %byteorder, ptr %byteorder.addr, align 4
  %0 = load i32, ptr %byteorder.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb5
  ]

sw.default:                                       ; preds = %entry
  br label %sw.bb

sw.bb:                                            ; preds = %entry, %sw.default
  %1 = load ptr, ptr %ptr.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 0
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %shl = shl i32 %conv, 8
  %4 = load ptr, ptr %ptr.addr, align 8
  %5 = load ptr, ptr %4, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %5, i64 1
  %6 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %6 to i32
  %shl3 = shl i32 %conv2, 0
  %or = or i32 %shl, %shl3
  %conv4 = trunc i32 %or to i16
  store i16 %conv4, ptr %utf16, align 2
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %7 = load ptr, ptr %ptr.addr, align 8
  %8 = load ptr, ptr %7, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %8, i64 0
  %9 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %9 to i32
  %shl8 = shl i32 %conv7, 0
  %10 = load ptr, ptr %ptr.addr, align 8
  %11 = load ptr, ptr %10, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %11, i64 1
  %12 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %12 to i32
  %shl11 = shl i32 %conv10, 8
  %or12 = or i32 %shl8, %shl11
  %conv13 = trunc i32 %or12 to i16
  store i16 %conv13, ptr %utf16, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb
  %13 = load ptr, ptr %ptr.addr, align 8
  %14 = load ptr, ptr %13, align 8
  %add.ptr = getelementptr inbounds i8, ptr %14, i64 2
  store ptr %add.ptr, ptr %13, align 8
  %15 = load i16, ptr %utf16, align 2
  ret i16 %15
}

; Function Attrs: nounwind ssp uwtable
define i64 @id3_utf16_serialize(ptr noundef %ptr, ptr noundef %ucs4, i32 noundef %byteorder, i32 noundef %terminate) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  %ucs4.addr = alloca ptr, align 8
  %byteorder.addr = alloca i32, align 4
  %terminate.addr = alloca i32, align 4
  %size = alloca i64, align 8
  %utf16 = alloca [2 x i16], align 2
  %out = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  store ptr %ucs4, ptr %ucs4.addr, align 8
  store i32 %byteorder, ptr %byteorder.addr, align 4
  store i32 %terminate, ptr %terminate.addr, align 4
  store i64 0, ptr %size, align 8
  %0 = load i32, ptr %byteorder.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %ptr.addr, align 8
  %2 = load i32, ptr %byteorder.addr, align 4
  %call = call i64 @id3_utf16_put(ptr noundef %1, i16 noundef zeroext -257, i32 noundef %2)
  %3 = load i64, ptr %size, align 8
  %add = add i64 %3, %call
  store i64 %add, ptr %size, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end
  %4 = load ptr, ptr %ucs4.addr, align 8
  %5 = load i64, ptr %4, align 8
  %tobool = icmp ne i64 %5, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay = getelementptr inbounds [2 x i16], ptr %utf16, i64 0, i64 0
  store ptr %arraydecay, ptr %out, align 8
  %6 = load ptr, ptr %ucs4.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %6, i32 1
  store ptr %incdec.ptr, ptr %ucs4.addr, align 8
  %7 = load i64, ptr %6, align 8
  %call1 = call i64 @id3_utf16_encodechar(ptr noundef %arraydecay, i64 noundef %7)
  switch i64 %call1, label %sw.epilog [
    i64 2, label %sw.bb
    i64 1, label %sw.bb5
    i64 0, label %sw.bb9
  ]

sw.bb:                                            ; preds = %while.body
  %8 = load ptr, ptr %ptr.addr, align 8
  %9 = load ptr, ptr %out, align 8
  %incdec.ptr2 = getelementptr inbounds i16, ptr %9, i32 1
  store ptr %incdec.ptr2, ptr %out, align 8
  %10 = load i16, ptr %9, align 2
  %11 = load i32, ptr %byteorder.addr, align 4
  %call3 = call i64 @id3_utf16_put(ptr noundef %8, i16 noundef zeroext %10, i32 noundef %11)
  %12 = load i64, ptr %size, align 8
  %add4 = add i64 %12, %call3
  store i64 %add4, ptr %size, align 8
  br label %sw.bb5

sw.bb5:                                           ; preds = %while.body, %sw.bb
  %13 = load ptr, ptr %ptr.addr, align 8
  %14 = load ptr, ptr %out, align 8
  %incdec.ptr6 = getelementptr inbounds i16, ptr %14, i32 1
  store ptr %incdec.ptr6, ptr %out, align 8
  %15 = load i16, ptr %14, align 2
  %16 = load i32, ptr %byteorder.addr, align 4
  %call7 = call i64 @id3_utf16_put(ptr noundef %13, i16 noundef zeroext %15, i32 noundef %16)
  %17 = load i64, ptr %size, align 8
  %add8 = add i64 %17, %call7
  store i64 %add8, ptr %size, align 8
  br label %sw.bb9

sw.bb9:                                           ; preds = %while.body, %sw.bb5
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.body, %sw.bb9
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  %18 = load i32, ptr %terminate.addr, align 4
  %tobool10 = icmp ne i32 %18, 0
  br i1 %tobool10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %while.end
  %19 = load ptr, ptr %ptr.addr, align 8
  %20 = load i32, ptr %byteorder.addr, align 4
  %call12 = call i64 @id3_utf16_put(ptr noundef %19, i16 noundef zeroext 0, i32 noundef %20)
  %21 = load i64, ptr %size, align 8
  %add13 = add i64 %21, %call12
  store i64 %add13, ptr %size, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %while.end
  %22 = load i64, ptr %size, align 8
  ret i64 %22
}

; Function Attrs: nounwind ssp uwtable
define ptr @id3_utf16_deserialize(ptr noundef %ptr, i64 noundef %length, i32 noundef %byteorder) #0 {
entry:
  %retval = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %byteorder.addr = alloca i32, align 4
  %end = alloca ptr, align 8
  %utf16ptr = alloca ptr, align 8
  %utf16 = alloca ptr, align 8
  %ucs4 = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  store i64 %length, ptr %length.addr, align 8
  store i32 %byteorder, ptr %byteorder.addr, align 4
  %0 = load ptr, ptr %ptr.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %2 = load i64, ptr %length.addr, align 8
  %and = and i64 %2, -2
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %and
  store ptr %add.ptr, ptr %end, align 8
  %3 = load i64, ptr %length.addr, align 8
  %div = udiv i64 %3, 2
  %add = add i64 %div, 1
  %mul = mul i64 %add, 2
  %call = call ptr @malloc(i64 noundef %mul) #3
  store ptr %call, ptr %utf16, align 8
  %4 = load ptr, ptr %utf16, align 8
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, ptr %byteorder.addr, align 4
  %cmp1 = icmp eq i32 %5, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %6 = load ptr, ptr %end, align 8
  %7 = load ptr, ptr %ptr.addr, align 8
  %8 = load ptr, ptr %7, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %6 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp2 = icmp sgt i64 %sub.ptr.sub, 0
  br i1 %cmp2, label %if.then3, label %if.end10

if.then3:                                         ; preds = %land.lhs.true
  %9 = load ptr, ptr %ptr.addr, align 8
  %10 = load ptr, ptr %9, align 8
  %arrayidx = getelementptr inbounds i8, ptr %10, i64 0
  %11 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %11 to i32
  %shl = shl i32 %conv, 8
  %12 = load ptr, ptr %ptr.addr, align 8
  %13 = load ptr, ptr %12, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %13, i64 1
  %14 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %14 to i32
  %shl6 = shl i32 %conv5, 0
  %or = or i32 %shl, %shl6
  switch i32 %or, label %sw.epilog [
    i32 65279, label %sw.bb
    i32 65534, label %sw.bb8
  ]

sw.bb:                                            ; preds = %if.then3
  store i32 1, ptr %byteorder.addr, align 4
  %15 = load ptr, ptr %ptr.addr, align 8
  %16 = load ptr, ptr %15, align 8
  %add.ptr7 = getelementptr inbounds i8, ptr %16, i64 2
  store ptr %add.ptr7, ptr %15, align 8
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.then3
  store i32 2, ptr %byteorder.addr, align 4
  %17 = load ptr, ptr %ptr.addr, align 8
  %18 = load ptr, ptr %17, align 8
  %add.ptr9 = getelementptr inbounds i8, ptr %18, i64 2
  store ptr %add.ptr9, ptr %17, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then3, %sw.bb8, %sw.bb
  br label %if.end10

if.end10:                                         ; preds = %sw.epilog, %land.lhs.true, %if.end
  %19 = load ptr, ptr %utf16, align 8
  store ptr %19, ptr %utf16ptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end10
  %20 = load ptr, ptr %end, align 8
  %21 = load ptr, ptr %ptr.addr, align 8
  %22 = load ptr, ptr %21, align 8
  %sub.ptr.lhs.cast11 = ptrtoint ptr %20 to i64
  %sub.ptr.rhs.cast12 = ptrtoint ptr %22 to i64
  %sub.ptr.sub13 = sub i64 %sub.ptr.lhs.cast11, %sub.ptr.rhs.cast12
  %cmp14 = icmp sgt i64 %sub.ptr.sub13, 0
  br i1 %cmp14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %23 = load ptr, ptr %ptr.addr, align 8
  %24 = load i32, ptr %byteorder.addr, align 4
  %call16 = call zeroext i16 @id3_utf16_get(ptr noundef %23, i32 noundef %24)
  %25 = load ptr, ptr %utf16ptr, align 8
  store i16 %call16, ptr %25, align 2
  %conv17 = zext i16 %call16 to i32
  %tobool = icmp ne i32 %conv17, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %26 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %26, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %27 = load ptr, ptr %utf16ptr, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %27, i32 1
  store ptr %incdec.ptr, ptr %utf16ptr, align 8
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %land.end
  %28 = load ptr, ptr %utf16ptr, align 8
  store i16 0, ptr %28, align 2
  %29 = load ptr, ptr %utf16, align 8
  %call18 = call i64 @id3_utf16_length(ptr noundef %29)
  %add19 = add i64 %call18, 1
  %mul20 = mul i64 %add19, 8
  %call21 = call ptr @malloc(i64 noundef %mul20) #3
  store ptr %call21, ptr %ucs4, align 8
  %30 = load ptr, ptr %ucs4, align 8
  %tobool22 = icmp ne ptr %30, null
  br i1 %tobool22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %while.end
  %31 = load ptr, ptr %utf16, align 8
  %32 = load ptr, ptr %ucs4, align 8
  call void @id3_utf16_decode(ptr noundef %31, ptr noundef %32)
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %while.end
  %33 = load ptr, ptr %utf16, align 8
  call void @free(ptr noundef %33)
  %34 = load ptr, ptr %ucs4, align 8
  store ptr %34, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end24, %if.then
  %35 = load ptr, ptr %retval, align 8
  ret ptr %35
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

declare void @free(ptr noundef) #2

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
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
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
