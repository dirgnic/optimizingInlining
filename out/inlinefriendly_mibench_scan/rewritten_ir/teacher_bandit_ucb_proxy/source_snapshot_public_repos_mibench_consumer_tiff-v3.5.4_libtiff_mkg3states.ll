; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_bandit_ucb_proxy/source_snapshot_public_repos_mibench_consumer_tiff-v3.5.4_libtiff_mkg3states.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/libtiff/mkg3states.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.TIFFFaxTabEnt = type { i8, i8, i64 }
%struct.proto = type { i16, i16 }

@.str = private unnamed_addr constant [31 x i8] c"%s %s TIFFFaxTabEnt %s[%d] = {\00", align 1
@storage_class = internal global ptr @.str.23, align 8
@const_class = internal global ptr @.str.23, align 8
@packoutput = internal global i32 1, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"%s%s%d,%d,%d%s\00", align 1
@prebrace = internal global ptr @.str.23, align 8
@postbrace = internal global ptr @.str.23, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\0A \00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"%s%s%3d,%3d,%4d%s\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c",\0A \00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"\0A};\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"c:s:bp\00", align 1
@optarg = external global ptr, align 8
@.str.10 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@__stderrp = external global ptr, align 8
@.str.12 = private unnamed_addr constant [50 x i8] c"usage: %s [-c const] [-s storage] [-p] [-b] file\0A\00", align 1
@optind = external global i32, align 4
@.str.13 = private unnamed_addr constant [11 x i8] c"g3states.h\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"%s: %s: Cannot create output file.\0A\00", align 1
@MainTable = global [128 x %struct.TIFFFaxTabEnt] zeroinitializer, align 8
@Pass = internal global [2 x %struct.proto] [%struct.proto { i16 8, i16 4 }, %struct.proto zeroinitializer], align 2
@Horiz = internal global [2 x %struct.proto] [%struct.proto { i16 4, i16 3 }, %struct.proto zeroinitializer], align 2
@V0 = internal global [2 x %struct.proto] [%struct.proto { i16 1, i16 1 }, %struct.proto zeroinitializer], align 2
@VR = internal global [4 x %struct.proto] [%struct.proto { i16 6, i16 19 }, %struct.proto { i16 48, i16 38 }, %struct.proto { i16 96, i16 55 }, %struct.proto zeroinitializer], align 2
@VL = internal global [4 x %struct.proto] [%struct.proto { i16 2, i16 19 }, %struct.proto { i16 16, i16 38 }, %struct.proto { i16 32, i16 55 }, %struct.proto zeroinitializer], align 2
@Ext = internal global [2 x %struct.proto] [%struct.proto { i16 64, i16 7 }, %struct.proto zeroinitializer], align 2
@EOLV = internal global [2 x %struct.proto] [%struct.proto { i16 0, i16 7 }, %struct.proto zeroinitializer], align 2
@WhiteTable = global [4096 x %struct.TIFFFaxTabEnt] zeroinitializer, align 8
@MakeUpW = internal global [28 x %struct.proto] [%struct.proto { i16 27, i16 1029 }, %struct.proto { i16 9, i16 2053 }, %struct.proto { i16 58, i16 3078 }, %struct.proto { i16 118, i16 4103 }, %struct.proto { i16 108, i16 5128 }, %struct.proto { i16 236, i16 6152 }, %struct.proto { i16 38, i16 7176 }, %struct.proto { i16 166, i16 8200 }, %struct.proto { i16 22, i16 9224 }, %struct.proto { i16 230, i16 10248 }, %struct.proto { i16 102, i16 11273 }, %struct.proto { i16 358, i16 12297 }, %struct.proto { i16 150, i16 13321 }, %struct.proto { i16 406, i16 14345 }, %struct.proto { i16 86, i16 15369 }, %struct.proto { i16 342, i16 16393 }, %struct.proto { i16 214, i16 17417 }, %struct.proto { i16 470, i16 18441 }, %struct.proto { i16 54, i16 19465 }, %struct.proto { i16 310, i16 20489 }, %struct.proto { i16 182, i16 21513 }, %struct.proto { i16 438, i16 22537 }, %struct.proto { i16 50, i16 23561 }, %struct.proto { i16 306, i16 24585 }, %struct.proto { i16 178, i16 25609 }, %struct.proto { i16 6, i16 26630 }, %struct.proto { i16 434, i16 27657 }, %struct.proto zeroinitializer], align 2
@MakeUp = internal global [14 x %struct.proto] [%struct.proto { i16 128, i16 28683 }, %struct.proto { i16 384, i16 29707 }, %struct.proto { i16 1408, i16 30731 }, %struct.proto { i16 1152, i16 31756 }, %struct.proto { i16 3200, i16 -32756 }, %struct.proto { i16 640, i16 -31732 }, %struct.proto { i16 2688, i16 -30708 }, %struct.proto { i16 1664, i16 -29684 }, %struct.proto { i16 3712, i16 -28660 }, %struct.proto { i16 896, i16 -27636 }, %struct.proto { i16 2944, i16 -26612 }, %struct.proto { i16 1920, i16 -25588 }, %struct.proto { i16 3968, i16 -24564 }, %struct.proto zeroinitializer], align 2
@TermW = internal global [65 x %struct.proto] [%struct.proto { i16 172, i16 8 }, %struct.proto { i16 56, i16 22 }, %struct.proto { i16 14, i16 36 }, %struct.proto { i16 1, i16 52 }, %struct.proto { i16 13, i16 68 }, %struct.proto { i16 3, i16 84 }, %struct.proto { i16 7, i16 100 }, %struct.proto { i16 15, i16 116 }, %struct.proto { i16 25, i16 133 }, %struct.proto { i16 5, i16 149 }, %struct.proto { i16 28, i16 165 }, %struct.proto { i16 2, i16 181 }, %struct.proto { i16 4, i16 198 }, %struct.proto { i16 48, i16 214 }, %struct.proto { i16 11, i16 230 }, %struct.proto { i16 43, i16 246 }, %struct.proto { i16 21, i16 262 }, %struct.proto { i16 53, i16 278 }, %struct.proto { i16 114, i16 295 }, %struct.proto { i16 24, i16 311 }, %struct.proto { i16 8, i16 327 }, %struct.proto { i16 116, i16 343 }, %struct.proto { i16 96, i16 359 }, %struct.proto { i16 16, i16 375 }, %struct.proto { i16 10, i16 391 }, %struct.proto { i16 106, i16 407 }, %struct.proto { i16 100, i16 423 }, %struct.proto { i16 18, i16 439 }, %struct.proto { i16 12, i16 455 }, %struct.proto { i16 64, i16 472 }, %struct.proto { i16 192, i16 488 }, %struct.proto { i16 88, i16 504 }, %struct.proto { i16 216, i16 520 }, %struct.proto { i16 72, i16 536 }, %struct.proto { i16 200, i16 552 }, %struct.proto { i16 40, i16 568 }, %struct.proto { i16 168, i16 584 }, %struct.proto { i16 104, i16 600 }, %struct.proto { i16 232, i16 616 }, %struct.proto { i16 20, i16 632 }, %struct.proto { i16 148, i16 648 }, %struct.proto { i16 84, i16 664 }, %struct.proto { i16 212, i16 680 }, %struct.proto { i16 52, i16 696 }, %struct.proto { i16 180, i16 712 }, %struct.proto { i16 32, i16 728 }, %struct.proto { i16 160, i16 744 }, %struct.proto { i16 80, i16 760 }, %struct.proto { i16 208, i16 776 }, %struct.proto { i16 74, i16 792 }, %struct.proto { i16 202, i16 808 }, %struct.proto { i16 42, i16 824 }, %struct.proto { i16 170, i16 840 }, %struct.proto { i16 36, i16 856 }, %struct.proto { i16 164, i16 872 }, %struct.proto { i16 26, i16 888 }, %struct.proto { i16 154, i16 904 }, %struct.proto { i16 90, i16 920 }, %struct.proto { i16 218, i16 936 }, %struct.proto { i16 82, i16 952 }, %struct.proto { i16 210, i16 968 }, %struct.proto { i16 76, i16 984 }, %struct.proto { i16 204, i16 1000 }, %struct.proto { i16 44, i16 1016 }, %struct.proto zeroinitializer], align 2
@EOLH = internal global [2 x %struct.proto] [%struct.proto { i16 0, i16 11 }, %struct.proto zeroinitializer], align 2
@BlackTable = global [8192 x %struct.TIFFFaxTabEnt] zeroinitializer, align 8
@MakeUpB = internal global [28 x %struct.proto] [%struct.proto { i16 960, i16 1034 }, %struct.proto { i16 304, i16 2060 }, %struct.proto { i16 2352, i16 3084 }, %struct.proto { i16 3488, i16 4108 }, %struct.proto { i16 3264, i16 5132 }, %struct.proto { i16 704, i16 6156 }, %struct.proto { i16 2752, i16 7180 }, %struct.proto { i16 1728, i16 8205 }, %struct.proto { i16 5824, i16 9229 }, %struct.proto { i16 2624, i16 10253 }, %struct.proto { i16 6720, i16 11277 }, %struct.proto { i16 1600, i16 12301 }, %struct.proto { i16 5696, i16 13325 }, %struct.proto { i16 2496, i16 14349 }, %struct.proto { i16 6592, i16 15373 }, %struct.proto { i16 1472, i16 16397 }, %struct.proto { i16 5568, i16 17421 }, %struct.proto { i16 3520, i16 18445 }, %struct.proto { i16 7616, i16 19469 }, %struct.proto { i16 2368, i16 20493 }, %struct.proto { i16 6464, i16 21517 }, %struct.proto { i16 1344, i16 22541 }, %struct.proto { i16 5440, i16 23565 }, %struct.proto { i16 2880, i16 24589 }, %struct.proto { i16 6976, i16 25613 }, %struct.proto { i16 1216, i16 26637 }, %struct.proto { i16 5312, i16 27661 }, %struct.proto zeroinitializer], align 2
@TermB = internal global [65 x %struct.proto] [%struct.proto { i16 944, i16 10 }, %struct.proto { i16 2, i16 19 }, %struct.proto { i16 3, i16 34 }, %struct.proto { i16 1, i16 50 }, %struct.proto { i16 6, i16 67 }, %struct.proto { i16 12, i16 84 }, %struct.proto { i16 4, i16 100 }, %struct.proto { i16 24, i16 117 }, %struct.proto { i16 40, i16 134 }, %struct.proto { i16 8, i16 150 }, %struct.proto { i16 16, i16 167 }, %struct.proto { i16 80, i16 183 }, %struct.proto { i16 112, i16 199 }, %struct.proto { i16 32, i16 216 }, %struct.proto { i16 224, i16 232 }, %struct.proto { i16 48, i16 249 }, %struct.proto { i16 928, i16 266 }, %struct.proto { i16 96, i16 282 }, %struct.proto { i16 64, i16 298 }, %struct.proto { i16 1840, i16 315 }, %struct.proto { i16 176, i16 331 }, %struct.proto { i16 432, i16 347 }, %struct.proto { i16 1888, i16 363 }, %struct.proto { i16 160, i16 379 }, %struct.proto { i16 1856, i16 395 }, %struct.proto { i16 192, i16 411 }, %struct.proto { i16 1328, i16 428 }, %struct.proto { i16 3376, i16 444 }, %struct.proto { i16 816, i16 460 }, %struct.proto { i16 2864, i16 476 }, %struct.proto { i16 352, i16 492 }, %struct.proto { i16 2400, i16 508 }, %struct.proto { i16 1376, i16 524 }, %struct.proto { i16 3424, i16 540 }, %struct.proto { i16 1200, i16 556 }, %struct.proto { i16 3248, i16 572 }, %struct.proto { i16 688, i16 588 }, %struct.proto { i16 2736, i16 604 }, %struct.proto { i16 1712, i16 620 }, %struct.proto { i16 3760, i16 636 }, %struct.proto { i16 864, i16 652 }, %struct.proto { i16 2912, i16 668 }, %struct.proto { i16 1456, i16 684 }, %struct.proto { i16 3504, i16 700 }, %struct.proto { i16 672, i16 716 }, %struct.proto { i16 2720, i16 732 }, %struct.proto { i16 1696, i16 748 }, %struct.proto { i16 3744, i16 764 }, %struct.proto { i16 608, i16 780 }, %struct.proto { i16 2656, i16 796 }, %struct.proto { i16 1184, i16 812 }, %struct.proto { i16 3232, i16 828 }, %struct.proto { i16 576, i16 844 }, %struct.proto { i16 3776, i16 860 }, %struct.proto { i16 448, i16 876 }, %struct.proto { i16 3648, i16 892 }, %struct.proto { i16 320, i16 908 }, %struct.proto { i16 416, i16 924 }, %struct.proto { i16 2464, i16 940 }, %struct.proto { i16 3392, i16 956 }, %struct.proto { i16 832, i16 972 }, %struct.proto { i16 1440, i16 988 }, %struct.proto { i16 1632, i16 1004 }, %struct.proto { i16 3680, i16 1020 }, %struct.proto zeroinitializer], align 2
@.str.16 = private unnamed_addr constant [58 x i8] c"/* WARNING, this file was automatically generated by the\0A\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"    mkg3states program */\0A\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"#include \22tiff.h\22\0A\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"#include \22tif_fax3.h\22\0A\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"TIFFFaxMainTable\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"TIFFFaxWhiteTable\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"TIFFFaxBlackTable\00", align 1
@.str.23 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind ssp uwtable
define void @WriteTable(ptr noundef %fd, ptr noundef %T, i32 noundef %Size, ptr noundef %name) #0 {
entry:
  %fd.addr = alloca ptr, align 8
  %T.addr = alloca ptr, align 8
  %Size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %sep = alloca ptr, align 8
  store ptr %fd, ptr %fd.addr, align 8
  store ptr %T, ptr %T.addr, align 8
  store i32 %Size, ptr %Size.addr, align 4
  %0 = load ptr, ptr @storage_class, align 8
  %1 = load ptr, ptr @const_class, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str, ptr noundef %0, ptr noundef %1, ptr noundef %name, i32 noundef %Size) #3
  %2 = load i32, ptr @packoutput, align 4
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.else7, label %if.then

