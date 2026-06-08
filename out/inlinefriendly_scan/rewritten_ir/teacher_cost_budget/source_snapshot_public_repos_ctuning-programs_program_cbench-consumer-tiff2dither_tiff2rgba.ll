; ModuleID = './out/inlinefriendly_scan/rewritten_ir/teacher_cost_budget/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-tiff2dither_tiff2rgba.prepared.ll'
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
  %call = call i32 @"\01_getopt"(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str) #4
  store i32 %call, ptr %c, align 4
  %cmp.not = icmp eq i32 %call, -1
  br i1 %cmp.not, label %while.end, label %while.body

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
  %call2 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(5) @.str.1) #4
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb1
  store i16 1, ptr @compression, align 2
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb1
  %4 = load ptr, ptr @optarg, align 8
  %call4 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(9) @.str.2) #4
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.else
  store i16 -32763, ptr @compression, align 2
  br label %sw.epilog

if.else7:                                         ; preds = %if.else
  %5 = load ptr, ptr @optarg, align 8
  %call8 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.3) #4
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else7
  store i16 5, ptr @compression, align 2
  br label %sw.epilog

if.else11:                                        ; preds = %if.else7
  %6 = load ptr, ptr @optarg, align 8
  %call12 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(5) @.str.4) #4
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.else11
  store i16 7, ptr @compression, align 2
  br label %sw.epilog

if.else15:                                        ; preds = %if.else11
  call void @usage()
  br label %sw.epilog

sw.bb19:                                          ; preds = %while.body
  %7 = load ptr, ptr @optarg, align 8
  %call20 = call i32 @atoi(ptr nocapture noundef %7) #4
  store i32 %call20, ptr @rowsperstrip, align 4
  br label %sw.epilog

sw.bb21:                                          ; preds = %while.body
  %8 = load ptr, ptr @optarg, align 8
  %call22 = call i32 @atoi(ptr nocapture noundef %8) #4
  store i32 %call22, ptr @rowsperstrip, align 4
  br label %sw.epilog

sw.bb23:                                          ; preds = %while.body
  call void @usage()
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %if.then10, %if.else15, %if.then14, %if.then6, %sw.bb23, %sw.bb21, %sw.bb19, %sw.bb, %while.body
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
  %sub27 = add nsw i32 %12, -1
  %idxprom = sext i32 %sub27 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %11, i64 %idxprom
  %13 = load ptr, ptr %arrayidx, align 8
  %call28 = call ptr @TIFFOpen(ptr noundef %13, ptr noundef nonnull @.str.5) #4
  store ptr %call28, ptr %out, align 8
  %cmp29 = icmp eq ptr %call28, null
  br i1 %cmp29, label %if.then30, label %for.cond

if.then30:                                        ; preds = %if.end26
  store i32 -2, ptr %retval, align 4
  br label %return

for.cond:                                         ; preds = %if.end26, %for.inc
  %14 = load i32, ptr @optind, align 4
  %15 = load i32, ptr %argc.addr, align 4
  %sub32 = add nsw i32 %15, -1
  %cmp33 = icmp slt i32 %14, %sub32
  br i1 %cmp33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %argv.addr, align 8
  %17 = load i32, ptr @optind, align 4
  %idxprom34 = sext i32 %17 to i64
  %arrayidx35 = getelementptr inbounds ptr, ptr %16, i64 %idxprom34
  %18 = load ptr, ptr %arrayidx35, align 8
  %call36 = call ptr @TIFFOpen(ptr noundef %18, ptr noundef nonnull @.str.6) #4
  store ptr %call36, ptr %in, align 8
  %cmp37.not = icmp eq ptr %call36, null
  br i1 %cmp37.not, label %for.inc, label %do.body

do.body:                                          ; preds = %for.body, %do.cond
  %19 = load ptr, ptr %in, align 8
  %20 = load ptr, ptr %out, align 8
  %call39 = call i32 @tiffcvt(ptr noundef %19, ptr noundef %20)
  %tobool.not = icmp eq i32 %call39, 0
  br i1 %tobool.not, label %if.then42, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %21 = load ptr, ptr %out, align 8
  %call40 = call i32 @TIFFWriteDirectory(ptr noundef %21) #4
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then42, label %do.cond

if.then42:                                        ; preds = %lor.lhs.false, %do.body
  %22 = load ptr, ptr %out, align 8
  call void @TIFFClose(ptr noundef %22) #4
  store i32 1, ptr %retval, align 4
  br label %return

