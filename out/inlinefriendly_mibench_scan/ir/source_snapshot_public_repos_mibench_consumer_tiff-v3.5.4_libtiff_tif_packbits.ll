; ModuleID = './source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/libtiff/tif_packbits.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/libtiff/tif_packbits.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.tiff = type { ptr, i32, i32, i64, i64, i64, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i64, i16, i64, i64, i64, i16, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, i64, ptr, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i64, i64, i64, i64, i64, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i64, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i64, ptr, i64, ptr, i64, ptr, i64, i64, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i64 }

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
define internal i32 @PackBitsDecode(ptr noundef %tif, ptr noundef %op, i64 noundef %occ, i16 noundef zeroext %s) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %occ.addr = alloca i64, align 8
  %s.addr = alloca i16, align 2
  %bp = alloca ptr, align 8
  %cc = alloca i64, align 8
  %n = alloca i64, align 8
  %b = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %op, ptr %op.addr, align 8
  store i64 %occ, ptr %occ.addr, align 8
  store i16 %s, ptr %s.addr, align 2
  %0 = load i16, ptr %s.addr, align 2
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %1, i32 0, i32 42
  %2 = load ptr, ptr %tif_rawcp, align 8
  store ptr %2, ptr %bp, align 8
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %3, i32 0, i32 43
  %4 = load i64, ptr %tif_rawcc, align 8
  store i64 %4, ptr %cc, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end26, %if.then9, %entry
  %5 = load i64, ptr %cc, align 8
  %cmp = icmp sgt i64 %5, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load i64, ptr %occ.addr, align 8
  %cmp1 = icmp sgt i64 %6, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %7, label %while.body, label %while.end27

while.body:                                       ; preds = %land.end
  %8 = load ptr, ptr %bp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %8, i32 1
  store ptr %incdec.ptr, ptr %bp, align 8
  %9 = load i8, ptr %8, align 1
  %conv = sext i8 %9 to i64
  store i64 %conv, ptr %n, align 8
  %10 = load i64, ptr %cc, align 8
  %dec = add nsw i64 %10, -1
  store i64 %dec, ptr %cc, align 8
  %11 = load i64, ptr %n, align 8
  %cmp2 = icmp sge i64 %11, 128
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %12 = load i64, ptr %n, align 8
  %sub = sub nsw i64 %12, 256
  store i64 %sub, ptr %n, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %13 = load i64, ptr %n, align 8
  %cmp4 = icmp slt i64 %13, 0
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %14 = load i64, ptr %n, align 8
  %cmp7 = icmp eq i64 %14, -128
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then6
  br label %while.cond, !llvm.loop !6

if.end10:                                         ; preds = %if.then6
  %15 = load i64, ptr %n, align 8
  %sub11 = sub nsw i64 0, %15
  %add = add nsw i64 %sub11, 1
  store i64 %add, ptr %n, align 8
  %16 = load i64, ptr %n, align 8
  %17 = load i64, ptr %occ.addr, align 8
  %sub12 = sub nsw i64 %17, %16
  store i64 %sub12, ptr %occ.addr, align 8
  %18 = load ptr, ptr %bp, align 8
  %incdec.ptr13 = getelementptr inbounds i8, ptr %18, i32 1
  store ptr %incdec.ptr13, ptr %bp, align 8
  %19 = load i8, ptr %18, align 1
  %conv14 = sext i8 %19 to i32
  store i32 %conv14, ptr %b, align 4
  %20 = load i64, ptr %cc, align 8
  %dec15 = add nsw i64 %20, -1
  store i64 %dec15, ptr %cc, align 8
  br label %while.cond16

while.cond16:                                     ; preds = %while.body20, %if.end10
  %21 = load i64, ptr %n, align 8
  %dec17 = add nsw i64 %21, -1
  store i64 %dec17, ptr %n, align 8
  %cmp18 = icmp sgt i64 %21, 0
  br i1 %cmp18, label %while.body20, label %while.end