if.then:                                          ; preds = %entry
  store ptr @.str.1, ptr %sep, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.then
  %storemerge2 = phi i32 [ 0, %if.then ], [ %inc, %for.body ]
  store i32 %storemerge2, ptr %i, align 4
  %3 = load i32, ptr %Size.addr, align 4
  %cmp = icmp slt i32 %storemerge2, %3
  br i1 %cmp, label %for.body, label %if.end30

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %fd.addr, align 8
  %5 = load ptr, ptr %sep, align 8
  %6 = load ptr, ptr @prebrace, align 8
  %7 = load ptr, ptr %T.addr, align 8
  %8 = load i8, ptr %7, align 8
  %conv = zext i8 %8 to i32
  %Width = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %7, i64 0, i32 1
  %9 = load i8, ptr %Width, align 1
  %conv1 = zext i8 %9 to i32
  %Param = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %7, i64 0, i32 2
  %10 = load i64, ptr %Param, align 8
  %conv2 = trunc i64 %10 to i32
  %11 = load ptr, ptr @postbrace, align 8
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.2, ptr noundef %5, ptr noundef %6, i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2, ptr noundef %11) #3
  %12 = load i32, ptr %i, align 4
  %add = add nsw i32 %12, 1
  %rem = srem i32 %add, 12
  %cmp4 = icmp eq i32 %rem, 0
  %.str.3..str.4 = select i1 %cmp4, ptr @.str.3, ptr @.str.4
  store ptr %.str.3..str.4, ptr %sep, align 8
  %13 = load ptr, ptr %T.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %13, i64 1
  store ptr %incdec.ptr, ptr %T.addr, align 8
  %14 = load i32, ptr %i, align 4
  %inc = add nsw i32 %14, 1
  br label %for.cond, !llvm.loop !6

