; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-tiff2dither/tiff2rgba.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-tiff2dither/tiff2rgba.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

@compression = global i16 -32763, align 2
@rowsperstrip = global i32 -1, align 4
@process_by_block = global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"c:r:t:b\00", align 1
@optarg = external global ptr, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"packbits\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"lzw\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"jpeg\00", align 1
@optind = external global i32, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Source image not tiled\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"No space for raster buffer\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"No space for raster scanline buffer\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Source image not in strips\00", align 1
@usageMsg = internal global [10 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr null], align 8
@__stderrp = external global ptr, align 8
@.str.11 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.12 = private unnamed_addr constant [59 x i8] c"usage: tiff2rgba [-c comp] [-r rows] [-b] input... output\0A\00", align 1
@.str.13 = private unnamed_addr constant [60 x i8] c"where comp is one of the following compression algorithms:\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c" jpeg\09\09JPEG encoding\0A\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c" lzw\09\09Lempel-Ziv & Welch encoding\0A\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c" packbits\09PackBits encoding\0A\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c" none\09\09no compression\0A\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"and the other options are:\0A\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c" -r\09rows/strip\0A\00", align 1
@.str.20 = private unnamed_addr constant [54 x i8] c" -b (progress by block rather than as a whole image)\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main1(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %in = alloca ptr, align 8
  %out = alloca ptr, align 8
  %c = alloca i32, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load i32, ptr %argc.addr, align 4
  %1 = load ptr, ptr %argv.addr, align 8
  %call = call i32 @"\01_getopt"(i32 noundef %0, ptr noundef %1, ptr noundef @.str)
  store i32 %call, ptr %c, align 4
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %c, align 4
  switch i32 %2, label %sw.epilog [
    i32 98, label %sw.bb
    i32 99, label %sw.bb1
    i32 114, label %sw.bb19
    i32 116, label %sw.bb21
    i32 63, label %sw.bb23
  ]

sw.bb:                                            ; preds = %while.body
  store i32 1, ptr @process_by_block, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %while.body
  %3 = load ptr, ptr @optarg, align 8
  %call2 = call i32 @strcmp(ptr noundef %3, ptr noundef @.str.1)
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb1
  store i16 1, ptr @compression, align 2
  br label %if.end18

if.else:                                          ; preds = %sw.bb1
  %4 = load ptr, ptr @optarg, align 8
  %call4 = call i32 @strcmp(ptr noundef %4, ptr noundef @.str.2)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.else
  store i16 -32763, ptr @compression, align 2
  br label %if.end17

if.else7:                                         ; preds = %if.else
  %5 = load ptr, ptr @optarg, align 8
  %call8 = call i32 @strcmp(ptr noundef %5, ptr noundef @.str.3)
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else7
  store i16 5, ptr @compression, align 2
  br label %if.end16

if.else11:                                        ; preds = %if.else7
  %6 = load ptr, ptr @optarg, align 8
  %call12 = call i32 @strcmp(ptr noundef %6, ptr noundef @.str.4)
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.else11
  store i16 7, ptr @compression, align 2
  br label %if.end

if.else15:                                        ; preds = %if.else11
  call void @usage()
  br label %if.end

if.end:                                           ; preds = %if.else15, %if.then14
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then10
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then6
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then
  br label %sw.epilog

sw.bb19:                                          ; preds = %while.body
  %7 = load ptr, ptr @optarg, align 8
  %call20 = call i32 @atoi(ptr noundef %7)
  store i32 %call20, ptr @rowsperstrip, align 4
  br label %sw.epilog

sw.bb21:                                          ; preds = %while.body
  %8 = load ptr, ptr @optarg, align 8
  %call22 = call i32 @atoi(ptr noundef %8)
  store i32 %call22, ptr @rowsperstrip, align 4
  br label %sw.epilog

sw.bb23:                                          ; preds = %while.body
  call void @usage()
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb23, %while.body, %sw.bb21, %sw.bb19, %if.end18, %sw.bb
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %9 = load i32, ptr %argc.addr, align 4
  %10 = load i32, ptr @optind, align 4
  %sub = sub nsw i32 %9, %10
  %cmp24 = icmp slt i32 %sub, 2
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %while.end
  call void @usage()
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %while.end
  %11 = load ptr, ptr %argv.addr, align 8
  %12 = load i32, ptr %argc.addr, align 4
  %sub27 = sub nsw i32 %12, 1
  %idxprom = sext i32 %sub27 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %11, i64 %idxprom
  %13 = load ptr, ptr %arrayidx, align 8
  %call28 = call ptr @TIFFOpen(ptr noundef %13, ptr noundef @.str.5)
  store ptr %call28, ptr %out, align 8
  %14 = load ptr, ptr %out, align 8
  %cmp29 = icmp eq ptr %14, null
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end26
  store i32 -2, ptr %retval, align 4
  br label %return

