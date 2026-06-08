; ModuleID = './out/inlinefriendly_scan/rewritten_ir/teacher_small_callee/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-tiff2bw_tif_packbits.prepared.ll'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-tiff2bw/tif_packbits.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.tiff = type { ptr, i32, i32, i32, i32, i32, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i32, i16, i32, i32, i32, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i32 }

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
define internal i32 @PackBitsDecode(ptr noundef %tif, ptr noundef %op, i32 noundef %occ, i16 noundef zeroext %s) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %occ.addr = alloca i32, align 4
  %bp = alloca ptr, align 8
  %cc = alloca i32, align 4
  %n = alloca i64, align 8
  %b = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %op, ptr %op.addr, align 8
  store i32 %occ, ptr %occ.addr, align 4
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 42
  %0 = load ptr, ptr %tif_rawcp, align 8
  store ptr %0, ptr %bp, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 43
  %1 = load i32, ptr %tif_rawcc, align 8
  store i32 %1, ptr %cc, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.then8, %if.end35, %entry
  %2 = load i32, ptr %cc, align 4
  %cmp = icmp sgt i32 %2, 0
  %3 = load i32, ptr %occ.addr, align 4
  %cmp1 = icmp sgt i32 %3, 0
  %4 = select i1 %cmp, i1 %cmp1, i1 false
  br i1 %4, label %while.body, label %while.end36

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %bp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i64 1
  store ptr %incdec.ptr, ptr %bp, align 8
  %6 = load i8, ptr %5, align 1
  %conv3 = sext i8 %6 to i64
  store i64 %conv3, ptr %n, align 8
  %7 = load i32, ptr %cc, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, ptr %cc, align 4
  %8 = load i64, ptr %n, align 8
  %cmp6 = icmp slt i64 %8, 0
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %while.body
  %9 = load i64, ptr %n, align 8
  %cmp9 = icmp eq i64 %9, -128
  br i1 %cmp9, label %while.cond, label %if.end12, !llvm.loop !6

if.end12:                                         ; preds = %if.then8
  %10 = load i64, ptr %n, align 8
  %add = sub i64 1, %10
  store i64 %add, ptr %n, align 8
  %11 = load i32, ptr %occ.addr, align 4
  %12 = trunc i64 %add to i32
  %conv16 = sub i32 %11, %12
  store i32 %conv16, ptr %occ.addr, align 4
  %13 = load ptr, ptr %bp, align 8
  %incdec.ptr17 = getelementptr inbounds i8, ptr %13, i64 1
  store ptr %incdec.ptr17, ptr %bp, align 8
  %14 = load i8, ptr %13, align 1
  %conv18 = sext i8 %14 to i32
  store i32 %conv18, ptr %b, align 4
  %15 = load i32, ptr %cc, align 4
  %dec19 = add nsw i32 %15, -1
  store i32 %dec19, ptr %cc, align 4
  br label %while.cond20

while.cond20:                                     ; preds = %while.body24, %if.end12
  %16 = load i64, ptr %n, align 8
  %dec21 = add nsw i64 %16, -1
  store i64 %dec21, ptr %n, align 8
  %cmp22 = icmp sgt i64 %16, 0
  br i1 %cmp22, label %while.body24, label %if.end35

while.body24:                                     ; preds = %while.cond20
  %17 = load i32, ptr %b, align 4
  %conv25 = trunc i32 %17 to i8
  %18 = load ptr, ptr %op.addr, align 8
  %incdec.ptr26 = getelementptr inbounds i8, ptr %18, i64 1
  store ptr %incdec.ptr26, ptr %op.addr, align 8
  store i8 %conv25, ptr %18, align 1
  br label %while.cond20, !llvm.loop !8