do.cond:                                          ; preds = %lor.lhs.false
  %23 = load ptr, ptr %in, align 8
  %call44 = call i32 @TIFFReadDirectory(ptr noundef %23) #4
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %do.end, label %do.body, !llvm.loop !8

do.end:                                           ; preds = %do.cond
  %24 = load ptr, ptr %in, align 8
  call void @TIFFClose(ptr noundef %24) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body, %do.end
  %25 = load i32, ptr @optind, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, ptr @optind, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %26 = load ptr, ptr %out, align 8
  call void @TIFFClose(ptr noundef %26) #4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then42, %if.then30
  %27 = load i32, ptr %retval, align 4
  ret i32 %27
}

declare i32 @"\01_getopt"(i32 noundef, ptr noundef, ptr noundef) #1

declare i32 @strcmp(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @usage() #0 {
entry:
  %i = alloca i32, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %idxprom = sext i32 %storemerge to i64
  %arrayidx = getelementptr inbounds [10 x ptr], ptr @usageMsg, i64 0, i64 %idxprom
  %0 = load ptr, ptr %arrayidx, align 8
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr @__stderrp, align 8
  %2 = load i32, ptr %i, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [10 x ptr], ptr @usageMsg, i64 0, i64 %idxprom1
  %3 = load ptr, ptr %arrayidx2, align 8
  %fputs = call i32 @fputs(ptr %3, ptr %1)
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  call void @exit(i32 noundef 1) #5
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
  %call = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %in, i32 noundef 256, ptr noundef nonnull %width) #4
  %call1 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %in, i32 noundef 257, ptr noundef nonnull %height) #4
  %call2 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %in, i32 noundef 254, ptr noundef nonnull %longv) #4
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %out.addr, align 8
  %1 = load i32, ptr %longv, align 4
  %call3 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %0, i32 noundef 254, i32 noundef %1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %out.addr, align 8
  %3 = load i32, ptr %width, align 4
  %call4 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %2, i32 noundef 256, i32 noundef %3) #4
  %4 = load i32, ptr %height, align 4
  %call5 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %2, i32 noundef 257, i32 noundef %4) #4
  %call6 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %2, i32 noundef 258, i32 noundef 8) #4
  %5 = load i16, ptr @compression, align 2
  %conv = zext i16 %5 to i32
  %call7 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %2, i32 noundef 259, i32 noundef %conv) #4
  %6 = load ptr, ptr %out.addr, align 8
  %call8 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %6, i32 noundef 262, i32 noundef 2) #4
  %7 = load ptr, ptr %in.addr, align 8
  %call9 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %7, i32 noundef 266, ptr noundef nonnull %shortv) #4
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end14, label %if.then11

if.then11:                                        ; preds = %if.end
  %8 = load ptr, ptr %out.addr, align 8
  %9 = load i16, ptr %shortv, align 2
  %conv12 = zext i16 %9 to i32
  %call13 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %8, i32 noundef 266, i32 noundef %conv12) #4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end
  %10 = load ptr, ptr %out.addr, align 8
  %call15 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %10, i32 noundef 274, i32 noundef 1) #4
  %call16 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %10, i32 noundef 277, i32 noundef 4) #4
  store i16 1, ptr %v, align 2
  %call17 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %10, i32 noundef 338, i32 noundef 1, ptr noundef nonnull %v) #4
  %11 = load ptr, ptr %in.addr, align 8
  %call18 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %11, i32 noundef 282, ptr noundef nonnull %floatv) #4
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end23, label %if.then20

if.then20:                                        ; preds = %if.end14
  %12 = load ptr, ptr %out.addr, align 8
  %13 = load float, ptr %floatv, align 4
  %conv21 = fpext float %13 to double
  %call22 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %12, i32 noundef 282, double noundef %conv21) #4
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end14
  %14 = load ptr, ptr %in.addr, align 8
  %call24 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %14, i32 noundef 283, ptr noundef nonnull %floatv) #4
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end29, label %if.then26

if.then26:                                        ; preds = %if.end23
  %15 = load ptr, ptr %out.addr, align 8
  %16 = load float, ptr %floatv, align 4
  %conv27 = fpext float %16 to double
  %call28 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %15, i32 noundef 283, double noundef %conv27) #4
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end23
  %17 = load ptr, ptr %in.addr, align 8
  %call30 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %17, i32 noundef 296, ptr noundef nonnull %shortv) #4
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end35, label %if.then32

