; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_small_callee/source_snapshot_public_repos_mibench_consumer_mad_mad-0.14.2b_libid3tag_utf16.prepared.ll'
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
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %utf16.addr, align 8
  %3 = load i16, ptr %2, align 2
  %cmp = icmp ult i16 %3, -10240
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %4 = load ptr, ptr %utf16.addr, align 8
  %5 = load i16, ptr %4, align 2
  %cmp4 = icmp ugt i16 %5, -8193
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %while.body
  %6 = load i64, ptr %length, align 8
  %inc = add i64 %6, 1
  store i64 %inc, ptr %length, align 8
  br label %if.end26

if.else:                                          ; preds = %lor.lhs.false
  %7 = load ptr, ptr %utf16.addr, align 8
  %8 = load i16, ptr %7, align 2
  %cmp8 = icmp ugt i16 %8, -10241
  br i1 %cmp8, label %land.lhs.true, label %if.end26

land.lhs.true:                                    ; preds = %if.else
  %9 = load ptr, ptr %utf16.addr, align 8
  %10 = load i16, ptr %9, align 2
  %cmp12 = icmp ult i16 %10, -9216
  br i1 %cmp12, label %land.lhs.true14, label %if.end26

land.lhs.true14:                                  ; preds = %land.lhs.true
  %11 = load ptr, ptr %utf16.addr, align 8
  %arrayidx15 = getelementptr inbounds i16, ptr %11, i64 1
  %12 = load i16, ptr %arrayidx15, align 2
  %cmp17 = icmp ugt i16 %12, -9217
  br i1 %cmp17, label %land.lhs.true19, label %if.end26

land.lhs.true19:                                  ; preds = %land.lhs.true14
  %13 = load ptr, ptr %utf16.addr, align 8
  %arrayidx20 = getelementptr inbounds i16, ptr %13, i64 1
  %14 = load i16, ptr %arrayidx20, align 2
  %cmp22 = icmp ult i16 %14, -8192
  br i1 %cmp22, label %if.then24, label %if.end26

if.then24:                                        ; preds = %land.lhs.true19
  %15 = load i64, ptr %length, align 8
  %inc25 = add i64 %15, 1
  store i64 %inc25, ptr %length, align 8
  %16 = load ptr, ptr %utf16.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %16, i64 1
  store ptr %incdec.ptr, ptr %utf16.addr, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.else, %land.lhs.true, %land.lhs.true14, %land.lhs.true19, %if.then24, %if.then
  %17 = load ptr, ptr %utf16.addr, align 8
  %incdec.ptr27 = getelementptr inbounds i16, ptr %17, i64 1
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
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %storemerge = phi ptr [ %utf16, %entry ], [ %incdec.ptr, %while.body ]
  store ptr %storemerge, ptr %ptr, align 8
  %0 = load i16, ptr %storemerge, align 2
  %tobool.not = icmp eq i16 %0, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %ptr, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %1, i64 1
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %2 = load ptr, ptr %ptr, align 8
  %3 = load ptr, ptr %utf16.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %2 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 1
  %add = add nsw i64 %sub.ptr.div, 1
  ret i64 %add
}

; Function Attrs: nounwind ssp uwtable
define i64 @id3_utf16_decodechar(ptr noundef %utf16, ptr noundef %ucs4) #0 {
entry:
  %utf16.addr = alloca ptr, align 8
  %ucs4.addr = alloca ptr, align 8
  %start = alloca ptr, align 8
  store ptr %utf16, ptr %utf16.addr, align 8
  store ptr %ucs4, ptr %ucs4.addr, align 8
  store ptr %utf16, ptr %start, align 8
  br label %while.body

while.body:                                       ; preds = %if.end39, %entry
  %0 = load ptr, ptr %utf16.addr, align 8
  %1 = load i16, ptr %0, align 2
  %cmp = icmp ult i16 %1, -10240
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %2 = load ptr, ptr %utf16.addr, align 8
  %3 = load i16, ptr %2, align 2
  %cmp4 = icmp ugt i16 %3, -8193
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %while.body
  %4 = load ptr, ptr %utf16.addr, align 8
  %5 = load i16, ptr %4, align 2
  %conv7 = zext i16 %5 to i64
  %6 = load ptr, ptr %ucs4.addr, align 8
  store i64 %conv7, ptr %6, align 8
  %7 = load ptr, ptr %start, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %4 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 1
  %add = add nsw i64 %sub.ptr.div, 1
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %8 = load ptr, ptr %utf16.addr, align 8
  %9 = load i16, ptr %8, align 2
  %cmp10 = icmp ugt i16 %9, -10241
  br i1 %cmp10, label %land.lhs.true, label %if.end39