if.else:                                          ; preds = %while.body
  %19 = load ptr, ptr %op.addr, align 8
  %20 = load ptr, ptr %bp, align 8
  %21 = load i64, ptr %n, align 8
  %inc = add nsw i64 %21, 1
  store i64 %inc, ptr %n, align 8
  %conv27 = trunc i64 %inc to i32
  call void @_TIFFmemcpy(ptr noundef %19, ptr noundef %20, i32 noundef %conv27) #3
  %22 = load ptr, ptr %op.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %22, i64 %inc
  store ptr %add.ptr, ptr %op.addr, align 8
  %23 = load i32, ptr %occ.addr, align 4
  %24 = trunc i64 %inc to i32
  %conv30 = sub i32 %23, %24
  store i32 %conv30, ptr %occ.addr, align 4
  %25 = load i64, ptr %n, align 8
  %26 = load ptr, ptr %bp, align 8
  %add.ptr31 = getelementptr inbounds i8, ptr %26, i64 %25
  store ptr %add.ptr31, ptr %bp, align 8
  %27 = load i32, ptr %cc, align 4
  %28 = trunc i64 %25 to i32
  %conv34 = sub i32 %27, %28
  store i32 %conv34, ptr %cc, align 4
  br label %if.end35

if.end35:                                         ; preds = %while.cond20, %if.else
  br label %while.cond, !llvm.loop !6

while.end36:                                      ; preds = %while.cond
  %29 = load ptr, ptr %bp, align 8
  %30 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp37 = getelementptr inbounds %struct.tiff, ptr %30, i64 0, i32 42
  store ptr %29, ptr %tif_rawcp37, align 8
  %31 = load i32, ptr %cc, align 4
  %tif_rawcc38 = getelementptr inbounds %struct.tiff, ptr %30, i64 0, i32 43
  store i32 %31, ptr %tif_rawcc38, align 8
  %32 = load i32, ptr %occ.addr, align 4
  %cmp39 = icmp sgt i32 %32, 0
  br i1 %cmp39, label %if.then41, label %return

if.then41:                                        ; preds = %while.end36
  %33 = load ptr, ptr %tif.addr, align 8
  %34 = load ptr, ptr %33, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %33, i64 0, i32 11
  %35 = load i32, ptr %tif_row, align 8
  %conv42 = zext i32 %35 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %34, ptr noundef nonnull @.str, i64 noundef %conv42) #3
  br label %return