if.end31:                                         ; preds = %if.end26
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end31
  %15 = load i32, ptr @optind, align 4
  %16 = load i32, ptr %argc.addr, align 4
  %sub32 = sub nsw i32 %16, 1
  %cmp33 = icmp slt i32 %15, %sub32
  br i1 %cmp33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %argv.addr, align 8
  %18 = load i32, ptr @optind, align 4
  %idxprom34 = sext i32 %18 to i64
  %arrayidx35 = getelementptr inbounds ptr, ptr %17, i64 %idxprom34
  %19 = load ptr, ptr %arrayidx35, align 8
  %call36 = call ptr @TIFFOpen(ptr noundef %19, ptr noundef @.str.6)
  store ptr %call36, ptr %in, align 8
  %20 = load ptr, ptr %in, align 8
  %cmp37 = icmp ne ptr %20, null
  br i1 %cmp37, label %if.then38, label %if.end46

if.then38:                                        ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then38
  %21 = load ptr, ptr %in, align 8
  %22 = load ptr, ptr %out, align 8
  %call39 = call i32 @tiffcvt(ptr noundef %21, ptr noundef %22)
  %tobool = icmp ne i32 %call39, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then42

lor.lhs.false:                                    ; preds = %do.body
  %23 = load ptr, ptr %out, align 8
  %call40 = call i32 @TIFFWriteDirectory(ptr noundef %23)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.end43, label %if.then42

if.then42:                                        ; preds = %lor.lhs.false, %do.body
  %24 = load ptr, ptr %out, align 8
  call void @TIFFClose(ptr noundef %24)
  store i32 1, ptr %retval, align 4
  br label %return

if.end43:                                         ; preds = %lor.lhs.false
  br label %do.cond

do.cond:                                          ; preds = %if.end43
  %25 = load ptr, ptr %in, align 8
  %call44 = call i32 @TIFFReadDirectory(ptr noundef %25)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %do.body, label %do.end, !llvm.loop !8

do.end:                                           ; preds = %do.cond
  %26 = load ptr, ptr %in, align 8
  call void @TIFFClose(ptr noundef %26)
  br label %if.end46

if.end46:                                         ; preds = %do.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end46
  %27 = load i32, ptr @optind, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, ptr @optind, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %28 = load ptr, ptr %out, align 8
  call void @TIFFClose(ptr noundef %28)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then42, %if.then30
  %29 = load i32, ptr %retval, align 4
  ret i32 %29
}

declare i32 @"\01_getopt"(i32 noundef, ptr noundef, ptr noundef) #1

declare i32 @strcmp(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @usage() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [10 x ptr], ptr @usageMsg, i64 0, i64 %idxprom
  %1 = load ptr, ptr %arrayidx, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr @__stderrp, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [10 x ptr], ptr @usageMsg, i64 0, i64 %idxprom1
  %4 = load ptr, ptr %arrayidx2, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.11, ptr noundef %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  call void @exit(i32 noundef 1) #3
  unreachable
}

declare i32 @atoi(ptr noundef) #1

declare ptr @TIFFOpen(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @tiffcvt(ptr noundef %in, ptr noundef %out) #0 {
entry:
  %retval = alloca i32, align 4
  %in.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %shortv = alloca i16, align 2
  %floatv = alloca float, align 4
  %stringv = alloca ptr, align 8
  %longv = alloca i32, align 4
  %v = alloca [1 x i16], align 2
  store ptr %in, ptr %in.addr, align 8
  store ptr %out, ptr %out.addr, align 8
  %0 = load ptr, ptr %in.addr, align 8
  %call = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %0, i32 noundef 256, ptr noundef %width)
  %1 = load ptr, ptr %in.addr, align 8
  %call1 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %1, i32 noundef 257, ptr noundef %height)
  %2 = load ptr, ptr %in.addr, align 8
  %call2 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %2, i32 noundef 254, ptr noundef %longv)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %out.addr, align 8
  %4 = load i32, ptr %longv, align 4
  %call3 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %3, i32 noundef 254, i32 noundef %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %out.addr, align 8
  %6 = load i32, ptr %width, align 4
  %call4 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %5, i32 noundef 256, i32 noundef %6)
  %7 = load ptr, ptr %out.addr, align 8
  %8 = load i32, ptr %height, align 4
  %call5 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %7, i32 noundef 257, i32 noundef %8)
  %9 = load ptr, ptr %out.addr, align 8
  %call6 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %9, i32 noundef 258, i32 noundef 8)
  %10 = load ptr, ptr %out.addr, align 8
  %11 = load i16, ptr @compression, align 2
  %conv = zext i16 %11 to i32
  %call7 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %10, i32 noundef 259, i32 noundef %conv)
  %12 = load ptr, ptr %out.addr, align 8
  %call8 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %12, i32 noundef 262, i32 noundef 2)
  %13 = load ptr, ptr %in.addr, align 8
  %call9 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %13, i32 noundef 266, ptr noundef %shortv)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end
  %14 = load ptr, ptr %out.addr, align 8
  %15 = load i16, ptr %shortv, align 2
  %conv12 = zext i16 %15 to i32
  %call13 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %14, i32 noundef 266, i32 noundef %conv12)
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end
  %16 = load ptr, ptr %out.addr, align 8
  %call15 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %16, i32 noundef 274, i32 noundef 1)
  %17 = load ptr, ptr %out.addr, align 8
  %call16 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %17, i32 noundef 277, i32 noundef 4)
  %arrayidx = getelementptr inbounds [1 x i16], ptr %v, i64 0, i64 0
  store i16 1, ptr %arrayidx, align 2
  %18 = load ptr, ptr %out.addr, align 8
  %arraydecay = getelementptr inbounds [1 x i16], ptr %v, i64 0, i64 0
  %call17 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %18, i32 noundef 338, i32 noundef 1, ptr noundef %arraydecay)
  %19 = load ptr, ptr %in.addr, align 8
  %call18 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %19, i32 noundef 282, ptr noundef %floatv)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end14
  %20 = load ptr, ptr %out.addr, align 8
  %21 = load float, ptr %floatv, align 4
  %conv21 = fpext float %21 to double
  %call22 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %20, i32 noundef 282, double noundef %conv21)
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end14
  %22 = load ptr, ptr %in.addr, align 8
  %call24 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %22, i32 noundef 283, ptr noundef %floatv)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end23
  %23 = load ptr, ptr %out.addr, align 8
  %24 = load float, ptr %floatv, align 4
  %conv27 = fpext float %24 to double
  %call28 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %23, i32 noundef 283, double noundef %conv27)
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end23
  %25 = load ptr, ptr %in.addr, align 8
  %call30 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %25, i32 noundef 296, ptr noundef %shortv)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then32, label %if.end35