land.lhs.true:                                    ; preds = %if.else
  %10 = load ptr, ptr %utf16.addr, align 8
  %11 = load i16, ptr %10, align 2
  %cmp14 = icmp ult i16 %11, -9216
  br i1 %cmp14, label %land.lhs.true16, label %if.end39

land.lhs.true16:                                  ; preds = %land.lhs.true
  %12 = load ptr, ptr %utf16.addr, align 8
  %arrayidx17 = getelementptr inbounds i16, ptr %12, i64 1
  %13 = load i16, ptr %arrayidx17, align 2
  %cmp19 = icmp ugt i16 %13, -9217
  br i1 %cmp19, label %land.lhs.true21, label %if.end39

land.lhs.true21:                                  ; preds = %land.lhs.true16
  %14 = load ptr, ptr %utf16.addr, align 8
  %arrayidx22 = getelementptr inbounds i16, ptr %14, i64 1
  %15 = load i16, ptr %arrayidx22, align 2
  %cmp24 = icmp ult i16 %15, -8192
  br i1 %cmp24, label %if.then26, label %if.end39

if.then26:                                        ; preds = %land.lhs.true21
  %16 = load ptr, ptr %utf16.addr, align 8
  %17 = load i16, ptr %16, align 2
  %18 = and i16 %17, 1023
  %and = zext i16 %18 to i64
  %shl = shl nuw nsw i64 %and, 10
  %arrayidx29 = getelementptr inbounds i16, ptr %16, i64 1
  %19 = load i16, ptr %arrayidx29, align 2
  %20 = and i16 %19, 1023
  %and31 = zext i16 %20 to i64
  %or = or i64 %shl, %and31
  %add33 = add nuw nsw i64 %or, 65536
  %21 = load ptr, ptr %ucs4.addr, align 8
  store i64 %add33, ptr %21, align 8
  %22 = load ptr, ptr %utf16.addr, align 8
  %23 = load ptr, ptr %start, align 8
  %sub.ptr.lhs.cast34 = ptrtoint ptr %22 to i64
  %sub.ptr.rhs.cast35 = ptrtoint ptr %23 to i64
  %sub.ptr.sub36 = sub i64 %sub.ptr.lhs.cast34, %sub.ptr.rhs.cast35
  %sub.ptr.div37 = ashr exact i64 %sub.ptr.sub36, 1
  %add38 = add nsw i64 %sub.ptr.div37, 2
  br label %return

if.end39:                                         ; preds = %if.else, %land.lhs.true, %land.lhs.true16, %land.lhs.true21
  %24 = load ptr, ptr %utf16.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %24, i64 1
  store ptr %incdec.ptr, ptr %utf16.addr, align 8
  br label %while.body

return:                                           ; preds = %if.then26, %if.then
  %storemerge = phi i64 [ %add38, %if.then26 ], [ %add, %if.then ]
  ret i64 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define i64 @id3_utf16_encodechar(ptr noundef %utf16, i64 noundef %ucs4) #0 {
entry:
  %retval = alloca i64, align 8
  %utf16.addr = alloca ptr, align 8
  %ucs4.addr = alloca i64, align 8
  store ptr %utf16, ptr %utf16.addr, align 8
  store i64 %ucs4, ptr %ucs4.addr, align 8
  %cmp = icmp ult i64 %ucs4, 65536
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load i64, ptr %ucs4.addr, align 8
  %conv = trunc i64 %0 to i16
  %1 = load ptr, ptr %utf16.addr, align 8
  store i16 %conv, ptr %1, align 2
  store i64 1, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i64, ptr %ucs4.addr, align 8
  %cmp1 = icmp ult i64 %2, 1114112
  br i1 %cmp1, label %if.then3, label %if.end11

if.then3:                                         ; preds = %if.else
  %3 = load i64, ptr %ucs4.addr, align 8
  %sub = add i64 %3, -65536
  store i64 %sub, ptr %ucs4.addr, align 8
  %shr = lshr i64 %sub, 10
  %4 = trunc i64 %shr to i16
  %5 = and i16 %4, 1023
  %conv4 = or i16 %5, -10240
  %6 = load ptr, ptr %utf16.addr, align 8
  store i16 %conv4, ptr %6, align 2
  %7 = load i64, ptr %ucs4.addr, align 8
  %8 = trunc i64 %7 to i16
  %9 = and i16 %8, 1023
  %conv9 = or i16 %9, -9216
  %arrayidx10 = getelementptr inbounds i16, ptr %6, i64 1
  store i16 %conv9, ptr %arrayidx10, align 2
  store i64 2, ptr %retval, align 8
  br label %return