while.body20:                                     ; preds = %while.cond16
  %22 = load i32, ptr %b, align 4
  %conv21 = trunc i32 %22 to i8
  %23 = load ptr, ptr %op.addr, align 8
  %incdec.ptr22 = getelementptr inbounds i8, ptr %23, i32 1
  store ptr %incdec.ptr22, ptr %op.addr, align 8
  store i8 %conv21, ptr %23, align 1
  br label %while.cond16, !llvm.loop !8

while.end:                                        ; preds = %while.cond16
  br label %if.end26

if.else:                                          ; preds = %if.end
  %24 = load ptr, ptr %op.addr, align 8
  %25 = load ptr, ptr %bp, align 8
  %26 = load i64, ptr %n, align 8
  %inc = add nsw i64 %26, 1
  store i64 %inc, ptr %n, align 8
  call void @_TIFFmemcpy(ptr noundef %24, ptr noundef %25, i64 noundef %inc)
  %27 = load i64, ptr %n, align 8
  %28 = load ptr, ptr %op.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %28, i64 %27
  store ptr %add.ptr, ptr %op.addr, align 8
  %29 = load i64, ptr %n, align 8
  %30 = load i64, ptr %occ.addr, align 8
  %sub23 = sub nsw i64 %30, %29
  store i64 %sub23, ptr %occ.addr, align 8
  %31 = load i64, ptr %n, align 8
  %32 = load ptr, ptr %bp, align 8
  %add.ptr24 = getelementptr inbounds i8, ptr %32, i64 %31
  store ptr %add.ptr24, ptr %bp, align 8
  %33 = load i64, ptr %n, align 8
  %34 = load i64, ptr %cc, align 8
  %sub25 = sub nsw i64 %34, %33
  store i64 %sub25, ptr %cc, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.else, %while.end
  br label %while.cond, !llvm.loop !6

while.end27:                                      ; preds = %land.end
  %35 = load ptr, ptr %bp, align 8
  %36 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp28 = getelementptr inbounds %struct.tiff, ptr %36, i32 0, i32 42
  store ptr %35, ptr %tif_rawcp28, align 8
  %37 = load i64, ptr %cc, align 8
  %38 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc29 = getelementptr inbounds %struct.tiff, ptr %38, i32 0, i32 43
  store i64 %37, ptr %tif_rawcc29, align 8
  %39 = load i64, ptr %occ.addr, align 8
  %cmp30 = icmp sgt i64 %39, 0
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %while.end27
  %40 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %tif_name, align 8
  %42 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %42, i32 0, i32 11
  %43 = load i64, ptr %tif_row, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %41, ptr noundef @.str, i64 noundef %43)
  store i32 0, ptr %retval, align 4
  br label %return

if.end33:                                         ; preds = %while.end27
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end33, %if.then32
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
  %2 = load i64, ptr %tif_flags, align 8
  %and = and i64 %2, 1024
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %tif.addr, align 8
  %call = call i64 @TIFFTileRowSize(ptr noundef %3)
  %4 = inttoptr i64 %call to ptr
  %5 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %5, i32 0, i32 37
  store ptr %4, ptr %tif_data, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %tif.addr, align 8
  %call1 = call i64 @TIFFScanlineSize(ptr noundef %6)
  %7 = inttoptr i64 %call1 to ptr
  %8 = load ptr, ptr %tif.addr, align 8
  %tif_data2 = getelementptr inbounds %struct.tiff, ptr %8, i32 0, i32 37
  store ptr %7, ptr %tif_data2, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @PackBitsEncode(ptr noundef %tif, ptr noundef %buf, i64 noundef %cc, i16 noundef zeroext %s) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %cc.addr = alloca i64, align 8
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
  store i64 %cc, ptr %cc.addr, align 8
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
  %7 = load i64, ptr %tif_rawdatasize, align 8
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 %7
  store ptr %add.ptr, ptr %ep, align 8
  store i32 0, ptr %state, align 4
  store ptr null, ptr %lastliteral, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %8 = load i64, ptr %cc.addr, align 8
  %cmp = icmp sgt i64 %8, 0
  br i1 %cmp, label %while.body, label %while.end136

