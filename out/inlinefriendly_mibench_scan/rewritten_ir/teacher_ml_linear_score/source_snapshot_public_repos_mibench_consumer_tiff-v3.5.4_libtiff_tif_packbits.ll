; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_ml_linear_score/source_snapshot_public_repos_mibench_consumer_tiff-v3.5.4_libtiff_tif_packbits.prepared.ll'
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

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFInitPackBits(ptr noundef %tif, i32 noundef %scheme) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %tif_decoderow = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 26
  store ptr @PackBitsDecode, ptr %tif_decoderow, align 8
  %tif_decodestrip = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 28
  store ptr @PackBitsDecode, ptr %tif_decodestrip, align 8
  %tif_decodetile = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 30
  store ptr @PackBitsDecode, ptr %tif_decodetile, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_preencode = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 24
  store ptr @PackBitsPreEncode, ptr %tif_preencode, align 8
  %tif_encoderow = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 27
  store ptr @PackBitsEncode, ptr %tif_encoderow, align 8
  %tif_encodestrip = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 29
  store ptr @PackBitsEncodeChunk, ptr %tif_encodestrip, align 8
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_encodetile = getelementptr inbounds %struct.tiff, ptr %1, i64 0, i32 31
  store ptr @PackBitsEncodeChunk, ptr %tif_encodetile, align 8
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @PackBitsDecode(ptr noundef %tif, ptr noundef %op, i64 noundef %occ, i16 noundef zeroext %s) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %occ.addr = alloca i64, align 8
  %bp = alloca ptr, align 8
  %cc = alloca i64, align 8
  %n = alloca i64, align 8
  %b = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %op, ptr %op.addr, align 8
  store i64 %occ, ptr %occ.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 42
  %0 = load ptr, ptr %tif_rawcp, align 8
  store ptr %0, ptr %bp, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 43
  %1 = load i64, ptr %tif_rawcc, align 8
  store i64 %1, ptr %cc, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.then6, %if.end26, %entry
  %2 = load i64, ptr %cc, align 8
  %cmp = icmp sgt i64 %2, 0
  %3 = load i64, ptr %occ.addr, align 8
  %cmp1 = icmp sgt i64 %3, 0
  %4 = select i1 %cmp, i1 %cmp1, i1 false
  br i1 %4, label %while.body, label %while.end27

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %bp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i64 1
  store ptr %incdec.ptr, ptr %bp, align 8
  %6 = load i8, ptr %5, align 1
  %conv = sext i8 %6 to i64
  store i64 %conv, ptr %n, align 8
  %7 = load i64, ptr %cc, align 8
  %dec = add nsw i64 %7, -1
  store i64 %dec, ptr %cc, align 8
  %8 = load i64, ptr %n, align 8
  %cmp4 = icmp slt i64 %8, 0
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %while.body
  %9 = load i64, ptr %n, align 8
  %cmp7 = icmp eq i64 %9, -128
  br i1 %cmp7, label %while.cond, label %if.end10, !llvm.loop !6

if.end10:                                         ; preds = %if.then6
  %10 = load i64, ptr %n, align 8
  %add = sub i64 1, %10
  store i64 %add, ptr %n, align 8
  %11 = load i64, ptr %occ.addr, align 8
  %sub12 = sub nsw i64 %11, %add
  store i64 %sub12, ptr %occ.addr, align 8
  %12 = load ptr, ptr %bp, align 8
  %incdec.ptr13 = getelementptr inbounds i8, ptr %12, i64 1
  store ptr %incdec.ptr13, ptr %bp, align 8
  %13 = load i8, ptr %12, align 1
  %conv14 = sext i8 %13 to i32
  store i32 %conv14, ptr %b, align 4
  %14 = load i64, ptr %cc, align 8
  %dec15 = add nsw i64 %14, -1
  store i64 %dec15, ptr %cc, align 8
  br label %while.cond16

while.cond16:                                     ; preds = %while.body20, %if.end10
  %15 = load i64, ptr %n, align 8
  %dec17 = add nsw i64 %15, -1
  store i64 %dec17, ptr %n, align 8
  %cmp18 = icmp sgt i64 %15, 0
  br i1 %cmp18, label %while.body20, label %if.end26

