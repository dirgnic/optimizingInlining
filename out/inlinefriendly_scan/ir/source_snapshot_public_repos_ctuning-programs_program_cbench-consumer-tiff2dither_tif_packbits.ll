; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-tiff2dither/tif_packbits.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-tiff2dither/tif_packbits.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.tiff = type { ptr, i32, i32, i32, i32, i32, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i32, i16, i32, i32, i32, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i32 }

@.str = private unnamed_addr constant [49 x i8] c"PackBitsDecode: Not enough data for scanline %ld\00", align 1
@__func__.PackBitsEncodeChunk = private unnamed_addr constant [20 x i8] c"PackBitsEncodeChunk\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"tif_packbits.c\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"rowsize > 0\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @TIFFInitPackBits(ptr noundef %tif, i32 noundef %scheme) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %scheme.addr = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %scheme, ptr %scheme.addr, align 4
  %0 = load i32, ptr %scheme.addr, align 4
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_decoderow = getelementptr inbounds %struct.tiff, ptr %1, i32 0, i32 26
  store ptr @PackBitsDecode, ptr %tif_decoderow, align 8
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_decodestrip = getelementptr inbounds %struct.tiff, ptr %2, i32 0, i32 28
  store ptr @PackBitsDecode, ptr %tif_decodestrip, align 8
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_decodetile = getelementptr inbounds %struct.tiff, ptr %3, i32 0, i32 30
  store ptr @PackBitsDecode, ptr %tif_decodetile, align 8
  %4 = load ptr, ptr %tif.addr, align 8
  %tif_preencode = getelementptr inbounds %struct.tiff, ptr %4, i32 0, i32 24
  store ptr @PackBitsPreEncode, ptr %tif_preencode, align 8
  %5 = load ptr, ptr %tif.addr, align 8
  %tif_encoderow = getelementptr inbounds %struct.tiff, ptr %5, i32 0, i32 27
  store ptr @PackBitsEncode, ptr %tif_encoderow, align 8
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_encodestrip = getelementptr inbounds %struct.tiff, ptr %6, i32 0, i32 29
  store ptr @PackBitsEncodeChunk, ptr %tif_encodestrip, align 8
  %7 = load ptr, ptr %tif.addr, align 8
  %tif_encodetile = getelementptr inbounds %struct.tiff, ptr %7, i32 0, i32 31
  store ptr @PackBitsEncodeChunk, ptr %tif_encodetile, align 8
  ret i32 1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @PackBitsDecode(ptr noundef %tif, ptr noundef %op, i32 noundef %occ, i16 noundef zeroext %s) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %occ.addr = alloca i32, align 4
  %s.addr = alloca i16, align 2
  %bp = alloca ptr, align 8
  %cc = alloca i32, align 4
  %n = alloca i64, align 8
  %b = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %op, ptr %op.addr, align 8
  store i32 %occ, ptr %occ.addr, align 4
  store i16 %s, ptr %s.addr, align 2
  %0 = load i16, ptr %s.addr, align 2
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %1, i32 0, i32 42
  %2 = load ptr, ptr %tif_rawcp, align 8
  store ptr %2, ptr %bp, align 8
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %3, i32 0, i32 43
  %4 = load i32, ptr %tif_rawcc, align 8
  store i32 %4, ptr %cc, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end35, %if.then11, %entry
  %5 = load i32, ptr %cc, align 4
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load i32, ptr %occ.addr, align 4
  %conv = sext i32 %6 to i64
  %cmp1 = icmp sgt i64 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %7, label %while.body, label %while.end36

while.body:                                       ; preds = %land.end
  %8 = load ptr, ptr %bp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %8, i32 1
  store ptr %incdec.ptr, ptr %bp, align 8
  %9 = load i8, ptr %8, align 1
  %conv3 = sext i8 %9 to i64
  store i64 %conv3, ptr %n, align 8
  %10 = load i32, ptr %cc, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, ptr %cc, align 4
  %11 = load i64, ptr %n, align 8
  %cmp4 = icmp sge i64 %11, 128
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %12 = load i64, ptr %n, align 8
  %sub = sub nsw i64 %12, 256
  store i64 %sub, ptr %n, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %13 = load i64, ptr %n, align 8
  %cmp6 = icmp slt i64 %13, 0
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  %14 = load i64, ptr %n, align 8
  %cmp9 = icmp eq i64 %14, -128
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then8
  br label %while.cond, !llvm.loop !6