while.body:                                       ; preds = %while.cond
  %9 = load ptr, ptr %bp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %bp, align 8
  %10 = load i8, ptr %9, align 1
  %conv = zext i8 %10 to i32
  store i32 %conv, ptr %b, align 4
  %11 = load i64, ptr %cc.addr, align 8
  %dec = add nsw i64 %11, -1
  store i64 %dec, ptr %cc.addr, align 8
  store i64 1, ptr %n, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %12 = load i64, ptr %cc.addr, align 8
  %cmp1 = icmp sgt i64 %12, 0
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
  %18 = load i64, ptr %cc.addr, align 8
  %dec6 = add nsw i64 %18, -1
  store i64 %dec6, ptr %cc.addr, align 8
  %19 = load ptr, ptr %bp, align 8
  %incdec.ptr7 = getelementptr inbounds i8, ptr %19, i32 1
  store ptr %incdec.ptr7, ptr %bp, align 8
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %land.end
  br label %again

again:                                            ; preds = %if.end135, %if.then98, %if.then70, %if.then48, %for.end
  %20 = load ptr, ptr %op, align 8
  %add.ptr8 = getelementptr inbounds i8, ptr %20, i64 2
  %21 = load ptr, ptr %ep, align 8
  %cmp9 = icmp uge ptr %add.ptr8, %21
  br i1 %cmp9, label %if.then, label %if.end42

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
  %30 = load i64, ptr %tif_rawcc, align 8
  %add = add nsw i64 %30, %sub.ptr.sub19
  store i64 %add, ptr %tif_rawcc, align 8
  %31 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFFlushData1(ptr noundef %31)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then20

if.then20:                                        ; preds = %if.then15
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then15
  %32 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp21 = getelementptr inbounds %struct.tiff, ptr %32, i32 0, i32 42
  %33 = load ptr, ptr %tif_rawcp21, align 8
  store ptr %33, ptr %op, align 8
  br label %while.cond22

while.cond22:                                     ; preds = %while.body26, %if.end
  %34 = load i64, ptr %slop, align 8
  %dec23 = add nsw i64 %34, -1
  store i64 %dec23, ptr %slop, align 8
  %cmp24 = icmp sgt i64 %34, 0
  br i1 %cmp24, label %while.body26, label %while.end

while.body26:                                     ; preds = %while.cond22
  %35 = load ptr, ptr %lastliteral, align 8
  %incdec.ptr27 = getelementptr inbounds i8, ptr %35, i32 1
  store ptr %incdec.ptr27, ptr %lastliteral, align 8
  %36 = load i8, ptr %35, align 1
  %37 = load ptr, ptr %op, align 8
  %incdec.ptr28 = getelementptr inbounds i8, ptr %37, i32 1
  store ptr %incdec.ptr28, ptr %op, align 8
  store i8 %36, ptr %37, align 1
  br label %while.cond22, !llvm.loop !10

while.end:                                        ; preds = %while.cond22
  %38 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp29 = getelementptr inbounds %struct.tiff, ptr %38, i32 0, i32 42
  %39 = load ptr, ptr %tif_rawcp29, align 8
  store ptr %39, ptr %lastliteral, align 8
  br label %if.end41