if.then32:                                        ; preds = %if.end29
  %26 = load ptr, ptr %out.addr, align 8
  %27 = load i16, ptr %shortv, align 2
  %conv33 = zext i16 %27 to i32
  %call34 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %26, i32 noundef 296, i32 noundef %conv33)
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.end29
  %28 = load ptr, ptr %out.addr, align 8
  %call36 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %28, i32 noundef 284, i32 noundef 1)
  %29 = load ptr, ptr %out.addr, align 8
  %call37 = call ptr @TIFFGetVersion()
  %call38 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %29, i32 noundef 305, ptr noundef %call37)
  %30 = load ptr, ptr %in.addr, align 8
  %call39 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %30, i32 noundef 269, ptr noundef %stringv)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.end35
  %31 = load ptr, ptr %out.addr, align 8
  %32 = load ptr, ptr %stringv, align 8
  %call42 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %31, i32 noundef 269, ptr noundef %32)
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end35
  %33 = load i32, ptr @process_by_block, align 4
  %tobool44 = icmp ne i32 %33, 0
  br i1 %tobool44, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end43
  %34 = load ptr, ptr %in.addr, align 8
  %call45 = call i32 @TIFFIsTiled(ptr noundef %34)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then47, label %if.else

if.then47:                                        ; preds = %land.lhs.true
  %35 = load ptr, ptr %in.addr, align 8
  %36 = load ptr, ptr %out.addr, align 8
  %call48 = call i32 @cvt_by_tile(ptr noundef %35, ptr noundef %36)
  store i32 %call48, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %land.lhs.true, %if.end43
  %37 = load i32, ptr @process_by_block, align 4
  %tobool49 = icmp ne i32 %37, 0
  br i1 %tobool49, label %if.then50, label %if.else52

if.then50:                                        ; preds = %if.else
  %38 = load ptr, ptr %in.addr, align 8
  %39 = load ptr, ptr %out.addr, align 8
  %call51 = call i32 @cvt_by_strip(ptr noundef %38, ptr noundef %39)
  store i32 %call51, ptr %retval, align 4
  br label %return

if.else52:                                        ; preds = %if.else
  %40 = load ptr, ptr %in.addr, align 8
  %41 = load ptr, ptr %out.addr, align 8
  %call53 = call i32 @cvt_whole_image(ptr noundef %40, ptr noundef %41)
  store i32 %call53, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else52, %if.then50, %if.then47
  %42 = load i32, ptr %retval, align 4
  ret i32 %42
}

declare i32 @TIFFWriteDirectory(ptr noundef) #1

declare void @TIFFClose(ptr noundef) #1

declare i32 @TIFFReadDirectory(ptr noundef) #1

declare i32 @TIFFGetField(ptr noundef, i32 noundef, ...) #1

declare i32 @TIFFSetField(ptr noundef, i32 noundef, ...) #1

declare ptr @TIFFGetVersion() #1