return:                                           ; preds = %while.end36, %if.then41
  %storemerge = phi i32 [ 0, %if.then41 ], [ 1, %while.end36 ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @PackBitsPreEncode(ptr noundef %tif, i16 noundef zeroext %s) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 3
  %0 = load i32, ptr %tif_flags, align 8
  %and = and i32 %0, 1024
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFTileRowSize(ptr noundef %1) #3
  %conv = sext i32 %call to i64
  %2 = inttoptr i64 %conv to ptr
  %tif_data = getelementptr inbounds %struct.tiff, ptr %1, i64 0, i32 37
  store ptr %2, ptr %tif_data, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %tif.addr, align 8
  %call1 = call i32 @TIFFScanlineSize(ptr noundef %3) #3
  %conv2 = sext i32 %call1 to i64
  %4 = inttoptr i64 %conv2 to ptr
  %tif_data3 = getelementptr inbounds %struct.tiff, ptr %3, i64 0, i32 37
  store ptr %4, ptr %tif_data3, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @PackBitsEncode(ptr noundef %tif, ptr noundef %buf, i32 noundef %cc, i16 noundef zeroext %s) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %cc.addr = alloca i32, align 4
  %bp = alloca ptr, align 8
  %op = alloca ptr, align 8
  %ep = alloca ptr, align 8
  %lastliteral = alloca ptr, align 8
  %n = alloca i64, align 8
  %slop = alloca i64, align 8
  %b = alloca i32, align 4
  %state = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %cc, ptr %cc.addr, align 4
  store ptr %buf, ptr %bp, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 42
  %0 = load ptr, ptr %tif_rawcp, align 8
  store ptr %0, ptr %op, align 8
  %tif_rawdata = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 40
  %1 = load ptr, ptr %tif_rawdata, align 8
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %2, i64 0, i32 41
  %3 = load i32, ptr %tif_rawdatasize, align 8
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %idx.ext
  store ptr %add.ptr, ptr %ep, align 8
  store i32 0, ptr %state, align 4
  store ptr null, ptr %lastliteral, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %4 = load i32, ptr %cc.addr, align 4
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %while.body, label %while.end140

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %bp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i64 1
  store ptr %incdec.ptr, ptr %bp, align 8
  %6 = load i8, ptr %5, align 1
  %conv = zext i8 %6 to i32
  store i32 %conv, ptr %b, align 4
  %7 = load i32, ptr %cc.addr, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, ptr %cc.addr, align 4
  store i64 1, ptr %n, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.body
  %8 = load i32, ptr %cc.addr, align 4
  %cmp1 = icmp sgt i32 %8, 0
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
  %13 = load i32, ptr %cc.addr, align 4
  %dec6 = add nsw i32 %13, -1
  store i32 %dec6, ptr %cc.addr, align 4
  %14 = load ptr, ptr %bp, align 8
  %incdec.ptr7 = getelementptr inbounds i8, ptr %14, i64 1
  store ptr %incdec.ptr7, ptr %bp, align 8
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond, %land.rhs
  br label %again

again:                                            ; preds = %if.end139, %if.then102, %if.then74, %if.then52, %for.end
  %15 = load ptr, ptr %op, align 8
  %add.ptr8 = getelementptr inbounds i8, ptr %15, i64 2
  %16 = load ptr, ptr %ep, align 8
  %cmp9.not = icmp ult ptr %add.ptr8, %16
  br i1 %cmp9.not, label %if.end46, label %if.then

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
  %23 = load i32, ptr %tif_rawcc, align 8
  %24 = trunc i64 %sub.ptr.sub19 to i32
  %conv21 = add i32 %23, %24
  store i32 %conv21, ptr %tif_rawcc, align 8
  %25 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFFlushData1(ptr noundef %25) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then22, label %if.end

if.then22:                                        ; preds = %if.then15
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then15
  %26 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp23 = getelementptr inbounds %struct.tiff, ptr %26, i64 0, i32 42
  %27 = load ptr, ptr %tif_rawcp23, align 8
  store ptr %27, ptr %op, align 8
  br label %while.cond24

while.cond24:                                     ; preds = %while.body28, %if.end
  %28 = load i64, ptr %slop, align 8
  %dec25 = add nsw i64 %28, -1
  store i64 %dec25, ptr %slop, align 8
  %cmp26 = icmp sgt i64 %28, 0
  br i1 %cmp26, label %while.body28, label %while.end

while.body28:                                     ; preds = %while.cond24
  %29 = load ptr, ptr %lastliteral, align 8
  %incdec.ptr29 = getelementptr inbounds i8, ptr %29, i64 1
  store ptr %incdec.ptr29, ptr %lastliteral, align 8
  %30 = load i8, ptr %29, align 1
  %31 = load ptr, ptr %op, align 8
  %incdec.ptr30 = getelementptr inbounds i8, ptr %31, i64 1
  store ptr %incdec.ptr30, ptr %op, align 8
  store i8 %30, ptr %31, align 1
  br label %while.cond24, !llvm.loop !10

while.end:                                        ; preds = %while.cond24
  %32 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp31 = getelementptr inbounds %struct.tiff, ptr %32, i64 0, i32 42
  %33 = load ptr, ptr %tif_rawcp31, align 8
  store ptr %33, ptr %lastliteral, align 8
  br label %if.end46

if.else:                                          ; preds = %if.then
  %34 = load ptr, ptr %op, align 8
  %35 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp32 = getelementptr inbounds %struct.tiff, ptr %35, i64 0, i32 42
  %36 = load ptr, ptr %tif_rawcp32, align 8
  %sub.ptr.lhs.cast33 = ptrtoint ptr %34 to i64
  %sub.ptr.rhs.cast34 = ptrtoint ptr %36 to i64
  %sub.ptr.sub35 = sub i64 %sub.ptr.lhs.cast33, %sub.ptr.rhs.cast34
  %tif_rawcc36 = getelementptr inbounds %struct.tiff, ptr %35, i64 0, i32 43
  %37 = load i32, ptr %tif_rawcc36, align 8
  %38 = trunc i64 %sub.ptr.sub35 to i32
  %conv39 = add i32 %37, %38
  store i32 %conv39, ptr %tif_rawcc36, align 8
  %39 = load ptr, ptr %tif.addr, align 8
  %call40 = call i32 @TIFFFlushData1(ptr noundef %39) #3
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.else
  store i32 -1, ptr %retval, align 4
  br label %return

if.end43:                                         ; preds = %if.else
  %40 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp44 = getelementptr inbounds %struct.tiff, ptr %40, i64 0, i32 42
  %41 = load ptr, ptr %tif_rawcp44, align 8
  store ptr %41, ptr %op, align 8
  br label %if.end46

if.end46:                                         ; preds = %while.end, %if.end43, %again
  %42 = load i32, ptr %state, align 4
  switch i32 %42, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb68
    i32 2, label %sw.bb96
    i32 3, label %sw.bb119
  ]