while.body20:                                     ; preds = %while.cond16
  %16 = load i32, ptr %b, align 4
  %conv21 = trunc i32 %16 to i8
  %17 = load ptr, ptr %op.addr, align 8
  %incdec.ptr22 = getelementptr inbounds i8, ptr %17, i64 1
  store ptr %incdec.ptr22, ptr %op.addr, align 8
  store i8 %conv21, ptr %17, align 1
  br label %while.cond16, !llvm.loop !8

if.else:                                          ; preds = %while.body
  %18 = load ptr, ptr %op.addr, align 8
  %19 = load ptr, ptr %bp, align 8
  %20 = load i64, ptr %n, align 8
  %inc = add nsw i64 %20, 1
  store i64 %inc, ptr %n, align 8
  call void @_TIFFmemcpy(ptr noundef %18, ptr noundef %19, i64 noundef %inc) #3
  %add.ptr = getelementptr inbounds i8, ptr %18, i64 %inc
  store ptr %add.ptr, ptr %op.addr, align 8
  %21 = load i64, ptr %occ.addr, align 8
  %sub23 = sub nsw i64 %21, %inc
  store i64 %sub23, ptr %occ.addr, align 8
  %22 = load i64, ptr %n, align 8
  %23 = load ptr, ptr %bp, align 8
  %add.ptr24 = getelementptr inbounds i8, ptr %23, i64 %22
  store ptr %add.ptr24, ptr %bp, align 8
  %24 = load i64, ptr %cc, align 8
  %sub25 = sub nsw i64 %24, %22
  store i64 %sub25, ptr %cc, align 8
  br label %if.end26

if.end26:                                         ; preds = %while.cond16, %if.else
  br label %while.cond, !llvm.loop !6

while.end27:                                      ; preds = %while.cond
  %25 = load ptr, ptr %bp, align 8
  %26 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp28 = getelementptr inbounds %struct.tiff, ptr %26, i64 0, i32 42
  store ptr %25, ptr %tif_rawcp28, align 8
  %27 = load i64, ptr %cc, align 8
  %tif_rawcc29 = getelementptr inbounds %struct.tiff, ptr %26, i64 0, i32 43
  store i64 %27, ptr %tif_rawcc29, align 8
  %28 = load i64, ptr %occ.addr, align 8
  %cmp30 = icmp sgt i64 %28, 0
  br i1 %cmp30, label %if.then32, label %return

if.then32:                                        ; preds = %while.end27
  %29 = load ptr, ptr %tif.addr, align 8
  %30 = load ptr, ptr %29, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %29, i64 0, i32 11
  %31 = load i64, ptr %tif_row, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %30, ptr noundef nonnull @.str, i64 noundef %31) #3
  br label %return

