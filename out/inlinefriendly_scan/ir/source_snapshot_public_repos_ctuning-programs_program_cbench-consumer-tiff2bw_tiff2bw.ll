; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-tiff2bw/tiff2bw.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-tiff2bw/tiff2bw.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.cpTag = type { i16, i16, i32 }

@RED = global i32 71, align 4
@GREEN = global i32 150, align 4
@BLUE = global i32 28, align 4
@.str = private unnamed_addr constant [11 x i8] c"c:r:R:G:B:\00", align 1
@optarg = external global ptr, align 8
@optind = external global i32, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@__stderrp = external global ptr, align 8
@.str.2 = private unnamed_addr constant [62 x i8] c"%s: Bad photometric; can only handle RGB and Palette images.\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"%s: Bad samples/pixel %u.\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c" %s: Sorry, only handle 8-bit samples.\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@compression = internal global i16 -1, align 2
@quality = internal global i32 75, align 4
@jpegcolormode = internal global i32 1, align 4
@predictor = internal global i16 0, align 2
@.str.6 = private unnamed_addr constant [18 x i8] c"B&W version of %s\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"tiff2bw\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"usage: tiff2bw [options] input.tif output.tif\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"where options are:\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c" -R %\09\09use #% from red channel\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c" -G %\09\09use #% from green channel\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c" -B %\09\09use #% from blue channel\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [48 x i8] c" -r #\09\09make each strip have no more than # rows\00", align 1
@.str.15 = private unnamed_addr constant [64 x i8] c" -c lzw[:opts]\09compress output with Lempel-Ziv & Welch encoding\00", align 1
@.str.16 = private unnamed_addr constant [70 x i8] c"               (no longer supported due to Unisys patent enforcement)\00", align 1
@.str.17 = private unnamed_addr constant [53 x i8] c" -c zip[:opts]\09compress output with deflate encoding\00", align 1
@.str.18 = private unnamed_addr constant [52 x i8] c" -c packbits\09compress output with packbits encoding\00", align 1
@.str.19 = private unnamed_addr constant [58 x i8] c" -c g3[:opts]\09compress output with CCITT Group 3 encoding\00", align 1
@.str.20 = private unnamed_addr constant [52 x i8] c" -c g4\09\09compress output with CCITT Group 4 encoding\00", align 1
@.str.21 = private unnamed_addr constant [48 x i8] c" -c none\09use no compression algorithm on output\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"LZW and deflate options:\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c" #\09\09set predictor value\00", align 1
@.str.24 = private unnamed_addr constant [75 x i8] c"For example, -c lzw:2 to get LZW-encoded data with horizontal differencing\00", align 1
@stuff = global [20 x ptr] [ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.13, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr null], align 8
@.str.25 = private unnamed_addr constant [24 x i8] c"Assuming 8-bit colormap\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"packbits\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"jpeg\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"lzw\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"zip\00", align 1
@tags = internal global [16 x %struct.cpTag] [%struct.cpTag { i16 256, i16 1, i32 4 }, %struct.cpTag { i16 257, i16 1, i32 4 }, %struct.cpTag { i16 266, i16 1, i32 3 }, %struct.cpTag { i16 269, i16 1, i32 2 }, %struct.cpTag { i16 271, i16 1, i32 2 }, %struct.cpTag { i16 272, i16 1, i32 2 }, %struct.cpTag { i16 274, i16 1, i32 3 }, %struct.cpTag { i16 282, i16 1, i32 5 }, %struct.cpTag { i16 283, i16 1, i32 5 }, %struct.cpTag { i16 285, i16 1, i32 2 }, %struct.cpTag { i16 286, i16 1, i32 5 }, %struct.cpTag { i16 287, i16 1, i32 5 }, %struct.cpTag { i16 296, i16 1, i32 3 }, %struct.cpTag { i16 297, i16 2, i32 3 }, %struct.cpTag { i16 315, i16 1, i32 2 }, %struct.cpTag { i16 316, i16 1, i32 2 }], align 4
@.str.31 = private unnamed_addr constant [16 x i8] c"Unexpected tag\0A\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main1(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %rowsperstrip = alloca i32, align 4
  %in = alloca ptr, align 8
  %out = alloca ptr, align 8
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %samplesperpixel = alloca i16, align 2
  %bitspersample = alloca i16, align 2
  %config = alloca i16, align 2
  %photometric = alloca i16, align 2
  %red = alloca ptr, align 8
  %green = alloca ptr, align 8
  %blue = alloca ptr, align 8
  %rowsize = alloca i32, align 4
  %row = alloca i32, align 4
  %s = alloca i16, align 2
  %inbuf = alloca ptr, align 8
  %outbuf = alloca ptr, align 8
  %thing = alloca [1024 x i8], align 1
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 -1, ptr %rowsperstrip, align 4
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
    i32 99, label %sw.bb
    i32 114, label %sw.bb2
    i32 82, label %sw.bb4
    i32 71, label %sw.bb6
    i32 66, label %sw.bb10
    i32 63, label %sw.bb14
  ]

sw.bb:                                            ; preds = %while.body
  %3 = load ptr, ptr @optarg, align 8
  %call1 = call i32 @processCompressOptions(ptr noundef %3)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @usage()
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog

sw.bb2:                                           ; preds = %while.body
  %4 = load ptr, ptr @optarg, align 8
  %call3 = call i32 @atoi(ptr noundef %4)
  store i32 %call3, ptr %rowsperstrip, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %while.body
  %5 = load ptr, ptr @optarg, align 8
  %call5 = call i32 @atoi(ptr noundef %5)
  %mul = mul nsw i32 %call5, 255
  %div = sdiv i32 %mul, 100
  store i32 %div, ptr @RED, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %while.body
  %6 = load ptr, ptr @optarg, align 8
  %call7 = call i32 @atoi(ptr noundef %6)
  %mul8 = mul nsw i32 %call7, 255
  %div9 = sdiv i32 %mul8, 100
  store i32 %div9, ptr @GREEN, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %while.body
  %7 = load ptr, ptr @optarg, align 8
  %call11 = call i32 @atoi(ptr noundef %7)
  %mul12 = mul nsw i32 %call11, 255
  %div13 = sdiv i32 %mul12, 100
  store i32 %div13, ptr @BLUE, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %while.body
  call void @usage()
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb14, %while.body, %sw.bb10, %sw.bb6, %sw.bb4, %sw.bb2, %if.end
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %8 = load i32, ptr %argc.addr, align 4
  %9 = load i32, ptr @optind, align 4
  %sub = sub nsw i32 %8, %9
  %cmp15 = icmp slt i32 %sub, 2
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %while.end
  call void @usage()
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %while.end
  %10 = load ptr, ptr %argv.addr, align 8
  %11 = load i32, ptr @optind, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %10, i64 %idxprom
  %12 = load ptr, ptr %arrayidx, align 8
  %call18 = call ptr @TIFFOpen(ptr noundef %12, ptr noundef @.str.1)
  store ptr %call18, ptr %in, align 8
  %13 = load ptr, ptr %in, align 8
  %cmp19 = icmp eq ptr %13, null
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end17
  store i32 -1, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.end17
  store i16 0, ptr %photometric, align 2
  %14 = load ptr, ptr %in, align 8
  %call22 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %14, i32 noundef 262, ptr noundef %photometric)
  %15 = load i16, ptr %photometric, align 2
  %conv = zext i16 %15 to i32
  %cmp23 = icmp ne i32 %conv, 2
  br i1 %cmp23, label %land.lhs.true, label %if.end32

