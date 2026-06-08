; ModuleID = './source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/libtiff/tif_thunder.c'
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

; Function Attrs: noinline nounwind optnone ssp uwtable
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

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @ThunderDecodeRow(ptr noundef %tif, ptr noundef %buf, i64 noundef %occ, i16 noundef zeroext %s) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %occ.addr = alloca i64, align 8
  %s.addr = alloca i16, align 2
  %row = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %occ, ptr %occ.addr, align 8
  store i16 %s, ptr %s.addr, align 2
  %0 = load ptr, ptr %buf.addr, align 8
  store ptr %0, ptr %row, align 8
  %1 = load i16, ptr %s.addr, align 2
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i64, ptr %occ.addr, align 8
  %cmp = icmp sgt i64 %2, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %tif.addr, align 8
  %4 = load ptr, ptr %row, align 8
  %5 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %5, i32 0, i32 6
  %td_imagewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir, i32 0, i32 1
  %6 = load i64, ptr %td_imagewidth, align 8
  %call = call i32 @ThunderDecode(ptr noundef %3, ptr noundef %4, i64 noundef %6)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  %7 = load ptr, ptr %tif.addr, align 8
  %tif_scanlinesize = getelementptr inbounds %struct.tiff, ptr %7, i32 0, i32 38
  %8 = load i64, ptr %tif_scanlinesize, align 8
  %9 = load i64, ptr %occ.addr, align 8
  %sub = sub nsw i64 %9, %8
  store i64 %sub, ptr %occ.addr, align 8
  %10 = load ptr, ptr %tif.addr, align 8
  %tif_scanlinesize1 = getelementptr inbounds %struct.tiff, ptr %10, i32 0, i32 38
  %11 = load i64, ptr %tif_scanlinesize1, align 8
  %12 = load ptr, ptr %row, align 8
  %add.ptr = getelementptr inbounds i8, ptr %12, i64 %11
  store ptr %add.ptr, ptr %row, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @ThunderDecode(ptr noundef %tif, ptr noundef %op, i64 noundef %maxpixels) #0 {
entry:
  %retval = alloca i32, align 4
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
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 42
  %1 = load ptr, ptr %tif_rawcp, align 8
  store ptr %1, ptr %bp, align 8
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %2, i32 0, i32 43
  %3 = load i64, ptr %tif_rawcc, align 8
  store i64 %3, ptr %cc, align 8
  store i32 0, ptr %lastpixel, align 4
  store i64 0, ptr %npixels, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %4 = load i64, ptr %cc, align 8
  %cmp = icmp sgt i64 %4, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load i64, ptr %npixels, align 8
  %6 = load i64, ptr %maxpixels.addr, align 8
  %cmp1 = icmp slt i64 %5, %6
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
  %10 = load i64, ptr %cc, align 8
  %dec = add nsw i64 %10, -1
  store i64 %dec, ptr %cc, align 8
  %11 = load i32, ptr %n, align 4
  %and = and i32 %11, 192
  switch i32 %and, label %sw.epilog [
    i32 0, label %sw.bb
    i32 64, label %sw.bb23
    i32 128, label %sw.bb90
    i32 192, label %sw.bb136
  ]

sw.bb:                                            ; preds = %while.body
  %12 = load i64, ptr %npixels, align 8
  %and2 = and i64 %12, 1
  %tobool = icmp ne i64 %and2, 0
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
  %21 = load i32, ptr %lastpixel, align 4
  %or8 = or i32 %21, %shl
  store i32 %or8, ptr %lastpixel, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %22 = load i32, ptr %n, align 4
  %conv9 = sext i32 %22 to i64
  %23 = load i64, ptr %npixels, align 8
  %add = add nsw i64 %23, %conv9
  store i64 %add, ptr %npixels, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %24 = load i32, ptr %n, align 4
  %cmp10 = icmp sgt i32 %24, 0
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i32, ptr %lastpixel, align 4
  %conv12 = trunc i32 %25 to i8
  %26 = load ptr, ptr %op.addr, align 8
  %incdec.ptr13 = getelementptr inbounds i8, ptr %26, i32 1
  store ptr %incdec.ptr13, ptr %op.addr, align 8
  store i8 %conv12, ptr %26, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, ptr %n, align 4
  %sub = sub nsw i32 %27, 2
  store i32 %sub, ptr %n, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %28 = load i32, ptr %n, align 4
  %cmp14 = icmp eq i32 %28, -1
  br i1 %cmp14, label %if.then16, label %if.end21