return:                                           ; preds = %while.end27, %if.then32
  %storemerge = phi i32 [ 0, %if.then32 ], [ 1, %while.end27 ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @PackBitsPreEncode(ptr noundef %tif, i16 noundef zeroext %s) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 3
  %0 = load i64, ptr %tif_flags, align 8
  %and = and i64 %0, 1024
  %cmp.not = icmp eq i64 %and, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %tif.addr, align 8
  %call = call i64 @TIFFTileRowSize(ptr noundef %1) #3
  %2 = inttoptr i64 %call to ptr
  %tif_data = getelementptr inbounds %struct.tiff, ptr %1, i64 0, i32 37
  store ptr %2, ptr %tif_data, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %tif.addr, align 8
  %call1 = call i64 @TIFFScanlineSize(ptr noundef %3) #3
  %4 = inttoptr i64 %call1 to ptr
  %tif_data2 = getelementptr inbounds %struct.tiff, ptr %3, i64 0, i32 37
  store ptr %4, ptr %tif_data2, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @PackBitsEncode(ptr noundef %tif, ptr noundef %buf, i64 noundef %cc, i16 noundef zeroext %s) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %cc.addr = alloca i64, align 8
  %bp = alloca ptr, align 8
  %op = alloca ptr, align 8
  %ep = alloca ptr, align 8
  %lastliteral = alloca ptr, align 8
  %n = alloca i64, align 8
  %slop = alloca i64, align 8
  %b = alloca i32, align 4
  %state = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %cc, ptr %cc.addr, align 8
  store ptr %buf, ptr %bp, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 42
  %0 = load ptr, ptr %tif_rawcp, align 8
  store ptr %0, ptr %op, align 8
  %tif_rawdata = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 40
  %1 = load ptr, ptr %tif_rawdata, align 8
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %2, i64 0, i32 41
  %3 = load i64, ptr %tif_rawdatasize, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %3
  store ptr %add.ptr, ptr %ep, align 8
  store i32 0, ptr %state, align 4
  store ptr null, ptr %lastliteral, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %4 = load i64, ptr %cc.addr, align 8
  %cmp = icmp sgt i64 %4, 0
  br i1 %cmp, label %while.body, label %while.end136

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %bp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i64 1
  store ptr %incdec.ptr, ptr %bp, align 8
  %6 = load i8, ptr %5, align 1
  %conv = zext i8 %6 to i32
  store i32 %conv, ptr %b, align 4
  %7 = load i64, ptr %cc.addr, align 8
  %dec = add nsw i64 %7, -1
  store i64 %dec, ptr %cc.addr, align 8
  store i64 1, ptr %n, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.body
  %8 = load i64, ptr %cc.addr, align 8
  %cmp1 = icmp sgt i64 %8, 0
  br i1 %cmp1, label %land.rhs, label %for.end

land.rhs:                                         ; preds = %for.cond
  %9 = load i32, ptr %b, align 4
  %10 = load ptr, ptr %bp, align 8
  %11 = load i8, ptr %10, align 1
  %conv3 = zext i8 %11 to i32
  %cmp4 = icmp eq i32 %9, %conv3
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %land.rhs
  %12 = load i64, ptr %n, align 8
  %inc = add nsw i64 %12, 1
  store i64 %inc, ptr %n, align 8
  %13 = load i64, ptr %cc.addr, align 8
  %dec6 = add nsw i64 %13, -1
  store i64 %dec6, ptr %cc.addr, align 8
  %14 = load ptr, ptr %bp, align 8
  %incdec.ptr7 = getelementptr inbounds i8, ptr %14, i64 1
  store ptr %incdec.ptr7, ptr %bp, align 8
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond, %land.rhs
  br label %again

again:                                            ; preds = %if.end135, %if.then98, %if.then70, %if.then48, %for.end
  %15 = load ptr, ptr %op, align 8
  %add.ptr8 = getelementptr inbounds i8, ptr %15, i64 2
  %16 = load ptr, ptr %ep, align 8
  %cmp9.not = icmp ult ptr %add.ptr8, %16
  br i1 %cmp9.not, label %if.end42, label %if.then

if.then:                                          ; preds = %again
  %17 = load i32, ptr %state, align 4
  %cmp11 = icmp eq i32 %17, 1
  %18 = load i32, ptr %state, align 4
  %cmp13 = icmp eq i32 %18, 3
  %or.cond = select i1 %cmp11, i1 true, i1 %cmp13
  br i1 %or.cond, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then
  %19 = load ptr, ptr %op, align 8
  %20 = load ptr, ptr %lastliteral, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %19 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %20 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, ptr %slop, align 8
  %21 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp16 = getelementptr inbounds %struct.tiff, ptr %21, i64 0, i32 42
  %22 = load ptr, ptr %tif_rawcp16, align 8
  %sub.ptr.lhs.cast17 = ptrtoint ptr %20 to i64
  %sub.ptr.rhs.cast18 = ptrtoint ptr %22 to i64
  %sub.ptr.sub19 = sub i64 %sub.ptr.lhs.cast17, %sub.ptr.rhs.cast18
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %21, i64 0, i32 43
  %23 = load i64, ptr %tif_rawcc, align 8
  %add = add nsw i64 %23, %sub.ptr.sub19
  store i64 %add, ptr %tif_rawcc, align 8
  %24 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFFlushData1(ptr noundef %24) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then20, label %if.end

if.then20:                                        ; preds = %if.then15
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then15
  %25 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp21 = getelementptr inbounds %struct.tiff, ptr %25, i64 0, i32 42
  %26 = load ptr, ptr %tif_rawcp21, align 8
  store ptr %26, ptr %op, align 8
  br label %while.cond22

while.cond22:                                     ; preds = %while.body26, %if.end
  %27 = load i64, ptr %slop, align 8
  %dec23 = add nsw i64 %27, -1
  store i64 %dec23, ptr %slop, align 8
  %cmp24 = icmp sgt i64 %27, 0
  br i1 %cmp24, label %while.body26, label %while.end

while.body26:                                     ; preds = %while.cond22
  %28 = load ptr, ptr %lastliteral, align 8
  %incdec.ptr27 = getelementptr inbounds i8, ptr %28, i64 1
  store ptr %incdec.ptr27, ptr %lastliteral, align 8
  %29 = load i8, ptr %28, align 1
  %30 = load ptr, ptr %op, align 8
  %incdec.ptr28 = getelementptr inbounds i8, ptr %30, i64 1
  store ptr %incdec.ptr28, ptr %op, align 8
  store i8 %29, ptr %30, align 1
  br label %while.cond22, !llvm.loop !10

while.end:                                        ; preds = %while.cond22
  %31 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp29 = getelementptr inbounds %struct.tiff, ptr %31, i64 0, i32 42
  %32 = load ptr, ptr %tif_rawcp29, align 8
  store ptr %32, ptr %lastliteral, align 8
  br label %if.end42

if.else:                                          ; preds = %if.then
  %33 = load ptr, ptr %op, align 8
  %34 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp30 = getelementptr inbounds %struct.tiff, ptr %34, i64 0, i32 42
  %35 = load ptr, ptr %tif_rawcp30, align 8
  %sub.ptr.lhs.cast31 = ptrtoint ptr %33 to i64
  %sub.ptr.rhs.cast32 = ptrtoint ptr %35 to i64
  %sub.ptr.sub33 = sub i64 %sub.ptr.lhs.cast31, %sub.ptr.rhs.cast32
  %tif_rawcc34 = getelementptr inbounds %struct.tiff, ptr %34, i64 0, i32 43
  %36 = load i64, ptr %tif_rawcc34, align 8
  %add35 = add nsw i64 %36, %sub.ptr.sub33
  store i64 %add35, ptr %tif_rawcc34, align 8
  %37 = load ptr, ptr %tif.addr, align 8
  %call36 = call i32 @TIFFFlushData1(ptr noundef %37) #3
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.else
  store i32 -1, ptr %retval, align 4
  br label %return

if.end39:                                         ; preds = %if.else
  %38 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp40 = getelementptr inbounds %struct.tiff, ptr %38, i64 0, i32 42
  %39 = load ptr, ptr %tif_rawcp40, align 8
  store ptr %39, ptr %op, align 8
  br label %if.end42

if.end42:                                         ; preds = %while.end, %if.end39, %again
  %40 = load i32, ptr %state, align 4
  switch i32 %40, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb64
    i32 2, label %sw.bb92
    i32 3, label %sw.bb115
  ]