if.end11:                                         ; preds = %if.else
  %10 = load ptr, ptr %utf16.addr, align 8
  %call = call i64 @id3_utf16_encodechar(ptr noundef %10, i64 noundef 183)
  store i64 %call, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end11, %if.then3, %if.then
  %11 = load i64, ptr %retval, align 8
  ret i64 %11
}

; Function Attrs: nounwind ssp uwtable
define void @id3_utf16_decode(ptr noundef %utf16, ptr noundef %ucs4) #0 {
entry:
  %utf16.addr = alloca ptr, align 8
  %ucs4.addr = alloca ptr, align 8
  store ptr %utf16, ptr %utf16.addr, align 8
  store ptr %ucs4, ptr %ucs4.addr, align 8
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %0 = load ptr, ptr %utf16.addr, align 8
  %1 = load ptr, ptr %ucs4.addr, align 8
  %call = call i64 @id3_utf16_decodechar(ptr noundef %0, ptr noundef %1)
  %add.ptr = getelementptr inbounds i16, ptr %0, i64 %call
  store ptr %add.ptr, ptr %utf16.addr, align 8
  %2 = load ptr, ptr %ucs4.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %2, i64 1
  store ptr %incdec.ptr, ptr %ucs4.addr, align 8
  %3 = load i64, ptr %2, align 8
  %tobool.not = icmp eq i64 %3, 0
  br i1 %tobool.not, label %do.end, label %do.body, !llvm.loop !9

do.end:                                           ; preds = %do.body
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

do.body:                                          ; preds = %do.body, %entry
  %0 = load ptr, ptr %utf16.addr, align 8
  %1 = load ptr, ptr %ucs4.addr, align 8
  %2 = load i64, ptr %1, align 8
  %call = call i64 @id3_utf16_encodechar(ptr noundef %0, i64 noundef %2)
  %add.ptr = getelementptr inbounds i16, ptr %0, i64 %call
  store ptr %add.ptr, ptr %utf16.addr, align 8
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
define i64 @id3_utf16_put(ptr noundef %ptr, i16 noundef zeroext %utf16, i32 noundef %byteorder) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  %utf16.addr = alloca i16, align 2
  %byteorder.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  store i16 %utf16, ptr %utf16.addr, align 2
  store i32 %byteorder, ptr %byteorder.addr, align 4
  %tobool.not = icmp eq ptr %ptr, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %byteorder.addr, align 4
  %cond = icmp eq i32 %0, 2
  br i1 %cond, label %sw.bb7, label %sw.bb

sw.bb:                                            ; preds = %if.then
  %1 = load i16, ptr %utf16.addr, align 2
  %2 = lshr i16 %1, 8
  %conv1 = trunc i16 %2 to i8
  %3 = load ptr, ptr %ptr.addr, align 8
  %4 = load ptr, ptr %3, align 8
  store i8 %conv1, ptr %4, align 1
  %conv5 = trunc i16 %1 to i8
  %5 = load ptr, ptr %3, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %5, i64 1
  store i8 %conv5, ptr %arrayidx6, align 1
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.then
  %6 = load i16, ptr %utf16.addr, align 2
  %conv11 = trunc i16 %6 to i8
  %7 = load ptr, ptr %ptr.addr, align 8
  %8 = load ptr, ptr %7, align 8
  store i8 %conv11, ptr %8, align 1
  %9 = lshr i16 %6, 8
  %conv16 = trunc i16 %9 to i8
  %10 = load ptr, ptr %7, align 8
  %arrayidx17 = getelementptr inbounds i8, ptr %10, i64 1
  store i8 %conv16, ptr %arrayidx17, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb
  %11 = load ptr, ptr %ptr.addr, align 8
  %12 = load ptr, ptr %11, align 8
  %add.ptr = getelementptr inbounds i8, ptr %12, i64 2
  store ptr %add.ptr, ptr %11, align 8
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %entry
  ret i64 2
}

; Function Attrs: nounwind ssp uwtable
define zeroext i16 @id3_utf16_get(ptr noundef %ptr, i32 noundef %byteorder) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  %cond = icmp eq i32 %byteorder, 2
  br i1 %cond, label %sw.bb5, label %sw.bb

