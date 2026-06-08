; ModuleID = './out/inlinefriendly_scan/rewritten_ir/teacher_constant_argument/source_snapshot_public_repos_ctuning-programs_program_cbench-bzip2_bzip2.prepared.ll'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-bzip2/bzip2.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.stat = type { i32, i16, i16, i64, i32, i32, i32, %struct.timespec, %struct.timespec, %struct.timespec, %struct.timespec, i64, i64, i32, i32, i32, i32, [2 x i64] }
%struct.timespec = type { i64, i64 }
%struct.zzzz = type { ptr, ptr }
%struct.UInt64 = type { [8 x i8] }
%struct.utimbuf = type { i64, i64 }

@.str = private unnamed_addr constant [5 x i8] c".bz2\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c".bz\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c".tbz2\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".tbz\00", align 1
@zSuffix = global [4 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], align 8
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [5 x i8] c".tar\00", align 1
@unzSuffix = global [4 x ptr] [ptr @.str.4, ptr @.str.4, ptr @.str.5, ptr @.str.5], align 8
@outputHandleJustInCase = global ptr null, align 8
@smallMode = global i8 0, align 1
@keepInputFiles = global i8 0, align 1
@forceOverwrite = global i8 0, align 1
@noisy = global i8 0, align 1
@verbosity = global i32 0, align 4
@blockSize100k = global i32 0, align 4
@testFailsExist = global i8 0, align 1
@unzFailsExist = global i8 0, align 1
@numFileNames = global i32 0, align 4
@numFilesProcessed = global i32 0, align 4
@workFactor = global i32 0, align 4
@deleteOutputOnInterrupt = global i8 0, align 1
@exitValue = global i32 0, align 4
@inName = global [1034 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@outName = global [1034 x i8] zeroinitializer, align 1
@progNameReally = global [1034 x i8] zeroinitializer, align 1
@progName = global ptr null, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"BZIP2\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"BZIP\00", align 1
@longestFileName = global i32 0, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@srcMode = global i32 0, align 4
@opMode = global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"unzip\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"UNZIP\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"z2cat\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"Z2CAT\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"zcat\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"ZCAT\00", align 1
@__stderrp = external global ptr, align 8
@.str.16 = private unnamed_addr constant [19 x i8] c"%s: Bad flag `%s'\0A\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"--stdout\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"--decompress\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"--compress\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"--force\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"--test\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"--keep\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"--small\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"--quiet\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"--license\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"--exponential\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"--repetitive-best\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"--repetitive-fast\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"--fast\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"--best\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"--verbose\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.34 = private unnamed_addr constant [40 x i8] c"%s: -c and -t cannot be used together.\0A\00", align 1
@.str.35 = private unnamed_addr constant [113 x i8] c"\0AYou can use the `bzip2recover' program to attempt to recover\0Adata from undamaged sections of corrupted files.\0A\0A\00", align 1
@tmpName = global [1034 x i8] zeroinitializer, align 1
@.str.36 = private unnamed_addr constant [869 x i8] c"\0A%s: Caught a SIGSEGV or SIGBUS whilst compressing.\0A\0A   Possible causes are (most likely first):\0A   (1) This computer has unreliable memory or cache hardware\0A       (a surprisingly common problem; try a different machine.)\0A   (2) A bug in the compiler used to create this executable\0A       (unlikely, if you didn't compile bzip2 yourself.)\0A   (3) A real bug in bzip2 -- I hope this should never be the case.\0A   The user's manual, Section 4.3, has more info on (1) and (2).\0A   \0A   If you suspect this is a bug in bzip2, or are unsure about (1)\0A   or (2), feel free to report it to me at: jseward@bzip.org.\0A   Section 4.3 of the user's manual describes the info a useful\0A   bug report should have.  If the manual is available on your\0A   system, please try and read it before mailing me.  If you don't\0A   have the manual or can't be bothered to read it, mail me anyway.\0A\0A\00", align 1
@.str.37 = private unnamed_addr constant [996 x i8] c"\0A%s: Caught a SIGSEGV or SIGBUS whilst decompressing.\0A\0A   Possible causes are (most likely first):\0A   (1) The compressed data is corrupted, and bzip2's usual checks\0A       failed to detect this.  Try bzip2 -tvv my_file.bz2.\0A   (2) This computer has unreliable memory or cache hardware\0A       (a surprisingly common problem; try a different machine.)\0A   (3) A bug in the compiler used to create this executable\0A       (unlikely, if you didn't compile bzip2 yourself.)\0A   (4) A real bug in bzip2 -- I hope this should never be the case.\0A   The user's manual, Section 4.3, has more info on (2) and (3).\0A   \0A   If you suspect this is a bug in bzip2, or are unsure about (2)\0A   or (3), feel free to report it to me at: jseward@bzip.org.\0A   Section 4.3 of the user's manual describes the info a useful\0A   bug report should have.  If the manual is available on your\0A   system, please try and read it before mailing me.  If you don't\0A   have the manual or can't be bothered to read it, mail me anyway.\0A\0A\00", align 1
@.str.38 = private unnamed_addr constant [36 x i8] c"\09Input file = %s, output file = %s\0A\00", align 1
@.str.39 = private unnamed_addr constant [44 x i8] c"%s: Deleting output file %s, if it exists.\0A\00", align 1
@.str.40 = private unnamed_addr constant [59 x i8] c"%s: WARNING: deletion of output file (apparently) failed.\0A\00", align 1
@.str.41 = private unnamed_addr constant [49 x i8] c"%s: WARNING: deletion of output file suppressed\0A\00", align 1
@.str.42 = private unnamed_addr constant [56 x i8] c"%s:    since input file no longer exists.  Output file\0A\00", align 1
@.str.43 = private unnamed_addr constant [32 x i8] c"%s:    `%s' may be incomplete.\0A\00", align 1
@.str.44 = private unnamed_addr constant [61 x i8] c"%s:    I suggest doing an integrity test (bzip2 -tv) of it.\0A\00", align 1
@.str.45 = private unnamed_addr constant [110 x i8] c"%s: WARNING: some files have not been processed:\0A%s:    %d specified on command line, %d not processed yet.\0A\0A\00", align 1
@.str.46 = private unnamed_addr constant [241 x i8] c"\0AIt is possible that the compressed file(s) have become corrupted.\0AYou can use the -tvv option to test integrity of such files.\0A\0AYou can use the `bzip2recover' program to attempt to recover\0Adata from undamaged sections of corrupted files.\0A\0A\00", align 1
@.str.47 = private unnamed_addr constant [120 x i8] c"bzip2: file name\0A`%s'\0Ais suspiciously (more than %d chars) long.\0ATry using a reasonable file name instead.  Sorry! :-)\0A\00", align 1
@.str.48 = private unnamed_addr constant [38 x i8] c"\0A%s: couldn't allocate enough memory\0A\00", align 1
@.str.49 = private unnamed_addr constant [531 x i8] c"bzip2, a block-sorting file compressor.  Version %s.\0A   \0A   Copyright (C) 1996-2006 by Julian Seward.\0A   \0A   This program is free software; you can redistribute it and/or modify\0A   it under the terms set out in the LICENSE file, which is included\0A   in the bzip2-1.0.4 source distribution.\0A   \0A   This program is distributed in the hope that it will be useful,\0A   but WITHOUT ANY WARRANTY; without even the implied warranty of\0A   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the\0A   LICENSE file for more details.\0A   \0A\00", align 1
@.str.50 = private unnamed_addr constant [1230 x i8] c"bzip2, a block-sorting file compressor.  Version %s.\0A\0A   usage: %s [flags and input files in any order]\0A\0A   -h --help           print this message\0A   -d --decompress     force decompression\0A   -z --compress       force compression\0A   -k --keep           keep (don't delete) input files\0A   -f --force          overwrite existing output files\0A   -t --test           test compressed file integrity\0A   -c --stdout         output to standard out\0A   -q --quiet          suppress noncritical error messages\0A   -v --verbose        be verbose (a 2nd -v gives more)\0A   -L --license        display software version & license\0A   -V --version        display software version & license\0A   -s --small          use less memory (at most 2500k)\0A   -1 .. -9            set block size to 100k .. 900k\0A   --fast              alias for -1\0A   --best              alias for -9\0A\0A   If invoked as `bzip2', default action is to compress.\0A              as `bunzip2',  default action is to decompress.\0A              as `bzcat', default action is to decompress to stdout.\0A\0A   If no file names are given, bzip2 compresses or decompresses\0A   from standard input to standard output.  You can combine\0A   short flags, so `-v -4' means the same as -v4 or -4v, &c.\0A\0A\00", align 1
@.str.51 = private unnamed_addr constant [49 x i8] c"%s: %s is redundant in versions 0.9.5 and above\0A\00", align 1
@.str.52 = private unnamed_addr constant [45 x i8] c"\0A%s: Control-C or similar caught, quitting.\0A\00", align 1
@.str.53 = private unnamed_addr constant [21 x i8] c"compress: bad modes\0A\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"(stdin)\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"(stdout)\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"bzip2.tmp\00", align 1
@.str.57 = private unnamed_addr constant [39 x i8] c"%s: There are no files matching `%s'.\0A\00", align 1
@.str.58 = private unnamed_addr constant [35 x i8] c"%s: Can't open input file %s: %s.\0A\00", align 1
@.str.59 = private unnamed_addr constant [42 x i8] c"%s: Input file %s already has %s suffix.\0A\00", align 1
@.str.60 = private unnamed_addr constant [35 x i8] c"%s: Input file %s is a directory.\0A\00", align 1
@.str.61 = private unnamed_addr constant [41 x i8] c"%s: Input file %s is not a normal file.\0A\00", align 1
@.str.62 = private unnamed_addr constant [36 x i8] c"%s: Output file %s already exists.\0A\00", align 1
@.str.63 = private unnamed_addr constant [40 x i8] c"%s: Input file %s has %d other link%s.\0A\00", align 1
@.str.64 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@__stdinp = external global ptr, align 8
@__stdoutp = external global ptr, align 8
@.str.65 = private unnamed_addr constant [50 x i8] c"%s: I won't write compressed data to a terminal.\0A\00", align 1
@.str.66 = private unnamed_addr constant [34 x i8] c"%s: For help, type: `%s --help'.\0A\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.69 = private unnamed_addr constant [38 x i8] c"%s: Can't create output file %s: %s.\0A\00", align 1
@.str.70 = private unnamed_addr constant [22 x i8] c"compress: bad srcMode\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"  %s: \00", align 1
@.str.72 = private unnamed_addr constant [109 x i8] c"\0A%s: PANIC -- internal consistency error:\0A\09%s\0A\09This is a BUG.  Please report it to me at:\0A\09jseward@bzip.org\0A\00", align 1
@fileMetaInfo = internal global %struct.stat zeroinitializer, align 8
@.str.73 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.74 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.75 = private unnamed_addr constant [22 x i8] c" no data compressed.\0A\00", align 1
@.str.76 = private unnamed_addr constant [57 x i8] c"%6.3f:1, %6.3f bits/byte, %5.2f%% saved, %s in, %s out.\0A\00", align 1
@.str.77 = private unnamed_addr constant [26 x i8] c"compress:unexpected error\00", align 1
@.str.78 = private unnamed_addr constant [236 x i8] c"bzip2: I'm not configured correctly for this platform!\0A\09I require Int32, Int16 and Char to have sizes\0A\09of 4, 2 and 1 bytes to run properly, and they don't.\0A\09Probably you can fix this by defining them correctly,\0A\09and recompiling.  Bye!\0A\00", align 1
@.str.79 = private unnamed_addr constant [65 x i8] c"\0A%s: I/O or other error, bailing out.  Possible reason follows.\0A\00", align 1
@.str.80 = private unnamed_addr constant [23 x i8] c"uncompress: bad modes\0A\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c".out\00", align 1
@.str.82 = private unnamed_addr constant [50 x i8] c"%s: Can't guess original name for %s -- using %s\0A\00", align 1
@.str.83 = private unnamed_addr constant [51 x i8] c"%s: I won't read compressed data from a terminal.\0A\00", align 1
@.str.84 = private unnamed_addr constant [34 x i8] c"%s: Can't open input file %s:%s.\0A\00", align 1
@.str.85 = private unnamed_addr constant [24 x i8] c"uncompress: bad srcMode\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@.str.87 = private unnamed_addr constant [19 x i8] c"not a bzip2 file.\0A\00", align 1
@.str.88 = private unnamed_addr constant [29 x i8] c"%s: %s is not a bzip2 file.\0A\00", align 1
@.str.89 = private unnamed_addr constant [27 x i8] c"decompress:bzReadGetUnused\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"\0A    \00", align 1
@.str.91 = private unnamed_addr constant [45 x i8] c"\0A%s: %s: trailing garbage after EOF ignored\0A\00", align 1
@.str.92 = private unnamed_addr constant [28 x i8] c"decompress:unexpected error\00", align 1
@.str.93 = private unnamed_addr constant [47 x i8] c"\0A%s: Data integrity error when decompressing.\0A\00", align 1
@.str.94 = private unnamed_addr constant [95 x i8] c"\0A%s: Compressed file ends unexpectedly;\0A\09perhaps it is corrupted?  *Possible* reason follows.\0A\00", align 1
@.str.95 = private unnamed_addr constant [18 x i8] c"testf: bad modes\0A\00", align 1
@.str.96 = private unnamed_addr constant [30 x i8] c"%s: Can't open input %s: %s.\0A\00", align 1
@.str.97 = private unnamed_addr constant [19 x i8] c"testf: bad srcMode\00", align 1
@.str.98 = private unnamed_addr constant [4 x i8] c"ok\0A\00", align 1
@.str.99 = private unnamed_addr constant [21 x i8] c"test:bzReadGetUnused\00", align 1
@.str.100 = private unnamed_addr constant [9 x i8] c"%s: %s: \00", align 1
@.str.101 = private unnamed_addr constant [36 x i8] c"data integrity (CRC) error in data\0A\00", align 1
@.str.102 = private unnamed_addr constant [24 x i8] c"file ends unexpectedly\0A\00", align 1
@.str.103 = private unnamed_addr constant [46 x i8] c"bad magic number (file not created by bzip2)\0A\00", align 1
@.str.104 = private unnamed_addr constant [36 x i8] c"trailing garbage after EOF ignored\0A\00", align 1
@.str.105 = private unnamed_addr constant [22 x i8] c"test:unexpected error\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main1(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %v.addr.i1 = alloca i32, align 4
  %v.addr.i = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %tmp = alloca ptr, align 8
  %argList = alloca ptr, align 8
  %aa = alloca ptr, align 8
  %decode = alloca i8, align 1
  %aa2 = alloca ptr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store ptr null, ptr @outputHandleJustInCase, align 8
  store i8 0, ptr @smallMode, align 1
  store i8 0, ptr @keepInputFiles, align 1
  store i8 0, ptr @forceOverwrite, align 1
  store i8 1, ptr @noisy, align 1
  store i32 0, ptr @verbosity, align 4
  store i32 9, ptr @blockSize100k, align 4
  store i8 0, ptr @testFailsExist, align 1
  store i8 0, ptr @unzFailsExist, align 1
  store i32 0, ptr @numFileNames, align 4
  store i32 0, ptr @numFilesProcessed, align 4
  store i32 30, ptr @workFactor, align 4
  store i8 0, ptr @deleteOutputOnInterrupt, align 1
  store i32 0, ptr @exitValue, align 4
  store i32 0, ptr %j, align 4
  store i32 0, ptr %i, align 4
  %call = call ptr @signal(i32 noundef 11, ptr noundef nonnull @mySIGSEGVorSIGBUScatcher) #13
  %call1 = call ptr @signal(i32 noundef 10, ptr noundef nonnull @mySIGSEGVorSIGBUScatcher) #13
  call void @copyFileName(ptr noundef nonnull @inName, ptr noundef nonnull @.str.6)
  call void @copyFileName(ptr noundef nonnull @outName, ptr noundef nonnull @.str.6)
  %0 = load ptr, ptr %argv.addr, align 8
  %1 = load ptr, ptr %0, align 8
  call void @copyFileName(ptr noundef nonnull @progNameReally, ptr noundef %1)
  store ptr @progNameReally, ptr @progName, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi ptr [ @progNameReally, %entry ], [ %incdec.ptr, %for.inc ]
  store ptr %storemerge, ptr %tmp, align 8
  %2 = load i8, ptr %storemerge, align 1
  %cmp.not = icmp eq i8 %2, 0
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %tmp, align 8
  %4 = load i8, ptr %3, align 1
  %cmp4 = icmp eq i8 %4, 47
  br i1 %cmp4, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %5 = load ptr, ptr %tmp, align 8
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 1
  store ptr %add.ptr, ptr @progName, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %6 = load ptr, ptr %tmp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i64 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %argList, align 8
  call void @addFlagsFromEnvVar(ptr noundef nonnull %argList, ptr noundef nonnull @.str.7)
  call void @addFlagsFromEnvVar(ptr noundef nonnull %argList, ptr noundef nonnull @.str.8)
  br label %for.cond6

for.cond6:                                        ; preds = %for.body9, %for.end
  %storemerge4 = phi i32 [ 1, %for.end ], [ %inc, %for.body9 ]
  store i32 %storemerge4, ptr %i, align 4
  %7 = load i32, ptr %argc.addr, align 4
  %cmp7.not.not = icmp slt i32 %storemerge4, %7
  br i1 %cmp7.not.not, label %for.body9, label %for.end13

for.body9:                                        ; preds = %for.cond6
  %8 = load ptr, ptr %argList, align 8
  %9 = load ptr, ptr %argv.addr, align 8
  %10 = load i32, ptr %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds ptr, ptr %9, i64 %idxprom
  %11 = load ptr, ptr %arrayidx10, align 8
  %call11 = call ptr @snocString(ptr noundef %8, ptr noundef %11)
  store ptr %call11, ptr %argList, align 8
  %12 = load i32, ptr %i, align 4
  %inc = add nsw i32 %12, 1
  br label %for.cond6, !llvm.loop !8

for.end13:                                        ; preds = %for.cond6
  store i32 7, ptr @longestFileName, align 4
  store i32 0, ptr @numFileNames, align 4
  store i8 1, ptr %decode, align 1
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc42, %for.end13
  %storemerge5.in = phi ptr [ %argList, %for.end13 ], [ %link, %for.inc42 ]
  %storemerge5 = load ptr, ptr %storemerge5.in, align 8
  store ptr %storemerge5, ptr %aa, align 8
  %cmp15.not = icmp eq ptr %storemerge5, null
  br i1 %cmp15.not, label %for.end43, label %for.body17

for.body17:                                       ; preds = %for.cond14
  %13 = load ptr, ptr %aa, align 8
  %14 = load ptr, ptr %13, align 8
  %call18 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(3) @.str.9) #13
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %for.body17
  store i8 0, ptr %decode, align 1
  br label %for.inc42

if.end22:                                         ; preds = %for.body17
  %15 = load ptr, ptr %aa, align 8
  %16 = load ptr, ptr %15, align 8
  %17 = load i8, ptr %16, align 1
  %cmp26 = icmp ne i8 %17, 45
  %18 = load i8, ptr %decode, align 1
  %tobool.not = icmp eq i8 %18, 0
  %or.cond = select i1 %cmp26, i1 true, i1 %tobool.not
  br i1 %or.cond, label %if.end30, label %for.inc42

if.end30:                                         ; preds = %if.end22
  %19 = load i32, ptr @numFileNames, align 4
  %inc31 = add nsw i32 %19, 1
  store i32 %inc31, ptr @numFileNames, align 4
  %20 = load i32, ptr @longestFileName, align 4
  %21 = load ptr, ptr %aa, align 8
  %22 = load ptr, ptr %21, align 8
  %call33 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %22) #13
  %conv34 = trunc i64 %call33 to i32
  %cmp35 = icmp slt i32 %20, %conv34
  br i1 %cmp35, label %if.then37, label %for.inc42

if.then37:                                        ; preds = %if.end30
  %23 = load ptr, ptr %aa, align 8
  %24 = load ptr, ptr %23, align 8
  %call39 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %24) #13
  %conv40 = trunc i64 %call39 to i32
  store i32 %conv40, ptr @longestFileName, align 4
  br label %for.inc42

for.inc42:                                        ; preds = %if.end30, %if.then37, %if.end22, %if.then21
  %25 = load ptr, ptr %aa, align 8
  %link = getelementptr inbounds %struct.zzzz, ptr %25, i64 0, i32 1
  br label %for.cond14, !llvm.loop !9

for.end43:                                        ; preds = %for.cond14
  %26 = load i32, ptr @numFileNames, align 4
  %cmp44 = icmp eq i32 %26, 0
  %. = select i1 %cmp44, i32 1, i32 3
  store i32 %., ptr @srcMode, align 4
  store i32 1, ptr @opMode, align 4
  %27 = load ptr, ptr @progName, align 8
  %call48 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull @.str.10) #13
  %cmp49.not = icmp eq ptr %call48, null
  br i1 %cmp49.not, label %lor.lhs.false, label %if.then54

lor.lhs.false:                                    ; preds = %for.end43
  %28 = load ptr, ptr @progName, align 8
  %call51 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull @.str.11) #13
  %cmp52.not = icmp eq ptr %call51, null
  br i1 %cmp52.not, label %if.end55, label %if.then54

if.then54:                                        ; preds = %lor.lhs.false, %for.end43
  store i32 2, ptr @opMode, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %lor.lhs.false
  %29 = load ptr, ptr @progName, align 8
  %call56 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull @.str.12) #13
  %cmp57.not = icmp eq ptr %call56, null
  br i1 %cmp57.not, label %lor.lhs.false59, label %if.then71

lor.lhs.false59:                                  ; preds = %if.end55
  %30 = load ptr, ptr @progName, align 8
  %call60 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %30, ptr noundef nonnull @.str.13) #13
  %cmp61.not = icmp eq ptr %call60, null
  br i1 %cmp61.not, label %lor.lhs.false63, label %if.then71

lor.lhs.false63:                                  ; preds = %lor.lhs.false59
  %31 = load ptr, ptr @progName, align 8
  %call64 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull @.str.14) #13
  %cmp65.not = icmp eq ptr %call64, null
  br i1 %cmp65.not, label %lor.lhs.false67, label %if.then71

lor.lhs.false67:                                  ; preds = %lor.lhs.false63
  %32 = load ptr, ptr @progName, align 8
  %call68 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %32, ptr noundef nonnull @.str.15) #13
  %cmp69.not = icmp eq ptr %call68, null
  br i1 %cmp69.not, label %if.end74, label %if.then71

if.then71:                                        ; preds = %lor.lhs.false67, %lor.lhs.false63, %lor.lhs.false59, %if.end55
  store i32 2, ptr @opMode, align 4
  %33 = load i32, ptr @numFileNames, align 4
  %cmp72 = icmp eq i32 %33, 0
  %cond = select i1 %cmp72, i32 1, i32 2
  store i32 %cond, ptr @srcMode, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then71, %lor.lhs.false67
  br label %for.cond75

for.cond75:                                       ; preds = %for.inc135, %if.end74
  %storemerge7.in = phi ptr [ %argList, %if.end74 ], [ %link136, %for.inc135 ]
  %storemerge7 = load ptr, ptr %storemerge7.in, align 8
  store ptr %storemerge7, ptr %aa, align 8
  %cmp76.not = icmp eq ptr %storemerge7, null
  br i1 %cmp76.not, label %for.end137, label %for.body78

for.body78:                                       ; preds = %for.cond75
  %34 = load ptr, ptr %aa, align 8
  %35 = load ptr, ptr %34, align 8
  %call80 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %35, ptr noundef nonnull dereferenceable(3) @.str.9) #13
  %cmp81 = icmp eq i32 %call80, 0
  br i1 %cmp81, label %for.end137, label %if.end84

if.end84:                                         ; preds = %for.body78
  %36 = load ptr, ptr %aa, align 8
  %37 = load ptr, ptr %36, align 8
  %38 = load i8, ptr %37, align 1
  %cmp88 = icmp eq i8 %38, 45
  br i1 %cmp88, label %land.lhs.true90, label %for.inc135