sw.bb:                                            ; preds = %if.end42
  %41 = load i64, ptr %n, align 8
  %cmp43 = icmp sgt i64 %41, 1
  br i1 %cmp43, label %if.then45, label %if.else59

if.then45:                                        ; preds = %sw.bb
  store i32 2, ptr %state, align 4
  %42 = load i64, ptr %n, align 8
  %cmp46 = icmp sgt i64 %42, 128
  br i1 %cmp46, label %if.then48, label %if.end52

if.then48:                                        ; preds = %if.then45
  %43 = load ptr, ptr %op, align 8
  %incdec.ptr49 = getelementptr inbounds i8, ptr %43, i64 1
  store ptr %incdec.ptr49, ptr %op, align 8
  store i8 -127, ptr %43, align 1
  %44 = load i32, ptr %b, align 4
  %conv50 = trunc i32 %44 to i8
  %incdec.ptr51 = getelementptr inbounds i8, ptr %43, i64 2
  store ptr %incdec.ptr51, ptr %op, align 8
  store i8 %conv50, ptr %incdec.ptr49, align 1
  %45 = load i64, ptr %n, align 8
  %sub = add nsw i64 %45, -128
  store i64 %sub, ptr %n, align 8
  br label %again

if.end52:                                         ; preds = %if.then45
  %46 = load i64, ptr %n, align 8
  %47 = trunc i64 %46 to i8
  %conv55 = sub i8 1, %47
  %48 = load ptr, ptr %op, align 8
  %incdec.ptr56 = getelementptr inbounds i8, ptr %48, i64 1
  store ptr %incdec.ptr56, ptr %op, align 8
  store i8 %conv55, ptr %48, align 1
  %49 = load i32, ptr %b, align 4
  %conv57 = trunc i32 %49 to i8
  %incdec.ptr58 = getelementptr inbounds i8, ptr %48, i64 2
  store ptr %incdec.ptr58, ptr %op, align 8
  store i8 %conv57, ptr %incdec.ptr56, align 1
  br label %sw.epilog