if.end12:                                         ; preds = %if.then8
  %15 = load i64, ptr %n, align 8
  %sub13 = sub nsw i64 0, %15
  %add = add nsw i64 %sub13, 1
  store i64 %add, ptr %n, align 8
  %16 = load i64, ptr %n, align 8
  %17 = load i32, ptr %occ.addr, align 4
  %conv14 = sext i32 %17 to i64
  %sub15 = sub nsw i64 %conv14, %16
  %conv16 = trunc i64 %sub15 to i32
  store i32 %conv16, ptr %occ.addr, align 4
  %18 = load ptr, ptr %bp, align 8
  %incdec.ptr17 = getelementptr inbounds i8, ptr %18, i32 1
  store ptr %incdec.ptr17, ptr %bp, align 8
  %19 = load i8, ptr %18, align 1
  %conv18 = sext i8 %19 to i32
  store i32 %conv18, ptr %b, align 4
  %20 = load i32, ptr %cc, align 4
  %dec19 = add nsw i32 %20, -1
  store i32 %dec19, ptr %cc, align 4
  br label %while.cond20

while.cond20:                                     ; preds = %while.body24, %if.end12
  %21 = load i64, ptr %n, align 8
  %dec21 = add nsw i64 %21, -1
  store i64 %dec21, ptr %n, align 8
  %cmp22 = icmp sgt i64 %21, 0
  br i1 %cmp22, label %while.body24, label %while.end

while.body24:                                     ; preds = %while.cond20
  %22 = load i32, ptr %b, align 4
  %conv25 = trunc i32 %22 to i8
  %23 = load ptr, ptr %op.addr, align 8
  %incdec.ptr26 = getelementptr inbounds i8, ptr %23, i32 1
  store ptr %incdec.ptr26, ptr %op.addr, align 8
  store i8 %conv25, ptr %23, align 1
  br label %while.cond20, !llvm.loop !8

while.end:                                        ; preds = %while.cond20
  br label %if.end35

if.else:                                          ; preds = %if.end
  %24 = load ptr, ptr %op.addr, align 8
  %25 = load ptr, ptr %bp, align 8
  %26 = load i64, ptr %n, align 8
  %inc = add nsw i64 %26, 1
  store i64 %inc, ptr %n, align 8
  %conv27 = trunc i64 %inc to i32
  call void @_TIFFmemcpy(ptr noundef %24, ptr noundef %25, i32 noundef %conv27)
  %27 = load i64, ptr %n, align 8
  %28 = load ptr, ptr %op.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %28, i64 %27
  store ptr %add.ptr, ptr %op.addr, align 8
  %29 = load i64, ptr %n, align 8
  %30 = load i32, ptr %occ.addr, align 4
  %conv28 = sext i32 %30 to i64
  %sub29 = sub nsw i64 %conv28, %29
  %conv30 = trunc i64 %sub29 to i32
  store i32 %conv30, ptr %occ.addr, align 4
  %31 = load i64, ptr %n, align 8
  %32 = load ptr, ptr %bp, align 8
  %add.ptr31 = getelementptr inbounds i8, ptr %32, i64 %31
  store ptr %add.ptr31, ptr %bp, align 8
  %33 = load i64, ptr %n, align 8
  %34 = load i32, ptr %cc, align 4
  %conv32 = sext i32 %34 to i64
  %sub33 = sub nsw i64 %conv32, %33
  %conv34 = trunc i64 %sub33 to i32
  store i32 %conv34, ptr %cc, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.else, %while.end
  br label %while.cond, !llvm.loop !6