land.lhs.true:                                    ; preds = %if.end21
  %16 = load i16, ptr %photometric, align 2
  %conv25 = zext i16 %16 to i32
  %cmp26 = icmp ne i32 %conv25, 3
  br i1 %cmp26, label %if.then28, label %if.end32

if.then28:                                        ; preds = %land.lhs.true
  %17 = load ptr, ptr @__stderrp, align 8
  %18 = load ptr, ptr %argv.addr, align 8
  %19 = load i32, ptr @optind, align 4
  %idxprom29 = sext i32 %19 to i64
  %arrayidx30 = getelementptr inbounds ptr, ptr %18, i64 %idxprom29
  %20 = load ptr, ptr %arrayidx30, align 8
  %call31 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.2, ptr noundef %20)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %land.lhs.true, %if.end21
  %21 = load ptr, ptr %in, align 8
  %call33 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %21, i32 noundef 277, ptr noundef %samplesperpixel)
  %22 = load i16, ptr %samplesperpixel, align 2
  %conv34 = zext i16 %22 to i32
  %cmp35 = icmp ne i32 %conv34, 1
  br i1 %cmp35, label %land.lhs.true37, label %if.end46

land.lhs.true37:                                  ; preds = %if.end32
  %23 = load i16, ptr %samplesperpixel, align 2
  %conv38 = zext i16 %23 to i32
  %cmp39 = icmp ne i32 %conv38, 3
  br i1 %cmp39, label %if.then41, label %if.end46

if.then41:                                        ; preds = %land.lhs.true37
  %24 = load ptr, ptr @__stderrp, align 8
  %25 = load ptr, ptr %argv.addr, align 8
  %26 = load i32, ptr @optind, align 4
  %idxprom42 = sext i32 %26 to i64
  %arrayidx43 = getelementptr inbounds ptr, ptr %25, i64 %idxprom42
  %27 = load ptr, ptr %arrayidx43, align 8
  %28 = load i16, ptr %samplesperpixel, align 2
  %conv44 = zext i16 %28 to i32
  %call45 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef @.str.3, ptr noundef %27, i32 noundef %conv44)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end46:                                         ; preds = %land.lhs.true37, %if.end32
  %29 = load ptr, ptr %in, align 8
  %call47 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %29, i32 noundef 258, ptr noundef %bitspersample)
  %30 = load i16, ptr %bitspersample, align 2
  %conv48 = zext i16 %30 to i32
  %cmp49 = icmp ne i32 %conv48, 8
  br i1 %cmp49, label %if.then51, label %if.end55

if.then51:                                        ; preds = %if.end46
  %31 = load ptr, ptr @__stderrp, align 8
  %32 = load ptr, ptr %argv.addr, align 8
  %33 = load i32, ptr @optind, align 4
  %idxprom52 = sext i32 %33 to i64
  %arrayidx53 = getelementptr inbounds ptr, ptr %32, i64 %idxprom52
  %34 = load ptr, ptr %arrayidx53, align 8
  %call54 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef @.str.4, ptr noundef %34)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end55:                                         ; preds = %if.end46
  %35 = load ptr, ptr %in, align 8
  %call56 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %35, i32 noundef 256, ptr noundef %w)
  %36 = load ptr, ptr %in, align 8
  %call57 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %36, i32 noundef 257, ptr noundef %h)
  %37 = load ptr, ptr %in, align 8
  %call58 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %37, i32 noundef 284, ptr noundef %config)
  %38 = load ptr, ptr %argv.addr, align 8
  %39 = load i32, ptr @optind, align 4
  %add = add nsw i32 %39, 1
  %idxprom59 = sext i32 %add to i64
  %arrayidx60 = getelementptr inbounds ptr, ptr %38, i64 %idxprom59
  %40 = load ptr, ptr %arrayidx60, align 8
  %call61 = call ptr @TIFFOpen(ptr noundef %40, ptr noundef @.str.5)
  store ptr %call61, ptr %out, align 8
  %41 = load ptr, ptr %out, align 8
  %cmp62 = icmp eq ptr %41, null
  br i1 %cmp62, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.end55
  store i32 -1, ptr %retval, align 4
  br label %return

if.end65:                                         ; preds = %if.end55
  %42 = load ptr, ptr %in, align 8
  %43 = load ptr, ptr %out, align 8
  call void @cpTags(ptr noundef %42, ptr noundef %43)
  %44 = load ptr, ptr %out, align 8
  %call66 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %44, i32 noundef 258, i32 noundef 8)
  %45 = load ptr, ptr %out, align 8
  %call67 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %45, i32 noundef 277, i32 noundef 1)
  %46 = load ptr, ptr %out, align 8
  %call68 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %46, i32 noundef 284, i32 noundef 1)
  %47 = load i16, ptr @compression, align 2
  %conv69 = zext i16 %47 to i32
  %cmp70 = icmp ne i32 %conv69, 65535
  br i1 %cmp70, label %if.then72, label %if.end88

if.then72:                                        ; preds = %if.end65
  %48 = load ptr, ptr %out, align 8
  %49 = load i16, ptr @compression, align 2
  %conv73 = zext i16 %49 to i32
  %call74 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %48, i32 noundef 259, i32 noundef %conv73)
  %50 = load i16, ptr @compression, align 2
  %conv75 = zext i16 %50 to i32
  switch i32 %conv75, label %sw.epilog87 [
    i32 7, label %sw.bb76
    i32 5, label %sw.bb79
    i32 32946, label %sw.bb79
  ]

sw.bb76:                                          ; preds = %if.then72
  %51 = load ptr, ptr %out, align 8
  %52 = load i32, ptr @quality, align 4
  %call77 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %51, i32 noundef 65537, i32 noundef %52)
  %53 = load ptr, ptr %out, align 8
  %54 = load i32, ptr @jpegcolormode, align 4
  %call78 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %53, i32 noundef 65538, i32 noundef %54)
  br label %sw.epilog87

sw.bb79:                                          ; preds = %if.then72, %if.then72
  %55 = load i16, ptr @predictor, align 2
  %conv80 = zext i16 %55 to i32
  %cmp81 = icmp ne i32 %conv80, 0
  br i1 %cmp81, label %if.then83, label %if.end86

if.then83:                                        ; preds = %sw.bb79
  %56 = load ptr, ptr %out, align 8
  %57 = load i16, ptr @predictor, align 2
  %conv84 = zext i16 %57 to i32
  %call85 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %56, i32 noundef 317, i32 noundef %conv84)
  br label %if.end86

if.end86:                                         ; preds = %if.then83, %sw.bb79
  br label %sw.epilog87