if.else7:                                         ; preds = %entry
  store ptr @.str.5, ptr %sep, align 8
  br label %for.cond8

for.cond8:                                        ; preds = %for.body11, %if.else7
  %storemerge = phi i32 [ 0, %if.else7 ], [ %inc28, %for.body11 ]
  store i32 %storemerge, ptr %i, align 4
  %15 = load i32, ptr %Size.addr, align 4
  %cmp9 = icmp slt i32 %storemerge, %15
  br i1 %cmp9, label %for.body11, label %if.end30

for.body11:                                       ; preds = %for.cond8
  %16 = load ptr, ptr %fd.addr, align 8
  %17 = load ptr, ptr %sep, align 8
  %18 = load ptr, ptr @prebrace, align 8
  %19 = load ptr, ptr %T.addr, align 8
  %20 = load i8, ptr %19, align 8
  %conv13 = zext i8 %20 to i32
  %Width14 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %19, i64 0, i32 1
  %21 = load i8, ptr %Width14, align 1
  %conv15 = zext i8 %21 to i32
  %Param16 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %19, i64 0, i32 2
  %22 = load i64, ptr %Param16, align 8
  %conv17 = trunc i64 %22 to i32
  %23 = load ptr, ptr @postbrace, align 8
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.6, ptr noundef %17, ptr noundef %18, i32 noundef %conv13, i32 noundef %conv15, i32 noundef %conv17, ptr noundef %23) #3
  %24 = load i32, ptr %i, align 4
  %add19 = add nsw i32 %24, 1
  %rem20 = srem i32 %add19, 6
  %cmp21 = icmp eq i32 %rem20, 0
  %.str.7..str.4 = select i1 %cmp21, ptr @.str.7, ptr @.str.4
  store ptr %.str.7..str.4, ptr %sep, align 8
  %25 = load ptr, ptr %T.addr, align 8
  %incdec.ptr26 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %25, i64 1
  store ptr %incdec.ptr26, ptr %T.addr, align 8
  %26 = load i32, ptr %i, align 4
  %inc28 = add nsw i32 %26, 1
  br label %for.cond8, !llvm.loop !8