declare i32 @TIFFIsTiled(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @cvt_by_tile(ptr noundef %in, ptr noundef %out) #0 {
entry:
  %retval = alloca i32, align 4
  %in.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %raster = alloca ptr, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %tile_width = alloca i32, align 4
  %tile_height = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %wrk_line = alloca ptr, align 8
  %ok = alloca i32, align 4
  %i_row = alloca i32, align 4
  %top_line = alloca ptr, align 8
  %bottom_line = alloca ptr, align 8
  store ptr %in, ptr %in.addr, align 8
  store ptr %out, ptr %out.addr, align 8
  store i32 1, ptr %ok, align 4
  %0 = load ptr, ptr %in.addr, align 8
  %call = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %0, i32 noundef 256, ptr noundef %width)
  %1 = load ptr, ptr %in.addr, align 8
  %call1 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %1, i32 noundef 257, ptr noundef %height)
  %2 = load ptr, ptr %in.addr, align 8
  %call2 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %2, i32 noundef 322, ptr noundef %tile_width)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %in.addr, align 8
  %call3 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %3, i32 noundef 323, ptr noundef %tile_height)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load ptr, ptr %in.addr, align 8
  %call5 = call ptr @TIFFFileName(ptr noundef %4)
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call5, ptr noundef @.str.7)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %out.addr, align 8
  %6 = load i32, ptr %tile_width, align 4
  %call6 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %5, i32 noundef 322, i32 noundef %6)
  %7 = load ptr, ptr %out.addr, align 8
  %8 = load i32, ptr %tile_height, align 4
  %call7 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %7, i32 noundef 323, i32 noundef %8)
  %9 = load i32, ptr %tile_width, align 4
  %10 = load i32, ptr %tile_height, align 4
  %mul = mul i32 %9, %10
  %conv = zext i32 %mul to i64
  %mul8 = mul i64 %conv, 4
  %conv9 = trunc i64 %mul8 to i32
  %call10 = call ptr @_TIFFmalloc(i32 noundef %conv9)
  store ptr %call10, ptr %raster, align 8
  %11 = load ptr, ptr %raster, align 8
  %cmp = icmp eq ptr %11, null
  br i1 %cmp, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end
  %12 = load ptr, ptr %in.addr, align 8
  %call13 = call ptr @TIFFFileName(ptr noundef %12)
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call13, ptr noundef @.str.8)
  store i32 0, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end
  %13 = load i32, ptr %tile_width, align 4
  %conv15 = zext i32 %13 to i64
  %mul16 = mul i64 %conv15, 4
  %conv17 = trunc i64 %mul16 to i32
  %call18 = call ptr @_TIFFmalloc(i32 noundef %conv17)
  store ptr %call18, ptr %wrk_line, align 8
  %14 = load ptr, ptr %wrk_line, align 8
  %cmp19 = icmp eq ptr %14, null
  br i1 %cmp19, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end14
  %15 = load ptr, ptr %in.addr, align 8
  %call22 = call ptr @TIFFFileName(ptr noundef %15)
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call22, ptr noundef @.str.9)
  store i32 0, ptr %ok, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end14
  store i32 0, ptr %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc60, %if.end23
  %16 = load i32, ptr %ok, align 4
  %tobool24 = icmp ne i32 %16, 0
  br i1 %tobool24, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %17 = load i32, ptr %row, align 4
  %18 = load i32, ptr %height, align 4
  %cmp25 = icmp ult i32 %17, %18
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %19 = phi i1 [ false, %for.cond ], [ %cmp25, %land.rhs ]
  br i1 %19, label %for.body, label %for.end62

for.body:                                         ; preds = %land.end
  store i32 0, ptr %col, align 4
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc58, %for.body
  %20 = load i32, ptr %ok, align 4
  %tobool28 = icmp ne i32 %20, 0
  br i1 %tobool28, label %land.rhs29, label %land.end32

land.rhs29:                                       ; preds = %for.cond27
  %21 = load i32, ptr %col, align 4
  %22 = load i32, ptr %width, align 4
  %cmp30 = icmp ult i32 %21, %22
  br label %land.end32

land.end32:                                       ; preds = %land.rhs29, %for.cond27
  %23 = phi i1 [ false, %for.cond27 ], [ %cmp30, %land.rhs29 ]
  br i1 %23, label %for.body33, label %for.end59

for.body33:                                       ; preds = %land.end32
  %24 = load ptr, ptr %in.addr, align 8
  %25 = load i32, ptr %col, align 4
  %26 = load i32, ptr %row, align 4
  %27 = load ptr, ptr %raster, align 8
  %call34 = call i32 @TIFFReadRGBATile(ptr noundef %24, i32 noundef %25, i32 noundef %26, ptr noundef %27)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.end37, label %if.then36

if.then36:                                        ; preds = %for.body33
  store i32 0, ptr %ok, align 4
  br label %for.end59

if.end37:                                         ; preds = %for.body33
  store i32 0, ptr %i_row, align 4
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc, %if.end37
  %28 = load i32, ptr %i_row, align 4
  %29 = load i32, ptr %tile_height, align 4
  %div = udiv i32 %29, 2
  %cmp39 = icmp ult i32 %28, %div
  br i1 %cmp39, label %for.body41, label %for.end

for.body41:                                       ; preds = %for.cond38
  %30 = load ptr, ptr %raster, align 8
  %31 = load i32, ptr %tile_width, align 4
  %32 = load i32, ptr %i_row, align 4
  %mul42 = mul i32 %31, %32
  %idx.ext = zext i32 %mul42 to i64
  %add.ptr = getelementptr inbounds i32, ptr %30, i64 %idx.ext
  store ptr %add.ptr, ptr %top_line, align 8
  %33 = load ptr, ptr %raster, align 8
  %34 = load i32, ptr %tile_width, align 4
  %35 = load i32, ptr %tile_height, align 4
  %36 = load i32, ptr %i_row, align 4
  %sub = sub i32 %35, %36
  %sub43 = sub i32 %sub, 1
  %mul44 = mul i32 %34, %sub43
  %idx.ext45 = zext i32 %mul44 to i64
  %add.ptr46 = getelementptr inbounds i32, ptr %33, i64 %idx.ext45
  store ptr %add.ptr46, ptr %bottom_line, align 8
  %37 = load ptr, ptr %wrk_line, align 8
  %38 = load ptr, ptr %top_line, align 8
  %39 = load i32, ptr %tile_width, align 4
  %mul47 = mul i32 4, %39
  call void @_TIFFmemcpy(ptr noundef %37, ptr noundef %38, i32 noundef %mul47)
  %40 = load ptr, ptr %top_line, align 8
  %41 = load ptr, ptr %bottom_line, align 8
  %42 = load i32, ptr %tile_width, align 4
  %mul48 = mul i32 4, %42
  call void @_TIFFmemcpy(ptr noundef %40, ptr noundef %41, i32 noundef %mul48)
  %43 = load ptr, ptr %bottom_line, align 8
  %44 = load ptr, ptr %wrk_line, align 8
  %45 = load i32, ptr %tile_width, align 4
  %mul49 = mul i32 4, %45
  call void @_TIFFmemcpy(ptr noundef %43, ptr noundef %44, i32 noundef %mul49)
  br label %for.inc

