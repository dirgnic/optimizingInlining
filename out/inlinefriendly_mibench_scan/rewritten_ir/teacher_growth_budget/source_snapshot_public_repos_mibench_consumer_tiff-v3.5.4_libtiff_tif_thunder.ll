; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_growth_budget/source_snapshot_public_repos_mibench_consumer_tiff-v3.5.4_libtiff_tif_thunder.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/libtiff/tif_thunder.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.tiff = type { ptr, i32, i32, i64, i64, i64, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i64, i16, i64, i64, i64, i16, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, i64, ptr, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i64, i64, i64, i64, i64, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i64, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i64, ptr, i64, ptr, i64, ptr, i64, i64, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i64 }

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
define internal i32 @ThunderDecodeRow(ptr noundef %tif, ptr noundef %buf, i64 noundef %occ, i16 noundef zeroext %s) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %occ.addr = alloca i64, align 8
  %row = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %occ, ptr %occ.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %storemerge = phi ptr [ %buf, %entry ], [ %add.ptr, %if.end ]
  store ptr %storemerge, ptr %row, align 8
  %0 = load i64, ptr %occ.addr, align 8
  %cmp = icmp sgt i64 %0, 0
  br i1 %cmp, label %while.body, label %return

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %tif.addr, align 8
  %2 = load ptr, ptr %row, align 8
  %td_imagewidth = getelementptr inbounds %struct.tiff, ptr %1, i64 0, i32 6, i32 1
  %3 = load i64, ptr %td_imagewidth, align 8
  %call = call i32 @ThunderDecode(ptr noundef %1, ptr noundef %2, i64 noundef %3)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %while.body
  %4 = load ptr, ptr %tif.addr, align 8
  %tif_scanlinesize = getelementptr inbounds %struct.tiff, ptr %4, i64 0, i32 38
  %5 = load i64, ptr %tif_scanlinesize, align 8
  %6 = load i64, ptr %occ.addr, align 8
  %sub = sub nsw i64 %6, %5
  store i64 %sub, ptr %occ.addr, align 8
  %7 = load ptr, ptr %row, align 8
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 %5
  br label %while.cond, !llvm.loop !6

return:                                           ; preds = %while.cond, %while.body
  %storemerge1 = phi i32 [ 0, %while.body ], [ 1, %while.cond ]
  ret i32 %storemerge1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @ThunderDecode(ptr noundef %tif, ptr noundef %op, i64 noundef %maxpixels) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %maxpixels.addr = alloca i64, align 8
  %bp = alloca ptr, align 8
  %cc = alloca i64, align 8
  %lastpixel = alloca i32, align 4
  %npixels = alloca i64, align 8
  %n = alloca i32, align 4
  %delta = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %op, ptr %op.addr, align 8
  store i64 %maxpixels, ptr %maxpixels.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 42
  %0 = load ptr, ptr %tif_rawcp, align 8
  store ptr %0, ptr %bp, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 43
  %1 = load i64, ptr %tif_rawcc, align 8
  store i64 %1, ptr %cc, align 8
  store i32 0, ptr %lastpixel, align 4
  store i64 0, ptr %npixels, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %2 = load i64, ptr %cc, align 8
  %cmp = icmp sgt i64 %2, 0
  %3 = load i64, ptr %npixels, align 8
  %4 = load i64, ptr %maxpixels.addr, align 8
  %cmp1 = icmp slt i64 %3, %4
  %5 = select i1 %cmp, i1 %cmp1, i1 false
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %bp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %incdec.ptr, ptr %bp, align 8
  %7 = load i8, ptr %6, align 1
  %conv = zext i8 %7 to i32
  store i32 %conv, ptr %n, align 4
  %8 = load i64, ptr %cc, align 8
  %dec = add nsw i64 %8, -1
  store i64 %dec, ptr %cc, align 8
  %and = and i8 %7, -64
  %9 = sub i8 %and, -128
  %10 = lshr i8 %9, 6
  %11 = shl i8 %9, 2
  %12 = or i8 %10, %11
  switch i8 %12, label %while.body.unreachabledefault [
    i8 2, label %sw.bb
    i8 3, label %sw.bb23
    i8 0, label %sw.bb90
    i8 1, label %sw.bb136
  ]