sw.bb:                                            ; preds = %entry
  %0 = load ptr, ptr %ptr.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %2 = load i8, ptr %1, align 1
  %conv = zext i8 %2 to i16
  %shl = shl nuw i16 %conv, 8
  %arrayidx1 = getelementptr inbounds i8, ptr %1, i64 1
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i16
  %or = or i16 %shl, %conv2
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %4 = load ptr, ptr %ptr.addr, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load i8, ptr %5, align 1
  %conv7 = zext i8 %6 to i16
  %arrayidx9 = getelementptr inbounds i8, ptr %5, i64 1
  %7 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %7 to i16
  %shl11 = shl nuw i16 %conv10, 8
  %or12 = or i16 %shl11, %conv7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb
  %storemerge = phi i16 [ %or12, %sw.bb5 ], [ %or, %sw.bb ]
  %8 = load ptr, ptr %ptr.addr, align 8
  %9 = load ptr, ptr %8, align 8
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 2
  store ptr %add.ptr, ptr %8, align 8
  ret i16 %storemerge
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
  %cmp = icmp eq i32 %byteorder, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %ptr.addr, align 8
  %1 = load i32, ptr %byteorder.addr, align 4
  %call = call i64 @id3_utf16_put(ptr noundef %0, i16 noundef zeroext -257, i32 noundef %1)
  %2 = load i64, ptr %size, align 8
  %add = add i64 %2, %call
  store i64 %add, ptr %size, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end
  %3 = load ptr, ptr %ucs4.addr, align 8
  %4 = load i64, ptr %3, align 8
  %tobool.not = icmp eq i64 %4, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  store ptr %utf16, ptr %out, align 8
  %5 = load ptr, ptr %ucs4.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %5, i64 1
  store ptr %incdec.ptr, ptr %ucs4.addr, align 8
  %6 = load i64, ptr %5, align 8
  %call1 = call i64 @id3_utf16_encodechar(ptr noundef nonnull %utf16, i64 noundef %6)
  switch i64 %call1, label %sw.epilog [
    i64 2, label %sw.bb
    i64 1, label %sw.bb5
  ]

sw.bb:                                            ; preds = %while.body
  %7 = load ptr, ptr %ptr.addr, align 8
  %8 = load ptr, ptr %out, align 8
  %incdec.ptr2 = getelementptr inbounds i16, ptr %8, i64 1
  store ptr %incdec.ptr2, ptr %out, align 8
  %9 = load i16, ptr %8, align 2
  %10 = load i32, ptr %byteorder.addr, align 4
  %call3 = call i64 @id3_utf16_put(ptr noundef %7, i16 noundef zeroext %9, i32 noundef %10)
  %11 = load i64, ptr %size, align 8
  %add4 = add i64 %11, %call3
  store i64 %add4, ptr %size, align 8
  br label %sw.bb5

sw.bb5:                                           ; preds = %sw.bb, %while.body
  %12 = load ptr, ptr %ptr.addr, align 8
  %13 = load ptr, ptr %out, align 8
  %incdec.ptr6 = getelementptr inbounds i16, ptr %13, i64 1
  store ptr %incdec.ptr6, ptr %out, align 8
  %14 = load i16, ptr %13, align 2
  %15 = load i32, ptr %byteorder.addr, align 4
  %call7 = call i64 @id3_utf16_put(ptr noundef %12, i16 noundef zeroext %14, i32 noundef %15)
  %16 = load i64, ptr %size, align 8
  %add8 = add i64 %16, %call7
  store i64 %add8, ptr %size, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %while.body
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  %17 = load i32, ptr %terminate.addr, align 4
  %tobool10.not = icmp eq i32 %17, 0
  br i1 %tobool10.not, label %if.end14, label %if.then11

if.then11:                                        ; preds = %while.end
  %18 = load ptr, ptr %ptr.addr, align 8
  %19 = load i32, ptr %byteorder.addr, align 4
  %call12 = call i64 @id3_utf16_put(ptr noundef %18, i16 noundef zeroext 0, i32 noundef %19)
  %20 = load i64, ptr %size, align 8
  %add13 = add i64 %20, %call12
  store i64 %add13, ptr %size, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %while.end
  %21 = load i64, ptr %size, align 8
  ret i64 %21
}

