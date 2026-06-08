; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-tiff2bw/tif_thunder.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-tiff2bw/tif_thunder.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.tiff = type { ptr, i32, i32, i32, i32, i32, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i32, i16, i32, i32, i32, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i32 }

@twobitdeltas = internal constant [4 x i32] [i32 0, i32 1, i32 0, i32 -1], align 4
@threebitdeltas = internal constant [8 x i32] [i32 0, i32 1, i32 2, i32 3, i32 0, i32 -3, i32 -2, i32 -1], align 4
@.str = private unnamed_addr constant [52 x i8] c"ThunderDecode: %s data at scanline %ld (%lu != %lu)\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Not enough\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Too much\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFInitThunderScan(ptr noundef %tif, i32 noundef %scheme) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %scheme.addr = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %scheme, ptr %scheme.addr, align 4
  %0 = load i32, ptr %scheme.addr, align 4
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_decoderow = getelementptr inbounds %struct.tiff, ptr %1, i32 0, i32 26
  store ptr @ThunderDecodeRow, ptr %tif_decoderow, align 8
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_decodestrip = getelementptr inbounds %struct.tiff, ptr %2, i32 0, i32 28
  store ptr @ThunderDecodeRow, ptr %tif_decodestrip, align 8
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @ThunderDecodeRow(ptr noundef %tif, ptr noundef %buf, i32 noundef %occ, i16 noundef zeroext %s) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %occ.addr = alloca i32, align 4
  %s.addr = alloca i16, align 2
  %row = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %occ, ptr %occ.addr, align 4
  store i16 %s, ptr %s.addr, align 2
  %0 = load ptr, ptr %buf.addr, align 8
  store ptr %0, ptr %row, align 8
  %1 = load i16, ptr %s.addr, align 2
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i32, ptr %occ.addr, align 4
  %conv = sext i32 %2 to i64
  %cmp = icmp sgt i64 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %tif.addr, align 8
  %4 = load ptr, ptr %row, align 8
  %5 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %5, i32 0, i32 6
  %td_imagewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir, i32 0, i32 1
  %6 = load i32, ptr %td_imagewidth, align 8
  %call = call i32 @ThunderDecode(ptr noundef %3, ptr noundef %4, i32 noundef %6)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  %7 = load ptr, ptr %tif.addr, align 8
  %tif_scanlinesize = getelementptr inbounds %struct.tiff, ptr %7, i32 0, i32 38
  %8 = load i32, ptr %tif_scanlinesize, align 8
  %9 = load i32, ptr %occ.addr, align 4
  %sub = sub nsw i32 %9, %8
  store i32 %sub, ptr %occ.addr, align 4
  %10 = load ptr, ptr %tif.addr, align 8
  %tif_scanlinesize2 = getelementptr inbounds %struct.tiff, ptr %10, i32 0, i32 38
  %11 = load i32, ptr %tif_scanlinesize2, align 8
  %12 = load ptr, ptr %row, align 8
  %idx.ext = sext i32 %11 to i64
  %add.ptr = getelementptr inbounds i8, ptr %12, i64 %idx.ext
  store ptr %add.ptr, ptr %row, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @ThunderDecode(ptr noundef %tif, ptr noundef %op, i32 noundef %maxpixels) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %maxpixels.addr = alloca i32, align 4
  %bp = alloca ptr, align 8
  %cc = alloca i32, align 4
  %lastpixel = alloca i32, align 4
  %npixels = alloca i32, align 4
  %n = alloca i32, align 4
  %delta = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %op, ptr %op.addr, align 8
  store i32 %maxpixels, ptr %maxpixels.addr, align 4
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 42
  %1 = load ptr, ptr %tif_rawcp, align 8
  store ptr %1, ptr %bp, align 8
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %2, i32 0, i32 43
  %3 = load i32, ptr %tif_rawcc, align 8
  store i32 %3, ptr %cc, align 4
  store i32 0, ptr %lastpixel, align 4
  store i32 0, ptr %npixels, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %4 = load i32, ptr %cc, align 4
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load i32, ptr %npixels, align 4
  %6 = load i32, ptr %maxpixels.addr, align 4
  %cmp1 = icmp slt i32 %5, %6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load ptr, ptr %bp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %8, i32 1
  store ptr %incdec.ptr, ptr %bp, align 8
  %9 = load i8, ptr %8, align 1
  %conv = zext i8 %9 to i32
  store i32 %conv, ptr %n, align 4
  %10 = load i32, ptr %cc, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, ptr %cc, align 4
  %11 = load i32, ptr %n, align 4
  %and = and i32 %11, 192
  switch i32 %and, label %sw.epilog [
    i32 0, label %sw.bb
    i32 64, label %sw.bb22
    i32 128, label %sw.bb89
    i32 192, label %sw.bb135
  ]