sw.epilog87:                                      ; preds = %if.then72, %if.end86, %sw.bb76
  br label %if.end88

if.end88:                                         ; preds = %sw.epilog87, %if.end65
  %58 = load ptr, ptr %out, align 8
  %call89 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %58, i32 noundef 262, i32 noundef 1)
  %arraydecay = getelementptr inbounds [1024 x i8], ptr %thing, i64 0, i64 0
  %59 = load ptr, ptr %argv.addr, align 8
  %60 = load i32, ptr @optind, align 4
  %idxprom90 = sext i32 %60 to i64
  %arrayidx91 = getelementptr inbounds ptr, ptr %59, i64 %idxprom90
  %61 = load ptr, ptr %arrayidx91, align 8
  %call92 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %arraydecay, i32 noundef 0, i64 noundef 1024, ptr noundef @.str.6, ptr noundef %61)
  %62 = load ptr, ptr %out, align 8
  %arraydecay93 = getelementptr inbounds [1024 x i8], ptr %thing, i64 0, i64 0
  %call94 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %62, i32 noundef 270, ptr noundef %arraydecay93)
  %63 = load ptr, ptr %out, align 8
  %call95 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %63, i32 noundef 305, ptr noundef @.str.7)
  %64 = load ptr, ptr %out, align 8
  %call96 = call i32 @TIFFScanlineSize(ptr noundef %64)
  %call97 = call ptr @_TIFFmalloc(i32 noundef %call96)
  store ptr %call97, ptr %outbuf, align 8
  %65 = load ptr, ptr %out, align 8
  %66 = load ptr, ptr %out, align 8
  %67 = load i32, ptr %rowsperstrip, align 4
  %call98 = call i32 @TIFFDefaultStripSize(ptr noundef %66, i32 noundef %67)
  %call99 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %65, i32 noundef 278, i32 noundef %call98)
  %68 = load i16, ptr %photometric, align 2
  %conv100 = zext i16 %68 to i32
  %shl = shl i32 %conv100, 8
  %69 = load i16, ptr %config, align 2
  %conv101 = zext i16 %69 to i32
  %or = or i32 %shl, %conv101
  switch i32 %or, label %sw.epilog214 [
    i32 769, label %sw.bb102
    i32 770, label %sw.bb102
    i32 513, label %sw.bb158
    i32 514, label %sw.bb178
  ]

sw.bb102:                                         ; preds = %if.end88, %if.end88
  %70 = load ptr, ptr %in, align 8
  %call103 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %70, i32 noundef 320, ptr noundef %red, ptr noundef %green, ptr noundef %blue)
  %71 = load ptr, ptr %in, align 8
  %72 = load i16, ptr %bitspersample, align 2
  %conv104 = zext i16 %72 to i32
  %shl105 = shl i32 1, %conv104
  %73 = load ptr, ptr %red, align 8
  %74 = load ptr, ptr %green, align 8
  %75 = load ptr, ptr %blue, align 8
  %call106 = call i32 @checkcmap(ptr noundef %71, i32 noundef %shl105, ptr noundef %73, ptr noundef %74, ptr noundef %75)
  %cmp107 = icmp eq i32 %call106, 16
  br i1 %cmp107, label %if.then109, label %if.end139

if.then109:                                       ; preds = %sw.bb102
  %76 = load i16, ptr %bitspersample, align 2
  %conv110 = zext i16 %76 to i32
  %shl111 = shl i32 1, %conv110
  %sub112 = sub nsw i32 %shl111, 1
  store i32 %sub112, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then109
  %77 = load i32, ptr %i, align 4
  %cmp113 = icmp sge i32 %77, 0
  br i1 %cmp113, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %78 = load ptr, ptr %red, align 8
  %79 = load i32, ptr %i, align 4
  %idxprom115 = sext i32 %79 to i64
  %arrayidx116 = getelementptr inbounds i16, ptr %78, i64 %idxprom115
  %80 = load i16, ptr %arrayidx116, align 2
  %conv117 = zext i16 %80 to i64
  %mul118 = mul nsw i64 %conv117, 255
  %div119 = sdiv i64 %mul118, 65535
  %conv120 = trunc i64 %div119 to i16
  %81 = load ptr, ptr %red, align 8
  %82 = load i32, ptr %i, align 4
  %idxprom121 = sext i32 %82 to i64
  %arrayidx122 = getelementptr inbounds i16, ptr %81, i64 %idxprom121
  store i16 %conv120, ptr %arrayidx122, align 2
  %83 = load ptr, ptr %green, align 8
  %84 = load i32, ptr %i, align 4
  %idxprom123 = sext i32 %84 to i64
  %arrayidx124 = getelementptr inbounds i16, ptr %83, i64 %idxprom123
  %85 = load i16, ptr %arrayidx124, align 2
  %conv125 = zext i16 %85 to i64
  %mul126 = mul nsw i64 %conv125, 255
  %div127 = sdiv i64 %mul126, 65535
  %conv128 = trunc i64 %div127 to i16
  %86 = load ptr, ptr %green, align 8
  %87 = load i32, ptr %i, align 4
  %idxprom129 = sext i32 %87 to i64
  %arrayidx130 = getelementptr inbounds i16, ptr %86, i64 %idxprom129
  store i16 %conv128, ptr %arrayidx130, align 2
  %88 = load ptr, ptr %blue, align 8
  %89 = load i32, ptr %i, align 4
  %idxprom131 = sext i32 %89 to i64
  %arrayidx132 = getelementptr inbounds i16, ptr %88, i64 %idxprom131
  %90 = load i16, ptr %arrayidx132, align 2
  %conv133 = zext i16 %90 to i64
  %mul134 = mul nsw i64 %conv133, 255
  %div135 = sdiv i64 %mul134, 65535
  %conv136 = trunc i64 %div135 to i16
  %91 = load ptr, ptr %blue, align 8
  %92 = load i32, ptr %i, align 4
  %idxprom137 = sext i32 %92 to i64
  %arrayidx138 = getelementptr inbounds i16, ptr %91, i64 %idxprom137
  store i16 %conv136, ptr %arrayidx138, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %93 = load i32, ptr %i, align 4
  %dec = add nsw i32 %93, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  br label %if.end139

if.end139:                                        ; preds = %for.end, %sw.bb102
  %94 = load ptr, ptr %in, align 8
  %call140 = call i32 @TIFFScanlineSize(ptr noundef %94)
  %call141 = call ptr @_TIFFmalloc(i32 noundef %call140)
  store ptr %call141, ptr %inbuf, align 8
  store i32 0, ptr %row, align 4
  br label %for.cond142

for.cond142:                                      ; preds = %for.inc156, %if.end139
  %95 = load i32, ptr %row, align 4
  %96 = load i32, ptr %h, align 4
  %cmp143 = icmp ult i32 %95, %96
  br i1 %cmp143, label %for.body145, label %for.end157