if.then16:                                        ; preds = %for.end
  %29 = load ptr, ptr %op.addr, align 8
  %incdec.ptr17 = getelementptr inbounds i8, ptr %29, i32 -1
  store ptr %incdec.ptr17, ptr %op.addr, align 8
  %30 = load i8, ptr %incdec.ptr17, align 1
  %conv18 = zext i8 %30 to i32
  %and19 = and i32 %conv18, 240
  %conv20 = trunc i32 %and19 to i8
  store i8 %conv20, ptr %incdec.ptr17, align 1
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %for.end
  %31 = load i32, ptr %lastpixel, align 4
  %and22 = and i32 %31, 15
  store i32 %and22, ptr %lastpixel, align 4
  br label %sw.epilog

sw.bb23:                                          ; preds = %while.body
  %32 = load i32, ptr %n, align 4
  %shr = ashr i32 %32, 4
  %and24 = and i32 %shr, 3
  store i32 %and24, ptr %delta, align 4
  %cmp25 = icmp ne i32 %and24, 2
  br i1 %cmp25, label %if.then27, label %if.end44

if.then27:                                        ; preds = %sw.bb23
  %33 = load i32, ptr %lastpixel, align 4
  %34 = load i32, ptr %delta, align 4
  %idxprom = sext i32 %34 to i64
  %arrayidx28 = getelementptr inbounds [4 x i32], ptr @twobitdeltas, i64 0, i64 %idxprom
  %35 = load i32, ptr %arrayidx28, align 4
  %add29 = add i32 %33, %35
  %and30 = and i32 %add29, 15
  store i32 %and30, ptr %lastpixel, align 4
  %36 = load i64, ptr %npixels, align 8
  %inc31 = add nsw i64 %36, 1
  store i64 %inc31, ptr %npixels, align 8
  %and32 = and i64 %36, 1
  %tobool33 = icmp ne i64 %and32, 0
  br i1 %tobool33, label %if.then34, label %if.else39

if.then34:                                        ; preds = %if.then27
  %37 = load i32, ptr %lastpixel, align 4
  %38 = load ptr, ptr %op.addr, align 8
  %incdec.ptr35 = getelementptr inbounds i8, ptr %38, i32 1
  store ptr %incdec.ptr35, ptr %op.addr, align 8
  %39 = load i8, ptr %38, align 1
  %conv36 = zext i8 %39 to i32
  %or37 = or i32 %conv36, %37
  %conv38 = trunc i32 %or37 to i8
  store i8 %conv38, ptr %38, align 1
  br label %if.end43

if.else39:                                        ; preds = %if.then27
  %40 = load i32, ptr %lastpixel, align 4
  %shl40 = shl i32 %40, 4
  %conv41 = trunc i32 %shl40 to i8
  %41 = load ptr, ptr %op.addr, align 8
  %arrayidx42 = getelementptr inbounds i8, ptr %41, i64 0
  store i8 %conv41, ptr %arrayidx42, align 1
  br label %if.end43

if.end43:                                         ; preds = %if.else39, %if.then34
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %sw.bb23
  %42 = load i32, ptr %n, align 4
  %shr45 = ashr i32 %42, 2
  %and46 = and i32 %shr45, 3
  store i32 %and46, ptr %delta, align 4
  %cmp47 = icmp ne i32 %and46, 2
  br i1 %cmp47, label %if.then49, label %if.end67

