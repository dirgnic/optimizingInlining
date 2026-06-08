; ModuleID = './out/inlinefriendly_scan/rewritten_ir/teacher_never_inline/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-tiff2bw_tiff2bw.prepared.ll'
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

; Function Attrs: nounwind ssp uwtable
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
  %call = call i32 @"\01_getopt"(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str) #5
  store i32 %call, ptr %c, align 4
  %cmp.not = icmp eq i32 %call, -1
  br i1 %cmp.not, label %while.end, label %while.body

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
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @usage()
  br label %sw.epilog

sw.bb2:                                           ; preds = %while.body
  %4 = load ptr, ptr @optarg, align 8
  %call3 = call i32 @atoi(ptr nocapture noundef %4) #5
  store i32 %call3, ptr %rowsperstrip, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %while.body
  %5 = load ptr, ptr @optarg, align 8
  %call5 = call i32 @atoi(ptr nocapture noundef %5) #5
  %mul = mul nsw i32 %call5, 255
  %div = sdiv i32 %mul, 100
  store i32 %div, ptr @RED, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %while.body
  %6 = load ptr, ptr @optarg, align 8
  %call7 = call i32 @atoi(ptr nocapture noundef %6) #5
  %mul8 = mul nsw i32 %call7, 255
  %div9 = sdiv i32 %mul8, 100
  store i32 %div9, ptr @GREEN, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %while.body
  %7 = load ptr, ptr @optarg, align 8
  %call11 = call i32 @atoi(ptr nocapture noundef %7) #5
  %mul12 = mul nsw i32 %call11, 255
  %div13 = sdiv i32 %mul12, 100
  store i32 %div13, ptr @BLUE, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %while.body
  call void @usage()
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.then, %sw.bb14, %sw.bb10, %sw.bb6, %sw.bb4, %sw.bb2, %while.body
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
  %call18 = call ptr @TIFFOpen(ptr noundef %12, ptr noundef nonnull @.str.1) #5
  store ptr %call18, ptr %in, align 8
  %cmp19 = icmp eq ptr %call18, null
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end17
  store i32 -1, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.end17
  store i16 0, ptr %photometric, align 2
  %13 = load ptr, ptr %in, align 8
  %call22 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %13, i32 noundef 262, ptr noundef nonnull %photometric) #5
  %14 = load i16, ptr %photometric, align 2
  %cmp23.not = icmp eq i16 %14, 2
  %15 = load i16, ptr %photometric, align 2
  %cmp26.not = icmp eq i16 %15, 3
  %or.cond = select i1 %cmp23.not, i1 true, i1 %cmp26.not
  br i1 %or.cond, label %if.end32, label %if.then28

if.then28:                                        ; preds = %if.end21
  %16 = load ptr, ptr @__stderrp, align 8
  %17 = load ptr, ptr %argv.addr, align 8
  %18 = load i32, ptr @optind, align 4
  %idxprom29 = sext i32 %18 to i64
  %arrayidx30 = getelementptr inbounds ptr, ptr %17, i64 %idxprom29
  %19 = load ptr, ptr %arrayidx30, align 8
  %call31 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.2, ptr noundef %19) #5
  store i32 -1, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.end21
  %20 = load ptr, ptr %in, align 8
  %call33 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %20, i32 noundef 277, ptr noundef nonnull %samplesperpixel) #5
  %21 = load i16, ptr %samplesperpixel, align 2
  %cmp35.not = icmp eq i16 %21, 1
  %22 = load i16, ptr %samplesperpixel, align 2
  %cmp39.not = icmp eq i16 %22, 3
  %or.cond5 = select i1 %cmp35.not, i1 true, i1 %cmp39.not
  br i1 %or.cond5, label %if.end46, label %if.then41

if.then41:                                        ; preds = %if.end32
  %23 = load ptr, ptr @__stderrp, align 8
  %24 = load ptr, ptr %argv.addr, align 8
  %25 = load i32, ptr @optind, align 4
  %idxprom42 = sext i32 %25 to i64
  %arrayidx43 = getelementptr inbounds ptr, ptr %24, i64 %idxprom42
  %26 = load ptr, ptr %arrayidx43, align 8
  %27 = load i16, ptr %samplesperpixel, align 2
  %conv44 = zext i16 %27 to i32
  %call45 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.3, ptr noundef %26, i32 noundef %conv44) #5
  store i32 -1, ptr %retval, align 4
  br label %return

if.end46:                                         ; preds = %if.end32
  %28 = load ptr, ptr %in, align 8
  %call47 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %28, i32 noundef 258, ptr noundef nonnull %bitspersample) #5
  %29 = load i16, ptr %bitspersample, align 2
  %cmp49.not = icmp eq i16 %29, 8
  br i1 %cmp49.not, label %if.end55, label %if.then51

if.then51:                                        ; preds = %if.end46
  %30 = load ptr, ptr @__stderrp, align 8
  %31 = load ptr, ptr %argv.addr, align 8
  %32 = load i32, ptr @optind, align 4
  %idxprom52 = sext i32 %32 to i64
  %arrayidx53 = getelementptr inbounds ptr, ptr %31, i64 %idxprom52
  %33 = load ptr, ptr %arrayidx53, align 8
  %call54 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef nonnull @.str.4, ptr noundef %33) #5
  store i32 -1, ptr %retval, align 4
  br label %return