while.end36:                                      ; preds = %land.end
  %35 = load ptr, ptr %bp, align 8
  %36 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp37 = getelementptr inbounds %struct.tiff, ptr %36, i32 0, i32 42
  store ptr %35, ptr %tif_rawcp37, align 8
  %37 = load i32, ptr %cc, align 4
  %38 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc38 = getelementptr inbounds %struct.tiff, ptr %38, i32 0, i32 43
  store i32 %37, ptr %tif_rawcc38, align 8
  %39 = load i32, ptr %occ.addr, align 4
  %cmp39 = icmp sgt i32 %39, 0
  br i1 %cmp39, label %if.then41, label %if.end43

if.then41:                                        ; preds = %while.end36
  %40 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %tif_name, align 8
  %42 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %42, i32 0, i32 11
  %43 = load i32, ptr %tif_row, align 8
  %conv42 = zext i32 %43 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %41, ptr noundef @.str, i64 noundef %conv42)
  store i32 0, ptr %retval, align 4
  br label %return

if.end43:                                         ; preds = %while.end36
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end43, %if.then41
  %44 = load i32, ptr %retval, align 4
  ret i32 %44
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @PackBitsPreEncode(ptr noundef %tif, i16 noundef zeroext %s) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %s.addr = alloca i16, align 2
  store ptr %tif, ptr %tif.addr, align 8
  store i16 %s, ptr %s.addr, align 2
  %0 = load i16, ptr %s.addr, align 2
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %tif_flags, align 8
  %and = and i32 %2, 1024
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFTileRowSize(ptr noundef %3)
  %conv = sext i32 %call to i64
  %4 = inttoptr i64 %conv to ptr
  %5 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %5, i32 0, i32 37
  store ptr %4, ptr %tif_data, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %tif.addr, align 8
  %call1 = call i32 @TIFFScanlineSize(ptr noundef %6)
  %conv2 = sext i32 %call1 to i64
  %7 = inttoptr i64 %conv2 to ptr
  %8 = load ptr, ptr %tif.addr, align 8
  %tif_data3 = getelementptr inbounds %struct.tiff, ptr %8, i32 0, i32 37
  store ptr %7, ptr %tif_data3, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @PackBitsEncode(ptr noundef %tif, ptr noundef %buf, i32 noundef %cc, i16 noundef zeroext %s) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %cc.addr = alloca i32, align 4
  %s.addr = alloca i16, align 2
  %bp = alloca ptr, align 8
  %op = alloca ptr, align 8
  %ep = alloca ptr, align 8
  %lastliteral = alloca ptr, align 8
  %n = alloca i64, align 8
  %slop = alloca i64, align 8
  %b = alloca i32, align 4
  %state = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %cc, ptr %cc.addr, align 4
  store i16 %s, ptr %s.addr, align 2
  %0 = load ptr, ptr %buf.addr, align 8
  store ptr %0, ptr %bp, align 8
  %1 = load i16, ptr %s.addr, align 2
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %2, i32 0, i32 42
  %3 = load ptr, ptr %tif_rawcp, align 8
  store ptr %3, ptr %op, align 8
  %4 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata = getelementptr inbounds %struct.tiff, ptr %4, i32 0, i32 40
  %5 = load ptr, ptr %tif_rawdata, align 8
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %6, i32 0, i32 41
  %7 = load i32, ptr %tif_rawdatasize, align 8
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 %idx.ext
  store ptr %add.ptr, ptr %ep, align 8
  store i32 0, ptr %state, align 4
  store ptr null, ptr %lastliteral, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %8 = load i32, ptr %cc.addr, align 4
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %while.body, label %while.end140

while.body:                                       ; preds = %while.cond
  %9 = load ptr, ptr %bp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %bp, align 8
  %10 = load i8, ptr %9, align 1
  %conv = zext i8 %10 to i32
  store i32 %conv, ptr %b, align 4
  %11 = load i32, ptr %cc.addr, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, ptr %cc.addr, align 4
  store i64 1, ptr %n, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %12 = load i32, ptr %cc.addr, align 4
  %cmp1 = icmp sgt i32 %12, 0
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %13 = load i32, ptr %b, align 4
  %14 = load ptr, ptr %bp, align 8
  %15 = load i8, ptr %14, align 1
  %conv3 = zext i8 %15 to i32
  %cmp4 = icmp eq i32 %13, %conv3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %16 = phi i1 [ false, %for.cond ], [ %cmp4, %land.rhs ]
  br i1 %16, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %17 = load i64, ptr %n, align 8
  %inc = add nsw i64 %17, 1
  store i64 %inc, ptr %n, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, ptr %cc.addr, align 4
  %dec6 = add nsw i32 %18, -1
  store i32 %dec6, ptr %cc.addr, align 4
  %19 = load ptr, ptr %bp, align 8
  %incdec.ptr7 = getelementptr inbounds i8, ptr %19, i32 1
  store ptr %incdec.ptr7, ptr %bp, align 8
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %land.end
  br label %again