if.else:                                          ; preds = %lor.lhs.false
  %40 = load ptr, ptr %op, align 8
  %41 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp30 = getelementptr inbounds %struct.tiff, ptr %41, i32 0, i32 42
  %42 = load ptr, ptr %tif_rawcp30, align 8
  %sub.ptr.lhs.cast31 = ptrtoint ptr %40 to i64
  %sub.ptr.rhs.cast32 = ptrtoint ptr %42 to i64
  %sub.ptr.sub33 = sub i64 %sub.ptr.lhs.cast31, %sub.ptr.rhs.cast32
  %43 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc34 = getelementptr inbounds %struct.tiff, ptr %43, i32 0, i32 43
  %44 = load i64, ptr %tif_rawcc34, align 8
  %add35 = add nsw i64 %44, %sub.ptr.sub33
  store i64 %add35, ptr %tif_rawcc34, align 8
  %45 = load ptr, ptr %tif.addr, align 8
  %call36 = call i32 @TIFFFlushData1(ptr noundef %45)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.end39, label %if.then38

if.then38:                                        ; preds = %if.else
  store i32 -1, ptr %retval, align 4
  br label %return

if.end39:                                         ; preds = %if.else
  %46 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp40 = getelementptr inbounds %struct.tiff, ptr %46, i32 0, i32 42
  %47 = load ptr, ptr %tif_rawcp40, align 8
  store ptr %47, ptr %op, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.end39, %while.end
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %again
  %48 = load i32, ptr %state, align 4
  switch i32 %48, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb64
    i32 2, label %sw.bb92
    i32 3, label %sw.bb115
  ]

sw.bb:                                            ; preds = %if.end42
  %49 = load i64, ptr %n, align 8
  %cmp43 = icmp sgt i64 %49, 1
  br i1 %cmp43, label %if.then45, label %if.else59

if.then45:                                        ; preds = %sw.bb
  store i32 2, ptr %state, align 4
  %50 = load i64, ptr %n, align 8
  %cmp46 = icmp sgt i64 %50, 128
  br i1 %cmp46, label %if.then48, label %if.end52

if.then48:                                        ; preds = %if.then45
  %51 = load ptr, ptr %op, align 8
  %incdec.ptr49 = getelementptr inbounds i8, ptr %51, i32 1
  store ptr %incdec.ptr49, ptr %op, align 8
  store i8 -127, ptr %51, align 1
  %52 = load i32, ptr %b, align 4
  %conv50 = trunc i32 %52 to i8
  %53 = load ptr, ptr %op, align 8
  %incdec.ptr51 = getelementptr inbounds i8, ptr %53, i32 1
  store ptr %incdec.ptr51, ptr %op, align 8
  store i8 %conv50, ptr %53, align 1
  %54 = load i64, ptr %n, align 8
  %sub = sub nsw i64 %54, 128
  store i64 %sub, ptr %n, align 8
  br label %again

if.end52:                                         ; preds = %if.then45
  %55 = load i64, ptr %n, align 8
  %sub53 = sub nsw i64 %55, 1
  %sub54 = sub nsw i64 0, %sub53
  %conv55 = trunc i64 %sub54 to i8
  %56 = load ptr, ptr %op, align 8
  %incdec.ptr56 = getelementptr inbounds i8, ptr %56, i32 1
  store ptr %incdec.ptr56, ptr %op, align 8
  store i8 %conv55, ptr %56, align 1
  %57 = load i32, ptr %b, align 4
  %conv57 = trunc i32 %57 to i8
  %58 = load ptr, ptr %op, align 8
  %incdec.ptr58 = getelementptr inbounds i8, ptr %58, i32 1
  store ptr %incdec.ptr58, ptr %op, align 8
  store i8 %conv57, ptr %58, align 1
  br label %if.end63

if.else59:                                        ; preds = %sw.bb
  %59 = load ptr, ptr %op, align 8
  store ptr %59, ptr %lastliteral, align 8
  %60 = load ptr, ptr %op, align 8
  %incdec.ptr60 = getelementptr inbounds i8, ptr %60, i32 1
  store ptr %incdec.ptr60, ptr %op, align 8
  store i8 0, ptr %60, align 1
  %61 = load i32, ptr %b, align 4
  %conv61 = trunc i32 %61 to i8
  %62 = load ptr, ptr %op, align 8
  %incdec.ptr62 = getelementptr inbounds i8, ptr %62, i32 1
  store ptr %incdec.ptr62, ptr %op, align 8
  store i8 %conv61, ptr %62, align 1
  store i32 1, ptr %state, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.else59, %if.end52
  br label %sw.epilog