if.end55:                                         ; preds = %if.end46
  %34 = load ptr, ptr %in, align 8
  %call56 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %34, i32 noundef 256, ptr noundef nonnull %w) #5
  %call57 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %34, i32 noundef 257, ptr noundef nonnull %h) #5
  %call58 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %34, i32 noundef 284, ptr noundef nonnull %config) #5
  %35 = load ptr, ptr %argv.addr, align 8
  %36 = load i32, ptr @optind, align 4
  %add = add nsw i32 %36, 1
  %idxprom59 = sext i32 %add to i64
  %arrayidx60 = getelementptr inbounds ptr, ptr %35, i64 %idxprom59
  %37 = load ptr, ptr %arrayidx60, align 8
  %call61 = call ptr @TIFFOpen(ptr noundef %37, ptr noundef nonnull @.str.5) #5
  store ptr %call61, ptr %out, align 8
  %cmp62 = icmp eq ptr %call61, null
  br i1 %cmp62, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.end55
  store i32 -1, ptr %retval, align 4
  br label %return

if.end65:                                         ; preds = %if.end55
  %38 = load ptr, ptr %in, align 8
  %39 = load ptr, ptr %out, align 8
  call void @cpTags(ptr noundef %38, ptr noundef %39)
  %call66 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %39, i32 noundef 258, i32 noundef 8) #5
  %call67 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %39, i32 noundef 277, i32 noundef 1) #5
  %call68 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %39, i32 noundef 284, i32 noundef 1) #5
  %40 = load i16, ptr @compression, align 2
  %cmp70.not = icmp eq i16 %40, -1
  br i1 %cmp70.not, label %if.end88, label %if.then72

if.then72:                                        ; preds = %if.end65
  %41 = load ptr, ptr %out, align 8
  %42 = load i16, ptr @compression, align 2
  %conv73 = zext i16 %42 to i32
  %call74 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %41, i32 noundef 259, i32 noundef %conv73) #5
  %43 = load i16, ptr @compression, align 2
  switch i16 %43, label %if.end88 [
    i16 7, label %sw.bb76
    i16 5, label %sw.bb79
    i16 -32590, label %sw.bb79
  ]

sw.bb76:                                          ; preds = %if.then72
  %44 = load ptr, ptr %out, align 8
  %45 = load i32, ptr @quality, align 4
  %call77 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %44, i32 noundef 65537, i32 noundef %45) #5
  %46 = load i32, ptr @jpegcolormode, align 4
  %call78 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %44, i32 noundef 65538, i32 noundef %46) #5
  br label %if.end88

sw.bb79:                                          ; preds = %if.then72, %if.then72
  %47 = load i16, ptr @predictor, align 2
  %cmp81.not = icmp eq i16 %47, 0
  br i1 %cmp81.not, label %if.end88, label %if.then83

if.then83:                                        ; preds = %sw.bb79
  %48 = load ptr, ptr %out, align 8
  %49 = load i16, ptr @predictor, align 2
  %conv84 = zext i16 %49 to i32
  %call85 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %48, i32 noundef 317, i32 noundef %conv84) #5
  br label %if.end88

if.end88:                                         ; preds = %if.then72, %sw.bb76, %if.then83, %sw.bb79, %if.end65
  %50 = load ptr, ptr %out, align 8
  %call89 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %50, i32 noundef 262, i32 noundef 1) #5
  %51 = load ptr, ptr %argv.addr, align 8
  %52 = load i32, ptr @optind, align 4
  %idxprom90 = sext i32 %52 to i64
  %arrayidx91 = getelementptr inbounds ptr, ptr %51, i64 %idxprom90
  %53 = load ptr, ptr %arrayidx91, align 8
  %call92 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef nonnull %thing, i32 noundef 0, i64 noundef 1024, ptr noundef nonnull @.str.6, ptr noundef %53) #5
  %54 = load ptr, ptr %out, align 8
  %call94 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %54, i32 noundef 270, ptr noundef nonnull %thing) #5
  %call95 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %54, i32 noundef 305, ptr noundef nonnull @.str.7) #5
  %call96 = call i32 @TIFFScanlineSize(ptr noundef %54) #5
  %call97 = call ptr @_TIFFmalloc(i32 noundef %call96) #5
  store ptr %call97, ptr %outbuf, align 8
  %55 = load i32, ptr %rowsperstrip, align 4
  %call98 = call i32 @TIFFDefaultStripSize(ptr noundef %54, i32 noundef %55) #5
  %call99 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %54, i32 noundef 278, i32 noundef %call98) #5
  %56 = load i16, ptr %photometric, align 2
  %conv100 = zext i16 %56 to i32
  %shl = shl nuw nsw i32 %conv100, 8
  %57 = load i16, ptr %config, align 2
  %conv101 = zext i16 %57 to i32
  %or = or i32 %shl, %conv101
  switch i32 %or, label %sw.epilog214 [
    i32 769, label %sw.bb102
    i32 770, label %sw.bb102
    i32 513, label %sw.bb158
    i32 514, label %sw.bb178
  ]

sw.bb102:                                         ; preds = %if.end88, %if.end88
  %58 = load ptr, ptr %in, align 8
  %call103 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %58, i32 noundef 320, ptr noundef nonnull %red, ptr noundef nonnull %green, ptr noundef nonnull %blue) #5
  %59 = load i16, ptr %bitspersample, align 2
  %conv104 = zext i16 %59 to i32
  %shl105 = shl i32 1, %conv104
  %60 = load ptr, ptr %red, align 8
  %61 = load ptr, ptr %green, align 8
  %62 = load ptr, ptr %blue, align 8
  %call106 = call i32 @checkcmap(ptr noundef %58, i32 noundef %shl105, ptr noundef %60, ptr noundef %61, ptr noundef %62)
  %cmp107 = icmp eq i32 %call106, 16
  br i1 %cmp107, label %if.then109, label %if.end139