sw.bb:                                            ; preds = %while.body
  %13 = load i64, ptr %npixels, align 8
  %and2 = and i64 %13, 1
  %tobool.not = icmp eq i64 %and2, 0
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
  %18 = load i64, ptr %npixels, align 8
  %inc = add nsw i64 %18, 1
  store i64 %inc, ptr %npixels, align 8
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
  %conv9 = sext i32 %21 to i64
  %22 = load i64, ptr %npixels, align 8
  %add = add nsw i64 %22, %conv9
  store i64 %add, ptr %npixels, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end
  %23 = load i32, ptr %n, align 4
  %cmp10 = icmp sgt i32 %23, 0
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i32, ptr %lastpixel, align 4
  %conv12 = trunc i32 %24 to i8
  %25 = load ptr, ptr %op.addr, align 8
  %incdec.ptr13 = getelementptr inbounds i8, ptr %25, i64 1
  store ptr %incdec.ptr13, ptr %op.addr, align 8
  store i8 %conv12, ptr %25, align 1
  %26 = load i32, ptr %n, align 4
  %sub = add nsw i32 %26, -2
  store i32 %sub, ptr %n, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %27 = load i32, ptr %n, align 4
  %cmp14 = icmp eq i32 %27, -1
  br i1 %cmp14, label %if.then16, label %if.end21

if.then16:                                        ; preds = %for.end
  %28 = load ptr, ptr %op.addr, align 8
  %incdec.ptr17 = getelementptr inbounds i8, ptr %28, i64 -1
  store ptr %incdec.ptr17, ptr %op.addr, align 8
  %29 = load i8, ptr %incdec.ptr17, align 1
  %30 = and i8 %29, -16
  store i8 %30, ptr %incdec.ptr17, align 1
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %for.end
  %31 = load i32, ptr %lastpixel, align 4
  %and22 = and i32 %31, 15
  store i32 %and22, ptr %lastpixel, align 4
  br label %sw.epilog

sw.bb23:                                          ; preds = %while.body
  %32 = load i32, ptr %n, align 4
  %33 = lshr i32 %32, 4
  %and24 = and i32 %33, 3
  store i32 %and24, ptr %delta, align 4
  %cmp25.not = icmp eq i32 %and24, 2
  br i1 %cmp25.not, label %if.end44, label %if.then27

if.then27:                                        ; preds = %sw.bb23
  %34 = load i32, ptr %lastpixel, align 4
  %35 = load i32, ptr %delta, align 4
  %idxprom = sext i32 %35 to i64
  %arrayidx28 = getelementptr inbounds [4 x i32], ptr @twobitdeltas, i64 0, i64 %idxprom
  %36 = load i32, ptr %arrayidx28, align 4
  %add29 = add i32 %34, %36
  %and30 = and i32 %add29, 15
  store i32 %and30, ptr %lastpixel, align 4
  %37 = load i64, ptr %npixels, align 8
  %inc31 = add nsw i64 %37, 1
  store i64 %inc31, ptr %npixels, align 8
  %and32 = and i64 %37, 1
  %tobool33.not = icmp eq i64 %and32, 0
  br i1 %tobool33.not, label %if.else39, label %if.then34

if.then34:                                        ; preds = %if.then27
  %38 = load i32, ptr %lastpixel, align 4
  %39 = load ptr, ptr %op.addr, align 8
  %incdec.ptr35 = getelementptr inbounds i8, ptr %39, i64 1
  store ptr %incdec.ptr35, ptr %op.addr, align 8
  %40 = load i8, ptr %39, align 1
  %41 = trunc i32 %38 to i8
  %conv38 = or i8 %40, %41
  store i8 %conv38, ptr %39, align 1
  br label %if.end44