if.then32:                                        ; preds = %if.end29
  %18 = load ptr, ptr %out.addr, align 8
  %19 = load i16, ptr %shortv, align 2
  %conv33 = zext i16 %19 to i32
  %call34 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %18, i32 noundef 296, i32 noundef %conv33) #4
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.end29
  %20 = load ptr, ptr %out.addr, align 8
  %call36 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %20, i32 noundef 284, i32 noundef 1) #4
  %call37 = call ptr @TIFFGetVersion() #4
  %call38 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %20, i32 noundef 305, ptr noundef %call37) #4
  %21 = load ptr, ptr %in.addr, align 8
  %call39 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %21, i32 noundef 269, ptr noundef nonnull %stringv) #4
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end43, label %if.then41

if.then41:                                        ; preds = %if.end35
  %22 = load ptr, ptr %out.addr, align 8
  %23 = load ptr, ptr %stringv, align 8
  %call42 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %22, i32 noundef 269, ptr noundef %23) #4
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end35
  %24 = load i32, ptr @process_by_block, align 4
  %tobool44.not = icmp eq i32 %24, 0
  br i1 %tobool44.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end43
  %25 = load ptr, ptr %in.addr, align 8
  %call45 = call i32 @TIFFIsTiled(ptr noundef %25) #4
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.else, label %if.then47

if.then47:                                        ; preds = %land.lhs.true
  %26 = load ptr, ptr %in.addr, align 8
  %27 = load ptr, ptr %out.addr, align 8
  %call48 = call i32 @cvt_by_tile(ptr noundef %26, ptr noundef %27)
  store i32 %call48, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %land.lhs.true, %if.end43
  %28 = load i32, ptr @process_by_block, align 4
  %tobool49.not = icmp eq i32 %28, 0
  br i1 %tobool49.not, label %if.else52, label %if.then50

if.then50:                                        ; preds = %if.else
  %29 = load ptr, ptr %in.addr, align 8
  %30 = load ptr, ptr %out.addr, align 8
  %call51 = call i32 @cvt_by_strip(ptr noundef %29, ptr noundef %30)
  store i32 %call51, ptr %retval, align 4
  br label %return

if.else52:                                        ; preds = %if.else
  %31 = load ptr, ptr %in.addr, align 8
  %32 = load ptr, ptr %out.addr, align 8
  %call53 = call i32 @cvt_whole_image(ptr noundef %31, ptr noundef %32)
  store i32 %call53, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else52, %if.then50, %if.then47
  %33 = load i32, ptr %retval, align 4
  ret i32 %33
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
  %call = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %in, i32 noundef 256, ptr noundef nonnull %width) #4
  %call1 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %in, i32 noundef 257, ptr noundef nonnull %height) #4
  %call2 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %in, i32 noundef 322, ptr noundef nonnull %tile_width) #4
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %in.addr, align 8
  %call3 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %0, i32 noundef 323, ptr noundef nonnull %tile_height) #4
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load ptr, ptr %in.addr, align 8
  %call5 = call ptr @TIFFFileName(ptr noundef %1) #4
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call5, ptr noundef nonnull @.str.7) #4
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %out.addr, align 8
  %3 = load i32, ptr %tile_width, align 4
  %call6 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %2, i32 noundef 322, i32 noundef %3) #4
  %4 = load i32, ptr %tile_height, align 4
  %call7 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %2, i32 noundef 323, i32 noundef %4) #4
  %5 = load i32, ptr %tile_width, align 4
  %6 = load i32, ptr %tile_height, align 4
  %mul = mul i32 %5, %6
  %mul8 = shl i32 %mul, 2
  %call10 = call ptr @_TIFFmalloc(i32 noundef %mul8) #4
  store ptr %call10, ptr %raster, align 8
  %cmp = icmp eq ptr %call10, null
  br i1 %cmp, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end
  %7 = load ptr, ptr %in.addr, align 8
  %call13 = call ptr @TIFFFileName(ptr noundef %7) #4
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call13, ptr noundef nonnull @.str.8) #4
  store i32 0, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end
  %8 = load i32, ptr %tile_width, align 4
  %mul16 = shl i32 %8, 2
  %call18 = call ptr @_TIFFmalloc(i32 noundef %mul16) #4
  store ptr %call18, ptr %wrk_line, align 8
  %cmp19 = icmp eq ptr %call18, null
  br i1 %cmp19, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end14
  %9 = load ptr, ptr %in.addr, align 8
  %call22 = call ptr @TIFFFileName(ptr noundef %9) #4
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call22, ptr noundef nonnull @.str.9) #4
  store i32 0, ptr %ok, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end14
  br label %for.cond