sw.bb64:                                          ; preds = %if.end42
  %63 = load i64, ptr %n, align 8
  %cmp65 = icmp sgt i64 %63, 1
  br i1 %cmp65, label %if.then67, label %if.else82

if.then67:                                        ; preds = %sw.bb64
  store i32 3, ptr %state, align 4
  %64 = load i64, ptr %n, align 8
  %cmp68 = icmp sgt i64 %64, 128
  br i1 %cmp68, label %if.then70, label %if.end75

if.then70:                                        ; preds = %if.then67
  %65 = load ptr, ptr %op, align 8
  %incdec.ptr71 = getelementptr inbounds i8, ptr %65, i32 1
  store ptr %incdec.ptr71, ptr %op, align 8
  store i8 -127, ptr %65, align 1
  %66 = load i32, ptr %b, align 4
  %conv72 = trunc i32 %66 to i8
  %67 = load ptr, ptr %op, align 8
  %incdec.ptr73 = getelementptr inbounds i8, ptr %67, i32 1
  store ptr %incdec.ptr73, ptr %op, align 8
  store i8 %conv72, ptr %67, align 1
  %68 = load i64, ptr %n, align 8
  %sub74 = sub nsw i64 %68, 128
  store i64 %sub74, ptr %n, align 8
  br label %again

if.end75:                                         ; preds = %if.then67
  %69 = load i64, ptr %n, align 8
  %sub76 = sub nsw i64 %69, 1
  %sub77 = sub nsw i64 0, %sub76
  %conv78 = trunc i64 %sub77 to i8
  %70 = load ptr, ptr %op, align 8
  %incdec.ptr79 = getelementptr inbounds i8, ptr %70, i32 1
  store ptr %incdec.ptr79, ptr %op, align 8
  store i8 %conv78, ptr %70, align 1
  %71 = load i32, ptr %b, align 4
  %conv80 = trunc i32 %71 to i8
  %72 = load ptr, ptr %op, align 8
  %incdec.ptr81 = getelementptr inbounds i8, ptr %72, i32 1
  store ptr %incdec.ptr81, ptr %op, align 8
  store i8 %conv80, ptr %72, align 1
  br label %if.end91

if.else82:                                        ; preds = %sw.bb64
  %73 = load ptr, ptr %lastliteral, align 8
  %74 = load i8, ptr %73, align 1
  %inc83 = add i8 %74, 1
  store i8 %inc83, ptr %73, align 1
  %conv84 = zext i8 %inc83 to i32
  %cmp85 = icmp eq i32 %conv84, 127
  br i1 %cmp85, label %if.then87, label %if.end88

if.then87:                                        ; preds = %if.else82
  store i32 0, ptr %state, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then87, %if.else82
  %75 = load i32, ptr %b, align 4
  %conv89 = trunc i32 %75 to i8
  %76 = load ptr, ptr %op, align 8
  %incdec.ptr90 = getelementptr inbounds i8, ptr %76, i32 1
  store ptr %incdec.ptr90, ptr %op, align 8
  store i8 %conv89, ptr %76, align 1
  br label %if.end91

if.end91:                                         ; preds = %if.end88, %if.end75
  br label %sw.epilog

sw.bb92:                                          ; preds = %if.end42
  %77 = load i64, ptr %n, align 8
  %cmp93 = icmp sgt i64 %77, 1
  br i1 %cmp93, label %if.then95, label %if.else110

if.then95:                                        ; preds = %sw.bb92
  %78 = load i64, ptr %n, align 8
  %cmp96 = icmp sgt i64 %78, 128
  br i1 %cmp96, label %if.then98, label %if.end103