again:                                            ; preds = %if.end139, %if.then102, %if.then74, %if.then52, %for.end
  %20 = load ptr, ptr %op, align 8
  %add.ptr8 = getelementptr inbounds i8, ptr %20, i64 2
  %21 = load ptr, ptr %ep, align 8
  %cmp9 = icmp uge ptr %add.ptr8, %21
  br i1 %cmp9, label %if.then, label %if.end46

if.then:                                          ; preds = %again
  %22 = load i32, ptr %state, align 4
  %cmp11 = icmp eq i32 %22, 1
  br i1 %cmp11, label %if.then15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %23 = load i32, ptr %state, align 4
  %cmp13 = icmp eq i32 %23, 3
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %lor.lhs.false, %if.then
  %24 = load ptr, ptr %op, align 8
  %25 = load ptr, ptr %lastliteral, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %24 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %25 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, ptr %slop, align 8
  %26 = load ptr, ptr %lastliteral, align 8
  %27 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp16 = getelementptr inbounds %struct.tiff, ptr %27, i32 0, i32 42
  %28 = load ptr, ptr %tif_rawcp16, align 8
  %sub.ptr.lhs.cast17 = ptrtoint ptr %26 to i64
  %sub.ptr.rhs.cast18 = ptrtoint ptr %28 to i64
  %sub.ptr.sub19 = sub i64 %sub.ptr.lhs.cast17, %sub.ptr.rhs.cast18
  %29 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %29, i32 0, i32 43
  %30 = load i32, ptr %tif_rawcc, align 8
  %conv20 = sext i32 %30 to i64
  %add = add nsw i64 %conv20, %sub.ptr.sub19
  %conv21 = trunc i64 %add to i32
  store i32 %conv21, ptr %tif_rawcc, align 8
  %31 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFFlushData1(ptr noundef %31)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then22

if.then22:                                        ; preds = %if.then15
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then15
  %32 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp23 = getelementptr inbounds %struct.tiff, ptr %32, i32 0, i32 42
  %33 = load ptr, ptr %tif_rawcp23, align 8
  store ptr %33, ptr %op, align 8
  br label %while.cond24

while.cond24:                                     ; preds = %while.body28, %if.end
  %34 = load i64, ptr %slop, align 8
  %dec25 = add nsw i64 %34, -1
  store i64 %dec25, ptr %slop, align 8
  %cmp26 = icmp sgt i64 %34, 0
  br i1 %cmp26, label %while.body28, label %while.end

while.body28:                                     ; preds = %while.cond24
  %35 = load ptr, ptr %lastliteral, align 8
  %incdec.ptr29 = getelementptr inbounds i8, ptr %35, i32 1
  store ptr %incdec.ptr29, ptr %lastliteral, align 8
  %36 = load i8, ptr %35, align 1
  %37 = load ptr, ptr %op, align 8
  %incdec.ptr30 = getelementptr inbounds i8, ptr %37, i32 1
  store ptr %incdec.ptr30, ptr %op, align 8
  store i8 %36, ptr %37, align 1
  br label %while.cond24, !llvm.loop !10

while.end:                                        ; preds = %while.cond24
  %38 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp31 = getelementptr inbounds %struct.tiff, ptr %38, i32 0, i32 42
  %39 = load ptr, ptr %tif_rawcp31, align 8
  store ptr %39, ptr %lastliteral, align 8
  br label %if.end45