for.body145:                                      ; preds = %for.cond142
  %97 = load ptr, ptr %in, align 8
  %98 = load ptr, ptr %inbuf, align 8
  %99 = load i32, ptr %row, align 4
  %call146 = call i32 @TIFFReadScanline(ptr noundef %97, ptr noundef %98, i32 noundef %99, i16 noundef zeroext 0)
  %cmp147 = icmp slt i32 %call146, 0
  br i1 %cmp147, label %if.then149, label %if.end150

if.then149:                                       ; preds = %for.body145
  br label %for.end157

if.end150:                                        ; preds = %for.body145
  %100 = load ptr, ptr %outbuf, align 8
  %101 = load ptr, ptr %inbuf, align 8
  %102 = load i32, ptr %w, align 4
  %103 = load ptr, ptr %red, align 8
  %104 = load ptr, ptr %green, align 8
  %105 = load ptr, ptr %blue, align 8
  call void @compresspalette(ptr noundef %100, ptr noundef %101, i32 noundef %102, ptr noundef %103, ptr noundef %104, ptr noundef %105)
  %106 = load ptr, ptr %out, align 8
  %107 = load ptr, ptr %outbuf, align 8
  %108 = load i32, ptr %row, align 4
  %call151 = call i32 @TIFFWriteScanline(ptr noundef %106, ptr noundef %107, i32 noundef %108, i16 noundef zeroext 0)
  %cmp152 = icmp slt i32 %call151, 0
  br i1 %cmp152, label %if.then154, label %if.end155

if.then154:                                       ; preds = %if.end150
  br label %for.end157

if.end155:                                        ; preds = %if.end150
  br label %for.inc156

for.inc156:                                       ; preds = %if.end155
  %109 = load i32, ptr %row, align 4
  %inc = add i32 %109, 1
  store i32 %inc, ptr %row, align 4
  br label %for.cond142, !llvm.loop !9

for.end157:                                       ; preds = %if.then154, %if.then149, %for.cond142
  br label %sw.epilog214

sw.bb158:                                         ; preds = %if.end88
  %110 = load ptr, ptr %in, align 8
  %call159 = call i32 @TIFFScanlineSize(ptr noundef %110)
  %call160 = call ptr @_TIFFmalloc(i32 noundef %call159)
  store ptr %call160, ptr %inbuf, align 8
  store i32 0, ptr %row, align 4
  br label %for.cond161

for.cond161:                                      ; preds = %for.inc175, %sw.bb158
  %111 = load i32, ptr %row, align 4
  %112 = load i32, ptr %h, align 4
  %cmp162 = icmp ult i32 %111, %112
  br i1 %cmp162, label %for.body164, label %for.end177

for.body164:                                      ; preds = %for.cond161
  %113 = load ptr, ptr %in, align 8
  %114 = load ptr, ptr %inbuf, align 8
  %115 = load i32, ptr %row, align 4
  %call165 = call i32 @TIFFReadScanline(ptr noundef %113, ptr noundef %114, i32 noundef %115, i16 noundef zeroext 0)
  %cmp166 = icmp slt i32 %call165, 0
  br i1 %cmp166, label %if.then168, label %if.end169

if.then168:                                       ; preds = %for.body164
  br label %for.end177

if.end169:                                        ; preds = %for.body164
  %116 = load ptr, ptr %outbuf, align 8
  %117 = load ptr, ptr %inbuf, align 8
  %118 = load i32, ptr %w, align 4
  call void @compresscontig(ptr noundef %116, ptr noundef %117, i32 noundef %118)
  %119 = load ptr, ptr %out, align 8
  %120 = load ptr, ptr %outbuf, align 8
  %121 = load i32, ptr %row, align 4
  %call170 = call i32 @TIFFWriteScanline(ptr noundef %119, ptr noundef %120, i32 noundef %121, i16 noundef zeroext 0)
  %cmp171 = icmp slt i32 %call170, 0
  br i1 %cmp171, label %if.then173, label %if.end174

if.then173:                                       ; preds = %if.end169
  br label %for.end177

if.end174:                                        ; preds = %if.end169
  br label %for.inc175

for.inc175:                                       ; preds = %if.end174
  %122 = load i32, ptr %row, align 4
  %inc176 = add i32 %122, 1
  store i32 %inc176, ptr %row, align 4
  br label %for.cond161, !llvm.loop !10

for.end177:                                       ; preds = %if.then173, %if.then168, %for.cond161
  br label %sw.epilog214

sw.bb178:                                         ; preds = %if.end88
  %123 = load ptr, ptr %in, align 8
  %call179 = call i32 @TIFFScanlineSize(ptr noundef %123)
  store i32 %call179, ptr %rowsize, align 4
  %124 = load i32, ptr %rowsize, align 4
  %mul180 = mul nsw i32 3, %124
  %call181 = call ptr @_TIFFmalloc(i32 noundef %mul180)
  store ptr %call181, ptr %inbuf, align 8
  store i32 0, ptr %row, align 4
  br label %for.cond182

for.cond182:                                      ; preds = %for.inc211, %sw.bb178
  %125 = load i32, ptr %row, align 4
  %126 = load i32, ptr %h, align 4
  %cmp183 = icmp ult i32 %125, %126
  br i1 %cmp183, label %for.body185, label %for.end213

for.body185:                                      ; preds = %for.cond182
  store i16 0, ptr %s, align 2
  br label %for.cond186

for.cond186:                                      ; preds = %for.inc198, %for.body185
  %127 = load i16, ptr %s, align 2
  %conv187 = zext i16 %127 to i32
  %cmp188 = icmp slt i32 %conv187, 3
  br i1 %cmp188, label %for.body190, label %for.end200

for.body190:                                      ; preds = %for.cond186
  %128 = load ptr, ptr %in, align 8
  %129 = load ptr, ptr %inbuf, align 8
  %130 = load i16, ptr %s, align 2
  %conv191 = zext i16 %130 to i32
  %131 = load i32, ptr %rowsize, align 4
  %mul192 = mul nsw i32 %conv191, %131
  %idx.ext = sext i32 %mul192 to i64
  %add.ptr = getelementptr inbounds i8, ptr %129, i64 %idx.ext
  %132 = load i32, ptr %row, align 4
  %133 = load i16, ptr %s, align 2
  %call193 = call i32 @TIFFReadScanline(ptr noundef %128, ptr noundef %add.ptr, i32 noundef %132, i16 noundef zeroext %133)
  %cmp194 = icmp slt i32 %call193, 0
  br i1 %cmp194, label %if.then196, label %if.end197

if.then196:                                       ; preds = %for.body190
  store i32 -1, ptr %retval, align 4
  br label %return

if.end197:                                        ; preds = %for.body190
  br label %for.inc198

for.inc198:                                       ; preds = %if.end197
  %134 = load i16, ptr %s, align 2
  %inc199 = add i16 %134, 1
  store i16 %inc199, ptr %s, align 2
  br label %for.cond186, !llvm.loop !11