if.then98:                                        ; preds = %if.then95
  %79 = load ptr, ptr %op, align 8
  %incdec.ptr99 = getelementptr inbounds i8, ptr %79, i32 1
  store ptr %incdec.ptr99, ptr %op, align 8
  store i8 -127, ptr %79, align 1
  %80 = load i32, ptr %b, align 4
  %conv100 = trunc i32 %80 to i8
  %81 = load ptr, ptr %op, align 8
  %incdec.ptr101 = getelementptr inbounds i8, ptr %81, i32 1
  store ptr %incdec.ptr101, ptr %op, align 8
  store i8 %conv100, ptr %81, align 1
  %82 = load i64, ptr %n, align 8
  %sub102 = sub nsw i64 %82, 128
  store i64 %sub102, ptr %n, align 8
  br label %again

if.end103:                                        ; preds = %if.then95
  %83 = load i64, ptr %n, align 8
  %sub104 = sub nsw i64 %83, 1
  %sub105 = sub nsw i64 0, %sub104
  %conv106 = trunc i64 %sub105 to i8
  %84 = load ptr, ptr %op, align 8
  %incdec.ptr107 = getelementptr inbounds i8, ptr %84, i32 1
  store ptr %incdec.ptr107, ptr %op, align 8
  store i8 %conv106, ptr %84, align 1
  %85 = load i32, ptr %b, align 4
  %conv108 = trunc i32 %85 to i8
  %86 = load ptr, ptr %op, align 8
  %incdec.ptr109 = getelementptr inbounds i8, ptr %86, i32 1
  store ptr %incdec.ptr109, ptr %op, align 8
  store i8 %conv108, ptr %86, align 1
  br label %if.end114

if.else110:                                       ; preds = %sw.bb92
  %87 = load ptr, ptr %op, align 8
  store ptr %87, ptr %lastliteral, align 8
  %88 = load ptr, ptr %op, align 8
  %incdec.ptr111 = getelementptr inbounds i8, ptr %88, i32 1
  store ptr %incdec.ptr111, ptr %op, align 8
  store i8 0, ptr %88, align 1
  %89 = load i32, ptr %b, align 4
  %conv112 = trunc i32 %89 to i8
  %90 = load ptr, ptr %op, align 8
  %incdec.ptr113 = getelementptr inbounds i8, ptr %90, i32 1
  store ptr %incdec.ptr113, ptr %op, align 8
  store i8 %conv112, ptr %90, align 1
  store i32 1, ptr %state, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.else110, %if.end103
  br label %sw.epilog

sw.bb115:                                         ; preds = %if.end42
  %91 = load i64, ptr %n, align 8
  %cmp116 = icmp eq i64 %91, 1
  br i1 %cmp116, label %land.lhs.true, label %if.else134

land.lhs.true:                                    ; preds = %sw.bb115
  %92 = load ptr, ptr %op, align 8
  %arrayidx = getelementptr inbounds i8, ptr %92, i64 -2
  %93 = load i8, ptr %arrayidx, align 1
  %conv118 = zext i8 %93 to i32
  %cmp119 = icmp eq i32 %conv118, 255
  br i1 %cmp119, label %land.lhs.true121, label %if.else134

land.lhs.true121:                                 ; preds = %land.lhs.true
  %94 = load ptr, ptr %lastliteral, align 8
  %95 = load i8, ptr %94, align 1
  %conv122 = zext i8 %95 to i32
  %cmp123 = icmp slt i32 %conv122, 126
  br i1 %cmp123, label %if.then125, label %if.else134