for.inc:                                          ; preds = %for.body41
  %46 = load i32, ptr %i_row, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, ptr %i_row, align 4
  br label %for.cond38, !llvm.loop !11

for.end:                                          ; preds = %for.cond38
  %47 = load ptr, ptr %out.addr, align 8
  %48 = load ptr, ptr %out.addr, align 8
  %49 = load i32, ptr %col, align 4
  %50 = load i32, ptr %row, align 4
  %call50 = call i32 @TIFFComputeTile(ptr noundef %48, i32 noundef %49, i32 noundef %50, i32 noundef 0, i16 noundef zeroext 0)
  %51 = load ptr, ptr %raster, align 8
  %52 = load i32, ptr %tile_width, align 4
  %mul51 = mul i32 4, %52
  %53 = load i32, ptr %tile_height, align 4
  %mul52 = mul i32 %mul51, %53
  %call53 = call i32 @TIFFWriteEncodedTile(ptr noundef %47, i32 noundef %call50, ptr noundef %51, i32 noundef %mul52)
  %cmp54 = icmp eq i32 %call53, -1
  br i1 %cmp54, label %if.then56, label %if.end57

if.then56:                                        ; preds = %for.end
  store i32 0, ptr %ok, align 4
  br label %for.end59

if.end57:                                         ; preds = %for.end
  br label %for.inc58

for.inc58:                                        ; preds = %if.end57
  %54 = load i32, ptr %tile_width, align 4
  %55 = load i32, ptr %col, align 4
  %add = add i32 %55, %54
  store i32 %add, ptr %col, align 4
  br label %for.cond27, !llvm.loop !12

for.end59:                                        ; preds = %if.then56, %if.then36, %land.end32
  br label %for.inc60

for.inc60:                                        ; preds = %for.end59
  %56 = load i32, ptr %tile_height, align 4
  %57 = load i32, ptr %row, align 4
  %add61 = add i32 %57, %56
  store i32 %add61, ptr %row, align 4
  br label %for.cond, !llvm.loop !13

for.end62:                                        ; preds = %land.end
  %58 = load ptr, ptr %raster, align 8
  call void @_TIFFfree(ptr noundef %58)
  %59 = load ptr, ptr %wrk_line, align 8
  call void @_TIFFfree(ptr noundef %59)
  %60 = load i32, ptr %ok, align 4
  store i32 %60, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end62, %if.then12, %if.then
  %61 = load i32, ptr %retval, align 4
  ret i32 %61
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @cvt_by_strip(ptr noundef %in, ptr noundef %out) #0 {
entry:
  %retval = alloca i32, align 4
  %in.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %raster = alloca ptr, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %row = alloca i32, align 4
  %wrk_line = alloca ptr, align 8
  %ok = alloca i32, align 4
  %rows_to_write = alloca i32, align 4
  %i_row = alloca i32, align 4
  %top_line = alloca ptr, align 8
  %bottom_line = alloca ptr, align 8
  store ptr %in, ptr %in.addr, align 8
  store ptr %out, ptr %out.addr, align 8
  store i32 1, ptr %ok, align 4
  %0 = load ptr, ptr %in.addr, align 8
  %call = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %0, i32 noundef 256, ptr noundef %width)
  %1 = load ptr, ptr %in.addr, align 8
  %call1 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %1, i32 noundef 257, ptr noundef %height)
  %2 = load ptr, ptr %in.addr, align 8
  %call2 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %2, i32 noundef 278, ptr noundef @rowsperstrip)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %in.addr, align 8
  %call3 = call ptr @TIFFFileName(ptr noundef %3)
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call3, ptr noundef @.str.10)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %out.addr, align 8
  %5 = load i32, ptr @rowsperstrip, align 4
  %call4 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %4, i32 noundef 278, i32 noundef %5)
  %6 = load i32, ptr %width, align 4
  %7 = load i32, ptr @rowsperstrip, align 4
  %mul = mul i32 %6, %7
  %conv = zext i32 %mul to i64
  %mul5 = mul i64 %conv, 4
  %conv6 = trunc i64 %mul5 to i32
  %call7 = call ptr @_TIFFmalloc(i32 noundef %conv6)
  store ptr %call7, ptr %raster, align 8
  %8 = load ptr, ptr %raster, align 8
  %cmp = icmp eq ptr %8, null
  br i1 %cmp, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  %9 = load ptr, ptr %in.addr, align 8
  %call10 = call ptr @TIFFFileName(ptr noundef %9)
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call10, ptr noundef @.str.8)
  store i32 0, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end
  %10 = load i32, ptr %width, align 4
  %conv12 = zext i32 %10 to i64
  %mul13 = mul i64 %conv12, 4
  %conv14 = trunc i64 %mul13 to i32
  %call15 = call ptr @_TIFFmalloc(i32 noundef %conv14)
  store ptr %call15, ptr %wrk_line, align 8
  %11 = load ptr, ptr %wrk_line, align 8
  %cmp16 = icmp eq ptr %11, null
  br i1 %cmp16, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end11
  %12 = load ptr, ptr %in.addr, align 8
  %call19 = call ptr @TIFFFileName(ptr noundef %12)
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call19, ptr noundef @.str.9)
  store i32 0, ptr %ok, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end11
  store i32 0, ptr %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc53, %if.end20
  %13 = load i32, ptr %ok, align 4
  %tobool21 = icmp ne i32 %13, 0
  br i1 %tobool21, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %14 = load i32, ptr %row, align 4
  %15 = load i32, ptr %height, align 4
  %cmp22 = icmp ult i32 %14, %15
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %16 = phi i1 [ false, %for.cond ], [ %cmp22, %land.rhs ]
  br i1 %16, label %for.body, label %for.end55