if.then109:                                       ; preds = %sw.bb102
  %63 = load i16, ptr %bitspersample, align 2
  %conv110 = zext i16 %63 to i32
  %notmask = shl nsw i32 -1, %conv110
  %sub112 = xor i32 %notmask, -1
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.then109
  %storemerge4 = phi i32 [ %sub112, %if.then109 ], [ %dec, %for.body ]
  store i32 %storemerge4, ptr %i, align 4
  %cmp113 = icmp sgt i32 %storemerge4, -1
  br i1 %cmp113, label %for.body, label %if.end139

for.body:                                         ; preds = %for.cond
  %64 = load ptr, ptr %red, align 8
  %65 = load i32, ptr %i, align 4
  %idxprom115 = sext i32 %65 to i64
  %arrayidx116 = getelementptr inbounds i16, ptr %64, i64 %idxprom115
  %66 = load i16, ptr %arrayidx116, align 2
  %67 = udiv i16 %66, 257
  %idxprom121 = sext i32 %65 to i64
  %arrayidx122 = getelementptr inbounds i16, ptr %64, i64 %idxprom121
  store i16 %67, ptr %arrayidx122, align 2
  %68 = load ptr, ptr %green, align 8
  %69 = load i32, ptr %i, align 4
  %idxprom123 = sext i32 %69 to i64
  %arrayidx124 = getelementptr inbounds i16, ptr %68, i64 %idxprom123
  %70 = load i16, ptr %arrayidx124, align 2
  %71 = udiv i16 %70, 257
  %idxprom129 = sext i32 %69 to i64
  %arrayidx130 = getelementptr inbounds i16, ptr %68, i64 %idxprom129
  store i16 %71, ptr %arrayidx130, align 2
  %72 = load ptr, ptr %blue, align 8
  %73 = load i32, ptr %i, align 4
  %idxprom131 = sext i32 %73 to i64
  %arrayidx132 = getelementptr inbounds i16, ptr %72, i64 %idxprom131
  %74 = load i16, ptr %arrayidx132, align 2
  %75 = udiv i16 %74, 257
  %idxprom137 = sext i32 %73 to i64
  %arrayidx138 = getelementptr inbounds i16, ptr %72, i64 %idxprom137
  store i16 %75, ptr %arrayidx138, align 2
  %76 = load i32, ptr %i, align 4
  %dec = add nsw i32 %76, -1
  br label %for.cond, !llvm.loop !8

if.end139:                                        ; preds = %for.cond, %sw.bb102
  %77 = load ptr, ptr %in, align 8
  %call140 = call i32 @TIFFScanlineSize(ptr noundef %77) #5
  %call141 = call ptr @_TIFFmalloc(i32 noundef %call140) #5
  store ptr %call141, ptr %inbuf, align 8
  br label %for.cond142

for.cond142:                                      ; preds = %for.inc156, %if.end139
  %storemerge3 = phi i32 [ 0, %if.end139 ], [ %inc, %for.inc156 ]
  store i32 %storemerge3, ptr %row, align 4
  %78 = load i32, ptr %h, align 4
  %cmp143 = icmp ult i32 %storemerge3, %78
  br i1 %cmp143, label %for.body145, label %sw.epilog214

for.body145:                                      ; preds = %for.cond142
  %79 = load ptr, ptr %in, align 8
  %80 = load ptr, ptr %inbuf, align 8
  %81 = load i32, ptr %row, align 4
  %call146 = call i32 @TIFFReadScanline(ptr noundef %79, ptr noundef %80, i32 noundef %81, i16 noundef zeroext 0) #5
  %cmp147 = icmp slt i32 %call146, 0
  br i1 %cmp147, label %sw.epilog214, label %if.end150

if.end150:                                        ; preds = %for.body145
  %82 = load ptr, ptr %outbuf, align 8
  %83 = load ptr, ptr %inbuf, align 8
  %84 = load i32, ptr %w, align 4
  %85 = load ptr, ptr %red, align 8
  %86 = load ptr, ptr %green, align 8
  %87 = load ptr, ptr %blue, align 8
  call void @compresspalette(ptr noundef %82, ptr noundef %83, i32 noundef %84, ptr noundef %85, ptr noundef %86, ptr noundef %87)
  %88 = load ptr, ptr %out, align 8
  %89 = load ptr, ptr %outbuf, align 8
  %90 = load i32, ptr %row, align 4
  %call151 = call i32 @TIFFWriteScanline(ptr noundef %88, ptr noundef %89, i32 noundef %90, i16 noundef zeroext 0) #5
  %cmp152 = icmp slt i32 %call151, 0
  br i1 %cmp152, label %sw.epilog214, label %for.inc156

for.inc156:                                       ; preds = %if.end150
  %91 = load i32, ptr %row, align 4
  %inc = add i32 %91, 1
  br label %for.cond142, !llvm.loop !9

sw.bb158:                                         ; preds = %if.end88
  %92 = load ptr, ptr %in, align 8
  %call159 = call i32 @TIFFScanlineSize(ptr noundef %92) #5
  %call160 = call ptr @_TIFFmalloc(i32 noundef %call159) #5
  store ptr %call160, ptr %inbuf, align 8
  br label %for.cond161

for.cond161:                                      ; preds = %for.inc175, %sw.bb158
  %storemerge2 = phi i32 [ 0, %sw.bb158 ], [ %inc176, %for.inc175 ]
  store i32 %storemerge2, ptr %row, align 4
  %93 = load i32, ptr %h, align 4
  %cmp162 = icmp ult i32 %storemerge2, %93
  br i1 %cmp162, label %for.body164, label %sw.epilog214