for.cond:                                         ; preds = %for.inc60, %if.end23
  %storemerge = phi i32 [ 0, %if.end23 ], [ %add61, %for.inc60 ]
  store i32 %storemerge, ptr %row, align 4
  %10 = load i32, ptr %ok, align 4
  %tobool24.not = icmp eq i32 %10, 0
  %11 = load i32, ptr %row, align 4
  %12 = load i32, ptr %height, align 4
  %cmp25 = icmp ult i32 %11, %12
  %13 = select i1 %tobool24.not, i1 false, i1 %cmp25
  br i1 %13, label %for.cond27, label %for.end62

for.cond27:                                       ; preds = %for.cond, %for.inc58
  %storemerge1 = phi i32 [ %add, %for.inc58 ], [ 0, %for.cond ]
  store i32 %storemerge1, ptr %col, align 4
  %14 = load i32, ptr %ok, align 4
  %tobool28.not = icmp eq i32 %14, 0
  %15 = load i32, ptr %col, align 4
  %16 = load i32, ptr %width, align 4
  %cmp30 = icmp ult i32 %15, %16
  %17 = select i1 %tobool28.not, i1 false, i1 %cmp30
  br i1 %17, label %for.body33, label %for.inc60

for.body33:                                       ; preds = %for.cond27
  %18 = load ptr, ptr %in.addr, align 8
  %19 = load i32, ptr %col, align 4
  %20 = load i32, ptr %row, align 4
  %21 = load ptr, ptr %raster, align 8
  %call34 = call i32 @TIFFReadRGBATile(ptr noundef %18, i32 noundef %19, i32 noundef %20, ptr noundef %21) #4
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then36, label %for.cond38

if.then36:                                        ; preds = %for.body33
  store i32 0, ptr %ok, align 4
  br label %for.inc60

for.cond38:                                       ; preds = %for.body33, %for.body41
  %storemerge2 = phi i32 [ %inc, %for.body41 ], [ 0, %for.body33 ]
  store i32 %storemerge2, ptr %i_row, align 4
  %22 = load i32, ptr %tile_height, align 4
  %div3 = lshr i32 %22, 1
  %cmp39 = icmp ult i32 %storemerge2, %div3
  br i1 %cmp39, label %for.body41, label %for.end

for.body41:                                       ; preds = %for.cond38
  %23 = load ptr, ptr %raster, align 8
  %24 = load i32, ptr %tile_width, align 4
  %25 = load i32, ptr %i_row, align 4
  %mul42 = mul i32 %24, %25
  %idx.ext = zext i32 %mul42 to i64
  %add.ptr = getelementptr inbounds i32, ptr %23, i64 %idx.ext
  store ptr %add.ptr, ptr %top_line, align 8
  %26 = load ptr, ptr %raster, align 8
  %27 = load i32, ptr %tile_width, align 4
  %28 = load i32, ptr %tile_height, align 4
  %29 = load i32, ptr %i_row, align 4
  %30 = xor i32 %29, -1
  %sub43 = add i32 %28, %30
  %mul44 = mul i32 %27, %sub43
  %idx.ext45 = zext i32 %mul44 to i64
  %add.ptr46 = getelementptr inbounds i32, ptr %26, i64 %idx.ext45
  store ptr %add.ptr46, ptr %bottom_line, align 8
  %31 = load ptr, ptr %wrk_line, align 8
  %32 = load ptr, ptr %top_line, align 8
  %33 = load i32, ptr %tile_width, align 4
  %mul47 = shl i32 %33, 2
  call void @_TIFFmemcpy(ptr noundef %31, ptr noundef %32, i32 noundef %mul47) #4
  %34 = load i32, ptr %tile_width, align 4
  %mul48 = shl i32 %34, 2
  call void @_TIFFmemcpy(ptr noundef %32, ptr noundef %add.ptr46, i32 noundef %mul48) #4
  %35 = load ptr, ptr %bottom_line, align 8
  %36 = load ptr, ptr %wrk_line, align 8
  %37 = load i32, ptr %tile_width, align 4
  %mul49 = shl i32 %37, 2
  call void @_TIFFmemcpy(ptr noundef %35, ptr noundef %36, i32 noundef %mul49) #4
  %38 = load i32, ptr %i_row, align 4
  %inc = add nsw i32 %38, 1
  br label %for.cond38, !llvm.loop !11