sw.bb:                                            ; preds = %if.end46
  %43 = load i64, ptr %n, align 8
  %cmp47 = icmp sgt i64 %43, 1
  br i1 %cmp47, label %if.then49, label %if.else63

if.then49:                                        ; preds = %sw.bb
  store i32 2, ptr %state, align 4
  %44 = load i64, ptr %n, align 8
  %cmp50 = icmp sgt i64 %44, 128
  br i1 %cmp50, label %if.then52, label %if.end56

if.then52:                                        ; preds = %if.then49
  %45 = load ptr, ptr %op, align 8
  %incdec.ptr53 = getelementptr inbounds i8, ptr %45, i64 1
  store ptr %incdec.ptr53, ptr %op, align 8
  store i8 -127, ptr %45, align 1
  %46 = load i32, ptr %b, align 4
  %conv54 = trunc i32 %46 to i8
  %incdec.ptr55 = getelementptr inbounds i8, ptr %45, i64 2
  store ptr %incdec.ptr55, ptr %op, align 8
  store i8 %conv54, ptr %incdec.ptr53, align 1
  %47 = load i64, ptr %n, align 8
  %sub = add nsw i64 %47, -128
  store i64 %sub, ptr %n, align 8
  br label %again

if.end56:                                         ; preds = %if.then49
  %48 = load i64, ptr %n, align 8
  %49 = trunc i64 %48 to i8
  %conv59 = sub i8 1, %49
  %50 = load ptr, ptr %op, align 8
  %incdec.ptr60 = getelementptr inbounds i8, ptr %50, i64 1
  store ptr %incdec.ptr60, ptr %op, align 8
  store i8 %conv59, ptr %50, align 1
  %51 = load i32, ptr %b, align 4
  %conv61 = trunc i32 %51 to i8
  %incdec.ptr62 = getelementptr inbounds i8, ptr %50, i64 2
  store ptr %incdec.ptr62, ptr %op, align 8
  store i8 %conv61, ptr %incdec.ptr60, align 1
  br label %sw.epilog

if.else63:                                        ; preds = %sw.bb
  %52 = load ptr, ptr %op, align 8
  store ptr %52, ptr %lastliteral, align 8
  %incdec.ptr64 = getelementptr inbounds i8, ptr %52, i64 1
  store ptr %incdec.ptr64, ptr %op, align 8
  store i8 0, ptr %52, align 1
  %53 = load i32, ptr %b, align 4
  %conv65 = trunc i32 %53 to i8
  %incdec.ptr66 = getelementptr inbounds i8, ptr %52, i64 2
  store ptr %incdec.ptr66, ptr %op, align 8
  store i8 %conv65, ptr %incdec.ptr64, align 1
  store i32 1, ptr %state, align 4
  br label %sw.epilog