if.then49:                                        ; preds = %if.end44
  %43 = load i32, ptr %lastpixel, align 4
  %44 = load i32, ptr %delta, align 4
  %idxprom50 = sext i32 %44 to i64
  %arrayidx51 = getelementptr inbounds [4 x i32], ptr @twobitdeltas, i64 0, i64 %idxprom50
  %45 = load i32, ptr %arrayidx51, align 4
  %add52 = add i32 %43, %45
  %and53 = and i32 %add52, 15
  store i32 %and53, ptr %lastpixel, align 4
  %46 = load i64, ptr %npixels, align 8
  %inc54 = add nsw i64 %46, 1
  store i64 %inc54, ptr %npixels, align 8
  %and55 = and i64 %46, 1
  %tobool56 = icmp ne i64 %and55, 0
  br i1 %tobool56, label %if.then57, label %if.else62

if.then57:                                        ; preds = %if.then49
  %47 = load i32, ptr %lastpixel, align 4
  %48 = load ptr, ptr %op.addr, align 8
  %incdec.ptr58 = getelementptr inbounds i8, ptr %48, i32 1
  store ptr %incdec.ptr58, ptr %op.addr, align 8
  %49 = load i8, ptr %48, align 1
  %conv59 = zext i8 %49 to i32
  %or60 = or i32 %conv59, %47
  %conv61 = trunc i32 %or60 to i8
  store i8 %conv61, ptr %48, align 1
  br label %if.end66

if.else62:                                        ; preds = %if.then49
  %50 = load i32, ptr %lastpixel, align 4
  %shl63 = shl i32 %50, 4
  %conv64 = trunc i32 %shl63 to i8
  %51 = load ptr, ptr %op.addr, align 8
  %arrayidx65 = getelementptr inbounds i8, ptr %51, i64 0
  store i8 %conv64, ptr %arrayidx65, align 1
  br label %if.end66

if.end66:                                         ; preds = %if.else62, %if.then57
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.end44
  %52 = load i32, ptr %n, align 4
  %and68 = and i32 %52, 3
  store i32 %and68, ptr %delta, align 4
  %cmp69 = icmp ne i32 %and68, 2
  br i1 %cmp69, label %if.then71, label %if.end89

if.then71:                                        ; preds = %if.end67
  %53 = load i32, ptr %lastpixel, align 4
  %54 = load i32, ptr %delta, align 4
  %idxprom72 = sext i32 %54 to i64
  %arrayidx73 = getelementptr inbounds [4 x i32], ptr @twobitdeltas, i64 0, i64 %idxprom72
  %55 = load i32, ptr %arrayidx73, align 4
  %add74 = add i32 %53, %55
  %and75 = and i32 %add74, 15
  store i32 %and75, ptr %lastpixel, align 4
  %56 = load i64, ptr %npixels, align 8
  %inc76 = add nsw i64 %56, 1
  store i64 %inc76, ptr %npixels, align 8
  %and77 = and i64 %56, 1
  %tobool78 = icmp ne i64 %and77, 0
  br i1 %tobool78, label %if.then79, label %if.else84

if.then79:                                        ; preds = %if.then71
  %57 = load i32, ptr %lastpixel, align 4
  %58 = load ptr, ptr %op.addr, align 8
  %incdec.ptr80 = getelementptr inbounds i8, ptr %58, i32 1
  store ptr %incdec.ptr80, ptr %op.addr, align 8
  %59 = load i8, ptr %58, align 1
  %conv81 = zext i8 %59 to i32
  %or82 = or i32 %conv81, %57
  %conv83 = trunc i32 %or82 to i8
  store i8 %conv83, ptr %58, align 1
  br label %if.end88

if.else84:                                        ; preds = %if.then71
  %60 = load i32, ptr %lastpixel, align 4
  %shl85 = shl i32 %60, 4
  %conv86 = trunc i32 %shl85 to i8
  %61 = load ptr, ptr %op.addr, align 8
  %arrayidx87 = getelementptr inbounds i8, ptr %61, i64 0
  store i8 %conv86, ptr %arrayidx87, align 1
  br label %if.end88

if.end88:                                         ; preds = %if.else84, %if.then79
  br label %if.end89

if.end89:                                         ; preds = %if.end88, %if.end67
  br label %sw.epilog