land.lhs.true90:                                  ; preds = %if.end84
  %39 = load ptr, ptr %aa, align 8
  %40 = load ptr, ptr %39, align 8
  %arrayidx92 = getelementptr inbounds i8, ptr %40, i64 1
  %41 = load i8, ptr %arrayidx92, align 1
  %cmp94.not = icmp eq i8 %41, 45
  br i1 %cmp94.not, label %for.inc135, label %for.cond97

for.cond97:                                       ; preds = %land.lhs.true90, %for.inc131
  %storemerge13 = phi i32 [ %inc132, %for.inc131 ], [ 1, %land.lhs.true90 ]
  store i32 %storemerge13, ptr %j, align 4
  %42 = load ptr, ptr %aa, align 8
  %43 = load ptr, ptr %42, align 8
  %idxprom99 = sext i32 %storemerge13 to i64
  %arrayidx100 = getelementptr inbounds i8, ptr %43, i64 %idxprom99
  %44 = load i8, ptr %arrayidx100, align 1
  %cmp102.not = icmp eq i8 %44, 0
  br i1 %cmp102.not, label %for.inc135, label %for.body104

for.body104:                                      ; preds = %for.cond97
  %45 = load ptr, ptr %aa, align 8
  %46 = load ptr, ptr %45, align 8
  %47 = load i32, ptr %j, align 4
  %idxprom106 = sext i32 %47 to i64
  %arrayidx107 = getelementptr inbounds i8, ptr %46, i64 %idxprom106
  %48 = load i8, ptr %arrayidx107, align 1
  %conv108 = sext i8 %48 to i32
  switch i32 %conv108, label %sw.default [
    i32 99, label %sw.bb
    i32 100, label %sw.bb109
    i32 122, label %sw.bb110
    i32 102, label %sw.bb111
    i32 116, label %sw.bb112
    i32 107, label %sw.bb113
    i32 115, label %sw.bb114
    i32 113, label %sw.bb115
    i32 49, label %sw.bb116
    i32 50, label %sw.bb117
    i32 51, label %sw.bb118
    i32 52, label %sw.bb119
    i32 53, label %sw.bb120
    i32 54, label %sw.bb121
    i32 55, label %sw.bb122
    i32 56, label %sw.bb123
    i32 57, label %sw.bb124
    i32 86, label %sw.bb125
    i32 76, label %sw.bb125
    i32 118, label %sw.bb126
    i32 104, label %sw.bb128
  ]

sw.bb:                                            ; preds = %for.body104
  store i32 2, ptr @srcMode, align 4
  br label %for.inc131

sw.bb109:                                         ; preds = %for.body104
  store i32 2, ptr @opMode, align 4
  br label %for.inc131

sw.bb110:                                         ; preds = %for.body104
  store i32 1, ptr @opMode, align 4
  br label %for.inc131

sw.bb111:                                         ; preds = %for.body104
  store i8 1, ptr @forceOverwrite, align 1
  br label %for.inc131

sw.bb112:                                         ; preds = %for.body104
  store i32 3, ptr @opMode, align 4
  br label %for.inc131

sw.bb113:                                         ; preds = %for.body104
  store i8 1, ptr @keepInputFiles, align 1
  br label %for.inc131

sw.bb114:                                         ; preds = %for.body104
  store i8 1, ptr @smallMode, align 1
  br label %for.inc131

sw.bb115:                                         ; preds = %for.body104
  store i8 0, ptr @noisy, align 1
  br label %for.inc131

sw.bb116:                                         ; preds = %for.body104
  store i32 1, ptr @blockSize100k, align 4
  br label %for.inc131

sw.bb117:                                         ; preds = %for.body104
  store i32 2, ptr @blockSize100k, align 4
  br label %for.inc131

sw.bb118:                                         ; preds = %for.body104
  store i32 3, ptr @blockSize100k, align 4
  br label %for.inc131

sw.bb119:                                         ; preds = %for.body104
  store i32 4, ptr @blockSize100k, align 4
  br label %for.inc131

sw.bb120:                                         ; preds = %for.body104
  store i32 5, ptr @blockSize100k, align 4
  br label %for.inc131

sw.bb121:                                         ; preds = %for.body104
  store i32 6, ptr @blockSize100k, align 4
  br label %for.inc131

sw.bb122:                                         ; preds = %for.body104
  store i32 7, ptr @blockSize100k, align 4
  br label %for.inc131

sw.bb123:                                         ; preds = %for.body104
  store i32 8, ptr @blockSize100k, align 4
  br label %for.inc131

sw.bb124:                                         ; preds = %for.body104
  store i32 9, ptr @blockSize100k, align 4
  br label %for.inc131

sw.bb125:                                         ; preds = %for.body104, %for.body104
  call void @license()
  br label %for.inc131

sw.bb126:                                         ; preds = %for.body104
  %49 = load i32, ptr @verbosity, align 4
  %inc127 = add nsw i32 %49, 1
  store i32 %inc127, ptr @verbosity, align 4
  br label %for.inc131

sw.bb128:                                         ; preds = %for.body104
  %50 = load ptr, ptr @progName, align 8
  call void @usage(ptr noundef %50)
  call void @exit(i32 noundef 0) #14
  unreachable

sw.default:                                       ; preds = %for.body104
  %51 = load ptr, ptr @__stderrp, align 8
  %52 = load ptr, ptr @progName, align 8
  %53 = load ptr, ptr %aa, align 8
  %54 = load ptr, ptr %53, align 8
  %call130 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef nonnull @.str.16, ptr noundef %52, ptr noundef %54) #13
  %55 = load ptr, ptr @progName, align 8
  call void @usage(ptr noundef %55)
  call void @exit(i32 noundef 1) #14
  unreachable

for.inc131:                                       ; preds = %sw.bb, %sw.bb109, %sw.bb110, %sw.bb111, %sw.bb112, %sw.bb113, %sw.bb114, %sw.bb115, %sw.bb116, %sw.bb117, %sw.bb118, %sw.bb119, %sw.bb120, %sw.bb121, %sw.bb122, %sw.bb123, %sw.bb124, %sw.bb125, %sw.bb126
  %56 = load i32, ptr %j, align 4
  %inc132 = add nsw i32 %56, 1
  br label %for.cond97, !llvm.loop !10

for.inc135:                                       ; preds = %if.end84, %land.lhs.true90, %for.cond97
  %57 = load ptr, ptr %aa, align 8
  %link136 = getelementptr inbounds %struct.zzzz, ptr %57, i64 0, i32 1
  br label %for.cond75, !llvm.loop !11

for.end137:                                       ; preds = %for.body78, %for.cond75
  br label %for.cond138

for.cond138:                                      ; preds = %for.inc278, %for.end137
  %storemerge8.in = phi ptr [ %argList, %for.end137 ], [ %link279, %for.inc278 ]
  %storemerge8 = load ptr, ptr %storemerge8.in, align 8
  store ptr %storemerge8, ptr %aa, align 8
  %cmp139.not = icmp eq ptr %storemerge8, null
  br i1 %cmp139.not, label %for.end280, label %for.body141

for.body141:                                      ; preds = %for.cond138
  %58 = load ptr, ptr %aa, align 8
  %59 = load ptr, ptr %58, align 8
  %call143 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(3) @.str.9) #13
  %cmp144 = icmp eq i32 %call143, 0
  br i1 %cmp144, label %for.end280, label %if.end147

if.end147:                                        ; preds = %for.body141
  %60 = load ptr, ptr %aa, align 8
  %61 = load ptr, ptr %60, align 8
  %call149 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %61, ptr noundef nonnull dereferenceable(9) @.str.17) #13
  %cmp150 = icmp eq i32 %call149, 0
  br i1 %cmp150, label %if.then152, label %if.else153

if.then152:                                       ; preds = %if.end147
  store i32 2, ptr @srcMode, align 4
  br label %for.inc278

if.else153:                                       ; preds = %if.end147
  %62 = load ptr, ptr %aa, align 8
  %63 = load ptr, ptr %62, align 8
  %call155 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %63, ptr noundef nonnull dereferenceable(13) @.str.18) #13
  %cmp156 = icmp eq i32 %call155, 0
  br i1 %cmp156, label %if.then158, label %if.else159

if.then158:                                       ; preds = %if.else153
  store i32 2, ptr @opMode, align 4
  br label %for.inc278

if.else159:                                       ; preds = %if.else153
  %64 = load ptr, ptr %aa, align 8
  %65 = load ptr, ptr %64, align 8
  %call161 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %65, ptr noundef nonnull dereferenceable(11) @.str.19) #13
  %cmp162 = icmp eq i32 %call161, 0
  br i1 %cmp162, label %if.then164, label %if.else165

if.then164:                                       ; preds = %if.else159
  store i32 1, ptr @opMode, align 4
  br label %for.inc278

if.else165:                                       ; preds = %if.else159
  %66 = load ptr, ptr %aa, align 8
  %67 = load ptr, ptr %66, align 8
  %call167 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %67, ptr noundef nonnull dereferenceable(8) @.str.20) #13
  %cmp168 = icmp eq i32 %call167, 0
  br i1 %cmp168, label %if.then170, label %if.else171

if.then170:                                       ; preds = %if.else165
  store i8 1, ptr @forceOverwrite, align 1
  br label %for.inc278

if.else171:                                       ; preds = %if.else165
  %68 = load ptr, ptr %aa, align 8
  %69 = load ptr, ptr %68, align 8
  %call173 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %69, ptr noundef nonnull dereferenceable(7) @.str.21) #13
  %cmp174 = icmp eq i32 %call173, 0
  br i1 %cmp174, label %if.then176, label %if.else177

if.then176:                                       ; preds = %if.else171
  store i32 3, ptr @opMode, align 4
  br label %for.inc278

if.else177:                                       ; preds = %if.else171
  %70 = load ptr, ptr %aa, align 8
  %71 = load ptr, ptr %70, align 8
  %call179 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %71, ptr noundef nonnull dereferenceable(7) @.str.22) #13
  %cmp180 = icmp eq i32 %call179, 0
  br i1 %cmp180, label %if.then182, label %if.else183

if.then182:                                       ; preds = %if.else177
  store i8 1, ptr @keepInputFiles, align 1
  br label %for.inc278

if.else183:                                       ; preds = %if.else177
  %72 = load ptr, ptr %aa, align 8
  %73 = load ptr, ptr %72, align 8
  %call185 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %73, ptr noundef nonnull dereferenceable(8) @.str.23) #13
  %cmp186 = icmp eq i32 %call185, 0
  br i1 %cmp186, label %if.then188, label %if.else189

if.then188:                                       ; preds = %if.else183
  store i8 1, ptr @smallMode, align 1
  br label %for.inc278

if.else189:                                       ; preds = %if.else183
  %74 = load ptr, ptr %aa, align 8
  %75 = load ptr, ptr %74, align 8
  %call191 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %75, ptr noundef nonnull dereferenceable(8) @.str.24) #13
  %cmp192 = icmp eq i32 %call191, 0
  br i1 %cmp192, label %if.then194, label %if.else195

if.then194:                                       ; preds = %if.else189
  store i8 0, ptr @noisy, align 1
  br label %for.inc278

if.else195:                                       ; preds = %if.else189
  %76 = load ptr, ptr %aa, align 8
  %77 = load ptr, ptr %76, align 8
  %call197 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %77, ptr noundef nonnull dereferenceable(10) @.str.25) #13
  %cmp198 = icmp eq i32 %call197, 0
  br i1 %cmp198, label %if.then200, label %if.else201

if.then200:                                       ; preds = %if.else195
  call void @license()
  br label %for.inc278

if.else201:                                       ; preds = %if.else195
  %78 = load ptr, ptr %aa, align 8
  %79 = load ptr, ptr %78, align 8
  %call203 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %79, ptr noundef nonnull dereferenceable(10) @.str.26) #13
  %cmp204 = icmp eq i32 %call203, 0
  br i1 %cmp204, label %if.then206, label %if.else207

if.then206:                                       ; preds = %if.else201
  call void @license()
  br label %for.inc278

if.else207:                                       ; preds = %if.else201
  %80 = load ptr, ptr %aa, align 8
  %81 = load ptr, ptr %80, align 8
  %call209 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %81, ptr noundef nonnull dereferenceable(14) @.str.27) #13
  %cmp210 = icmp eq i32 %call209, 0
  br i1 %cmp210, label %if.then212, label %if.else213

if.then212:                                       ; preds = %if.else207
  store i32 1, ptr @workFactor, align 4
  br label %for.inc278

if.else213:                                       ; preds = %if.else207
  %82 = load ptr, ptr %aa, align 8
  %83 = load ptr, ptr %82, align 8
  %call215 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %83, ptr noundef nonnull dereferenceable(18) @.str.28) #13
  %cmp216 = icmp eq i32 %call215, 0
  br i1 %cmp216, label %if.then218, label %if.else220

if.then218:                                       ; preds = %if.else213
  %84 = load ptr, ptr %aa, align 8
  %85 = load ptr, ptr %84, align 8
  call void @redundant(ptr noundef %85)
  br label %for.inc278

if.else220:                                       ; preds = %if.else213
  %86 = load ptr, ptr %aa, align 8
  %87 = load ptr, ptr %86, align 8
  %call222 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %87, ptr noundef nonnull dereferenceable(18) @.str.29) #13
  %cmp223 = icmp eq i32 %call222, 0
  br i1 %cmp223, label %if.then225, label %if.else227

if.then225:                                       ; preds = %if.else220
  %88 = load ptr, ptr %aa, align 8
  %89 = load ptr, ptr %88, align 8
  call void @redundant(ptr noundef %89)
  br label %for.inc278

if.else227:                                       ; preds = %if.else220
  %90 = load ptr, ptr %aa, align 8
  %91 = load ptr, ptr %90, align 8
  %call229 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %91, ptr noundef nonnull dereferenceable(7) @.str.30) #13
  %cmp230 = icmp eq i32 %call229, 0
  br i1 %cmp230, label %if.then232, label %if.else233

if.then232:                                       ; preds = %if.else227
  store i32 1, ptr @blockSize100k, align 4
  br label %for.inc278

if.else233:                                       ; preds = %if.else227
  %92 = load ptr, ptr %aa, align 8
  %93 = load ptr, ptr %92, align 8
  %call235 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %93, ptr noundef nonnull dereferenceable(7) @.str.31) #13
  %cmp236 = icmp eq i32 %call235, 0
  br i1 %cmp236, label %if.then238, label %if.else239

if.then238:                                       ; preds = %if.else233
  store i32 9, ptr @blockSize100k, align 4
  br label %for.inc278

if.else239:                                       ; preds = %if.else233
  %94 = load ptr, ptr %aa, align 8
  %95 = load ptr, ptr %94, align 8
  %call241 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %95, ptr noundef nonnull dereferenceable(10) @.str.32) #13
  %cmp242 = icmp eq i32 %call241, 0
  br i1 %cmp242, label %if.then244, label %if.else246

if.then244:                                       ; preds = %if.else239
  %96 = load i32, ptr @verbosity, align 4
  %inc245 = add nsw i32 %96, 1
  store i32 %inc245, ptr @verbosity, align 4
  br label %for.inc278

if.else246:                                       ; preds = %if.else239
  %97 = load ptr, ptr %aa, align 8
  %98 = load ptr, ptr %97, align 8
  %call248 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %98, ptr noundef nonnull dereferenceable(7) @.str.33) #13
  %cmp249 = icmp eq i32 %call248, 0
  br i1 %cmp249, label %if.then251, label %if.else252

if.then251:                                       ; preds = %if.else246
  %99 = load ptr, ptr @progName, align 8
  call void @usage(ptr noundef %99)
  call void @exit(i32 noundef 0) #14
  unreachable

if.else252:                                       ; preds = %if.else246
  %100 = load ptr, ptr %aa, align 8
  %101 = load ptr, ptr %100, align 8
  %call254 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %101, ptr noundef nonnull dereferenceable(3) @.str.9, i64 noundef 2) #13
  %cmp255 = icmp eq i32 %call254, 0
  br i1 %cmp255, label %if.then257, label %for.inc278

if.then257:                                       ; preds = %if.else252
  %102 = load ptr, ptr @__stderrp, align 8
  %103 = load ptr, ptr @progName, align 8
  %104 = load ptr, ptr %aa, align 8
  %105 = load ptr, ptr %104, align 8
  %call259 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %102, ptr noundef nonnull @.str.16, ptr noundef %103, ptr noundef %105) #13
  %106 = load ptr, ptr @progName, align 8
  call void @usage(ptr noundef %106)
  call void @exit(i32 noundef 1) #14
  unreachable

for.inc278:                                       ; preds = %if.then152, %if.then164, %if.then176, %if.then188, %if.then200, %if.then212, %if.then225, %if.then238, %if.else252, %if.then244, %if.then232, %if.then218, %if.then206, %if.then194, %if.then182, %if.then170, %if.then158
  %107 = load ptr, ptr %aa, align 8
  %link279 = getelementptr inbounds %struct.zzzz, ptr %107, i64 0, i32 1
  br label %for.cond138, !llvm.loop !12

for.end280:                                       ; preds = %for.body141, %for.cond138
  %108 = load i32, ptr @verbosity, align 4
  %cmp281 = icmp sgt i32 %108, 4
  br i1 %cmp281, label %if.then283, label %if.end284

if.then283:                                       ; preds = %for.end280
  store i32 4, ptr @verbosity, align 4
  br label %if.end284

if.end284:                                        ; preds = %if.then283, %for.end280
  %109 = load i32, ptr @opMode, align 4
  %cmp285 = icmp ne i32 %109, 1
  %110 = load i8, ptr @smallMode, align 1
  %tobool289.not = icmp eq i8 %110, 0
  %or.cond14 = select i1 %cmp285, i1 true, i1 %tobool289.not
  %or.cond14.not = xor i1 %or.cond14, true
  %111 = load i32, ptr @blockSize100k, align 4
  %cmp291 = icmp sgt i32 %111, 2
  %or.cond15 = select i1 %or.cond14.not, i1 %cmp291, i1 false
  br i1 %or.cond15, label %if.then293, label %if.end294

if.then293:                                       ; preds = %if.end284
  store i32 2, ptr @blockSize100k, align 4
  br label %if.end294

if.end294:                                        ; preds = %if.then293, %if.end284
  %112 = load i32, ptr @opMode, align 4
  %cmp295 = icmp eq i32 %112, 3
  %113 = load i32, ptr @srcMode, align 4
  %cmp298 = icmp eq i32 %113, 2
  %or.cond16 = select i1 %cmp295, i1 %cmp298, i1 false
  br i1 %or.cond16, label %if.then300, label %if.end302

if.then300:                                       ; preds = %if.end294
  %114 = load ptr, ptr @__stderrp, align 8
  %115 = load ptr, ptr @progName, align 8
  %call301 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %114, ptr noundef nonnull @.str.34, ptr noundef %115) #13
  call void @exit(i32 noundef 1) #14
  unreachable

if.end302:                                        ; preds = %if.end294
  %116 = load i32, ptr @srcMode, align 4
  %cmp303 = icmp eq i32 %116, 2
  %117 = load i32, ptr @numFileNames, align 4
  %cmp306 = icmp eq i32 %117, 0
  %or.cond17 = select i1 %cmp303, i1 %cmp306, i1 false
  br i1 %or.cond17, label %if.then308, label %if.end309

if.then308:                                       ; preds = %if.end302
  store i32 1, ptr @srcMode, align 4
  br label %if.end309

if.end309:                                        ; preds = %if.then308, %if.end302
  %118 = load i32, ptr @opMode, align 4
  %cmp310.not = icmp eq i32 %118, 1
  br i1 %cmp310.not, label %if.end313, label %if.then312

if.then312:                                       ; preds = %if.end309
  store i32 0, ptr @blockSize100k, align 4
  br label %if.end313

if.end313:                                        ; preds = %if.then312, %if.end309
  %119 = load i32, ptr @srcMode, align 4
  %cmp314 = icmp eq i32 %119, 3
  br i1 %cmp314, label %if.then316, label %if.end320

if.then316:                                       ; preds = %if.end313
  %call317 = call ptr @signal(i32 noundef 2, ptr noundef nonnull @mySignalCatcher) #13
  %call318 = call ptr @signal(i32 noundef 15, ptr noundef nonnull @mySignalCatcher) #13
  %call319 = call ptr @signal(i32 noundef 1, ptr noundef nonnull @mySignalCatcher) #13
  br label %if.end320

if.end320:                                        ; preds = %if.then316, %if.end313
  %120 = load i32, ptr @opMode, align 4
  %cmp321 = icmp eq i32 %120, 1
  br i1 %cmp321, label %if.then323, label %if.else354

if.then323:                                       ; preds = %if.end320
  %121 = load i32, ptr @srcMode, align 4
  %cmp324 = icmp eq i32 %121, 1
  br i1 %cmp324, label %if.then326, label %if.else327

if.then326:                                       ; preds = %if.then323
  call void @compress(ptr noundef null)
  br label %if.end431

if.else327:                                       ; preds = %if.then323
  store i8 1, ptr %decode, align 1
  br label %for.cond328

for.cond328:                                      ; preds = %for.inc350, %if.else327
  %storemerge12.in = phi ptr [ %argList, %if.else327 ], [ %link351, %for.inc350 ]
  %storemerge12 = load ptr, ptr %storemerge12.in, align 8
  store ptr %storemerge12, ptr %aa, align 8
  %cmp329.not = icmp eq ptr %storemerge12, null
  br i1 %cmp329.not, label %if.end431, label %for.body331

for.body331:                                      ; preds = %for.cond328
  %122 = load ptr, ptr %aa, align 8
  %123 = load ptr, ptr %122, align 8
  %call333 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %123, ptr noundef nonnull dereferenceable(3) @.str.9) #13
  %cmp334 = icmp eq i32 %call333, 0
  br i1 %cmp334, label %if.then336, label %if.end337

if.then336:                                       ; preds = %for.body331
  store i8 0, ptr %decode, align 1
  br label %for.inc350

if.end337:                                        ; preds = %for.body331
  %124 = load ptr, ptr %aa, align 8
  %125 = load ptr, ptr %124, align 8
  %126 = load i8, ptr %125, align 1
  %cmp341 = icmp ne i8 %126, 45
  %127 = load i8, ptr %decode, align 1
  %tobool345.not = icmp eq i8 %127, 0
  %or.cond18 = select i1 %cmp341, i1 true, i1 %tobool345.not
  br i1 %or.cond18, label %if.end347, label %for.inc350

if.end347:                                        ; preds = %if.end337
  %128 = load i32, ptr @numFilesProcessed, align 4
  %inc348 = add nsw i32 %128, 1
  store i32 %inc348, ptr @numFilesProcessed, align 4
  %129 = load ptr, ptr %aa, align 8
  %130 = load ptr, ptr %129, align 8
  call void @compress(ptr noundef %130)
  br label %for.inc350

for.inc350:                                       ; preds = %if.end337, %if.end347, %if.then336
  %131 = load ptr, ptr %aa, align 8
  %link351 = getelementptr inbounds %struct.zzzz, ptr %131, i64 0, i32 1
  br label %for.cond328, !llvm.loop !13

if.else354:                                       ; preds = %if.end320
  %132 = load i32, ptr @opMode, align 4
  %cmp355 = icmp eq i32 %132, 2
  br i1 %cmp355, label %if.then357, label %if.else391

if.then357:                                       ; preds = %if.else354
  store i8 0, ptr @unzFailsExist, align 1
  %133 = load i32, ptr @srcMode, align 4
  %cmp358 = icmp eq i32 %133, 1
  br i1 %cmp358, label %if.then360, label %if.else361

if.then360:                                       ; preds = %if.then357
  call void @uncompress(ptr noundef null)
  br label %if.end387

if.else361:                                       ; preds = %if.then357
  store i8 1, ptr %decode, align 1
  br label %for.cond362