for.end:                                          ; preds = %for.cond38
  %39 = load ptr, ptr %out.addr, align 8
  %40 = load i32, ptr %col, align 4
  %41 = load i32, ptr %row, align 4
  %call50 = call i32 @TIFFComputeTile(ptr noundef %39, i32 noundef %40, i32 noundef %41, i32 noundef 0, i16 noundef zeroext 0) #4
  %42 = load ptr, ptr %raster, align 8
  %43 = load i32, ptr %tile_width, align 4
  %mul51 = shl i32 %43, 2
  %44 = load i32, ptr %tile_height, align 4
  %mul52 = mul i32 %mul51, %44
  %call53 = call i32 @TIFFWriteEncodedTile(ptr noundef %39, i32 noundef %call50, ptr noundef %42, i32 noundef %mul52) #4
  %cmp54 = icmp eq i32 %call53, -1
  br i1 %cmp54, label %if.then56, label %for.inc58

if.then56:                                        ; preds = %for.end
  store i32 0, ptr %ok, align 4
  br label %for.inc60

for.inc58:                                        ; preds = %for.end
  %45 = load i32, ptr %tile_width, align 4
  %46 = load i32, ptr %col, align 4
  %add = add i32 %46, %45
  br label %for.cond27, !llvm.loop !12

for.inc60:                                        ; preds = %for.cond27, %if.then36, %if.then56
  %47 = load i32, ptr %tile_height, align 4
  %48 = load i32, ptr %row, align 4
  %add61 = add i32 %48, %47
  br label %for.cond, !llvm.loop !13

for.end62:                                        ; preds = %for.cond
  %49 = load ptr, ptr %raster, align 8
  call void @_TIFFfree(ptr noundef %49) #4
  %50 = load ptr, ptr %wrk_line, align 8
  call void @_TIFFfree(ptr noundef %50) #4
  %51 = load i32, ptr %ok, align 4
  store i32 %51, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end62, %if.then12, %if.then
  %52 = load i32, ptr %retval, align 4
  ret i32 %52
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
  %call = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %in, i32 noundef 256, ptr noundef nonnull %width) #4
  %call1 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %in, i32 noundef 257, ptr noundef nonnull %height) #4
  %call2 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %in, i32 noundef 278, ptr noundef nonnull @rowsperstrip) #4
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %in.addr, align 8
  %call3 = call ptr @TIFFFileName(ptr noundef %0) #4
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call3, ptr noundef nonnull @.str.10) #4
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %out.addr, align 8
  %2 = load i32, ptr @rowsperstrip, align 4
  %call4 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %1, i32 noundef 278, i32 noundef %2) #4
  %3 = load i32, ptr %width, align 4
  %4 = load i32, ptr @rowsperstrip, align 4
  %mul = mul i32 %3, %4
  %mul5 = shl i32 %mul, 2
  %call7 = call ptr @_TIFFmalloc(i32 noundef %mul5) #4
  store ptr %call7, ptr %raster, align 8
  %cmp = icmp eq ptr %call7, null
  br i1 %cmp, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  %5 = load ptr, ptr %in.addr, align 8
  %call10 = call ptr @TIFFFileName(ptr noundef %5) #4
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call10, ptr noundef nonnull @.str.8) #4
  store i32 0, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end
  %6 = load i32, ptr %width, align 4
  %mul13 = shl i32 %6, 2
  %call15 = call ptr @_TIFFmalloc(i32 noundef %mul13) #4
  store ptr %call15, ptr %wrk_line, align 8
  %cmp16 = icmp eq ptr %call15, null
  br i1 %cmp16, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end11
  %7 = load ptr, ptr %in.addr, align 8
  %call19 = call ptr @TIFFFileName(ptr noundef %7) #4
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call19, ptr noundef nonnull @.str.9) #4
  store i32 0, ptr %ok, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end11
  br label %for.cond

