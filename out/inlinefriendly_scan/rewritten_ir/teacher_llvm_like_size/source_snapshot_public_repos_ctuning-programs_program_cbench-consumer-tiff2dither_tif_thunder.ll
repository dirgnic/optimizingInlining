; ModuleID = './out/inlinefriendly_scan/rewritten_ir/teacher_llvm_like_size/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-tiff2dither_tif_thunder.prepared.ll'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-tiff2dither/tif_thunder.c"
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
  %tif_decoderow = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 26
  store ptr @ThunderDecodeRow, ptr %tif_decoderow, align 8
  %tif_decodestrip = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 28
  store ptr @ThunderDecodeRow, ptr %tif_decodestrip, align 8
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @ThunderDecodeRow(ptr noundef %tif, ptr noundef %buf, i32 noundef %occ, i16 noundef zeroext %s) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %occ.addr = alloca i32, align 4
  %row = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %occ, ptr %occ.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %storemerge = phi ptr [ %buf, %entry ], [ %add.ptr, %if.end ]
  store ptr %storemerge, ptr %row, align 8
  %0 = load i32, ptr %occ.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %while.body, label %return

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %tif.addr, align 8
  %2 = load ptr, ptr %row, align 8
  %td_imagewidth = getelementptr inbounds %struct.tiff, ptr %1, i64 0, i32 6, i32 1
  %3 = load i32, ptr %td_imagewidth, align 8
  %call = call i32 @ThunderDecode(ptr noundef %1, ptr noundef %2, i32 noundef %3)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %while.body
  %4 = load ptr, ptr %tif.addr, align 8
  %tif_scanlinesize = getelementptr inbounds %struct.tiff, ptr %4, i64 0, i32 38
  %5 = load i32, ptr %tif_scanlinesize, align 8
  %6 = load i32, ptr %occ.addr, align 4
  %sub = sub nsw i32 %6, %5
  store i32 %sub, ptr %occ.addr, align 4
  %7 = load ptr, ptr %row, align 8
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 %idx.ext
  br label %while.cond, !llvm.loop !6

return:                                           ; preds = %while.cond, %while.body
  %storemerge1 = phi i32 [ 0, %while.body ], [ 1, %while.cond ]
  ret i32 %storemerge1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @ThunderDecode(ptr noundef %tif, ptr noundef %op, i32 noundef %maxpixels) #0 {
entry:
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
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 42
  %0 = load ptr, ptr %tif_rawcp, align 8
  store ptr %0, ptr %bp, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 43
  %1 = load i32, ptr %tif_rawcc, align 8
  store i32 %1, ptr %cc, align 4
  store i32 0, ptr %lastpixel, align 4
  store i32 0, ptr %npixels, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %2 = load i32, ptr %cc, align 4
  %cmp = icmp sgt i32 %2, 0
  %3 = load i32, ptr %npixels, align 4
  %4 = load i32, ptr %maxpixels.addr, align 4
  %cmp1 = icmp slt i32 %3, %4
  %5 = select i1 %cmp, i1 %cmp1, i1 false
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %bp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %incdec.ptr, ptr %bp, align 8
  %7 = load i8, ptr %6, align 1
  %conv = zext i8 %7 to i32
  store i32 %conv, ptr %n, align 4
  %8 = load i32, ptr %cc, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, ptr %cc, align 4
  %and = and i8 %7, -64
  %9 = sub i8 %and, -128
  %10 = lshr i8 %9, 6
  %11 = shl i8 %9, 2
  %12 = or i8 %10, %11
  switch i8 %12, label %while.body.unreachabledefault [
    i8 2, label %sw.bb
    i8 3, label %sw.bb22
    i8 0, label %sw.bb89
    i8 1, label %sw.bb135
  ]