for.body164:                                      ; preds = %for.cond161
  %94 = load ptr, ptr %in, align 8
  %95 = load ptr, ptr %inbuf, align 8
  %96 = load i32, ptr %row, align 4
  %call165 = call i32 @TIFFReadScanline(ptr noundef %94, ptr noundef %95, i32 noundef %96, i16 noundef zeroext 0) #5
  %cmp166 = icmp slt i32 %call165, 0
  br i1 %cmp166, label %sw.epilog214, label %if.end169

if.end169:                                        ; preds = %for.body164
  %97 = load ptr, ptr %outbuf, align 8
  %98 = load ptr, ptr %inbuf, align 8
  %99 = load i32, ptr %w, align 4
  call void @compresscontig(ptr noundef %97, ptr noundef %98, i32 noundef %99)
  %100 = load ptr, ptr %out, align 8
  %101 = load i32, ptr %row, align 4
  %call170 = call i32 @TIFFWriteScanline(ptr noundef %100, ptr noundef %97, i32 noundef %101, i16 noundef zeroext 0) #5
  %cmp171 = icmp slt i32 %call170, 0
  br i1 %cmp171, label %sw.epilog214, label %for.inc175

for.inc175:                                       ; preds = %if.end169
  %102 = load i32, ptr %row, align 4
  %inc176 = add i32 %102, 1
  br label %for.cond161, !llvm.loop !10

sw.bb178:                                         ; preds = %if.end88
  %103 = load ptr, ptr %in, align 8
  %call179 = call i32 @TIFFScanlineSize(ptr noundef %103) #5
  store i32 %call179, ptr %rowsize, align 4
  %mul180 = mul nsw i32 %call179, 3
  %call181 = call ptr @_TIFFmalloc(i32 noundef %mul180) #5
  store ptr %call181, ptr %inbuf, align 8
  br label %for.cond182

for.cond182:                                      ; preds = %for.inc211, %sw.bb178
  %storemerge = phi i32 [ 0, %sw.bb178 ], [ %inc212, %for.inc211 ]
  store i32 %storemerge, ptr %row, align 4
  %104 = load i32, ptr %h, align 4
  %cmp183 = icmp ult i32 %storemerge, %104
  br i1 %cmp183, label %for.cond186, label %sw.epilog214

for.cond186:                                      ; preds = %for.cond182, %for.inc198
  %storemerge1 = phi i16 [ %inc199, %for.inc198 ], [ 0, %for.cond182 ]
  store i16 %storemerge1, ptr %s, align 2
  %cmp188 = icmp ult i16 %storemerge1, 3
  br i1 %cmp188, label %for.body190, label %for.end200

for.body190:                                      ; preds = %for.cond186
  %105 = load ptr, ptr %in, align 8
  %106 = load ptr, ptr %inbuf, align 8
  %107 = load i16, ptr %s, align 2
  %conv191 = zext i16 %107 to i32
  %108 = load i32, ptr %rowsize, align 4
  %mul192 = mul nsw i32 %108, %conv191
  %idx.ext = sext i32 %mul192 to i64
  %add.ptr = getelementptr inbounds i8, ptr %106, i64 %idx.ext
  %109 = load i32, ptr %row, align 4
  %110 = load i16, ptr %s, align 2
  %call193 = call i32 @TIFFReadScanline(ptr noundef %105, ptr noundef %add.ptr, i32 noundef %109, i16 noundef zeroext %110) #5
  %cmp194 = icmp slt i32 %call193, 0
  br i1 %cmp194, label %if.then196, label %for.inc198

if.then196:                                       ; preds = %for.body190
  store i32 -1, ptr %retval, align 4
  br label %return

for.inc198:                                       ; preds = %for.body190
  %111 = load i16, ptr %s, align 2
  %inc199 = add i16 %111, 1
  br label %for.cond186, !llvm.loop !11

for.end200:                                       ; preds = %for.cond186
  %112 = load ptr, ptr %outbuf, align 8
  %113 = load ptr, ptr %inbuf, align 8
  %114 = load i32, ptr %rowsize, align 4
  %idx.ext201 = sext i32 %114 to i64
  %add.ptr202 = getelementptr inbounds i8, ptr %113, i64 %idx.ext201
  %mul203 = shl nsw i32 %114, 1
  %idx.ext204 = sext i32 %mul203 to i64
  %add.ptr205 = getelementptr inbounds i8, ptr %113, i64 %idx.ext204
  %115 = load i32, ptr %w, align 4
  call void @compresssep(ptr noundef %112, ptr noundef %113, ptr noundef %add.ptr202, ptr noundef %add.ptr205, i32 noundef %115)
  %116 = load ptr, ptr %out, align 8
  %117 = load ptr, ptr %outbuf, align 8
  %118 = load i32, ptr %row, align 4
  %call206 = call i32 @TIFFWriteScanline(ptr noundef %116, ptr noundef %117, i32 noundef %118, i16 noundef zeroext 0) #5
  %cmp207 = icmp slt i32 %call206, 0
  br i1 %cmp207, label %sw.epilog214, label %for.inc211

for.inc211:                                       ; preds = %for.end200
  %119 = load i32, ptr %row, align 4
  %inc212 = add i32 %119, 1
  br label %for.cond182, !llvm.loop !12