sw.bb:                                            ; preds = %while.body
  %12 = load i32, ptr %npixels, align 4
  %and2 = and i32 %12, 1
  %tobool = icmp ne i32 %and2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %13 = load i32, ptr %lastpixel, align 4
  %14 = load ptr, ptr %op.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %14, i64 0
  %15 = load i8, ptr %arrayidx, align 1
  %conv3 = zext i8 %15 to i32
  %or = or i32 %conv3, %13
  %conv4 = trunc i32 %or to i8
  store i8 %conv4, ptr %arrayidx, align 1
  %16 = load ptr, ptr %op.addr, align 8
  %incdec.ptr5 = getelementptr inbounds i8, ptr %16, i32 1
  store ptr %incdec.ptr5, ptr %op.addr, align 8
  %17 = load i8, ptr %16, align 1
  %conv6 = zext i8 %17 to i32
  store i32 %conv6, ptr %lastpixel, align 4
  %18 = load i32, ptr %npixels, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %npixels, align 4
  %19 = load i32, ptr %n, align 4
  %dec7 = add nsw i32 %19, -1
  store i32 %dec7, ptr %n, align 4
  br label %if.end

if.else:                                          ; preds = %sw.bb
  %20 = load i32, ptr %lastpixel, align 4
  %shl = shl i32 %20, 4
  %21 = load i32, ptr %lastpixel, align 4
  %or8 = or i32 %21, %shl
  store i32 %or8, ptr %lastpixel, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %22 = load i32, ptr %n, align 4
  %23 = load i32, ptr %npixels, align 4
  %add = add nsw i32 %23, %22
  store i32 %add, ptr %npixels, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %24 = load i32, ptr %n, align 4
  %cmp9 = icmp sgt i32 %24, 0
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i32, ptr %lastpixel, align 4
  %conv11 = trunc i32 %25 to i8
  %26 = load ptr, ptr %op.addr, align 8
  %incdec.ptr12 = getelementptr inbounds i8, ptr %26, i32 1
  store ptr %incdec.ptr12, ptr %op.addr, align 8
  store i8 %conv11, ptr %26, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, ptr %n, align 4
  %sub = sub nsw i32 %27, 2
  store i32 %sub, ptr %n, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %28 = load i32, ptr %n, align 4
  %cmp13 = icmp eq i32 %28, -1
  br i1 %cmp13, label %if.then15, label %if.end20

if.then15:                                        ; preds = %for.end
  %29 = load ptr, ptr %op.addr, align 8
  %incdec.ptr16 = getelementptr inbounds i8, ptr %29, i32 -1
  store ptr %incdec.ptr16, ptr %op.addr, align 8
  %30 = load i8, ptr %incdec.ptr16, align 1
  %conv17 = zext i8 %30 to i32
  %and18 = and i32 %conv17, 240
  %conv19 = trunc i32 %and18 to i8
  store i8 %conv19, ptr %incdec.ptr16, align 1
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %for.end
  %31 = load i32, ptr %lastpixel, align 4
  %and21 = and i32 %31, 15
  store i32 %and21, ptr %lastpixel, align 4
  br label %sw.epilog

sw.bb22:                                          ; preds = %while.body
  %32 = load i32, ptr %n, align 4
  %shr = ashr i32 %32, 4
  %and23 = and i32 %shr, 3
  store i32 %and23, ptr %delta, align 4
  %cmp24 = icmp ne i32 %and23, 2
  br i1 %cmp24, label %if.then26, label %if.end43

if.then26:                                        ; preds = %sw.bb22
  %33 = load i32, ptr %lastpixel, align 4
  %34 = load i32, ptr %delta, align 4
  %idxprom = sext i32 %34 to i64
  %arrayidx27 = getelementptr inbounds [4 x i32], ptr @twobitdeltas, i64 0, i64 %idxprom
  %35 = load i32, ptr %arrayidx27, align 4
  %add28 = add i32 %33, %35
  %and29 = and i32 %add28, 15
  store i32 %and29, ptr %lastpixel, align 4
  %36 = load i32, ptr %npixels, align 4
  %inc30 = add nsw i32 %36, 1
  store i32 %inc30, ptr %npixels, align 4
  %and31 = and i32 %36, 1
  %tobool32 = icmp ne i32 %and31, 0
  br i1 %tobool32, label %if.then33, label %if.else38