for.body:                                         ; preds = %land.end
  %17 = load ptr, ptr %in.addr, align 8
  %18 = load i32, ptr %row, align 4
  %19 = load ptr, ptr %raster, align 8
  %call24 = call i32 @TIFFReadRGBAStrip(ptr noundef %17, i32 noundef %18, ptr noundef %19)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end27, label %if.then26

if.then26:                                        ; preds = %for.body
  store i32 0, ptr %ok, align 4
  br label %for.end55

if.end27:                                         ; preds = %for.body
  %20 = load i32, ptr %row, align 4
  %21 = load i32, ptr @rowsperstrip, align 4
  %add = add i32 %20, %21
  %22 = load i32, ptr %height, align 4
  %cmp28 = icmp ugt i32 %add, %22
  br i1 %cmp28, label %if.then30, label %if.else

if.then30:                                        ; preds = %if.end27
  %23 = load i32, ptr %height, align 4
  %24 = load i32, ptr %row, align 4
  %sub = sub i32 %23, %24
  store i32 %sub, ptr %rows_to_write, align 4
  br label %if.end31

if.else:                                          ; preds = %if.end27
  %25 = load i32, ptr @rowsperstrip, align 4
  store i32 %25, ptr %rows_to_write, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then30
  store i32 0, ptr %i_row, align 4
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc, %if.end31
  %26 = load i32, ptr %i_row, align 4
  %27 = load i32, ptr %rows_to_write, align 4
  %div = sdiv i32 %27, 2
  %cmp33 = icmp slt i32 %26, %div
  br i1 %cmp33, label %for.body35, label %for.end

for.body35:                                       ; preds = %for.cond32
  %28 = load ptr, ptr %raster, align 8
  %29 = load i32, ptr %width, align 4
  %30 = load i32, ptr %i_row, align 4
  %mul36 = mul i32 %29, %30
  %idx.ext = zext i32 %mul36 to i64
  %add.ptr = getelementptr inbounds i32, ptr %28, i64 %idx.ext
  store ptr %add.ptr, ptr %top_line, align 8
  %31 = load ptr, ptr %raster, align 8
  %32 = load i32, ptr %width, align 4
  %33 = load i32, ptr %rows_to_write, align 4
  %34 = load i32, ptr %i_row, align 4
  %sub37 = sub nsw i32 %33, %34
  %sub38 = sub nsw i32 %sub37, 1
  %mul39 = mul i32 %32, %sub38
  %idx.ext40 = zext i32 %mul39 to i64
  %add.ptr41 = getelementptr inbounds i32, ptr %31, i64 %idx.ext40
  store ptr %add.ptr41, ptr %bottom_line, align 8
  %35 = load ptr, ptr %wrk_line, align 8
  %36 = load ptr, ptr %top_line, align 8
  %37 = load i32, ptr %width, align 4
  %mul42 = mul i32 4, %37
  call void @_TIFFmemcpy(ptr noundef %35, ptr noundef %36, i32 noundef %mul42)
  %38 = load ptr, ptr %top_line, align 8
  %39 = load ptr, ptr %bottom_line, align 8
  %40 = load i32, ptr %width, align 4
  %mul43 = mul i32 4, %40
  call void @_TIFFmemcpy(ptr noundef %38, ptr noundef %39, i32 noundef %mul43)
  %41 = load ptr, ptr %bottom_line, align 8
  %42 = load ptr, ptr %wrk_line, align 8
  %43 = load i32, ptr %width, align 4
  %mul44 = mul i32 4, %43
  call void @_TIFFmemcpy(ptr noundef %41, ptr noundef %42, i32 noundef %mul44)
  br label %for.inc

for.inc:                                          ; preds = %for.body35
  %44 = load i32, ptr %i_row, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, ptr %i_row, align 4
  br label %for.cond32, !llvm.loop !14

for.end:                                          ; preds = %for.cond32
  %45 = load ptr, ptr %out.addr, align 8
  %46 = load i32, ptr %row, align 4
  %47 = load i32, ptr @rowsperstrip, align 4
  %div45 = udiv i32 %46, %47
  %48 = load ptr, ptr %raster, align 8
  %49 = load i32, ptr %rows_to_write, align 4
  %mul46 = mul nsw i32 4, %49
  %50 = load i32, ptr %width, align 4
  %mul47 = mul i32 %mul46, %50
  %call48 = call i32 @TIFFWriteEncodedStrip(ptr noundef %45, i32 noundef %div45, ptr noundef %48, i32 noundef %mul47)
  %cmp49 = icmp eq i32 %call48, -1
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %for.end
  store i32 0, ptr %ok, align 4
  br label %for.end55