for.end200:                                       ; preds = %for.cond186
  %135 = load ptr, ptr %outbuf, align 8
  %136 = load ptr, ptr %inbuf, align 8
  %137 = load ptr, ptr %inbuf, align 8
  %138 = load i32, ptr %rowsize, align 4
  %idx.ext201 = sext i32 %138 to i64
  %add.ptr202 = getelementptr inbounds i8, ptr %137, i64 %idx.ext201
  %139 = load ptr, ptr %inbuf, align 8
  %140 = load i32, ptr %rowsize, align 4
  %mul203 = mul nsw i32 2, %140
  %idx.ext204 = sext i32 %mul203 to i64
  %add.ptr205 = getelementptr inbounds i8, ptr %139, i64 %idx.ext204
  %141 = load i32, ptr %w, align 4
  call void @compresssep(ptr noundef %135, ptr noundef %136, ptr noundef %add.ptr202, ptr noundef %add.ptr205, i32 noundef %141)
  %142 = load ptr, ptr %out, align 8
  %143 = load ptr, ptr %outbuf, align 8
  %144 = load i32, ptr %row, align 4
  %call206 = call i32 @TIFFWriteScanline(ptr noundef %142, ptr noundef %143, i32 noundef %144, i16 noundef zeroext 0)
  %cmp207 = icmp slt i32 %call206, 0
  br i1 %cmp207, label %if.then209, label %if.end210

if.then209:                                       ; preds = %for.end200
  br label %for.end213

if.end210:                                        ; preds = %for.end200
  br label %for.inc211

for.inc211:                                       ; preds = %if.end210
  %145 = load i32, ptr %row, align 4
  %inc212 = add i32 %145, 1
  store i32 %inc212, ptr %row, align 4
  br label %for.cond182, !llvm.loop !12

for.end213:                                       ; preds = %if.then209, %for.cond182
  br label %sw.epilog214

sw.epilog214:                                     ; preds = %if.end88, %for.end213, %for.end177, %for.end157
  %146 = load ptr, ptr %in, align 8
  call void @TIFFClose(ptr noundef %146)
  %147 = load ptr, ptr %out, align 8
  call void @TIFFClose(ptr noundef %147)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog214, %if.then196, %if.then64, %if.then51, %if.then41, %if.then28, %if.then20
  %148 = load i32, ptr %retval, align 4
  ret i32 %148
}

declare i32 @"\01_getopt"(i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @processCompressOptions(ptr noundef %opt) #0 {
entry:
  %retval = alloca i32, align 4
  %opt.addr = alloca ptr, align 8
  %cp = alloca ptr, align 8
  %cp24 = alloca ptr, align 8
  %cp37 = alloca ptr, align 8
  store ptr %opt, ptr %opt.addr, align 8
  %0 = load ptr, ptr %opt.addr, align 8
  %call = call i32 @strcmp(ptr noundef %0, ptr noundef @.str.26)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i16 1, ptr @compression, align 2
  br label %if.end50

if.else:                                          ; preds = %entry
  %1 = load ptr, ptr %opt.addr, align 8
  %call1 = call i32 @strcmp(ptr noundef %1, ptr noundef @.str.27)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  store i16 -32763, ptr @compression, align 2
  br label %if.end49

if.else4:                                         ; preds = %if.else
  %2 = load ptr, ptr %opt.addr, align 8
  %call5 = call i32 @strncmp(ptr noundef %2, ptr noundef @.str.28, i64 noundef 4)
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.else19

if.then7:                                         ; preds = %if.else4
  %3 = load ptr, ptr %opt.addr, align 8
  %call8 = call ptr @strchr(ptr noundef %3, i32 noundef 58)
  store ptr %call8, ptr %cp, align 8
  %4 = load ptr, ptr %cp, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then7
  %5 = load ptr, ptr %cp, align 8
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 1
  %6 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %call9 = call i32 @isdigit(i32 noundef %conv) #4
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then11, label %if.end

if.then11:                                        ; preds = %land.lhs.true
  %7 = load ptr, ptr %cp, align 8
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 1
  %call12 = call i32 @atoi(ptr noundef %add.ptr)
  store i32 %call12, ptr @quality, align 4
  br label %if.end

if.end:                                           ; preds = %if.then11, %land.lhs.true, %if.then7
  %8 = load ptr, ptr %cp, align 8
  %tobool13 = icmp ne ptr %8, null
  br i1 %tobool13, label %land.lhs.true14, label %if.end18

land.lhs.true14:                                  ; preds = %if.end
  %9 = load ptr, ptr %cp, align 8
  %call15 = call ptr @strchr(ptr noundef %9, i32 noundef 114)
  %tobool16 = icmp ne ptr %call15, null
  br i1 %tobool16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %land.lhs.true14
  store i32 0, ptr @jpegcolormode, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %land.lhs.true14, %if.end
  store i16 7, ptr @compression, align 2
  br label %if.end48

if.else19:                                        ; preds = %if.else4
  %10 = load ptr, ptr %opt.addr, align 8
  %call20 = call i32 @strncmp(ptr noundef %10, ptr noundef @.str.29, i64 noundef 3)
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then23, label %if.else32

if.then23:                                        ; preds = %if.else19
  %11 = load ptr, ptr %opt.addr, align 8
  %call25 = call ptr @strchr(ptr noundef %11, i32 noundef 58)
  store ptr %call25, ptr %cp24, align 8
  %12 = load ptr, ptr %cp24, align 8
  %tobool26 = icmp ne ptr %12, null
  br i1 %tobool26, label %if.then27, label %if.end31

if.then27:                                        ; preds = %if.then23
  %13 = load ptr, ptr %cp24, align 8
  %add.ptr28 = getelementptr inbounds i8, ptr %13, i64 1
  %call29 = call i32 @atoi(ptr noundef %add.ptr28)
  %conv30 = trunc i32 %call29 to i16
  store i16 %conv30, ptr @predictor, align 2
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %if.then23
  store i16 5, ptr @compression, align 2
  br label %if.end47

if.else32:                                        ; preds = %if.else19
  %14 = load ptr, ptr %opt.addr, align 8
  %call33 = call i32 @strncmp(ptr noundef %14, ptr noundef @.str.30, i64 noundef 3)
  %cmp34 = icmp eq i32 %call33, 0
  br i1 %cmp34, label %if.then36, label %if.else45

if.then36:                                        ; preds = %if.else32
  %15 = load ptr, ptr %opt.addr, align 8
  %call38 = call ptr @strchr(ptr noundef %15, i32 noundef 58)
  store ptr %call38, ptr %cp37, align 8
  %16 = load ptr, ptr %cp37, align 8
  %tobool39 = icmp ne ptr %16, null
  br i1 %tobool39, label %if.then40, label %if.end44

if.then40:                                        ; preds = %if.then36
  %17 = load ptr, ptr %cp37, align 8
  %add.ptr41 = getelementptr inbounds i8, ptr %17, i64 1
  %call42 = call i32 @atoi(ptr noundef %add.ptr41)
  %conv43 = trunc i32 %call42 to i16
  store i16 %conv43, ptr @predictor, align 2
  br label %if.end44

if.end44:                                         ; preds = %if.then40, %if.then36
  store i16 -32590, ptr @compression, align 2
  br label %if.end46

if.else45:                                        ; preds = %if.else32
  store i32 0, ptr %retval, align 4
  br label %return

if.end46:                                         ; preds = %if.end44
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.end31
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.end18
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.then3
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end50, %if.else45
  %18 = load i32, ptr %retval, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @usage() #0 {
entry:
  %buf = alloca [1024 x i8], align 1
  %i = alloca i32, align 4
  %0 = load ptr, ptr @__stderrp, align 8
  %arraydecay = getelementptr inbounds [1024 x i8], ptr %buf, i64 0, i64 0
  call void @setbuf(ptr noundef %0, ptr noundef %arraydecay)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [20 x ptr], ptr @stuff, i64 0, i64 %idxprom
  %2 = load ptr, ptr %arrayidx, align 8
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr @__stderrp, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [20 x ptr], ptr @stuff, i64 0, i64 %idxprom1
  %5 = load ptr, ptr %arrayidx2, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.32, ptr noundef %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  call void @exit(i32 noundef 1) #5
  unreachable
}