if.else59:                                        ; preds = %sw.bb
  %50 = load ptr, ptr %op, align 8
  store ptr %50, ptr %lastliteral, align 8
  %incdec.ptr60 = getelementptr inbounds i8, ptr %50, i64 1
  store ptr %incdec.ptr60, ptr %op, align 8
  store i8 0, ptr %50, align 1
  %51 = load i32, ptr %b, align 4
  %conv61 = trunc i32 %51 to i8
  %incdec.ptr62 = getelementptr inbounds i8, ptr %50, i64 2
  store ptr %incdec.ptr62, ptr %op, align 8
  store i8 %conv61, ptr %incdec.ptr60, align 1
  store i32 1, ptr %state, align 4
  br label %sw.epilog

sw.bb64:                                          ; preds = %if.end42
  %52 = load i64, ptr %n, align 8
  %cmp65 = icmp sgt i64 %52, 1
  br i1 %cmp65, label %if.then67, label %if.else82

if.then67:                                        ; preds = %sw.bb64
  store i32 3, ptr %state, align 4
  %53 = load i64, ptr %n, align 8
  %cmp68 = icmp sgt i64 %53, 128
  br i1 %cmp68, label %if.then70, label %if.end75

if.then70:                                        ; preds = %if.then67
  %54 = load ptr, ptr %op, align 8
  %incdec.ptr71 = getelementptr inbounds i8, ptr %54, i64 1
  store ptr %incdec.ptr71, ptr %op, align 8
  store i8 -127, ptr %54, align 1
  %55 = load i32, ptr %b, align 4
  %conv72 = trunc i32 %55 to i8
  %incdec.ptr73 = getelementptr inbounds i8, ptr %54, i64 2
  store ptr %incdec.ptr73, ptr %op, align 8
  store i8 %conv72, ptr %incdec.ptr71, align 1
  %56 = load i64, ptr %n, align 8
  %sub74 = add nsw i64 %56, -128
  store i64 %sub74, ptr %n, align 8
  br label %again

if.end75:                                         ; preds = %if.then67
  %57 = load i64, ptr %n, align 8
  %58 = trunc i64 %57 to i8
  %conv78 = sub i8 1, %58
  %59 = load ptr, ptr %op, align 8
  %incdec.ptr79 = getelementptr inbounds i8, ptr %59, i64 1
  store ptr %incdec.ptr79, ptr %op, align 8
  store i8 %conv78, ptr %59, align 1
  %60 = load i32, ptr %b, align 4
  %conv80 = trunc i32 %60 to i8
  %incdec.ptr81 = getelementptr inbounds i8, ptr %59, i64 2
  store ptr %incdec.ptr81, ptr %op, align 8
  store i8 %conv80, ptr %incdec.ptr79, align 1
  br label %sw.epilog

if.else82:                                        ; preds = %sw.bb64
  %61 = load ptr, ptr %lastliteral, align 8
  %62 = load i8, ptr %61, align 1
  %inc83 = add i8 %62, 1
  store i8 %inc83, ptr %61, align 1
  %cmp85 = icmp eq i8 %inc83, 127
  br i1 %cmp85, label %if.then87, label %if.end88

if.then87:                                        ; preds = %if.else82
  store i32 0, ptr %state, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then87, %if.else82
  %63 = load i32, ptr %b, align 4
  %conv89 = trunc i32 %63 to i8
  %64 = load ptr, ptr %op, align 8
  %incdec.ptr90 = getelementptr inbounds i8, ptr %64, i64 1
  store ptr %incdec.ptr90, ptr %op, align 8
  store i8 %conv89, ptr %64, align 1
  br label %sw.epilog