if.end52:                                         ; preds = %for.end
  br label %for.inc53

for.inc53:                                        ; preds = %if.end52
  %51 = load i32, ptr @rowsperstrip, align 4
  %52 = load i32, ptr %row, align 4
  %add54 = add i32 %52, %51
  store i32 %add54, ptr %row, align 4
  br label %for.cond, !llvm.loop !15

for.end55:                                        ; preds = %if.then51, %if.then26, %land.end
  %53 = load ptr, ptr %raster, align 8
  call void @_TIFFfree(ptr noundef %53)
  %54 = load ptr, ptr %wrk_line, align 8
  call void @_TIFFfree(ptr noundef %54)
  %55 = load i32, ptr %ok, align 4
  store i32 %55, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end55, %if.then9, %if.then
  %56 = load i32, ptr %retval, align 4
  ret i32 %56
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @cvt_whole_image(ptr noundef %in, ptr noundef %out) #0 {
entry:
  %retval = alloca i32, align 4
  %in.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %raster = alloca ptr, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %row = alloca i32, align 4
  %wrk_line = alloca ptr, align 8
  %top_line = alloca ptr, align 8
  %bottom_line = alloca ptr, align 8
  %raster_strip = alloca ptr, align 8
  %rows_to_write = alloca i32, align 4
  store ptr %in, ptr %in.addr, align 8
  store ptr %out, ptr %out.addr, align 8
  %0 = load ptr, ptr %in.addr, align 8
  %call = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %0, i32 noundef 256, ptr noundef %width)
  %1 = load ptr, ptr %in.addr, align 8
  %call1 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %1, i32 noundef 257, ptr noundef %height)
  %2 = load ptr, ptr %out.addr, align 8
  %3 = load i32, ptr @rowsperstrip, align 4
  %call2 = call i32 @TIFFDefaultStripSize(ptr noundef %2, i32 noundef %3)
  store i32 %call2, ptr @rowsperstrip, align 4
  %4 = load ptr, ptr %out.addr, align 8
  %5 = load i32, ptr @rowsperstrip, align 4
  %call3 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %4, i32 noundef 278, i32 noundef %5)
  %6 = load i32, ptr %width, align 4
  %7 = load i32, ptr %height, align 4
  %mul = mul i32 %6, %7
  %conv = zext i32 %mul to i64
  %mul4 = mul i64 %conv, 4
  %conv5 = trunc i64 %mul4 to i32
  %call6 = call ptr @_TIFFmalloc(i32 noundef %conv5)
  store ptr %call6, ptr %raster, align 8
  %8 = load ptr, ptr %raster, align 8
  %cmp = icmp eq ptr %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %in.addr, align 8
  %call8 = call ptr @TIFFFileName(ptr noundef %9)
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call8, ptr noundef @.str.8)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %10 = load ptr, ptr %in.addr, align 8
  %11 = load i32, ptr %width, align 4
  %12 = load i32, ptr %height, align 4
  %13 = load ptr, ptr %raster, align 8
  %call9 = call i32 @TIFFReadRGBAImage(ptr noundef %10, i32 noundef %11, i32 noundef %12, ptr noundef %13, i32 noundef 0)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end
  %14 = load ptr, ptr %raster, align 8
  call void @_TIFFfree(ptr noundef %14)
  store i32 0, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end
  %15 = load i32, ptr %width, align 4
  %conv12 = zext i32 %15 to i64
  %mul13 = mul i64 %conv12, 4
  %conv14 = trunc i64 %mul13 to i32
  %call15 = call ptr @_TIFFmalloc(i32 noundef %conv14)
  store ptr %call15, ptr %wrk_line, align 8
  %16 = load ptr, ptr %wrk_line, align 8
  %cmp16 = icmp eq ptr %16, null
  br i1 %cmp16, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end11
  %17 = load ptr, ptr %in.addr, align 8
  %call19 = call ptr @TIFFFileName(ptr noundef %17)
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call19, ptr noundef @.str.9)
  store i32 0, ptr %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.end11
  store i32 0, ptr %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end20
  %18 = load i32, ptr %row, align 4
  %19 = load i32, ptr %height, align 4
  %div = udiv i32 %19, 2
  %cmp21 = icmp ult i32 %18, %div
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load ptr, ptr %raster, align 8
  %21 = load i32, ptr %width, align 4
  %22 = load i32, ptr %row, align 4
  %mul23 = mul i32 %21, %22
  %idx.ext = zext i32 %mul23 to i64
  %add.ptr = getelementptr inbounds i32, ptr %20, i64 %idx.ext
  store ptr %add.ptr, ptr %top_line, align 8
  %23 = load ptr, ptr %raster, align 8
  %24 = load i32, ptr %width, align 4
  %25 = load i32, ptr %height, align 4
  %26 = load i32, ptr %row, align 4
  %sub = sub i32 %25, %26
  %sub24 = sub i32 %sub, 1
  %mul25 = mul i32 %24, %sub24
  %idx.ext26 = zext i32 %mul25 to i64
  %add.ptr27 = getelementptr inbounds i32, ptr %23, i64 %idx.ext26
  store ptr %add.ptr27, ptr %bottom_line, align 8
  %27 = load ptr, ptr %wrk_line, align 8
  %28 = load ptr, ptr %top_line, align 8
  %29 = load i32, ptr %width, align 4
  %mul28 = mul i32 4, %29
  call void @_TIFFmemcpy(ptr noundef %27, ptr noundef %28, i32 noundef %mul28)
  %30 = load ptr, ptr %top_line, align 8
  %31 = load ptr, ptr %bottom_line, align 8
  %32 = load i32, ptr %width, align 4
  %mul29 = mul i32 4, %32
  call void @_TIFFmemcpy(ptr noundef %30, ptr noundef %31, i32 noundef %mul29)
  %33 = load ptr, ptr %bottom_line, align 8
  %34 = load ptr, ptr %wrk_line, align 8
  %35 = load i32, ptr %width, align 4
  %mul30 = mul i32 4, %35
  call void @_TIFFmemcpy(ptr noundef %33, ptr noundef %34, i32 noundef %mul30)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i32, ptr %row, align 4
  %inc = add i32 %36, 1
  store i32 %inc, ptr %row, align 4
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  %37 = load ptr, ptr %wrk_line, align 8
  call void @_TIFFfree(ptr noundef %37)
  store i32 0, ptr %row, align 4
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc51, %for.end
  %38 = load i32, ptr %row, align 4
  %39 = load i32, ptr %height, align 4
  %cmp32 = icmp ult i32 %38, %39
  br i1 %cmp32, label %for.body34, label %for.end53