declare i32 @atoi(ptr noundef) #1

declare ptr @TIFFOpen(ptr noundef, ptr noundef) #1

declare i32 @TIFFGetField(ptr noundef, i32 noundef, ...) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @cpTags(ptr noundef %in, ptr noundef %out) #0 {
entry:
  %in.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %in, ptr %in.addr, align 8
  store ptr %out, ptr %out.addr, align 8
  store ptr @tags, ptr %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %p, align 8
  %cmp = icmp ult ptr %0, getelementptr inbounds ([16 x %struct.cpTag], ptr @tags, i64 1, i64 0)
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %in.addr, align 8
  %2 = load ptr, ptr %out.addr, align 8
  %3 = load ptr, ptr %p, align 8
  %tag = getelementptr inbounds %struct.cpTag, ptr %3, i32 0, i32 0
  %4 = load i16, ptr %tag, align 4
  %5 = load ptr, ptr %p, align 8
  %count = getelementptr inbounds %struct.cpTag, ptr %5, i32 0, i32 1
  %6 = load i16, ptr %count, align 2
  %7 = load ptr, ptr %p, align 8
  %type = getelementptr inbounds %struct.cpTag, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %type, align 4
  call void @cpTag(ptr noundef %1, ptr noundef %2, i16 noundef zeroext %4, i16 noundef zeroext %6, i32 noundef %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds %struct.cpTag, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @TIFFSetField(ptr noundef, i32 noundef, ...) #1

declare i32 @__sprintf_chk(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ...) #1

declare ptr @_TIFFmalloc(i32 noundef) #1

declare i32 @TIFFScanlineSize(ptr noundef) #1

declare i32 @TIFFDefaultStripSize(ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @checkcmap(ptr noundef %tif, i32 noundef %n, ptr noundef %r, ptr noundef %g, ptr noundef %b) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %g.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  store ptr %r, ptr %r.addr, align 8
  store ptr %g, ptr %g.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, ptr %n.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr %n.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %r.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %1, i32 1
  store ptr %incdec.ptr, ptr %r.addr, align 8
  %2 = load i16, ptr %1, align 2
  %conv = zext i16 %2 to i32
  %cmp1 = icmp sge i32 %conv, 256
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %3 = load ptr, ptr %g.addr, align 8
  %incdec.ptr3 = getelementptr inbounds i16, ptr %3, i32 1
  store ptr %incdec.ptr3, ptr %g.addr, align 8
  %4 = load i16, ptr %3, align 2
  %conv4 = zext i16 %4 to i32
  %cmp5 = icmp sge i32 %conv4, 256
  br i1 %cmp5, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %5 = load ptr, ptr %b.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i16, ptr %5, i32 1
  store ptr %incdec.ptr8, ptr %b.addr, align 8
  %6 = load i16, ptr %5, align 2
  %conv9 = zext i16 %6 to i32
  %cmp10 = icmp sge i32 %conv9, 256
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false7, %lor.lhs.false, %while.body
  store i32 16, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false7
  br label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %while.cond
  %7 = load ptr, ptr %tif.addr, align 8
  %call = call ptr @TIFFFileName(ptr noundef %7)
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %call, ptr noundef @.str.25)
  store i32 8, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

declare i32 @TIFFReadScanline(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @compresspalette(ptr noundef %out, ptr noundef %data, i32 noundef %n, ptr noundef %rmap, ptr noundef %gmap, ptr noundef %bmap) #0 {
entry:
  %out.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %rmap.addr = alloca ptr, align 8
  %gmap.addr = alloca ptr, align 8
  %bmap.addr = alloca ptr, align 8
  %v = alloca i32, align 4
  %red = alloca i32, align 4
  %green = alloca i32, align 4
  %blue = alloca i32, align 4
  %ix = alloca i32, align 4
  store ptr %out, ptr %out.addr, align 8
  store ptr %data, ptr %data.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  store ptr %rmap, ptr %rmap.addr, align 8
  store ptr %gmap, ptr %gmap.addr, align 8
  store ptr %bmap, ptr %bmap.addr, align 8
  %0 = load i32, ptr @RED, align 4
  store i32 %0, ptr %red, align 4
  %1 = load i32, ptr @GREEN, align 4
  store i32 %1, ptr %green, align 4
  %2 = load i32, ptr @BLUE, align 4
  store i32 %2, ptr %blue, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32, ptr %n.addr, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %n.addr, align 4
  %cmp = icmp ugt i32 %3, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %data.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %4, i32 1
  store ptr %incdec.ptr, ptr %data.addr, align 8
  %5 = load i8, ptr %4, align 1
  %conv = zext i8 %5 to i32
  store i32 %conv, ptr %ix, align 4
  %6 = load i32, ptr %red, align 4
  %7 = load ptr, ptr %rmap.addr, align 8
  %8 = load i32, ptr %ix, align 4
  %idxprom = zext i32 %8 to i64
  %arrayidx = getelementptr inbounds i16, ptr %7, i64 %idxprom
  %9 = load i16, ptr %arrayidx, align 2
  %conv1 = zext i16 %9 to i32
  %mul = mul nsw i32 %6, %conv1
  store i32 %mul, ptr %v, align 4
  %10 = load i32, ptr %green, align 4
  %11 = load ptr, ptr %gmap.addr, align 8
  %12 = load i32, ptr %ix, align 4
  %idxprom2 = zext i32 %12 to i64
  %arrayidx3 = getelementptr inbounds i16, ptr %11, i64 %idxprom2
  %13 = load i16, ptr %arrayidx3, align 2
  %conv4 = zext i16 %13 to i32
  %mul5 = mul nsw i32 %10, %conv4
  %14 = load i32, ptr %v, align 4
  %add = add nsw i32 %14, %mul5
  store i32 %add, ptr %v, align 4
  %15 = load i32, ptr %blue, align 4
  %16 = load ptr, ptr %bmap.addr, align 8
  %17 = load i32, ptr %ix, align 4
  %idxprom6 = zext i32 %17 to i64
  %arrayidx7 = getelementptr inbounds i16, ptr %16, i64 %idxprom6
  %18 = load i16, ptr %arrayidx7, align 2
  %conv8 = zext i16 %18 to i32
  %mul9 = mul nsw i32 %15, %conv8
  %19 = load i32, ptr %v, align 4
  %add10 = add nsw i32 %19, %mul9
  store i32 %add10, ptr %v, align 4
  %20 = load i32, ptr %v, align 4
  %shr = ashr i32 %20, 8
  %conv11 = trunc i32 %shr to i8
  %21 = load ptr, ptr %out.addr, align 8
  %incdec.ptr12 = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr12, ptr %out.addr, align 8
  store i8 %conv11, ptr %21, align 1
  br label %while.cond, !llvm.loop !16

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @TIFFWriteScanline(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @compresscontig(ptr noundef %out, ptr noundef %rgb, i32 noundef %n) #0 {
entry:
  %out.addr = alloca ptr, align 8
  %rgb.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %v = alloca i32, align 4
  %red = alloca i32, align 4
  %green = alloca i32, align 4
  %blue = alloca i32, align 4
  store ptr %out, ptr %out.addr, align 8
  store ptr %rgb, ptr %rgb.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  %0 = load i32, ptr @RED, align 4
  store i32 %0, ptr %red, align 4
  %1 = load i32, ptr @GREEN, align 4
  store i32 %1, ptr %green, align 4
  %2 = load i32, ptr @BLUE, align 4
  store i32 %2, ptr %blue, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32, ptr %n.addr, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %n.addr, align 4
  %cmp = icmp ugt i32 %3, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, ptr %red, align 4
  %5 = load ptr, ptr %rgb.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %rgb.addr, align 8
  %6 = load i8, ptr %5, align 1
  %conv = zext i8 %6 to i32
  %mul = mul nsw i32 %4, %conv
  store i32 %mul, ptr %v, align 4
  %7 = load i32, ptr %green, align 4
  %8 = load ptr, ptr %rgb.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i8, ptr %8, i32 1
  store ptr %incdec.ptr1, ptr %rgb.addr, align 8
  %9 = load i8, ptr %8, align 1
  %conv2 = zext i8 %9 to i32
  %mul3 = mul nsw i32 %7, %conv2
  %10 = load i32, ptr %v, align 4
  %add = add nsw i32 %10, %mul3
  store i32 %add, ptr %v, align 4
  %11 = load i32, ptr %blue, align 4
  %12 = load ptr, ptr %rgb.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i8, ptr %12, i32 1
  store ptr %incdec.ptr4, ptr %rgb.addr, align 8
  %13 = load i8, ptr %12, align 1
  %conv5 = zext i8 %13 to i32
  %mul6 = mul nsw i32 %11, %conv5
  %14 = load i32, ptr %v, align 4
  %add7 = add nsw i32 %14, %mul6
  store i32 %add7, ptr %v, align 4
  %15 = load i32, ptr %v, align 4
  %shr = ashr i32 %15, 8
  %conv8 = trunc i32 %shr to i8
  %16 = load ptr, ptr %out.addr, align 8
  %incdec.ptr9 = getelementptr inbounds i8, ptr %16, i32 1
  store ptr %incdec.ptr9, ptr %out.addr, align 8
  store i8 %conv8, ptr %16, align 1
  br label %while.cond, !llvm.loop !17

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @compresssep(ptr noundef %out, ptr noundef %r, ptr noundef %g, ptr noundef %b, i32 noundef %n) #0 {
entry:
  %out.addr = alloca ptr, align 8
  %r.addr = alloca ptr, align 8
  %g.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %red = alloca i32, align 4
  %green = alloca i32, align 4
  %blue = alloca i32, align 4
  store ptr %out, ptr %out.addr, align 8
  store ptr %r, ptr %r.addr, align 8
  store ptr %g, ptr %g.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  %0 = load i32, ptr @RED, align 4
  store i32 %0, ptr %red, align 4
  %1 = load i32, ptr @GREEN, align 4
  store i32 %1, ptr %green, align 4
  %2 = load i32, ptr @BLUE, align 4
  store i32 %2, ptr %blue, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32, ptr %n.addr, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %n.addr, align 4
  %cmp = icmp ugt i32 %3, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, ptr %red, align 4
  %5 = load ptr, ptr %r.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %r.addr, align 8
  %6 = load i8, ptr %5, align 1
  %conv = zext i8 %6 to i32
  %mul = mul i32 %4, %conv
  %7 = load i32, ptr %green, align 4
  %8 = load ptr, ptr %g.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i8, ptr %8, i32 1
  store ptr %incdec.ptr1, ptr %g.addr, align 8
  %9 = load i8, ptr %8, align 1
  %conv2 = zext i8 %9 to i32
  %mul3 = mul i32 %7, %conv2
  %add = add i32 %mul, %mul3
  %10 = load i32, ptr %blue, align 4
  %11 = load ptr, ptr %b.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i8, ptr %11, i32 1
  store ptr %incdec.ptr4, ptr %b.addr, align 8
  %12 = load i8, ptr %11, align 1
  %conv5 = zext i8 %12 to i32
  %mul6 = mul i32 %10, %conv5
  %add7 = add i32 %add, %mul6
  %shr = lshr i32 %add7, 8
  %conv8 = trunc i32 %shr to i8
  %13 = load ptr, ptr %out.addr, align 8
  %incdec.ptr9 = getelementptr inbounds i8, ptr %13, i32 1
  store ptr %incdec.ptr9, ptr %out.addr, align 8
  store i8 %conv8, ptr %13, align 1
  br label %while.cond, !llvm.loop !18

while.end:                                        ; preds = %while.cond
  ret void
}

declare void @TIFFClose(ptr noundef) #1

declare void @TIFFWarning(ptr noundef, ptr noundef, ...) #1

declare ptr @TIFFFileName(ptr noundef) #1

declare i32 @strcmp(ptr noundef, ptr noundef) #1

declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #1

declare ptr @strchr(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare i32 @isdigit(i32 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @cpTag(ptr noundef %in, ptr noundef %out, i16 noundef zeroext %tag, i16 noundef zeroext %count, i32 noundef %type) #0 {
entry:
  %in.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %tag.addr = alloca i16, align 2
  %count.addr = alloca i16, align 2
  %type.addr = alloca i32, align 4
  %shortv = alloca i16, align 2
  %shortv2 = alloca i16, align 2
  %shortav = alloca ptr, align 8
  %floatv = alloca float, align 4
  %floatav = alloca ptr, align 8
  %stringv = alloca ptr, align 8
  %longv = alloca i32, align 4
  store ptr %in, ptr %in.addr, align 8
  store ptr %out, ptr %out.addr, align 8
  store i16 %tag, ptr %tag.addr, align 2
  store i16 %count, ptr %count.addr, align 2
  store i32 %type, ptr %type.addr, align 4
  %0 = load i32, ptr %type.addr, align 4
  switch i32 %0, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb36
    i32 5, label %sw.bb44
    i32 2, label %sw.bb71
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i16, ptr %count.addr, align 2
  %conv = zext i16 %1 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %2 = load ptr, ptr %in.addr, align 8
  %3 = load i16, ptr %tag.addr, align 2
  %conv2 = zext i16 %3 to i32
  %call = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %2, i32 noundef %conv2, ptr noundef %shortv)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %4 = load ptr, ptr %out.addr, align 8
  %5 = load i16, ptr %tag.addr, align 2
  %conv4 = zext i16 %5 to i32
  %6 = load i16, ptr %shortv, align 2
  %conv5 = zext i16 %6 to i32
  %call6 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %4, i32 noundef %conv4, i32 noundef %conv5)
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end35

if.else:                                          ; preds = %sw.bb
  %7 = load i16, ptr %count.addr, align 2
  %conv7 = zext i16 %7 to i32
  %cmp8 = icmp eq i32 %conv7, 2
  br i1 %cmp8, label %if.then10, label %if.else20

if.then10:                                        ; preds = %if.else
  %8 = load ptr, ptr %in.addr, align 8
  %9 = load i16, ptr %tag.addr, align 2
  %conv11 = zext i16 %9 to i32
  %call12 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %8, i32 noundef %conv11, ptr noundef %shortv, ptr noundef %shortv2)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then14, label %if.end19

if.then14:                                        ; preds = %if.then10
  %10 = load ptr, ptr %out.addr, align 8
  %11 = load i16, ptr %tag.addr, align 2
  %conv15 = zext i16 %11 to i32
  %12 = load i16, ptr %shortv, align 2
  %conv16 = zext i16 %12 to i32
  %13 = load i16, ptr %shortv2, align 2
  %conv17 = zext i16 %13 to i32
  %call18 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %10, i32 noundef %conv15, i32 noundef %conv16, i32 noundef %conv17)
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %if.then10
  br label %if.end34