sw.bb90:                                          ; preds = %while.body
  %62 = load i32, ptr %n, align 4
  %shr91 = ashr i32 %62, 3
  %and92 = and i32 %shr91, 7
  store i32 %and92, ptr %delta, align 4
  %cmp93 = icmp ne i32 %and92, 4
  br i1 %cmp93, label %if.then95, label %if.end113

if.then95:                                        ; preds = %sw.bb90
  %63 = load i32, ptr %lastpixel, align 4
  %64 = load i32, ptr %delta, align 4
  %idxprom96 = sext i32 %64 to i64
  %arrayidx97 = getelementptr inbounds [8 x i32], ptr @threebitdeltas, i64 0, i64 %idxprom96
  %65 = load i32, ptr %arrayidx97, align 4
  %add98 = add i32 %63, %65
  %and99 = and i32 %add98, 15
  store i32 %and99, ptr %lastpixel, align 4
  %66 = load i64, ptr %npixels, align 8
  %inc100 = add nsw i64 %66, 1
  store i64 %inc100, ptr %npixels, align 8
  %and101 = and i64 %66, 1
  %tobool102 = icmp ne i64 %and101, 0
  br i1 %tobool102, label %if.then103, label %if.else108

if.then103:                                       ; preds = %if.then95
  %67 = load i32, ptr %lastpixel, align 4
  %68 = load ptr, ptr %op.addr, align 8
  %incdec.ptr104 = getelementptr inbounds i8, ptr %68, i32 1
  store ptr %incdec.ptr104, ptr %op.addr, align 8
  %69 = load i8, ptr %68, align 1
  %conv105 = zext i8 %69 to i32
  %or106 = or i32 %conv105, %67
  %conv107 = trunc i32 %or106 to i8
  store i8 %conv107, ptr %68, align 1
  br label %if.end112

if.else108:                                       ; preds = %if.then95
  %70 = load i32, ptr %lastpixel, align 4
  %shl109 = shl i32 %70, 4
  %conv110 = trunc i32 %shl109 to i8
  %71 = load ptr, ptr %op.addr, align 8
  %arrayidx111 = getelementptr inbounds i8, ptr %71, i64 0
  store i8 %conv110, ptr %arrayidx111, align 1
  br label %if.end112

if.end112:                                        ; preds = %if.else108, %if.then103
  br label %if.end113

if.end113:                                        ; preds = %if.end112, %sw.bb90
  %72 = load i32, ptr %n, align 4
  %and114 = and i32 %72, 7
  store i32 %and114, ptr %delta, align 4
  %cmp115 = icmp ne i32 %and114, 4
  br i1 %cmp115, label %if.then117, label %if.end135

if.then117:                                       ; preds = %if.end113
  %73 = load i32, ptr %lastpixel, align 4
  %74 = load i32, ptr %delta, align 4
  %idxprom118 = sext i32 %74 to i64
  %arrayidx119 = getelementptr inbounds [8 x i32], ptr @threebitdeltas, i64 0, i64 %idxprom118
  %75 = load i32, ptr %arrayidx119, align 4
  %add120 = add i32 %73, %75
  %and121 = and i32 %add120, 15
  store i32 %and121, ptr %lastpixel, align 4
  %76 = load i64, ptr %npixels, align 8
  %inc122 = add nsw i64 %76, 1
  store i64 %inc122, ptr %npixels, align 8
  %and123 = and i64 %76, 1
  %tobool124 = icmp ne i64 %and123, 0
  br i1 %tobool124, label %if.then125, label %if.else130

if.then125:                                       ; preds = %if.then117
  %77 = load i32, ptr %lastpixel, align 4
  %78 = load ptr, ptr %op.addr, align 8
  %incdec.ptr126 = getelementptr inbounds i8, ptr %78, i32 1
  store ptr %incdec.ptr126, ptr %op.addr, align 8
  %79 = load i8, ptr %78, align 1
  %conv127 = zext i8 %79 to i32
  %or128 = or i32 %conv127, %77
  %conv129 = trunc i32 %or128 to i8
  store i8 %conv129, ptr %78, align 1
  br label %if.end134