for.body34:                                       ; preds = %for.cond31
  %40 = load ptr, ptr %raster, align 8
  %41 = load i32, ptr %row, align 4
  %42 = load i32, ptr %width, align 4
  %mul35 = mul i32 %41, %42
  %idx.ext36 = zext i32 %mul35 to i64
  %add.ptr37 = getelementptr inbounds i32, ptr %40, i64 %idx.ext36
  store ptr %add.ptr37, ptr %raster_strip, align 8
  %43 = load i32, ptr %row, align 4
  %44 = load i32, ptr @rowsperstrip, align 4
  %add = add i32 %43, %44
  %45 = load i32, ptr %height, align 4
  %cmp38 = icmp ugt i32 %add, %45
  br i1 %cmp38, label %if.then40, label %if.else

if.then40:                                        ; preds = %for.body34
  %46 = load i32, ptr %height, align 4
  %47 = load i32, ptr %row, align 4
  %sub41 = sub i32 %46, %47
  store i32 %sub41, ptr %rows_to_write, align 4
  br label %if.end42

if.else:                                          ; preds = %for.body34
  %48 = load i32, ptr @rowsperstrip, align 4
  store i32 %48, ptr %rows_to_write, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.then40
  %49 = load ptr, ptr %out.addr, align 8
  %50 = load i32, ptr %row, align 4
  %51 = load i32, ptr @rowsperstrip, align 4
  %div43 = udiv i32 %50, %51
  %52 = load ptr, ptr %raster_strip, align 8
  %53 = load i32, ptr %rows_to_write, align 4
  %mul44 = mul nsw i32 4, %53
  %54 = load i32, ptr %width, align 4
  %mul45 = mul i32 %mul44, %54
  %call46 = call i32 @TIFFWriteEncodedStrip(ptr noundef %49, i32 noundef %div43, ptr noundef %52, i32 noundef %mul45)
  %cmp47 = icmp eq i32 %call46, -1
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end42
  %55 = load ptr, ptr %raster, align 8
  call void @_TIFFfree(ptr noundef %55)
  store i32 0, ptr %retval, align 4
  br label %return

if.end50:                                         ; preds = %if.end42
  br label %for.inc51

for.inc51:                                        ; preds = %if.end50
  %56 = load i32, ptr @rowsperstrip, align 4
  %57 = load i32, ptr %row, align 4
  %add52 = add i32 %57, %56
  store i32 %add52, ptr %row, align 4
  br label %for.cond31, !llvm.loop !17

for.end53:                                        ; preds = %for.cond31
  %58 = load ptr, ptr %raster, align 8
  call void @_TIFFfree(ptr noundef %58)
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end53, %if.then49, %if.then18, %if.then10, %if.then
  %59 = load i32, ptr %retval, align 4
  ret i32 %59
}

declare void @TIFFError(ptr noundef, ptr noundef, ...) #1

declare ptr @TIFFFileName(ptr noundef) #1

declare ptr @_TIFFmalloc(i32 noundef) #1

declare i32 @TIFFReadRGBATile(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i32 noundef) #1

declare i32 @TIFFWriteEncodedTile(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare i32 @TIFFComputeTile(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext) #1

declare void @_TIFFfree(ptr noundef) #1

declare i32 @TIFFReadRGBAStrip(ptr noundef, i32 noundef, ptr noundef) #1

declare i32 @TIFFWriteEncodedStrip(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare i32 @TIFFDefaultStripSize(ptr noundef, i32 noundef) #1

declare i32 @TIFFReadRGBAImage(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { noreturn }

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
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