sw.bb68:                                          ; preds = %if.end46
  %54 = load i64, ptr %n, align 8
  %cmp69 = icmp sgt i64 %54, 1
  br i1 %cmp69, label %if.then71, label %if.else86

if.then71:                                        ; preds = %sw.bb68
  store i32 3, ptr %state, align 4
  %55 = load i64, ptr %n, align 8
  %cmp72 = icmp sgt i64 %55, 128
  br i1 %cmp72, label %if.then74, label %if.end79

if.then74:                                        ; preds = %if.then71
  %56 = load ptr, ptr %op, align 8
  %incdec.ptr75 = getelementptr inbounds i8, ptr %56, i64 1
  store ptr %incdec.ptr75, ptr %op, align 8
  store i8 -127, ptr %56, align 1
  %57 = load i32, ptr %b, align 4
  %conv76 = trunc i32 %57 to i8
  %incdec.ptr77 = getelementptr inbounds i8, ptr %56, i64 2
  store ptr %incdec.ptr77, ptr %op, align 8
  store i8 %conv76, ptr %incdec.ptr75, align 1
  %58 = load i64, ptr %n, align 8
  %sub78 = add nsw i64 %58, -128
  store i64 %sub78, ptr %n, align 8
  br label %again

if.end79:                                         ; preds = %if.then71
  %59 = load i64, ptr %n, align 8
  %60 = trunc i64 %59 to i8
  %conv82 = sub i8 1, %60
  %61 = load ptr, ptr %op, align 8
  %incdec.ptr83 = getelementptr inbounds i8, ptr %61, i64 1
  store ptr %incdec.ptr83, ptr %op, align 8
  store i8 %conv82, ptr %61, align 1
  %62 = load i32, ptr %b, align 4
  %conv84 = trunc i32 %62 to i8
  %incdec.ptr85 = getelementptr inbounds i8, ptr %61, i64 2
  store ptr %incdec.ptr85, ptr %op, align 8
  store i8 %conv84, ptr %incdec.ptr83, align 1
  br label %sw.epilog

if.else86:                                        ; preds = %sw.bb68
  %63 = load ptr, ptr %lastliteral, align 8
  %64 = load i8, ptr %63, align 1
  %inc87 = add i8 %64, 1
  store i8 %inc87, ptr %63, align 1
  %cmp89 = icmp eq i8 %inc87, 127
  br i1 %cmp89, label %if.then91, label %if.end92

if.then91:                                        ; preds = %if.else86
  store i32 0, ptr %state, align 4
  br label %if.end92

if.end92:                                         ; preds = %if.then91, %if.else86
  %65 = load i32, ptr %b, align 4
  %conv93 = trunc i32 %65 to i8
  %66 = load ptr, ptr %op, align 8
  %incdec.ptr94 = getelementptr inbounds i8, ptr %66, i64 1
  store ptr %incdec.ptr94, ptr %op, align 8
  store i8 %conv93, ptr %66, align 1
  br label %sw.epilog

sw.bb96:                                          ; preds = %if.end46
  %67 = load i64, ptr %n, align 8
  %cmp97 = icmp sgt i64 %67, 1
  br i1 %cmp97, label %if.then99, label %if.else114

if.then99:                                        ; preds = %sw.bb96
  %68 = load i64, ptr %n, align 8
  %cmp100 = icmp sgt i64 %68, 128
  br i1 %cmp100, label %if.then102, label %if.end107