; Function Attrs: nounwind ssp uwtable
define ptr @id3_utf16_deserialize(ptr noundef %ptr, i64 noundef %length, i32 noundef %byteorder) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  %byteorder.addr = alloca i32, align 4
  %end = alloca ptr, align 8
  %utf16ptr = alloca ptr, align 8
  %utf16 = alloca ptr, align 8
  %ucs4 = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  store i32 %byteorder, ptr %byteorder.addr, align 4
  %0 = load ptr, ptr %ptr, align 8
  %and = and i64 %length, -2
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %and
  store ptr %add.ptr, ptr %end, align 8
  %1 = add i64 %length, 2
  %mul = and i64 %1, -2
  %call = call ptr @malloc(i64 noundef %mul) #3
  store ptr %call, ptr %utf16, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %byteorder.addr, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %3 = load ptr, ptr %end, align 8
  %4 = load ptr, ptr %ptr.addr, align 8
  %5 = load ptr, ptr %4, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %3 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp2 = icmp sgt i64 %sub.ptr.sub, 0
  br i1 %cmp2, label %if.then3, label %if.end10

if.then3:                                         ; preds = %land.lhs.true
  %6 = load ptr, ptr %ptr.addr, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load i8, ptr %7, align 1
  %conv = zext i8 %8 to i16
  %shl = shl nuw i16 %conv, 8
  %arrayidx4 = getelementptr inbounds i8, ptr %7, i64 1
  %9 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %9 to i16
  %or = or i16 %shl, %conv5
  switch i16 %or, label %if.end10 [
    i16 -257, label %sw.bb
    i16 -2, label %sw.bb8
  ]

sw.bb:                                            ; preds = %if.then3
  store i32 1, ptr %byteorder.addr, align 4
  %10 = load ptr, ptr %ptr.addr, align 8
  %11 = load ptr, ptr %10, align 8
  %add.ptr7 = getelementptr inbounds i8, ptr %11, i64 2
  store ptr %add.ptr7, ptr %10, align 8
  br label %if.end10

sw.bb8:                                           ; preds = %if.then3
  store i32 2, ptr %byteorder.addr, align 4
  %12 = load ptr, ptr %ptr.addr, align 8
  %13 = load ptr, ptr %12, align 8
  %add.ptr9 = getelementptr inbounds i8, ptr %13, i64 2
  store ptr %add.ptr9, ptr %12, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then3, %sw.bb, %sw.bb8, %land.lhs.true, %if.end
  %14 = load ptr, ptr %utf16, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end10
  %storemerge = phi ptr [ %14, %if.end10 ], [ %incdec.ptr, %while.body ]
  store ptr %storemerge, ptr %utf16ptr, align 8
  %15 = load ptr, ptr %end, align 8
  %16 = load ptr, ptr %ptr.addr, align 8
  %17 = load ptr, ptr %16, align 8
  %sub.ptr.lhs.cast11 = ptrtoint ptr %15 to i64
  %sub.ptr.rhs.cast12 = ptrtoint ptr %17 to i64
  %sub.ptr.sub13 = sub i64 %sub.ptr.lhs.cast11, %sub.ptr.rhs.cast12
  %cmp14 = icmp sgt i64 %sub.ptr.sub13, 0
  br i1 %cmp14, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %while.cond
  %18 = load ptr, ptr %ptr.addr, align 8
  %19 = load i32, ptr %byteorder.addr, align 4
  %call16 = call zeroext i16 @id3_utf16_get(ptr noundef %18, i32 noundef %19)
  %20 = load ptr, ptr %utf16ptr, align 8
  store i16 %call16, ptr %20, align 2
  %tobool = icmp ne i16 %call16, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %21 = load ptr, ptr %utf16ptr, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %21, i64 1
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond, %land.rhs
  %22 = load ptr, ptr %utf16ptr, align 8
  store i16 0, ptr %22, align 2
  %23 = load ptr, ptr %utf16, align 8
  %call18 = call i64 @id3_utf16_length(ptr noundef %23)
  %add19 = shl i64 %call18, 3
  %mul20 = add i64 %add19, 8
  %call21 = call ptr @malloc(i64 noundef %mul20) #3
  store ptr %call21, ptr %ucs4, align 8
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end24, label %if.then23

if.then23:                                        ; preds = %while.end
  %24 = load ptr, ptr %utf16, align 8
  %25 = load ptr, ptr %ucs4, align 8
  call void @id3_utf16_decode(ptr noundef %24, ptr noundef %25)
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %while.end
  %26 = load ptr, ptr %utf16, align 8
  call void @free(ptr noundef %26) #4
  %27 = load ptr, ptr %ucs4, align 8
  br label %return

return:                                           ; preds = %entry, %if.end24
  %storemerge2 = phi ptr [ %27, %if.end24 ], [ null, %entry ]
  ret ptr %storemerge2
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

declare void @free(ptr noundef) #2

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind allocsize(0) }
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
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