sw.epilog214:                                     ; preds = %for.cond182, %for.end200, %for.cond161, %for.body164, %if.end169, %for.cond142, %for.body145, %if.end150, %if.end88
  %120 = load ptr, ptr %in, align 8
  call void @TIFFClose(ptr noundef %120) #5
  %121 = load ptr, ptr %out, align 8
  call void @TIFFClose(ptr noundef %121) #5
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog214, %if.then196, %if.then64, %if.then51, %if.then41, %if.then28, %if.then20
  %122 = load i32, ptr %retval, align 4
  ret i32 %122
}

declare i32 @"\01_getopt"(i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @processCompressOptions(ptr noundef %opt) #0 {
entry:
  %opt.addr = alloca ptr, align 8
  %cp = alloca ptr, align 8
  %cp24 = alloca ptr, align 8
  %cp37 = alloca ptr, align 8
  store ptr %opt, ptr %opt.addr, align 8
  %call = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %opt, ptr noundef nonnull dereferenceable(5) @.str.26) #5
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i16 1, ptr @compression, align 2
  br label %return

if.else:                                          ; preds = %entry
  %0 = load ptr, ptr %opt.addr, align 8
  %call1 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.27) #5
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  store i16 -32763, ptr @compression, align 2
  br label %return

if.else4:                                         ; preds = %if.else
  %1 = load ptr, ptr %opt.addr, align 8
  %call5 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.28, i64 noundef 4) #5
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.else19

if.then7:                                         ; preds = %if.else4
  %2 = load ptr, ptr %opt.addr, align 8
  %call8 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 58) #5
  store ptr %call8, ptr %cp, align 8
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then7
  %3 = load ptr, ptr %cp, align 8
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 1
  %4 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %isdigittmp = add nsw i32 %conv, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %if.then11, label %if.end

if.then11:                                        ; preds = %land.lhs.true
  %5 = load ptr, ptr %cp, align 8
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 1
  %call12 = call i32 @atoi(ptr nocapture noundef nonnull %add.ptr) #5
  store i32 %call12, ptr @quality, align 4
  br label %if.end

if.end:                                           ; preds = %if.then11, %land.lhs.true, %if.then7
  %6 = load ptr, ptr %cp, align 8
  %tobool13.not = icmp eq ptr %6, null
  br i1 %tobool13.not, label %if.end18, label %land.lhs.true14

land.lhs.true14:                                  ; preds = %if.end
  %7 = load ptr, ptr %cp, align 8
  %call15 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %7, i32 noundef 114) #5
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %land.lhs.true14
  store i32 0, ptr @jpegcolormode, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %land.lhs.true14, %if.end
  store i16 7, ptr @compression, align 2
  br label %return

if.else19:                                        ; preds = %if.else4
  %8 = load ptr, ptr %opt.addr, align 8
  %call20 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(4) @.str.29, i64 noundef 3) #5
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then23, label %if.else32

if.then23:                                        ; preds = %if.else19
  %9 = load ptr, ptr %opt.addr, align 8
  %call25 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %9, i32 noundef 58) #5
  store ptr %call25, ptr %cp24, align 8
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.end31, label %if.then27

if.then27:                                        ; preds = %if.then23
  %10 = load ptr, ptr %cp24, align 8
  %add.ptr28 = getelementptr inbounds i8, ptr %10, i64 1
  %call29 = call i32 @atoi(ptr nocapture noundef nonnull %add.ptr28) #5
  %conv30 = trunc i32 %call29 to i16
  store i16 %conv30, ptr @predictor, align 2
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %if.then23
  store i16 5, ptr @compression, align 2
  br label %return

if.else32:                                        ; preds = %if.else19
  %11 = load ptr, ptr %opt.addr, align 8
  %call33 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(4) @.str.30, i64 noundef 3) #5
  %cmp34 = icmp eq i32 %call33, 0
  br i1 %cmp34, label %if.then36, label %return

if.then36:                                        ; preds = %if.else32
  %12 = load ptr, ptr %opt.addr, align 8
  %call38 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %12, i32 noundef 58) #5
  store ptr %call38, ptr %cp37, align 8
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %if.end44, label %if.then40

if.then40:                                        ; preds = %if.then36
  %13 = load ptr, ptr %cp37, align 8
  %add.ptr41 = getelementptr inbounds i8, ptr %13, i64 1
  %call42 = call i32 @atoi(ptr nocapture noundef nonnull %add.ptr41) #5
  %conv43 = trunc i32 %call42 to i16
  store i16 %conv43, ptr @predictor, align 2
  br label %if.end44

if.end44:                                         ; preds = %if.then40, %if.then36
  store i16 -32590, ptr @compression, align 2
  br label %return

return:                                           ; preds = %if.then, %if.end18, %if.end44, %if.end31, %if.then3, %if.else32
  %storemerge = phi i32 [ 0, %if.else32 ], [ 1, %if.then3 ], [ 1, %if.end31 ], [ 1, %if.end44 ], [ 1, %if.end18 ], [ 1, %if.then ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal void @usage() #0 {
entry:
  %buf = alloca [1024 x i8], align 1
  %i = alloca i32, align 4
  %0 = load ptr, ptr @__stderrp, align 8
  call void @setbuf(ptr noundef %0, ptr noundef nonnull %buf) #5
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %idxprom = sext i32 %storemerge to i64
  %arrayidx = getelementptr inbounds [20 x ptr], ptr @stuff, i64 0, i64 %idxprom
  %1 = load ptr, ptr %arrayidx, align 8
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr @__stderrp, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [20 x ptr], ptr @stuff, i64 0, i64 %idxprom1
  %4 = load ptr, ptr %arrayidx2, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.32, ptr noundef %4) #5
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  call void @exit(i32 noundef 1) #6
  unreachable
}