if.else:                                          ; preds = %lor.lhs.false
  %40 = load ptr, ptr %op, align 8
  %41 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp32 = getelementptr inbounds %struct.tiff, ptr %41, i32 0, i32 42
  %42 = load ptr, ptr %tif_rawcp32, align 8
  %sub.ptr.lhs.cast33 = ptrtoint ptr %40 to i64
  %sub.ptr.rhs.cast34 = ptrtoint ptr %42 to i64
  %sub.ptr.sub35 = sub i64 %sub.ptr.lhs.cast33, %sub.ptr.rhs.cast34
  %43 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc36 = getelementptr inbounds %struct.tiff, ptr %43, i32 0, i32 43
  %44 = load i32, ptr %tif_rawcc36, align 8
  %conv37 = sext i32 %44 to i64
  %add38 = add nsw i64 %conv37, %sub.ptr.sub35
  %conv39 = trunc i64 %add38 to i32
  store i32 %conv39, ptr %tif_rawcc36, align 8
  %45 = load ptr, ptr %tif.addr, align 8
  %call40 = call i32 @TIFFFlushData1(ptr noundef %45)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.end43, label %if.then42

if.then42:                                        ; preds = %if.else
  store i32 -1, ptr %retval, align 4
  br label %return

if.end43:                                         ; preds = %if.else
  %46 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp44 = getelementptr inbounds %struct.tiff, ptr %46, i32 0, i32 42
  %47 = load ptr, ptr %tif_rawcp44, align 8
  store ptr %47, ptr %op, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.end43, %while.end
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %again
  %48 = load i32, ptr %state, align 4
  switch i32 %48, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb68
    i32 2, label %sw.bb96
    i32 3, label %sw.bb119
  ]

sw.bb:                                            ; preds = %if.end46
  %49 = load i64, ptr %n, align 8
  %cmp47 = icmp sgt i64 %49, 1
  br i1 %cmp47, label %if.then49, label %if.else63

if.then49:                                        ; preds = %sw.bb
  store i32 2, ptr %state, align 4
  %50 = load i64, ptr %n, align 8
  %cmp50 = icmp sgt i64 %50, 128
  br i1 %cmp50, label %if.then52, label %if.end56

if.then52:                                        ; preds = %if.then49
  %51 = load ptr, ptr %op, align 8
  %incdec.ptr53 = getelementptr inbounds i8, ptr %51, i32 1
  store ptr %incdec.ptr53, ptr %op, align 8
  store i8 -127, ptr %51, align 1
  %52 = load i32, ptr %b, align 4
  %conv54 = trunc i32 %52 to i8
  %53 = load ptr, ptr %op, align 8
  %incdec.ptr55 = getelementptr inbounds i8, ptr %53, i32 1
  store ptr %incdec.ptr55, ptr %op, align 8
  store i8 %conv54, ptr %53, align 1
  %54 = load i64, ptr %n, align 8
  %sub = sub nsw i64 %54, 128
  store i64 %sub, ptr %n, align 8
  br label %again

if.end56:                                         ; preds = %if.then49
  %55 = load i64, ptr %n, align 8
  %sub57 = sub nsw i64 %55, 1
  %sub58 = sub nsw i64 0, %sub57
  %conv59 = trunc i64 %sub58 to i8
  %56 = load ptr, ptr %op, align 8
  %incdec.ptr60 = getelementptr inbounds i8, ptr %56, i32 1
  store ptr %incdec.ptr60, ptr %op, align 8
  store i8 %conv59, ptr %56, align 1
  %57 = load i32, ptr %b, align 4
  %conv61 = trunc i32 %57 to i8
  %58 = load ptr, ptr %op, align 8
  %incdec.ptr62 = getelementptr inbounds i8, ptr %58, i32 1
  store ptr %incdec.ptr62, ptr %op, align 8
  store i8 %conv61, ptr %58, align 1
  br label %if.end67

if.else63:                                        ; preds = %sw.bb
  %59 = load ptr, ptr %op, align 8
  store ptr %59, ptr %lastliteral, align 8
  %60 = load ptr, ptr %op, align 8
  %incdec.ptr64 = getelementptr inbounds i8, ptr %60, i32 1
  store ptr %incdec.ptr64, ptr %op, align 8
  store i8 0, ptr %60, align 1
  %61 = load i32, ptr %b, align 4
  %conv65 = trunc i32 %61 to i8
  %62 = load ptr, ptr %op, align 8
  %incdec.ptr66 = getelementptr inbounds i8, ptr %62, i32 1
  store ptr %incdec.ptr66, ptr %op, align 8
  store i8 %conv65, ptr %62, align 1
  store i32 1, ptr %state, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.else63, %if.end56
  br label %sw.epilog