sw.bb92:                                          ; preds = %if.end42
  %65 = load i64, ptr %n, align 8
  %cmp93 = icmp sgt i64 %65, 1
  br i1 %cmp93, label %if.then95, label %if.else110

if.then95:                                        ; preds = %sw.bb92
  %66 = load i64, ptr %n, align 8
  %cmp96 = icmp sgt i64 %66, 128
  br i1 %cmp96, label %if.then98, label %if.end103

if.then98:                                        ; preds = %if.then95
  %67 = load ptr, ptr %op, align 8
  %incdec.ptr99 = getelementptr inbounds i8, ptr %67, i64 1
  store ptr %incdec.ptr99, ptr %op, align 8
  store i8 -127, ptr %67, align 1
  %68 = load i32, ptr %b, align 4
  %conv100 = trunc i32 %68 to i8
  %incdec.ptr101 = getelementptr inbounds i8, ptr %67, i64 2
  store ptr %incdec.ptr101, ptr %op, align 8
  store i8 %conv100, ptr %incdec.ptr99, align 1
  %69 = load i64, ptr %n, align 8
  %sub102 = add nsw i64 %69, -128
  store i64 %sub102, ptr %n, align 8
  br label %again

if.end103:                                        ; preds = %if.then95
  %70 = load i64, ptr %n, align 8
  %71 = trunc i64 %70 to i8
  %conv106 = sub i8 1, %71
  %72 = load ptr, ptr %op, align 8
  %incdec.ptr107 = getelementptr inbounds i8, ptr %72, i64 1
  store ptr %incdec.ptr107, ptr %op, align 8
  store i8 %conv106, ptr %72, align 1
  %73 = load i32, ptr %b, align 4
  %conv108 = trunc i32 %73 to i8
  %incdec.ptr109 = getelementptr inbounds i8, ptr %72, i64 2
  store ptr %incdec.ptr109, ptr %op, align 8
  store i8 %conv108, ptr %incdec.ptr107, align 1
  br label %sw.epilog

if.else110:                                       ; preds = %sw.bb92
  %74 = load ptr, ptr %op, align 8
  store ptr %74, ptr %lastliteral, align 8
  %incdec.ptr111 = getelementptr inbounds i8, ptr %74, i64 1
  store ptr %incdec.ptr111, ptr %op, align 8
  store i8 0, ptr %74, align 1
  %75 = load i32, ptr %b, align 4
  %conv112 = trunc i32 %75 to i8
  %incdec.ptr113 = getelementptr inbounds i8, ptr %74, i64 2
  store ptr %incdec.ptr113, ptr %op, align 8
  store i8 %conv112, ptr %incdec.ptr111, align 1
  store i32 1, ptr %state, align 4
  br label %sw.epilog

sw.bb115:                                         ; preds = %if.end42
  %76 = load i64, ptr %n, align 8
  %cmp116 = icmp eq i64 %76, 1
  br i1 %cmp116, label %land.lhs.true, label %if.else134

land.lhs.true:                                    ; preds = %sw.bb115
  %77 = load ptr, ptr %op, align 8
  %arrayidx = getelementptr inbounds i8, ptr %77, i64 -2
  %78 = load i8, ptr %arrayidx, align 1
  %cmp119 = icmp eq i8 %78, -1
  br i1 %cmp119, label %land.lhs.true121, label %if.else134

land.lhs.true121:                                 ; preds = %land.lhs.true
  %79 = load ptr, ptr %lastliteral, align 8
  %80 = load i8, ptr %79, align 1
  %cmp123 = icmp ult i8 %80, 126
  br i1 %cmp123, label %if.then125, label %if.else134

if.then125:                                       ; preds = %land.lhs.true121
  %81 = load ptr, ptr %lastliteral, align 8
  %82 = load i8, ptr %81, align 1
  %add127 = add i8 %82, 2
  store i8 %add127, ptr %81, align 1
  %cmp130 = icmp ne i8 %add127, 127
  %cond = zext i1 %cmp130 to i32
  store i32 %cond, ptr %state, align 4
  %83 = load ptr, ptr %op, align 8
  %arrayidx132 = getelementptr inbounds i8, ptr %83, i64 -1
  %84 = load i8, ptr %arrayidx132, align 1
  %arrayidx133 = getelementptr inbounds i8, ptr %83, i64 -2
  store i8 %84, ptr %arrayidx133, align 1
  br label %if.end135