if.else130:                                       ; preds = %if.then117
  %80 = load i32, ptr %lastpixel, align 4
  %shl131 = shl i32 %80, 4
  %conv132 = trunc i32 %shl131 to i8
  %81 = load ptr, ptr %op.addr, align 8
  %arrayidx133 = getelementptr inbounds i8, ptr %81, i64 0
  store i8 %conv132, ptr %arrayidx133, align 1
  br label %if.end134

if.end134:                                        ; preds = %if.else130, %if.then125
  br label %if.end135

if.end135:                                        ; preds = %if.end134, %if.end113
  br label %sw.epilog

sw.bb136:                                         ; preds = %while.body
  %82 = load i32, ptr %n, align 4
  %and137 = and i32 %82, 15
  store i32 %and137, ptr %lastpixel, align 4
  %83 = load i64, ptr %npixels, align 8
  %inc138 = add nsw i64 %83, 1
  store i64 %inc138, ptr %npixels, align 8
  %and139 = and i64 %83, 1
  %tobool140 = icmp ne i64 %and139, 0
  br i1 %tobool140, label %if.then141, label %if.else146

if.then141:                                       ; preds = %sw.bb136
  %84 = load i32, ptr %lastpixel, align 4
  %85 = load ptr, ptr %op.addr, align 8
  %incdec.ptr142 = getelementptr inbounds i8, ptr %85, i32 1
  store ptr %incdec.ptr142, ptr %op.addr, align 8
  %86 = load i8, ptr %85, align 1
  %conv143 = zext i8 %86 to i32
  %or144 = or i32 %conv143, %84
  %conv145 = trunc i32 %or144 to i8
  store i8 %conv145, ptr %85, align 1
  br label %if.end150

if.else146:                                       ; preds = %sw.bb136
  %87 = load i32, ptr %lastpixel, align 4
  %shl147 = shl i32 %87, 4
  %conv148 = trunc i32 %shl147 to i8
  %88 = load ptr, ptr %op.addr, align 8
  %arrayidx149 = getelementptr inbounds i8, ptr %88, i64 0
  store i8 %conv148, ptr %arrayidx149, align 1
  br label %if.end150

if.end150:                                        ; preds = %if.else146, %if.then141
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.body, %if.end150, %if.end135, %if.end89, %if.end21
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %land.end
  %89 = load ptr, ptr %bp, align 8
  %90 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp151 = getelementptr inbounds %struct.tiff, ptr %90, i32 0, i32 42
  store ptr %89, ptr %tif_rawcp151, align 8
  %91 = load i64, ptr %cc, align 8
  %92 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc152 = getelementptr inbounds %struct.tiff, ptr %92, i32 0, i32 43
  store i64 %91, ptr %tif_rawcc152, align 8
  %93 = load i64, ptr %npixels, align 8
  %94 = load i64, ptr %maxpixels.addr, align 8
  %cmp153 = icmp ne i64 %93, %94
  br i1 %cmp153, label %if.then155, label %if.end158

if.then155:                                       ; preds = %while.end
  %95 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %95, i32 0, i32 0
  %96 = load ptr, ptr %tif_name, align 8
  %97 = load i64, ptr %npixels, align 8
  %98 = load i64, ptr %maxpixels.addr, align 8
  %cmp156 = icmp slt i64 %97, %98
  %99 = zext i1 %cmp156 to i64
  %cond = select i1 %cmp156, ptr @.str.1, ptr @.str.2
  %100 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %100, i32 0, i32 11
  %101 = load i64, ptr %tif_row, align 8
  %102 = load i64, ptr %npixels, align 8
  %103 = load i64, ptr %maxpixels.addr, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %96, ptr noundef @.str, ptr noundef %cond, i64 noundef %101, i64 noundef %102, i64 noundef %103)
  store i32 0, ptr %retval, align 4
  br label %return

if.end158:                                        ; preds = %while.end
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end158, %if.then155
  %104 = load i32, ptr %retval, align 4
  ret i32 %104
}

declare void @TIFFError(ptr noundef, ptr noundef, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
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