if.then125:                                       ; preds = %land.lhs.true121
  %96 = load ptr, ptr %lastliteral, align 8
  %97 = load i8, ptr %96, align 1
  %conv126 = zext i8 %97 to i32
  %add127 = add nsw i32 %conv126, 2
  %conv128 = trunc i32 %add127 to i8
  store i8 %conv128, ptr %96, align 1
  %conv129 = zext i8 %conv128 to i32
  %cmp130 = icmp eq i32 %conv129, 127
  %98 = zext i1 %cmp130 to i64
  %cond = select i1 %cmp130, i32 0, i32 1
  store i32 %cond, ptr %state, align 4
  %99 = load ptr, ptr %op, align 8
  %arrayidx132 = getelementptr inbounds i8, ptr %99, i64 -1
  %100 = load i8, ptr %arrayidx132, align 1
  %101 = load ptr, ptr %op, align 8
  %arrayidx133 = getelementptr inbounds i8, ptr %101, i64 -2
  store i8 %100, ptr %arrayidx133, align 1
  br label %if.end135

if.else134:                                       ; preds = %land.lhs.true121, %land.lhs.true, %sw.bb115
  store i32 2, ptr %state, align 4
  br label %if.end135

if.end135:                                        ; preds = %if.else134, %if.then125
  br label %again

sw.epilog:                                        ; preds = %if.end42, %if.end114, %if.end91, %if.end63
  br label %while.cond, !llvm.loop !11

while.end136:                                     ; preds = %while.cond
  %102 = load ptr, ptr %op, align 8
  %103 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp137 = getelementptr inbounds %struct.tiff, ptr %103, i32 0, i32 42
  %104 = load ptr, ptr %tif_rawcp137, align 8
  %sub.ptr.lhs.cast138 = ptrtoint ptr %102 to i64
  %sub.ptr.rhs.cast139 = ptrtoint ptr %104 to i64
  %sub.ptr.sub140 = sub i64 %sub.ptr.lhs.cast138, %sub.ptr.rhs.cast139
  %105 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc141 = getelementptr inbounds %struct.tiff, ptr %105, i32 0, i32 43
  %106 = load i64, ptr %tif_rawcc141, align 8
  %add142 = add nsw i64 %106, %sub.ptr.sub140
  store i64 %add142, ptr %tif_rawcc141, align 8
  %107 = load ptr, ptr %op, align 8
  %108 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp143 = getelementptr inbounds %struct.tiff, ptr %108, i32 0, i32 42
  store ptr %107, ptr %tif_rawcp143, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end136, %if.then38, %if.then20
  %109 = load i32, ptr %retval, align 4
  ret i32 %109
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @PackBitsEncodeChunk(ptr noundef %tif, ptr noundef %bp, i64 noundef %cc, i16 noundef zeroext %s) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %cc.addr = alloca i64, align 8
  %s.addr = alloca i16, align 2
  %rowsize = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store i64 %cc, ptr %cc.addr, align 8
  store i16 %s, ptr %s.addr, align 2
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  %2 = ptrtoint ptr %1 to i64
  store i64 %2, ptr %rowsize, align 8
  %3 = load i64, ptr %rowsize, align 8
  %cmp = icmp sgt i64 %3, 0
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
  %5 = load i64, ptr %cc.addr, align 8
  %cmp1 = icmp sgt i64 %5, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %tif.addr, align 8
  %7 = load ptr, ptr %bp.addr, align 8
  %8 = load i64, ptr %rowsize, align 8
  %9 = load i16, ptr %s.addr, align 2
  %call = call i32 @PackBitsEncode(ptr noundef %6, ptr noundef %7, i64 noundef %8, i16 noundef zeroext %9)
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  %10 = load i64, ptr %rowsize, align 8
  %11 = load ptr, ptr %bp.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %11, i64 %10
  store ptr %add.ptr, ptr %bp.addr, align 8
  %12 = load i64, ptr %rowsize, align 8
  %13 = load i64, ptr %cc.addr, align 8
  %sub = sub nsw i64 %13, %12
  store i64 %sub, ptr %cc.addr, align 8
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i64 noundef) #1

declare void @TIFFError(ptr noundef, ptr noundef, ...) #1

declare i64 @TIFFTileRowSize(ptr noundef) #1

declare i64 @TIFFScanlineSize(ptr noundef) #1

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