sw.bb68:                                          ; preds = %if.end46
  %63 = load i64, ptr %n, align 8
  %cmp69 = icmp sgt i64 %63, 1
  br i1 %cmp69, label %if.then71, label %if.else86

if.then71:                                        ; preds = %sw.bb68
  store i32 3, ptr %state, align 4
  %64 = load i64, ptr %n, align 8
  %cmp72 = icmp sgt i64 %64, 128
  br i1 %cmp72, label %if.then74, label %if.end79

if.then74:                                        ; preds = %if.then71
  %65 = load ptr, ptr %op, align 8
  %incdec.ptr75 = getelementptr inbounds i8, ptr %65, i32 1
  store ptr %incdec.ptr75, ptr %op, align 8
  store i8 -127, ptr %65, align 1
  %66 = load i32, ptr %b, align 4
  %conv76 = trunc i32 %66 to i8
  %67 = load ptr, ptr %op, align 8
  %incdec.ptr77 = getelementptr inbounds i8, ptr %67, i32 1
  store ptr %incdec.ptr77, ptr %op, align 8
  store i8 %conv76, ptr %67, align 1
  %68 = load i64, ptr %n, align 8
  %sub78 = sub nsw i64 %68, 128
  store i64 %sub78, ptr %n, align 8
  br label %again

if.end79:                                         ; preds = %if.then71
  %69 = load i64, ptr %n, align 8
  %sub80 = sub nsw i64 %69, 1
  %sub81 = sub nsw i64 0, %sub80
  %conv82 = trunc i64 %sub81 to i8
  %70 = load ptr, ptr %op, align 8
  %incdec.ptr83 = getelementptr inbounds i8, ptr %70, i32 1
  store ptr %incdec.ptr83, ptr %op, align 8
  store i8 %conv82, ptr %70, align 1
  %71 = load i32, ptr %b, align 4
  %conv84 = trunc i32 %71 to i8
  %72 = load ptr, ptr %op, align 8
  %incdec.ptr85 = getelementptr inbounds i8, ptr %72, i32 1
  store ptr %incdec.ptr85, ptr %op, align 8
  store i8 %conv84, ptr %72, align 1
  br label %if.end95

if.else86:                                        ; preds = %sw.bb68
  %73 = load ptr, ptr %lastliteral, align 8
  %74 = load i8, ptr %73, align 1
  %inc87 = add i8 %74, 1
  store i8 %inc87, ptr %73, align 1
  %conv88 = zext i8 %inc87 to i32
  %cmp89 = icmp eq i32 %conv88, 127
  br i1 %cmp89, label %if.then91, label %if.end92

if.then91:                                        ; preds = %if.else86
  store i32 0, ptr %state, align 4
  br label %if.end92

if.end92:                                         ; preds = %if.then91, %if.else86
  %75 = load i32, ptr %b, align 4
  %conv93 = trunc i32 %75 to i8
  %76 = load ptr, ptr %op, align 8
  %incdec.ptr94 = getelementptr inbounds i8, ptr %76, i32 1
  store ptr %incdec.ptr94, ptr %op, align 8
  store i8 %conv93, ptr %76, align 1
  br label %if.end95

if.end95:                                         ; preds = %if.end92, %if.end79
  br label %sw.epilog

sw.bb96:                                          ; preds = %if.end46
  %77 = load i64, ptr %n, align 8
  %cmp97 = icmp sgt i64 %77, 1
  br i1 %cmp97, label %if.then99, label %if.else114

if.then99:                                        ; preds = %sw.bb96
  %78 = load i64, ptr %n, align 8
  %cmp100 = icmp sgt i64 %78, 128
  br i1 %cmp100, label %if.then102, label %if.end107