declare i32 @atoi(ptr noundef) #1

declare ptr @TIFFOpen(ptr noundef, ptr noundef) #1

declare i32 @TIFFGetField(ptr noundef, i32 noundef, ...) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind ssp uwtable
define internal void @cpTags(ptr noundef %in, ptr noundef %out) #0 {
entry:
  %in.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %in, ptr %in.addr, align 8
  store ptr %out, ptr %out.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi ptr [ @tags, %entry ], [ %incdec.ptr, %for.body ]
  store ptr %storemerge, ptr %p, align 8
  %cmp = icmp ult ptr %storemerge, getelementptr inbounds ([16 x %struct.cpTag], ptr @tags, i64 1, i64 0)
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load ptr, ptr %in.addr, align 8
  %1 = load ptr, ptr %out.addr, align 8
  %2 = load ptr, ptr %p, align 8
  %3 = load i16, ptr %2, align 4
  %count = getelementptr inbounds %struct.cpTag, ptr %2, i64 0, i32 1
  %4 = load i16, ptr %count, align 2
  %type = getelementptr inbounds %struct.cpTag, ptr %2, i64 0, i32 2
  %5 = load i32, ptr %type, align 4
  call void @cpTag(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %3, i16 noundef zeroext %4, i32 noundef %5)
  %6 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds %struct.cpTag, ptr %6, i64 1
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @TIFFSetField(ptr noundef, i32 noundef, ...) #1

declare i32 @__sprintf_chk(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ...) #1

declare ptr @_TIFFmalloc(i32 noundef) #1

declare i32 @TIFFScanlineSize(ptr noundef) #1

declare i32 @TIFFDefaultStripSize(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @checkcmap(ptr noundef %tif, i32 noundef %n, ptr noundef %r, ptr noundef %g, ptr noundef %b) #0 {
entry:
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

while.cond:                                       ; preds = %lor.lhs.false7, %entry
  %0 = load i32, ptr %n.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr %n.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %r.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %1, i64 1
  store ptr %incdec.ptr, ptr %r.addr, align 8
  %2 = load i16, ptr %1, align 2
  %cmp1 = icmp ugt i16 %2, 255
  br i1 %cmp1, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %3 = load ptr, ptr %g.addr, align 8
  %incdec.ptr3 = getelementptr inbounds i16, ptr %3, i64 1
  store ptr %incdec.ptr3, ptr %g.addr, align 8
  %4 = load i16, ptr %3, align 2
  %cmp5 = icmp ugt i16 %4, 255
  br i1 %cmp5, label %return, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %5 = load ptr, ptr %b.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i16, ptr %5, i64 1
  store ptr %incdec.ptr8, ptr %b.addr, align 8
  %6 = load i16, ptr %5, align 2
  %cmp10 = icmp ugt i16 %6, 255
  br i1 %cmp10, label %return, label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %while.cond
  %7 = load ptr, ptr %tif.addr, align 8
  %call = call ptr @TIFFFileName(ptr noundef %7) #5
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %call, ptr noundef nonnull @.str.25) #5
  br label %return

return:                                           ; preds = %while.body, %lor.lhs.false, %lor.lhs.false7, %while.end
  %storemerge = phi i32 [ 8, %while.end ], [ 16, %lor.lhs.false7 ], [ 16, %lor.lhs.false ], [ 16, %while.body ]
  ret i32 %storemerge
}

declare i32 @TIFFReadScanline(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) #1

; Function Attrs: nounwind ssp uwtable
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
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %data.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %incdec.ptr, ptr %data.addr, align 8
  %5 = load i8, ptr %4, align 1
  %conv = zext i8 %5 to i32
  store i32 %conv, ptr %ix, align 4
  %6 = load i32, ptr %red, align 4
  %7 = load ptr, ptr %rmap.addr, align 8
  %idxprom = zext i8 %5 to i64
  %arrayidx = getelementptr inbounds i16, ptr %7, i64 %idxprom
  %8 = load i16, ptr %arrayidx, align 2
  %conv1 = zext i16 %8 to i32
  %mul = mul nsw i32 %6, %conv1
  store i32 %mul, ptr %v, align 4
  %9 = load i32, ptr %green, align 4
  %10 = load ptr, ptr %gmap.addr, align 8
  %11 = load i32, ptr %ix, align 4
  %idxprom2 = zext i32 %11 to i64
  %arrayidx3 = getelementptr inbounds i16, ptr %10, i64 %idxprom2
  %12 = load i16, ptr %arrayidx3, align 2
  %conv4 = zext i16 %12 to i32
  %mul5 = mul nsw i32 %9, %conv4
  %13 = load i32, ptr %v, align 4
  %add = add nsw i32 %13, %mul5
  store i32 %add, ptr %v, align 4
  %14 = load i32, ptr %blue, align 4
  %15 = load ptr, ptr %bmap.addr, align 8
  %16 = load i32, ptr %ix, align 4
  %idxprom6 = zext i32 %16 to i64
  %arrayidx7 = getelementptr inbounds i16, ptr %15, i64 %idxprom6
  %17 = load i16, ptr %arrayidx7, align 2
  %conv8 = zext i16 %17 to i32
  %mul9 = mul nsw i32 %14, %conv8
  %18 = load i32, ptr %v, align 4
  %add10 = add nsw i32 %18, %mul9
  store i32 %add10, ptr %v, align 4
  %19 = lshr i32 %add10, 8
  %conv11 = trunc i32 %19 to i8
  %20 = load ptr, ptr %out.addr, align 8
  %incdec.ptr12 = getelementptr inbounds i8, ptr %20, i64 1
  store ptr %incdec.ptr12, ptr %out.addr, align 8
  store i8 %conv11, ptr %20, align 1
  br label %while.cond, !llvm.loop !16

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @TIFFWriteScanline(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) #1