if.else39:                                        ; preds = %if.then27
  %42 = load i32, ptr %lastpixel, align 4
  %.tr5 = trunc i32 %42 to i8
  %conv41 = shl i8 %.tr5, 4
  %43 = load ptr, ptr %op.addr, align 8
  store i8 %conv41, ptr %43, align 1
  br label %if.end44

if.end44:                                         ; preds = %if.then34, %if.else39, %sw.bb23
  %44 = load i32, ptr %n, align 4
  %45 = lshr i32 %44, 2
  %and46 = and i32 %45, 3
  store i32 %and46, ptr %delta, align 4
  %cmp47.not = icmp eq i32 %and46, 2
  br i1 %cmp47.not, label %if.end67, label %if.then49

if.then49:                                        ; preds = %if.end44
  %46 = load i32, ptr %lastpixel, align 4
  %47 = load i32, ptr %delta, align 4
  %idxprom50 = sext i32 %47 to i64
  %arrayidx51 = getelementptr inbounds [4 x i32], ptr @twobitdeltas, i64 0, i64 %idxprom50
  %48 = load i32, ptr %arrayidx51, align 4
  %add52 = add i32 %46, %48
  %and53 = and i32 %add52, 15
  store i32 %and53, ptr %lastpixel, align 4
  %49 = load i64, ptr %npixels, align 8
  %inc54 = add nsw i64 %49, 1
  store i64 %inc54, ptr %npixels, align 8
  %and55 = and i64 %49, 1
  %tobool56.not = icmp eq i64 %and55, 0
  br i1 %tobool56.not, label %if.else62, label %if.then57

if.then57:                                        ; preds = %if.then49
  %50 = load i32, ptr %lastpixel, align 4
  %51 = load ptr, ptr %op.addr, align 8
  %incdec.ptr58 = getelementptr inbounds i8, ptr %51, i64 1
  store ptr %incdec.ptr58, ptr %op.addr, align 8
  %52 = load i8, ptr %51, align 1
  %53 = trunc i32 %50 to i8
  %conv61 = or i8 %52, %53
  store i8 %conv61, ptr %51, align 1
  br label %if.end67

if.else62:                                        ; preds = %if.then49
  %54 = load i32, ptr %lastpixel, align 4
  %.tr4 = trunc i32 %54 to i8
  %conv64 = shl i8 %.tr4, 4
  %55 = load ptr, ptr %op.addr, align 8
  store i8 %conv64, ptr %55, align 1
  br label %if.end67

if.end67:                                         ; preds = %if.then57, %if.else62, %if.end44
  %56 = load i32, ptr %n, align 4
  %and68 = and i32 %56, 3
  store i32 %and68, ptr %delta, align 4
  %cmp69.not = icmp eq i32 %and68, 2
  br i1 %cmp69.not, label %sw.epilog, label %if.then71

if.then71:                                        ; preds = %if.end67
  %57 = load i32, ptr %lastpixel, align 4
  %58 = load i32, ptr %delta, align 4
  %idxprom72 = sext i32 %58 to i64
  %arrayidx73 = getelementptr inbounds [4 x i32], ptr @twobitdeltas, i64 0, i64 %idxprom72
  %59 = load i32, ptr %arrayidx73, align 4
  %add74 = add i32 %57, %59
  %and75 = and i32 %add74, 15
  store i32 %and75, ptr %lastpixel, align 4
  %60 = load i64, ptr %npixels, align 8
  %inc76 = add nsw i64 %60, 1
  store i64 %inc76, ptr %npixels, align 8
  %and77 = and i64 %60, 1
  %tobool78.not = icmp eq i64 %and77, 0
  br i1 %tobool78.not, label %if.else84, label %if.then79

if.then79:                                        ; preds = %if.then71
  %61 = load i32, ptr %lastpixel, align 4
  %62 = load ptr, ptr %op.addr, align 8
  %incdec.ptr80 = getelementptr inbounds i8, ptr %62, i64 1
  store ptr %incdec.ptr80, ptr %op.addr, align 8
  %63 = load i8, ptr %62, align 1
  %64 = trunc i32 %61 to i8
  %conv83 = or i8 %63, %64
  store i8 %conv83, ptr %62, align 1
  br label %sw.epilog