if.then102:                                       ; preds = %if.then99
  %79 = load ptr, ptr %op, align 8
  %incdec.ptr103 = getelementptr inbounds i8, ptr %79, i32 1
  store ptr %incdec.ptr103, ptr %op, align 8
  store i8 -127, ptr %79, align 1
  %80 = load i32, ptr %b, align 4
  %conv104 = trunc i32 %80 to i8
  %81 = load ptr, ptr %op, align 8
  %incdec.ptr105 = getelementptr inbounds i8, ptr %81, i32 1
  store ptr %incdec.ptr105, ptr %op, align 8
  store i8 %conv104, ptr %81, align 1
  %82 = load i64, ptr %n, align 8
  %sub106 = sub nsw i64 %82, 128
  store i64 %sub106, ptr %n, align 8
  br label %again

if.end107:                                        ; preds = %if.then99
  %83 = load i64, ptr %n, align 8
  %sub108 = sub nsw i64 %83, 1
  %sub109 = sub nsw i64 0, %sub108
  %conv110 = trunc i64 %sub109 to i8
  %84 = load ptr, ptr %op, align 8
  %incdec.ptr111 = getelementptr inbounds i8, ptr %84, i32 1
  store ptr %incdec.ptr111, ptr %op, align 8
  store i8 %conv110, ptr %84, align 1
  %85 = load i32, ptr %b, align 4
  %conv112 = trunc i32 %85 to i8
  %86 = load ptr, ptr %op, align 8
  %incdec.ptr113 = getelementptr inbounds i8, ptr %86, i32 1
  store ptr %incdec.ptr113, ptr %op, align 8
  store i8 %conv112, ptr %86, align 1
  br label %if.end118

if.else114:                                       ; preds = %sw.bb96
  %87 = load ptr, ptr %op, align 8
  store ptr %87, ptr %lastliteral, align 8
  %88 = load ptr, ptr %op, align 8
  %incdec.ptr115 = getelementptr inbounds i8, ptr %88, i32 1
  store ptr %incdec.ptr115, ptr %op, align 8
  store i8 0, ptr %88, align 1
  %89 = load i32, ptr %b, align 4
  %conv116 = trunc i32 %89 to i8
  %90 = load ptr, ptr %op, align 8
  %incdec.ptr117 = getelementptr inbounds i8, ptr %90, i32 1
  store ptr %incdec.ptr117, ptr %op, align 8
  store i8 %conv116, ptr %90, align 1
  store i32 1, ptr %state, align 4
  br label %if.end118

if.end118:                                        ; preds = %if.else114, %if.end107
  br label %sw.epilog

sw.bb119:                                         ; preds = %if.end46
  %91 = load i64, ptr %n, align 8
  %cmp120 = icmp eq i64 %91, 1
  br i1 %cmp120, label %land.lhs.true, label %if.else138

land.lhs.true:                                    ; preds = %sw.bb119
  %92 = load ptr, ptr %op, align 8
  %arrayidx = getelementptr inbounds i8, ptr %92, i64 -2
  %93 = load i8, ptr %arrayidx, align 1
  %conv122 = zext i8 %93 to i32
  %cmp123 = icmp eq i32 %conv122, 255
  br i1 %cmp123, label %land.lhs.true125, label %if.else138

land.lhs.true125:                                 ; preds = %land.lhs.true
  %94 = load ptr, ptr %lastliteral, align 8
  %95 = load i8, ptr %94, align 1
  %conv126 = zext i8 %95 to i32
  %cmp127 = icmp slt i32 %conv126, 126
  br i1 %cmp127, label %if.then129, label %if.else138

if.then129:                                       ; preds = %land.lhs.true125
  %96 = load ptr, ptr %lastliteral, align 8
  %97 = load i8, ptr %96, align 1
  %conv130 = zext i8 %97 to i32
  %add131 = add nsw i32 %conv130, 2
  %conv132 = trunc i32 %add131 to i8
  store i8 %conv132, ptr %96, align 1
  %conv133 = zext i8 %conv132 to i32
  %cmp134 = icmp eq i32 %conv133, 127
  %98 = zext i1 %cmp134 to i64
  %cond = select i1 %cmp134, i32 0, i32 1
  store i32 %cond, ptr %state, align 4
  %99 = load ptr, ptr %op, align 8
  %arrayidx136 = getelementptr inbounds i8, ptr %99, i64 -1
  %100 = load i8, ptr %arrayidx136, align 1
  %101 = load ptr, ptr %op, align 8
  %arrayidx137 = getelementptr inbounds i8, ptr %101, i64 -2
  store i8 %100, ptr %arrayidx137, align 1
  br label %if.end139