sw.bb:                                            ; preds = %while.body
  %13 = load i32, ptr %npixels, align 4
  %and2 = and i32 %13, 1
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  %14 = load i32, ptr %lastpixel, align 4
  %15 = load ptr, ptr %op.addr, align 8
  %16 = load i8, ptr %15, align 1
  %17 = trunc i32 %14 to i8
  %conv4 = or i8 %16, %17
  store i8 %conv4, ptr %15, align 1
  %incdec.ptr5 = getelementptr inbounds i8, ptr %15, i64 1
  store ptr %incdec.ptr5, ptr %op.addr, align 8
  %conv6 = zext i8 %conv4 to i32
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
  %or8 = or i32 %20, %shl
  store i32 %or8, ptr %lastpixel, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %21 = load i32, ptr %n, align 4
  %22 = load i32, ptr %npixels, align 4
  %add = add nsw i32 %22, %21
  store i32 %add, ptr %npixels, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end
  %23 = load i32, ptr %n, align 4
  %cmp9 = icmp sgt i32 %23, 0
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i32, ptr %lastpixel, align 4
  %conv11 = trunc i32 %24 to i8
  %25 = load ptr, ptr %op.addr, align 8
  %incdec.ptr12 = getelementptr inbounds i8, ptr %25, i64 1
  store ptr %incdec.ptr12, ptr %op.addr, align 8
  store i8 %conv11, ptr %25, align 1
  %26 = load i32, ptr %n, align 4
  %sub = add nsw i32 %26, -2
  store i32 %sub, ptr %n, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %27 = load i32, ptr %n, align 4
  %cmp13 = icmp eq i32 %27, -1
  br i1 %cmp13, label %if.then15, label %if.end20

if.then15:                                        ; preds = %for.end
  %28 = load ptr, ptr %op.addr, align 8
  %incdec.ptr16 = getelementptr inbounds i8, ptr %28, i64 -1
  store ptr %incdec.ptr16, ptr %op.addr, align 8
  %29 = load i8, ptr %incdec.ptr16, align 1
  %30 = and i8 %29, -16
  store i8 %30, ptr %incdec.ptr16, align 1
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %for.end
  %31 = load i32, ptr %lastpixel, align 4
  %and21 = and i32 %31, 15
  store i32 %and21, ptr %lastpixel, align 4
  br label %sw.epilog

sw.bb22:                                          ; preds = %while.body
  %32 = load i32, ptr %n, align 4
  %33 = lshr i32 %32, 4
  %and23 = and i32 %33, 3
  store i32 %and23, ptr %delta, align 4
  %cmp24.not = icmp eq i32 %and23, 2
  br i1 %cmp24.not, label %if.end43, label %if.then26

if.then26:                                        ; preds = %sw.bb22
  %34 = load i32, ptr %lastpixel, align 4
  %35 = load i32, ptr %delta, align 4
  %idxprom = sext i32 %35 to i64
  %arrayidx27 = getelementptr inbounds [4 x i32], ptr @twobitdeltas, i64 0, i64 %idxprom
  %36 = load i32, ptr %arrayidx27, align 4
  %add28 = add i32 %34, %36
  %and29 = and i32 %add28, 15
  store i32 %and29, ptr %lastpixel, align 4
  %37 = load i32, ptr %npixels, align 4
  %inc30 = add nsw i32 %37, 1
  store i32 %inc30, ptr %npixels, align 4
  %and31 = and i32 %37, 1
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.else38, label %if.then33

if.then33:                                        ; preds = %if.then26
  %38 = load i32, ptr %lastpixel, align 4
  %39 = load ptr, ptr %op.addr, align 8
  %incdec.ptr34 = getelementptr inbounds i8, ptr %39, i64 1
  store ptr %incdec.ptr34, ptr %op.addr, align 8
  %40 = load i8, ptr %39, align 1
  %41 = trunc i32 %38 to i8
  %conv37 = or i8 %40, %41
  store i8 %conv37, ptr %39, align 1
  br label %if.end43

if.else38:                                        ; preds = %if.then26
  %42 = load i32, ptr %lastpixel, align 4
  %.tr5 = trunc i32 %42 to i8
  %conv40 = shl i8 %.tr5, 4
  %43 = load ptr, ptr %op.addr, align 8
  store i8 %conv40, ptr %43, align 1
  br label %if.end43