for.cond362:                                      ; preds = %for.inc384, %if.else361
  %storemerge11.in = phi ptr [ %argList, %if.else361 ], [ %link385, %for.inc384 ]
  %storemerge11 = load ptr, ptr %storemerge11.in, align 8
  store ptr %storemerge11, ptr %aa, align 8
  %cmp363.not = icmp eq ptr %storemerge11, null
  br i1 %cmp363.not, label %if.end387, label %for.body365

for.body365:                                      ; preds = %for.cond362
  %134 = load ptr, ptr %aa, align 8
  %135 = load ptr, ptr %134, align 8
  %call367 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %135, ptr noundef nonnull dereferenceable(3) @.str.9) #13
  %cmp368 = icmp eq i32 %call367, 0
  br i1 %cmp368, label %if.then370, label %if.end371

if.then370:                                       ; preds = %for.body365
  store i8 0, ptr %decode, align 1
  br label %for.inc384

if.end371:                                        ; preds = %for.body365
  %136 = load ptr, ptr %aa, align 8
  %137 = load ptr, ptr %136, align 8
  %138 = load i8, ptr %137, align 1
  %cmp375 = icmp ne i8 %138, 45
  %139 = load i8, ptr %decode, align 1
  %tobool379.not = icmp eq i8 %139, 0
  %or.cond19 = select i1 %cmp375, i1 true, i1 %tobool379.not
  br i1 %or.cond19, label %if.end381, label %for.inc384

if.end381:                                        ; preds = %if.end371
  %140 = load i32, ptr @numFilesProcessed, align 4
  %inc382 = add nsw i32 %140, 1
  store i32 %inc382, ptr @numFilesProcessed, align 4
  %141 = load ptr, ptr %aa, align 8
  %142 = load ptr, ptr %141, align 8
  call void @uncompress(ptr noundef %142)
  br label %for.inc384

for.inc384:                                       ; preds = %if.end371, %if.end381, %if.then370
  %143 = load ptr, ptr %aa, align 8
  %link385 = getelementptr inbounds %struct.zzzz, ptr %143, i64 0, i32 1
  br label %for.cond362, !llvm.loop !14

if.end387:                                        ; preds = %for.cond362, %if.then360
  %144 = load i8, ptr @unzFailsExist, align 1
  %tobool388.not = icmp eq i8 %144, 0
  br i1 %tobool388.not, label %if.end431, label %if.then389

if.then389:                                       ; preds = %if.end387
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.addr.i)
  store i32 2, ptr %v.addr.i, align 4
  %145 = load i32, ptr @exitValue, align 4
  %cmp.i = icmp slt i32 %145, 2
  br i1 %cmp.i, label %if.then.i, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_0.exit

if.then.i:                                        ; preds = %if.then389
  %146 = load i32, ptr %v.addr.i, align 4
  store i32 %146, ptr @exitValue, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_0.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_0.exit: ; preds = %if.then389, %if.then.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.addr.i)
  %147 = load i32, ptr @exitValue, align 4
  call void @exit(i32 noundef %147) #14
  unreachable

if.else391:                                       ; preds = %if.else354
  store i8 0, ptr @testFailsExist, align 1
  %148 = load i32, ptr @srcMode, align 4
  %cmp392 = icmp eq i32 %148, 1
  br i1 %cmp392, label %if.then394, label %if.else395

if.then394:                                       ; preds = %if.else391
  call void @testf(ptr noundef null)
  br label %if.end421

if.else395:                                       ; preds = %if.else391
  store i8 1, ptr %decode, align 1
  br label %for.cond396

for.cond396:                                      ; preds = %for.inc418, %if.else395
  %storemerge9.in = phi ptr [ %argList, %if.else395 ], [ %link419, %for.inc418 ]
  %storemerge9 = load ptr, ptr %storemerge9.in, align 8
  store ptr %storemerge9, ptr %aa, align 8
  %cmp397.not = icmp eq ptr %storemerge9, null
  br i1 %cmp397.not, label %if.end421, label %for.body399

for.body399:                                      ; preds = %for.cond396
  %149 = load ptr, ptr %aa, align 8
  %150 = load ptr, ptr %149, align 8
  %call401 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %150, ptr noundef nonnull dereferenceable(3) @.str.9) #13
  %cmp402 = icmp eq i32 %call401, 0
  br i1 %cmp402, label %if.then404, label %if.end405

if.then404:                                       ; preds = %for.body399
  store i8 0, ptr %decode, align 1
  br label %for.inc418

if.end405:                                        ; preds = %for.body399
  %151 = load ptr, ptr %aa, align 8
  %152 = load ptr, ptr %151, align 8
  %153 = load i8, ptr %152, align 1
  %cmp409 = icmp ne i8 %153, 45
  %154 = load i8, ptr %decode, align 1
  %tobool413.not = icmp eq i8 %154, 0
  %or.cond20 = select i1 %cmp409, i1 true, i1 %tobool413.not
  br i1 %or.cond20, label %if.end415, label %for.inc418

if.end415:                                        ; preds = %if.end405
  %155 = load i32, ptr @numFilesProcessed, align 4
  %inc416 = add nsw i32 %155, 1
  store i32 %inc416, ptr @numFilesProcessed, align 4
  %156 = load ptr, ptr %aa, align 8
  %157 = load ptr, ptr %156, align 8
  call void @testf(ptr noundef %157)
  br label %for.inc418

for.inc418:                                       ; preds = %if.end405, %if.end415, %if.then404
  %158 = load ptr, ptr %aa, align 8
  %link419 = getelementptr inbounds %struct.zzzz, ptr %158, i64 0, i32 1
  br label %for.cond396, !llvm.loop !15

if.end421:                                        ; preds = %for.cond396, %if.then394
  %159 = load i8, ptr @testFailsExist, align 1
  %tobool423.not = icmp eq i8 %159, 0
  %160 = load i8, ptr @noisy, align 1
  %tobool426.not = icmp eq i8 %160, 0
  %or.cond21 = select i1 %tobool423.not, i1 true, i1 %tobool426.not
  br i1 %or.cond21, label %if.end431, label %if.then427

if.then427:                                       ; preds = %if.end421
  %161 = load ptr, ptr @__stderrp, align 8
  %162 = call i64 @fwrite(ptr nonnull @.str.35, i64 112, i64 1, ptr %161)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.addr.i1)
  store i32 2, ptr %v.addr.i1, align 4
  %163 = load i32, ptr @exitValue, align 4
  %cmp.i2 = icmp slt i32 %163, 2
  br i1 %cmp.i2, label %if.then.i3, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_1.exit

if.then.i3:                                       ; preds = %if.then427
  %164 = load i32, ptr %v.addr.i1, align 4
  store i32 %164, ptr @exitValue, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_1.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_1.exit: ; preds = %if.then427, %if.then.i3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.addr.i1)
  %165 = load i32, ptr @exitValue, align 4
  call void @exit(i32 noundef %165) #14
  unreachable

if.end431:                                        ; preds = %if.end387, %if.end421, %if.then326, %for.cond328
  %166 = load ptr, ptr %argList, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end440, %if.end431
  %storemerge10 = phi ptr [ %166, %if.end431 ], [ %173, %if.end440 ]
  store ptr %storemerge10, ptr %aa, align 8
  %cmp432.not = icmp eq ptr %storemerge10, null
  br i1 %cmp432.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %167 = load ptr, ptr %aa, align 8
  %link434 = getelementptr inbounds %struct.zzzz, ptr %167, i64 0, i32 1
  %168 = load ptr, ptr %link434, align 8
  store ptr %168, ptr %aa2, align 8
  %169 = load ptr, ptr %167, align 8
  %cmp436.not = icmp eq ptr %169, null
  br i1 %cmp436.not, label %if.end440, label %if.then438

if.then438:                                       ; preds = %while.body
  %170 = load ptr, ptr %aa, align 8
  %171 = load ptr, ptr %170, align 8
  call void @free(ptr noundef %171) #13
  br label %if.end440

if.end440:                                        ; preds = %if.then438, %while.body
  %172 = load ptr, ptr %aa, align 8
  call void @free(ptr noundef %172) #13
  %173 = load ptr, ptr %aa2, align 8
  br label %while.cond, !llvm.loop !16

while.end:                                        ; preds = %while.cond
  %174 = load i32, ptr @exitValue, align 4
  ret i32 %174
}

declare ptr @signal(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @mySIGSEGVorSIGBUScatcher(i32 noundef %n) #0 {
entry:
  %0 = load i32, ptr @opMode, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @__stderrp, align 8
  %2 = load ptr, ptr @progName, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.36, ptr noundef %2) #13
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr @__stderrp, align 8
  %4 = load ptr, ptr @progName, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.37, ptr noundef %4) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @showFileNames()
  %5 = load i32, ptr @opMode, align 4
  %cmp2 = icmp eq i32 %5, 1
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.end
  call void @cleanUpAndFail(i32 noundef 3) #15
  unreachable

if.else4:                                         ; preds = %if.end
  call void @cadvise()
  call void @cleanUpAndFail(i32 noundef 2) #15
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define internal void @copyFileName(ptr noundef %to, ptr noundef %from) #0 {
entry:
  %v.addr.i = alloca i32, align 4
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  store ptr %to, ptr %to.addr, align 8
  store ptr %from, ptr %from.addr, align 8
  %call = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %from) #13
  %cmp = icmp ugt i64 %call, 1024
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr %from.addr, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.47, ptr noundef %1, i32 noundef 1024) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.addr.i)
  store i32 1, ptr %v.addr.i, align 4
  %2 = load i32, ptr @exitValue, align 4
  %cmp.i = icmp slt i32 %2, 1
  br i1 %cmp.i, label %if.then.i, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_2.exit

if.then.i:                                        ; preds = %if.then
  %3 = load i32, ptr %v.addr.i, align 4
  store i32 %3, ptr @exitValue, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_2.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_2.exit: ; preds = %if.then, %if.then.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.addr.i)
  %4 = load i32, ptr @exitValue, align 4
  call void @exit(i32 noundef %4) #14
  unreachable

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %to.addr, align 8
  %6 = load ptr, ptr %from.addr, align 8
  %7 = call i64 @llvm.objectsize.i64.p0(ptr %5, i1 false, i1 true, i1 false)
  %call2 = call ptr @__strncpy_chk(ptr noundef %5, ptr noundef %6, i64 noundef 1024, i64 noundef %7) #13
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 1024
  store i8 0, ptr %arrayidx, align 1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @addFlagsFromEnvVar(ptr noundef %argList, ptr noundef %varName) #0 {
entry:
  %argList.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %envbase = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %argList, ptr %argList.addr, align 8
  %call = call ptr @getenv(ptr noundef %varName) #13
  store ptr %call, ptr %envbase, align 8
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %if.end41, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %envbase, align 8
  store ptr %0, ptr %p, align 8
  store i32 0, ptr %i, align 4
  br label %while.body

while.body:                                       ; preds = %if.end39, %if.then
  %1 = load ptr, ptr %p, align 8
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %idxprom
  %3 = load i8, ptr %arrayidx, align 1
  %cmp1 = icmp eq i8 %3, 0
  br i1 %cmp1, label %if.end41, label %if.end

if.end:                                           ; preds = %while.body
  %4 = load i32, ptr %i, align 4
  %5 = load ptr, ptr %p, align 8
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 %idx.ext
  store ptr %add.ptr, ptr %p, align 8
  store i32 0, ptr %i, align 4
  br label %while.cond4

while.cond4:                                      ; preds = %while.body8, %if.end
  %6 = load ptr, ptr %p, align 8
  %7 = load i8, ptr %6, align 1
  %conv6 = sext i8 %7 to i32
  %call7 = call i32 @isspace(i32 noundef %conv6) #16
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %while.cond9, label %while.body8

while.body8:                                      ; preds = %while.cond4
  %8 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %8, i64 1
  store ptr %incdec.ptr, ptr %p, align 8
  br label %while.cond4, !llvm.loop !17

while.cond9:                                      ; preds = %while.cond4, %while.body20
  %9 = load ptr, ptr %p, align 8
  %10 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %9, i64 %idxprom10
  %11 = load i8, ptr %arrayidx11, align 1
  %cmp13.not = icmp eq i8 %11, 0
  br i1 %cmp13.not, label %while.end21, label %land.rhs

land.rhs:                                         ; preds = %while.cond9
  %12 = load ptr, ptr %p, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom15 = sext i32 %13 to i64
  %arrayidx16 = getelementptr inbounds i8, ptr %12, i64 %idxprom15
  %14 = load i8, ptr %arrayidx16, align 1
  %conv17 = sext i8 %14 to i32
  %call18 = call i32 @isspace(i32 noundef %conv17) #16
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %while.body20, label %while.end21

while.body20:                                     ; preds = %land.rhs
  %15 = load i32, ptr %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %i, align 4
  br label %while.cond9, !llvm.loop !18

while.end21:                                      ; preds = %while.cond9, %land.rhs
  %16 = load i32, ptr %i, align 4
  %cmp22 = icmp sgt i32 %16, 0
  br i1 %cmp22, label %if.then24, label %if.end39

if.then24:                                        ; preds = %while.end21
  %17 = load i32, ptr %i, align 4
  %cmp25 = icmp sgt i32 %17, 1024
  %spec.select = select i1 %cmp25, i32 1024, i32 %17
  store i32 %spec.select, ptr %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.then24
  %storemerge = phi i32 [ 0, %if.then24 ], [ %inc35, %for.body ]
  store i32 %storemerge, ptr %j, align 4
  %18 = load i32, ptr %k, align 4
  %cmp29 = icmp slt i32 %storemerge, %18
  br i1 %cmp29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %p, align 8
  %20 = load i32, ptr %j, align 4
  %idxprom31 = sext i32 %20 to i64
  %arrayidx32 = getelementptr inbounds i8, ptr %19, i64 %idxprom31
  %21 = load i8, ptr %arrayidx32, align 1
  %idxprom33 = sext i32 %20 to i64
  %arrayidx34 = getelementptr inbounds [1034 x i8], ptr @tmpName, i64 0, i64 %idxprom33
  store i8 %21, ptr %arrayidx34, align 1
  %22 = load i32, ptr %j, align 4
  %inc35 = add nsw i32 %22, 1
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  %23 = load i32, ptr %k, align 4
  %idxprom36 = sext i32 %23 to i64
  %arrayidx37 = getelementptr inbounds [1034 x i8], ptr @tmpName, i64 0, i64 %idxprom36
  store i8 0, ptr %arrayidx37, align 1
  %24 = load ptr, ptr %argList.addr, align 8
  %25 = load ptr, ptr %24, align 8
  %call38 = call ptr @snocString(ptr noundef %25, ptr noundef nonnull @tmpName)
  store ptr %call38, ptr %24, align 8
  br label %if.end39

if.end39:                                         ; preds = %for.end, %while.end21
  br label %while.body

if.end41:                                         ; preds = %while.body, %entry
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @snocString(ptr noundef %root, ptr noundef %name) #0 {
entry:
  %root.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  store ptr %root, ptr %root.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  %cmp = icmp eq ptr %root, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call ptr @mkCell()
  store ptr %call, ptr %tmp, align 8
  %0 = load ptr, ptr %name.addr, align 8
  %call1 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  %1 = trunc i64 %call1 to i32
  %conv = add i32 %1, 5
  %call2 = call ptr @myMalloc(i32 noundef %conv)
  store ptr %call2, ptr %call, align 8
  %2 = load ptr, ptr %tmp, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %name.addr, align 8
  %5 = call i64 @llvm.objectsize.i64.p0(ptr %3, i1 false, i1 true, i1 false)
  %call6 = call ptr @__strcpy_chk(ptr noundef %3, ptr noundef %4, i64 noundef %5) #13
  br label %return

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %root.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %storemerge = phi ptr [ %6, %if.else ], [ %9, %while.body ]
  store ptr %storemerge, ptr %tmp7, align 8
  %link = getelementptr inbounds %struct.zzzz, ptr %storemerge, i64 0, i32 1
  %7 = load ptr, ptr %link, align 8
  %cmp8.not = icmp eq ptr %7, null
  br i1 %cmp8.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %8 = load ptr, ptr %tmp7, align 8
  %link10 = getelementptr inbounds %struct.zzzz, ptr %8, i64 0, i32 1
  %9 = load ptr, ptr %link10, align 8
  br label %while.cond, !llvm.loop !20

while.end:                                        ; preds = %while.cond
  %10 = load ptr, ptr %tmp7, align 8
  %link11 = getelementptr inbounds %struct.zzzz, ptr %10, i64 0, i32 1
  %11 = load ptr, ptr %link11, align 8
  %12 = load ptr, ptr %name.addr, align 8
  %call12 = call ptr @snocString(ptr noundef %11, ptr noundef %12)
  %link13 = getelementptr inbounds %struct.zzzz, ptr %10, i64 0, i32 1
  store ptr %call12, ptr %link13, align 8
  %13 = load ptr, ptr %root.addr, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then
  %storemerge1 = phi ptr [ %13, %while.end ], [ %2, %if.then ]
  ret ptr %storemerge1
}

declare i32 @strcmp(ptr noundef, ptr noundef) #1

declare i64 @strlen(ptr noundef) #1

declare ptr @strstr(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @license() #0 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %call = call ptr @BZ2_bzlibVersion() #13
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.49, ptr noundef %call) #13
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @usage(ptr noundef %fullProgName) #0 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %call = call ptr @BZ2_bzlibVersion() #13
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef %call, ptr noundef %fullProgName) #13
  ret void
}

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind ssp uwtable
define internal void @redundant(ptr noundef %flag) #0 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr @progName, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.51, ptr noundef %1, ptr noundef %flag) #13
  ret void
}

declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @mySignalCatcher(i32 noundef %n) #0 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr @progName, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.52, ptr noundef %1) #13
  call void @cleanUpAndFail(i32 noundef 1) #15
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define internal void @compress(ptr noundef %name) #0 {
entry:
  %v.addr.i31 = alloca i32, align 4
  %v.addr.i28 = alloca i32, align 4
  %v.addr.i25 = alloca i32, align 4
  %v.addr.i22 = alloca i32, align 4
  %v.addr.i19 = alloca i32, align 4
  %v.addr.i16 = alloca i32, align 4
  %v.addr.i13 = alloca i32, align 4
  %v.addr.i10 = alloca i32, align 4
  %v.addr.i7 = alloca i32, align 4
  %v.addr.i4 = alloca i32, align 4
  %v.addr.i1 = alloca i32, align 4
  %v.addr.i = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %inStr = alloca ptr, align 8
  %outStr = alloca ptr, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %statBuf = alloca %struct.stat, align 8
  store ptr %name, ptr %name.addr, align 8
  store i8 0, ptr @deleteOutputOnInterrupt, align 1
  %cmp = icmp ne ptr %name, null
  %0 = load i32, ptr @srcMode, align 4
  %cmp1.not = icmp eq i32 %0, 1
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1.not
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @panic(ptr noundef nonnull @.str.53) #15
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @srcMode, align 4
  switch i32 %1, label %sw.epilog [
    i32 1, label %sw.bb
    i32 3, label %sw.bb2
    i32 2, label %sw.bb3
  ]

sw.bb:                                            ; preds = %if.end
  call void @copyFileName(ptr noundef nonnull @inName, ptr noundef nonnull @.str.54)
  call void @copyFileName(ptr noundef nonnull @outName, ptr noundef nonnull @.str.55)
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  %2 = load ptr, ptr %name.addr, align 8
  call void @copyFileName(ptr noundef nonnull @inName, ptr noundef %2)
  call void @copyFileName(ptr noundef nonnull @outName, ptr noundef %2)
  %call = call ptr @__strcat_chk(ptr noundef nonnull @outName, ptr noundef nonnull @.str, i64 noundef 1034) #13
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  %3 = load ptr, ptr %name.addr, align 8
  call void @copyFileName(ptr noundef nonnull @inName, ptr noundef %3)
  call void @copyFileName(ptr noundef nonnull @outName, ptr noundef nonnull @.str.55)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %sw.bb, %if.end
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) @outName, ptr noundef nonnull align 1 dereferenceable(10) @.str.56, i64 10, i1 false)
  store i8 1, ptr @forceOverwrite, align 1
  %4 = load i32, ptr @srcMode, align 4
  %cmp5.not = icmp eq i32 %4, 1
  br i1 %cmp5.not, label %if.end13, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %sw.epilog
  %call7 = call zeroext i8 @containsDubiousChars(ptr noundef nonnull @inName)
  %tobool.not = icmp eq i8 %call7, 0
  br i1 %tobool.not, label %if.end13, label %if.then8

if.then8:                                         ; preds = %land.lhs.true6
  %5 = load i8, ptr @noisy, align 1
  %tobool9.not = icmp eq i8 %5, 0
  br i1 %tobool9.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.then8
  %6 = load ptr, ptr @__stderrp, align 8
  %7 = load ptr, ptr @progName, align 8
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.57, ptr noundef %7, ptr noundef nonnull @inName) #13
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.addr.i)
  store i32 1, ptr %v.addr.i, align 4
  %8 = load i32, ptr @exitValue, align 4
  %cmp.i = icmp slt i32 %8, 1
  br i1 %cmp.i, label %if.then.i, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_3.exit

if.then.i:                                        ; preds = %if.end12
  %9 = load i32, ptr %v.addr.i, align 4
  store i32 %9, ptr @exitValue, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_3.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_3.exit: ; preds = %if.end12, %if.then.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.addr.i)
  br label %return

if.end13:                                         ; preds = %land.lhs.true6, %sw.epilog
  %10 = load i32, ptr @srcMode, align 4
  %cmp14.not = icmp eq i32 %10, 1
  br i1 %cmp14.not, label %if.end23, label %land.lhs.true16

land.lhs.true16:                                  ; preds = %if.end13
  %call17 = call zeroext i8 @fileExists(ptr noundef nonnull @inName)
  %tobool18.not = icmp eq i8 %call17, 0
  br i1 %tobool18.not, label %if.then19, label %if.end23

if.then19:                                        ; preds = %land.lhs.true16
  %11 = load ptr, ptr @__stderrp, align 8
  %12 = load ptr, ptr @progName, align 8
  %call20 = call ptr @__error() #13
  %13 = load i32, ptr %call20, align 4
  %call21 = call ptr @"\01_strerror"(i32 noundef %13) #13
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.58, ptr noundef %12, ptr noundef nonnull @inName, ptr noundef %call21) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.addr.i1)
  store i32 1, ptr %v.addr.i1, align 4
  %14 = load i32, ptr @exitValue, align 4
  %cmp.i2 = icmp slt i32 %14, 1
  br i1 %cmp.i2, label %if.then.i3, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_4.exit

if.then.i3:                                       ; preds = %if.then19
  %15 = load i32, ptr %v.addr.i1, align 4
  store i32 %15, ptr @exitValue, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_4.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_4.exit: ; preds = %if.then19, %if.then.i3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.addr.i1)
  br label %return

if.end23:                                         ; preds = %land.lhs.true16, %if.end13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end23
  %storemerge = phi i32 [ 0, %if.end23 ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr %i, align 4
  %cmp24 = icmp slt i32 %storemerge, 4
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, ptr %i, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr @zSuffix, i64 0, i64 %idxprom
  %17 = load ptr, ptr %arrayidx, align 8
  %call26 = call zeroext i8 @hasSuffix(ptr noundef nonnull @inName, ptr noundef %17)
  %tobool27.not = icmp eq i8 %call26, 0
  br i1 %tobool27.not, label %for.inc, label %if.then28

if.then28:                                        ; preds = %for.body
  %18 = load i8, ptr @noisy, align 1
  %tobool29.not = icmp eq i8 %18, 0
  br i1 %tobool29.not, label %if.end34, label %if.then30

if.then30:                                        ; preds = %if.then28
  %19 = load ptr, ptr @__stderrp, align 8
  %20 = load ptr, ptr @progName, align 8
  %21 = load i32, ptr %i, align 4
  %idxprom31 = sext i32 %21 to i64
  %arrayidx32 = getelementptr inbounds [4 x ptr], ptr @zSuffix, i64 0, i64 %idxprom31
  %22 = load ptr, ptr %arrayidx32, align 8
  %call33 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.59, ptr noundef %20, ptr noundef nonnull @inName, ptr noundef %22) #13
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %if.then28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.addr.i4)
  store i32 1, ptr %v.addr.i4, align 4
  %23 = load i32, ptr @exitValue, align 4
  %cmp.i5 = icmp slt i32 %23, 1
  br i1 %cmp.i5, label %if.then.i6, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_5.exit