if.else138:                                       ; preds = %land.lhs.true125, %land.lhs.true, %sw.bb119
  store i32 2, ptr %state, align 4
  br label %if.end139

if.end139:                                        ; preds = %if.else138, %if.then129
  br label %again

sw.epilog:                                        ; preds = %if.end46, %if.end118, %if.end95, %if.end67
  br label %while.cond, !llvm.loop !11

while.end140:                                     ; preds = %while.cond
  %102 = load ptr, ptr %op, align 8
  %103 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp141 = getelementptr inbounds %struct.tiff, ptr %103, i32 0, i32 42
  %104 = load ptr, ptr %tif_rawcp141, align 8
  %sub.ptr.lhs.cast142 = ptrtoint ptr %102 to i64
  %sub.ptr.rhs.cast143 = ptrtoint ptr %104 to i64
  %sub.ptr.sub144 = sub i64 %sub.ptr.lhs.cast142, %sub.ptr.rhs.cast143
  %105 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc145 = getelementptr inbounds %struct.tiff, ptr %105, i32 0, i32 43
  %106 = load i32, ptr %tif_rawcc145, align 8
  %conv146 = sext i32 %106 to i64
  %add147 = add nsw i64 %conv146, %sub.ptr.sub144
  %conv148 = trunc i64 %add147 to i32
  store i32 %conv148, ptr %tif_rawcc145, align 8
  %107 = load ptr, ptr %op, align 8
  %108 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp149 = getelementptr inbounds %struct.tiff, ptr %108, i32 0, i32 42
  store ptr %107, ptr %tif_rawcp149, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end140, %if.then42, %if.then22
  %109 = load i32, ptr %retval, align 4
  ret i32 %109
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @PackBitsEncodeChunk(ptr noundef %tif, ptr noundef %bp, i32 noundef %cc, i16 noundef zeroext %s) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %cc.addr = alloca i32, align 4
  %s.addr = alloca i16, align 2
  %rowsize = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store i32 %cc, ptr %cc.addr, align 4
  store i16 %s, ptr %s.addr, align 2
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  %2 = ptrtoint ptr %1 to i32
  store i32 %2, ptr %rowsize, align 4
  %3 = load i32, ptr %rowsize, align 4
  %cmp = icmp sgt i32 %3, 0
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.PackBitsEncodeChunk, ptr noundef @.str.1, i32 noundef 193, ptr noundef @.str.2) #3
  unreachable

4:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %cond.end
  %5 = load i32, ptr %cc.addr, align 4
  %conv1 = sext i32 %5 to i64
  %cmp2 = icmp sgt i64 %conv1, 0
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %tif.addr, align 8
  %7 = load ptr, ptr %bp.addr, align 8
  %8 = load i32, ptr %rowsize, align 4
  %9 = load i16, ptr %s.addr, align 2
  %call = call i32 @PackBitsEncode(ptr noundef %6, ptr noundef %7, i32 noundef %8, i16 noundef zeroext %9)
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  %10 = load i32, ptr %rowsize, align 4
  %11 = load ptr, ptr %bp.addr, align 8
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds i8, ptr %11, i64 %idx.ext
  store ptr %add.ptr, ptr %bp.addr, align 8
  %12 = load i32, ptr %rowsize, align 4
  %13 = load i32, ptr %cc.addr, align 4
  %sub = sub nsw i32 %13, %12
  store i32 %sub, ptr %cc.addr, align 4
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i32 noundef) #1

declare void @TIFFError(ptr noundef, ptr noundef, ...) #1

declare i32 @TIFFTileRowSize(ptr noundef) #1

declare i32 @TIFFScanlineSize(ptr noundef) #1

declare i32 @TIFFFlushData1(ptr noundef) #1

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { cold noreturn }

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