if.then33:                                        ; preds = %if.then26
  %37 = load i32, ptr %lastpixel, align 4
  %38 = load ptr, ptr %op.addr, align 8
  %incdec.ptr34 = getelementptr inbounds i8, ptr %38, i32 1
  store ptr %incdec.ptr34, ptr %op.addr, align 8
  %39 = load i8, ptr %38, align 1
  %conv35 = zext i8 %39 to i32
  %or36 = or i32 %conv35, %37
  %conv37 = trunc i32 %or36 to i8
  store i8 %conv37, ptr %38, align 1
  br label %if.end42

if.else38:                                        ; preds = %if.then26
  %40 = load i32, ptr %lastpixel, align 4
  %shl39 = shl i32 %40, 4
  %conv40 = trunc i32 %shl39 to i8
  %41 = load ptr, ptr %op.addr, align 8
  %arrayidx41 = getelementptr inbounds i8, ptr %41, i64 0
  store i8 %conv40, ptr %arrayidx41, align 1
  br label %if.end42

if.end42:                                         ; preds = %if.else38, %if.then33
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %sw.bb22
  %42 = load i32, ptr %n, align 4
  %shr44 = ashr i32 %42, 2
  %and45 = and i32 %shr44, 3
  store i32 %and45, ptr %delta, align 4
  %cmp46 = icmp ne i32 %and45, 2
  br i1 %cmp46, label %if.then48, label %if.end66

if.then48:                                        ; preds = %if.end43
  %43 = load i32, ptr %lastpixel, align 4
  %44 = load i32, ptr %delta, align 4
  %idxprom49 = sext i32 %44 to i64
  %arrayidx50 = getelementptr inbounds [4 x i32], ptr @twobitdeltas, i64 0, i64 %idxprom49
  %45 = load i32, ptr %arrayidx50, align 4
  %add51 = add i32 %43, %45
  %and52 = and i32 %add51, 15
  store i32 %and52, ptr %lastpixel, align 4
  %46 = load i32, ptr %npixels, align 4
  %inc53 = add nsw i32 %46, 1
  store i32 %inc53, ptr %npixels, align 4
  %and54 = and i32 %46, 1
  %tobool55 = icmp ne i32 %and54, 0
  br i1 %tobool55, label %if.then56, label %if.else61

if.then56:                                        ; preds = %if.then48
  %47 = load i32, ptr %lastpixel, align 4
  %48 = load ptr, ptr %op.addr, align 8
  %incdec.ptr57 = getelementptr inbounds i8, ptr %48, i32 1
  store ptr %incdec.ptr57, ptr %op.addr, align 8
  %49 = load i8, ptr %48, align 1
  %conv58 = zext i8 %49 to i32
  %or59 = or i32 %conv58, %47
  %conv60 = trunc i32 %or59 to i8
  store i8 %conv60, ptr %48, align 1
  br label %if.end65

if.else61:                                        ; preds = %if.then48
  %50 = load i32, ptr %lastpixel, align 4
  %shl62 = shl i32 %50, 4
  %conv63 = trunc i32 %shl62 to i8
  %51 = load ptr, ptr %op.addr, align 8
  %arrayidx64 = getelementptr inbounds i8, ptr %51, i64 0
  store i8 %conv63, ptr %arrayidx64, align 1
  br label %if.end65

if.end65:                                         ; preds = %if.else61, %if.then56
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.end43
  %52 = load i32, ptr %n, align 4
  %and67 = and i32 %52, 3
  store i32 %and67, ptr %delta, align 4
  %cmp68 = icmp ne i32 %and67, 2
  br i1 %cmp68, label %if.then70, label %if.end88

if.then70:                                        ; preds = %if.end66
  %53 = load i32, ptr %lastpixel, align 4
  %54 = load i32, ptr %delta, align 4
  %idxprom71 = sext i32 %54 to i64
  %arrayidx72 = getelementptr inbounds [4 x i32], ptr @twobitdeltas, i64 0, i64 %idxprom71
  %55 = load i32, ptr %arrayidx72, align 4
  %add73 = add i32 %53, %55
  %and74 = and i32 %add73, 15
  store i32 %and74, ptr %lastpixel, align 4
  %56 = load i32, ptr %npixels, align 4
  %inc75 = add nsw i32 %56, 1
  store i32 %inc75, ptr %npixels, align 4
  %and76 = and i32 %56, 1
  %tobool77 = icmp ne i32 %and76, 0
  br i1 %tobool77, label %if.then78, label %if.else83