if.then.i6:                                       ; preds = %if.end34
  %24 = load i32, ptr %v.addr.i4, align 4
  store i32 %24, ptr @exitValue, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_5.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_5.exit: ; preds = %if.end34, %if.then.i6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.addr.i4)
  br label %return

for.inc:                                          ; preds = %for.body
  %25 = load i32, ptr %i, align 4
  %inc = add nsw i32 %25, 1
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %for.cond
  %26 = load i32, ptr @srcMode, align 4
  %cmp36 = icmp eq i32 %26, 3
  %27 = load i32, ptr @srcMode, align 4
  %cmp38 = icmp eq i32 %27, 2
  %or.cond34 = select i1 %cmp36, i1 true, i1 %cmp38
  br i1 %or.cond34, label %if.then40, label %if.end48

if.then40:                                        ; preds = %for.end
  %call41 = call i32 @"\01_stat"(ptr noundef nonnull @inName, ptr noundef nonnull %statBuf) #13
  %st_mode = getelementptr inbounds %struct.stat, ptr %statBuf, i64 0, i32 1
  %28 = load i16, ptr %st_mode, align 4
  %29 = and i16 %28, -4096
  %cmp43 = icmp eq i16 %29, 16384
  br i1 %cmp43, label %if.then45, label %if.end48

if.then45:                                        ; preds = %if.then40
  %30 = load ptr, ptr @__stderrp, align 8
  %31 = load ptr, ptr @progName, align 8
  %call46 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef nonnull @.str.60, ptr noundef %31, ptr noundef nonnull @inName) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.addr.i7)
  store i32 1, ptr %v.addr.i7, align 4
  %32 = load i32, ptr @exitValue, align 4
  %cmp.i8 = icmp slt i32 %32, 1
  br i1 %cmp.i8, label %if.then.i9, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_6.exit

if.then.i9:                                       ; preds = %if.then45
  %33 = load i32, ptr %v.addr.i7, align 4
  store i32 %33, ptr @exitValue, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_6.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_6.exit: ; preds = %if.then45, %if.then.i9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.addr.i7)
  br label %return

if.end48:                                         ; preds = %if.then40, %for.end
  %34 = load i32, ptr @srcMode, align 4
  %cmp49 = icmp eq i32 %34, 3
  %35 = load i8, ptr @forceOverwrite, align 1
  %tobool52.not = icmp eq i8 %35, 0
  %or.cond35 = select i1 %cmp49, i1 %tobool52.not, i1 false
  br i1 %or.cond35, label %land.lhs.true53, label %if.end62

land.lhs.true53:                                  ; preds = %if.end48
  %call54 = call zeroext i8 @notAStandardFile(ptr noundef nonnull @inName)
  %tobool56.not = icmp eq i8 %call54, 0
  br i1 %tobool56.not, label %if.end62, label %if.then57

if.then57:                                        ; preds = %land.lhs.true53
  %36 = load i8, ptr @noisy, align 1
  %tobool58.not = icmp eq i8 %36, 0
  br i1 %tobool58.not, label %if.end61, label %if.then59

if.then59:                                        ; preds = %if.then57
  %37 = load ptr, ptr @__stderrp, align 8
  %38 = load ptr, ptr @progName, align 8
  %call60 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef nonnull @.str.61, ptr noundef %38, ptr noundef nonnull @inName) #13
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.then57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.addr.i10)
  store i32 1, ptr %v.addr.i10, align 4
  %39 = load i32, ptr @exitValue, align 4
  %cmp.i11 = icmp slt i32 %39, 1
  br i1 %cmp.i11, label %if.then.i12, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_7.exit

if.then.i12:                                      ; preds = %if.end61
  %40 = load i32, ptr %v.addr.i10, align 4
  store i32 %40, ptr @exitValue, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_7.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_7.exit: ; preds = %if.end61, %if.then.i12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.addr.i10)
  br label %return

if.end62:                                         ; preds = %land.lhs.true53, %if.end48
  %41 = load i32, ptr @srcMode, align 4
  %cmp63 = icmp eq i32 %41, 3
  br i1 %cmp63, label %land.lhs.true65, label %if.end75

land.lhs.true65:                                  ; preds = %if.end62
  %call66 = call zeroext i8 @fileExists(ptr noundef nonnull @outName)
  %tobool68.not = icmp eq i8 %call66, 0
  br i1 %tobool68.not, label %if.end75, label %if.then69

if.then69:                                        ; preds = %land.lhs.true65
  %42 = load i8, ptr @forceOverwrite, align 1
  %tobool70.not = icmp eq i8 %42, 0
  br i1 %tobool70.not, label %if.else, label %if.then71

if.then71:                                        ; preds = %if.then69
  %call72 = call i32 @remove(ptr noundef nonnull @outName) #13
  br label %if.end75

if.else:                                          ; preds = %if.then69
  %43 = load ptr, ptr @__stderrp, align 8
  %44 = load ptr, ptr @progName, align 8
  %call73 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef nonnull @.str.62, ptr noundef %44, ptr noundef nonnull @outName) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.addr.i13)
  store i32 1, ptr %v.addr.i13, align 4
  %45 = load i32, ptr @exitValue, align 4
  %cmp.i14 = icmp slt i32 %45, 1
  br i1 %cmp.i14, label %if.then.i15, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_8.exit

if.then.i15:                                      ; preds = %if.else
  %46 = load i32, ptr %v.addr.i13, align 4
  store i32 %46, ptr @exitValue, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_8.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_8.exit: ; preds = %if.else, %if.then.i15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.addr.i13)
  br label %return

if.end75:                                         ; preds = %if.then71, %land.lhs.true65, %if.end62
  %47 = load i32, ptr @srcMode, align 4
  %cmp76 = icmp eq i32 %47, 3
  %48 = load i8, ptr @forceOverwrite, align 1
  %tobool79.not = icmp eq i8 %48, 0
  %or.cond36 = select i1 %cmp76, i1 %tobool79.not, i1 false
  br i1 %or.cond36, label %land.lhs.true80, label %if.end88

land.lhs.true80:                                  ; preds = %if.end75
  %call81 = call i32 @countHardLinks(ptr noundef nonnull @inName)
  store i32 %call81, ptr %n, align 4
  %cmp82 = icmp sgt i32 %call81, 0
  br i1 %cmp82, label %if.then84, label %if.end88

if.then84:                                        ; preds = %land.lhs.true80
  %49 = load ptr, ptr @__stderrp, align 8
  %50 = load ptr, ptr @progName, align 8
  %51 = load i32, ptr %n, align 4
  %cmp85 = icmp sgt i32 %51, 1
  %cond = select i1 %cmp85, ptr @.str.64, ptr @.str.4
  %call87 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef nonnull @.str.63, ptr noundef %50, ptr noundef nonnull @inName, i32 noundef %51, ptr noundef nonnull %cond) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.addr.i16)
  store i32 1, ptr %v.addr.i16, align 4
  %52 = load i32, ptr @exitValue, align 4
  %cmp.i17 = icmp slt i32 %52, 1
  br i1 %cmp.i17, label %if.then.i18, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_9.exit

if.then.i18:                                      ; preds = %if.then84
  %53 = load i32, ptr %v.addr.i16, align 4
  store i32 %53, ptr @exitValue, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_9.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_9.exit: ; preds = %if.then84, %if.then.i18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.addr.i16)
  br label %return

if.end88:                                         ; preds = %land.lhs.true80, %if.end75
  %54 = load i32, ptr @srcMode, align 4
  %cmp89 = icmp eq i32 %54, 3
  br i1 %cmp89, label %if.then91, label %if.end92

if.then91:                                        ; preds = %if.end88
  call void @saveInputFileMetaInfo(ptr noundef nonnull @inName)
  br label %if.end92

if.end92:                                         ; preds = %if.then91, %if.end88
  %55 = load i32, ptr @srcMode, align 4
  switch i32 %55, label %sw.default [
    i32 1, label %sw.bb93
    i32 2, label %sw.bb101
    i32 3, label %sw.bb122
  ]

sw.bb93:                                          ; preds = %if.end92
  %56 = load ptr, ptr @__stdinp, align 8
  store ptr %56, ptr %inStr, align 8
  %57 = load ptr, ptr @__stdoutp, align 8
  store ptr %57, ptr %outStr, align 8
  %call94 = call i32 @fileno(ptr noundef %57) #13
  %call95 = call i32 @isatty(i32 noundef %call94) #13
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %sw.epilog149, label %if.then97

if.then97:                                        ; preds = %sw.bb93
  %58 = load ptr, ptr @__stderrp, align 8
  %59 = load ptr, ptr @progName, align 8
  %call98 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef nonnull @.str.65, ptr noundef %59) #13
  %60 = load ptr, ptr @__stderrp, align 8
  %61 = load ptr, ptr @progName, align 8
  %call99 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef nonnull @.str.66, ptr noundef %61, ptr noundef %61) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.addr.i19)
  store i32 1, ptr %v.addr.i19, align 4
  %62 = load i32, ptr @exitValue, align 4
  %cmp.i20 = icmp slt i32 %62, 1
  br i1 %cmp.i20, label %if.then.i21, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_10.exit

if.then.i21:                                      ; preds = %if.then97
  %63 = load i32, ptr %v.addr.i19, align 4
  store i32 %63, ptr @exitValue, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_10.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_10.exit: ; preds = %if.then97, %if.then.i21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.addr.i19)
  br label %return

sw.bb101:                                         ; preds = %if.end92
  %call102 = call ptr @"\01_fopen"(ptr noundef nonnull @inName, ptr noundef nonnull @.str.67) #13
  store ptr %call102, ptr %inStr, align 8
  %64 = load ptr, ptr @__stdoutp, align 8
  store ptr %64, ptr %outStr, align 8
  %call103 = call i32 @fileno(ptr noundef %64) #13
  %call104 = call i32 @isatty(i32 noundef %call103) #13
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.end114, label %if.then106

if.then106:                                       ; preds = %sw.bb101
  %65 = load ptr, ptr @__stderrp, align 8
  %66 = load ptr, ptr @progName, align 8
  %call107 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %65, ptr noundef nonnull @.str.65, ptr noundef %66) #13
  %67 = load ptr, ptr @__stderrp, align 8
  %68 = load ptr, ptr @progName, align 8
  %call108 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %67, ptr noundef nonnull @.str.66, ptr noundef %68, ptr noundef %68) #13
  %69 = load ptr, ptr %inStr, align 8
  %cmp109.not = icmp eq ptr %69, null
  br i1 %cmp109.not, label %if.end113, label %if.then111

if.then111:                                       ; preds = %if.then106
  %70 = load ptr, ptr %inStr, align 8
  %call112 = call i32 @fclose(ptr noundef %70) #13
  br label %if.end113

if.end113:                                        ; preds = %if.then111, %if.then106
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.addr.i22)
  store i32 1, ptr %v.addr.i22, align 4
  %71 = load i32, ptr @exitValue, align 4
  %cmp.i23 = icmp slt i32 %71, 1
  br i1 %cmp.i23, label %if.then.i24, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_11.exit

if.then.i24:                                      ; preds = %if.end113
  %72 = load i32, ptr %v.addr.i22, align 4
  store i32 %72, ptr @exitValue, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_11.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_11.exit: ; preds = %if.end113, %if.then.i24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.addr.i22)
  br label %return

if.end114:                                        ; preds = %sw.bb101
  %73 = load ptr, ptr %inStr, align 8
  %cmp115 = icmp eq ptr %73, null
  br i1 %cmp115, label %if.then117, label %sw.epilog149

if.then117:                                       ; preds = %if.end114
  %74 = load ptr, ptr @__stderrp, align 8
  %75 = load ptr, ptr @progName, align 8
  %call118 = call ptr @__error() #13
  %76 = load i32, ptr %call118, align 4
  %call119 = call ptr @"\01_strerror"(i32 noundef %76) #13
  %call120 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %74, ptr noundef nonnull @.str.58, ptr noundef %75, ptr noundef nonnull @inName, ptr noundef %call119) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.addr.i25)
  store i32 1, ptr %v.addr.i25, align 4
  %77 = load i32, ptr @exitValue, align 4
  %cmp.i26 = icmp slt i32 %77, 1
  br i1 %cmp.i26, label %if.then.i27, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_12.exit

if.then.i27:                                      ; preds = %if.then117
  %78 = load i32, ptr %v.addr.i25, align 4
  store i32 %78, ptr @exitValue, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_12.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_12.exit: ; preds = %if.then117, %if.then.i27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.addr.i25)
  br label %return

sw.bb122:                                         ; preds = %if.end92
  %call123 = call ptr @"\01_fopen"(ptr noundef nonnull @inName, ptr noundef nonnull @.str.67) #13
  store ptr %call123, ptr %inStr, align 8
  %call124 = call ptr @fopen_output_safely(ptr noundef nonnull @outName, ptr noundef nonnull @.str.68)
  store ptr %call124, ptr %outStr, align 8
  %cmp125 = icmp eq ptr %call124, null
  br i1 %cmp125, label %if.then127, label %if.end136

if.then127:                                       ; preds = %sw.bb122
  %79 = load ptr, ptr @__stderrp, align 8
  %80 = load ptr, ptr @progName, align 8
  %call128 = call ptr @__error() #13
  %81 = load i32, ptr %call128, align 4
  %call129 = call ptr @"\01_strerror"(i32 noundef %81) #13
  %call130 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %79, ptr noundef nonnull @.str.69, ptr noundef %80, ptr noundef nonnull @outName, ptr noundef %call129) #13
  %82 = load ptr, ptr %inStr, align 8
  %cmp131.not = icmp eq ptr %82, null
  br i1 %cmp131.not, label %if.end135, label %if.then133

if.then133:                                       ; preds = %if.then127
  %83 = load ptr, ptr %inStr, align 8
  %call134 = call i32 @fclose(ptr noundef %83) #13
  br label %if.end135

if.end135:                                        ; preds = %if.then133, %if.then127
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.addr.i28)
  store i32 1, ptr %v.addr.i28, align 4
  %84 = load i32, ptr @exitValue, align 4
  %cmp.i29 = icmp slt i32 %84, 1
  br i1 %cmp.i29, label %if.then.i30, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_13.exit

if.then.i30:                                      ; preds = %if.end135
  %85 = load i32, ptr %v.addr.i28, align 4
  store i32 %85, ptr @exitValue, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_13.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_13.exit: ; preds = %if.end135, %if.then.i30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.addr.i28)
  br label %return

if.end136:                                        ; preds = %sw.bb122
  %86 = load ptr, ptr %inStr, align 8
  %cmp137 = icmp eq ptr %86, null
  br i1 %cmp137, label %if.then139, label %sw.epilog149

if.then139:                                       ; preds = %if.end136
  %87 = load ptr, ptr @__stderrp, align 8
  %88 = load ptr, ptr @progName, align 8
  %call140 = call ptr @__error() #13
  %89 = load i32, ptr %call140, align 4
  %call141 = call ptr @"\01_strerror"(i32 noundef %89) #13
  %call142 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %87, ptr noundef nonnull @.str.58, ptr noundef %88, ptr noundef nonnull @inName, ptr noundef %call141) #13
  %90 = load ptr, ptr %outStr, align 8
  %cmp143.not = icmp eq ptr %90, null
  br i1 %cmp143.not, label %if.end147, label %if.then145

if.then145:                                       ; preds = %if.then139
  %91 = load ptr, ptr %outStr, align 8
  %call146 = call i32 @fclose(ptr noundef %91) #13
  br label %if.end147

if.end147:                                        ; preds = %if.then145, %if.then139
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.addr.i31)
  store i32 1, ptr %v.addr.i31, align 4
  %92 = load i32, ptr @exitValue, align 4
  %cmp.i32 = icmp slt i32 %92, 1
  br i1 %cmp.i32, label %if.then.i33, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_14.exit

if.then.i33:                                      ; preds = %if.end147
  %93 = load i32, ptr %v.addr.i31, align 4
  store i32 %93, ptr @exitValue, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_14.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_14.exit: ; preds = %if.end147, %if.then.i33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.addr.i31)
  br label %return

sw.default:                                       ; preds = %if.end92
  call void @panic(ptr noundef nonnull @.str.70) #15
  unreachable

sw.epilog149:                                     ; preds = %if.end136, %if.end114, %sw.bb93
  %94 = load i32, ptr @verbosity, align 4
  %cmp150 = icmp sgt i32 %94, 0
  br i1 %cmp150, label %if.then152, label %if.end155

if.then152:                                       ; preds = %sw.epilog149
  %95 = load ptr, ptr @__stderrp, align 8
  %call153 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %95, ptr noundef nonnull @.str.71, ptr noundef nonnull @inName) #13
  call void @pad(ptr noundef nonnull @inName)
  %96 = load ptr, ptr @__stderrp, align 8
  %call154 = call i32 @fflush(ptr noundef %96) #13
  br label %if.end155

if.end155:                                        ; preds = %if.then152, %sw.epilog149
  %97 = load ptr, ptr %outStr, align 8
  store ptr %97, ptr @outputHandleJustInCase, align 8
  store i8 1, ptr @deleteOutputOnInterrupt, align 1
  %98 = load ptr, ptr %inStr, align 8
  call void @compressStream(ptr noundef %98, ptr noundef %97)
  store ptr null, ptr @outputHandleJustInCase, align 8
  %99 = load i32, ptr @srcMode, align 4
  %cmp156 = icmp eq i32 %99, 3
  br i1 %cmp156, label %if.then158, label %if.end167

if.then158:                                       ; preds = %if.end155
  call void @applySavedTimeInfoToOutputFile(ptr noundef nonnull @outName)
  store i8 0, ptr @deleteOutputOnInterrupt, align 1
  %100 = load i8, ptr @keepInputFiles, align 1
  %tobool159.not = icmp eq i8 %100, 0
  br i1 %tobool159.not, label %if.then160, label %if.end167

if.then160:                                       ; preds = %if.then158
  %call161 = call i32 @remove(ptr noundef nonnull @inName) #13
  %cmp162.not = icmp eq i32 %call161, 0
  br i1 %cmp162.not, label %if.end167, label %if.then164

if.then164:                                       ; preds = %if.then160
  call void @ioError() #15
  unreachable

if.end167:                                        ; preds = %if.then158, %if.then160, %if.end155
  store i8 0, ptr @deleteOutputOnInterrupt, align 1
  br label %return

return:                                           ; preds = %if.end167, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_14.exit, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_13.exit, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_12.exit, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_11.exit, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_10.exit, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_9.exit, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_8.exit, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_7.exit, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_6.exit, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_5.exit, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_4.exit, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_3.exit
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @uncompress(ptr noundef %name) #0 {
entry:
  %v.addr.i28 = alloca i32, align 4
  %v.addr.i25 = alloca i32, align 4
  %v.addr.i22 = alloca i32, align 4
  %v.addr.i19 = alloca i32, align 4
  %v.addr.i16 = alloca i32, align 4
  %v.addr.i13 = alloca i32, align 4
  %v.addr.i10 = alloca i32, align 4
  %v.addr.i7 = alloca i32, align 4
  %v.addr.i4 = alloca i32, align 4
  %v.addr.i1 = alloca i32, align 4
  %v.addr.i = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %inStr = alloca ptr, align 8
  %outStr = alloca ptr, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %magicNumberOK = alloca i8, align 1
  %cantGuess = alloca i8, align 1
  %statBuf = alloca %struct.stat, align 8
  store ptr %name, ptr %name.addr, align 8
  store i8 0, ptr @deleteOutputOnInterrupt, align 1
  %cmp = icmp ne ptr %name, null
  %0 = load i32, ptr @srcMode, align 4
  %cmp1.not = icmp eq i32 %0, 1
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1.not
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @panic(ptr noundef nonnull @.str.80) #15
  unreachable

if.end:                                           ; preds = %entry
  store i8 0, ptr %cantGuess, align 1
  %1 = load i32, ptr @srcMode, align 4
  switch i32 %1, label %zzz [
    i32 1, label %sw.bb
    i32 3, label %sw.bb2
    i32 2, label %sw.bb9
  ]

sw.bb:                                            ; preds = %if.end
  call void @copyFileName(ptr noundef nonnull @inName, ptr noundef nonnull @.str.54)
  call void @copyFileName(ptr noundef nonnull @outName, ptr noundef nonnull @.str.55)
  br label %zzz

sw.bb2:                                           ; preds = %if.end
  %2 = load ptr, ptr %name.addr, align 8
  call void @copyFileName(ptr noundef nonnull @inName, ptr noundef %2)
  call void @copyFileName(ptr noundef nonnull @outName, ptr noundef %2)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb2
  %storemerge = phi i32 [ 0, %sw.bb2 ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr %i, align 4
  %cmp3 = icmp slt i32 %storemerge, 4
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr @zSuffix, i64 0, i64 %idxprom
  %4 = load ptr, ptr %arrayidx, align 8
  %idxprom4 = sext i32 %3 to i64
  %arrayidx5 = getelementptr inbounds [4 x ptr], ptr @unzSuffix, i64 0, i64 %idxprom4
  %5 = load ptr, ptr %arrayidx5, align 8
  %call = call zeroext i8 @mapSuffix(ptr noundef nonnull @outName, ptr noundef %4, ptr noundef %5)
  %tobool.not = icmp eq i8 %call, 0
  br i1 %tobool.not, label %for.inc, label %zzz

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.cond
  store i8 1, ptr %cantGuess, align 1
  %call8 = call ptr @__strcat_chk(ptr noundef nonnull @outName, ptr noundef nonnull @.str.81, i64 noundef 1034) #13
  br label %zzz

sw.bb9:                                           ; preds = %if.end
  %7 = load ptr, ptr %name.addr, align 8
  call void @copyFileName(ptr noundef nonnull @inName, ptr noundef %7)
  call void @copyFileName(ptr noundef nonnull @outName, ptr noundef nonnull @.str.55)
  br label %zzz

zzz:                                              ; preds = %if.end, %sw.bb, %for.end, %sw.bb9, %for.body
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) @outName, ptr noundef nonnull align 1 dereferenceable(10) @.str.56, i64 10, i1 false)
  store i8 1, ptr @forceOverwrite, align 1
  %8 = load i32, ptr @srcMode, align 4
  %cmp11.not = icmp eq i32 %8, 1
  br i1 %cmp11.not, label %if.end20, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %zzz
  %call13 = call zeroext i8 @containsDubiousChars(ptr noundef nonnull @inName)
  %tobool14.not = icmp eq i8 %call13, 0
  br i1 %tobool14.not, label %if.end20, label %if.then15

if.then15:                                        ; preds = %land.lhs.true12
  %9 = load i8, ptr @noisy, align 1
  %tobool16.not = icmp eq i8 %9, 0
  br i1 %tobool16.not, label %if.end19, label %if.then17

if.then17:                                        ; preds = %if.then15
  %10 = load ptr, ptr @__stderrp, align 8
  %11 = load ptr, ptr @progName, align 8
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.57, ptr noundef %11, ptr noundef nonnull @inName) #13
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.then15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.addr.i)
  store i32 1, ptr %v.addr.i, align 4
  %12 = load i32, ptr @exitValue, align 4
  %cmp.i = icmp slt i32 %12, 1
  br i1 %cmp.i, label %if.then.i, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_15.exit

if.then.i:                                        ; preds = %if.end19
  %13 = load i32, ptr %v.addr.i, align 4
  store i32 %13, ptr @exitValue, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_15.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_15.exit: ; preds = %if.end19, %if.then.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.addr.i)
  br label %if.end193