if.end43:                                         ; preds = %if.then33, %if.else38, %sw.bb22
  %44 = load i32, ptr %n, align 4
  %45 = lshr i32 %44, 2
  %and45 = and i32 %45, 3
  store i32 %and45, ptr %delta, align 4
  %cmp46.not = icmp eq i32 %and45, 2
  br i1 %cmp46.not, label %if.end66, label %if.then48

if.then48:                                        ; preds = %if.end43
  %46 = load i32, ptr %lastpixel, align 4
  %47 = load i32, ptr %delta, align 4
  %idxprom49 = sext i32 %47 to i64
  %arrayidx50 = getelementptr inbounds [4 x i32], ptr @twobitdeltas, i64 0, i64 %idxprom49
  %48 = load i32, ptr %arrayidx50, align 4
  %add51 = add i32 %46, %48
  %and52 = and i32 %add51, 15
  store i32 %and52, ptr %lastpixel, align 4
  %49 = load i32, ptr %npixels, align 4
  %inc53 = add nsw i32 %49, 1
  store i32 %inc53, ptr %npixels, align 4
  %and54 = and i32 %49, 1
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.else61, label %if.then56

if.then56:                                        ; preds = %if.then48
  %50 = load i32, ptr %lastpixel, align 4
  %51 = load ptr, ptr %op.addr, align 8
  %incdec.ptr57 = getelementptr inbounds i8, ptr %51, i64 1
  store ptr %incdec.ptr57, ptr %op.addr, align 8
  %52 = load i8, ptr %51, align 1
  %53 = trunc i32 %50 to i8
  %conv60 = or i8 %52, %53
  store i8 %conv60, ptr %51, align 1
  br label %if.end66

if.else61:                                        ; preds = %if.then48
  %54 = load i32, ptr %lastpixel, align 4
  %.tr4 = trunc i32 %54 to i8
  %conv63 = shl i8 %.tr4, 4
  %55 = load ptr, ptr %op.addr, align 8
  store i8 %conv63, ptr %55, align 1
  br label %if.end66

if.end66:                                         ; preds = %if.then56, %if.else61, %if.end43
  %56 = load i32, ptr %n, align 4
  %and67 = and i32 %56, 3
  store i32 %and67, ptr %delta, align 4
  %cmp68.not = icmp eq i32 %and67, 2
  br i1 %cmp68.not, label %sw.epilog, label %if.then70

if.then70:                                        ; preds = %if.end66
  %57 = load i32, ptr %lastpixel, align 4
  %58 = load i32, ptr %delta, align 4
  %idxprom71 = sext i32 %58 to i64
  %arrayidx72 = getelementptr inbounds [4 x i32], ptr @twobitdeltas, i64 0, i64 %idxprom71
  %59 = load i32, ptr %arrayidx72, align 4
  %add73 = add i32 %57, %59
  %and74 = and i32 %add73, 15
  store i32 %and74, ptr %lastpixel, align 4
  %60 = load i32, ptr %npixels, align 4
  %inc75 = add nsw i32 %60, 1
  store i32 %inc75, ptr %npixels, align 4
  %and76 = and i32 %60, 1
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.else83, label %if.then78

if.then78:                                        ; preds = %if.then70
  %61 = load i32, ptr %lastpixel, align 4
  %62 = load ptr, ptr %op.addr, align 8
  %incdec.ptr79 = getelementptr inbounds i8, ptr %62, i64 1
  store ptr %incdec.ptr79, ptr %op.addr, align 8
  %63 = load i8, ptr %62, align 1
  %64 = trunc i32 %61 to i8
  %conv82 = or i8 %63, %64
  store i8 %conv82, ptr %62, align 1
  br label %sw.epilog