if.end30:                                         ; preds = %for.cond8, %for.cond
  %27 = load ptr, ptr %fd.addr, align 8
  %28 = call i64 @fwrite(ptr nonnull @.str.8, i64 4, i64 1, ptr %27)
  ret void
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %fd = alloca ptr, align 8
  %outputfile = alloca ptr, align 8
  %c = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load i32, ptr %argc.addr, align 4
  %1 = load ptr, ptr %argv.addr, align 8
  %call = call i32 @getopt(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.9) #3
  store i32 %call, ptr %c, align 4
  %cmp.not = icmp eq i32 %call, -1
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %c, align 4
  switch i32 %2, label %sw.epilog [
    i32 99, label %sw.bb
    i32 115, label %sw.bb1
    i32 112, label %sw.bb2
    i32 98, label %sw.bb3
    i32 63, label %sw.bb4
  ]

sw.bb:                                            ; preds = %while.body
  %3 = load ptr, ptr @optarg, align 8
  store ptr %3, ptr @const_class, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %while.body
  %4 = load ptr, ptr @optarg, align 8
  store ptr %4, ptr @storage_class, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %while.body
  store i32 0, ptr @packoutput, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %while.body
  store ptr @.str.10, ptr @prebrace, align 8
  store ptr @.str.11, ptr @postbrace, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %while.body
  %5 = load ptr, ptr @__stderrp, align 8
  %6 = load ptr, ptr %argv.addr, align 8
  %7 = load ptr, ptr %6, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.12, ptr noundef %7) #3
  store i32 -1, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb, %while.body
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %8 = load i32, ptr @optind, align 4
  %9 = load i32, ptr %argc.addr, align 4
  %cmp6 = icmp slt i32 %8, %9
  br i1 %cmp6, label %cond.true, label %cond.end