if.else134:                                       ; preds = %land.lhs.true121, %land.lhs.true, %sw.bb115
  store i32 2, ptr %state, align 4
  br label %if.end135

if.end135:                                        ; preds = %if.else134, %if.then125
  br label %again

sw.epilog:                                        ; preds = %if.end103, %if.else110, %if.end75, %if.end88, %if.end52, %if.else59, %if.end42
  br label %while.cond, !llvm.loop !11

while.end136:                                     ; preds = %while.cond
  %85 = load ptr, ptr %op, align 8
  %86 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp137 = getelementptr inbounds %struct.tiff, ptr %86, i64 0, i32 42
  %87 = load ptr, ptr %tif_rawcp137, align 8
  %sub.ptr.lhs.cast138 = ptrtoint ptr %85 to i64
  %sub.ptr.rhs.cast139 = ptrtoint ptr %87 to i64
  %sub.ptr.sub140 = sub i64 %sub.ptr.lhs.cast138, %sub.ptr.rhs.cast139
  %tif_rawcc141 = getelementptr inbounds %struct.tiff, ptr %86, i64 0, i32 43
  %88 = load i64, ptr %tif_rawcc141, align 8
  %add142 = add nsw i64 %88, %sub.ptr.sub140
  store i64 %add142, ptr %tif_rawcc141, align 8
  %89 = load ptr, ptr %op, align 8
  %90 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp143 = getelementptr inbounds %struct.tiff, ptr %90, i64 0, i32 42
  store ptr %89, ptr %tif_rawcp143, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end136, %if.then38, %if.then20
  %91 = load i32, ptr %retval, align 4
  ret i32 %91
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @PackBitsEncodeChunk(ptr noundef %tif, ptr noundef %bp, i64 noundef %cc, i16 noundef zeroext %s) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %cc.addr = alloca i64, align 8
  %s.addr = alloca i16, align 2
  %rowsize = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store i64 %cc, ptr %cc.addr, align 8
  store i16 %s, ptr %s.addr, align 2
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  %1 = ptrtoint ptr %0 to i64
  store i64 %1, ptr %rowsize, align 8
  %cmp.not = icmp sgt ptr %0, null
  br i1 %cmp.not, label %while.cond, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__.PackBitsEncodeChunk, ptr noundef nonnull @.str.1, i32 noundef 193, ptr noundef nonnull @.str.2) #4
  unreachable

while.cond:                                       ; preds = %entry, %if.end
  %2 = load i64, ptr %cc.addr, align 8
  %cmp1 = icmp sgt i64 %2, 0
  br i1 %cmp1, label %while.body, label %return

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %tif.addr, align 8
  %4 = load ptr, ptr %bp.addr, align 8
  %5 = load i64, ptr %rowsize, align 8
  %6 = load i16, ptr %s.addr, align 2
  %call = call i32 @PackBitsEncode(ptr noundef %3, ptr noundef %4, i64 noundef %5, i16 noundef zeroext %6)
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %return, label %if.end

if.end:                                           ; preds = %while.body
  %7 = load i64, ptr %rowsize, align 8
  %8 = load ptr, ptr %bp.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %8, i64 %7
  store ptr %add.ptr, ptr %bp.addr, align 8
  %9 = load i64, ptr %cc.addr, align 8
  %sub = sub nsw i64 %9, %7
  store i64 %sub, ptr %cc.addr, align 8
  br label %while.cond, !llvm.loop !12

return:                                           ; preds = %while.cond, %while.body
  %storemerge = phi i32 [ -1, %while.body ], [ 1, %while.cond ]
  ret i32 %storemerge
}

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i64 noundef) #1

declare void @TIFFError(ptr noundef, ptr noundef, ...) #1

declare i64 @TIFFTileRowSize(ptr noundef) #1

declare i64 @TIFFScanlineSize(ptr noundef) #1

declare i32 @TIFFFlushData1(ptr noundef) #1

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind }
attributes #4 = { cold noreturn nounwind }

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