if.end20:                                         ; preds = %land.lhs.true12, %zzz
  %14 = load i32, ptr @srcMode, align 4
  %cmp21.not = icmp eq i32 %14, 1
  br i1 %cmp21.not, label %if.end30, label %land.lhs.true23

land.lhs.true23:                                  ; preds = %if.end20
  %call24 = call zeroext i8 @fileExists(ptr noundef nonnull @inName)
  %tobool25.not = icmp eq i8 %call24, 0
  br i1 %tobool25.not, label %if.then26, label %if.end30

if.then26:                                        ; preds = %land.lhs.true23
  %15 = load ptr, ptr @__stderrp, align 8
  %16 = load ptr, ptr @progName, align 8
  %call27 = call ptr @__error() #13
  %17 = load i32, ptr %call27, align 4
  %call28 = call ptr @"\01_strerror"(i32 noundef %17) #13
  %call29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.58, ptr noundef %16, ptr noundef nonnull @inName, ptr noundef %call28) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.addr.i1)
  store i32 1, ptr %v.addr.i1, align 4
  %18 = load i32, ptr @exitValue, align 4
  %cmp.i2 = icmp slt i32 %18, 1
  br i1 %cmp.i2, label %if.then.i3, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_16.exit

if.then.i3:                                       ; preds = %if.then26
  %19 = load i32, ptr %v.addr.i1, align 4
  store i32 %19, ptr @exitValue, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_16.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_16.exit: ; preds = %if.then26, %if.then.i3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.addr.i1)
  br label %if.end193

if.end30:                                         ; preds = %land.lhs.true23, %if.end20
  %20 = load i32, ptr @srcMode, align 4
  %cmp31 = icmp eq i32 %20, 3
  %21 = load i32, ptr @srcMode, align 4
  %cmp33 = icmp eq i32 %21, 2
  %or.cond31 = select i1 %cmp31, i1 true, i1 %cmp33
  br i1 %or.cond31, label %if.then35, label %if.end43

if.then35:                                        ; preds = %if.end30
  %call36 = call i32 @"\01_stat"(ptr noundef nonnull @inName, ptr noundef nonnull %statBuf) #13
  %st_mode = getelementptr inbounds %struct.stat, ptr %statBuf, i64 0, i32 1
  %22 = load i16, ptr %st_mode, align 4
  %23 = and i16 %22, -4096
  %cmp38 = icmp eq i16 %23, 16384
  br i1 %cmp38, label %if.then40, label %if.end43

if.then40:                                        ; preds = %if.then35
  %24 = load ptr, ptr @__stderrp, align 8
  %25 = load ptr, ptr @progName, align 8
  %call41 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.60, ptr noundef %25, ptr noundef nonnull @inName) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.addr.i4)
  store i32 1, ptr %v.addr.i4, align 4
  %26 = load i32, ptr @exitValue, align 4
  %cmp.i5 = icmp slt i32 %26, 1
  br i1 %cmp.i5, label %if.then.i6, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_17.exit

if.then.i6:                                       ; preds = %if.then40
  %27 = load i32, ptr %v.addr.i4, align 4
  store i32 %27, ptr @exitValue, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_17.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_17.exit: ; preds = %if.then40, %if.then.i6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.addr.i4)
  br label %if.end193

if.end43:                                         ; preds = %if.then35, %if.end30
  %28 = load i32, ptr @srcMode, align 4
  %cmp44 = icmp eq i32 %28, 3
  %29 = load i8, ptr @forceOverwrite, align 1
  %tobool47.not = icmp eq i8 %29, 0
  %or.cond32 = select i1 %cmp44, i1 %tobool47.not, i1 false
  br i1 %or.cond32, label %land.lhs.true48, label %if.end57

land.lhs.true48:                                  ; preds = %if.end43
  %call49 = call zeroext i8 @notAStandardFile(ptr noundef nonnull @inName)
  %tobool51.not = icmp eq i8 %call49, 0
  br i1 %tobool51.not, label %if.end57, label %if.then52

if.then52:                                        ; preds = %land.lhs.true48
  %30 = load i8, ptr @noisy, align 1
  %tobool53.not = icmp eq i8 %30, 0
  br i1 %tobool53.not, label %if.end56, label %if.then54

if.then54:                                        ; preds = %if.then52
  %31 = load ptr, ptr @__stderrp, align 8
  %32 = load ptr, ptr @progName, align 8
  %call55 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef nonnull @.str.61, ptr noundef %32, ptr noundef nonnull @inName) #13
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.then52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.addr.i7)
  store i32 1, ptr %v.addr.i7, align 4
  %33 = load i32, ptr @exitValue, align 4
  %cmp.i8 = icmp slt i32 %33, 1
  br i1 %cmp.i8, label %if.then.i9, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_18.exit

if.then.i9:                                       ; preds = %if.end56
  %34 = load i32, ptr %v.addr.i7, align 4
  store i32 %34, ptr @exitValue, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_18.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_18.exit: ; preds = %if.end56, %if.then.i9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.addr.i7)
  br label %if.end193

if.end57:                                         ; preds = %land.lhs.true48, %if.end43
  %35 = load i8, ptr %cantGuess, align 1
  %tobool58.not = icmp eq i8 %35, 0
  %36 = load i8, ptr @noisy, align 1
  %tobool60.not = icmp eq i8 %36, 0
  %or.cond34 = select i1 %tobool58.not, i1 true, i1 %tobool60.not
  br i1 %or.cond34, label %if.end64, label %if.then61

if.then61:                                        ; preds = %if.end57
  %37 = load ptr, ptr @__stderrp, align 8
  %38 = load ptr, ptr @progName, align 8
  %call62 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef nonnull @.str.82, ptr noundef %38, ptr noundef nonnull @inName, ptr noundef nonnull @outName) #13
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %if.end57
  %39 = load i32, ptr @srcMode, align 4
  %cmp65 = icmp eq i32 %39, 3
  br i1 %cmp65, label %land.lhs.true67, label %if.end77

land.lhs.true67:                                  ; preds = %if.end64
  %call68 = call zeroext i8 @fileExists(ptr noundef nonnull @outName)
  %tobool70.not = icmp eq i8 %call68, 0
  br i1 %tobool70.not, label %if.end77, label %if.then71

if.then71:                                        ; preds = %land.lhs.true67
  %40 = load i8, ptr @forceOverwrite, align 1
  %tobool72.not = icmp eq i8 %40, 0
  br i1 %tobool72.not, label %if.else, label %if.then73

if.then73:                                        ; preds = %if.then71
  %call74 = call i32 @remove(ptr noundef nonnull @outName) #13
  br label %if.end77

if.else:                                          ; preds = %if.then71
  %41 = load ptr, ptr @__stderrp, align 8
  %42 = load ptr, ptr @progName, align 8
  %call75 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef nonnull @.str.62, ptr noundef %42, ptr noundef nonnull @outName) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.addr.i10)
  store i32 1, ptr %v.addr.i10, align 4
  %43 = load i32, ptr @exitValue, align 4
  %cmp.i11 = icmp slt i32 %43, 1
  br i1 %cmp.i11, label %if.then.i12, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_19.exit

if.then.i12:                                      ; preds = %if.else
  %44 = load i32, ptr %v.addr.i10, align 4
  store i32 %44, ptr @exitValue, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_19.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_19.exit: ; preds = %if.else, %if.then.i12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.addr.i10)
  br label %if.end193

if.end77:                                         ; preds = %if.then73, %land.lhs.true67, %if.end64
  %45 = load i32, ptr @srcMode, align 4
  %cmp78 = icmp eq i32 %45, 3
  %46 = load i8, ptr @forceOverwrite, align 1
  %tobool81.not = icmp eq i8 %46, 0
  %or.cond33 = select i1 %cmp78, i1 %tobool81.not, i1 false
  br i1 %or.cond33, label %land.lhs.true82, label %if.end90

land.lhs.true82:                                  ; preds = %if.end77
  %call83 = call i32 @countHardLinks(ptr noundef nonnull @inName)
  store i32 %call83, ptr %n, align 4
  %cmp84 = icmp sgt i32 %call83, 0
  br i1 %cmp84, label %if.then86, label %if.end90

if.then86:                                        ; preds = %land.lhs.true82
  %47 = load ptr, ptr @__stderrp, align 8
  %48 = load ptr, ptr @progName, align 8
  %49 = load i32, ptr %n, align 4
  %cmp87 = icmp sgt i32 %49, 1
  %cond = select i1 %cmp87, ptr @.str.64, ptr @.str.4
  %call89 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %47, ptr noundef nonnull @.str.63, ptr noundef %48, ptr noundef nonnull @inName, i32 noundef %49, ptr noundef nonnull %cond) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.addr.i13)
  store i32 1, ptr %v.addr.i13, align 4
  %50 = load i32, ptr @exitValue, align 4
  %cmp.i14 = icmp slt i32 %50, 1
  br i1 %cmp.i14, label %if.then.i15, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_20.exit

if.then.i15:                                      ; preds = %if.then86
  %51 = load i32, ptr %v.addr.i13, align 4
  store i32 %51, ptr @exitValue, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_20.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_20.exit: ; preds = %if.then86, %if.then.i15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.addr.i13)
  br label %if.end193

if.end90:                                         ; preds = %land.lhs.true82, %if.end77
  %52 = load i32, ptr @srcMode, align 4
  %cmp91 = icmp eq i32 %52, 3
  br i1 %cmp91, label %if.then93, label %if.end94

if.then93:                                        ; preds = %if.end90
  call void @saveInputFileMetaInfo(ptr noundef nonnull @inName)
  br label %if.end94

if.end94:                                         ; preds = %if.then93, %if.end90
  %53 = load i32, ptr @srcMode, align 4
  switch i32 %53, label %sw.default [
    i32 1, label %sw.bb95
    i32 2, label %sw.bb103
    i32 3, label %sw.bb117
  ]

sw.bb95:                                          ; preds = %if.end94
  %54 = load ptr, ptr @__stdinp, align 8
  store ptr %54, ptr %inStr, align 8
  %55 = load ptr, ptr @__stdoutp, align 8
  store ptr %55, ptr %outStr, align 8
  %call96 = call i32 @fileno(ptr noundef %54) #13
  %call97 = call i32 @isatty(i32 noundef %call96) #13
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %sw.epilog144, label %if.then99

if.then99:                                        ; preds = %sw.bb95
  %56 = load ptr, ptr @__stderrp, align 8
  %57 = load ptr, ptr @progName, align 8
  %call100 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %56, ptr noundef nonnull @.str.83, ptr noundef %57) #13
  %58 = load ptr, ptr @__stderrp, align 8
  %59 = load ptr, ptr @progName, align 8
  %call101 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef nonnull @.str.66, ptr noundef %59, ptr noundef %59) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.addr.i16)
  store i32 1, ptr %v.addr.i16, align 4
  %60 = load i32, ptr @exitValue, align 4
  %cmp.i17 = icmp slt i32 %60, 1
  br i1 %cmp.i17, label %if.then.i18, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_21.exit

if.then.i18:                                      ; preds = %if.then99
  %61 = load i32, ptr %v.addr.i16, align 4
  store i32 %61, ptr @exitValue, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_21.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_21.exit: ; preds = %if.then99, %if.then.i18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.addr.i16)
  br label %if.end193

sw.bb103:                                         ; preds = %if.end94
  %call104 = call ptr @"\01_fopen"(ptr noundef nonnull @inName, ptr noundef nonnull @.str.67) #13
  store ptr %call104, ptr %inStr, align 8
  %62 = load ptr, ptr @__stdoutp, align 8
  store ptr %62, ptr %outStr, align 8
  %cmp105 = icmp eq ptr %call104, null
  br i1 %cmp105, label %if.then107, label %sw.epilog144

if.then107:                                       ; preds = %sw.bb103
  %63 = load ptr, ptr @__stderrp, align 8
  %64 = load ptr, ptr @progName, align 8
  %call108 = call ptr @__error() #13
  %65 = load i32, ptr %call108, align 4
  %call109 = call ptr @"\01_strerror"(i32 noundef %65) #13
  %call110 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %63, ptr noundef nonnull @.str.84, ptr noundef %64, ptr noundef nonnull @inName, ptr noundef %call109) #13
  %66 = load ptr, ptr %inStr, align 8
  %cmp111.not = icmp eq ptr %66, null
  br i1 %cmp111.not, label %if.end115, label %if.then113

if.then113:                                       ; preds = %if.then107
  %67 = load ptr, ptr %inStr, align 8
  %call114 = call i32 @fclose(ptr noundef %67) #13
  br label %if.end115

if.end115:                                        ; preds = %if.then113, %if.then107
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.addr.i19)
  store i32 1, ptr %v.addr.i19, align 4
  %68 = load i32, ptr @exitValue, align 4
  %cmp.i20 = icmp slt i32 %68, 1
  br i1 %cmp.i20, label %if.then.i21, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_22.exit

if.then.i21:                                      ; preds = %if.end115
  %69 = load i32, ptr %v.addr.i19, align 4
  store i32 %69, ptr @exitValue, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_22.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_22.exit: ; preds = %if.end115, %if.then.i21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.addr.i19)
  br label %if.end193

sw.bb117:                                         ; preds = %if.end94
  %call118 = call ptr @"\01_fopen"(ptr noundef nonnull @inName, ptr noundef nonnull @.str.67) #13
  store ptr %call118, ptr %inStr, align 8
  %call119 = call ptr @fopen_output_safely(ptr noundef nonnull @outName, ptr noundef nonnull @.str.68)
  store ptr %call119, ptr %outStr, align 8
  %cmp120 = icmp eq ptr %call119, null
  br i1 %cmp120, label %if.then122, label %if.end131

if.then122:                                       ; preds = %sw.bb117
  %70 = load ptr, ptr @__stderrp, align 8
  %71 = load ptr, ptr @progName, align 8
  %call123 = call ptr @__error() #13
  %72 = load i32, ptr %call123, align 4
  %call124 = call ptr @"\01_strerror"(i32 noundef %72) #13
  %call125 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %70, ptr noundef nonnull @.str.69, ptr noundef %71, ptr noundef nonnull @outName, ptr noundef %call124) #13
  %73 = load ptr, ptr %inStr, align 8
  %cmp126.not = icmp eq ptr %73, null
  br i1 %cmp126.not, label %if.end130, label %if.then128

if.then128:                                       ; preds = %if.then122
  %74 = load ptr, ptr %inStr, align 8
  %call129 = call i32 @fclose(ptr noundef %74) #13
  br label %if.end130

if.end130:                                        ; preds = %if.then128, %if.then122
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.addr.i22)
  store i32 1, ptr %v.addr.i22, align 4
  %75 = load i32, ptr @exitValue, align 4
  %cmp.i23 = icmp slt i32 %75, 1
  br i1 %cmp.i23, label %if.then.i24, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_23.exit

if.then.i24:                                      ; preds = %if.end130
  %76 = load i32, ptr %v.addr.i22, align 4
  store i32 %76, ptr @exitValue, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_23.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_23.exit: ; preds = %if.end130, %if.then.i24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.addr.i22)
  br label %if.end193

if.end131:                                        ; preds = %sw.bb117
  %77 = load ptr, ptr %inStr, align 8
  %cmp132 = icmp eq ptr %77, null
  br i1 %cmp132, label %if.then134, label %sw.epilog144

if.then134:                                       ; preds = %if.end131
  %78 = load ptr, ptr @__stderrp, align 8
  %79 = load ptr, ptr @progName, align 8
  %call135 = call ptr @__error() #13
  %80 = load i32, ptr %call135, align 4
  %call136 = call ptr @"\01_strerror"(i32 noundef %80) #13
  %call137 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %78, ptr noundef nonnull @.str.58, ptr noundef %79, ptr noundef nonnull @inName, ptr noundef %call136) #13
  %81 = load ptr, ptr %outStr, align 8
  %cmp138.not = icmp eq ptr %81, null
  br i1 %cmp138.not, label %if.end142, label %if.then140

if.then140:                                       ; preds = %if.then134
  %82 = load ptr, ptr %outStr, align 8
  %call141 = call i32 @fclose(ptr noundef %82) #13
  br label %if.end142

if.end142:                                        ; preds = %if.then140, %if.then134
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.addr.i25)
  store i32 1, ptr %v.addr.i25, align 4
  %83 = load i32, ptr @exitValue, align 4
  %cmp.i26 = icmp slt i32 %83, 1
  br i1 %cmp.i26, label %if.then.i27, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_24.exit

if.then.i27:                                      ; preds = %if.end142
  %84 = load i32, ptr %v.addr.i25, align 4
  store i32 %84, ptr @exitValue, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_24.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_24.exit: ; preds = %if.end142, %if.then.i27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.addr.i25)
  br label %if.end193

sw.default:                                       ; preds = %if.end94
  call void @panic(ptr noundef nonnull @.str.85) #15
  unreachable

sw.epilog144:                                     ; preds = %if.end131, %sw.bb103, %sw.bb95
  %85 = load i32, ptr @verbosity, align 4
  %cmp145 = icmp sgt i32 %85, 0
  br i1 %cmp145, label %if.then147, label %if.end150

if.then147:                                       ; preds = %sw.epilog144
  %86 = load ptr, ptr @__stderrp, align 8
  %call148 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %86, ptr noundef nonnull @.str.71, ptr noundef nonnull @inName) #13
  call void @pad(ptr noundef nonnull @inName)
  %87 = load ptr, ptr @__stderrp, align 8
  %call149 = call i32 @fflush(ptr noundef %87) #13
  br label %if.end150

if.end150:                                        ; preds = %if.then147, %sw.epilog144
  %88 = load ptr, ptr %outStr, align 8
  store ptr %88, ptr @outputHandleJustInCase, align 8
  store i8 1, ptr @deleteOutputOnInterrupt, align 1
  %89 = load ptr, ptr %inStr, align 8
  %call151 = call zeroext i8 @uncompressStream(ptr noundef %89, ptr noundef %88)
  store i8 %call151, ptr %magicNumberOK, align 1
  store ptr null, ptr @outputHandleJustInCase, align 8
  %tobool152.not = icmp eq i8 %call151, 0
  br i1 %tobool152.not, label %if.else166, label %if.then153

if.then153:                                       ; preds = %if.end150
  %90 = load i32, ptr @srcMode, align 4
  %cmp154 = icmp eq i32 %90, 3
  br i1 %cmp154, label %if.then156, label %if.end177

if.then156:                                       ; preds = %if.then153
  call void @applySavedTimeInfoToOutputFile(ptr noundef nonnull @outName)
  store i8 0, ptr @deleteOutputOnInterrupt, align 1
  %91 = load i8, ptr @keepInputFiles, align 1
  %tobool157.not = icmp eq i8 %91, 0
  br i1 %tobool157.not, label %if.then158, label %if.end177

if.then158:                                       ; preds = %if.then156
  %call159 = call i32 @remove(ptr noundef nonnull @inName) #13
  %cmp160.not = icmp eq i32 %call159, 0
  br i1 %cmp160.not, label %if.end177, label %if.then162

if.then162:                                       ; preds = %if.then158
  call void @ioError() #15
  unreachable

if.else166:                                       ; preds = %if.end150
  store i8 1, ptr @unzFailsExist, align 1
  store i8 0, ptr @deleteOutputOnInterrupt, align 1
  %92 = load i32, ptr @srcMode, align 4
  %cmp167 = icmp eq i32 %92, 3
  br i1 %cmp167, label %if.then169, label %if.end177

if.then169:                                       ; preds = %if.else166
  %call171 = call i32 @remove(ptr noundef nonnull @outName) #13
  %cmp172.not = icmp eq i32 %call171, 0
  br i1 %cmp172.not, label %if.end177, label %if.then174

if.then174:                                       ; preds = %if.then169
  call void @ioError() #15
  unreachable

if.end177:                                        ; preds = %if.else166, %if.then169, %if.then153, %if.then158, %if.then156
  store i8 0, ptr @deleteOutputOnInterrupt, align 1
  %93 = load i8, ptr %magicNumberOK, align 1
  %tobool178.not = icmp eq i8 %93, 0
  br i1 %tobool178.not, label %if.else185, label %if.then179

if.then179:                                       ; preds = %if.end177
  %94 = load i32, ptr @verbosity, align 4
  %cmp180 = icmp sgt i32 %94, 0
  br i1 %cmp180, label %if.then182, label %if.end193

if.then182:                                       ; preds = %if.then179
  %95 = load ptr, ptr @__stderrp, align 8
  %96 = call i64 @fwrite(ptr nonnull @.str.86, i64 5, i64 1, ptr %95)
  br label %if.end193

if.else185:                                       ; preds = %if.end177
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.addr.i28)
  store i32 2, ptr %v.addr.i28, align 4
  %97 = load i32, ptr @exitValue, align 4
  %cmp.i29 = icmp slt i32 %97, 2
  br i1 %cmp.i29, label %if.then.i30, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_25.exit

if.then.i30:                                      ; preds = %if.else185
  %98 = load i32, ptr %v.addr.i28, align 4
  store i32 %98, ptr @exitValue, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_25.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_25.exit: ; preds = %if.else185, %if.then.i30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.addr.i28)
  %99 = load i32, ptr @verbosity, align 4
  %cmp186 = icmp sgt i32 %99, 0
  br i1 %cmp186, label %if.then188, label %if.else190

if.then188:                                       ; preds = %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_25.exit
  %100 = load ptr, ptr @__stderrp, align 8
  %101 = call i64 @fwrite(ptr nonnull @.str.87, i64 18, i64 1, ptr %100)
  br label %if.end193

if.else190:                                       ; preds = %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_25.exit
  %102 = load ptr, ptr @__stderrp, align 8
  %103 = load ptr, ptr @progName, align 8
  %call191 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %102, ptr noundef nonnull @.str.88, ptr noundef %103, ptr noundef nonnull @inName) #13
  br label %if.end193

if.end193:                                        ; preds = %if.then188, %if.else190, %if.then179, %if.then182, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_24.exit, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_23.exit, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_22.exit, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_21.exit, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_20.exit, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_19.exit, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_18.exit, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_17.exit, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_16.exit, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_15.exit
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @setExit(i32 noundef %v) #0 {
entry:
  %v.addr = alloca i32, align 4
  store i32 %v, ptr %v.addr, align 4
  %0 = load i32, ptr @exitValue, align 4
  %cmp = icmp slt i32 %0, %v
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %v.addr, align 4
  store i32 %1, ptr @exitValue, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @testf(ptr noundef %name) #0 {
entry:
  %v.addr.i10 = alloca i32, align 4
  %v.addr.i7 = alloca i32, align 4
  %v.addr.i4 = alloca i32, align 4
  %v.addr.i1 = alloca i32, align 4
  %v.addr.i = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %inStr = alloca ptr, align 8
  %allOK = alloca i8, align 1
  %statBuf = alloca %struct.stat, align 8
  store ptr %name, ptr %name.addr, align 8
  store i8 0, ptr @deleteOutputOnInterrupt, align 1
  %cmp = icmp ne ptr %name, null
  %0 = load i32, ptr @srcMode, align 4
  %cmp1.not = icmp eq i32 %0, 1
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1.not
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @panic(ptr noundef nonnull @.str.95) #15
  unreachable

if.end:                                           ; preds = %entry
  call void @copyFileName(ptr noundef nonnull @outName, ptr noundef nonnull @.str.6)
  %1 = load i32, ptr @srcMode, align 4
  switch i32 %1, label %sw.epilog [
    i32 1, label %sw.bb
    i32 3, label %sw.bb2
    i32 2, label %sw.bb3
  ]

sw.bb:                                            ; preds = %if.end
  call void @copyFileName(ptr noundef nonnull @inName, ptr noundef nonnull @.str.54)
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  %2 = load ptr, ptr %name.addr, align 8
  call void @copyFileName(ptr noundef nonnull @inName, ptr noundef %2)
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  %3 = load ptr, ptr %name.addr, align 8
  call void @copyFileName(ptr noundef nonnull @inName, ptr noundef %3)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %sw.bb, %if.end
  %4 = load i32, ptr @srcMode, align 4
  %cmp4.not = icmp eq i32 %4, 1
  br i1 %cmp4.not, label %if.end11, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %sw.epilog
  %call = call zeroext i8 @containsDubiousChars(ptr noundef nonnull @inName)
  %tobool.not = icmp eq i8 %call, 0
  br i1 %tobool.not, label %if.end11, label %if.then6