if.else20:                                        ; preds = %if.else
  %14 = load i16, ptr %count.addr, align 2
  %conv21 = zext i16 %14 to i32
  %cmp22 = icmp eq i32 %conv21, 65535
  br i1 %cmp22, label %if.then24, label %if.end33

if.then24:                                        ; preds = %if.else20
  %15 = load ptr, ptr %in.addr, align 8
  %16 = load i16, ptr %tag.addr, align 2
  %conv25 = zext i16 %16 to i32
  %call26 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %15, i32 noundef %conv25, ptr noundef %shortv, ptr noundef %shortav)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then28, label %if.end32

if.then28:                                        ; preds = %if.then24
  %17 = load ptr, ptr %out.addr, align 8
  %18 = load i16, ptr %tag.addr, align 2
  %conv29 = zext i16 %18 to i32
  %19 = load i16, ptr %shortv, align 2
  %conv30 = zext i16 %19 to i32
  %20 = load ptr, ptr %shortav, align 8
  %call31 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %17, i32 noundef %conv29, i32 noundef %conv30, ptr noundef %20)
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %if.then24
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.else20
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.end19
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.end
  br label %sw.epilog

sw.bb36:                                          ; preds = %entry
  %21 = load ptr, ptr %in.addr, align 8
  %22 = load i16, ptr %tag.addr, align 2
  %conv37 = zext i16 %22 to i32
  %call38 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %21, i32 noundef %conv37, ptr noundef %longv)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then40, label %if.end43