if.then102:                                       ; preds = %if.then99
  %69 = load ptr, ptr %op, align 8
  %incdec.ptr103 = getelementptr inbounds i8, ptr %69, i64 1
  store ptr %incdec.ptr103, ptr %op, align 8
  store i8 -127, ptr %69, align 1
  %70 = load i32, ptr %b, align 4
  %conv104 = trunc i32 %70 to i8
  %incdec.ptr105 = getelementptr inbounds i8, ptr %69, i64 2
  store ptr %incdec.ptr105, ptr %op, align 8
  store i8 %conv104, ptr %incdec.ptr103, align 1
  %71 = load i64, ptr %n, align 8
  %sub106 = add nsw i64 %71, -128
  store i64 %sub106, ptr %n, align 8
  br label %again

if.end107:                                        ; preds = %if.then99
  %72 = load i64, ptr %n, align 8
  %73 = trunc i64 %72 to i8
  %conv110 = sub i8 1, %73
  %74 = load ptr, ptr %op, align 8
  %incdec.ptr111 = getelementptr inbounds i8, ptr %74, i64 1
  store ptr %incdec.ptr111, ptr %op, align 8
  store i8 %conv110, ptr %74, align 1
  %75 = load i32, ptr %b, align 4
  %conv112 = trunc i32 %75 to i8
  %incdec.ptr113 = getelementptr inbounds i8, ptr %74, i64 2
  store ptr %incdec.ptr113, ptr %op, align 8
  store i8 %conv112, ptr %incdec.ptr111, align 1
  br label %sw.epilog

if.else114:                                       ; preds = %sw.bb96
  %76 = load ptr, ptr %op, align 8
  store ptr %76, ptr %lastliteral, align 8
  %incdec.ptr115 = getelementptr inbounds i8, ptr %76, i64 1
  store ptr %incdec.ptr115, ptr %op, align 8
  store i8 0, ptr %76, align 1
  %77 = load i32, ptr %b, align 4
  %conv116 = trunc i32 %77 to i8
  %incdec.ptr117 = getelementptr inbounds i8, ptr %76, i64 2
  store ptr %incdec.ptr117, ptr %op, align 8
  store i8 %conv116, ptr %incdec.ptr115, align 1
  store i32 1, ptr %state, align 4
  br label %sw.epilog

sw.bb119:                                         ; preds = %if.end46
  %78 = load i64, ptr %n, align 8
  %cmp120 = icmp eq i64 %78, 1
  br i1 %cmp120, label %land.lhs.true, label %if.else138

land.lhs.true:                                    ; preds = %sw.bb119
  %79 = load ptr, ptr %op, align 8
  %arrayidx = getelementptr inbounds i8, ptr %79, i64 -2
  %80 = load i8, ptr %arrayidx, align 1
  %cmp123 = icmp eq i8 %80, -1
  br i1 %cmp123, label %land.lhs.true125, label %if.else138

land.lhs.true125:                                 ; preds = %land.lhs.true
  %81 = load ptr, ptr %lastliteral, align 8
  %82 = load i8, ptr %81, align 1
  %cmp127 = icmp ult i8 %82, 126
  br i1 %cmp127, label %if.then129, label %if.else138

if.then129:                                       ; preds = %land.lhs.true125
  %83 = load ptr, ptr %lastliteral, align 8
  %84 = load i8, ptr %83, align 1
  %add131 = add i8 %84, 2
  store i8 %add131, ptr %83, align 1
  %cmp134 = icmp ne i8 %add131, 127
  %cond = zext i1 %cmp134 to i32
  store i32 %cond, ptr %state, align 4
  %85 = load ptr, ptr %op, align 8
  %arrayidx136 = getelementptr inbounds i8, ptr %85, i64 -1
  %86 = load i8, ptr %arrayidx136, align 1
  %arrayidx137 = getelementptr inbounds i8, ptr %85, i64 -2
  store i8 %86, ptr %arrayidx137, align 1
  br label %if.end139