if.then78:                                        ; preds = %if.then70
  %57 = load i32, ptr %lastpixel, align 4
  %58 = load ptr, ptr %op.addr, align 8
  %incdec.ptr79 = getelementptr inbounds i8, ptr %58, i32 1
  store ptr %incdec.ptr79, ptr %op.addr, align 8
  %59 = load i8, ptr %58, align 1
  %conv80 = zext i8 %59 to i32
  %or81 = or i32 %conv80, %57
  %conv82 = trunc i32 %or81 to i8
  store i8 %conv82, ptr %58, align 1
  br label %if.end87

if.else83:                                        ; preds = %if.then70
  %60 = load i32, ptr %lastpixel, align 4
  %shl84 = shl i32 %60, 4
  %conv85 = trunc i32 %shl84 to i8
  %61 = load ptr, ptr %op.addr, align 8
  %arrayidx86 = getelementptr inbounds i8, ptr %61, i64 0
  store i8 %conv85, ptr %arrayidx86, align 1
  br label %if.end87

if.end87:                                         ; preds = %if.else83, %if.then78
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %if.end66
  br label %sw.epilog

sw.bb89:                                          ; preds = %while.body
  %62 = load i32, ptr %n, align 4
  %shr90 = ashr i32 %62, 3
  %and91 = and i32 %shr90, 7
  store i32 %and91, ptr %delta, align 4
  %cmp92 = icmp ne i32 %and91, 4
  br i1 %cmp92, label %if.then94, label %if.end112

if.then94:                                        ; preds = %sw.bb89
  %63 = load i32, ptr %lastpixel, align 4
  %64 = load i32, ptr %delta, align 4
  %idxprom95 = sext i32 %64 to i64
  %arrayidx96 = getelementptr inbounds [8 x i32], ptr @threebitdeltas, i64 0, i64 %idxprom95
  %65 = load i32, ptr %arrayidx96, align 4
  %add97 = add i32 %63, %65
  %and98 = and i32 %add97, 15
  store i32 %and98, ptr %lastpixel, align 4
  %66 = load i32, ptr %npixels, align 4
  %inc99 = add nsw i32 %66, 1
  store i32 %inc99, ptr %npixels, align 4
  %and100 = and i32 %66, 1
  %tobool101 = icmp ne i32 %and100, 0
  br i1 %tobool101, label %if.then102, label %if.else107

if.then102:                                       ; preds = %if.then94
  %67 = load i32, ptr %lastpixel, align 4
  %68 = load ptr, ptr %op.addr, align 8
  %incdec.ptr103 = getelementptr inbounds i8, ptr %68, i32 1
  store ptr %incdec.ptr103, ptr %op.addr, align 8
  %69 = load i8, ptr %68, align 1
  %conv104 = zext i8 %69 to i32
  %or105 = or i32 %conv104, %67
  %conv106 = trunc i32 %or105 to i8
  store i8 %conv106, ptr %68, align 1
  br label %if.end111

if.else107:                                       ; preds = %if.then94
  %70 = load i32, ptr %lastpixel, align 4
  %shl108 = shl i32 %70, 4
  %conv109 = trunc i32 %shl108 to i8
  %71 = load ptr, ptr %op.addr, align 8
  %arrayidx110 = getelementptr inbounds i8, ptr %71, i64 0
  store i8 %conv109, ptr %arrayidx110, align 1
  br label %if.end111

if.end111:                                        ; preds = %if.else107, %if.then102
  br label %if.end112

if.end112:                                        ; preds = %if.end111, %sw.bb89
  %72 = load i32, ptr %n, align 4
  %and113 = and i32 %72, 7
  store i32 %and113, ptr %delta, align 4
  %cmp114 = icmp ne i32 %and113, 4
  br i1 %cmp114, label %if.then116, label %if.end134

if.then116:                                       ; preds = %if.end112
  %73 = load i32, ptr %lastpixel, align 4
  %74 = load i32, ptr %delta, align 4
  %idxprom117 = sext i32 %74 to i64
  %arrayidx118 = getelementptr inbounds [8 x i32], ptr @threebitdeltas, i64 0, i64 %idxprom117
  %75 = load i32, ptr %arrayidx118, align 4
  %add119 = add i32 %73, %75
  %and120 = and i32 %add119, 15
  store i32 %and120, ptr %lastpixel, align 4
  %76 = load i32, ptr %npixels, align 4
  %inc121 = add nsw i32 %76, 1
  store i32 %inc121, ptr %npixels, align 4
  %and122 = and i32 %76, 1
  %tobool123 = icmp ne i32 %and122, 0
  br i1 %tobool123, label %if.then124, label %if.else129