if.then40:                                        ; preds = %sw.bb36
  %23 = load ptr, ptr %out.addr, align 8
  %24 = load i16, ptr %tag.addr, align 2
  %conv41 = zext i16 %24 to i32
  %25 = load i32, ptr %longv, align 4
  %call42 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %23, i32 noundef %conv41, i32 noundef %25)
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %sw.bb36
  br label %sw.epilog

sw.bb44:                                          ; preds = %entry
  %26 = load i16, ptr %count.addr, align 2
  %conv45 = zext i16 %26 to i32
  %cmp46 = icmp eq i32 %conv45, 1
  br i1 %cmp46, label %if.then48, label %if.else57

if.then48:                                        ; preds = %sw.bb44
  %27 = load ptr, ptr %in.addr, align 8
  %28 = load i16, ptr %tag.addr, align 2
  %conv49 = zext i16 %28 to i32
  %call50 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %27, i32 noundef %conv49, ptr noundef %floatv)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.then52, label %if.end56

if.then52:                                        ; preds = %if.then48
  %29 = load ptr, ptr %out.addr, align 8
  %30 = load i16, ptr %tag.addr, align 2
  %conv53 = zext i16 %30 to i32
  %31 = load float, ptr %floatv, align 4
  %conv54 = fpext float %31 to double
  %call55 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %29, i32 noundef %conv53, double noundef %conv54)
  br label %if.end56

if.end56:                                         ; preds = %if.then52, %if.then48
  br label %if.end70

if.else57:                                        ; preds = %sw.bb44
  %32 = load i16, ptr %count.addr, align 2
  %conv58 = zext i16 %32 to i32
  %cmp59 = icmp eq i32 %conv58, 65535
  br i1 %cmp59, label %if.then61, label %if.end69

if.then61:                                        ; preds = %if.else57
  %33 = load ptr, ptr %in.addr, align 8
  %34 = load i16, ptr %tag.addr, align 2
  %conv62 = zext i16 %34 to i32
  %call63 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %33, i32 noundef %conv62, ptr noundef %floatav)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.then65, label %if.end68

if.then65:                                        ; preds = %if.then61
  %35 = load ptr, ptr %out.addr, align 8
  %36 = load i16, ptr %tag.addr, align 2
  %conv66 = zext i16 %36 to i32
  %37 = load ptr, ptr %floatav, align 8
  %call67 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %35, i32 noundef %conv66, ptr noundef %37)
  br label %if.end68

if.end68:                                         ; preds = %if.then65, %if.then61
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.else57
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.end56
  br label %sw.epilog

sw.bb71:                                          ; preds = %entry
  %38 = load ptr, ptr %in.addr, align 8
  %39 = load i16, ptr %tag.addr, align 2
  %conv72 = zext i16 %39 to i32
  %call73 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %38, i32 noundef %conv72, ptr noundef %stringv)
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.then75, label %if.end78

if.then75:                                        ; preds = %sw.bb71
  %40 = load ptr, ptr %out.addr, align 8
  %41 = load i16, ptr %tag.addr, align 2
  %conv76 = zext i16 %41 to i32
  %42 = load ptr, ptr %stringv, align 8
  %call77 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %40, i32 noundef %conv76, ptr noundef %42)
  br label %if.end78

if.end78:                                         ; preds = %if.then75, %sw.bb71
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %43 = load ptr, ptr @__stderrp, align 8
  %call79 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef @.str.31)
  call void @exit(i32 noundef 1) #5
  unreachable

sw.epilog:                                        ; preds = %if.end78, %if.end70, %if.end43, %if.end35
  ret void
}

; Function Attrs: noreturn
declare void @exit(i32 noundef) #3

declare void @setbuf(ptr noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nounwind readonly willreturn }
attributes #5 = { noreturn }

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
!18 = distinct !{!18, !7}