if.else138:                                       ; preds = %land.lhs.true125, %land.lhs.true, %sw.bb119
  store i32 2, ptr %state, align 4
  br label %if.end139

if.end139:                                        ; preds = %if.else138, %if.then129
  br label %again

sw.epilog:                                        ; preds = %if.end107, %if.else114, %if.end79, %if.end92, %if.end56, %if.else63, %if.end46
  br label %while.cond, !llvm.loop !11

while.end140:                                     ; preds = %while.cond
  %87 = load ptr, ptr %op, align 8
  %88 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp141 = getelementptr inbounds %struct.tiff, ptr %88, i64 0, i32 42
  %89 = load ptr, ptr %tif_rawcp141, align 8
  %sub.ptr.lhs.cast142 = ptrtoint ptr %87 to i64
  %sub.ptr.rhs.cast143 = ptrtoint ptr %89 to i64
  %sub.ptr.sub144 = sub i64 %sub.ptr.lhs.cast142, %sub.ptr.rhs.cast143
  %tif_rawcc145 = getelementptr inbounds %struct.tiff, ptr %88, i64 0, i32 43
  %90 = load i32, ptr %tif_rawcc145, align 8
  %91 = trunc i64 %sub.ptr.sub144 to i32
  %conv148 = add i32 %90, %91
  store i32 %conv148, ptr %tif_rawcc145, align 8
  %92 = load ptr, ptr %op, align 8
  %93 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp149 = getelementptr inbounds %struct.tiff, ptr %93, i64 0, i32 42
  store ptr %92, ptr %tif_rawcp149, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end140, %if.then42, %if.then22
  %94 = load i32, ptr %retval, align 4
  ret i32 %94
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @PackBitsEncodeChunk(ptr noundef %tif, ptr noundef %bp, i32 noundef %cc, i16 noundef zeroext %s) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %cc.addr = alloca i32, align 4
  %s.addr = alloca i16, align 2
  %rowsize = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store i32 %cc, ptr %cc.addr, align 4
  store i16 %s, ptr %s.addr, align 2
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  %1 = ptrtoint ptr %0 to i64
  %2 = trunc i64 %1 to i32
  store i32 %2, ptr %rowsize, align 4
  %cmp = icmp slt i32 %2, 1
  br i1 %cmp, label %cond.true, label %while.cond

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__.PackBitsEncodeChunk, ptr noundef nonnull @.str.1, i32 noundef 193, ptr noundef nonnull @.str.2) #4
  unreachable

while.cond:                                       ; preds = %entry, %if.end
  %3 = load i32, ptr %cc.addr, align 4
  %cmp2 = icmp sgt i32 %3, 0
  br i1 %cmp2, label %while.body, label %return

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %tif.addr, align 8
  %5 = load ptr, ptr %bp.addr, align 8
  %6 = load i32, ptr %rowsize, align 4
  %7 = load i16, ptr %s.addr, align 2
  %call = call i32 @PackBitsEncode(ptr noundef %4, ptr noundef %5, i32 noundef %6, i16 noundef zeroext %7)
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %return, label %if.end

if.end:                                           ; preds = %while.body
  %8 = load i32, ptr %rowsize, align 4
  %9 = load ptr, ptr %bp.addr, align 8
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %idx.ext
  store ptr %add.ptr, ptr %bp.addr, align 8
  %10 = load i32, ptr %cc.addr, align 4
  %sub = sub nsw i32 %10, %8
  store i32 %sub, ptr %cc.addr, align 4
  br label %while.cond, !llvm.loop !12

return:                                           ; preds = %while.cond, %while.body
  %storemerge = phi i32 [ -1, %while.body ], [ 1, %while.cond ]
  ret i32 %storemerge
}

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i32 noundef) #1

declare void @TIFFError(ptr noundef, ptr noundef, ...) #1

declare i32 @TIFFTileRowSize(ptr noundef) #1

declare i32 @TIFFScanlineSize(ptr noundef) #1

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