for.cond:                                         ; preds = %for.inc53, %if.end20
  %storemerge = phi i32 [ 0, %if.end20 ], [ %add54, %for.inc53 ]
  store i32 %storemerge, ptr %row, align 4
  %8 = load i32, ptr %ok, align 4
  %tobool21.not = icmp eq i32 %8, 0
  %9 = load i32, ptr %row, align 4
  %10 = load i32, ptr %height, align 4
  %cmp22 = icmp ult i32 %9, %10
  %11 = select i1 %tobool21.not, i1 false, i1 %cmp22
  br i1 %11, label %for.body, label %for.end55

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %in.addr, align 8
  %13 = load i32, ptr %row, align 4
  %14 = load ptr, ptr %raster, align 8
  %call24 = call i32 @TIFFReadRGBAStrip(ptr noundef %12, i32 noundef %13, ptr noundef %14) #4
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then26, label %if.end27

if.then26:                                        ; preds = %for.body
  store i32 0, ptr %ok, align 4
  br label %for.end55

if.end27:                                         ; preds = %for.body
  %15 = load i32, ptr %row, align 4
  %16 = load i32, ptr @rowsperstrip, align 4
  %add = add i32 %15, %16
  %17 = load i32, ptr %height, align 4
  %cmp28 = icmp ugt i32 %add, %17
  %18 = load i32, ptr @rowsperstrip, align 4
  %19 = load i32, ptr %height, align 4
  %20 = load i32, ptr %row, align 4
  %sub = sub i32 %19, %20
  %storemerge1 = select i1 %cmp28, i32 %sub, i32 %18
  store i32 %storemerge1, ptr %rows_to_write, align 4
  br label %for.cond32

for.cond32:                                       ; preds = %for.body35, %if.end27
  %storemerge2 = phi i32 [ 0, %if.end27 ], [ %inc, %for.body35 ]
  store i32 %storemerge2, ptr %i_row, align 4
  %21 = load i32, ptr %rows_to_write, align 4
  %div = sdiv i32 %21, 2
  %cmp33 = icmp slt i32 %storemerge2, %div
  br i1 %cmp33, label %for.body35, label %for.end

for.body35:                                       ; preds = %for.cond32
  %22 = load ptr, ptr %raster, align 8
  %23 = load i32, ptr %width, align 4
  %24 = load i32, ptr %i_row, align 4
  %mul36 = mul i32 %23, %24
  %idx.ext = zext i32 %mul36 to i64
  %add.ptr = getelementptr inbounds i32, ptr %22, i64 %idx.ext
  store ptr %add.ptr, ptr %top_line, align 8
  %25 = load ptr, ptr %raster, align 8
  %26 = load i32, ptr %width, align 4
  %27 = load i32, ptr %rows_to_write, align 4
  %28 = load i32, ptr %i_row, align 4
  %29 = xor i32 %28, -1
  %sub38 = add i32 %27, %29
  %mul39 = mul i32 %26, %sub38
  %idx.ext40 = zext i32 %mul39 to i64
  %add.ptr41 = getelementptr inbounds i32, ptr %25, i64 %idx.ext40
  store ptr %add.ptr41, ptr %bottom_line, align 8
  %30 = load ptr, ptr %wrk_line, align 8
  %31 = load ptr, ptr %top_line, align 8
  %32 = load i32, ptr %width, align 4
  %mul42 = shl i32 %32, 2
  call void @_TIFFmemcpy(ptr noundef %30, ptr noundef %31, i32 noundef %mul42) #4
  %33 = load i32, ptr %width, align 4
  %mul43 = shl i32 %33, 2
  call void @_TIFFmemcpy(ptr noundef %31, ptr noundef %add.ptr41, i32 noundef %mul43) #4
  %34 = load ptr, ptr %bottom_line, align 8
  %35 = load ptr, ptr %wrk_line, align 8
  %36 = load i32, ptr %width, align 4
  %mul44 = shl i32 %36, 2
  call void @_TIFFmemcpy(ptr noundef %34, ptr noundef %35, i32 noundef %mul44) #4
  %37 = load i32, ptr %i_row, align 4
  %inc = add nsw i32 %37, 1
  br label %for.cond32, !llvm.loop !14