if.then6:                                         ; preds = %land.lhs.true5
  %5 = load i8, ptr @noisy, align 1
  %tobool7.not = icmp eq i8 %5, 0
  br i1 %tobool7.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.then6
  %6 = load ptr, ptr @__stderrp, align 8
  %7 = load ptr, ptr @progName, align 8
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.57, ptr noundef %7, ptr noundef nonnull @inName) #13
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.then6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.addr.i)
  store i32 1, ptr %v.addr.i, align 4
  %8 = load i32, ptr @exitValue, align 4
  %cmp.i = icmp slt i32 %8, 1
  br i1 %cmp.i, label %if.then.i, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_26.exit

if.then.i:                                        ; preds = %if.end10
  %9 = load i32, ptr %v.addr.i, align 4
  store i32 %9, ptr @exitValue, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_26.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_26.exit: ; preds = %if.end10, %if.then.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.addr.i)
  br label %if.end68

if.end11:                                         ; preds = %land.lhs.true5, %sw.epilog
  %10 = load i32, ptr @srcMode, align 4
  %cmp12.not = icmp eq i32 %10, 1
  br i1 %cmp12.not, label %if.end21, label %land.lhs.true14

land.lhs.true14:                                  ; preds = %if.end11
  %call15 = call zeroext i8 @fileExists(ptr noundef nonnull @inName)
  %tobool16.not = icmp eq i8 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %if.end21

if.then17:                                        ; preds = %land.lhs.true14
  %11 = load ptr, ptr @__stderrp, align 8
  %12 = load ptr, ptr @progName, align 8
  %call18 = call ptr @__error() #13
  %13 = load i32, ptr %call18, align 4
  %call19 = call ptr @"\01_strerror"(i32 noundef %13) #13
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.96, ptr noundef %12, ptr noundef nonnull @inName, ptr noundef %call19) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.addr.i1)
  store i32 1, ptr %v.addr.i1, align 4
  %14 = load i32, ptr @exitValue, align 4
  %cmp.i2 = icmp slt i32 %14, 1
  br i1 %cmp.i2, label %if.then.i3, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_27.exit

if.then.i3:                                       ; preds = %if.then17
  %15 = load i32, ptr %v.addr.i1, align 4
  store i32 %15, ptr @exitValue, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_27.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_27.exit: ; preds = %if.then17, %if.then.i3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.addr.i1)
  br label %if.end68

if.end21:                                         ; preds = %land.lhs.true14, %if.end11
  %16 = load i32, ptr @srcMode, align 4
  %cmp22.not = icmp eq i32 %16, 1
  br i1 %cmp22.not, label %if.end32, label %if.then24

if.then24:                                        ; preds = %if.end21
  %call25 = call i32 @"\01_stat"(ptr noundef nonnull @inName, ptr noundef nonnull %statBuf) #13
  %st_mode = getelementptr inbounds %struct.stat, ptr %statBuf, i64 0, i32 1
  %17 = load i16, ptr %st_mode, align 4
  %18 = and i16 %17, -4096
  %cmp27 = icmp eq i16 %18, 16384
  br i1 %cmp27, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.then24
  %19 = load ptr, ptr @__stderrp, align 8
  %20 = load ptr, ptr @progName, align 8
  %call30 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.60, ptr noundef %20, ptr noundef nonnull @inName) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.addr.i4)
  store i32 1, ptr %v.addr.i4, align 4
  %21 = load i32, ptr @exitValue, align 4
  %cmp.i5 = icmp slt i32 %21, 1
  br i1 %cmp.i5, label %if.then.i6, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_28.exit

if.then.i6:                                       ; preds = %if.then29
  %22 = load i32, ptr %v.addr.i4, align 4
  store i32 %22, ptr @exitValue, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_28.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_28.exit: ; preds = %if.then29, %if.then.i6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.addr.i4)
  br label %if.end68

if.end32:                                         ; preds = %if.then24, %if.end21
  %23 = load i32, ptr @srcMode, align 4
  switch i32 %23, label %sw.default [
    i32 1, label %sw.bb33
    i32 2, label %sw.bb41
    i32 3, label %sw.bb41
  ]

sw.bb33:                                          ; preds = %if.end32
  %24 = load ptr, ptr @__stdinp, align 8
  %call34 = call i32 @fileno(ptr noundef %24) #13
  %call35 = call i32 @isatty(i32 noundef %call34) #13
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end40, label %if.then37

if.then37:                                        ; preds = %sw.bb33
  %25 = load ptr, ptr @__stderrp, align 8
  %26 = load ptr, ptr @progName, align 8
  %call38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.83, ptr noundef %26) #13
  %27 = load ptr, ptr @__stderrp, align 8
  %28 = load ptr, ptr @progName, align 8
  %call39 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef nonnull @.str.66, ptr noundef %28, ptr noundef %28) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.addr.i7)
  store i32 1, ptr %v.addr.i7, align 4
  %29 = load i32, ptr @exitValue, align 4
  %cmp.i8 = icmp slt i32 %29, 1
  br i1 %cmp.i8, label %if.then.i9, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_29.exit

if.then.i9:                                       ; preds = %if.then37
  %30 = load i32, ptr %v.addr.i7, align 4
  store i32 %30, ptr @exitValue, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_29.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_29.exit: ; preds = %if.then37, %if.then.i9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.addr.i7)
  br label %if.end68

if.end40:                                         ; preds = %sw.bb33
  %31 = load ptr, ptr @__stdinp, align 8
  store ptr %31, ptr %inStr, align 8
  br label %sw.epilog50

sw.bb41:                                          ; preds = %if.end32, %if.end32
  %call42 = call ptr @"\01_fopen"(ptr noundef nonnull @inName, ptr noundef nonnull @.str.67) #13
  store ptr %call42, ptr %inStr, align 8
  %cmp43 = icmp eq ptr %call42, null
  br i1 %cmp43, label %if.then45, label %sw.epilog50

if.then45:                                        ; preds = %sw.bb41
  %32 = load ptr, ptr @__stderrp, align 8
  %33 = load ptr, ptr @progName, align 8
  %call46 = call ptr @__error() #13
  %34 = load i32, ptr %call46, align 4
  %call47 = call ptr @"\01_strerror"(i32 noundef %34) #13
  %call48 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.84, ptr noundef %33, ptr noundef nonnull @inName, ptr noundef %call47) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.addr.i10)
  store i32 1, ptr %v.addr.i10, align 4
  %35 = load i32, ptr @exitValue, align 4
  %cmp.i11 = icmp slt i32 %35, 1
  br i1 %cmp.i11, label %if.then.i12, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_30.exit

if.then.i12:                                      ; preds = %if.then45
  %36 = load i32, ptr %v.addr.i10, align 4
  store i32 %36, ptr @exitValue, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_30.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_30.exit: ; preds = %if.then45, %if.then.i12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.addr.i10)
  br label %if.end68

sw.default:                                       ; preds = %if.end32
  call void @panic(ptr noundef nonnull @.str.97) #15
  unreachable

sw.epilog50:                                      ; preds = %sw.bb41, %if.end40
  %37 = load i32, ptr @verbosity, align 4
  %cmp51 = icmp sgt i32 %37, 0
  br i1 %cmp51, label %if.then53, label %if.end56

if.then53:                                        ; preds = %sw.epilog50
  %38 = load ptr, ptr @__stderrp, align 8
  %call54 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef nonnull @.str.71, ptr noundef nonnull @inName) #13
  call void @pad(ptr noundef nonnull @inName)
  %39 = load ptr, ptr @__stderrp, align 8
  %call55 = call i32 @fflush(ptr noundef %39) #13
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %sw.epilog50
  store ptr null, ptr @outputHandleJustInCase, align 8
  %40 = load ptr, ptr %inStr, align 8
  %call57 = call zeroext i8 @testStream(ptr noundef %40)
  store i8 %call57, ptr %allOK, align 1
  %tobool59.not = icmp ne i8 %call57, 0
  %41 = load i32, ptr @verbosity, align 4
  %cmp61 = icmp sgt i32 %41, 0
  %or.cond13 = select i1 %tobool59.not, i1 %cmp61, i1 false
  br i1 %or.cond13, label %if.then63, label %if.end65

if.then63:                                        ; preds = %if.end56
  %42 = load ptr, ptr @__stderrp, align 8
  %43 = call i64 @fwrite(ptr nonnull @.str.98, i64 3, i64 1, ptr %42)
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %if.end56
  %44 = load i8, ptr %allOK, align 1
  %tobool66.not = icmp eq i8 %44, 0
  br i1 %tobool66.not, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.end65
  store i8 1, ptr @testFailsExist, align 1
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %if.end65, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_30.exit, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_29.exit, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_28.exit, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_27.exit, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_26.exit
  ret void
}

declare void @free(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @showFileNames() #0 {
entry:
  %0 = load i8, ptr @noisy, align 1
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @__stderrp, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.38, ptr noundef nonnull @inName, ptr noundef nonnull @outName) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noreturn nounwind ssp uwtable
define internal void @cleanUpAndFail(i32 noundef %ec) #3 {
entry:
  %ec.addr = alloca i32, align 4
  %statBuf = alloca %struct.stat, align 8
  store i32 %ec, ptr %ec.addr, align 4
  %0 = load i32, ptr @srcMode, align 4
  %cmp = icmp ne i32 %0, 3
  %1 = load i32, ptr @opMode, align 4
  %cmp1.not = icmp eq i32 %1, 3
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1.not
  %2 = load i8, ptr @deleteOutputOnInterrupt, align 1
  %tobool.not = icmp eq i8 %2, 0
  %or.cond1 = select i1 %or.cond, i1 true, i1 %tobool.not
  br i1 %or.cond1, label %if.end25, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 @"\01_stat"(ptr noundef nonnull @inName, ptr noundef nonnull %statBuf) #13
  %cmp3 = icmp eq i32 %call, 0
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %3 = load i8, ptr @noisy, align 1
  %tobool6.not = icmp eq i8 %3, 0
  br i1 %tobool6.not, label %if.end, label %if.then7

if.then7:                                         ; preds = %if.then5
  %4 = load ptr, ptr @__stderrp, align 8
  %5 = load ptr, ptr @progName, align 8
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.39, ptr noundef %5, ptr noundef nonnull @outName) #13
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then5
  %6 = load ptr, ptr @outputHandleJustInCase, align 8
  %cmp9.not = icmp eq ptr %6, null
  br i1 %cmp9.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.end
  %7 = load ptr, ptr @outputHandleJustInCase, align 8
  %call12 = call i32 @fclose(ptr noundef %7) #13
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end
  %call14 = call i32 @remove(ptr noundef nonnull @outName) #13
  %cmp15.not = icmp eq i32 %call14, 0
  br i1 %cmp15.not, label %if.end25, label %if.then17

if.then17:                                        ; preds = %if.end13
  %8 = load ptr, ptr @__stderrp, align 8
  %9 = load ptr, ptr @progName, align 8
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.40, ptr noundef %9) #13
  br label %if.end25

if.else:                                          ; preds = %if.then
  %10 = load ptr, ptr @__stderrp, align 8
  %11 = load ptr, ptr @progName, align 8
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.41, ptr noundef %11) #13
  %12 = load ptr, ptr @__stderrp, align 8
  %13 = load ptr, ptr @progName, align 8
  %call21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.42, ptr noundef %13) #13
  %14 = load ptr, ptr @__stderrp, align 8
  %15 = load ptr, ptr @progName, align 8
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.43, ptr noundef %15, ptr noundef nonnull @outName) #13
  %16 = load ptr, ptr @__stderrp, align 8
  %17 = load ptr, ptr @progName, align 8
  %call23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.44, ptr noundef %17) #13
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then17, %if.end13, %entry
  %18 = load i8, ptr @noisy, align 1
  %tobool27.not = icmp ne i8 %18, 0
  %19 = load i32, ptr @numFileNames, align 4
  %cmp29 = icmp sgt i32 %19, 0
  %or.cond2 = select i1 %tobool27.not, i1 %cmp29, i1 false
  br i1 %or.cond2, label %land.lhs.true31, label %if.end36

land.lhs.true31:                                  ; preds = %if.end25
  %20 = load i32, ptr @numFilesProcessed, align 4
  %21 = load i32, ptr @numFileNames, align 4
  %cmp32 = icmp slt i32 %20, %21
  br i1 %cmp32, label %if.then34, label %if.end36

if.then34:                                        ; preds = %land.lhs.true31
  %22 = load ptr, ptr @__stderrp, align 8
  %23 = load ptr, ptr @progName, align 8
  %24 = load i32, ptr @numFileNames, align 4
  %25 = load i32, ptr @numFilesProcessed, align 4
  %sub = sub nsw i32 %24, %25
  %call35 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.45, ptr noundef %23, ptr noundef %23, i32 noundef %24, i32 noundef %sub) #13
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %land.lhs.true31, %if.end25
  %26 = load i32, ptr %ec.addr, align 4
  call void @setExit(i32 noundef %26)
  %27 = load i32, ptr @exitValue, align 4
  call void @exit(i32 noundef %27) #14
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define internal void @cadvise() #0 {
entry:
  %0 = load i8, ptr @noisy, align 1
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @__stderrp, align 8
  %2 = call i64 @fwrite(ptr nonnull @.str.46, i64 240, i64 1, ptr %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @"\01_stat"(ptr noundef, ptr noundef) #1

declare i32 @fclose(ptr noundef) #1

declare i32 @remove(ptr noundef) #1

; Function Attrs: nounwind
declare ptr @__strncpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #5

declare ptr @getenv(ptr noundef) #1

; Function Attrs: nounwind readonly willreturn
declare i32 @isspace(i32 noundef) #6

; Function Attrs: nounwind ssp uwtable
define internal ptr @mkCell() #0 {
entry:
  %p.i = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p.i)
  %call.i = call dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17
  store ptr %call.i, ptr %p.i, align 8
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %if.then.i, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_31.exit

if.then.i:                                        ; preds = %entry
  call void @outOfMemory() #15
  unreachable

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_31.exit: ; preds = %entry
  %0 = load ptr, ptr %p.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p.i)
  store ptr null, ptr %0, align 8
  %link = getelementptr inbounds %struct.zzzz, ptr %0, i64 0, i32 1
  store ptr null, ptr %link, align 8
  ret ptr %0
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @myMalloc(i32 noundef %n) #0 {
entry:
  %p = alloca ptr, align 8
  %conv = sext i32 %n to i64
  %call = call ptr @malloc(i64 noundef %conv) #17
  store ptr %call, ptr %p, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @outOfMemory() #15
  unreachable

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %p, align 8
  ret ptr %0
}

; Function Attrs: nounwind
declare ptr @__strcpy_chk(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #7

; Function Attrs: noreturn nounwind ssp uwtable
define internal void @outOfMemory() #3 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr @progName, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.48, ptr noundef %1) #13
  call void @showFileNames()
  call void @cleanUpAndFail(i32 noundef 1) #15
  unreachable
}

declare ptr @BZ2_bzlibVersion() #1

; Function Attrs: noreturn nounwind ssp uwtable
define internal void @panic(ptr noundef %s) #3 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr @progName, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.72, ptr noundef %1, ptr noundef %s) #13
  call void @showFileNames()
  call void @cleanUpAndFail(i32 noundef 3) #15
  unreachable
}

; Function Attrs: nounwind
declare ptr @__strcat_chk(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @containsDubiousChars(ptr noundef %name) #0 {
entry:
  ret i8 0
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @fileExists(ptr noundef %name) #0 {
entry:
  %tmp = alloca ptr, align 8
  %exists = alloca i8, align 1
  %call = call ptr @"\01_fopen"(ptr noundef %name, ptr noundef nonnull @.str.67) #13
  store ptr %call, ptr %tmp, align 8
  %cmp = icmp ne ptr %call, null
  %conv1 = zext i1 %cmp to i8
  store i8 %conv1, ptr %exists, align 1
  %cmp2.not = icmp eq ptr %call, null
  br i1 %cmp2.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %tmp, align 8
  %call4 = call i32 @fclose(ptr noundef %0) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8, ptr %exists, align 1
  ret i8 %1
}

declare ptr @"\01_strerror"(i32 noundef) #1

declare ptr @__error() #1

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @hasSuffix(ptr noundef %s, ptr noundef %suffix) #0 {
entry:
  %retval = alloca i8, align 1
  %s.addr = alloca ptr, align 8
  %suffix.addr = alloca ptr, align 8
  %ns = alloca i32, align 4
  %nx = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store ptr %suffix, ptr %suffix.addr, align 8
  %call = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %s) #13
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %ns, align 4
  %call1 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %suffix) #13
  %conv2 = trunc i64 %call1 to i32
  store i32 %conv2, ptr %nx, align 4
  %cmp = icmp slt i32 %conv, %conv2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 0, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %s.addr, align 8
  %1 = load i32, ptr %ns, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %idx.ext
  %2 = load i32, ptr %nx, align 4
  %idx.ext4 = sext i32 %2 to i64
  %idx.neg = sub nsw i64 0, %idx.ext4
  %add.ptr5 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.neg
  %3 = load ptr, ptr %suffix.addr, align 8
  %call6 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %add.ptr5, ptr noundef nonnull dereferenceable(1) %3) #13
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  store i8 1, ptr %retval, align 1
  br label %return

if.end10:                                         ; preds = %if.end
  store i8 0, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end10, %if.then9, %if.then
  %4 = load i8, ptr %retval, align 1
  ret i8 %4
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @notAStandardFile(ptr noundef %name) #0 {
entry:
  %retval = alloca i8, align 1
  %statBuf = alloca %struct.stat, align 8
  %call = call i32 @"\01_lstat"(ptr noundef %name, ptr noundef nonnull %statBuf) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 1, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %st_mode = getelementptr inbounds %struct.stat, ptr %statBuf, i64 0, i32 1
  %0 = load i16, ptr %st_mode, align 4
  %1 = and i16 %0, -4096
  %cmp1 = icmp eq i16 %1, -32768
  br i1 %cmp1, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i8 0, ptr %retval, align 1
  br label %return

if.end4:                                          ; preds = %if.end
  store i8 1, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %2 = load i8, ptr %retval, align 1
  ret i8 %2
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @countHardLinks(ptr noundef %name) #0 {
entry:
  %statBuf = alloca %struct.stat, align 8
  %call = call i32 @"\01_lstat"(ptr noundef %name, ptr noundef nonnull %statBuf) #13
  %cmp.not = icmp eq i32 %call, 0
  %st_nlink = getelementptr inbounds %struct.stat, ptr %statBuf, i64 0, i32 2
  %0 = load i16, ptr %st_nlink, align 2
  %conv = zext i16 %0 to i32
  %sub = add nsw i32 %conv, -1
  %storemerge = select i1 %cmp.not, i32 %sub, i32 0
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal void @saveInputFileMetaInfo(ptr noundef %srcName) #0 {
entry:
  %call = call i32 @"\01_stat"(ptr noundef %srcName, ptr noundef nonnull @fileMetaInfo) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @ioError() #15
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

declare i32 @isatty(i32 noundef) #1

declare i32 @fileno(ptr noundef) #1

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal ptr @fopen_output_safely(ptr noundef %name, ptr noundef %mode) #0 {
entry:
  %mode.addr = alloca ptr, align 8
  %fp = alloca ptr, align 8
  %fh = alloca i32, align 4
  store ptr %mode, ptr %mode.addr, align 8
  %call = call i32 (ptr, i32, ...) @"\01_open"(ptr noundef %name, i32 noundef 2561, i32 noundef 384) #13
  store i32 %call, ptr %fh, align 4
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %fh, align 4
  %1 = load ptr, ptr %mode.addr, align 8
  %call1 = call ptr @"\01_fdopen"(i32 noundef %0, ptr noundef %1) #13
  store ptr %call1, ptr %fp, align 8
  %cmp2 = icmp eq ptr %call1, null
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %2 = load i32, ptr %fh, align 4
  %call4 = call i32 @"\01_close"(i32 noundef %2) #13
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %3 = load ptr, ptr %fp, align 8
  br label %return

return:                                           ; preds = %entry, %if.end5
  %storemerge = phi ptr [ %3, %if.end5 ], [ null, %entry ]
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal void @pad(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  %call = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %s) #13
  %conv = trunc i64 %call to i32
  %0 = load i32, ptr @longestFileName, align 4
  %cmp.not = icmp sgt i32 %0, %conv
  br i1 %cmp.not, label %for.cond, label %for.end

for.cond:                                         ; preds = %entry, %for.body
  %storemerge = phi i32 [ %inc, %for.body ], [ 1, %entry ]
  store i32 %storemerge, ptr %i, align 4
  %1 = load i32, ptr @longestFileName, align 4
  %2 = load ptr, ptr %s.addr, align 8
  %call2 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #13
  %conv3 = trunc i64 %call2 to i32
  %sub = sub nsw i32 %1, %conv3
  %cmp4.not = icmp sgt i32 %storemerge, %sub
  br i1 %cmp4.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr @__stderrp, align 8
  %fputc = call i32 @fputc(i32 32, ptr %3)
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  br label %for.cond, !llvm.loop !23

for.end:                                          ; preds = %entry, %for.cond
  ret void
}