if.else84:                                        ; preds = %if.then71
  %65 = load i32, ptr %lastpixel, align 4
  %.tr3 = trunc i32 %65 to i8
  %conv86 = shl i8 %.tr3, 4
  %66 = load ptr, ptr %op.addr, align 8
  store i8 %conv86, ptr %66, align 1
  br label %sw.epilog

sw.bb90:                                          ; preds = %while.body
  %67 = load i32, ptr %n, align 4
  %68 = lshr i32 %67, 3
  %and92 = and i32 %68, 7
  store i32 %and92, ptr %delta, align 4
  %cmp93.not = icmp eq i32 %and92, 4
  br i1 %cmp93.not, label %if.end113, label %if.then95

if.then95:                                        ; preds = %sw.bb90
  %69 = load i32, ptr %lastpixel, align 4
  %70 = load i32, ptr %delta, align 4
  %idxprom96 = sext i32 %70 to i64
  %arrayidx97 = getelementptr inbounds [8 x i32], ptr @threebitdeltas, i64 0, i64 %idxprom96
  %71 = load i32, ptr %arrayidx97, align 4
  %add98 = add i32 %69, %71
  %and99 = and i32 %add98, 15
  store i32 %and99, ptr %lastpixel, align 4
  %72 = load i64, ptr %npixels, align 8
  %inc100 = add nsw i64 %72, 1
  store i64 %inc100, ptr %npixels, align 8
  %and101 = and i64 %72, 1
  %tobool102.not = icmp eq i64 %and101, 0
  br i1 %tobool102.not, label %if.else108, label %if.then103

if.then103:                                       ; preds = %if.then95
  %73 = load i32, ptr %lastpixel, align 4
  %74 = load ptr, ptr %op.addr, align 8
  %incdec.ptr104 = getelementptr inbounds i8, ptr %74, i64 1
  store ptr %incdec.ptr104, ptr %op.addr, align 8
  %75 = load i8, ptr %74, align 1
  %76 = trunc i32 %73 to i8
  %conv107 = or i8 %75, %76
  store i8 %conv107, ptr %74, align 1
  br label %if.end113

if.else108:                                       ; preds = %if.then95
  %77 = load i32, ptr %lastpixel, align 4
  %.tr2 = trunc i32 %77 to i8
  %conv110 = shl i8 %.tr2, 4
  %78 = load ptr, ptr %op.addr, align 8
  store i8 %conv110, ptr %78, align 1
  br label %if.end113

if.end113:                                        ; preds = %if.then103, %if.else108, %sw.bb90
  %79 = load i32, ptr %n, align 4
  %and114 = and i32 %79, 7
  store i32 %and114, ptr %delta, align 4
  %cmp115.not = icmp eq i32 %and114, 4
  br i1 %cmp115.not, label %sw.epilog, label %if.then117

if.then117:                                       ; preds = %if.end113
  %80 = load i32, ptr %lastpixel, align 4
  %81 = load i32, ptr %delta, align 4
  %idxprom118 = sext i32 %81 to i64
  %arrayidx119 = getelementptr inbounds [8 x i32], ptr @threebitdeltas, i64 0, i64 %idxprom118
  %82 = load i32, ptr %arrayidx119, align 4
  %add120 = add i32 %80, %82
  %and121 = and i32 %add120, 15
  store i32 %and121, ptr %lastpixel, align 4
  %83 = load i64, ptr %npixels, align 8
  %inc122 = add nsw i64 %83, 1
  store i64 %inc122, ptr %npixels, align 8
  %and123 = and i64 %83, 1
  %tobool124.not = icmp eq i64 %and123, 0
  br i1 %tobool124.not, label %if.else130, label %if.then125