if.then124:                                       ; preds = %if.then116
  %77 = load i32, ptr %lastpixel, align 4
  %78 = load ptr, ptr %op.addr, align 8
  %incdec.ptr125 = getelementptr inbounds i8, ptr %78, i32 1
  store ptr %incdec.ptr125, ptr %op.addr, align 8
  %79 = load i8, ptr %78, align 1
  %conv126 = zext i8 %79 to i32
  %or127 = or i32 %conv126, %77
  %conv128 = trunc i32 %or127 to i8
  store i8 %conv128, ptr %78, align 1
  br label %if.end133

if.else129:                                       ; preds = %if.then116
  %80 = load i32, ptr %lastpixel, align 4
  %shl130 = shl i32 %80, 4
  %conv131 = trunc i32 %shl130 to i8
  %81 = load ptr, ptr %op.addr, align 8
  %arrayidx132 = getelementptr inbounds i8, ptr %81, i64 0
  store i8 %conv131, ptr %arrayidx132, align 1
  br label %if.end133

if.end133:                                        ; preds = %if.else129, %if.then124
  br label %if.end134

if.end134:                                        ; preds = %if.end133, %if.end112
  br label %sw.epilog

sw.bb135:                                         ; preds = %while.body
  %82 = load i32, ptr %n, align 4
  %and136 = and i32 %82, 15
  store i32 %and136, ptr %lastpixel, align 4
  %83 = load i32, ptr %npixels, align 4
  %inc137 = add nsw i32 %83, 1
  store i32 %inc137, ptr %npixels, align 4
  %and138 = and i32 %83, 1
  %tobool139 = icmp ne i32 %and138, 0
  br i1 %tobool139, label %if.then140, label %if.else145

if.then140:                                       ; preds = %sw.bb135
  %84 = load i32, ptr %lastpixel, align 4
  %85 = load ptr, ptr %op.addr, align 8
  %incdec.ptr141 = getelementptr inbounds i8, ptr %85, i32 1
  store ptr %incdec.ptr141, ptr %op.addr, align 8
  %86 = load i8, ptr %85, align 1
  %conv142 = zext i8 %86 to i32
  %or143 = or i32 %conv142, %84
  %conv144 = trunc i32 %or143 to i8
  store i8 %conv144, ptr %85, align 1
  br label %if.end149

if.else145:                                       ; preds = %sw.bb135
  %87 = load i32, ptr %lastpixel, align 4
  %shl146 = shl i32 %87, 4
  %conv147 = trunc i32 %shl146 to i8
  %88 = load ptr, ptr %op.addr, align 8
  %arrayidx148 = getelementptr inbounds i8, ptr %88, i64 0
  store i8 %conv147, ptr %arrayidx148, align 1
  br label %if.end149

if.end149:                                        ; preds = %if.else145, %if.then140
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.body, %if.end149, %if.end134, %if.end88, %if.end20
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %land.end
  %89 = load ptr, ptr %bp, align 8
  %90 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp150 = getelementptr inbounds %struct.tiff, ptr %90, i32 0, i32 42
  store ptr %89, ptr %tif_rawcp150, align 8
  %91 = load i32, ptr %cc, align 4
  %92 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc151 = getelementptr inbounds %struct.tiff, ptr %92, i32 0, i32 43
  store i32 %91, ptr %tif_rawcc151, align 8
  %93 = load i32, ptr %npixels, align 4
  %94 = load i32, ptr %maxpixels.addr, align 4
  %cmp152 = icmp ne i32 %93, %94
  br i1 %cmp152, label %if.then154, label %if.end160

if.then154:                                       ; preds = %while.end
  %95 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %95, i32 0, i32 0
  %96 = load ptr, ptr %tif_name, align 8
  %97 = load i32, ptr %npixels, align 4
  %98 = load i32, ptr %maxpixels.addr, align 4
  %cmp155 = icmp slt i32 %97, %98
  %99 = zext i1 %cmp155 to i64
  %cond = select i1 %cmp155, ptr @.str.1, ptr @.str.2
  %100 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %100, i32 0, i32 11
  %101 = load i32, ptr %tif_row, align 8
  %conv157 = zext i32 %101 to i64
  %102 = load i32, ptr %npixels, align 4
  %conv158 = sext i32 %102 to i64
  %103 = load i32, ptr %maxpixels.addr, align 4
  %conv159 = sext i32 %103 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %96, ptr noundef @.str, ptr noundef %cond, i64 noundef %conv157, i64 noundef %conv158, i64 noundef %conv159)
  store i32 0, ptr %retval, align 4
  br label %return

if.end160:                                        ; preds = %while.end
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end160, %if.then154
  %104 = load i32, ptr %retval, align 4
  ret i32 %104
}

declare void @TIFFError(ptr noundef, ptr noundef, ...) #1

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

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