declare i32 @fflush(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @compressStream(ptr noundef %stream, ptr noundef %zStream) #0 {
entry:
  %stream.addr = alloca ptr, align 8
  %zStream.addr = alloca ptr, align 8
  %bzf = alloca ptr, align 8
  %ibuf = alloca [5000 x i8], align 1
  %nIbuf = alloca i32, align 4
  %nbytes_in_lo32 = alloca i32, align 4
  %nbytes_in_hi32 = alloca i32, align 4
  %nbytes_out_lo32 = alloca i32, align 4
  %nbytes_out_hi32 = alloca i32, align 4
  %bzerr = alloca i32, align 4
  %bzerr_dummy = alloca i32, align 4
  %fd = alloca i32, align 4
  %buf_nin = alloca [32 x i8], align 1
  %buf_nout = alloca [32 x i8], align 1
  %nbytes_in = alloca %struct.UInt64, align 1
  %nbytes_out = alloca %struct.UInt64, align 1
  %nbytes_in_d = alloca double, align 8
  %nbytes_out_d = alloca double, align 8
  store ptr %stream, ptr %stream.addr, align 8
  store ptr %zStream, ptr %zStream.addr, align 8
  store ptr null, ptr %bzf, align 8
  %call = call i32 @ferror(ptr noundef %stream) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %errhandler_io

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %zStream.addr, align 8
  %call1 = call i32 @ferror(ptr noundef %0) #13
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %errhandler_io

if.end4:                                          ; preds = %if.end
  %1 = load ptr, ptr %zStream.addr, align 8
  %2 = load i32, ptr @blockSize100k, align 4
  %3 = load i32, ptr @verbosity, align 4
  %4 = load i32, ptr @workFactor, align 4
  %call5 = call ptr @BZ2_bzWriteOpen(ptr noundef nonnull %bzerr, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #13
  store ptr %call5, ptr %bzf, align 8
  %5 = load i32, ptr %bzerr, align 4
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end7, label %errhandler

if.end7:                                          ; preds = %if.end4
  %6 = load i32, ptr @verbosity, align 4
  %cmp8 = icmp sgt i32 %6, 1
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end7
  %7 = load ptr, ptr @__stderrp, align 8
  %fputc = call i32 @fputc(i32 10, ptr %7)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7
  br label %while.body

while.body:                                       ; preds = %if.end25, %if.end11
  %8 = load ptr, ptr %stream.addr, align 8
  %call12 = call zeroext i8 @myfeof(ptr noundef %8)
  %tobool13.not = icmp eq i8 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %while.end

if.end15:                                         ; preds = %while.body
  %9 = load ptr, ptr %stream.addr, align 8
  %call16 = call i64 @fread(ptr noundef nonnull %ibuf, i64 noundef 1, i64 noundef 5000, ptr noundef %9) #13
  %conv = trunc i64 %call16 to i32
  store i32 %conv, ptr %nIbuf, align 4
  %call17 = call i32 @ferror(ptr noundef %9) #13
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %errhandler_io

if.end20:                                         ; preds = %if.end15
  %10 = load i32, ptr %nIbuf, align 4
  %cmp21 = icmp sgt i32 %10, 0
  br i1 %cmp21, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end20
  %11 = load ptr, ptr %bzf, align 8
  %12 = load i32, ptr %nIbuf, align 4
  call void @BZ2_bzWrite(ptr noundef nonnull %bzerr, ptr noundef %11, ptr noundef nonnull %ibuf, i32 noundef %12) #13
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end20
  %13 = load i32, ptr %bzerr, align 4
  %cmp26.not = icmp eq i32 %13, 0
  br i1 %cmp26.not, label %while.body, label %errhandler

while.end:                                        ; preds = %while.body
  %14 = load ptr, ptr %bzf, align 8
  call void @BZ2_bzWriteClose64(ptr noundef nonnull %bzerr, ptr noundef %14, i32 noundef 0, ptr noundef nonnull %nbytes_in_lo32, ptr noundef nonnull %nbytes_in_hi32, ptr noundef nonnull %nbytes_out_lo32, ptr noundef nonnull %nbytes_out_hi32) #13
  %15 = load i32, ptr %bzerr, align 4
  %cmp30.not = icmp eq i32 %15, 0
  br i1 %cmp30.not, label %if.end33, label %errhandler

if.end33:                                         ; preds = %while.end
  %16 = load ptr, ptr %zStream.addr, align 8
  %call34 = call i32 @ferror(ptr noundef %16) #13
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %errhandler_io

if.end37:                                         ; preds = %if.end33
  %17 = load ptr, ptr %zStream.addr, align 8
  %call38 = call i32 @fflush(ptr noundef %17) #13
  %cmp39 = icmp eq i32 %call38, -1
  br i1 %cmp39, label %errhandler_io, label %if.end42

if.end42:                                         ; preds = %if.end37
  %18 = load ptr, ptr %zStream.addr, align 8
  %19 = load ptr, ptr @__stdoutp, align 8
  %cmp43.not = icmp eq ptr %18, %19
  br i1 %cmp43.not, label %if.end56, label %if.then45

if.then45:                                        ; preds = %if.end42
  %20 = load ptr, ptr %zStream.addr, align 8
  %call46 = call i32 @fileno(ptr noundef %20) #13
  store i32 %call46, ptr %fd, align 4
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %errhandler_io, label %if.end50

if.end50:                                         ; preds = %if.then45
  %21 = load i32, ptr %fd, align 4
  call void @applySavedFileAttrToOutputFile(i32 noundef %21)
  %22 = load ptr, ptr %zStream.addr, align 8
  %call51 = call i32 @fclose(ptr noundef %22) #13
  store ptr null, ptr @outputHandleJustInCase, align 8
  %cmp52 = icmp eq i32 %call51, -1
  br i1 %cmp52, label %errhandler_io, label %if.end56

if.end56:                                         ; preds = %if.end50, %if.end42
  store ptr null, ptr @outputHandleJustInCase, align 8
  %23 = load ptr, ptr %stream.addr, align 8
  %call57 = call i32 @ferror(ptr noundef %23) #13
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %errhandler_io

if.end60:                                         ; preds = %if.end56
  %24 = load ptr, ptr %stream.addr, align 8
  %call61 = call i32 @fclose(ptr noundef %24) #13
  %cmp62 = icmp eq i32 %call61, -1
  br i1 %cmp62, label %errhandler_io, label %if.end65

if.end65:                                         ; preds = %if.end60
  %25 = load i32, ptr @verbosity, align 4
  %cmp66 = icmp sgt i32 %25, 0
  br i1 %cmp66, label %if.then68, label %if.end86

if.then68:                                        ; preds = %if.end65
  %26 = load i32, ptr %nbytes_in_lo32, align 4
  %cmp69 = icmp eq i32 %26, 0
  %27 = load i32, ptr %nbytes_in_hi32, align 4
  %cmp71 = icmp eq i32 %27, 0
  %or.cond = select i1 %cmp69, i1 %cmp71, i1 false
  br i1 %or.cond, label %if.then73, label %if.else

if.then73:                                        ; preds = %if.then68
  %28 = load ptr, ptr @__stderrp, align 8
  %29 = call i64 @fwrite(ptr nonnull @.str.75, i64 21, i64 1, ptr %28)
  br label %if.end86

if.else:                                          ; preds = %if.then68
  %30 = load i32, ptr %nbytes_in_lo32, align 4
  %31 = load i32, ptr %nbytes_in_hi32, align 4
  call void @uInt64_from_UInt32s(ptr noundef nonnull %nbytes_in, i32 noundef %30, i32 noundef %31)
  %32 = load i32, ptr %nbytes_out_lo32, align 4
  %33 = load i32, ptr %nbytes_out_hi32, align 4
  call void @uInt64_from_UInt32s(ptr noundef nonnull %nbytes_out, i32 noundef %32, i32 noundef %33)
  %call75 = call double @uInt64_to_double(ptr noundef nonnull %nbytes_in)
  store double %call75, ptr %nbytes_in_d, align 8
  %call76 = call double @uInt64_to_double(ptr noundef nonnull %nbytes_out)
  store double %call76, ptr %nbytes_out_d, align 8
  call void @uInt64_toAscii(ptr noundef nonnull %buf_nin, ptr noundef nonnull %nbytes_in)
  call void @uInt64_toAscii(ptr noundef nonnull %buf_nout, ptr noundef nonnull %nbytes_out)
  %34 = load ptr, ptr @__stderrp, align 8
  %div = fdiv double %call75, %call76
  %mul = fmul double %call76, 8.000000e+00
  %35 = load double, ptr %nbytes_in_d, align 8
  %div79 = fdiv double %mul, %35
  %36 = load double, ptr %nbytes_out_d, align 8
  %div80 = fdiv double %36, %35
  %sub = fsub double 1.000000e+00, %div80
  %mul81 = fmul double %sub, 1.000000e+02
  %call84 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef nonnull @.str.76, double noundef %div, double noundef %div79, double noundef %mul81, ptr noundef nonnull %buf_nin, ptr noundef nonnull %buf_nout) #13
  br label %if.end86

if.end86:                                         ; preds = %if.then73, %if.else, %if.end65
  ret void

errhandler:                                       ; preds = %while.end, %if.end25, %if.end4
  %37 = load ptr, ptr %bzf, align 8
  call void @BZ2_bzWriteClose64(ptr noundef nonnull %bzerr_dummy, ptr noundef %37, i32 noundef 1, ptr noundef nonnull %nbytes_in_lo32, ptr noundef nonnull %nbytes_in_hi32, ptr noundef nonnull %nbytes_out_lo32, ptr noundef nonnull %nbytes_out_hi32) #13
  %38 = load i32, ptr %bzerr, align 4
  switch i32 %38, label %sw.default [
    i32 -9, label %sw.bb
    i32 -3, label %sw.bb87
    i32 -6, label %errhandler_io
  ]

sw.bb:                                            ; preds = %errhandler
  call void @configError() #15
  unreachable

sw.bb87:                                          ; preds = %errhandler
  call void @outOfMemory() #15
  unreachable

errhandler_io:                                    ; preds = %errhandler, %if.end60, %if.end56, %if.end50, %if.then45, %if.end37, %if.end33, %if.end15, %if.end, %entry
  call void @ioError() #15
  unreachable

sw.default:                                       ; preds = %errhandler
  call void @panic(ptr noundef nonnull @.str.77) #15
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define internal void @applySavedTimeInfoToOutputFile(ptr noundef %dstName) #0 {
entry:
  %uTimBuf = alloca %struct.utimbuf, align 8
  %0 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @fileMetaInfo, i64 0, i32 7), align 8
  store i64 %0, ptr %uTimBuf, align 8
  %1 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @fileMetaInfo, i64 0, i32 8), align 8
  %modtime = getelementptr inbounds %struct.utimbuf, ptr %uTimBuf, i64 0, i32 1
  store i64 %1, ptr %modtime, align 8
  %call = call i32 @utime(ptr noundef %dstName, ptr noundef nonnull %uTimBuf) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @ioError() #15
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: noreturn nounwind ssp uwtable
define internal void @ioError() #3 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr @progName, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.79, ptr noundef %1) #13
  %2 = load ptr, ptr @progName, align 8
  call void @perror(ptr noundef %2) #18
  call void @showFileNames()
  call void @cleanUpAndFail(i32 noundef 1) #15
  unreachable
}

declare i32 @"\01_lstat"(ptr noundef, ptr noundef) #1

declare i32 @"\01_open"(ptr noundef, i32 noundef, ...) #1

declare ptr @"\01_fdopen"(i32 noundef, ptr noundef) #1

declare i32 @"\01_close"(i32 noundef) #1

declare i32 @ferror(ptr noundef) #1

declare ptr @BZ2_bzWriteOpen(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @myfeof(ptr noundef %f) #0 {
entry:
  %f.addr = alloca ptr, align 8
  %c = alloca i32, align 4
  store ptr %f, ptr %f.addr, align 8
  %call = call i32 @fgetc(ptr noundef %f) #13
  store i32 %call, ptr %c, align 4
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %c, align 4
  %1 = load ptr, ptr %f.addr, align 8
  %call1 = call i32 @ungetc(i32 noundef %0, ptr noundef %1) #13
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i8 [ 0, %if.end ], [ 1, %entry ]
  ret i8 %storemerge
}

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

declare void @BZ2_bzWrite(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @BZ2_bzWriteClose64(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @applySavedFileAttrToOutputFile(i32 noundef %fd) #0 {
entry:
  %fd.addr = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4
  %0 = load i16, ptr getelementptr inbounds (%struct.stat, ptr @fileMetaInfo, i64 0, i32 1), align 4
  %call = call i32 @"\01_fchmod"(i32 noundef %fd, i16 noundef zeroext %0) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @ioError() #15
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %fd.addr, align 4
  %2 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @fileMetaInfo, i64 0, i32 4), align 8
  %3 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @fileMetaInfo, i64 0, i32 5), align 4
  %call1 = call i32 @fchown(i32 noundef %1, i32 noundef %2, i32 noundef %3) #13
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @uInt64_from_UInt32s(ptr noundef %n, i32 noundef %lo32, i32 noundef %hi32) #0 {
entry:
  %n.addr = alloca ptr, align 8
  %lo32.addr = alloca i32, align 4
  %hi32.addr = alloca i32, align 4
  store ptr %n, ptr %n.addr, align 8
  store i32 %lo32, ptr %lo32.addr, align 4
  store i32 %hi32, ptr %hi32.addr, align 4
  %shr = lshr i32 %hi32, 24
  %conv = trunc i32 %shr to i8
  %arrayidx = getelementptr inbounds [8 x i8], ptr %n, i64 0, i64 7
  store i8 %conv, ptr %arrayidx, align 1
  %shr1 = lshr i32 %hi32, 16
  %conv3 = trunc i32 %shr1 to i8
  %0 = load ptr, ptr %n.addr, align 8
  %arrayidx5 = getelementptr inbounds [8 x i8], ptr %0, i64 0, i64 6
  store i8 %conv3, ptr %arrayidx5, align 1
  %1 = load i32, ptr %hi32.addr, align 4
  %shr6 = lshr i32 %1, 8
  %conv8 = trunc i32 %shr6 to i8
  %arrayidx10 = getelementptr inbounds [8 x i8], ptr %0, i64 0, i64 5
  store i8 %conv8, ptr %arrayidx10, align 1
  %conv12 = trunc i32 %1 to i8
  %2 = load ptr, ptr %n.addr, align 8
  %arrayidx14 = getelementptr inbounds [8 x i8], ptr %2, i64 0, i64 4
  store i8 %conv12, ptr %arrayidx14, align 1
  %3 = load i32, ptr %lo32.addr, align 4
  %shr15 = lshr i32 %3, 24
  %conv17 = trunc i32 %shr15 to i8
  %arrayidx19 = getelementptr inbounds [8 x i8], ptr %2, i64 0, i64 3
  store i8 %conv17, ptr %arrayidx19, align 1
  %shr20 = lshr i32 %3, 16
  %conv22 = trunc i32 %shr20 to i8
  %4 = load ptr, ptr %n.addr, align 8
  %arrayidx24 = getelementptr inbounds [8 x i8], ptr %4, i64 0, i64 2
  store i8 %conv22, ptr %arrayidx24, align 1
  %5 = load i32, ptr %lo32.addr, align 4
  %shr25 = lshr i32 %5, 8
  %conv27 = trunc i32 %shr25 to i8
  %arrayidx29 = getelementptr inbounds [8 x i8], ptr %4, i64 0, i64 1
  store i8 %conv27, ptr %arrayidx29, align 1
  %conv31 = trunc i32 %5 to i8
  %6 = load ptr, ptr %n.addr, align 8
  store i8 %conv31, ptr %6, align 1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal double @uInt64_to_double(ptr noundef %n) #0 {
entry:
  %n.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %base = alloca double, align 8
  %sum = alloca double, align 8
  store ptr %n, ptr %n.addr, align 8
  store double 1.000000e+00, ptr %base, align 8
  store double 0.000000e+00, ptr %sum, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %cmp = icmp slt i32 %storemerge, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load double, ptr %base, align 8
  %1 = load ptr, ptr %n.addr, align 8
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i8], ptr %1, i64 0, i64 %idxprom
  %3 = load i8, ptr %arrayidx, align 1
  %conv = uitofp i8 %3 to double
  %4 = load double, ptr %sum, align 8
  %5 = call double @llvm.fmuladd.f64(double %0, double %conv, double %4)
  store double %5, ptr %sum, align 8
  %6 = load double, ptr %base, align 8
  %mul = fmul double %6, 2.560000e+02
  store double %mul, ptr %base, align 8
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  br label %for.cond, !llvm.loop !24

for.end:                                          ; preds = %for.cond
  %8 = load double, ptr %sum, align 8
  ret double %8
}

; Function Attrs: nounwind ssp uwtable
define internal void @uInt64_toAscii(ptr noundef %outbuf, ptr noundef %n) #0 {
entry:
  %outbuf.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %buf = alloca [32 x i8], align 1
  %nBuf = alloca i32, align 4
  %n_copy = alloca %struct.UInt64, align 8
  store ptr %outbuf, ptr %outbuf.addr, align 8
  store i32 0, ptr %nBuf, align 4
  %0 = load i64, ptr %n, align 1
  store i64 %0, ptr %n_copy, align 8
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %call = call i32 @uInt64_qrm10(ptr noundef nonnull %n_copy)
  %1 = trunc i32 %call to i8
  %conv = add i8 %1, 48
  %2 = load i32, ptr %nBuf, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [32 x i8], ptr %buf, i64 0, i64 %idxprom
  store i8 %conv, ptr %arrayidx, align 1
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %nBuf, align 4
  %call1 = call zeroext i8 @uInt64_isZero(ptr noundef nonnull %n_copy)
  %tobool.not = icmp eq i8 %call1, 0
  br i1 %tobool.not, label %do.body, label %do.end, !llvm.loop !25

do.end:                                           ; preds = %do.body
  %3 = load ptr, ptr %outbuf.addr, align 8
  %4 = load i32, ptr %nBuf, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds i8, ptr %3, i64 %idxprom2
  store i8 0, ptr %arrayidx3, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.body, %do.end
  %storemerge = phi i32 [ 0, %do.end ], [ %inc10, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %5 = load i32, ptr %nBuf, align 4
  %cmp = icmp slt i32 %storemerge, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %nBuf, align 4
  %7 = load i32, ptr %i, align 4
  %8 = xor i32 %7, -1
  %sub5 = add i32 %6, %8
  %idxprom6 = sext i32 %sub5 to i64
  %arrayidx7 = getelementptr inbounds [32 x i8], ptr %buf, i64 0, i64 %idxprom6
  %9 = load i8, ptr %arrayidx7, align 1
  %10 = load ptr, ptr %outbuf.addr, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom8 = sext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds i8, ptr %10, i64 %idxprom8
  store i8 %9, ptr %arrayidx9, align 1
  %12 = load i32, ptr %i, align 4
  %inc10 = add nsw i32 %12, 1
  br label %for.cond, !llvm.loop !26

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noreturn nounwind ssp uwtable
define internal void @configError() #3 {
entry:
  %v.addr.i = alloca i32, align 4
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = call i64 @fwrite(ptr nonnull @.str.78, i64 235, i64 1, ptr %0)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.addr.i)
  store i32 3, ptr %v.addr.i, align 4
  %2 = load i32, ptr @exitValue, align 4
  %cmp.i = icmp slt i32 %2, 3
  br i1 %cmp.i, label %if.then.i, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_32.exit

if.then.i:                                        ; preds = %entry
  %3 = load i32, ptr %v.addr.i, align 4
  store i32 %3, ptr @exitValue, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_32.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_32.exit: ; preds = %entry, %if.then.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.addr.i)
  %4 = load i32, ptr @exitValue, align 4
  call void @exit(i32 noundef %4) #14
  unreachable
}

declare i32 @fgetc(ptr noundef) #1

declare i32 @ungetc(i32 noundef, ptr noundef) #1

declare i32 @"\01_fchmod"(i32 noundef, i16 noundef zeroext) #1

declare i32 @fchown(i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nounwind ssp uwtable
define internal i32 @uInt64_qrm10(ptr noundef %n) #0 {
entry:
  %n.addr = alloca ptr, align 8
  %rem = alloca i32, align 4
  %tmp = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %n, ptr %n.addr, align 8
  store i32 0, ptr %rem, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 7, %entry ], [ %dec, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %cmp = icmp sgt i32 %storemerge, -1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load i32, ptr %rem, align 4
  %mul = shl i32 %0, 8
  %1 = load ptr, ptr %n.addr, align 8
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i8], ptr %1, i64 0, i64 %idxprom
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %add = or i32 %mul, %conv
  store i32 %add, ptr %tmp, align 4
  %div = udiv i32 %add, 10
  %conv1 = trunc i32 %div to i8
  %4 = load ptr, ptr %n.addr, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [8 x i8], ptr %4, i64 0, i64 %idxprom3
  store i8 %conv1, ptr %arrayidx4, align 1
  %6 = load i32, ptr %tmp, align 4
  %rem5 = urem i32 %6, 10
  store i32 %rem5, ptr %rem, align 4
  %7 = load i32, ptr %i, align 4
  %dec = add nsw i32 %7, -1
  br label %for.cond, !llvm.loop !27

for.end:                                          ; preds = %for.cond
  %8 = load i32, ptr %rem, align 4
  ret i32 %8
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @uInt64_isZero(ptr noundef %n) #0 {
entry:
  %n.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %n, ptr %n.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr %i, align 4
  %cmp = icmp slt i32 %storemerge, 8
  br i1 %cmp, label %for.body, label %return

for.body:                                         ; preds = %for.cond
  %0 = load ptr, ptr %n.addr, align 8
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i8], ptr %0, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1
  %cmp1.not = icmp eq i8 %2, 0
  br i1 %cmp1.not, label %for.inc, label %return

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  br label %for.cond, !llvm.loop !28

return:                                           ; preds = %for.cond, %for.body
  %storemerge1 = phi i8 [ 0, %for.body ], [ 1, %for.cond ]
  ret i8 %storemerge1
}

declare i32 @utime(ptr noundef, ptr noundef) #1

; Function Attrs: cold
declare void @perror(ptr noundef) #9

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @mapSuffix(ptr noundef %name, ptr noundef %oldSuffix, ptr noundef %newSuffix) #0 {
entry:
  %name.addr = alloca ptr, align 8
  %oldSuffix.addr = alloca ptr, align 8
  %newSuffix.addr = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  store ptr %oldSuffix, ptr %oldSuffix.addr, align 8
  store ptr %newSuffix, ptr %newSuffix.addr, align 8
  %call = call zeroext i8 @hasSuffix(ptr noundef %name, ptr noundef %oldSuffix)
  %tobool.not = icmp eq i8 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %name.addr, align 8
  %call1 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  %1 = load ptr, ptr %oldSuffix.addr, align 8
  %call2 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13
  %sub = sub i64 %call1, %call2
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %sub
  store i8 0, ptr %arrayidx, align 1
  %2 = load ptr, ptr %name.addr, align 8
  %3 = load ptr, ptr %newSuffix.addr, align 8
  %4 = call i64 @llvm.objectsize.i64.p0(ptr %2, i1 false, i1 true, i1 false)
  %call3 = call ptr @__strcat_chk(ptr noundef %2, ptr noundef %3, i64 noundef %4) #13
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i8 [ 1, %if.end ], [ 0, %entry ]
  ret i8 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @uncompressStream(ptr noundef %zStream, ptr noundef %stream) #0 {
entry:
  %retval = alloca i8, align 1
  %zStream.addr = alloca ptr, align 8
  %stream.addr = alloca ptr, align 8
  %bzf = alloca ptr, align 8
  %bzerr = alloca i32, align 4
  %bzerr_dummy = alloca i32, align 4
  %nread = alloca i32, align 4
  %streamNo = alloca i32, align 4
  %i = alloca i32, align 4
  %obuf = alloca [5000 x i8], align 1
  %unused = alloca [5000 x i8], align 1
  %nUnused = alloca i32, align 4
  %unusedTmpV = alloca ptr, align 8
  %unusedTmp = alloca ptr, align 8
  %fd = alloca i32, align 4
  store ptr %zStream, ptr %zStream.addr, align 8
  store ptr %stream, ptr %stream.addr, align 8
  store ptr null, ptr %bzf, align 8
  store i32 0, ptr %nUnused, align 4
  store i32 0, ptr %streamNo, align 4
  %call = call i32 @ferror(ptr noundef %stream) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %errhandler_io

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %zStream.addr, align 8
  %call1 = call i32 @ferror(ptr noundef %0) #13
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %while.body, label %errhandler_io

while.body:                                       ; preds = %if.end, %if.end61
  %1 = load ptr, ptr %zStream.addr, align 8
  %2 = load i32, ptr @verbosity, align 4
  %3 = load i8, ptr @smallMode, align 1
  %conv = zext i8 %3 to i32
  %4 = load i32, ptr %nUnused, align 4
  %call5 = call ptr @BZ2_bzReadOpen(ptr noundef nonnull %bzerr, ptr noundef %1, i32 noundef %2, i32 noundef %conv, ptr noundef nonnull %unused, i32 noundef %4) #13
  store ptr %call5, ptr %bzf, align 8
  %cmp = icmp ne ptr %call5, null
  %5 = load i32, ptr %bzerr, align 4
  %cmp7.not = icmp eq i32 %5, 0
  %or.cond = select i1 %cmp, i1 %cmp7.not, i1 false
  br i1 %or.cond, label %if.end10, label %errhandler

if.end10:                                         ; preds = %while.body
  %6 = load i32, ptr %streamNo, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %streamNo, align 4
  br label %while.cond11

while.cond11:                                     ; preds = %if.end32, %if.end10
  %7 = load i32, ptr %bzerr, align 4
  %cmp12 = icmp eq i32 %7, 0
  br i1 %cmp12, label %while.body14, label %while.end

while.body14:                                     ; preds = %while.cond11
  %8 = load ptr, ptr %bzf, align 8
  %call16 = call i32 @BZ2_bzRead(ptr noundef nonnull %bzerr, ptr noundef %8, ptr noundef nonnull %obuf, i32 noundef 5000) #13
  store i32 %call16, ptr %nread, align 4
  %9 = load i32, ptr %bzerr, align 4
  %cmp17 = icmp eq i32 %9, -5
  br i1 %cmp17, label %trycat, label %if.end20