if.else83:                                        ; preds = %if.then70
  %65 = load i32, ptr %lastpixel, align 4
  %.tr3 = trunc i32 %65 to i8
  %conv85 = shl i8 %.tr3, 4
  %66 = load ptr, ptr %op.addr, align 8
  store i8 %conv85, ptr %66, align 1
  br label %sw.epilog

sw.bb89:                                          ; preds = %while.body
  %67 = load i32, ptr %n, align 4
  %68 = lshr i32 %67, 3
  %and91 = and i32 %68, 7
  store i32 %and91, ptr %delta, align 4
  %cmp92.not = icmp eq i32 %and91, 4
  br i1 %cmp92.not, label %if.end112, label %if.then94

if.then94:                                        ; preds = %sw.bb89
  %69 = load i32, ptr %lastpixel, align 4
  %70 = load i32, ptr %delta, align 4
  %idxprom95 = sext i32 %70 to i64
  %arrayidx96 = getelementptr inbounds [8 x i32], ptr @threebitdeltas, i64 0, i64 %idxprom95
  %71 = load i32, ptr %arrayidx96, align 4
  %add97 = add i32 %69, %71
  %and98 = and i32 %add97, 15
  store i32 %and98, ptr %lastpixel, align 4
  %72 = load i32, ptr %npixels, align 4
  %inc99 = add nsw i32 %72, 1
  store i32 %inc99, ptr %npixels, align 4
  %and100 = and i32 %72, 1
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.else107, label %if.then102

if.then102:                                       ; preds = %if.then94
  %73 = load i32, ptr %lastpixel, align 4
  %74 = load ptr, ptr %op.addr, align 8
  %incdec.ptr103 = getelementptr inbounds i8, ptr %74, i64 1
  store ptr %incdec.ptr103, ptr %op.addr, align 8
  %75 = load i8, ptr %74, align 1
  %76 = trunc i32 %73 to i8
  %conv106 = or i8 %75, %76
  store i8 %conv106, ptr %74, align 1
  br label %if.end112

if.else107:                                       ; preds = %if.then94
  %77 = load i32, ptr %lastpixel, align 4
  %.tr2 = trunc i32 %77 to i8
  %conv109 = shl i8 %.tr2, 4
  %78 = load ptr, ptr %op.addr, align 8
  store i8 %conv109, ptr %78, align 1
  br label %if.end112

if.end112:                                        ; preds = %if.then102, %if.else107, %sw.bb89
  %79 = load i32, ptr %n, align 4
  %and113 = and i32 %79, 7
  store i32 %and113, ptr %delta, align 4
  %cmp114.not = icmp eq i32 %and113, 4
  br i1 %cmp114.not, label %sw.epilog, label %if.then116

if.then116:                                       ; preds = %if.end112
  %80 = load i32, ptr %lastpixel, align 4
  %81 = load i32, ptr %delta, align 4
  %idxprom117 = sext i32 %81 to i64
  %arrayidx118 = getelementptr inbounds [8 x i32], ptr @threebitdeltas, i64 0, i64 %idxprom117
  %82 = load i32, ptr %arrayidx118, align 4
  %add119 = add i32 %80, %82
  %and120 = and i32 %add119, 15
  store i32 %and120, ptr %lastpixel, align 4
  %83 = load i32, ptr %npixels, align 4
  %inc121 = add nsw i32 %83, 1
  store i32 %inc121, ptr %npixels, align 4
  %and122 = and i32 %83, 1
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %if.else129, label %if.then124

if.then124:                                       ; preds = %if.then116
  %84 = load i32, ptr %lastpixel, align 4
  %85 = load ptr, ptr %op.addr, align 8
  %incdec.ptr125 = getelementptr inbounds i8, ptr %85, i64 1
  store ptr %incdec.ptr125, ptr %op.addr, align 8
  %86 = load i8, ptr %85, align 1
  %87 = trunc i32 %84 to i8
  %conv128 = or i8 %86, %87
  store i8 %conv128, ptr %85, align 1
  br label %sw.epilog