cond.true:                                        ; preds = %while.end
  %10 = load ptr, ptr %argv.addr, align 8
  %11 = load i32, ptr @optind, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx7 = getelementptr inbounds ptr, ptr %10, i64 %idxprom
  %12 = load ptr, ptr %arrayidx7, align 8
  br label %cond.end

cond.end:                                         ; preds = %while.end, %cond.true
  %cond = phi ptr [ %12, %cond.true ], [ @.str.13, %while.end ]
  store ptr %cond, ptr %outputfile, align 8
  %call8 = call ptr @"\01_fopen"(ptr noundef %cond, ptr noundef nonnull @.str.14) #3
  store ptr %call8, ptr %fd, align 8
  %cmp9 = icmp eq ptr %call8, null
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %13 = load ptr, ptr @__stderrp, align 8
  %14 = load ptr, ptr %argv.addr, align 8
  %15 = load ptr, ptr %14, align 8
  %16 = load ptr, ptr %outputfile, align 8
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.15, ptr noundef %15, ptr noundef %16) #3
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %cond.end
  call void @FillTable(ptr noundef nonnull @MainTable, i32 noundef 7, ptr noundef nonnull @Pass, i32 noundef 1)
  call void @FillTable(ptr noundef nonnull @MainTable, i32 noundef 7, ptr noundef nonnull @Horiz, i32 noundef 2)
  call void @FillTable(ptr noundef nonnull @MainTable, i32 noundef 7, ptr noundef nonnull @V0, i32 noundef 3)
  call void @FillTable(ptr noundef nonnull @MainTable, i32 noundef 7, ptr noundef nonnull @VR, i32 noundef 4)
  call void @FillTable(ptr noundef nonnull @MainTable, i32 noundef 7, ptr noundef nonnull @VL, i32 noundef 5)
  call void @FillTable(ptr noundef nonnull @MainTable, i32 noundef 7, ptr noundef nonnull @Ext, i32 noundef 6)
  call void @FillTable(ptr noundef nonnull @MainTable, i32 noundef 7, ptr noundef nonnull @EOLV, i32 noundef 12)
  call void @FillTable(ptr noundef nonnull @WhiteTable, i32 noundef 12, ptr noundef nonnull @MakeUpW, i32 noundef 9)
  call void @FillTable(ptr noundef nonnull @WhiteTable, i32 noundef 12, ptr noundef nonnull @MakeUp, i32 noundef 11)
  call void @FillTable(ptr noundef nonnull @WhiteTable, i32 noundef 12, ptr noundef nonnull @TermW, i32 noundef 7)
  call void @FillTable(ptr noundef nonnull @WhiteTable, i32 noundef 12, ptr noundef nonnull @EOLH, i32 noundef 12)
  call void @FillTable(ptr noundef nonnull @BlackTable, i32 noundef 13, ptr noundef nonnull @MakeUpB, i32 noundef 10)
  call void @FillTable(ptr noundef nonnull @BlackTable, i32 noundef 13, ptr noundef nonnull @MakeUp, i32 noundef 11)
  call void @FillTable(ptr noundef nonnull @BlackTable, i32 noundef 13, ptr noundef nonnull @TermB, i32 noundef 8)
  call void @FillTable(ptr noundef nonnull @BlackTable, i32 noundef 13, ptr noundef nonnull @EOLH, i32 noundef 12)
  %17 = load ptr, ptr %fd, align 8
  %18 = call i64 @fwrite(ptr nonnull @.str.16, i64 57, i64 1, ptr %17)
  %19 = call i64 @fwrite(ptr nonnull @.str.17, i64 26, i64 1, ptr %17)
  %20 = call i64 @fwrite(ptr nonnull @.str.18, i64 18, i64 1, ptr %17)
  %21 = call i64 @fwrite(ptr nonnull @.str.19, i64 22, i64 1, ptr %17)
  call void @WriteTable(ptr noundef %17, ptr noundef nonnull @MainTable, i32 noundef 128, ptr noundef nonnull @.str.20)
  call void @WriteTable(ptr noundef %17, ptr noundef nonnull @WhiteTable, i32 noundef 4096, ptr noundef nonnull @.str.21)
  %22 = load ptr, ptr %fd, align 8
  call void @WriteTable(ptr noundef %22, ptr noundef nonnull @BlackTable, i32 noundef 8192, ptr noundef nonnull @.str.22)
  %call16 = call i32 @fclose(ptr noundef %22) #3
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then, %sw.bb4
  %23 = load i32, ptr %retval, align 4
  ret i32 %23
}