; Function Attrs: nounwind ssp uwtable
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
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %4 = load i32, ptr %red, align 4
  %5 = load ptr, ptr %rgb.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i64 1
  store ptr %incdec.ptr, ptr %rgb.addr, align 8
  %6 = load i8, ptr %5, align 1
  %conv = zext i8 %6 to i32
  %mul = mul nsw i32 %4, %conv
  store i32 %mul, ptr %v, align 4
  %7 = load i32, ptr %green, align 4
  %incdec.ptr1 = getelementptr inbounds i8, ptr %5, i64 2
  store ptr %incdec.ptr1, ptr %rgb.addr, align 8
  %8 = load i8, ptr %incdec.ptr, align 1
  %conv2 = zext i8 %8 to i32
  %mul3 = mul nsw i32 %7, %conv2
  %9 = load i32, ptr %v, align 4
  %add = add nsw i32 %9, %mul3
  store i32 %add, ptr %v, align 4
  %10 = load i32, ptr %blue, align 4
  %11 = load ptr, ptr %rgb.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i8, ptr %11, i64 1
  store ptr %incdec.ptr4, ptr %rgb.addr, align 8
  %12 = load i8, ptr %11, align 1
  %conv5 = zext i8 %12 to i32
  %mul6 = mul nsw i32 %10, %conv5
  %13 = load i32, ptr %v, align 4
  %add7 = add nsw i32 %13, %mul6
  store i32 %add7, ptr %v, align 4
  %14 = lshr i32 %add7, 8
  %conv8 = trunc i32 %14 to i8
  %15 = load ptr, ptr %out.addr, align 8
  %incdec.ptr9 = getelementptr inbounds i8, ptr %15, i64 1
  store ptr %incdec.ptr9, ptr %out.addr, align 8
  store i8 %conv8, ptr %15, align 1
  br label %while.cond, !llvm.loop !17

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
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
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %4 = load i32, ptr %red, align 4
  %5 = load ptr, ptr %r.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i64 1
  store ptr %incdec.ptr, ptr %r.addr, align 8
  %6 = load i8, ptr %5, align 1
  %conv = zext i8 %6 to i32
  %mul = mul i32 %4, %conv
  %7 = load i32, ptr %green, align 4
  %8 = load ptr, ptr %g.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i8, ptr %8, i64 1
  store ptr %incdec.ptr1, ptr %g.addr, align 8
  %9 = load i8, ptr %8, align 1
  %conv2 = zext i8 %9 to i32
  %mul3 = mul i32 %7, %conv2
  %add = add i32 %mul, %mul3
  %10 = load i32, ptr %blue, align 4
  %11 = load ptr, ptr %b.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i8, ptr %11, i64 1
  store ptr %incdec.ptr4, ptr %b.addr, align 8
  %12 = load i8, ptr %11, align 1
  %conv5 = zext i8 %12 to i32
  %mul6 = mul i32 %10, %conv5
  %add7 = add i32 %add, %mul6
  %shr = lshr i32 %add7, 8
  %conv8 = trunc i32 %shr to i8
  %13 = load ptr, ptr %out.addr, align 8
  %incdec.ptr9 = getelementptr inbounds i8, ptr %13, i64 1
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

; Function Attrs: nounwind ssp uwtable
define internal void @cpTag(ptr noundef %in, ptr noundef %out, i16 noundef zeroext %tag, i16 noundef zeroext %count, i32 noundef %type) #0 {
entry:
  %in.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %tag.addr = alloca i16, align 2
  %count.addr = alloca i16, align 2
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
  switch i32 %type, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb36
    i32 5, label %sw.bb44
    i32 2, label %sw.bb71
  ]

sw.bb:                                            ; preds = %entry
  %0 = load i16, ptr %count.addr, align 2
  %cmp = icmp eq i16 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %1 = load ptr, ptr %in.addr, align 8
  %2 = load i16, ptr %tag.addr, align 2
  %conv2 = zext i16 %2 to i32
  %call = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %1, i32 noundef %conv2, ptr noundef nonnull %shortv) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %sw.epilog, label %if.then3

if.then3:                                         ; preds = %if.then
  %3 = load ptr, ptr %out.addr, align 8
  %4 = load i16, ptr %tag.addr, align 2
  %conv4 = zext i16 %4 to i32
  %5 = load i16, ptr %shortv, align 2
  %conv5 = zext i16 %5 to i32
  %call6 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %3, i32 noundef %conv4, i32 noundef %conv5) #5
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  %6 = load i16, ptr %count.addr, align 2
  %cmp8 = icmp eq i16 %6, 2
  br i1 %cmp8, label %if.then10, label %if.else20

if.then10:                                        ; preds = %if.else
  %7 = load ptr, ptr %in.addr, align 8
  %8 = load i16, ptr %tag.addr, align 2
  %conv11 = zext i16 %8 to i32
  %call12 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %7, i32 noundef %conv11, ptr noundef nonnull %shortv, ptr noundef nonnull %shortv2) #5
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %sw.epilog, label %if.then14