if.end20:                                         ; preds = %while.body14
  %10 = load i32, ptr %bzerr, align 4
  %cmp21 = icmp eq i32 %10, 0
  %11 = load i32, ptr %bzerr, align 4
  %cmp24 = icmp eq i32 %11, 4
  %or.cond1 = select i1 %cmp21, i1 true, i1 %cmp24
  %12 = load i32, ptr %nread, align 4
  %cmp26 = icmp sgt i32 %12, 0
  %or.cond2 = select i1 %or.cond1, i1 %cmp26, i1 false
  br i1 %or.cond2, label %if.then28, label %if.end32

if.then28:                                        ; preds = %if.end20
  %13 = load i32, ptr %nread, align 4
  %conv30 = sext i32 %13 to i64
  %14 = load ptr, ptr %stream.addr, align 8
  %call31 = call i64 @"\01_fwrite"(ptr noundef nonnull %obuf, i64 noundef 1, i64 noundef %conv30, ptr noundef %14) #13
  br label %if.end32

if.end32:                                         ; preds = %if.end20, %if.then28
  %15 = load ptr, ptr %stream.addr, align 8
  %call33 = call i32 @ferror(ptr noundef %15) #13
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %while.cond11, label %errhandler_io, !llvm.loop !29

while.end:                                        ; preds = %while.cond11
  %16 = load i32, ptr %bzerr, align 4
  %cmp37.not = icmp eq i32 %16, 4
  br i1 %cmp37.not, label %if.end40, label %errhandler

if.end40:                                         ; preds = %while.end
  %17 = load ptr, ptr %bzf, align 8
  call void @BZ2_bzReadGetUnused(ptr noundef nonnull %bzerr, ptr noundef %17, ptr noundef nonnull %unusedTmpV, ptr noundef nonnull %nUnused) #13
  %18 = load i32, ptr %bzerr, align 4
  %cmp41.not = icmp eq i32 %18, 0
  br i1 %cmp41.not, label %if.end44, label %if.then43

if.then43:                                        ; preds = %if.end40
  call void @panic(ptr noundef nonnull @.str.89) #15
  unreachable

if.end44:                                         ; preds = %if.end40
  %19 = load ptr, ptr %unusedTmpV, align 8
  store ptr %19, ptr %unusedTmp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end44
  %storemerge = phi i32 [ 0, %if.end44 ], [ %inc49, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %20 = load i32, ptr %nUnused, align 4
  %cmp45 = icmp slt i32 %storemerge, %20
  br i1 %cmp45, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load ptr, ptr %unusedTmp, align 8
  %22 = load i32, ptr %i, align 4
  %idxprom = sext i32 %22 to i64
  %arrayidx = getelementptr inbounds i8, ptr %21, i64 %idxprom
  %23 = load i8, ptr %arrayidx, align 1
  %idxprom47 = sext i32 %22 to i64
  %arrayidx48 = getelementptr inbounds [5000 x i8], ptr %unused, i64 0, i64 %idxprom47
  store i8 %23, ptr %arrayidx48, align 1
  %24 = load i32, ptr %i, align 4
  %inc49 = add nsw i32 %24, 1
  br label %for.cond, !llvm.loop !30

for.end:                                          ; preds = %for.cond
  %25 = load ptr, ptr %bzf, align 8
  call void @BZ2_bzReadClose(ptr noundef nonnull %bzerr, ptr noundef %25) #13
  %26 = load i32, ptr %bzerr, align 4
  %cmp50.not = icmp eq i32 %26, 0
  br i1 %cmp50.not, label %if.end53, label %if.then52

if.then52:                                        ; preds = %for.end
  call void @panic(ptr noundef nonnull @.str.89) #15
  unreachable

if.end53:                                         ; preds = %for.end
  %27 = load i32, ptr %nUnused, align 4
  %cmp54 = icmp eq i32 %27, 0
  br i1 %cmp54, label %land.lhs.true56, label %if.end61

land.lhs.true56:                                  ; preds = %if.end53
  %28 = load ptr, ptr %zStream.addr, align 8
  %call57 = call zeroext i8 @myfeof(ptr noundef %28)
  %tobool59.not = icmp eq i8 %call57, 0
  br i1 %tobool59.not, label %if.end61, label %closeok

if.end61:                                         ; preds = %land.lhs.true56, %if.end53
  br label %while.body

closeok:                                          ; preds = %while.body106, %land.lhs.true56
  %29 = load ptr, ptr %zStream.addr, align 8
  %call63 = call i32 @ferror(ptr noundef %29) #13
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end66, label %errhandler_io

if.end66:                                         ; preds = %closeok
  %30 = load ptr, ptr %stream.addr, align 8
  %31 = load ptr, ptr @__stdoutp, align 8
  %cmp67.not = icmp eq ptr %30, %31
  br i1 %cmp67.not, label %if.end75, label %if.then69

if.then69:                                        ; preds = %if.end66
  %32 = load ptr, ptr %stream.addr, align 8
  %call70 = call i32 @fileno(ptr noundef %32) #13
  store i32 %call70, ptr %fd, align 4
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %errhandler_io, label %if.end74

if.end74:                                         ; preds = %if.then69
  %33 = load i32, ptr %fd, align 4
  call void @applySavedFileAttrToOutputFile(i32 noundef %33)
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.end66
  %34 = load ptr, ptr %zStream.addr, align 8
  %call76 = call i32 @fclose(ptr noundef %34) #13
  %cmp77 = icmp eq i32 %call76, -1
  br i1 %cmp77, label %errhandler_io, label %if.end80

if.end80:                                         ; preds = %if.end75
  %35 = load ptr, ptr %stream.addr, align 8
  %call81 = call i32 @ferror(ptr noundef %35) #13
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end84, label %errhandler_io

if.end84:                                         ; preds = %if.end80
  %36 = load ptr, ptr %stream.addr, align 8
  %call85 = call i32 @fflush(ptr noundef %36) #13
  %cmp86.not = icmp eq i32 %call85, 0
  br i1 %cmp86.not, label %if.end89, label %errhandler_io

if.end89:                                         ; preds = %if.end84
  %37 = load ptr, ptr %stream.addr, align 8
  %38 = load ptr, ptr @__stdoutp, align 8
  %cmp90.not = icmp eq ptr %37, %38
  br i1 %cmp90.not, label %if.end98, label %if.then92

if.then92:                                        ; preds = %if.end89
  %39 = load ptr, ptr %stream.addr, align 8
  %call93 = call i32 @fclose(ptr noundef %39) #13
  store ptr null, ptr @outputHandleJustInCase, align 8
  %cmp94 = icmp eq i32 %call93, -1
  br i1 %cmp94, label %errhandler_io, label %if.end98

if.end98:                                         ; preds = %if.then92, %if.end89
  store ptr null, ptr @outputHandleJustInCase, align 8
  %40 = load i32, ptr @verbosity, align 4
  %cmp99 = icmp sgt i32 %40, 1
  br i1 %cmp99, label %if.then101, label %if.end103

if.then101:                                       ; preds = %if.end98
  %41 = load ptr, ptr @__stderrp, align 8
  %42 = call i64 @fwrite(ptr nonnull @.str.90, i64 5, i64 1, ptr %41)
  br label %if.end103

if.end103:                                        ; preds = %if.then101, %if.end98
  store i8 1, ptr %retval, align 1
  br label %return

trycat:                                           ; preds = %while.body14
  %43 = load i8, ptr @forceOverwrite, align 1
  %tobool104.not = icmp eq i8 %43, 0
  br i1 %tobool104.not, label %errhandler, label %if.then105

if.then105:                                       ; preds = %trycat
  %44 = load ptr, ptr %zStream.addr, align 8
  call void @rewind(ptr noundef %44) #13
  br label %while.body106

while.body106:                                    ; preds = %if.end124, %if.then105
  %45 = load ptr, ptr %zStream.addr, align 8
  %call107 = call zeroext i8 @myfeof(ptr noundef %45)
  %tobool108.not = icmp eq i8 %call107, 0
  br i1 %tobool108.not, label %if.end110, label %closeok

if.end110:                                        ; preds = %while.body106
  %46 = load ptr, ptr %zStream.addr, align 8
  %call112 = call i64 @fread(ptr noundef nonnull %obuf, i64 noundef 1, i64 noundef 5000, ptr noundef %46) #13
  %conv113 = trunc i64 %call112 to i32
  store i32 %conv113, ptr %nread, align 4
  %call114 = call i32 @ferror(ptr noundef %46) #13
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.end117, label %errhandler_io

if.end117:                                        ; preds = %if.end110
  %47 = load i32, ptr %nread, align 4
  %cmp118 = icmp sgt i32 %47, 0
  br i1 %cmp118, label %if.then120, label %if.end124

if.then120:                                       ; preds = %if.end117
  %48 = load i32, ptr %nread, align 4
  %conv122 = sext i32 %48 to i64
  %49 = load ptr, ptr %stream.addr, align 8
  %call123 = call i64 @"\01_fwrite"(ptr noundef nonnull %obuf, i64 noundef 1, i64 noundef %conv122, ptr noundef %49) #13
  br label %if.end124

if.end124:                                        ; preds = %if.then120, %if.end117
  %50 = load ptr, ptr %stream.addr, align 8
  %call125 = call i32 @ferror(ptr noundef %50) #13
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %while.body106, label %errhandler_io

errhandler:                                       ; preds = %trycat, %while.end, %while.body
  %51 = load ptr, ptr %bzf, align 8
  call void @BZ2_bzReadClose(ptr noundef nonnull %bzerr_dummy, ptr noundef %51) #13
  %52 = load i32, ptr %bzerr, align 4
  switch i32 %52, label %sw.default [
    i32 -9, label %sw.bb
    i32 -6, label %errhandler_io
    i32 -4, label %sw.bb132
    i32 -3, label %sw.bb133
    i32 -7, label %sw.bb134
    i32 -5, label %sw.bb135
  ]

sw.bb:                                            ; preds = %errhandler
  call void @configError() #15
  unreachable

errhandler_io:                                    ; preds = %errhandler, %if.end124, %if.end110, %if.then92, %if.end84, %if.end80, %if.end75, %if.then69, %closeok, %if.end32, %if.end, %entry
  call void @ioError() #15
  unreachable

sw.bb132:                                         ; preds = %errhandler
  call void @crcError() #15
  unreachable

sw.bb133:                                         ; preds = %errhandler
  call void @outOfMemory() #15
  unreachable

sw.bb134:                                         ; preds = %errhandler
  call void @compressedStreamEOF() #15
  unreachable

sw.bb135:                                         ; preds = %errhandler
  %53 = load ptr, ptr %zStream.addr, align 8
  %54 = load ptr, ptr @__stdinp, align 8
  %cmp136.not = icmp eq ptr %53, %54
  br i1 %cmp136.not, label %if.end140, label %if.then138

if.then138:                                       ; preds = %sw.bb135
  %55 = load ptr, ptr %zStream.addr, align 8
  %call139 = call i32 @fclose(ptr noundef %55) #13
  br label %if.end140

if.end140:                                        ; preds = %if.then138, %sw.bb135
  %56 = load ptr, ptr %stream.addr, align 8
  %57 = load ptr, ptr @__stdoutp, align 8
  %cmp141.not = icmp eq ptr %56, %57
  br i1 %cmp141.not, label %if.end145, label %if.then143

if.then143:                                       ; preds = %if.end140
  %58 = load ptr, ptr %stream.addr, align 8
  %call144 = call i32 @fclose(ptr noundef %58) #13
  br label %if.end145

if.end145:                                        ; preds = %if.then143, %if.end140
  %59 = load i32, ptr %streamNo, align 4
  %cmp146 = icmp eq i32 %59, 1
  br i1 %cmp146, label %if.then148, label %if.else

if.then148:                                       ; preds = %if.end145
  store i8 0, ptr %retval, align 1
  br label %return

if.else:                                          ; preds = %if.end145
  %60 = load i8, ptr @noisy, align 1
  %tobool149.not = icmp eq i8 %60, 0
  br i1 %tobool149.not, label %if.end152, label %if.then150

if.then150:                                       ; preds = %if.else
  %61 = load ptr, ptr @__stderrp, align 8
  %62 = load ptr, ptr @progName, align 8
  %call151 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %61, ptr noundef nonnull @.str.91, ptr noundef %62, ptr noundef nonnull @inName) #13
  br label %if.end152

if.end152:                                        ; preds = %if.then150, %if.else
  store i8 1, ptr %retval, align 1
  br label %return

sw.default:                                       ; preds = %errhandler
  call void @panic(ptr noundef nonnull @.str.92) #15
  unreachable

return:                                           ; preds = %if.end152, %if.then148, %if.end103
  %63 = load i8, ptr %retval, align 1
  ret i8 %63
}

declare ptr @BZ2_bzReadOpen(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare i32 @BZ2_bzRead(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare i64 @"\01_fwrite"(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

declare void @BZ2_bzReadGetUnused(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @BZ2_bzReadClose(ptr noundef, ptr noundef) #1

declare void @rewind(ptr noundef) #1

; Function Attrs: noreturn nounwind ssp uwtable
define internal void @crcError() #3 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr @progName, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.93, ptr noundef %1) #13
  call void @showFileNames()
  call void @cadvise()
  call void @cleanUpAndFail(i32 noundef 2) #15
  unreachable
}

; Function Attrs: noreturn nounwind ssp uwtable
define internal void @compressedStreamEOF() #3 {
entry:
  %0 = load i8, ptr @noisy, align 1
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @__stderrp, align 8
  %2 = load ptr, ptr @progName, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.94, ptr noundef %2) #13
  %3 = load ptr, ptr @progName, align 8
  call void @perror(ptr noundef %3) #18
  call void @showFileNames()
  call void @cadvise()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @cleanUpAndFail(i32 noundef 2) #15
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @testStream(ptr noundef %zStream) #0 {
entry:
  %retval = alloca i8, align 1
  %zStream.addr = alloca ptr, align 8
  %bzf = alloca ptr, align 8
  %bzerr = alloca i32, align 4
  %bzerr_dummy = alloca i32, align 4
  %streamNo = alloca i32, align 4
  %i = alloca i32, align 4
  %obuf = alloca [5000 x i8], align 1
  %unused = alloca [5000 x i8], align 1
  %nUnused = alloca i32, align 4
  %unusedTmpV = alloca ptr, align 8
  %unusedTmp = alloca ptr, align 8
  store ptr %zStream, ptr %zStream.addr, align 8
  store ptr null, ptr %bzf, align 8
  store i32 0, ptr %nUnused, align 4
  store i32 0, ptr %streamNo, align 4
  %call = call i32 @ferror(ptr noundef %zStream) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.body, label %errhandler_io

while.body:                                       ; preds = %entry, %if.end40
  %0 = load ptr, ptr %zStream.addr, align 8
  %1 = load i32, ptr @verbosity, align 4
  %2 = load i8, ptr @smallMode, align 1
  %conv = zext i8 %2 to i32
  %3 = load i32, ptr %nUnused, align 4
  %call1 = call ptr @BZ2_bzReadOpen(ptr noundef nonnull %bzerr, ptr noundef %0, i32 noundef %1, i32 noundef %conv, ptr noundef nonnull %unused, i32 noundef %3) #13
  store ptr %call1, ptr %bzf, align 8
  %cmp = icmp ne ptr %call1, null
  %4 = load i32, ptr %bzerr, align 4
  %cmp3.not = icmp eq i32 %4, 0
  %or.cond = select i1 %cmp, i1 %cmp3.not, i1 false
  br i1 %or.cond, label %if.end6, label %errhandler

if.end6:                                          ; preds = %while.body
  %5 = load i32, ptr %streamNo, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %streamNo, align 4
  br label %while.cond7

while.cond7:                                      ; preds = %while.body10, %if.end6
  %6 = load i32, ptr %bzerr, align 4
  %cmp8 = icmp eq i32 %6, 0
  br i1 %cmp8, label %while.body10, label %while.end

while.body10:                                     ; preds = %while.cond7
  %7 = load ptr, ptr %bzf, align 8
  %call12 = call i32 @BZ2_bzRead(ptr noundef nonnull %bzerr, ptr noundef %7, ptr noundef nonnull %obuf, i32 noundef 5000) #13
  %8 = load i32, ptr %bzerr, align 4
  %cmp13 = icmp eq i32 %8, -5
  br i1 %cmp13, label %errhandler, label %while.cond7, !llvm.loop !31

while.end:                                        ; preds = %while.cond7
  %9 = load i32, ptr %bzerr, align 4
  %cmp17.not = icmp eq i32 %9, 4
  br i1 %cmp17.not, label %if.end20, label %errhandler

if.end20:                                         ; preds = %while.end
  %10 = load ptr, ptr %bzf, align 8
  call void @BZ2_bzReadGetUnused(ptr noundef nonnull %bzerr, ptr noundef %10, ptr noundef nonnull %unusedTmpV, ptr noundef nonnull %nUnused) #13
  %11 = load i32, ptr %bzerr, align 4
  %cmp21.not = icmp eq i32 %11, 0
  br i1 %cmp21.not, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end20
  call void @panic(ptr noundef nonnull @.str.99) #15
  unreachable

if.end24:                                         ; preds = %if.end20
  %12 = load ptr, ptr %unusedTmpV, align 8
  store ptr %12, ptr %unusedTmp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end24
  %storemerge = phi i32 [ 0, %if.end24 ], [ %inc29, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %13 = load i32, ptr %nUnused, align 4
  %cmp25 = icmp slt i32 %storemerge, %13
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %unusedTmp, align 8
  %15 = load i32, ptr %i, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds i8, ptr %14, i64 %idxprom
  %16 = load i8, ptr %arrayidx, align 1
  %idxprom27 = sext i32 %15 to i64
  %arrayidx28 = getelementptr inbounds [5000 x i8], ptr %unused, i64 0, i64 %idxprom27
  store i8 %16, ptr %arrayidx28, align 1
  %17 = load i32, ptr %i, align 4
  %inc29 = add nsw i32 %17, 1
  br label %for.cond, !llvm.loop !32

for.end:                                          ; preds = %for.cond
  %18 = load ptr, ptr %bzf, align 8
  call void @BZ2_bzReadClose(ptr noundef nonnull %bzerr, ptr noundef %18) #13
  %19 = load i32, ptr %bzerr, align 4
  %cmp30.not = icmp eq i32 %19, 0
  br i1 %cmp30.not, label %if.end33, label %if.then32

if.then32:                                        ; preds = %for.end
  call void @panic(ptr noundef nonnull @.str.99) #15
  unreachable

if.end33:                                         ; preds = %for.end
  %20 = load i32, ptr %nUnused, align 4
  %cmp34 = icmp eq i32 %20, 0
  br i1 %cmp34, label %land.lhs.true, label %if.end40

land.lhs.true:                                    ; preds = %if.end33
  %21 = load ptr, ptr %zStream.addr, align 8
  %call36 = call zeroext i8 @myfeof(ptr noundef %21)
  %tobool38.not = icmp eq i8 %call36, 0
  br i1 %tobool38.not, label %if.end40, label %while.end41

if.end40:                                         ; preds = %land.lhs.true, %if.end33
  br label %while.body

while.end41:                                      ; preds = %land.lhs.true
  %22 = load ptr, ptr %zStream.addr, align 8
  %call42 = call i32 @ferror(ptr noundef %22) #13
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %errhandler_io

if.end45:                                         ; preds = %while.end41
  %23 = load ptr, ptr %zStream.addr, align 8
  %call46 = call i32 @fclose(ptr noundef %23) #13
  %cmp47 = icmp eq i32 %call46, -1
  br i1 %cmp47, label %errhandler_io, label %if.end50

if.end50:                                         ; preds = %if.end45
  %24 = load i32, ptr @verbosity, align 4
  %cmp51 = icmp sgt i32 %24, 1
  br i1 %cmp51, label %if.then53, label %if.end55

if.then53:                                        ; preds = %if.end50
  %25 = load ptr, ptr @__stderrp, align 8
  %26 = call i64 @fwrite(ptr nonnull @.str.90, i64 5, i64 1, ptr %25)
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %if.end50
  store i8 1, ptr %retval, align 1
  br label %return

errhandler:                                       ; preds = %while.end, %while.body10, %while.body
  %27 = load ptr, ptr %bzf, align 8
  call void @BZ2_bzReadClose(ptr noundef nonnull %bzerr_dummy, ptr noundef %27) #13
  %28 = load i32, ptr @verbosity, align 4
  %cmp56 = icmp eq i32 %28, 0
  br i1 %cmp56, label %if.then58, label %if.end60

if.then58:                                        ; preds = %errhandler
  %29 = load ptr, ptr @__stderrp, align 8
  %30 = load ptr, ptr @progName, align 8
  %call59 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef nonnull @.str.100, ptr noundef %30, ptr noundef nonnull @inName) #13
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %errhandler
  %31 = load i32, ptr %bzerr, align 4
  switch i32 %31, label %sw.default [
    i32 -9, label %sw.bb
    i32 -6, label %errhandler_io
    i32 -4, label %sw.bb62
    i32 -3, label %sw.bb64
    i32 -7, label %sw.bb65
    i32 -5, label %sw.bb67
  ]

sw.bb:                                            ; preds = %if.end60
  call void @configError() #15
  unreachable

errhandler_io:                                    ; preds = %if.end60, %if.end45, %while.end41, %entry
  call void @ioError() #15
  unreachable

sw.bb62:                                          ; preds = %if.end60
  %32 = load ptr, ptr @__stderrp, align 8
  %33 = call i64 @fwrite(ptr nonnull @.str.101, i64 35, i64 1, ptr %32)
  store i8 0, ptr %retval, align 1
  br label %return

sw.bb64:                                          ; preds = %if.end60
  call void @outOfMemory() #15
  unreachable

sw.bb65:                                          ; preds = %if.end60
  %34 = load ptr, ptr @__stderrp, align 8
  %35 = call i64 @fwrite(ptr nonnull @.str.102, i64 23, i64 1, ptr %34)
  store i8 0, ptr %retval, align 1
  br label %return

sw.bb67:                                          ; preds = %if.end60
  %36 = load ptr, ptr %zStream.addr, align 8
  %37 = load ptr, ptr @__stdinp, align 8
  %cmp68.not = icmp eq ptr %36, %37
  br i1 %cmp68.not, label %if.end72, label %if.then70

if.then70:                                        ; preds = %sw.bb67
  %38 = load ptr, ptr %zStream.addr, align 8
  %call71 = call i32 @fclose(ptr noundef %38) #13
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %sw.bb67
  %39 = load i32, ptr %streamNo, align 4
  %cmp73 = icmp eq i32 %39, 1
  br i1 %cmp73, label %if.then75, label %if.else

if.then75:                                        ; preds = %if.end72
  %40 = load ptr, ptr @__stderrp, align 8
  %41 = call i64 @fwrite(ptr nonnull @.str.103, i64 45, i64 1, ptr %40)
  store i8 0, ptr %retval, align 1
  br label %return

if.else:                                          ; preds = %if.end72
  %42 = load i8, ptr @noisy, align 1
  %tobool77.not = icmp eq i8 %42, 0
  br i1 %tobool77.not, label %if.end80, label %if.then78

if.then78:                                        ; preds = %if.else
  %43 = load ptr, ptr @__stderrp, align 8
  %44 = call i64 @fwrite(ptr nonnull @.str.104, i64 35, i64 1, ptr %43)
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %if.else
  store i8 1, ptr %retval, align 1
  br label %return

sw.default:                                       ; preds = %if.end60
  call void @panic(ptr noundef nonnull @.str.105) #15
  unreachable

return:                                           ; preds = %if.end80, %if.then75, %sw.bb65, %sw.bb62, %if.end55
  %45 = load i8, ptr %retval, align 1
  ret i8 %45
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) #11

; Function Attrs: argmemonly nofree nounwind willreturn
declare ptr @strcpy(ptr noalias returned writeonly, ptr noalias nocapture readonly) #12

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) #11

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { noreturn nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #8 = { argmemonly nocallback nofree nounwind willreturn }
attributes #9 = { cold "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #10 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nofree nounwind }
attributes #12 = { argmemonly nofree nounwind willreturn }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }
attributes #16 = { nounwind readonly willreturn }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { cold nounwind }

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
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !7}