for.end:                                          ; preds = %for.cond32
  %38 = load ptr, ptr %out.addr, align 8
  %39 = load i32, ptr %row, align 4
  %40 = load i32, ptr @rowsperstrip, align 4
  %div45 = udiv i32 %39, %40
  %41 = load ptr, ptr %raster, align 8
  %42 = load i32, ptr %rows_to_write, align 4
  %mul46 = shl nsw i32 %42, 2
  %43 = load i32, ptr %width, align 4
  %mul47 = mul i32 %mul46, %43
  %call48 = call i32 @TIFFWriteEncodedStrip(ptr noundef %38, i32 noundef %div45, ptr noundef %41, i32 noundef %mul47) #4
  %cmp49 = icmp eq i32 %call48, -1
  br i1 %cmp49, label %if.then51, label %for.inc53

if.then51:                                        ; preds = %for.end
  store i32 0, ptr %ok, align 4
  br label %for.end55

for.inc53:                                        ; preds = %for.end
  %44 = load i32, ptr @rowsperstrip, align 4
  %45 = load i32, ptr %row, align 4
  %add54 = add i32 %45, %44
  br label %for.cond, !llvm.loop !15

for.end55:                                        ; preds = %if.then51, %if.then26, %for.cond
  %46 = load ptr, ptr %raster, align 8
  call void @_TIFFfree(ptr noundef %46) #4
  %47 = load ptr, ptr %wrk_line, align 8
  call void @_TIFFfree(ptr noundef %47) #4
  %48 = load i32, ptr %ok, align 4
  store i32 %48, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end55, %if.then9, %if.then
  %49 = load i32, ptr %retval, align 4
  ret i32 %49
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
  store ptr %in, ptr %in.addr, align 8
  store ptr %out, ptr %out.addr, align 8
  %call = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %in, i32 noundef 256, ptr noundef nonnull %width) #4
  %call1 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %in, i32 noundef 257, ptr noundef nonnull %height) #4
  %0 = load i32, ptr @rowsperstrip, align 4
  %call2 = call i32 @TIFFDefaultStripSize(ptr noundef %out, i32 noundef %0) #4
  store i32 %call2, ptr @rowsperstrip, align 4
  %call3 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %out, i32 noundef 278, i32 noundef %call2) #4
  %1 = load i32, ptr %width, align 4
  %2 = load i32, ptr %height, align 4
  %mul = mul i32 %1, %2
  %mul4 = shl i32 %mul, 2
  %call6 = call ptr @_TIFFmalloc(i32 noundef %mul4) #4
  store ptr %call6, ptr %raster, align 8
  %cmp = icmp eq ptr %call6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %in.addr, align 8
  %call8 = call ptr @TIFFFileName(ptr noundef %3) #4
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call8, ptr noundef nonnull @.str.8) #4
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %in.addr, align 8
  %5 = load i32, ptr %width, align 4
  %6 = load i32, ptr %height, align 4
  %7 = load ptr, ptr %raster, align 8
  %call9 = call i32 @TIFFReadRGBAImage(ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef 0) #4
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  %8 = load ptr, ptr %raster, align 8
  call void @_TIFFfree(ptr noundef %8) #4
  store i32 0, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end
  %9 = load i32, ptr %width, align 4
  %mul13 = shl i32 %9, 2
  %call15 = call ptr @_TIFFmalloc(i32 noundef %mul13) #4
  store ptr %call15, ptr %wrk_line, align 8
  %cmp16 = icmp eq ptr %call15, null
  br i1 %cmp16, label %if.then18, label %for.cond

if.then18:                                        ; preds = %if.end11
  %10 = load ptr, ptr %in.addr, align 8
  %call19 = call ptr @TIFFFileName(ptr noundef %10) #4
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call19, ptr noundef nonnull @.str.9) #4
  store i32 0, ptr %retval, align 4
  br label %return