if.then14:                                        ; preds = %if.then10
  %9 = load ptr, ptr %out.addr, align 8
  %10 = load i16, ptr %tag.addr, align 2
  %conv15 = zext i16 %10 to i32
  %11 = load i16, ptr %shortv, align 2
  %conv16 = zext i16 %11 to i32
  %12 = load i16, ptr %shortv2, align 2
  %conv17 = zext i16 %12 to i32
  %call18 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %9, i32 noundef %conv15, i32 noundef %conv16, i32 noundef %conv17) #5
  br label %sw.epilog

if.else20:                                        ; preds = %if.else
  %13 = load i16, ptr %count.addr, align 2
  %cmp22 = icmp eq i16 %13, -1
  br i1 %cmp22, label %if.then24, label %sw.epilog

if.then24:                                        ; preds = %if.else20
  %14 = load ptr, ptr %in.addr, align 8
  %15 = load i16, ptr %tag.addr, align 2
  %conv25 = zext i16 %15 to i32
  %call26 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %14, i32 noundef %conv25, ptr noundef nonnull %shortv, ptr noundef nonnull %shortav) #5
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %sw.epilog, label %if.then28

if.then28:                                        ; preds = %if.then24
  %16 = load ptr, ptr %out.addr, align 8
  %17 = load i16, ptr %tag.addr, align 2
  %conv29 = zext i16 %17 to i32
  %18 = load i16, ptr %shortv, align 2
  %conv30 = zext i16 %18 to i32
  %19 = load ptr, ptr %shortav, align 8
  %call31 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %16, i32 noundef %conv29, i32 noundef %conv30, ptr noundef %19) #5
  br label %sw.epilog

sw.bb36:                                          ; preds = %entry
  %20 = load ptr, ptr %in.addr, align 8
  %21 = load i16, ptr %tag.addr, align 2
  %conv37 = zext i16 %21 to i32
  %call38 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %20, i32 noundef %conv37, ptr noundef nonnull %longv) #5
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %sw.epilog, label %if.then40

if.then40:                                        ; preds = %sw.bb36
  %22 = load ptr, ptr %out.addr, align 8
  %23 = load i16, ptr %tag.addr, align 2
  %conv41 = zext i16 %23 to i32
  %24 = load i32, ptr %longv, align 4
  %call42 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %22, i32 noundef %conv41, i32 noundef %24) #5
  br label %sw.epilog

sw.bb44:                                          ; preds = %entry
  %25 = load i16, ptr %count.addr, align 2
  %cmp46 = icmp eq i16 %25, 1
  br i1 %cmp46, label %if.then48, label %if.else57

if.then48:                                        ; preds = %sw.bb44
  %26 = load ptr, ptr %in.addr, align 8
  %27 = load i16, ptr %tag.addr, align 2
  %conv49 = zext i16 %27 to i32
  %call50 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %26, i32 noundef %conv49, ptr noundef nonnull %floatv) #5
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %sw.epilog, label %if.then52

if.then52:                                        ; preds = %if.then48
  %28 = load ptr, ptr %out.addr, align 8
  %29 = load i16, ptr %tag.addr, align 2
  %conv53 = zext i16 %29 to i32
  %30 = load float, ptr %floatv, align 4
  %conv54 = fpext float %30 to double
  %call55 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %28, i32 noundef %conv53, double noundef %conv54) #5
  br label %sw.epilog

if.else57:                                        ; preds = %sw.bb44
  %31 = load i16, ptr %count.addr, align 2
  %cmp59 = icmp eq i16 %31, -1
  br i1 %cmp59, label %if.then61, label %sw.epilog

if.then61:                                        ; preds = %if.else57
  %32 = load ptr, ptr %in.addr, align 8
  %33 = load i16, ptr %tag.addr, align 2
  %conv62 = zext i16 %33 to i32
  %call63 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %32, i32 noundef %conv62, ptr noundef nonnull %floatav) #5
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %sw.epilog, label %if.then65

if.then65:                                        ; preds = %if.then61
  %34 = load ptr, ptr %out.addr, align 8
  %35 = load i16, ptr %tag.addr, align 2
  %conv66 = zext i16 %35 to i32
  %36 = load ptr, ptr %floatav, align 8
  %call67 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %34, i32 noundef %conv66, ptr noundef %36) #5
  br label %sw.epilog

sw.bb71:                                          ; preds = %entry
  %37 = load ptr, ptr %in.addr, align 8
  %38 = load i16, ptr %tag.addr, align 2
  %conv72 = zext i16 %38 to i32
  %call73 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %37, i32 noundef %conv72, ptr noundef nonnull %stringv) #5
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %sw.epilog, label %if.then75

if.then75:                                        ; preds = %sw.bb71
  %39 = load ptr, ptr %out.addr, align 8
  %40 = load i16, ptr %tag.addr, align 2
  %conv76 = zext i16 %40 to i32
  %41 = load ptr, ptr %stringv, align 8
  %call77 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %39, i32 noundef %conv76, ptr noundef %41) #5
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %42 = load ptr, ptr @__stderrp, align 8
  %43 = call i64 @fwrite(ptr nonnull @.str.31, i64 15, i64 1, ptr %42)
  call void @exit(i32 noundef 1) #6
  unreachable

sw.epilog:                                        ; preds = %sw.bb71, %if.then75, %if.then52, %if.then48, %if.then61, %if.then65, %if.else57, %sw.bb36, %if.then40, %if.then3, %if.then, %if.else20, %if.then28, %if.then24, %if.then10, %if.then14
  ret void
}

; Function Attrs: noreturn
declare void @exit(i32 noundef) #3

declare void @setbuf(ptr noundef, ptr noundef) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) #4

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

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