if.then125:                                       ; preds = %if.then117
  %84 = load i32, ptr %lastpixel, align 4
  %85 = load ptr, ptr %op.addr, align 8
  %incdec.ptr126 = getelementptr inbounds i8, ptr %85, i64 1
  store ptr %incdec.ptr126, ptr %op.addr, align 8
  %86 = load i8, ptr %85, align 1
  %87 = trunc i32 %84 to i8
  %conv129 = or i8 %86, %87
  store i8 %conv129, ptr %85, align 1
  br label %sw.epilog

if.else130:                                       ; preds = %if.then117
  %88 = load i32, ptr %lastpixel, align 4
  %.tr1 = trunc i32 %88 to i8
  %conv132 = shl i8 %.tr1, 4
  %89 = load ptr, ptr %op.addr, align 8
  store i8 %conv132, ptr %89, align 1
  br label %sw.epilog

sw.bb136:                                         ; preds = %while.body
  %90 = load i32, ptr %n, align 4
  %and137 = and i32 %90, 15
  store i32 %and137, ptr %lastpixel, align 4
  %91 = load i64, ptr %npixels, align 8
  %inc138 = add nsw i64 %91, 1
  store i64 %inc138, ptr %npixels, align 8
  %and139 = and i64 %91, 1
  %tobool140.not = icmp eq i64 %and139, 0
  br i1 %tobool140.not, label %if.else146, label %if.then141

if.then141:                                       ; preds = %sw.bb136
  %92 = load i32, ptr %lastpixel, align 4
  %93 = load ptr, ptr %op.addr, align 8
  %incdec.ptr142 = getelementptr inbounds i8, ptr %93, i64 1
  store ptr %incdec.ptr142, ptr %op.addr, align 8
  %94 = load i8, ptr %93, align 1
  %95 = trunc i32 %92 to i8
  %conv145 = or i8 %94, %95
  store i8 %conv145, ptr %93, align 1
  br label %sw.epilog

if.else146:                                       ; preds = %sw.bb136
  %96 = load i32, ptr %lastpixel, align 4
  %.tr = trunc i32 %96 to i8
  %conv148 = shl i8 %.tr, 4
  %97 = load ptr, ptr %op.addr, align 8
  store i8 %conv148, ptr %97, align 1
  br label %sw.epilog

while.body.unreachabledefault:                    ; preds = %while.body
  unreachable

sw.epilog:                                        ; preds = %if.then141, %if.else146, %if.end113, %if.else130, %if.then125, %if.end67, %if.else84, %if.then79, %if.end21
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %98 = load ptr, ptr %bp, align 8
  %99 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp151 = getelementptr inbounds %struct.tiff, ptr %99, i64 0, i32 42
  store ptr %98, ptr %tif_rawcp151, align 8
  %100 = load i64, ptr %cc, align 8
  %tif_rawcc152 = getelementptr inbounds %struct.tiff, ptr %99, i64 0, i32 43
  store i64 %100, ptr %tif_rawcc152, align 8
  %101 = load i64, ptr %npixels, align 8
  %102 = load i64, ptr %maxpixels.addr, align 8
  %cmp153.not = icmp eq i64 %101, %102
  br i1 %cmp153.not, label %return, label %if.then155

if.then155:                                       ; preds = %while.end
  %103 = load ptr, ptr %tif.addr, align 8
  %104 = load ptr, ptr %103, align 8
  %105 = load i64, ptr %npixels, align 8
  %106 = load i64, ptr %maxpixels.addr, align 8
  %cmp156 = icmp slt i64 %105, %106
  %cond = select i1 %cmp156, ptr @.str.1, ptr @.str.2
  %tif_row = getelementptr inbounds %struct.tiff, ptr %103, i64 0, i32 11
  %107 = load i64, ptr %tif_row, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %104, ptr noundef nonnull @.str, ptr noundef nonnull %cond, i64 noundef %107, i64 noundef %105, i64 noundef %106) #2
  br label %return

return:                                           ; preds = %while.end, %if.then155
  %storemerge = phi i32 [ 0, %if.then155 ], [ 1, %while.end ]
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