declare i32 @getopt(...) #1

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @FillTable(ptr noundef %T, i32 noundef %Size, ptr noundef %P, i32 noundef %State) #0 {
entry:
  %T.addr = alloca ptr, align 8
  %P.addr = alloca ptr, align 8
  %State.addr = alloca i32, align 4
  %limit = alloca i32, align 4
  %width = alloca i32, align 4
  %param = alloca i32, align 4
  %incr = alloca i32, align 4
  %code = alloca i32, align 4
  %E = alloca ptr, align 8
  store ptr %T, ptr %T.addr, align 8
  store ptr %P, ptr %P.addr, align 8
  store i32 %State, ptr %State.addr, align 4
  %shl = shl i32 1, %Size
  store i32 %shl, ptr %limit, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %0 = load ptr, ptr %P.addr, align 8
  %val = getelementptr inbounds %struct.proto, ptr %0, i64 0, i32 1
  %1 = load i16, ptr %val, align 2
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %P.addr, align 8
  %val1 = getelementptr inbounds %struct.proto, ptr %2, i64 0, i32 1
  %3 = load i16, ptr %val1, align 2
  %4 = and i16 %3, 15
  %and = zext i16 %4 to i32
  store i32 %and, ptr %width, align 4
  %5 = lshr i16 %3, 4
  %6 = zext i16 %5 to i32
  store i32 %6, ptr %param, align 4
  %shl4 = shl i32 1, %and
  store i32 %shl4, ptr %incr, align 4
  %7 = load ptr, ptr %P.addr, align 8
  %8 = load i16, ptr %7, align 2
  %conv6 = zext i16 %8 to i32
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.body
  %storemerge = phi i32 [ %conv6, %while.body ], [ %add, %for.body ]
  store i32 %storemerge, ptr %code, align 4
  %9 = load i32, ptr %limit, align 4
  %cmp = icmp slt i32 %storemerge, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %T.addr, align 8
  %11 = load i32, ptr %code, align 4
  %idx.ext = sext i32 %11 to i64
  %add.ptr = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %10, i64 %idx.ext
  store ptr %add.ptr, ptr %E, align 8
  %12 = load i32, ptr %State.addr, align 4
  %conv8 = trunc i32 %12 to i8
  store i8 %conv8, ptr %add.ptr, align 8
  %13 = load i32, ptr %width, align 4
  %conv10 = trunc i32 %13 to i8
  %Width = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %10, i64 %idx.ext, i32 1
  store i8 %conv10, ptr %Width, align 1
  %14 = load i32, ptr %param, align 4
  %conv11 = sext i32 %14 to i64
  %15 = load ptr, ptr %E, align 8
  %Param = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %15, i64 0, i32 2
  store i64 %conv11, ptr %Param, align 8
  %16 = load i32, ptr %incr, align 4
  %17 = load i32, ptr %code, align 4
  %add = add nsw i32 %17, %16
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %18 = load ptr, ptr %P.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.proto, ptr %18, i64 1
  store ptr %incdec.ptr, ptr %P.addr, align 8
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @fclose(ptr noundef) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) #2

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nofree nounwind }
attributes #3 = { nounwind }

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