for.cond:                                         ; preds = %if.end11, %for.body
  %storemerge = phi i32 [ %inc, %for.body ], [ 0, %if.end11 ]
  store i32 %storemerge, ptr %row, align 4
  %11 = load i32, ptr %height, align 4
  %div1 = lshr i32 %11, 1
  %cmp21 = icmp ult i32 %storemerge, %div1
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %raster, align 8
  %13 = load i32, ptr %width, align 4
  %14 = load i32, ptr %row, align 4
  %mul23 = mul i32 %13, %14
  %idx.ext = zext i32 %mul23 to i64
  %add.ptr = getelementptr inbounds i32, ptr %12, i64 %idx.ext
  store ptr %add.ptr, ptr %top_line, align 8
  %15 = load ptr, ptr %raster, align 8
  %16 = load i32, ptr %width, align 4
  %17 = load i32, ptr %height, align 4
  %18 = load i32, ptr %row, align 4
  %19 = xor i32 %18, -1
  %sub24 = add i32 %17, %19
  %mul25 = mul i32 %16, %sub24
  %idx.ext26 = zext i32 %mul25 to i64
  %add.ptr27 = getelementptr inbounds i32, ptr %15, i64 %idx.ext26
  store ptr %add.ptr27, ptr %bottom_line, align 8
  %20 = load ptr, ptr %wrk_line, align 8
  %21 = load ptr, ptr %top_line, align 8
  %22 = load i32, ptr %width, align 4
  %mul28 = shl i32 %22, 2
  call void @_TIFFmemcpy(ptr noundef %20, ptr noundef %21, i32 noundef %mul28) #4
  %23 = load i32, ptr %width, align 4
  %mul29 = shl i32 %23, 2
  call void @_TIFFmemcpy(ptr noundef %21, ptr noundef %add.ptr27, i32 noundef %mul29) #4
  %24 = load ptr, ptr %bottom_line, align 8
  %25 = load ptr, ptr %wrk_line, align 8
  %26 = load i32, ptr %width, align 4
  %mul30 = shl i32 %26, 2
  call void @_TIFFmemcpy(ptr noundef %24, ptr noundef %25, i32 noundef %mul30) #4
  %27 = load i32, ptr %row, align 4
  %inc = add i32 %27, 1
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  %28 = load ptr, ptr %wrk_line, align 8
  call void @_TIFFfree(ptr noundef %28) #4
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc51, %for.end
  %storemerge2 = phi i32 [ 0, %for.end ], [ %add52, %for.inc51 ]
  store i32 %storemerge2, ptr %row, align 4
  %29 = load i32, ptr %height, align 4
  %cmp32 = icmp ult i32 %storemerge2, %29
  br i1 %cmp32, label %for.body34, label %for.end53

for.body34:                                       ; preds = %for.cond31
  %30 = load ptr, ptr %raster, align 8
  %31 = load i32, ptr %row, align 4
  %32 = load i32, ptr %width, align 4
  %mul35 = mul i32 %31, %32
  %idx.ext36 = zext i32 %mul35 to i64
  %add.ptr37 = getelementptr inbounds i32, ptr %30, i64 %idx.ext36
  store ptr %add.ptr37, ptr %raster_strip, align 8
  %33 = load i32, ptr @rowsperstrip, align 4
  %add = add i32 %31, %33
  %34 = load i32, ptr %height, align 4
  %cmp38 = icmp ugt i32 %add, %34
  %35 = load i32, ptr @rowsperstrip, align 4
  %36 = load i32, ptr %height, align 4
  %37 = load i32, ptr %row, align 4
  %sub41 = sub i32 %36, %37
  %storemerge3 = select i1 %cmp38, i32 %sub41, i32 %35
  %38 = load ptr, ptr %out.addr, align 8
  %39 = load i32, ptr %row, align 4
  %40 = load i32, ptr @rowsperstrip, align 4
  %div43 = udiv i32 %39, %40
  %41 = load ptr, ptr %raster_strip, align 8
  %mul44 = shl nsw i32 %storemerge3, 2
  %42 = load i32, ptr %width, align 4
  %mul45 = mul i32 %mul44, %42
  %call46 = call i32 @TIFFWriteEncodedStrip(ptr noundef %38, i32 noundef %div43, ptr noundef %41, i32 noundef %mul45) #4
  %cmp47 = icmp eq i32 %call46, -1
  br i1 %cmp47, label %if.then49, label %for.inc51

if.then49:                                        ; preds = %for.body34
  %43 = load ptr, ptr %raster, align 8
  call void @_TIFFfree(ptr noundef %43) #4
  store i32 0, ptr %retval, align 4
  br label %return

for.inc51:                                        ; preds = %for.body34
  %44 = load i32, ptr @rowsperstrip, align 4
  %45 = load i32, ptr %row, align 4
  %add52 = add i32 %45, %44
  br label %for.cond31, !llvm.loop !17

for.end53:                                        ; preds = %for.cond31
  %46 = load ptr, ptr %raster, align 8
  call void @_TIFFfree(ptr noundef %46) #4
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end53, %if.then49, %if.then18, %if.then10, %if.then
  %47 = load i32, ptr %retval, align 4
  ret i32 %47
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

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) #3

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

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