if.else129:                                       ; preds = %if.then116
  %88 = load i32, ptr %lastpixel, align 4
  %.tr1 = trunc i32 %88 to i8
  %conv131 = shl i8 %.tr1, 4
  %89 = load ptr, ptr %op.addr, align 8
  store i8 %conv131, ptr %89, align 1
  br label %sw.epilog

sw.bb135:                                         ; preds = %while.body
  %90 = load i32, ptr %n, align 4
  %and136 = and i32 %90, 15
  store i32 %and136, ptr %lastpixel, align 4
  %91 = load i32, ptr %npixels, align 4
  %inc137 = add nsw i32 %91, 1
  store i32 %inc137, ptr %npixels, align 4
  %and138 = and i32 %91, 1
  %tobool139.not = icmp eq i32 %and138, 0
  br i1 %tobool139.not, label %if.else145, label %if.then140

if.then140:                                       ; preds = %sw.bb135
  %92 = load i32, ptr %lastpixel, align 4
  %93 = load ptr, ptr %op.addr, align 8
  %incdec.ptr141 = getelementptr inbounds i8, ptr %93, i64 1
  store ptr %incdec.ptr141, ptr %op.addr, align 8
  %94 = load i8, ptr %93, align 1
  %95 = trunc i32 %92 to i8
  %conv144 = or i8 %94, %95
  store i8 %conv144, ptr %93, align 1
  br label %sw.epilog

if.else145:                                       ; preds = %sw.bb135
  %96 = load i32, ptr %lastpixel, align 4
  %.tr = trunc i32 %96 to i8
  %conv147 = shl i8 %.tr, 4
  %97 = load ptr, ptr %op.addr, align 8
  store i8 %conv147, ptr %97, align 1
  br label %sw.epilog

while.body.unreachabledefault:                    ; preds = %while.body
  unreachable

sw.epilog:                                        ; preds = %if.then140, %if.else145, %if.end112, %if.else129, %if.then124, %if.end66, %if.else83, %if.then78, %if.end20
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %98 = load ptr, ptr %bp, align 8
  %99 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp150 = getelementptr inbounds %struct.tiff, ptr %99, i64 0, i32 42
  store ptr %98, ptr %tif_rawcp150, align 8
  %100 = load i32, ptr %cc, align 4
  %tif_rawcc151 = getelementptr inbounds %struct.tiff, ptr %99, i64 0, i32 43
  store i32 %100, ptr %tif_rawcc151, align 8
  %101 = load i32, ptr %npixels, align 4
  %102 = load i32, ptr %maxpixels.addr, align 4
  %cmp152.not = icmp eq i32 %101, %102
  br i1 %cmp152.not, label %return, label %if.then154

if.then154:                                       ; preds = %while.end
  %103 = load ptr, ptr %tif.addr, align 8
  %104 = load ptr, ptr %103, align 8
  %105 = load i32, ptr %npixels, align 4
  %106 = load i32, ptr %maxpixels.addr, align 4
  %cmp155 = icmp slt i32 %105, %106
  %cond = select i1 %cmp155, ptr @.str.1, ptr @.str.2
  %tif_row = getelementptr inbounds %struct.tiff, ptr %103, i64 0, i32 11
  %107 = load i32, ptr %tif_row, align 8
  %conv157 = zext i32 %107 to i64
  %108 = load i32, ptr %npixels, align 4
  %conv158 = sext i32 %108 to i64
  %109 = load i32, ptr %maxpixels.addr, align 4
  %conv159 = sext i32 %109 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %104, ptr noundef nonnull @.str, ptr noundef nonnull %cond, i64 noundef %conv157, i64 noundef %conv158, i64 noundef %conv159) #2
  br label %return

return:                                           ; preds = %while.end, %if.then154
  %storemerge = phi i32 [ 0, %if.then154 ], [ 1, %while.end ]
  ret i32 %storemerge
}

declare void @TIFFError(ptr noundef, ptr noundef, ...) #1

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind }

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
